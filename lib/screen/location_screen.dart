import 'package:flutter/material.dart';

class LocationScreen extends StatelessWidget {
const LocationScreen({super.key});

Widget buildStatus(
IconData icon,
String title,
Color color,
bool completed,
) {
return Row(
children: [
CircleAvatar(
radius: 18,
backgroundColor: completed ? color : Colors.grey,
child: Icon(
icon,
color: Colors.white,
size: 18,
),
),
const SizedBox(width: 15),
Text(
title,
style: const TextStyle(
fontSize: 16,
fontWeight: FontWeight.w500,
),
),
],
);
}

Widget buildInfo(
IconData icon,
String title,
String subtitle,
) {
return Card(
elevation: 5,
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(18),
),
child: ListTile(
leading: CircleAvatar(
backgroundColor: Colors.indigo,
child: Icon(
icon,
color: Colors.white,
),
),
title: Text(title),
subtitle: Text(subtitle),
),
);
}

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: const Text("Delivery"),
centerTitle: true,
),
body: SingleChildScrollView(
padding: const EdgeInsets.all(15),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [

buildInfo(
Icons.location_on,
"Delivery Address",
"House #25, Street 10\nLahore, Pakistan",
),

const SizedBox(height: 20),

Container(
height: 220,
width: double.infinity,
decoration: BoxDecoration(
color: Colors.grey.shade300,
borderRadius: BorderRadius.circular(18),
),
child: const Center(
child: Icon(
Icons.map,
size: 90,
color: Colors.indigo,
),
),
),

const SizedBox(height: 25),

const Text(
"Order Tracking",
style: TextStyle(
fontSize: 22,
fontWeight: FontWeight.bold,
),
),

const SizedBox(height: 20),

buildStatus(
Icons.check_circle,
"Order Confirmed",
Colors.green,
true,
),

const SizedBox(height: 18),

buildStatus(
Icons.restaurant,
"Food Preparing",
Colors.orange,
true,
),

const SizedBox(height: 18),

buildStatus(
Icons.delivery_dining,
"On The Way",
Colors.blue,
true,
),

const SizedBox(height: 18),

buildStatus(
Icons.home,
"Delivered",
Colors.purple,
false,
),

const SizedBox(height: 30),
const Text(
"Delivery Rider",
style: TextStyle(
fontSize: 22,
fontWeight: FontWeight.bold,
),
),

const SizedBox(height: 15),

Card(
elevation: 6,
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(18),
),
child: ListTile(
leading: const CircleAvatar(
radius: 30,
backgroundColor: Colors.indigo,
child: Icon(
Icons.person,
color: Colors.white,
size: 30,
),
),
title: const Text(
"Ali Hassan",
style: TextStyle(
fontWeight: FontWeight.bold,
),
),
subtitle: const Text("⭐ 4.9 Rating"),
trailing: Row(
mainAxisSize: MainAxisSize.min,
children: [
CircleAvatar(
backgroundColor: Colors.green,
child: IconButton(
icon: const Icon(
Icons.call,
color: Colors.white,
),
onPressed: () {},
),
),
const SizedBox(width: 10),
CircleAvatar(
backgroundColor: Colors.blue,
child: IconButton(
icon: const Icon(
Icons.chat,
color: Colors.white,
),
onPressed: () {},
),
),
],
),
),
),

const SizedBox(height: 25),

Card(
elevation: 6,
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(18),
),
child: const ListTile(
leading: CircleAvatar(
backgroundColor: Colors.orange,
child: Icon(
Icons.timer,
color: Colors.white,
),
),
title: Text(
"Estimated Delivery Time",
style: TextStyle(
fontWeight: FontWeight.bold,
),
),
trailing: Text(
"25 min",
style: TextStyle(
color: Colors.indigo,
fontWeight: FontWeight.bold,
fontSize: 18,
),
),
),
),

const SizedBox(height: 25),

const Text(
"Order Summary",
style: TextStyle(
fontSize: 22,
fontWeight: FontWeight.bold,
),
),

const SizedBox(height: 15),
  Card(
    elevation: 6,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(18),
    ),
    child: Padding(
      padding: const EdgeInsets.all(18),
      child: Column(
        children: const [
          Row(
            mainAxisAlignment:
            MainAxisAlignment.spaceBetween,
            children: [
              Text("Zinger Burger x2"),
              Text("Rs. 1200"),
            ],
          ),
          SizedBox(height: 12),
          Row(
            mainAxisAlignment:
            MainAxisAlignment.spaceBetween,
            children: [
              Text("Pizza x1"),
              Text("Rs. 1500"),
            ],
          ),
          SizedBox(height: 12),
          Row(
            mainAxisAlignment:
            MainAxisAlignment.spaceBetween,
            children: [
              Text("Delivery Charges"),
              Text("Rs. 200"),
            ],
          ),
          Divider(height: 30),
          Row(
            mainAxisAlignment:
            MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Rs. 2900",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo,
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  ),

  const SizedBox(height: 30),

  SizedBox(
    width: double.infinity,
    height: 55,
    child: ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      onPressed: () {},
      icon: const Icon(Icons.cancel),
      label: const Text(
        "Cancel Order",
        style: TextStyle(fontSize: 18),
      ),
    ),
  ),

  const SizedBox(height: 20),
],
),
),
);
}
}