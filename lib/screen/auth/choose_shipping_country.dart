import 'package:flutter/material.dart';
import 'package:online_shopping_grocery/router/routes_names.dart';
import 'package:online_shopping_grocery/utils.dart/colors.dart';
import 'package:online_shopping_grocery/utils.dart/file_collection.dart';

class ChooseShippingCountry extends StatelessWidget {
  const ChooseShippingCountry({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryRed,
      child: SafeArea(
          child: Scaffold(
              backgroundColor: whiteBackgroundColor,
              body: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(0, 40, 0, 70),
                child: Column(children: [
                  Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(color: primaryRed),
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
                      child: Text(
                        'Choose Shipping Country',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 22,
                            color: whiteBackgroundColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 70),
                    child: Column(
                      children: [
                        countryData(
                            context, 'assets/images/austria.png', 'Austria'),
                        countryData(
                            context, 'assets/images/Belgium.png', 'Belgium'),
                        countryData(
                            context, 'assets/images/Czech.jpeg', 'Czech'),
                        countryData(
                            context, 'assets/images/Denmark.jpeg', 'Denmark'),
                        countryData(
                            context, 'assets/images/Estonia.png', 'Estonia'),
                        countryData(
                            context, 'assets/images/Finland.png', 'Finland'),
                        countryData(
                            context, 'assets/images/France.png', 'France'),
                        countryData(
                            context, 'assets/images/Germany.png', 'Germany'),
                        countryData(
                            context, 'assets/images/Greece.png', 'Greece'),
                        countryData(
                            context, 'assets/images/Hungry.png', 'Hungry'),
                        countryData(
                            context, 'assets/images/Iceland.png', 'Iceland'),
                        countryData(
                            context, 'assets/images/Italy.png', 'Italy'),
                        countryData(
                            context, 'assets/images/Latvia.png', 'Latvia'),
                        countryData(context, 'assets/images/Lithuania.png',
                            'Lithuania'),
                        countryData(context, 'assets/images/Luxembourg.png',
                            'Luxembourg'),
                        countryData(context, 'assets/images/Netherlands.png',
                            'Netherlands'),
                        countryData(
                            context, 'assets/images/Norway.png', 'Norway'),
                        countryData(
                            context, 'assets/images/Poland.png', 'Poland'),
                        countryData(
                            context, 'assets/images/Portugal.png', 'Portugal'),
                        countryData(
                            context, 'assets/images/Spain.png', 'Spain'),
                        countryData(
                            context, 'assets/images/Sweden.png', 'Sweden'),
                        countryData(context, 'assets/images/Switzerland.png',
                            'Switzerland'),
                      ],
                    ),
                  )
                ]),
              ))),
    );
  }

  Widget countryData(BuildContext context, String image, String text) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            context.pushNamed(RouteNames.home);
          },
          child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 2, color: greyBackgroundColor)),
              child: Row(
                children: [
                  Image.asset(
                    image.toString(),
                    width: 30,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    text,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              )),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
