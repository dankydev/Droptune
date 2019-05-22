import 'package:droptune/interfaces/pages/generics/entries/track_entry.dart';
import 'package:droptune/models/playlist.dart';
import 'package:droptune/models/track.dart';
import 'package:flutter/material.dart';

class TracksList extends StatelessWidget {
  final List<Track> tracks;
  final Playlist playlist;

  TracksList({@required this.tracks, this.playlist});

  @override
  Widget build(BuildContext context) {
    Widget emptyMessage = Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.archive,
            size: 50,
            color: Colors.grey,
          ),
          Text("No music here!")
        ],
      ),
    );

    if (tracks.length > 0)
      return ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            child: TrackEntry(
              track: tracks[index],
              playlist: playlist,
            ),
            padding: EdgeInsets.only(bottom: 7),
          );
        },
        itemCount: tracks.length,
      );
    else
      return emptyMessage;
  }
}