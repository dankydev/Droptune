import 'package:droptune/interfaces/pages/playlist/playlist_details.dart';
import 'package:droptune/models/author.dart';
import 'package:droptune/models/playlist.dart';
import 'package:droptune/models/track.dart';
import 'package:flutter/material.dart';

class PlaylistPage extends StatefulWidget {
  @override
  State createState() {
    return _PlaylistPageState();
  }
}

class _PlaylistPageState extends State<PlaylistPage> {
  final Playlist mainPlaylist = Playlist(
      name: "All tracks",
      tracks: [
        Track(
            coverImage: AssetImage('assets/images/default_song_image.jpg'),
            name: "The Razor's Edge",
            duration: Duration(minutes: 3, seconds: 1),
            path: "",
            authors: <Author>[Author(name: "AC/DC", tracks: [])]),
        Track(
            coverImage: AssetImage('assets/images/default_song_image.jpg'),
            name: "The Razor's Edge",
            duration: Duration(minutes: 3, seconds: 1),
            path: "",
            authors: <Author>[Author(name: "AC/DC", tracks: [])]),
        Track(
            coverImage: AssetImage('assets/images/default_song_image.jpg'),
            name: "The Razor's Edge",
            duration: Duration(minutes: 3, seconds: 1),
            path: "",
            authors: <Author>[Author(name: "AC/DC", tracks: [])]),
        Track(
            coverImage: AssetImage('assets/images/default_song_image.jpg'),
            name: "The Razor's Edge",
            duration: Duration(minutes: 3, seconds: 1),
            path: "",
            authors: <Author>[Author(name: "AC/DC", tracks: [])]),
        Track(
            coverImage: AssetImage('assets/images/default_song_image.jpg'),
            name: "The Razor's Edge",
            duration: Duration(minutes: 3, seconds: 1),
            path: "",
            authors: <Author>[Author(name: "AC/DC", tracks: [])]),
        Track(
            coverImage: AssetImage('assets/images/default_song_image.jpg'),
            name: "The Razor's Edge",
            duration: Duration(minutes: 3, seconds: 1),
            path: "",
            authors: <Author>[Author(name: "AC/DC", tracks: [])]),
        Track(
            coverImage: AssetImage('assets/images/default_song_image.jpg'),
            name: "The Razor's Edge",
            duration: Duration(minutes: 3, seconds: 1),
            path: "",
            authors: <Author>[Author(name: "AC/DC", tracks: [])]),
        Track(
            coverImage: AssetImage('assets/images/default_song_image.jpg'),
            name: "The Razor's Edge",
            duration: Duration(minutes: 3, seconds: 1),
            path: "",
            authors: <Author>[Author(name: "AC/DC", tracks: [])]),
        Track(
            coverImage: AssetImage('assets/images/default_song_image.jpg'),
            name: "The Razor's Edge",
            duration: Duration(minutes: 3, seconds: 1),
            path: "",
            authors: <Author>[Author(name: "AC/DC", tracks: [])]),
        Track(
            coverImage: AssetImage('assets/images/default_song_image.jpg'),
            name: "The Razor's Edge",
            duration: Duration(minutes: 3, seconds: 1),
            path: "",
            authors: <Author>[Author(name: "AC/DC", tracks: [])]),
        Track(
            coverImage: AssetImage('assets/images/default_song_image.jpg'),
            name: "The Razor's Edge",
            duration: Duration(minutes: 3, seconds: 1),
            path: "",
            authors: <Author>[Author(name: "AC/DC", tracks: [])]),
        Track(
            coverImage: AssetImage('assets/images/default_song_image.jpg'),
            name: "The Razor's Edge",
            duration: Duration(minutes: 3, seconds: 1),
            path: "",
            authors: <Author>[Author(name: "AC/DC", tracks: [])]),
        Track(
            coverImage: AssetImage('assets/images/default_song_image.jpg'),
            name: "The Razor's Edge",
            duration: Duration(minutes: 3, seconds: 1),
            path: "",
            authors: <Author>[Author(name: "AC/DC", tracks: [])]),
        Track(
            coverImage: AssetImage('assets/images/default_song_image.jpg'),
            name: "The Razor's Edge",
            duration: Duration(minutes: 3, seconds: 1),
            path: "",
            authors: <Author>[Author(name: "AC/DC", tracks: [])]),
        Track(
            coverImage: AssetImage('assets/images/default_song_image.jpg'),
            name: "The Razor's Edge",
            duration: Duration(minutes: 3, seconds: 1),
            path: "",
            authors: <Author>[Author(name: "AC/DC", tracks: [])]),
        Track(
            coverImage: AssetImage('assets/images/default_song_image.jpg'),
            name: "The Razor's Edge",
            duration: Duration(minutes: 3, seconds: 1),
            path: "",
            authors: <Author>[Author(name: "AC/DC", tracks: [])]),
        Track(
            coverImage: AssetImage('assets/images/default_song_image.jpg'),
            name: "The Razor's Edge",
            duration: Duration(minutes: 3, seconds: 1),
            path: "",
            authors: <Author>[Author(name: "AC/DC", tracks: [])]),
      ],
      coverImage: AssetImage('assets/images/all_tracks.png'));

