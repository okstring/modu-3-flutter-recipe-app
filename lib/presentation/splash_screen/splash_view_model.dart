import 'dart:async';

import 'package:flutter/material.dart';
import 'package:recipe_app/domain/use_case/throw_when_settings_info_use_case.dart';
import 'package:recipe_app/presentation/splash_screen/splash_event.dart';

class SplashViewModel with ChangeNotifier {
  final ThrowWhenSettingsInfoUseCase _throwWhenSettingsInfoUseCase;

  SplashViewModel({
    required ThrowWhenSettingsInfoUseCase throwWhenSettingsInfoUseCase,
  }) : _throwWhenSettingsInfoUseCase = throwWhenSettingsInfoUseCase;

  final _eventController = StreamController<SplashEvent>();

  Stream<SplashEvent> get eventStream => _eventController.stream;

  void getSettings() async {
    try {
      final settingsString = await _throwWhenSettingsInfoUseCase.getSettings();
      print(settingsString);
    } catch (e, stackTrace) {
      // print(stackTrace);
      _eventController.add(SplashEvent.showErrorMessage(e.toString()));
    }
  }
}
