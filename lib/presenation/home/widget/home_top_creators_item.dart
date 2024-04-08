import 'package:ntf_web/common_libs.dart';

class HomeTopCreatorsItem extends StatelessWidget {
  final double width;
  final String owner;

  final String ownerImage;
  final String image1;
  final String image2;
  final String image3;
  final String image4;

  const HomeTopCreatorsItem({
    super.key,
    required this.width,
    required this.owner,
    required this.ownerImage,
    required this.image1,
    required this.image2,
    required this.image3,
    required this.image4,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(space16),
        width: width,
        decoration: BoxDecoration(
          color: blackColor,
          borderRadius: BorderRadius.circular(space12),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
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
                      ownerImage,
                      height: double.infinity,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ).fadeInAndMoveFromBottom(),
                horizontalSpacer8,
                Text(
                  owner,
                  style: satoshi700S16.copyWith(
                    color: lightBlack,
                  ),
                ).fadeInAndMoveFromBottom(),
                horizontalSpacer8,
                const Icon(
                  Icons.verified_rounded,
                  color: tickColor,
                ).fadeInAndMoveFromBottom(),
                const Spacer(),
                horizontalSpacer8,
                AppBtn(
                  onPressed: () {},
                  semanticLabel: 'follow button',
                  text: 'Follow',
                ).fadeInAndMoveFromBottom(),
              ],
            ),
            verticalSpacer16,
            buildImages().fadeInAndMoveFromBottom(),
          ],
        ));
  }

  Widget buildImages() {
    return AspectRatio(
      aspectRatio: 1,
      child: Container(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(space12),
          ),
          child: Row(
            children: [
              Expanded(
                child: Image.asset(
                  image1,
                  height: double.infinity,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              horizontalSpacer8,
              Expanded(
                  child: Column(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Image.asset(
                            image2,
                            height: double.infinity,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        horizontalSpacer8,
                        Expanded(
                          child: Image.asset(
                            image3,
                            height: double.infinity,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                  verticalSpacer8,
                  Expanded(
                    child: Image.asset(
                      image4,
                      height: double.infinity,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ))
            ],
          )),
    );
  }
}
