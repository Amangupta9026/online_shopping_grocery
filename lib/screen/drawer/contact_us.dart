import 'package:online_shopping_grocery/utils.dart/file_collection.dart';
import 'package:online_shopping_grocery/widget.dart/header_appbar.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyBackgroundColor,
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: HeaderWidget(
            text1: 'Get in Touch',
            leading1: Icons.arrow_back,
          )),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(children: [
          Container(
            color: primaryRed,
            child: Column(
              children: [
                Image.asset(
                  'assets/images/austria.png',
                  height: 50,
                  width: 50,
                ),
                const SizedBox(height: 5),
                const Text(
                  'App Name',
                  style: TextStyle(
                      fontSize: 20,
                      color: whiteBackgroundColor,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.only(left: 50.0, bottom: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.phone,
                            color: whiteBackgroundColor,
                          ),
                          SizedBox(width: 10),
                          Text(
                            '+4207734604345',
                            style: TextStyle(
                                fontSize: 20,
                                color: whiteBackgroundColor,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.email,
                            color: whiteBackgroundColor,
                          ),
                          SizedBox(width: 10),
                          Text(
                            'support@dookan.com',
                            style: TextStyle(
                                fontSize: 20,
                                color: whiteBackgroundColor,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.location_on,
                            color: whiteBackgroundColor,
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              'Sokolska trida Ostrava - 702000',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: whiteBackgroundColor,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const Text(
                  'Have any questions?',
                  style: TextStyle(
                      fontSize: 20,
                      color: textColor,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Feel that tingling in your fingertips? That’s the magnetic urge to contact us. We are just a tap away.',
                  style: TextStyle(
                      fontSize: 18,
                      color: textColor,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 5),
                    ],
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Reach Us',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: textColor)),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(
                            Icons.email,
                            color: textColor,
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Mail us',
                            style: TextStyle(
                                fontSize: 18,
                                color: textColor,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(
                            Icons.phone,
                            color: textColor,
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Give us a call',
                            style: TextStyle(
                                fontSize: 18,
                                color: textColor,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 5),
                    ],
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Find us on',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: textColor)),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(
                            Icons.email,
                            color: textColor,
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Instagram',
                            style: TextStyle(
                                fontSize: 18,
                                color: textColor,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(
                            Icons.facebook,
                            color: textColor,
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Facebook',
                            style: TextStyle(
                                fontSize: 18,
                                color: textColor,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]),
      )),
    );
  }
}
