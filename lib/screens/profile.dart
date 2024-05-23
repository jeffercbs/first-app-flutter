import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
// Suggested code may be subject to a license. Learn more: ~LicenseLog:2094917138.
          Text(
            "Hello World profile",
            style: Theme.of(context).textTheme.headlineMedium,
          )
        ],
      ),
    ));
  }
}
