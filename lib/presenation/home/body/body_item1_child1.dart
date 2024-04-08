import 'package:flutter_circular_text/circular_text.dart';
import 'package:ntf_web/common_libs.dart';
import 'package:ntf_web/presenation/home/widget/timer_count_down.dart';

class BodyItem1Child1 extends StatelessWidget {
  const BodyItem1Child1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(height: space32 * 3),
        buildItem1().fadeInAndMoveFromBottom(),
        verticalSpacer12,
        buildItem2().fadeInAndMoveFromBottom(),
        verticalSpacer12,
        buildItem3(),
        buildItem4(),
      ],
    );
  }

  SizedBox buildItem4() {
    return SizedBox(
      height: 600,
      child: Stack(
        children: [
          Positioned(
            top: 100,
            left: 200,
            child: Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              padding: const EdgeInsets.all(space4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(300),
                border: Border.all(
                  color: imageBorderColor,
                ),
              ),
              child: Container(
                width: 200,
                height: 200,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                padding: const EdgeInsets.all(space4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200),
                  gradient: const LinearGradient(
                    colors: buttonGradient,
                  ),
                ),
              ),
            ).fadeInAndMoveFromBottom(),
          ),
          Positioned(
            top: 50,
            left: 300,
            child: CircularText(
              children: [
                TextItem(
                  text: Text(
                    "NFTS MINTS",
                    style: satoshi500S12.copyWith(color: whiteColor),
                  ),
                  startAngle: -90,
                  startAngleAlignment: StartAngleAlignment.center,
                  direction: CircularTextDirection.clockwise,
                ),
                TextItem(
                  text: Text(
                    "NFTS".toUpperCase(),
                    style: satoshi500S12.copyWith(color: whiteColor),
                  ),
                  startAngle: 0,
                  startAngleAlignment: StartAngleAlignment.center,
                  direction: CircularTextDirection.clockwise,
                ),
                TextItem(
                  text: Text(
                    "NFTS CRAFT".toUpperCase(),
                    style: satoshi500S12.copyWith(color: whiteColor),
                  ),
                  startAngle: 90,
                  startAngleAlignment: StartAngleAlignment.center,
                  direction: CircularTextDirection.anticlockwise,
                ),
                TextItem(
                  text: Text(
                    "NFTS".toUpperCase(),
                    style: satoshi500S12.copyWith(color: whiteColor),
                  ),
                  startAngle: 180,
                  startAngleAlignment: StartAngleAlignment.center,
                  direction: CircularTextDirection.anticlockwise,
                ),
              ],
              radius: 100,
              position: CircularTextPosition.inside,
            ).fadeInAndMoveFromBottom(),
          ),
          Positioned(
            top: 0,
            left: 600,
            child: Container(
              width: 300,
              height: 500,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              padding: const EdgeInsets.all(space4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
                border: Border.all(
                  color: imageBorderColor,
                ),
              ),
              child: Container(
                width: double.infinity,
                height: double.infinity,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(300),
                ),
                child: Image.asset(
                  image2,
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ).fadeInAndMoveFromBottom(),
          ),
        ],
      ),
    );
  }

  Row buildItem3() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'NFTS',
              style: satoshi700S32.copyWith(
                fontSize: 100,
                color: primaryColor,
              ),
            ),
            verticalSpacer32,
            Text(
              'AUCTION ENDS IN',
              style: satoshi500S14.copyWith(
                fontSize: 16,
                color: lightBlack,
              ),
            ),
            verticalSpacer12,
            const TimerCountDown(
              minutes: 34,
              hours: 11,
              seconds: 40,
            ),
            verticalSpacer32,
            Container(
              width: 400,
              height: 200,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              padding: const EdgeInsets.all(space4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(300),
                border: Border.all(
                  color: imageBorderColor,
                ),
              ),
              child: Container(
                width: double.infinity,
                height: double.infinity,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200),
                ),
                child: Image.asset(
                  image3,
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ).fadeInAndMoveFromBottom(),
        horizontalSpacer24,
        Expanded(
          child: Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 300,
              height: 500,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              padding: const EdgeInsets.all(space4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
                border: Border.all(
                  color: imageBorderColor,
                ),
              ),
              child: Container(
                width: double.infinity,
                height: double.infinity,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(300),
                ),
                child: Image.asset(
                  image15,
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ).fadeInAndMoveFromBottom(),
          ),
        )
      ],
    );
  }

  Row buildItem2() {
    return Row(
      children: [
        Text(
          'SELL',
          style: satoshi700S32.copyWith(
            fontSize: 100,
            color: whiteColor,
          ),
        ),
        horizontalSpacer24,
        Container(
          width: 300,
          height: 80,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          padding: const EdgeInsets.all(space4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(300),
            border: Border.all(
              color: imageBorderColor,
            ),
          ),
          child: Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(80),
            ),
            child: Image.asset(
              image8,
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        ),
        horizontalSpacer24,
        Text(
          'YOUR',
          style: satoshi700S32.copyWith(
            fontSize: 100,
            color: whiteColor,
          ),
        ),
      ],
    );
  }

  Row buildItem1() {
    return Row(
      children: [
        Text(
          'COLLECT AND ',
          style: satoshi700S32.copyWith(
            fontSize: 100,
            color: whiteColor,
          ),
        ),
        horizontalSpacer24,
        Container(
          width: 200,
          height: 80,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          padding: const EdgeInsets.all(space4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(300),
            border: Border.all(
              color: imageBorderColor,
            ),
          ),
          child: Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(80),
            ),
            child: Image.asset(
              image6,
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
