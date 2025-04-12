import 'package:flutter/cupertino.dart';

class SplashViewModel with ChangeNotifier {
  bool _isLoading = false;

  bool get isLoading => _isLoading;
}