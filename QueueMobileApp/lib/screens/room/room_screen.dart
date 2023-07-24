import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:queue/app/widgets/gradient_app_bar.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RoomScreen extends StatelessWidget {
  const RoomScreen(this.room, {super.key});
  final dynamic room;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        title: Text(room['name']),
        leading: IconButton(
          icon: const Icon(Icons.logout_rounded),
          onPressed: () {
            SharedPreferences.getInstance().then((prefs) {
              prefs.remove('roomId');
              context.go('/lobby');
            });
          },
        ),
      ),
    );
  }
}
