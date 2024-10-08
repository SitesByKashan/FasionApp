import '../logic.dart';
import 'itempage.dart';
import '/signup_login/sigupLoiginWidgets.dart';
import '../utils/Appthemesetting.dart';
import 'package:flutter/material.dart';

List items = [
  {
    'Category': 'dress',
    'imagepath': 'assets/itemimages/womendress1.png',
    'Name': 'Women Dress',
    'price': '500',
    'fav': false,
    'cart': false,
  },
  {
    'Category': 'dress',
    'imagepath': 'assets/itemimages/womendress2.png',
    'Name': 'Women Dress',
    'price': '700',
    'fav': false,
    'cart': false
  },
  {
    'Category': 'shirt',
    'imagepath': 'assets/itemimages/womenshirt1.png',
    'Name': 'Women Shirt',
    'price': '999',
    'fav': false,
    'cart': false
  },
  {
    'Category': 'shirt',
    'imagepath': 'assets/itemimages/womenshirt2.png',
    'Name': 'Women Shirt',
    'price': '720',
    'fav': false,
    'cart': false
  },
  {
    'Category': 'jacket',
    'imagepath': 'assets/itemimages/menjacket1.png',
    'Name': 'jacket',
    'price': '999',
    'fav': false,
    'cart': false
  },
  {
    'Category': 'jacket',
    'imagepath': 'assets/itemimages/menjacket2.png',
    'Name': 'Jacket',
    'price': '1200',
    'fav': false,
    'cart': false
  },
  {
    'Category': 'peny',
    'imagepath': 'assets/itemimages/offwhitepent.png',
    'Name': 'Men Pent',
    'price': '900',
    'fav': false,
    'cart': false
  },
  {
    'Category': 'pent',
    'imagepath': 'assets/itemimages/blackpent.png',
    'Name': 'Men Pent Black',
    'price': '1050',
    'fav': false,
    'cart': false
  },
  {
    'Category': 'pent',
    'imagepath': 'assets/itemimages/bluepent.png',
    'Name': 'Men pent Blue',
    'price': '1000',
    'fav': false,
    'cart': false
  },
];

class AllList extends StatefulWidget {
  final String title;
  final String category;
  const AllList({super.key, required this.title, required this.category});

  @override
  State<AllList> createState() => _AllListState();
}

class _AllListState extends State<AllList> {
  @override
  Widget build(BuildContext context) {
    // Filter items based on the category
    List filteredItems =
        items.where((item) => item['Category'] == widget.category).toList();

    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        centerTitle: true,
        foregroundColor: brownColor,
        backgroundColor: whiteColor,
        title: Text(widget.title,
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 200,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemCount: filteredItems.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  nextpage(
                      context,
                      Itempage(
                          listname: filteredItems,
                          index: index)); // Pass filtered items
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
                                borderRadius: BorderRadius.circular(20),
                                color: greyColor,
                              ),
                              child: Image.asset(
                                fit: BoxFit.fill,
                                filteredItems[index]
                                    ['imagepath'], // Use filtered list
                              ),
                            ),
                            Positioned(
                              right: 1,
                              child: (filteredItems[index]
                                      ['fav']) // Use filtered list
                                  ? IconButton(
                                      onPressed: () {
                                        setState(() {
                                          filteredItems[index]['fav'] = false;
                                        });
                                      },
                                      icon: const Icon(Icons.favorite),
                                    )
                                  : IconButton(
                                      onPressed: () {
                                        setState(() {
                                          filteredItems[index]['fav'] = true;
                                        });
                                      },
                                      icon: const Icon(
                                          Icons.favorite_border_outlined),
                                    ),
                            ),
                          ],
                        ),
                        Text(
                          filteredItems[index]['Name'], // Use filtered list
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                            filteredItems[index]['price']), // Use filtered list
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class MyList extends StatefulWidget {
  final String title;
  const MyList({super.key, required this.title});

  @override
  State<MyList> createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  @override
  Widget build(BuildContext context) {
    // Filter items based on the category
    List filteredItems = items.where((item) => item['fav'] == true).toList();

    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        centerTitle: true,
        foregroundColor: brownColor,
        backgroundColor: whiteColor,
        title: Text(widget.title,
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 200,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemCount: filteredItems.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  nextpage(
                      context,
                      Itempage(
                          listname: filteredItems,
                          index: index)); // Pass filtered items
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
                                borderRadius: BorderRadius.circular(20),
                                color: greyColor,
                              ),
                              child: Image.asset(
                                fit: BoxFit.fill,
                                filteredItems[index]
                                    ['imagepath'], // Use filtered list
                              ),
                            ),
                            Positioned(
                              right: 1,
                              child: (filteredItems[index]
                                      ['fav']) // Use filtered list
                                  ? IconButton(
                                      onPressed: () {
                                        setState(() {
                                          filteredItems[index]['fav'] = false;
                                        });
                                      },
                                      icon: const Icon(Icons.favorite),
                                    )
                                  : IconButton(
                                      onPressed: () {
                                        setState(() {
                                          filteredItems[index]['fav'] = true;
                                        });
                                      },
                                      icon: const Icon(
                                          Icons.favorite_border_outlined),
                                    ),
                            ),
                          ],
                        ),
                        Text(
                          filteredItems[index]['Name'], // Use filtered list
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                            filteredItems[index]['price']), // Use filtered list
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class CartList extends StatefulWidget {
  final String title;
  const CartList({super.key, required this.title});

  @override
  State<CartList> createState() => _CartListState();
}

