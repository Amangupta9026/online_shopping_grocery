import 'package:online_shopping_grocery/router/routes_names.dart';
import 'package:online_shopping_grocery/utils.dart/file_collection.dart';

class FeaturedCollectionDetails extends StatelessWidget {
  const FeaturedCollectionDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteBackgroundColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: Column(
          children: [
            AppBar(
              centerTitle: true,
              elevation: 0,
              backgroundColor: primaryRed,
              leading: IconButton(
                  onPressed: () {
                    context.pop();
                  },
                  icon: const Icon(Icons.arrow_back,
                      color: whiteBackgroundColor, size: 20)),
              title: const Text('Diya (Worship)',
                  style: TextStyle(
                      color: whiteBackgroundColor,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold)),
              actions: [
                IconButton(
                    onPressed: () {},
                    icon:
                        const Icon(Icons.search, color: whiteBackgroundColor)),
                const SizedBox(height: 20),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.shopping_cart,
                        color: whiteBackgroundColor))
              ],
            ),
            Row(children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(6),
                  margin: const EdgeInsets.only(top: 4),
                  decoration: const BoxDecoration(
                    border: Border(
                      left: BorderSide(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                      bottom: BorderSide(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                      top: BorderSide(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                    ),
                  ),
                  child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.sort, color: textColor),
                        SizedBox(width: 10),
                        Text(
                          'SORT',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ]),
                ),
              ),
              Expanded(
                  child: Container(
                      margin: const EdgeInsets.only(top: 4),
                      padding: const EdgeInsets.all(6),
                      decoration: const BoxDecoration(
                        border: Border(
                          left: BorderSide(
                            color: Colors.grey,
                            width: 1.0,
                          ),
                          bottom: BorderSide(
                            color: Colors.grey,
                            width: 1.0,
                          ),
                          top: BorderSide(
                            color: Colors.grey,
                            width: 1.0,
                          ),
                        ),
                      ),
                      child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.filter_alt, color: textColor),
                            SizedBox(width: 10),
                            Text(
                              'FILTER',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            )
                          ])))
            ]),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              GridView.count(
                  childAspectRatio: 0.65,
                  physics: const ClampingScrollPhysics(),
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
                            Align(
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
                            const SizedBox(height: 40),
                            Image.asset(
                              'assets/images/Denmark.jpeg',
                              height: 70,
                              width: MediaQuery.of(context).size.width * 0.5,
                            ),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.04),
                            const Text('Plain Diwali/Deepwali (Pack of 6)',
                                maxLines: 2,
                                style: TextStyle(
                                    fontSize: 16,
                                    color: textColor,
                                    fontWeight: FontWeight.w500)),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.03),
                            const Text('EUR60.99',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 16,
                                    color: textColor,
                                    fontWeight: FontWeight.w900)),
                            const SizedBox(height: 5),
                          ],
                        ),
                      ),
                    );
                  })),
            ],
          ),
        ),
      ),
    );
  }
}
