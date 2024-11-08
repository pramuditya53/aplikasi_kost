import 'package:aplikasi_kost/features/settings/controller/SettingsScreen.dart';
import 'package:flutter/material.dart';
// import '../../controller/SettingsScreen.dart';

class SettingsScreen extends StatelessWidget {
  final SettingsController controller =
      SettingsController(); // Pastikan ini sesuai

  // const SettingsScreen({Key? key})
  //     : super(key: key); // Aktifkan kembali konstruktor ini

  @override
  Widget build(BuildContext context) {
    final settingsOptions = controller.getSettingsOptions();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount: settingsOptions.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(settingsOptions[index]),
            onTap: () {
              // Placeholder for navigation or actions
            },
          );
        },
      ),
    );
  }
}
