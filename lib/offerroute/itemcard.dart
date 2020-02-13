import 'package:flutter/material.dart';

import 'listing.dart';

class ItemCard extends StatelessWidget {
  final Listing listing;

  ItemCard(this.listing);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: Colors.red),
      child: Text(listing.description),
      margin: EdgeInsets.only(top: 20),
    );
  }
}
