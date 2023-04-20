import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceryapp/components/data_components.dart';
import 'package:provider/provider.dart';
import '../model/cart_model.dart';
import 'cart_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 20),
          child: Icon(
            Icons.location_on,
            color: Colors.grey[700],
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text(
            'Sylhet, Bangladesh',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[700],
            ),
          ),
        ),
        centerTitle: false,
        actions: const [
          Padding(
            padding: EdgeInsets.only(top: 20,right: 20),
            child: CircleAvatar(
              backgroundImage: NetworkImage("https://i.pinimg.com/474x/dc/92/1e/dc921ec2e07f9437dc51f2a10694578d.jpg"),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const CartPage();
            },
          ),
        ),
        child: const Icon(Icons.shopping_bag),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 48),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Text('Good morning, Mate'),
          ),
          const SizedBox(height: 4),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              "Let's order fresh items for you",
              style: GoogleFonts.notoSerif(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Divider(),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              "Categories",
              style: GoogleFonts.notoSerif(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20.0),
            child: SizedBox(
              width: double.infinity,
              height: 150.0,
              child: Expanded(
                child: Consumer<CartModel>(
                  builder: (context, value, child) {
                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: value.shopItems.length,
                      itemBuilder: (context, index) {
                        return DataComponents(
                          itemName: value.shopItems[index][0],
                          itemPrice: value.shopItems[index][1],
                          imagePath: value.shopItems[index][2],
                          color: value.shopItems[index][3],
                          onPressed: () =>
                              Provider.of<CartModel>(context, listen: false)
                                  .addItemToCart(index),
                        );
                      },
                    );
                  },
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.bottomLeft,
            margin: const EdgeInsets.only(left: 24.0, top: 10.0, bottom: 10.0),
            child: Text(
              'My Orders',
              style: GoogleFonts.notoSerif(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Padding(
            padding: const EdgeInsets.only(right: 20.0, ),
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(50),
              ),
              child: Image.asset(
                'lib/images/avocado.png',
                height: 36,
              ),
            ),
          ),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "S 50.32",
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    "6 items",
                    style: TextStyle(
                      fontSize: 10.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Vegetables",
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    "20 jun. 2022",
                    style: TextStyle(
                      fontSize: 10.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListTile(
              leading: Padding(
            padding: const EdgeInsets.only(right: 20.0, ),
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(50),
              ),
              child: Image.asset(
                'lib/images/banana.png',
                height: 36,
              ),
            ),
          ),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "S 56.32",
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    "4 items",
                    style: TextStyle(
                      fontSize: 10.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Fruits",
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    "20 jun. 2022",
                    style: TextStyle(
                      fontSize: 10.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Padding(
            padding: const EdgeInsets.only(right: 20.0, ),
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(50),
              ),
              child: Image.asset(
                'lib/images/chicken.png',
                height: 36,
              ),
            ),
          ),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "S 32.32",
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    "1 items",
                    style: TextStyle(
                      fontSize: 10.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Meat",
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    "20 jun. 2022",
                    style: TextStyle(
                      fontSize: 10.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
