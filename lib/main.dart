import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groupify/app/app.dart';
import 'package:groupify/auth/auth.dart';
import 'package:groupify/background_task.dart';
import 'package:groupify/common/common.dart';
import 'package:groupify/firebase_options.dart';
import 'package:workmanager/workmanager.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  return BlocOverrides.runZoned(
    () async {
      await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
      final authenticationRepository = AuthRepository();
      await authenticationRepository.user.first;
      await authenticationRepository.connectToSpotify();
      final firestoreRepository = FirestoreRepository(authenticationRepository);
      // await firestoreRepository.currentRoomAsync;
      Workmanager().initialize(callbackDispatcher, isInDebugMode: true);

      runApp(App(authenticationRepository: authenticationRepository, firestoreRepository: firestoreRepository));
    },
  );
}
