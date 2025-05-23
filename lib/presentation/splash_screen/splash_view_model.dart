import 'dart:async';

import 'package:flutter/material.dart';
import 'package:recipe_app/domain/use_case/throw_when_settings_info_use_case.dart';
import 'package:recipe_app/presentation/splash_screen/splash_event.dart';
import 'package:recipe_app/presentation/splash_screen/splash_state.dart';

class SplashViewModel with ChangeNotifier {
  final ThrowWhenSettingsInfoUseCase _throwWhenSettingsInfoUseCase;

  final _eventController = StreamController<SplashEvent>();

  Stream<SplashEvent> get eventStream => _eventController.stream;

  SplashState _state = SplashState();

  SplashState get state => _state;

  SplashViewModel({
    required ThrowWhenSettingsInfoUseCase throwWhenSettingsInfoUseCase,
  }) : _throwWhenSettingsInfoUseCase = throwWhenSettingsInfoUseCase;

  void getSettings() async {
    try {
      final _ = await _throwWhenSettingsInfoUseCase.getSettings();
    } catch (e) {
      _eventController.add(SplashEvent.showErrorMessage(e.toString()));
    }
  }

  @override
  void dispose() {
    _eventController.close();
    super.dispose();
  }
}
