import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:online_shopping_grocery/riverpod/home_notifier.dart';
import 'package:online_shopping_grocery/router/routes_names.dart';
import 'package:online_shopping_grocery/screen/drawer/drawer.dart';
import 'package:online_shopping_grocery/utils.dart/colors.dart';
import 'package:online_shopping_grocery/utils.dart/file_collection.dart';

class Home extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldStateKey = GlobalKey<ScaffoldState>();
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteBackgroundColor,
      key: scaffoldStateKey,
      drawer: const DrawerScreen(),
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(160),
          child: Column(
            children: [
              AppBar(
                centerTitle: true,
                elevation: 0,
                backgroundColor: primaryRed,
                leading: IconButton(
                    onPressed: () {
                      scaffoldStateKey.currentState?.openDrawer();
                    },
                    icon: const Icon(Icons.menu,
                        color: whiteBackgroundColor, size: 20)),
                title: const Text('App name',
                    style: TextStyle(
                        color: whiteBackgroundColor,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold)),
                actions: [
                  IconButton(
                      onPressed: () {
                        context.pushNamed(RouteNames.cart);
                      },
                      icon: const Icon(Icons.shopping_cart,
                          color: whiteBackgroundColor))
                ],
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(15, 0, 10, 10),
                color: primaryRed,
                child: Column(
                  children: [
                    const Row(
                      children: [
                        Icon(
                          Icons.pin_drop,
                          size: 18,
                          color: whiteBackgroundColor,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Deliver to',
                          style: TextStyle(
                              fontSize: 16, color: whiteBackgroundColor),
                        ),
                        SizedBox(width: 10),
                        Row(
                          children: [
                            Text('Austria',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: whiteBackgroundColor,
                                    fontWeight: FontWeight.w700)),
                            SizedBox(width: 5),
                            Icon(
                              Icons.expand_more,
                              size: 20,
                              color: whiteBackgroundColor,
                            )
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Container(
                      padding: const EdgeInsets.all(10),
                      color: whiteBackgroundColor,
                      child: const Row(children: [
                        Icon(Icons.search),
                        SizedBox(width: 5),
                        Expanded(
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                              Text('What are you looking for?',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500)),
                              Icon(Icons.mic),
                            ]))
                      ]),
                    )
                  ],
                ),
              )
            ],
          )),
      floatingActionButton: Container(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: primaryRed,
        ),
        padding: const EdgeInsets.all(15),
        child: const Icon(Icons.message, color: whiteBackgroundColor, size: 28),
      ),
      body: SafeArea(child: Consumer(builder: (context, ref, child) {
        final refWatch = ref.watch(homePageNotifierProvider);
        final refRead = ref.watch(homePageNotifierProvider.notifier);
        return SingleChildScrollView(
          child: Column(
            children: [
              CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    viewportFraction: 1,
                    enlargeCenterPage: false,
                    onPageChanged: (index, reason) {
                      refRead.carosuelSlider(index);
                    },
                  ),
                  items: refWatch.value?.imgList),
              DotsIndicator(
                dotsCount: refWatch.value?.imgList.length ?? 0,
                position: refWatch.value?.currentIndex ?? 0,
              ),
              const SizedBox(height: 30),
              Column(
                children: [
                  const Text('Featured Collections',
                      style: TextStyle(
                          fontSize: 20,
                          color: textColor,
                          fontWeight: FontWeight.w900)),
                  const SizedBox(height: 30),
                  GridView.count(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      crossAxisCount: 2,
                      padding: const EdgeInsets.all(0),
                      crossAxisSpacing: 20.0,
                      mainAxisSpacing: 2.0,
                      children: List.generate(10, (index) {
                        return InkWell(
                          onTap: () {
                            context.push(RouteNames.featuredCollectionDetails);
                          },
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/Greece.png',
                                height: 70,
                                width: MediaQuery.of(context).size.width * 0.5,
                              ),
                              const SizedBox(height: 20),
                              Container(
                                padding:
                                    const EdgeInsets.fromLTRB(25, 5, 25, 5),
                                decoration: const BoxDecoration(
                                  color: primaryRed,
                                ),
                                child: const Text('Bundle Offers',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: whiteBackgroundColor,
                                        fontWeight: FontWeight.w500)),
                              ),
                            ],
                          ),
                        );
                      })),
                  const Divider(color: Colors.grey, height: 0),
                  const Text('Featured Products',
                      style: TextStyle(
                          fontSize: 20,
                          color: textColor,
                          fontWeight: FontWeight.w900)),
                  const Divider(color: Colors.grey),
                  GridView.count(
                      childAspectRatio: 0.55,
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      crossAxisCount: 2,
                      padding: const EdgeInsets.all(0),
                      crossAxisSpacing: 0.0,
                      mainAxisSpacing: 2.0,
                      children: List.generate(10, (index) {
                        return InkWell(
                          onTap: () {
                            context.push(RouteNames.collectionDetails);
                          },
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                            decoration: const BoxDecoration(
                              border: Border(
                                right: BorderSide(
                                  color: Colors.grey,
                                  width: 1.0,
                                ),
                                bottom: BorderSide(
                                  color: Colors.grey,
                                  width: 1.0,
                                ),
                              ),
                            ),
                            child: Column(
                              children: [
                                Visibility(
                                  visible: !refWatch.value!.setVisiblity,
                                  child: InkWell(
                                    onTap: () {
                                      refRead.setVisible(index);
                                    },
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: primaryRed,
                                        ),
                                        padding: const EdgeInsets.all(6),
                                        child: const Icon(Icons.add,
                                            color: whiteBackgroundColor,
                                            size: 15),
                                      ),
                                    ),
                                  ),
                                ),
                                Visibility(
                                    visible: refWatch.value!.setVisiblity,
                                    child: Container(
                                        padding: const EdgeInsets.all(8),
                                        decoration: const BoxDecoration(
                                            color: whiteBackgroundColor,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey,
                                                blurRadius: 5.0,
                                              ),
                                            ]),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            InkWell(
                                              onTap: () {
                                                refRead.substract();
                                              },
                                              child: Icon(
                                                (refWatch.value?.initialAdd)! >=
                                                        2
                                                    ? Icons.cancel
                                                    : Icons.delete,
                                                color: primaryRed,
                                              ),
                                            ),
                                            Text(
                                                refWatch.value?.initialAdd
                                                        .toInt()
                                                        .toString() ??
                                                    '',
                                                textAlign: TextAlign.center,
                                                style: const TextStyle(
                                                    fontSize: 16,
                                                    color: textColor,
                                                    fontWeight:
                                                        FontWeight.w500)),
                                            InkWell(
                                              onTap: () {
                                                refRead.add();
                                              },
                                              child: const Icon(
                                                Icons.add_circle,
                                                color: primaryRed,
                                              ),
                                            ),
                                          ],
                                        ))),
                                const SizedBox(height: 30),
                                Image.asset(
                                  'assets/images/Greece.png',
                                  height: 70,
                                  width:
                                      MediaQuery.of(context).size.width * 0.48,
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.1),
                                const Expanded(
                                  child: Text(
                                      'Anmol Sona Masoori Boiled Rice (Bundle of 3 x 10kg)',
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: textColor,
                                          fontWeight: FontWeight.w500)),
                                ),
                                const SizedBox(height: 10),
                                const Text('EUR60.99',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: textColor,
                                        fontWeight: FontWeight.w900)),
                                const SizedBox(height: 5),
                                const Text('EUR41.99',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: primaryRed,
                                        fontWeight: FontWeight.w900)),
                                const SizedBox(height: 5),
                              ],
                            ),
                          ),
                        );
                      })),
                ],
              ),
              const SizedBox(height: 60),
            ],
          ),
        );
      })),
    );
  }
}
