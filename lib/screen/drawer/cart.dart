import 'package:online_shopping_grocery/utils.dart/file_collection.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyBackgroundColor,
      bottomSheet: Container(
        color: whiteBackgroundColor,
        child: Padding(
          padding:
              const EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 20),
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: primaryRed, borderRadius: BorderRadius.circular(10)),
            child: const Text('CHECKOUT',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: whiteBackgroundColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w700)),
          ),
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: primaryRed,
        leading: IconButton(
            onPressed: () {
              context.pop();
            },
            icon: const Icon(Icons.arrow_back,
                color: whiteBackgroundColor, size: 20)),
        title: const Text('My Cart',
            style: TextStyle(
                color: whiteBackgroundColor,
                fontSize: 20,
                fontWeight: FontWeight.w500)),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
              color: whiteBackgroundColor,
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.grey[200], shape: BoxShape.circle),
                          child: Icon(Icons.shopping_cart,
                              color: Colors.grey[400], size: 40)),
                      const SizedBox(width: 10),
                      const Expanded(
                        child: Text(
                            'Purchase the product you reserved during the session',
                            style: TextStyle(
                                color: textColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w700)),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: primaryRed,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Text('GO TO CART',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: whiteBackgroundColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w700)),
                  ),
                ],
              ),
            ),

            //Cart Item
            const Padding(
              padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Cart Item:',
                      style: TextStyle(
                          color: textColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500)),
                  Text('TOTAL: 0.00',
                      style: TextStyle(
                          color: textColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w700)),
                ],
              ),
            ),

            Container(
              padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
              color: whiteBackgroundColor,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('assets/images/Finland.png',
                          width: 60, height: 40),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          children: [
                            const Text('Anmol Sona Masoori Rice 10kg x 1',
                                style: TextStyle(
                                    color: textColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700)),
                            const SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Row(
                                  children: [
                                    Text('EUR74.99',
                                        style: TextStyle(
                                            color: textColor,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400)),
                                    SizedBox(width: 5),
                                    Text('EUR60.99',
                                        style: TextStyle(
                                            color: textColor,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700)),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: primaryRed),
                                      padding: const EdgeInsets.all(5),
                                      child: const Icon(Icons.remove,
                                          color: whiteBackgroundColor,
                                          size: 20),
                                    ),
                                    const SizedBox(width: 10),
                                    const Text('1',
                                        style: TextStyle(
                                            color: textColor,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700)),
                                    const SizedBox(width: 10),
                                    Container(
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: primaryRed),
                                      padding: const EdgeInsets.all(5),
                                      child: const Icon(Icons.add,
                                          color: whiteBackgroundColor,
                                          size: 20),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            const Row(
                              children: [
                                Icon(Icons.sell, color: primaryRed),
                                SizedBox(width: 5),
                                Text('EUR60.99',
                                    style: TextStyle(
                                        color: primaryRed,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700)),
                              ],
                            ),
                            const SizedBox(height: 20),
                          ],
                        ),
                      ),
                      Icon(Icons.more_vert, color: Colors.grey[400], size: 20)
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              decoration: const BoxDecoration(color: whiteBackgroundColor),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.grey[200], shape: BoxShape.circle),
                          child: const Icon(Icons.favorite,
                              color: primaryRed, size: 20)),
                      const SizedBox(width: 5),
                      const Text('Add more from Wishlist',
                          style: TextStyle(
                              color: textColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w700)),
                    ],
                  ),
                  Icon(Icons.arrow_forward_ios,
                      color: Colors.grey[400], size: 16)
                ],
              ),
            ),

            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              decoration: const BoxDecoration(color: whiteBackgroundColor),
              child: TextFormField(
                maxLines: 1,
                // controller: controller,
                cursorColor: primaryRed,
                style: const TextStyle(
                    fontSize: 16,
                    color: textColor,
                    fontWeight: FontWeight.w500),
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    isDense: true,
                    hintText: 'Any instruction? (Optional)',
                    hintStyle: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(color: Colors.grey),
                    border: InputBorder.none),
              ),
            ),

            const Padding(
              padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
              child: Text('Price Details:',
                  style: TextStyle(
                      color: textColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500)),
            ),

            Container(
              padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
              color: whiteBackgroundColor,
              child: const Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Cart Total',
                          style: TextStyle(
                              color: textColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w400)),
                      Text('EUR74.99',
                          style: TextStyle(
                              color: textColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w400)),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Savings',
                          style: TextStyle(
                              color: textColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w400)),
                      Text('-EUR14.00',
                          style: TextStyle(
                              color: primaryRed,
                              fontSize: 16,
                              fontWeight: FontWeight.w400)),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Final Price',
                          style: TextStyle(
                              color: textColor,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                      Text('EUR74.99',
                          style: TextStyle(
                              color: textColor,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 60),
          ],
        ),
      )),
    );
  }
}
