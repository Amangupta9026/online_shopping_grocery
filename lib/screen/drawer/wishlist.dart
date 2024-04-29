import 'package:online_shopping_grocery/router/routes_names.dart';
import 'package:online_shopping_grocery/utils.dart/file_collection.dart';
import 'package:online_shopping_grocery/widget.dart/header_appbar.dart';

class Wishlist extends StatelessWidget {
  const Wishlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(60),
            child: HeaderWidget(
              text1: 'Wishlist',
              leading1: Icons.arrow_back,
              actions1: Icons.shopping_cart,
              onActionPressed: () {},
            )),
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.amber.shade400,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.favorite,
                      size: 50,
                      color: primaryRed,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                const Text('Your Wishlist will live here',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                        color: textColor)),
                const SizedBox(height: 20),
                const Text(
                    'Explore variety of Products and add your favorite product to Wishlist',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                        color: textColor)),
                const SizedBox(height: 50),
                InkWell(
                  onTap: () {
                    context.pushNamed(RouteNames.home);
                  },
                  child: const Text('Start shopping, now!',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                          color: primaryRed)),
                )
              ],
            ),
          ],
        )));
  }
}
