import 'package:ntf_web/common_libs.dart';

class TimerCountDown2 extends StatefulWidget {
  final int minutes;
  final int hours;
  final int seconds;

  const TimerCountDown2(
      {super.key,
      required this.minutes,
      required this.hours,
      required this.seconds});

  @override
  State<TimerCountDown2> createState() => _TimerCountDown2State();
}

class _TimerCountDown2State extends State<TimerCountDown2> {
  DateTime? time;
  Timer? timer;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      time = DateTime(
        DateTime.now().year,
        1,
        1,
        widget.hours,
        widget.minutes,
        widget.seconds,
      );
      setState(() {});
      startTimer();
    });
  }

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (time == null) {
        return;
      }
      final hours = time!.hour;
      final minutes = time!.minute;
      final seconds = time!.second;

      if (hours == 0 && minutes == 0 && seconds == 0) {
        timer.cancel();
      } else {
        time = time!.subtract(const Duration(seconds: 1));

        setState(() {});
      }
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  String getFormattedTime() {
    if (time == null) {
      return '';
    }
    final hours = time!.hour.toString().padLeft(2, '0');
    final minutes = time!.minute.toString().padLeft(2, '0');
    final seconds = time!.second.toString().padLeft(2, '0');

    return '$hours : $minutes : $seconds';
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      getFormattedTime(),
      style: satoshi700S16.copyWith(
        color: primaryColor,
        fontSize: 20,
      ),
    );
  }
}
