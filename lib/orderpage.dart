import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'coffees.dart';
import 'main.dart';

class orderpage extends StatelessWidget {
  Menu menuForOrderpage;

  orderpage({required this.menuForOrderpage
      // required this.displaymenulist[index],
      });

//  required this.imagepath,
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/1.jpg'), fit: BoxFit.cover)),
        child: Column(children: [
          const Text('thank you for being'),
          const SizedBox(
            height: 20,
          ),
          ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(menuForOrderpage.image)),
          const SizedBox(
            height: 20,
          ),
          Text(
            menuForOrderpage.name,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$  ' + menuForOrderpage.price,
                      style: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      // width: 40,
                      // height: 40,
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 115, 32, 7),
                        borderRadius: BorderRadius.circular(6),
                      ),
                    )
                  ]))
        ])
        //  child: rating
        // onTap: () => showDialog(
        //   //barrierColor: Colors.pink,
        //   builder: (context) => orderpage(imagepath: '',
        //   coffeename: '',
        //   price: '',),
        //   context: context,
        //   barrierDismissible: false,
        // ),

        );

    // );
  }
}
