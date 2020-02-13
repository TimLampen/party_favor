import 'package:flutter/material.dart';
import 'package:party_favor/offerroute/listings.dart';

class LocationForm extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<LocationForm> {
  final _formKey = GlobalKey<FormState>();

  void _submitLocation() {
    if (_formKey.currentState.validate()) {
      Scaffold.of(context).showSnackBar(SnackBar(
        content: Text("Loading information for that location..."),
      ));

      Navigator.push(context, MaterialPageRoute(builder: (context) => Listings()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 120),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Colors.transparent),
            width: 400,
            child: TextFormField(
              textAlign: TextAlign.start,
              style: TextStyle(color: Colors.lightBlueAccent[100]),
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.account_balance),
                  hintText: "Enter your address",
                  hintStyle: TextStyle(color: Colors.lightBlueAccent),
                  contentPadding: EdgeInsets.only(top: 15)),
              validator: (value) {
                if (value.isEmpty) {
                  return "";
                }
                return null;
              },
            ),
          ),
          Container(
            width: 200,
            margin: EdgeInsets.only(top: 10),
            child: RaisedButton(
              padding: EdgeInsets.only(),
              onPressed: () => this._submitLocation(),
              textColor: Colors.white,
              color: Colors.blue[700],
              child: Text(
                "Deliver Here",
                style: TextStyle(fontSize: 18),
              ),
            ),
          )
        ],
      ),
    );
  }
}
