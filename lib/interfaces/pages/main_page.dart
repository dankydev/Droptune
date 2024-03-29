import 'dart:convert';

import 'package:droptune/interfaces/pages/overlay_bar.dart';
import 'package:droptune/interfaces/pages/sections/music_page.dart';
import 'package:droptune/interfaces/pages/sections/playlist_page.dart';
import 'package:droptune/interfaces/pages/sections/profile/profile_page.dart';
import 'package:droptune/misc/droptune_player.dart';
import 'package:droptune/misc/get_it_reference.dart';
import 'package:droptune/misc/routing/routing.dart';
import 'package:droptune/misc/utils/droptune_utils.dart';
import 'package:droptune/misc/utils/playlist_utils.dart';
import 'package:droptune/models/album.dart';
import 'package:droptune/models/author.dart';
import 'package:droptune/models/playlist.dart';
import 'package:droptune/models/track.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:media_notification/media_notification.dart';

class MainPage extends StatefulWidget {
  final DroptunePlayer player = DroptunePlayer(
    queueTracks: GetItReference.getIt.get<List<Track>>(),
  );

  void _restorePlayer() {
    SharedPreferences.getInstance().then((sp) {
      String playerString = sp.getString("player");
      if (playerString != null) {
        var restoredPlayer = json.decode(playerString);
        player.reproducingIndex = restoredPlayer["reproducingIndex"];
        player.isShuffling = restoredPlayer["isShuffling"];
        player.position = Duration(milliseconds: restoredPlayer["position"]);
        player.queueTracks = [];
        List<dynamic> restoredTracks = restoredPlayer["queueTracks"];
        for (var t in restoredTracks) player.rawAddTrack(Track.fromMap(t));

        Playlist restoredPlaylist =
            Playlist.fromMap(restoredPlayer["reproducingPlaylist"]);
        Album restoredAlbum = Album.fromMap(restoredPlayer["reproducingAlbum"]);
        Author restoredAuthor =
            Author.fromMap(restoredPlayer["reproducingAuthor"]);

        if (restoredPlaylist != null)
          player.reproducingPlaylist = restoredPlaylist;
        if (restoredAlbum != null) player.reproducingAlbum = restoredAlbum;
        if (restoredAuthor != null) player.reproducingAuthor = restoredAuthor;

        player.audioPlayer
            .setUrl(player.queueTracks[player.reproducingIndex].path);
        player.seekTo(player.position);

        GetItReference.getIt.registerSingleton<DroptunePlayer>(player);
      } else {
        player.reproducingPlaylist = PlaylistUtils.getMainPlaylistSignature();
        GetItReference.getIt.registerSingleton<DroptunePlayer>(player);
      }

      _createNotificationController();
    });
  }

  void _createNotificationController() async {
    await MediaNotification.show(
        play: false,
        title: DroptuneUtils.trimTrackTitle(title: player.getCurrentTrack().name),
        author: player.getCurrentTrack().author.name);

    MediaNotification.setListener('pause', () {
      player.pause();
    });

    MediaNotification.setListener('play', () {
      player.resume();
    });

    MediaNotification.setListener('next', () {
      player.moveToNextTrack();
    });

    MediaNotification.setListener('prev', () {
      player.moveToPreviousTrack();
    });

    MediaNotification.setListener('select', () {});
  }

  @override
  State createState() {
    _restorePlayer();
    return _MainPageState();
  }
}

class _MainPageState extends State<MainPage> with WidgetsBindingObserver {
  int _currentIndex = 1;
  PageController _pageController;
  bool overlayVisibility = true;
  List<Widget> _appBarActions = [];

  List<BottomNavigationBarItem> _navigationBarItems = [
    BottomNavigationBarItem(title: Text("Music"), icon: Icon(Icons.music_note)),
    BottomNavigationBarItem(
        title: Text("Playlist"),
        icon: Icon(Icons
            .list)), /*
    BottomNavigationBarItem(title: Text("Profile"), icon: Icon(Icons.person))*/
  ];

  List<Widget> _pages = [
    MusicPage(),
    PlaylistPage(), /* ProfilePage()*/
  ];

  void _hideOverlay() {
    overlayVisibility = false;
  }

  void _showOverlay() {
    overlayVisibility = true;
  }

  void _hideSettingsAction() {
    _appBarActions.removeWhere((Widget widget) {
      ValueKey<String> key = widget.key;
      return identical(key.value, 'settings');
    });
  }

  void _showSettingsAction() {
    _appBarActions.add(IconButton(
        key: Key("settings"),
        color: Colors.grey,
        icon: Icon(Icons.settings),
        onPressed: () {}));
  }

  Widget _buildNavigationBar(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            Routing.goToPlayingPage(context,
                clearStack: false);
          },
          child: Visibility(
            child: ChangeNotifierProvider(
              builder: (context) => widget.player,
              child: OverlayBarWidget(),
            ),
            visible: overlayVisibility,
            maintainState: true,
          ),
        ),
        BottomNavigationBar(
            onTap: (currentIndex) {
              _pageController.animateToPage(currentIndex,
                  duration: Duration(microseconds: 500),
                  curve: Curves.decelerate);
            },
            currentIndex: _currentIndex,
            items: _navigationBarItems)
      ],
    );
  }

  PageView _buildPageView() {
    return PageView(
      physics: NeverScrollableScrollPhysics(),
      controller: _pageController,
      onPageChanged: (newIndex) {
        setState(() {
          _currentIndex = newIndex;
          if (newIndex == 2) {
            _hideOverlay();
            _showSettingsAction();
          } else {
            _hideSettingsAction();
            _showOverlay();
          }
        });
      },
      children: _pages,
    );
  }

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    _pageController = PageController(initialPage: 1);
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    MediaNotification.hide();
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: _appBarActions,
        title: Text("Droptune"),
        centerTitle: true,
      ),
      body: _buildPageView(),
      bottomNavigationBar: _buildNavigationBar(context),
    );
  }
}
