import 'package:online_shopping_grocery/utils.dart/colors.dart';

import '../../router/routes_names.dart';
import '../../utils.dart/file_collection.dart';

class DrawerScreen extends StatelessWidget {
  // final UserDetail? userdata = UserData.geUserData();
  const DrawerScreen({super.key});

  // Future<void> appPlayStoreLauncher(Uri url) async {
  //   if (!await launchUrl(
  //     url,
  //     mode: LaunchMode.externalApplication,
  //   )) {
  //     throw Exception('Could not launch $url');
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
        color: textColor, fontSize: 15.0, fontWeight: FontWeight.w400);
    return Container(
      color: primaryRed,
      child: SafeArea(
        child: Drawer(
          backgroundColor: whiteBackgroundColor,
          child: Container(
            decoration: const BoxDecoration(),
            child: ListView(padding: const EdgeInsets.all(0), children: [
              //DrawerHeader

              InkWell(
                onTap: () {
                  context.pop();
                  context.pushNamed(RouteNames.logInScreen);
                },
                child: Container(
                  color: primaryRed,
                  child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 20),
                        CircleAvatar(
                            radius: 40,
                            backgroundImage:
                                AssetImage('assets/images/Finland.png')),
                        SizedBox(height: 20),
                        Text('Sign in/ Sign up',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: whiteBackgroundColor)),
                        SizedBox(height: 30),
                      ]),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Shop by Category',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400)),
                    const SizedBox(height: 15),
                    const Text('Dookan12Club', style: textStyle),
                    const SizedBox(height: 15),
                    InkWell(
                        onTap: () {
                          context.pop();
                          context.pushNamed(RouteNames.newArrivals);
                        },
                        child: const Text('New Arrivals', style: textStyle)),
                    const SizedBox(height: 15),
                    const Text('Offers', style: textStyle),
                    const SizedBox(height: 15),
                    const Text('Flour', style: textStyle),
                    const SizedBox(height: 15),
                    const Text('Rice', style: textStyle),
                    const SizedBox(height: 15),
                    const Text('Lentils & Whole Grains', style: textStyle),
                    const SizedBox(height: 15),
                    const Text('Grains & Rice Derivatives', style: textStyle),
                    const SizedBox(height: 15),
                    const Text('Gluten Free', style: textStyle),
                    const SizedBox(height: 15),
                    const Text('Spices & Herbs', style: textStyle),
                    const SizedBox(height: 15),
                    const Text('Pickles, Sauces & Pastes', style: textStyle),
                    const SizedBox(height: 15),
                    const Text('Cooking Aid', style: textStyle),
                    const SizedBox(height: 15),
                    const Text('Dry Fruits & Nuts', style: textStyle),
                    const SizedBox(height: 15),
                    const Text('Snacks', style: textStyle),
                    const SizedBox(height: 15),
                    const Text('Heat & Eat', style: textStyle),
                    const SizedBox(height: 15),
                    const Text('Ready-Made Mixes', style: textStyle),
                    const SizedBox(height: 15),
                    const Text('Beverages', style: textStyle),
                    const SizedBox(height: 15),
                    const Text('Personal & Home Care', style: textStyle),
                    const SizedBox(height: 15),
                    const Text('Quick Links',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400)),
                    const SizedBox(height: 15),
                    const Text('Rate Us', style: textStyle),
                    const SizedBox(height: 15),
                    InkWell(
                        onTap: () {
                          context.pushNamed(RouteNames.cart);
                        },
                        child: const Text('Cart', style: textStyle)),
                    const SizedBox(height: 15),
                    InkWell(
                        onTap: () {
                          context.pushNamed(RouteNames.wishlist);
                        },
                        child: const Text('Wishlist', style: textStyle)),
                    const SizedBox(height: 15),
                    const Text('Track My Order', style: textStyle),
                    const SizedBox(height: 15),
                    const Text('Coupon Codes', style: textStyle),
                    const SizedBox(height: 15),
                    InkWell(
                        onTap: () {
                          context.pushNamed(RouteNames.notification);
                        },
                        child: const Text('Notifications', style: textStyle)),
                    const SizedBox(height: 15),
                    const Text('About us', style: textStyle),
                    const SizedBox(height: 15),
                    InkWell(
                      onTap: (){
                         context.pushNamed(RouteNames.contactUs);
                      },
                      child: const Text('Contact us', style: textStyle)),
                    const SizedBox(height: 15),
                    const Text('FAQ', style: textStyle),
                    const SizedBox(height: 15),
                    const Text('Privacy Policy', style: textStyle),
                    const SizedBox(height: 15),
                    const Text('Refund Policy', style: textStyle),
                    const SizedBox(height: 15),
                    const Text('Shipping Policy', style: textStyle),
                    const SizedBox(height: 15),
                    const Text('Cashback Policy', style: textStyle),
                    const SizedBox(height: 15),
                    const Text('Switch Shipping Country', style: textStyle),
                  ],
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
