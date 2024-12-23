part of 'settings_screen_part.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            SettingsButton(
              text: 'Data Protection',
              onTap: () {},
            ),
            SettingsButton(text: 'Usage Guidelines', onTap: () {}),
            SettingsButton(text: 'Support', onTap: () {}),
            16.g,
            Row(
              children: [
                SettingsBigButton(
                  title: 'Rate',
                  icon: AppIcons.star,
                  onTap: () {},
                ),
                8.g,
                SettingsBigButton(
                  title: 'Share',
                  icon: AppIcons.share,
                  onTap: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
