import 'package:online_shopping_grocery/utils.dart/file_collection.dart';
import 'package:online_shopping_grocery/widget.dart/header_appbar.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyBackgroundColor,
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: HeaderWidget(
            text1: 'Notifications',
            leading1: Icons.arrow_back,
          )),
      body: SafeArea(
          child: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(15, 10, 15, 40),
        child: Column(children: [
          ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: whiteBackgroundColor,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                blurRadius: 3.0,
                                offset: const Offset(0.0, 2.0)),
                          ]),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/image3.png',
                            width: double.infinity,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(height: 15),
                          const Row(
                            children: [
                              Icon(
                                Icons.notifications,
                                color: Colors.amber,
                                size: 30,
                              ),
                              SizedBox(width: 5),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Back in stock',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                          color: textColor),
                                    ),
                                    SizedBox(height: 2),
                                    Text(
                                      "Your fav Haldiram's products are back in stock, just at Rs 10",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                          color: greyColor),
                                    )
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 15)
                  ],
                );
              }),
        ]),
      )),
    );
  }
}