  final List<Playlist> playlists = [
    Playlist(
        name: "Michael Jackson",
        coverImage: AssetImage('assets/images/default_song_image.jpg'),
        tracks: [
          Track(
              coverImage: AssetImage('assets/images/default_song_image.jpg'),
              name: "The Razor's Edge",
              duration: Duration(minutes: 3, seconds: 1),
              path: "",
              authors: <Author>[Author(name: "AC/DC", tracks: [])]),
          Track(
              coverImage: AssetImage('assets/images/default_song_image.jpg'),
              name: "The Razor's Edge",
              duration: Duration(minutes: 3, seconds: 1),
              path: "",
              authors: <Author>[Author(name: "AC/DC", tracks: [])]),
          Track(
              coverImage: AssetImage('assets/images/default_song_image.jpg'),
              name: "The Razor's Edge",
              duration: Duration(minutes: 3, seconds: 1),
              path: "",
              authors: <Author>[Author(name: "AC/DC", tracks: [])]),
          Track(
              coverImage: AssetImage('assets/images/default_song_image.jpg'),
              name: "The Razor's Edge",
              duration: Duration(minutes: 3, seconds: 1),
              path: "",
              authors: <Author>[Author(name: "AC/DC", tracks: [])]),
          Track(
              coverImage: AssetImage('assets/images/default_song_image.jpg'),
              name: "The Razor's Edge",
              duration: Duration(minutes: 3, seconds: 1),
              path: "",
              authors: <Author>[Author(name: "AC/DC", tracks: [])]),
          Track(
              coverImage: AssetImage('assets/images/default_song_image.jpg'),
              name: "The Razor's Edge",
              duration: Duration(minutes: 3, seconds: 1),
              path: "",
              authors: <Author>[Author(name: "AC/DC", tracks: [])]),
          Track(
              coverImage: AssetImage('assets/images/default_song_image.jpg'),
              name: "The Razor's Edge",
              duration: Duration(minutes: 3, seconds: 1),
              path: "",
              authors: <Author>[Author(name: "AC/DC", tracks: [])]),
          Track(
              coverImage: AssetImage('assets/images/default_song_image.jpg'),
              name: "The Razor's Edge",
              duration: Duration(minutes: 3, seconds: 1),
              path: "",
              authors: <Author>[Author(name: "AC/DC", tracks: [])]),
          Track(
              coverImage: AssetImage('assets/images/default_song_image.jpg'),
              name: "The Razor's Edge",
              duration: Duration(minutes: 3, seconds: 1),
              path: "",
              authors: <Author>[Author(name: "AC/DC", tracks: [])]),
          Track(
              coverImage: AssetImage('assets/images/default_song_image.jpg'),
              name: "The Razor's Edge",
              duration: Duration(minutes: 3, seconds: 1),
              path: "",
              authors: <Author>[Author(name: "AC/DC", tracks: [])]),
          Track(
              coverImage: AssetImage('assets/images/default_song_image.jpg'),
              name: "The Razor's Edge",
              duration: Duration(minutes: 3, seconds: 1),
              path: "",
              authors: <Author>[Author(name: "AC/DC", tracks: [])]),
          Track(
              coverImage: AssetImage('assets/images/default_song_image.jpg'),
              name: "The Razor's Edge",
              duration: Duration(minutes: 3, seconds: 1),
              path: "",
              authors: <Author>[Author(name: "AC/DC", tracks: [])]),
          Track(
              coverImage: AssetImage('assets/images/default_song_image.jpg'),
              name: "The Razor's Edge",
              duration: Duration(minutes: 3, seconds: 1),
              path: "",
              authors: <Author>[Author(name: "AC/DC", tracks: [])]),
          Track(
              coverImage: AssetImage('assets/images/default_song_image.jpg'),
              name: "The Razor's Edge",
              duration: Duration(minutes: 3, seconds: 1),
              path: "",
              authors: <Author>[Author(name: "AC/DC", tracks: [])]),
          Track(
              coverImage: AssetImage('assets/images/default_song_image.jpg'),
              name: "The Razor's Edge",
              duration: Duration(minutes: 3, seconds: 1),
              path: "",
              authors: <Author>[Author(name: "AC/DC", tracks: [])]),
          Track(
              coverImage: AssetImage('assets/images/default_song_image.jpg'),
              name: "The Razor's Edge",
              duration: Duration(minutes: 3, seconds: 1),
              path: "",
              authors: <Author>[Author(name: "AC/DC", tracks: [])]),
          Track(
              coverImage: AssetImage('assets/images/default_song_image.jpg'),
              name: "The Razor's Edge",
              duration: Duration(minutes: 3, seconds: 1),
              path: "",
              authors: <Author>[Author(name: "AC/DC", tracks: [])]),
          Track(
              coverImage: AssetImage('assets/images/default_song_image.jpg'),
              name: "The Razor's Edge",
              duration: Duration(minutes: 3, seconds: 1),
              path: "",
              authors: <Author>[Author(name: "AC/DC", tracks: [])]),
          Track(
              coverImage: AssetImage('assets/images/default_song_image.jpg'),
              name: "The Razor's Edge",
              duration: Duration(minutes: 3, seconds: 1),
              path: "",
              authors: <Author>[Author(name: "AC/DC", tracks: [])]),
          Track(
              coverImage: AssetImage('assets/images/default_song_image.jpg'),
              name: "The Razor's Edge",
              duration: Duration(minutes: 3, seconds: 1),
              path: "",
              authors: <Author>[Author(name: "AC/DC", tracks: [])]),
          Track(
              coverImage: AssetImage('assets/images/default_song_image.jpg'),
              name: "The Razor's Edge",
              duration: Duration(minutes: 3, seconds: 1),
              path: "",
              authors: <Author>[Author(name: "AC/DC", tracks: [])]),
          Track(
              coverImage: AssetImage('assets/images/default_song_image.jpg'),
              name: "The Razor's Edge",
              duration: Duration(minutes: 3, seconds: 1),
              path: "",
              authors: <Author>[Author(name: "AC/DC", tracks: [])]),
          Track(
              coverImage: AssetImage('assets/images/default_song_image.jpg'),
              name: "The Razor's Edge",
              duration: Duration(minutes: 3, seconds: 1),
              path: "",
              authors: <Author>[Author(name: "AC/DC", tracks: [])]),
          Track(
              coverImage: AssetImage('assets/images/default_song_image.jpg'),
              name: "The Razor's Edge",
              duration: Duration(minutes: 3, seconds: 1),
              path: "",
              authors: <Author>[Author(name: "AC/DC", tracks: [])]),
          Track(
              coverImage: AssetImage('assets/images/default_song_image.jpg'),
              name: "The Razor's Edge",
              duration: Duration(minutes: 3, seconds: 1),
              path: "",
              authors: <Author>[Author(name: "AC/DC", tracks: [])]),
          Track(
              coverImage: AssetImage('assets/images/default_song_image.jpg'),
              name: "The Razor's Edge",
              duration: Duration(minutes: 3, seconds: 1),
              path: "",
              authors: <Author>[Author(name: "AC/DC", tracks: [])]),
          Track(
              coverImage: AssetImage('assets/images/default_song_image.jpg'),
              name: "The Razor's Edge",
              duration: Duration(minutes: 3, seconds: 1),
              path: "",
              authors: <Author>[Author(name: "AC/DC", tracks: [])]),
          Track(
              coverImage: AssetImage('assets/images/default_song_image.jpg'),
              name: "The Razor's Edge",
              duration: Duration(minutes: 3, seconds: 1),
              path: "",
              authors: <Author>[Author(name: "AC/DC", tracks: [])]),
          Track(
              coverImage: AssetImage('assets/images/default_song_image.jpg'),
              name: "The Razor's Edge",
              duration: Duration(minutes: 3, seconds: 1),
              path: "",
              authors: <Author>[Author(name: "AC/DC", tracks: [])]),
          Track(
              coverImage: AssetImage('assets/images/default_song_image.jpg'),
              name: "The Razor's Edge",
              duration: Duration(minutes: 3, seconds: 1),
              path: "",
              authors: <Author>[Author(name: "AC/DC", tracks: [])]),
          Track(
              coverImage: AssetImage('assets/images/default_song_image.jpg'),
              name: "The Razor's Edge",
              duration: Duration(minutes: 3, seconds: 1),
              path: "",
              authors: <Author>[Author(name: "AC/DC", tracks: [])]),
        ]),
    Playlist(
        name: "AC/DC",
        tracks: [],
        coverImage: AssetImage('assets/images/default_song_image.jpg')),
    Playlist(
        name: "Caparezza",
        tracks: [],
        coverImage: AssetImage('assets/images/default_song_image.jpg')),
    Playlist(
        name: "Festa da Gianvy",
        tracks: [],
        coverImage: AssetImage('assets/images/default_song_image.jpg')),
    Playlist(
        name: "Relax1",
        tracks: [],
        coverImage: AssetImage('assets/images/default_song_image.jpg')),
    Playlist(
        name: "Relax2",
        tracks: [],
        coverImage: AssetImage('assets/images/default_song_image.jpg')),
    Playlist(
        name: "Relax3",
        tracks: [],
        coverImage: AssetImage('assets/images/default_song_image.jpg')),
  ];

