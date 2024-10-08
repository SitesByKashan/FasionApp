import 'allList.dart';
import '../signup_login/sigupLoiginWidgets.dart';
import '../utils/Appthemesetting.dart';
import 'package:flutter/material.dart';

class Itempage extends StatelessWidget {
  final index;
  final List listname;
  const Itempage({super.key, required this.listname, required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      width: double.infinity,
                      height: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: greyColor,
                      ),
                      child: Image.asset(
                          fit: BoxFit.fill, listname[index]['imagepath']),
                    ),
                  ),
                  Text(
                    listname[index]['Name'],
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    ' Rs :' + listname[index]['price'],
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text('Description',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                  const Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                          'Do you need a beautiful and unique dress for your next special occasion? Look no further than this chiffon bridesmaid dress! This gorgeous dress features a scoop neckline, lace chiffon fabric, and a hi-lo hemline that is sure to turn heads. The 94% nylon and 6% spandex fabric are comfortable'),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 20, 7, 10),
                        child: ElevatedButton(
                          child: const Text(
                            'Add to Cart',
                            style: TextStyle(fontSize: 18, color: brownColor),
                          ),
                          onPressed: () {
                            listname[index]['cart'] = true;
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text('Added to Cart')));
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 20, 7, 10),
                        child: ElevatedButton(
                            child: const Text(
                              'Buy Now',
                              style: TextStyle(fontSize: 18, color: brownColor),
                            ),
                            onPressed: () {
                              showModalBottomSheet(
                                  elevation: 10,
                                  showDragHandle: true,
                                  context: context,
                                  builder: (context) =>
                                      Buysheet(listname: items, index: index));
                            }),
                      ),
                    ],
                  ),
                ],
              )),
        ),
      ),
    );
  }
}

class Buysheet extends StatefulWidget {
  final int index;
  final List listname;
  const Buysheet({super.key, required this.listname, required this.index});

  @override
  State<Buysheet> createState() => _BuysheetState();
}

class _BuysheetState extends State<Buysheet> {
  int item = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 500,
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
              const SizedBox(
                height: 15,
              ),
              const Simpletextfield('Adress', 'House No ../street No .../.../'),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Items',
                style: TextStyle(
                    color: blackColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    TextButton(
                        onPressed: () {
                          setState(() {
                            if (item > 1) {
                              item--;
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
                        )),
                    Text(
                      item.toString(),
                      style: const TextStyle(
                          color: blackColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            item++;
                          });
                        },
                        child: const Text(
                          '+',
                          style: TextStyle(
                              letterSpacing: -5,
                              color: blackColor,
                              fontSize: 25,
                              fontWeight: FontWeight.w500),
                        )),
                  ]),
                  Row(
                    children: [
                      const Text(
                        'Price: ',
                        style: TextStyle(
                            color: blackColor,
                            fontSize: 20,
                            fontWeight: FontWeight.w300),
                      ),
                      Text(
                          (num.parse(widget.listname[widget.index]['price']) *
                                  item)
                              .toString(),
                          style: const TextStyle(
                              color: blackColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w500)),
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
