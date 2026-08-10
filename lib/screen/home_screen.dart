import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/catogires/item_catogries.dart';
import 'package:my_app/catogires/item_product.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController pageController = PageController();
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(10),
          child: Image.asset(
            'assets/logo/logo1.png',
            height: 50,
          ),
        ),
        title: const Text(
          "Food point",
          style: TextStyle(fontSize: 30),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Badge(
              label: Text('10'),
              child: Icon(
                CupertinoIcons.bell,
                size: 35,
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Card(
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: "Search",
                  prefixIcon: Icon(CupertinoIcons.search),
                  suffixIcon: Icon(Icons.filter_list),
                  contentPadding: EdgeInsets.all(15),
                ),
              ),
            ),
          ),

          SizedBox(
            height: 200,
            child: PageView(
              controller: pageController,
              onPageChanged: (index) {
                setState(() {
                  currentPage = index;
                });
              },
              children: [
                banner("assets/images/image7.png"),
                banner("assets/images/image5.png"),
                banner("assets/images/image6.png"),
              ],
            ),
          ),

          SizedBox(
            height: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(3, (index) {
                return AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  width: currentPage == index ? 20 : 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color: currentPage == index
                        ? Colors.orange
                        : Colors.grey,
                    borderRadius: BorderRadius.circular(20),
                  ),
                );
              }),
            ),
          ),

          const ListTile(
            title: Text(
              "Foods",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            trailing: Text(
              "Show all",
              style: TextStyle(
                color: Colors.indigo,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          SizedBox(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                ItemCatogries(
                    title: "pizza",
                    images: "pizza.png",
                    color: Colors.orange),
                ItemCatogries(
                    title: "burger",
                    images: "burger.png",
                    color: Colors.indigo),
                ItemCatogries(
                    title: "spaguetti",
                    images: "spaguetti.png",
                    color: Colors.green),
                ItemCatogries(
                    title: "wings",
                    images: "fried-chicken.png",
                    color: Colors.blueAccent),
                ItemCatogries(
                    title: "birynai",
                    images: "biryani.png",
                    color: Colors.deepOrange),
              ],
            ),
          ),

          const ListTile(
            title: Text(
              "Items",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            trailing: Text(
              "Show all",
              style: TextStyle(
                color: Colors.indigo,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            children: const [
              ItemProduct(
                  title: "Best cheese Pizza in swabi",
                  price: "1200",
                  image: "pizza1.png"),
              ItemProduct(
                  title: "Best Burger of my foodpoint",
                  price: "600",
                  image: "burger2.png"),
              ItemProduct(
                  title: "Best Spicy karachi biryani",
                  price: "350",
                  image: "biryani3.png"),
              ItemProduct(
                  title: "Best pasta of point",
                  price: "500",
                  image: "pasta4.png"),
              ItemProduct(
                  title: "Best spicy shwarma of food point in all swabi",
                  price: "250",
                  image: "shwarma5.png"),
            ],
          ),
        ],
      ),
    );
  }

  Widget banner(String image) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}