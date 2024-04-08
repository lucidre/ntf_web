import 'package:flutter/foundation.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:ntf_web/common_libs.dart';
import 'package:ntf_web/models/home_top_collection.dart';
import 'package:ntf_web/presenation/home/widget/app_bar_item.dart';
import 'package:ntf_web/presenation/home/body/body_item1_child1.dart';
import 'package:ntf_web/presenation/home/body/body_item1_child2.dart';
import 'package:ntf_web/presenation/home/body/body_item2_strip.dart';
import 'package:ntf_web/presenation/home/widget/home_hot_bid_item.dart';
import 'package:ntf_web/presenation/home/widget/home_tab_item.dart';
import 'package:ntf_web/presenation/home/widget/home_top_collections_item.dart';
import 'package:ntf_web/presenation/home/widget/home_top_creators_item.dart';
import 'package:ntf_web/presenation/home/widget/stack_image_item.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: MouseRegion(
        onHover: (PointerEvent details) {
          final controller = Get.find<HomeController>();
          controller.setMouseRegion(details.position);
        },
        child: Stack(
          children: [
            buildCircle1(),
            buildCircle2(),
            buildCircle3(),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: space32 * 2,
                    bottom: space16,
                    left: space32 * 2,
                    right: space32 * 2,
                  ),
                  child: buildAppBar(),
                ),
                Expanded(
                  child: buildBody(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  buildBody() {
    const side = space32 * 2;
    const top = space32 * 4;

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: side,
              right: side,
            ),
            child: buildBodyItem1(),
          ),
          buildBodyItem2(),
          Padding(
            padding: const EdgeInsets.only(
              top: top,
              left: side,
              right: side,
            ),
            child: buildBodyItem3(),
          ),
          verticalSpacer32,
          buildBodyItem9(),
          Padding(
            padding: const EdgeInsets.only(
              top: top,
              left: side,
              right: side,
            ),
            child: buildBodyItem4(),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: top,
              left: side,
              right: side,
            ),
            child: buildBodyItem5(),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: top,
              left: side,
              right: side,
            ),
            child: buildBodyItem6(),
          ),
          Container(
            height: 400,
            alignment: Alignment.topCenter,
            margin: const EdgeInsets.only(
              top: top,
              left: side,
              right: side,
            ),
            child: buildBodyItem7(),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: top / 4,
              left: side,
              right: side,
            ),
            child: buildBodyItem8(),
          ),
        ],
      ),
    );
  }

  Stack buildBodyItem9() {
    return const Stack(
      alignment: Alignment.center,
      children: [
        StackImageItem(x: -750, image: image14, size: 200),
        StackImageItem(x: 750, image: image1, size: 200),
        StackImageItem(x: -550, image: image10, size: 300),
        StackImageItem(x: 550, image: image8, size: 300),
        StackImageItem(x: -300, image: image13, size: 400),
        StackImageItem(x: 300, image: image16, size: 400),
        StackImageItem(x: 0, image: image17, size: 500),
      ],
    );
  }

  buildBodyItem8() {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'NFT',
              style: satoshi500S16.copyWith(color: lightBlack),
            ).fadeInAndMoveFromBottom(),
            horizontalSpacer24,
            Text(
              'About',
              style: satoshi500S16.copyWith(color: lightBlack),
            ).fadeInAndMoveFromBottom(),
            horizontalSpacer24,
            Text(
              'Artwork',
              style: satoshi500S16.copyWith(color: lightBlack),
            ).fadeInAndMoveFromBottom(),
            horizontalSpacer24,
            Text(
              'Collection',
              style: satoshi500S16.copyWith(color: lightBlack),
            ).fadeInAndMoveFromBottom(),
            horizontalSpacer24,
            Text(
              'Artist',
              style: satoshi500S16.copyWith(color: lightBlack),
            ).fadeInAndMoveFromBottom(),
            horizontalSpacer24,
            const Spacer(),
            horizontalSpacer24,
            const Icon(Icons.facebook_rounded, color: primaryColor)
                .fadeInAndMoveFromBottom(),
            horizontalSpacer24,
            const Icon(Icons.whatshot_rounded, color: primaryColor)
                .fadeInAndMoveFromBottom(),
            horizontalSpacer24,
            const Icon(Icons.web_rounded, color: primaryColor)
                .fadeInAndMoveFromBottom()
          ],
        ),
        verticalSpacer8,
        const Divider(color: lightBlack),
        verticalSpacer8,
        Row(
          children: [
            Text(
              'All rights reserved',
              style: satoshi500S16.copyWith(color: lightBlack),
            ).fadeInAndMoveFromBottom(),
            horizontalSpacer24,
            const Spacer(),
            horizontalSpacer24,
            Text(
              'Terms and Agreements',
              style: satoshi500S16.copyWith(color: lightBlack),
            ).fadeInAndMoveFromBottom(),
            horizontalSpacer16,
            Text(
              'Privacy Policy',
              style: satoshi500S16.copyWith(color: lightBlack),
            ).fadeInAndMoveFromBottom(),
          ],
        ),
      ],
    );
  }

  buildBodyItem7() {
    return Stack(
      children: [
        Positioned(
          left: 0,
          right: 0,
          top: 80,
          child: Container(
              alignment: Alignment.center,
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(space8),
                gradient: const LinearGradient(
                  colors: buttonGradient,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'GET FREE COLLECTION',
                    style: satoshi700S24.copyWith(
                      color: whiteColor,
                      fontSize: 40,
                    ),
                  ).fadeInAndMoveFromBottom(),
                  verticalSpacer8,
                  Text(
                    'FOR FIRST TIME TRANSACTION',
                    style: satoshi700S24.copyWith(
                      color: whiteColor,
                      fontSize: 35,
                    ),
                  ).fadeInAndMoveFromBottom(),
                  verticalSpacer16,
                  AppBtn(
                    onPressed: () {},
                    semanticLabel: 'join now button',
                    text: 'Join Now',
                    borderColor: whiteColor,
                    textColor: primaryColor,
                    bgColor: const [
                      whiteColor,
                      whiteColor,
                    ],
                  ).fadeInAndMoveFromBottom(),
                ],
              )),
        ),
        Positioned(
          left: space24,
          top: 0,
          child: Transform.scale(
            scale: 1.3,
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              image20,
              width: 400,
              height: 400,
              fit: BoxFit.contain,
            ),
          ).fadeInAndMoveFromTop(),
        ),
        Positioned(
          right: space4,
          top: 0,
          child: Transform.scale(
            scale: 1.3,
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              image19,
              width: 400,
              height: 400,
              fit: BoxFit.contain,
            ),
          ).fadeInAndMoveFromTop(),
        ),
      ],
    );
  }

  buildBodyItem6() {
    return Column(children: [
      Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'TOP ',
            style: satoshi700S32.copyWith(
              fontSize: 60,
              color: whiteColor,
            ),
          ),
          Text(
            'COLLECTIONS',
            style: satoshi700S32.copyWith(
              fontSize: 60,
              color: primaryColor,
            ),
          ),
        ],
      ).fadeInAndMoveFromBottom(),
      verticalSpacer32,
      MasonryGridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: space24,
        crossAxisSpacing: space24,
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.all(0),
        shrinkWrap: true,
        itemCount: homeTopCollectionoModels.length,
        itemBuilder: (context, index) {
          final model = homeTopCollectionoModels[index];
          return HomeTopCollectionsItem(model: model);
        },
      ),
    ]);
  }

  buildBodyItem5() {
    return Column(children: [
      Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'TOP ',
            style: satoshi700S32.copyWith(
              fontSize: 60,
              color: whiteColor,
            ),
          ),
          Text(
            'CREATORS',
            style: satoshi700S32.copyWith(
              fontSize: 60,
              color: primaryColor,
            ),
          ),
        ],
      ).fadeInAndMoveFromBottom(),
      verticalSpacer32,
      LayoutBuilder(builder: (_, constraint) {
        final width = (constraint.maxWidth - (space24 * 2)) / 3;
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              HomeTopCreatorsItem(
                width: width,
                owner: 'Leah Newman',
                ownerImage: image1,
                image1: image2,
                image2: image3,
                image3: image4,
                image4: image13,
              ),
              horizontalSpacer24,
              HomeTopCreatorsItem(
                  width: width,
                  owner: 'Alonzo Chambers',
                  ownerImage: image5,
                  image1: image6,
                  image2: image7,
                  image3: image8,
                  image4: image14),
              horizontalSpacer24,
              HomeTopCreatorsItem(
                width: width,
                owner: 'Chambers Lorem',
                ownerImage: image9,
                image1: image10,
                image2: image11,
                image3: image12,
                image4: image15,
              ),
            ],
          ),
        );
      })
    ]);
  }

  buildBodyItem4() {
    return Column(children: [
      Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'HOT ',
            style: satoshi700S32.copyWith(
              fontSize: 60,
              color: whiteColor,
            ),
          ),
          Text(
            'BIDS',
            style: satoshi700S32.copyWith(
              fontSize: 60,
              color: primaryColor,
            ),
          ),
        ],
      ).fadeInAndMoveFromBottom(),
      verticalSpacer32,
      LayoutBuilder(builder: (_, constraint) {
        final width = (constraint.maxWidth - (space24 * 2)) / 3;
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              HomeHotBidItem(
                width: width,
                owner: 'Mindy Brock',
                ownerImage: image1,
                image: image2,
                nftName: 'Graceful Gazelle',
                hours: 3,
                minutes: 45,
                seconds: 50,
                bidPrice: '3.45 ETH',
              ),
              horizontalSpacer24,
              HomeHotBidItem(
                width: width,
                owner: 'Leah Newman',
                ownerImage: image3,
                image: image4,
                nftName: 'Volcanos',
                hours: 1,
                minutes: 30,
                seconds: 30,
                bidPrice: '3.45 ETH',
              ),
              horizontalSpacer24,
              HomeHotBidItem(
                width: width,
                owner: 'Alonzo Chambers',
                ownerImage: image5,
                image: image6,
                nftName: 'Clash Of The Cube',
                hours: 5,
                minutes: 4,
                seconds: 40,
                bidPrice: '3.45 ETH',
              ),
            ],
          ),
        );
      })
    ]);
  }

  buildBodyItem3() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'NFTS ',
                    style: satoshi700S32.copyWith(
                      fontSize: 60,
                      color: primaryColor,
                    ),
                  ),
                  Text(
                    'COLLECTIONS',
                    style: satoshi700S32.copyWith(
                      fontSize: 60,
                      color: whiteColor,
                    ),
                  ),
                ],
              ).fadeInAndMoveFromBottom(),
              verticalSpacer16,
              SizedBox(
                width: 800,
                child: Text(
                  '$loremIspidiumLong $loremIspidiumLong',
                  style: satoshi500S14.copyWith(
                    fontSize: 18,
                    color: lightBlack,
                  ),
                ),
              ).fadeInAndMoveFromBottom(),
              verticalSpacer32,
            ],
          ),
        ),
        Expanded(
          child: LayoutBuilder(builder: (context, constraint) {
            final width = constraint.maxWidth * .8;
            return Align(
              alignment: Alignment.center,
              child: Container(
                padding: const EdgeInsets.all(space12),
                width: width,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: stripGradient,
                  ),
                  border: Border.all(
                    color: whiteColor.withOpacity(.4),
                  ),
                ),
                child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      HomeTabItem(text: 'All'),
                      HomeTabItem(text: 'New'),
                      HomeTabItem(text: 'Music'),
                      HomeTabItem(text: 'Video'),
                      HomeTabItem(text: 'Collection'),
                    ]),
              ),
            );
          }),
        )
      ],
    );
  }

  buildBodyItem2() {
    return Transform.scale(
      scale: 1.05,
      child: const Stack(
        children: [
          BodyItem2Strip(isNegetive: false),
          BodyItem2Strip(isNegetive: true),
        ],
      ),
    );
  }

  buildBodyItem1() {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 3,
          child: BodyItem1Child1(),
        ),
        Expanded(
          flex: 2,
          child: BodyItem1Child2(),
        ),
      ],
    );
  }

  buildAppBar() {
    const space = SizedBox(width: space16 * 3);

    return Row(
      children: [
        Image.asset(
          logo,
          width: 70,
          height: 70,
          color: primaryColor,
        ).fadeInAndMoveFromBottom(),
        const Spacer(flex: 1),
        Expanded(
          flex: 2,
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppBarItem(text: 'Home'),
              space,
              AppBarItem(text: 'About'),
              space,
              AppBarItem(text: 'Artwork'),
              space,
              AppBarItem(text: 'Collection'),
              space,
              AppBarItem(text: 'Artist'),
            ],
          ).fadeInAndMoveFromBottom(),
        ),
        Expanded(
          flex: 1,
          child: Center(
            child: AppBtn(
              onPressed: () {},
              semanticLabel: 'login button',
              text: 'Login',
            ),
          ).fadeInAndMoveFromBottom(),
        )
      ],
    );
  }

  buildCircle1() {
    final width = context.screenWidth / 2;
    final position = context.screenWidth / 5;
    return Positioned(
      top: -position,
      left: -position,
      child: Container(
        width: width,
        height: width,
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            colors: circleGradient,
          ),
          shape: BoxShape.circle,
        ),
      ).fadeIn(),
    );
  }

  buildCircle2() {
    final width = context.screenWidth / 3;

    return GetX<HomeController>(builder: (controller) {
      final position = controller.mouseRegion;
      return AnimatedPositioned(
        duration: fastDuration,
        left: position.dx - width / 2,
        top: position.dy - width / 2,
        child: Opacity(
          opacity: 0.9,
          child: Container(
            width: width,
            height: width,
            decoration: const BoxDecoration(
              gradient: RadialGradient(
                colors: circleGradient,
              ),
              shape: BoxShape.circle,
            ),
          ),
        ).fadeIn(),
      );
    });
  }

  buildCircle3() {
    final width = context.screenWidth;
    return Center(
      child: Opacity(
        opacity: .5,
        child: Container(
          width: width,
          height: width,
          decoration: const BoxDecoration(
            gradient: RadialGradient(
              colors: circleGradient,
            ),
            shape: BoxShape.circle,
          ),
        ).fadeIn(),
      ),
    );
  }
}
