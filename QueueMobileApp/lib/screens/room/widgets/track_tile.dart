import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:queue/app/service_locator.dart';
import 'package:queue/services/queue_service.dart';

class TrackTile extends StatelessWidget {
  const TrackTile(this.track, {super.key});
  final dynamic track;

  @override
  Widget build(BuildContext context) {
    final IQueueService queueService = getIt<IQueueService>();

    final uid = FirebaseAuth.instance.currentUser!.uid;
    final selected = track['voters']?.contains(uid);
    final isInQueue = track['isInQueue'] ?? true;

    return ListTile(
      title: Text(track['song']['name']),
      subtitle: Text(track['song']['artists'].map((a) => a['name']).join(', ')),
      trailing: track['votes'] != 0
          ? Text(track['votes'].toString())
          : isInQueue
              ? IconButton.filledTonal(
                  onPressed: () => queueService.dequeue(track['uri']),
                  icon: const Icon(Icons.remove_circle_outline_rounded))
              : null,
      selected: selected,
      onTap: selected
          ? () => queueService.unvote(track['uri'])
          : () => isInQueue
              ? queueService.vote(track['uri'])
              : queueService.queue(track['uri'], song: track['song']),
    );
  }
}
