import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_store/Screens/Cart_Screen.dart';
import 'package:grocery_store/model/cartModel.dart';
import 'package:provider/provider.dart';

import '../widget/grocery_item.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
       Navigator.push(context, MaterialPageRoute(builder: (context){return CartScreen();}));
        },
        backgroundColor: Colors.black,
      child: Icon(Icons.shopping_bag,),
      ),
      body: SafeArea(child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 48,),
          const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 24),
            child: Text("Good Morning,"),
          ),
          const SizedBox(
            height: 4,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text("Let's order fresh items for you",style:
            GoogleFonts.notoSerif(
              fontSize: 36,
              fontWeight: FontWeight.bold
            ),),
          ),
          const SizedBox(
            height: 4,),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Divider(),
          ),
          const SizedBox(
            height: 4,),
          const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 24),
            child: Text("Fresh Items",style: TextStyle(
              fontSize: 16,
            ),),
          ),
          Expanded(
            child: Consumer<CartModel>(builder: (context, value, child){
              return GridView.builder(
                itemCount: value.shopItems.length,
                  padding: const EdgeInsets.all(12),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                  childAspectRatio: 1/1.1),
                  itemBuilder: (context, index){
                    return GroceryIntemTile(
                      ItemName: value.shopItems[index][0],
                      ItemPrice: value.shopItems[index][1],
                      ImagePath: value.shopItems[index][2],
                      color: value.shopItems[index][3],
                      onPressed: (){
                        Provider.of<CartModel>(context, listen: false).addItemtoCart(index);
                      },
                    );
                  });
            }),
          )
        ],
      )),
    );
  }
}
