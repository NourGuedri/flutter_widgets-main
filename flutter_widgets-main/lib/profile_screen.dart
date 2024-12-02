import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: <Widget>[
      Image.asset('assets/plage.jpg'),
      Transform.translate(
          offset: Offset(0, 100),
          child: Column(
            children: <Widget>[
              _buildProfileImage(context),
              _buildProfileDetails(context),
              _buildActions(context),
            ],
          ))
    ]));
  }

  Widget _buildProfileImage(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      child: ClipOval(
        child: Image.asset(
          'assets/dog.jpg',
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }

  Widget _buildProfileDetails(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: <Widget>[
          Text('Name: John Doe',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600)),
          _buildDetailsRow('age', "4"),
          _buildDetailsRow("status", "Good Boy"),
        ]));
  }

  Widget _buildDetailsRow(String heading, String value) {
    return Row(
      children: <Widget>[
        Text(
          '$heading: ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(value)
      ],
    );
  }

  Widget _buildActions(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        _buildIcon(Icons.restaurant, 'Food'),
        _buildIcon(Icons.favorite, 'Pet'),
        _buildIcon(Icons.directions_walk, 'walk'),
      ],
    );
  }

  Widget _buildIcon(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          Icon(
            icon,
            size: 40,
          ),
          Text(text),
        ],
      ),
    );
  }
}
