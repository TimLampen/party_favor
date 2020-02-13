import 'dart:ui';

import 'package:flutter/material.dart';

import 'listing.dart';

class ItemCard extends StatefulWidget {
  final Listing _listing;

  ItemCard(this._listing);


  @override
  _ItemCardState createState() => _ItemCardState(this._listing);
}

class _ItemCardState extends State<ItemCard> {
  final Listing _listing;

  _ItemCardState(this._listing);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (e) {

      },
      child: Card(
        margin: EdgeInsets.all(14),
        color: Colors.blue[900],
        child: Container(
          decoration: new BoxDecoration(
              border: new Border.all(
                color: Colors.lightBlueAccent,
                width: 3.0,
                style: BorderStyle.solid,
              ),
              borderRadius: BorderRadius.all(Radius.circular(15))),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: Icon(
                  this._listing.icon,
                  color: Colors.white,
                ),
                title: Text(
                  this._listing.title,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.lightBlueAccent,
                      fontSize: 18),
                ),
                subtitle: Text(
                  this._listing.description,
                  style: TextStyle(color: Colors.lightBlue[100]),
                ),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    child: Text("ADD TO CART"),
                    onPressed: () {},
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
