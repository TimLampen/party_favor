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
        description:
            "Every party needs some liquid courage to loosen up the that inital awkwardness feeling. Why not kick off the party right with an entire keg? After a keg stand or two, the party will be bumping!",
        price: 250,
        icon: Icons.hourglass_full),
    Listing(
        title: "24x Palette of Beer",
        description:
            "Sometimes you want to be able to split up the party a bit more and not get keg-ice all over the floor. A palette of beer is a good middle ground.",
        price: 150,
        icon: Icons.android),
    Listing(
        title: "1x Foldable Table",
        description:
            "Yes, someone will jump on this table for a CPL video but don't worry since they're so cheap!",
        price: 75,
        icon: Icons.keyboard_tab),
    Listing(
        title: "1x Foldable Table",
        description:
            "Yes, someone will jump on this table for a CPL video but don't worry since they're so cheap!",
        price: 75,
        icon: Icons.keyboard_tab),
    Listing(
        title: "1x Foldable Table",
        description:
            "Yes, someone will jump on this table for a CPL video but don't worry since they're so cheap!",
        price: 75,
        icon: Icons.keyboard_tab),
    Listing(
        title: "1x Foldable Table",
        description:
            "Yes, someone will jump on this table for a CPL video but don't worry since they're so cheap!",
        price: 75,
        icon: Icons.keyboard_tab),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[900],
        body: Container(
            margin: EdgeInsets.only(top: 30),
            child: ListView(
              children: <Widget>[
                Container(
                  child: Center(
                    child: ListTile(
                      title: Text(
                        "Pick Your Poison",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.lightBlueAccent,
                          fontSize: 36,
                        ),
                      ),
                      subtitle: Text(
                        "Select the items that you would like to add to your cart and they will be delivered to you within 2 hours.",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.lightBlue[100]),
                      ),
                    ),
                  ),
                ),
                ...(exampleLists).map((e) => ItemCard(e))
              ],
            )));
  }
}
