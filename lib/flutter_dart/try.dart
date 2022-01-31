import 'dart:async';

Timer? _timer;
typedef VoidCallback = void Function();

var duration = const Duration(seconds: 5);

void startInactivityTimer({VoidCallback? onTimeout}) {
  print('started');
  stopInactivivtyTimer();
  _timer = Timer(duration, () {
    print('count');
    onTimeout?.call();
  });
}

void stopInactivivtyTimer() {
  _timer?.cancel();
  _timer = null;
}

void main(List<String> args) {
  startInactivityTimer(onTimeout: () {
    print(duration.inSeconds);
  });
}

 var countdownStarted = true;

    _toastService.showCountdownToast(
      title: S.instance.playerInactivityTitleText.msg,
      dynamicDescription: (time) {
        if (countdownStarted) {
          if (time == 0) countdownStarted = false;

          return S.instance.sleeptimerBody(time.toString()).msg;
        }
        if (time == _kFinalCountdownDuration.inSeconds) countdownStarted = true;

        return S.instance.sleeptimerBody(0.toString()).msg;
      },