class _CartListState extends State<CartList> {
  // Function to calculate total price
  double getTotalPrice(List filteredItems) {
    double total = 0.0;
    for (var item in filteredItems) {
      // Safely parse the price, default to 0.0 if price is null or not a valid number
      double itemPrice =
          double.tryParse(item['price']?.toString() ?? '0.0') ?? 0.0;
      int quantity =
          item['quantity'] ?? 1; // Default quantity to 1 if it's null
      total += itemPrice * quantity;
    }
    return total;
  }

  @override
  Widget build(BuildContext context) {
    // Filter items based on the category
    List filteredItems = items.where((item) => item['cart'] == true).toList();

    // Calculate total price
    double totalPrice = getTotalPrice(filteredItems);
    BuyPrice = totalPrice;

    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 7, 10),
            child: ElevatedButton(
              child: const Text(
                'Buy Now',
                style: TextStyle(fontSize: 25, color: brownColor),
              ),
              onPressed: () {
                showModalBottomSheet(
                  elevation: 10,
                  showDragHandle: true,
                  context: context,
                  builder: (context) => CartBuysheet(),
                );
              },
            ),
          ),
          // Display total price
          Text(
            'Total: Rs ${totalPrice.toStringAsFixed(2)}', // Display with 2 decimal points
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      backgroundColor: whiteColor,
      appBar: AppBar(
        centerTitle: true,
        foregroundColor: brownColor,
        backgroundColor: whiteColor,
        title: Text(
          widget.title,
          style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: filteredItems.length,
            itemBuilder: (context, index) {
              // Ensure each item has a quantity field
              filteredItems[index]['quantity'] ??= 1;

              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color: whiteColor,
                  shadowColor: blackColor,
                  child: Center(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          child: const Text(
                            'X',
                            style: TextStyle(color: brownColor, fontSize: 15),
                          ),
                          onPressed: () {
                            setState(() {
                              filteredItems[index]['cart'] = false;
                            });
                          },
                        ),
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: greyColor,
                          ),
                          child: Image.asset(
                            fit: BoxFit.fill,
                            filteredItems[index]['imagepath'],
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              filteredItems[index]['Name'],
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                TextButton(
                                  onPressed: () {
                                    setState(() {
                                      if (filteredItems[index]['quantity'] >
                                          1) {
                                        filteredItems[index]['quantity']--;
                                      }
                                    });
                                  },
                                  child: const Text(
                                    '--',
                                    style: TextStyle(
                                        letterSpacing: -5,
                                        color: blackColor,
                                        fontSize: 25,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Text(
                                  filteredItems[index]['quantity'].toString(),
                                  style: const TextStyle(
                                      color: blackColor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                ),
                                TextButton(
                                  onPressed: () {
                                    setState(() {
                                      filteredItems[index]['quantity']++;
                                    });
                                  },
                                  child: const Text(
                                    '+',
                                    style: TextStyle(
                                        letterSpacing: -5,
                                        color: blackColor,
                                        fontSize: 25,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Text(
                          (num.parse(filteredItems[index]['price']) *
                                  filteredItems[index]['quantity'])
                              .toString(),
                          style: const TextStyle(
                              color: blackColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(width: 15),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

var BuyPrice; // for taking total price from cartlist class and givin it to buy sheet

class CartBuysheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 400,
      decoration: const BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 15,
              ),
              const Simpletextfield(
                  'Name & Contect', 'M.Kashan Malik Awan / 92xxxxxxxx'),
              const SizedBox(
                height: 10,
              ),
              const Simpletextfield('Adress', 'House No ../street No .../.../'),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Total Price',
                style: TextStyle(
                    color: blackColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        BuyPrice.toString(),
                        style: TextStyle(
                            color: blackColor,
                            fontSize: 20,
                            fontWeight: FontWeight.w300),
                      ),
                      const SizedBox(
                        width: 15,
                      )
                    ],
                  ),
                ],
              ),
              const Text(
                'Payment',
                style: TextStyle(
                    color: blackColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 0,
              ),
              const Text(
                ' \t Cash on Dlivery',
                style: TextStyle(
                    color: blackColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
                      child: ElevatedButton(
                        child: const Text(
                          'confirm Buy',
                          style: TextStyle(fontSize: 18, color: whiteColor),
                        ),
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) =>
                                  ConfirmDialog());
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 300,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ConfirmDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: const Text(
          'Your Order has been placed \n Your Order will receive you in one week'),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(); // Close the dialog
          },
          child: const Text('Close', style: TextStyle(color: brownColor)),
        ),
      ],
    );
  }
}
