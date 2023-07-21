import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

import '../../../core/style/string_app.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SettingsList(
        sections: [
          SettingsSection(
            title: const Text(StringApp.account),
            tiles: [
              SettingsTile(
                title: const Text(StringApp.edit),
                leading: const Icon(Icons.person),
                onPressed: (context) {},
              ),
              SettingsTile(
                title: const Text(StringApp.privacy),
                leading: const Icon(Icons.lock),
                onPressed: (context) {},
              ),
            ],
          ),
          SettingsSection(
            title: const Text(StringApp.notifications),
            tiles: [
              SettingsTile.switchTile(
                title: const Text(StringApp.push),
                leading: const Icon(Icons.notifications),
                onToggle: (value) {},
                initialValue: false,
              ),
              SettingsTile.switchTile(
                title: const Text(StringApp.push),
                leading: const Icon(Icons.email),
                onToggle: (value) {},
                initialValue: true,
              ),
            ],
          ),
          // Add more settings sections as needed
        ],
      ),
    );
  }
}
