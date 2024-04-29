import 'package:online_shopping_grocery/router/routes_names.dart';
import 'package:online_shopping_grocery/utils.dart/file_collection.dart';

class NewArrivals extends StatelessWidget {
  const NewArrivals({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteBackgroundColor,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: primaryRed,
        leading: IconButton(
            onPressed: () {
              context.pop();
            },
            icon: const Icon(Icons.arrow_back,
                color: whiteBackgroundColor, size: 20)),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.share, color: whiteBackgroundColor)),
          const SizedBox(height: 20),
          IconButton(
              onPressed: () {},
              icon:
                  const Icon(Icons.shopping_cart, color: whiteBackgroundColor))
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: GridView.count(
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
                    child: Column(
                      children: [
                        Visibility(
                          visible: true,
                          // !refWatch.value!.setVisiblity,
                          child: InkWell(
                            onTap: () {
                              // refRead.setVisible(index);
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
                                    color: whiteBackgroundColor, size: 15),
                              ),
                            ),
                          ),
                        ),
                        // Visibility(
                        //     visible: true,
                        //     // refWatch.value!.setVisiblity,
                        //     child: Container(
                        //         padding: const EdgeInsets.all(8),
                        //         decoration: const BoxDecoration(
                        //             color: whiteBackgroundColor,
                        //             boxShadow: [
                        //               BoxShadow(
                        //                 color: Colors.grey,
                        //                 blurRadius: 5.0,
                        //               ),
                        //             ]),
                        //         child: Row(
                        //           mainAxisAlignment:
                        //               MainAxisAlignment.spaceBetween,
                        //           children: [
                        //             InkWell(
                        //               onTap: () {
                        //                 // refRead.substract();
                        //               },
                        //               child: const Icon(
                        //                 // (refWatch.value?.initialAdd)! >=
                        //                 //         2
                        //                 //     ? Icons.cancel
                        //                 // :
                        //                 Icons.delete,
                        //                 color: primaryRed,
                        //               ),
                        //             ),
                        //             const Text(
                        //                 // refWatch.value?.initialAdd
                        //                 //         .toInt()
                        //                 //         .toString() ??
                        //                 '1',
                        //                 textAlign: TextAlign.center,
                        //                 style: TextStyle(
                        //                     fontSize: 16,
                        //                     color: textColor,
                        //                     fontWeight: FontWeight.w500)),
                        //             InkWell(
                        //               onTap: () {
                        //                 // refRead.add();
                        //               },
                        //               child: const Icon(
                        //                 Icons.add_circle,
                        //                 color: primaryRed,
                        //               ),
                        //             ),
                        //           ],
                        //         ))),
                        const SizedBox(height: 30),
                        Image.asset(
                          'assets/images/Norway.png',
                          height: 70,
                          width: MediaQuery.of(context).size.width * 0.48,
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.1),
                        const Expanded(
                          child: Column(
                            children: [
                              Text(
                                  'Anmol Sona Masoori Boiled Rice (Bundle of 3 x 10kg)',
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: textColor,
                                      fontWeight: FontWeight.w500)),
                              SizedBox(height: 10),
                              Text('EUR60.99',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: textColor,
                                      fontWeight: FontWeight.w900)),
                            ],
                          ),
                        ),

                        const SizedBox(height: 5),
                      ],
                    ),
                  ),
                );
              })),
        ),
      ),
    );
  }
}
