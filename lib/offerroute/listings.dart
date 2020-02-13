import 'package:flutter/material.dart';
import 'package:party_favor/offerroute/itemcard.dart';

import 'listing.dart';

class Listings extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Listings> {
  final exampleLists = [
    Listing(
        title: "64L Keg of Belgium Moon",
        description: "Every party needs some liquid courage to loosen up the that inital awkwardness feeling. Why not kick off the party right with an entire keg? After a keg stand or two, the party will be bumping!",
        price: 250,
        icon: Icons.hourglass_full),
    Listing(
        title: "24x Palette of Beer",
        description: "Sometimes you want to be able to split up the party a bit more and not get keg-ice all over the floor. A palette of beer is a good middle ground.",
        price: 150,
        icon: Icons.android),
    Listing(
        title: "1x Foldable Table",
        description: "Every party needs some liquid courage to loosen up the that inital awkwardness feeling. Why not kick off the party right with an entire keg? After a keg stand or two, the party will be bumping!",
        price: 75,
        icon: Icons.keyboard_tab),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text()
        ...exampleLists.map((listing) {
          return ItemCard(listing);
        })
      ],
    );
  }
}
