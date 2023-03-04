import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> products = ["Bed", "Sofa", "Chair"];

  List<String> productDetails = [
    "King Size Bed",
    "King SIe Sofa",
    "Wooden Chair"
  ];

  List<int> price = [3000, 2500, 1860];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        // leading: IconButton(
        //   icon: const Icon(Icons.menu),
        //   onPressed: () {},
        // ),
        title: const Text("Home"),
        actions: const [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: null,
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: null,
          ),
          IconButton(
            icon: Icon(Icons.menu_book),
            onPressed: null,
          ),
        ],
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.purple.withOpacity(0.7),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
        // flexibleSpace: const Image(image: AssetImage("images/bug.png"), fit: BoxFit.cover),
      ),
      drawer: Drawer(
          elevation: 140.0,
          child: ListView(
            children: [
              const UserAccountsDrawerHeader(
                accountEmail: Text("dushanthaolinda29@gmail.com"),
                accountName: Text("Dushantha Olinda"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("images/me.jpeg"),
                ),
                otherAccountsPictures: [
                  CircleAvatar(
                    backgroundImage: AssetImage("images/bug.png"),
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage("images/bug.png"),
                  )
                ],
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text("Home"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.shopping_cart),
                title: const Text("Cart"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text("Profile"),
                onTap: () {},
              ),
              const Padding(
                padding: EdgeInsets.all(14.0),
                child: Text("Labels"),
              ),
              ListTile(
                leading: const Icon(Icons.label),
                title: const Text("Red"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.label),
                title: const Text("Blue"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.label),
                title: const Text("Green"),
                onTap: () {},
              ),
            ],
          )),
      body: Container(
          // padding: const EdgeInsets.all(20.0),
          // margin: const EdgeInsets.only(top: 90.0),
          // child: Column(
          //   children: [
          //     Row(
          //       children:const [
          //         Expanded(child: Image(image: AssetImage("images/bug.png"),width: 100,)),
          //         Expanded(flex:2, child: Image(image: AssetImage("images/bug.png"),width: 100,)),
          //         Expanded(child: Image(image: AssetImage("images/bug.png"),width: 100,)),
          //       ]
          //     ),
          //     Row(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: const [
          //         Icon(Icons.star),
          //         Icon(Icons.star),
          //         Icon(Icons.star),
          //         Icon(Icons.star_border),
          //         Icon(Icons.star_border),
          //       ],
          //     ),
          //     Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children:[
          //         Column(
          //           children:const [
          //             Icon(Icons.phone,size: 35.0,),
          //             Text("phone"),
          //           ],
          //         ),
          //         Column(
          //           children:const [
          //             Icon(Icons.alt_route,size: 35.0,),
          //             Text("route"),
          //           ],
          //         ),
          //         Column(
          //           children:const [
          //             Icon(Icons.share,size: 35.0,),
          //             Text("share"),
          //           ],
          //         ),
          //       ]
          //     ),
          //   ],
          // ),
          // child: ListView(
          //   itemExtent: 70.0,
          //   // reverse: true,
          //   // scrollDirection: Axis.horizontal,
          //   children:const [
          //     ListTile(
          //       leading: CircleAvatar(child: Icon(Icons.alarm_on_sharp)),
          //       title: Text("Sales"),
          //       subtitle: Text("Sales of the week"),
          //       trailing: Text("3500"),
          //       // onTap: null,
          //     ),
          //     ListTile(
          //       leading: CircleAvatar(child: Icon(Icons.people)),
          //       title: Text("Customers"),
          //       subtitle: Text("Total customers"),
          //       trailing: Text("150"),
          //       // onTap: null,
          //     ),
          //     ListTile(
          //       leading: CircleAvatar(child: Icon(Icons.alarm_on_sharp)),
          //       title: Text("Profit"),
          //       subtitle: Text("Profit of the week"),
          //       trailing: Text("2000"),
          //       // onTap: null,
          //     ),
          //   ]
          // )
          child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    child: Text(products[index][0]),
                  ),
                  title: Text(products[index]),
                  subtitle: Text(productDetails[index]),
                  trailing: Text(price[index].toString()),
                  onTap: () {},
                );
              })),
    );
  }
}
