import 'package:flutter/material.dart';
import 'package:queue/app/service_locator.dart';
import 'package:queue/services/queue_service.dart';

class NowPlayingTile extends StatelessWidget {
  const NowPlayingTile({super.key});

  @override
  Widget build(BuildContext context) {
    final IQueueService queueService = getIt<IQueueService>();

    return StreamBuilder<dynamic>(
        stream: queueService.onPlayerState,
        builder: (context, snapshot) {
          if (snapshot.data == null || snapshot.data.isEmpty) {
            return const NowPlayingTileDummy();
          }

          return SizedBox(
            height: 180,
            child: Card(
              shadowColor: Colors.transparent,
              child: Center(
                child: ListTile(
                  title: Text(snapshot.data['name']),
                  subtitle: Text((snapshot.data['artists'] as List).join(', ')),
                  trailing: const Icon(Icons.skip_next),
                ),
              ),
            ),
          );
        });
  }
}

class NowPlayingTileDummy extends StatelessWidget {
  const NowPlayingTileDummy({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 180,
      child: Card(
        shadowColor: Colors.transparent,
        child: Center(
          child: ListTile(
            title: Text('Nothing playing right now'),
            subtitle: Text('Queue up some songs!'),
            trailing: Icon(Icons.skip_next),
          ),
        ),
      ),
    );
  }
}
