import 'package:droptune/interfaces/pages/generics/details/author_details.dart';
import 'package:droptune/misc/routing/routing.dart';
import 'package:droptune/models/author.dart';
import 'package:flutter/material.dart';

class AuthorEntry extends StatelessWidget {
  final Author author;

  AuthorEntry({@required this.author});

  Widget _buildLeadingText() {
    return Container(
      child: DecoratedBox(
          decoration: BoxDecoration(
              color: Colors.lightBlue[100],
              borderRadius: BorderRadius.circular(50)),
          child: Padding(
            padding: EdgeInsets.all(5),
            child: Center(
              child: Text(
                author.name.substring(0, 2),
                style: TextStyle(fontSize: 25),
                textAlign: TextAlign.center,
              ),
            ),
          )),
      height: 50,
      width: 50,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: Column(
        children: <Widget>[
          ListTile(
            onTap: () {
              Routing.goToAuthorDetails(context, author, clearStack: false);
            },
            leading: _buildLeadingText(),
            title: Text(
              author.name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10),
          )
        ],
      ),
    );
  }
}
