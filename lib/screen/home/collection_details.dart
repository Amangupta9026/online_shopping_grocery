import 'package:online_shopping_grocery/utils.dart/file_collection.dart';

class CollectionDetails extends StatelessWidget {
  const CollectionDetails({super.key});

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
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                  alignment: Alignment.topRight,
                  child: Container(
                      margin: const EdgeInsets.all(15),
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5.0,
                        ),
                      ], color: whiteBackgroundColor, shape: BoxShape.circle),
                      child: const Icon(Icons.favorite))),
              Image.asset('assets/images/austria.png', width: double.infinity),
              const SizedBox(height: 50),
              const Center(
                child: Text('Laxmi Puja Kit (1pc)',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 16,
                        color: textColor,
                        fontWeight: FontWeight.w900)),
              ),
              const SizedBox(height: 5),
              const Center(
                child: Text('EUR60.99',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 16,
                        color: textColor,
                        fontWeight: FontWeight.w900)),
              ),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Text('Write a review',
                    style: TextStyle(
                        fontSize: 16,
                        color: primaryRed,
                        fontWeight: FontWeight.w900)),
              ),
              const Divider(),
              const SizedBox(height: 20),
              Center(
                  child: Container(
                      padding: const EdgeInsets.fromLTRB(70, 13, 70, 13),
                      decoration: const BoxDecoration(color: primaryRed),
                      child: const Text('Add',
                          style: TextStyle(
                              fontSize: 18,
                              color: whiteBackgroundColor,
                              fontWeight: FontWeight.w900)))),
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 40, 10, 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Description',
                        style: TextStyle(
                            fontSize: 18,
                            color: textColor,
                            fontWeight: FontWeight.w900)),
                    const SizedBox(height: 20),
                    const Text(
                        'Description is the fiction-writing mode for transmitting a mental image of the particulars of a story. Together with dialogue, narration, exposition, and summarization, description is one of the most widely recognized of the fiction-writing modes. As stated in Writing from A to Z, edited by Kirk Polking, description is more than the amassing of details; it is bringing something to life by carefully choosing and arranging words and phrases to produce the desired effect.[5] The most appropriate and effective techniques for presenting description are a matter of ongoing discussion among writers and writing coaches.',
                        style: TextStyle(
                            fontSize: 16,
                            color: textColor,
                            fontWeight: FontWeight.w900)),
                    const SizedBox(height: 20),
                    const Row(
                      children: [
                        Text('Nutrients:',
                            style: TextStyle(
                                fontSize: 18,
                                color: textColor,
                                fontWeight: FontWeight.w900)),
                        SizedBox(width: 20),
                        Text('NA',
                            style: TextStyle(
                                fontSize: 18,
                                color: textColor,
                                fontWeight: FontWeight.w500)),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Row(children: [
                      Text('Ingredients:',
                          style: TextStyle(
                              fontSize: 18,
                              color: textColor,
                              fontWeight: FontWeight.w900)),
                      SizedBox(width: 20),
                      Text('NA',
                          style: TextStyle(
                              fontSize: 18,
                              color: textColor,
                              fontWeight: FontWeight.w500)),
                    ]),
                    const SizedBox(height: 20),
                    const Row(children: [
                      Text('Allergen:',
                          style: TextStyle(
                              fontSize: 18,
                              color: textColor,
                              fontWeight: FontWeight.w900)),
                      SizedBox(width: 20),
                      Text('NA',
                          style: TextStyle(
                              fontSize: 18,
                              color: textColor,
                              fontWeight: FontWeight.w500)),
                    ]),
                    const SizedBox(height: 20),
                    const Row(children: [
                      Text('Storage:',
                          style: TextStyle(
                              fontSize: 18,
                              color: textColor,
                              fontWeight: FontWeight.w900)),
                      SizedBox(width: 20),
                      Text('Store in a clean and dry place',
                          style: TextStyle(
                              fontSize: 18,
                              color: textColor,
                              fontWeight: FontWeight.w500))
                    ]),
                    const SizedBox(height: 20),
                    const Row(children: [
                      Text('Weight:',
                          style: TextStyle(
                              fontSize: 18,
                              color: textColor,
                              fontWeight: FontWeight.w900)),
                      SizedBox(width: 20),
                      Text('1 pc',
                          style: TextStyle(
                              fontSize: 18,
                              color: textColor,
                              fontWeight: FontWeight.w500))
                    ]),
                    const SizedBox(height: 20),
                    const Row(children: [
                      Text('Origin:',
                          style: TextStyle(
                              fontSize: 18,
                              color: textColor,
                              fontWeight: FontWeight.w900)),
                      SizedBox(width: 20),
                      Text('India',
                          style: TextStyle(
                              fontSize: 18,
                              color: textColor,
                              fontWeight: FontWeight.w500))
                    ]),
                    const SizedBox(height: 40),
                    const Text('Related Products',
                        style: TextStyle(
                            fontSize: 18,
                            color: textColor,
                            fontWeight: FontWeight.w900)),
                    const SizedBox(height: 30),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.24,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * 0.25,
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'assets/images/Belgium.png',
                                    ),
                                    const SizedBox(height: 30),
                                    const Text('Fancy Diwali / Deepali',
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: textColor,
                                            fontWeight: FontWeight.w500)),
                                    const SizedBox(height: 5),
                                    const Text('EUR1.99',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: textColor,
                                            fontWeight: FontWeight.bold))
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                    const Text('Related Viewed',
                        style: TextStyle(
                            fontSize: 18,
                            color: textColor,
                            fontWeight: FontWeight.w900)),
                    const SizedBox(height: 30),
                    SizedBox(
                      height: 200,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * 0.25,
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'assets/images/austria.png',
                                    ),
                                    const SizedBox(height: 30),
                                    const Text('Udhaiyam Mung Daal',
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: textColor,
                                            fontWeight: FontWeight.w500)),
                                    const SizedBox(height: 5),
                                    const Text('EUR4.99',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: textColor,
                                            fontWeight: FontWeight.bold))
                                  ],
                                ),
                              ),
                            );
                          }),
                    )
                  ],
                ),
              ),
            ]),
      )),
    );
  }
}
