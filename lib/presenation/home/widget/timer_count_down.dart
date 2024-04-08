import 'package:ntf_web/common_libs.dart';

class TimerCountDown extends StatefulWidget {
  final int minutes;
  final int hours;
  final int seconds;

  const TimerCountDown({
    super.key,
    required this.minutes,
    required this.hours,
    required this.seconds,
  });

  @override
  State<TimerCountDown> createState() => _TimerCountDownState();
}

class _TimerCountDownState extends State<TimerCountDown> {
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

  String getFormattedTime(int position) {
    if (time == null) {
      return '';
    }
    if (position == 0) {
      final hours = time!.hour;
      return hours.toString().padLeft(2, '0');
    } else if (position == 1) {
      final minutes = time!.minute;
      return minutes.toString().padLeft(2, '0');
    } else {
      final seconds = time!.second;
      return seconds.toString().padLeft(2, '0');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Container(
              width: 100,
              alignment: Alignment.center,
              child: Text(
                getFormattedTime(0),
                style: satoshi700S32.copyWith(
                  fontSize: 70,
                  color: primaryColor,
                ),
              ),
            ),
            Text(
              'Hours',
              style: satoshi500S14.copyWith(
                color: lightBlack,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: space16),
          child: Text(
            ':',
            style: satoshi700S32.copyWith(
              fontSize: 40,
              fontWeight: FontWeight.w500,
              color: primaryColor,
            ),
          ),
        ),
        Column(
          children: [
            Container(
              width: 100,
              alignment: Alignment.center,
              child: Text(
                getFormattedTime(1),
                style: satoshi700S32.copyWith(
                  fontSize: 70,
                  color: primaryColor,
                ),
              ),
            ),
            Text(
              'Minutes',
              style: satoshi500S14.copyWith(
                color: lightBlack,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: space16),
          child: Text(
            ':',
            style: satoshi700S32.copyWith(
              fontSize: 40,
              fontWeight: FontWeight.w500,
              color: primaryColor,
            ),
          ),
        ),
        Column(
          children: [
            Container(
              width: 100,
              alignment: Alignment.center,
              child: Text(
                getFormattedTime(2),
                style: satoshi700S32.copyWith(
                  fontSize: 70,
                  color: primaryColor,
                ),
              ),
            ),
            Text(
              'Seconds',
              style: satoshi500S14.copyWith(
                color: lightBlack,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
