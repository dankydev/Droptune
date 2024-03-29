import 'package:droptune/interfaces/pages/generics/lists/tracks_list.dart';
import 'package:droptune/misc/database/database_client.dart';
import 'package:droptune/misc/get_it_reference.dart';
import 'package:droptune/models/playlist.dart';
import 'package:flutter/material.dart';

class PlaylistDetailsPage extends StatelessWidget {
  final Playlist playlist;

  PlaylistDetailsPage({@required this.playlist});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            iconTheme: IconThemeData(
                color: innerBoxIsScrolled ? Colors.black : Colors.grey),
            elevation: 0,
            expandedHeight: 330.0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text(playlist.name,
                    style: TextStyle(
                      color: innerBoxIsScrolled ? Colors.black : Colors.grey,
                      fontSize: 16.0,
                    )),
                background: Hero(
                    tag: playlist.id,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 300,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: playlist.coverImage,
                        ),
                      ),
                    ))),
          ),
        ];
      },
      body: playlist.id == -1
          ? TracksList(
              showInitialShuffleItem: true,
              tracks: playlist.tracks,
              playlist: playlist,
            )
          : FutureBuilder(
              future: GetItReference.getIt
                  .get<DatabaseClient>()
                  .fetchPlaylistTracks(playlist),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done)
                  return TracksList(
                    tracks: snapshot.data,
                    playlist: playlist,
                  );
                else
                  return Center(
                    child: CircularProgressIndicator(),
                  );
              }),
    ));
  }
}
