import 'package:ntf_web/common_libs.dart';
import 'package:ntf_web/presenation/home/widget/home_change_animation2.dart';

class BodyItem1Child2 extends StatelessWidget {
  const BodyItem1Child2({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      final width = constraint.maxWidth * .9;
      return Align(
        alignment: Alignment.centerLeft,
        child: SizedBox(
          width: width,
          child: Column(
            children: [
              Container(
                width: width,
                height: width * 1.5,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                padding: const EdgeInsets.all(space4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(width),
                  border: Border.all(
                    color: imageBorderColor,
                  ),
                ),
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(width)),
                  child: const HomeImageAnimation(),
                ),
              ).fadeInAndMoveFromBottom(),
              verticalSpacer32,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        '100K +',
                        style: satoshi700S32.copyWith(
                          fontSize: 50,
                          color: primaryColor,
                        ),
                      ),
                      Text(
                        'Customers',
                        style: satoshi500S14.copyWith(
                          color: lightBlack,
                        ),
                      ),
                    ],
                  ),
                  horizontalSpacer24,
                  Column(
                    children: [
                      Text(
                        '32K +',
                        style: satoshi700S32.copyWith(
                          fontSize: 50,
                          color: primaryColor,
                        ),
                      ),
                      Text(
                        'Artworks',
                        style: satoshi500S14.copyWith(
                          color: lightBlack,
                        ),
                      ),
                    ],
                  ),
                  horizontalSpacer24,
                  Column(
                    children: [
                      Text(
                        '12K +',
                        style: satoshi700S32.copyWith(
                          fontSize: 50,
                          color: primaryColor,
                        ),
                      ),
                      Text(
                        'Owners',
                        style: satoshi500S14.copyWith(
                          color: lightBlack,
                        ),
                      ),
                    ],
                  ),
                ],
              ).fadeInAndMoveFromBottom()
            ],
          ),
        ),
      );
    });
  }
}