  Image _buildImage() {
    return Image.asset(
      'assets/images/default_song_image.jpg',
      height: 120,
      width: 120,
    );
  }

  Text _buildUnderText(int index) {
    return Text(playlists[index].name);
  }

  Widget _buildGridItem(Image image, Text underText, [Playlist playlist]) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => PlaylistDetailsPage(
                        playlist: playlist,
                      ))),
              child: Hero(
                tag: playlist.name,
                child: image,
              ),
            ),
          ),
        ),
        underText,
      ],
    );
  }

  Widget _buildEmptyElement() {
    return Padding(
        padding: EdgeInsets.only(right: 0),
        child: Container(
            decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.grey[300])))));
  }

  Widget _buildAllTracksElement() {
    return Padding(
        padding: EdgeInsets.only(left: 0),
        child: Container(
          decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey[300]))),
          child: _buildGridItem(
              Image.asset(
                'assets/images/all_tracks.png',
                height: 135,
                width: 135,
              ),
              Text(
                "All tracks",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              mainPlaylist),
        ));
  }

  Widget _buildAddPlaylistElement() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          child: Image.asset(
            "assets/images/add_playlist_button.png",
            height: 100,
            width: 100,
          ),
          padding: EdgeInsets.only(bottom: 10),
        ),
        Text(
          "Add a playlist",
          style: TextStyle(color: Colors.grey[500]),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final int addingItems = 3;
    final int lastIndex = playlists.length + addingItems - 1;

    return GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        if (index == 0) return _buildAllTracksElement();
        if (index == 1) return _buildEmptyElement();
        if (index == lastIndex) return _buildAddPlaylistElement();

        int currentIndex = index - (addingItems - 1);

        Image image = _buildImage();
        Text underText = _buildUnderText(currentIndex);

        return _buildGridItem(image, underText, playlists[currentIndex]);
      },
      itemCount: playlists.length + addingItems,
    );
  }
}