import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
 const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
// Suggested code may be subject to a license. Learn more: ~LicenseLog:2094917138.
        Text(
          "Hello World settings",
          style: Theme.of(context).textTheme.headlineMedium,
        )
      ],
    ));
  }
}
