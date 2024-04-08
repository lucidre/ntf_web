import 'package:ntf_web/common_libs.dart';
import 'package:ntf_web/models/home_top_collection.dart';

class HomeTopCollectionsItem extends StatelessWidget {
  final HomeTopCollectionsModel model;

  const HomeTopCollectionsItem({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(space16),
        width: double.infinity,
        decoration: BoxDecoration(
          color: blackColor,
          borderRadius: BorderRadius.circular(space12),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  model.number,
                  style: satoshi700S16.copyWith(
                    color: primaryColor,
                    fontSize: 20,
                  ),
                ).fadeInAndMoveFromBottom(),
                horizontalSpacer24,
                Container(
                  width: 60,
                  height: 60,
                  padding: const EdgeInsets.all(3),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: whiteColor,
                  ),
                  child: Container(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: whiteColor,
                    ),
                    child: Image.asset(
                      model.image,
                      height: double.infinity,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ).fadeInAndMoveFromBottom(),
                horizontalSpacer12,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        model.code,
                        style: satoshi700S16.copyWith(
                          color: whiteColor,
                          fontSize: 20,
                        ),
                      ).fadeInAndMoveFromBottom(),
                      verticalSpacer8,
                      Text(
                        model.dollar,
                        style: satoshi500S16.copyWith(
                          color: primaryColor,
                        ),
                      ).fadeInAndMoveFromBottom(),
                    ],
                  ),
                )
              ],
            ),
          ],
        ));
  }
}
