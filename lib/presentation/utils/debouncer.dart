import 'dart:async';

class Debouncer {
  final Duration delay;
  Timer? _timer;

  Debouncer({required this.delay});

  void run(void Function() action) {
    _timer?.cancel(); // 이전 타이머 취소
    _timer = Timer(delay, action); // 새로운 타이머 시작
  }

  void dispose() {
    _timer?.cancel();
  }
}