import 'package:coffe_ui/coffe_tile.dart';
import 'package:coffe_ui/coffee_type.dart';
import 'package:coffe_ui/coffees.dart';
import 'package:coffe_ui/menufortab.dart';
//import 'package:coffe_ui/tetttt.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'orderpage.dart';

void main() {
  runApp(const myapp());
}

// ignore: camel_case_types
class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homepage(),
    );
  }
}

// ignore: camel_case_types
class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

// ignore: camel_case_types
class _homepageState extends State<homepage> {
  // ignore: non_constant_identifier_names

  static List<Menu> allMenulist = [
    Menu(
      name: 'coffee',
      image: 'images/coffee.jpg',
      price: '1',
      //rating: '4',
    ),
    Menu(
      name: 'Machiatto',
      image: 'images/dumlao.jpg',
      price: '2',
      //   rating: '3',
    ),
    Menu(
      name: 'Espresso',
      image: 'images/espresso.jpg',
      price: '3',
      // rating: '2',
    ),
    Menu(
      name: 'Tea',
      image: 'images/tea.jpg',
      price: '4',
      // rating: '1',
    ),
  ];

// creating the list that we are going to display and filter

  List<Menu> displayMenulist = List.from(allMenulist);
// this function filteer our list
  void updatelist(String value) {
    setState(() {
      displayMenulist = allMenulist
          .where((element) =>
              element.name!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  // final List LIST = [
  //   //coffeeType
  //   ['Coffee', true],
  //   ['Machiato', false],
  //   ['Espresso', false],
  //   ['Tea', false]
  // ];

  // List<coffees> x = allcoffees;

  // void coffeetypeselected(int index) {
  //   setState(() {
  //     for (int i = 0; i < LIST.length; i++) {
  //       LIST[i][1] = false;
  //     }
  //     LIST[index][1] = true;
  //   });
  // }

  // Menu() {
  //   showDialog(
  //     builder: (context) => Menu(),
  //     context: context,
  //     barrierDismissible: false,
  //   );
  // }

  // void Menu() {
  //   Container(
  //     height: 40,
  //     width: 40,
  //     color: Colors.red,
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          onTap: () => showDialog(
            builder: (context) => menufortab(menuForMenuForTab: allMenulist),
            context: context,
            barrierDismissible: false,
          ),
          child: const Icon(Icons.menu),
        ), //const Icon(Icons.Menu),

        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(Icons.person),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        //     onTap: =>showDialog(
        //   builder: (context) => const test(),
        //   context: context,
        //   barrierDismissible: false,
        // ),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Your Favourite'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'Notifications'),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.transparent,
        child: ListView(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * .7,
              height: MediaQuery.of(context).size.height - 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Container(
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.red,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(5, 5),
                          blurRadius: 10,
                          spreadRadius: 1,
                        ),
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(-5, -5),
                          blurRadius: 10,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(5, 5),
                          blurRadius: 10,
                          spreadRadius: 1,
                        ),
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(-5, -5),
                          blurRadius: 10,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'images/3.jpg',
                ),
                fit: BoxFit.cover)),
        //child: Scaffold(
        child: Column(
          children: [
            // SizedBox(
            //   height: MediaQuery.of(context).size.height,
            //   child:
            //ListView(
            //physics: const NeverScrollableScrollPhysics(),
            //children: [
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                'Find the best coffee for you ',
                style: GoogleFonts.bebasNeue(
                    fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                onChanged: (value) => updatelist(value),
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  hintText: 'Search your coffee here ...',
                  prefixIconColor: Colors.pink,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade600),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade600),
                  ),
                ),
              ),
            ),

            Expanded(
              child: ListView.builder(
                itemCount: displayMenulist.length,
                itemBuilder: (context, index) => ListTile(
                  onTap: () => showDialog(
                    //barrierColor: Colors.pink,
                    builder: (context) => orderpage(
                      menuForOrderpage: Menu(
                          image: displayMenulist[index].image,
                          name: displayMenulist[index].name,
                          price: displayMenulist[index].price),
                    ),
                    context: context,
                    barrierDismissible: false,
                  ),
                  leading: Container(
                    width: 50,
                    height: 50,
                    child: Image.asset(
                      displayMenulist[index].image,
                      fit: BoxFit.cover,
                      // width: 50,
                      // height: 50,
                    ),
                  ),

                  title: Text(displayMenulist[index].name!),
                  // subtitle: Text(displayMenulist[index].price!),
                  // trailing: Text(displayMenulist[index].rating),
                  // onTap: () => Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => coffeepage(xx: xx),
                  //   ),
                ),
                //);
                // },
              ),
            ),

            //ignore: sized_box_for_whitespace
            // Container(
            //     height: 25,
            //     child: ListView.builder(
            //         scrollDirection: Axis.horizontal,
            //         itemCount: LIST.length,
            //         itemBuilder: (context, index) {
            //           return coffeetype(
            //             LIST: LIST[index][0],
            //             isSelected: LIST[index][1],
            //             ON: () {
            //               coffeetypeselected(index);
            //             },
            //           );
            //         })),

            // const SizedBox(
            //   height: 20,
            // ),

            // Expanded(
            //   child: ListView(
            //     scrollDirection: Axis.horizontal,
            //     children: const [
            //       coffetile(
            //         imagepath: 'images/coffee.jpg',
            //         coffeename: 'Coffee',
            //         price: '4',
            //       ),
            //       coffetile(
            //         imagepath: 'images/dumlao.jpg',
            //         coffeename: 'Machiatto',
            //         price: '4.5',
            //       ),
            //       coffetile(
            //         imagepath: 'images/espresso.jpg',
            //         coffeename: 'Espresso',
            //         price: '5',
            //       ),
            //       coffetile(
            //         imagepath: 'images/tea.jpg',
            //         coffeename: 'Tea',
            //         price: '3',
            //       ),
            //     ],
            //   ),
            // ),

            // ],
            //),
          ],
        ),
      ),
    );
  }
}
