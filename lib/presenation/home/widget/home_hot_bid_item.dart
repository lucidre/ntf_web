import 'package:ntf_web/common_libs.dart';
import 'package:ntf_web/presenation/home/widget/timer_count_down2.dart';

class HomeHotBidItem extends StatelessWidget {
  final double width;
  final String owner;
  final String nftName;
  final String ownerImage;
  final String image;
  final String bidPrice;
  final int hours;
  final int minutes;
  final int seconds;
  const HomeHotBidItem({
    super.key,
    required this.width,
    required this.owner,
    required this.ownerImage,
    required this.image,
    required this.nftName,
    required this.hours,
    required this.minutes,
    required this.seconds,
    required this.bidPrice,
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'OWNED BY',
                      style: satoshi700S16.copyWith(color: whiteColor),
                    ).fadeInAndMoveFromBottom(),
                    verticalSpacer8,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          owner,
                          style: satoshi700S16.copyWith(
                            color: lightBlack,
                          ),
                        ),
                        horizontalSpacer8,
                        const Icon(
                          Icons.verified_rounded,
                          color: tickColor,
                        ),
                      ],
                    ).fadeInAndMoveFromBottom(),
                  ],
                )
              ],
            ),
            verticalSpacer16,
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(space12),
                ),
                child: Image.asset(
                  image,
                  height: double.infinity,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ).fadeInAndMoveFromBottom(),
            verticalSpacer16,
            Row(
              children: [
                Text(
                  nftName,
                  style: satoshi700S16.copyWith(
                    color: whiteColor,
                    fontSize: 20,
                  ),
                ).fadeInAndMoveFromBottom(),
                const Spacer(),
                TimerCountDown2(
                  minutes: minutes,
                  hours: hours,
                  seconds: seconds,
                ).fadeInAndMoveFromBottom(),
              ],
            ),
            verticalSpacer8,
            const Divider(color: lightBlack).fadeIn(),
            verticalSpacer8,
            Row(children: [
              const Icon(
                Icons.star_rounded,
                color: primaryColor,
              ).fadeInAndMoveFromBottom(),
              horizontalSpacer12,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Highest Bid',
                      style: satoshi700S16.copyWith(color: lightBlack),
                    ),
                    verticalSpacer8,
                    Text(
                      bidPrice,
                      style: satoshi700S16.copyWith(
                        color: whiteColor,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ).fadeInAndMoveFromBottom(),
              ),
              horizontalSpacer8,
              AppBtn(
                onPressed: () {},
                semanticLabel: 'auction button',
                text: 'Auction',
              ).fadeInAndMoveFromBottom(),
            ]),
          ],
        ));
  }
}
