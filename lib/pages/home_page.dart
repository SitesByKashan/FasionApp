import 'package:carousel_slider/carousel_slider.dart';
import 'allList.dart';
import '../logic.dart';
import 'itempage.dart';
import '../utils/Appthemesetting.dart';
import 'package:flutter/material.dart';
import '../data/cataorylist.dart';

List imagepath = [
  'assets/images/onboarding1.PNG',
  'assets/images/onboarding01.PNG',
  'assets/images/onboarding3.PNG',
  'assets/images/welcomepic.PNG',
];

List listname = items;
bool fav = false;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Row(
                  children: [
                    Text('Location'),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: brownColor,
                        ),
                        Text(
                          'Location Not Available',
                          style: TextStyle(fontSize: 17),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 16,
                          backgroundColor: brownColor,
                          foregroundColor: whiteColor,
                          child: Icon(Icons.notifications),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 40,
                      width: 260,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search',
                          prefixIcon: Icon(Icons.search),
                          prefixIconColor: brownColor,
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(80)),
                              borderSide:
                                  BorderSide(color: brownColor, width: 2)),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(80),
                            ),
                            //borderSide: BorderSide(//color: blackColor ,width: 2)
                          ),
                        ),
                      ),
                    ),
                    CircleAvatar(
                      radius: 18,
                      backgroundColor: brownColor,
                      foregroundColor: whiteColor,
                      child: Icon(Icons.short_text_rounded),
                    )
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                CarouselSlider.builder(
                    itemCount: 4,
                    itemBuilder: (context, index, pageIndex) {
                      return Card(
                        elevation: 10,
                        color: brownColor,
                        child: Image.asset(imagepath[index]),
                      );
                    },
                    options: CarouselOptions(
                      height: 150,
                      autoPlay: true,
                    )),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Category',
                        style: TextStyle(fontSize: 20),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            'See all',
                            style: TextStyle(color: brownColor),
                          )),
                    ]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                        child: const CataoryOption(
                            label: 'Shirt',
                            imagepath: 'assets/icons/shirt.png'),
                        onTap: () => nextpage(context,
                            AllList(title: 'Shits ', category: 'shirt'))),
                    InkWell(
                        child: const CataoryOption(
                            label: 'Pent', imagepath: 'assets/icons/pent.png'),
                        onTap: () => nextpage(context,
                            AllList(title: ' Pents', category: 'pent'))),
                    InkWell(
                        child: const CataoryOption(
                            label: 'Jacket',
                            imagepath: 'assets/icons/jacket.png'),
                        onTap: () => nextpage(context,
                            AllList(title: 'Jackets', category: 'jacket'))),
                    InkWell(
                        child: const CataoryOption(
                            label: 'Dress',
                            imagepath: 'assets/icons/dress.png'),
                        onTap: () => nextpage(context,
                            AllList(title: 'Dresses', category: 'dress'))),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 3, 5, 5),
                      child: ElevatedButton(
                        child: const Text(
                          'My Favourite',
                          style: TextStyle(fontSize: 13, color: brownColor),
                        ),
                        onPressed: () {
                          nextpage(
                              context,
                              const MyList(
                                title: 'Favourite Items',
                              ));
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 3, 5, 5),
                      child: ElevatedButton(
                          child: const Text(
                            'My Cart',
                            style: TextStyle(fontSize: 13, color: brownColor),
                          ),
                          onPressed: () {
                            nextpage(context, const CartList(title: 'My Cart'));
                          }),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const Text(
                      'Flash Sale',
                      style: TextStyle(
                          color: blackColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisExtent: 200,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10),
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Itempage(
                                        listname: items, index: index)));
                          },
                          child: Card(
                            color: whiteColor,
                            shadowColor: blackColor,
                            child: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        width: 135,
                                        height: 100,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: greyColor,
                                        ),
                                        child: Image.asset(
                                            fit: BoxFit.fill,
                                            items[index]['imagepath']),
                                      ),
                                      Positioned(
                                        right: 1,
                                        child: (items[index]['fav'])
                                            ? (IconButton(
                                                onPressed: () {
                                                  setState(() {
                                                    items[index]['fav'] = false;
                                                  });
                                                },
                                                icon:
                                                    const Icon(Icons.favorite)))
                                            : (IconButton(
                                                onPressed: () {
                                                  setState(() {
                                                    items[index]['fav'] = true;
                                                  });
                                                },
                                                icon: const Icon(Icons
                                                    .favorite_border_outlined))),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    items[index]['Name'],
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(items[index]['price']),
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
