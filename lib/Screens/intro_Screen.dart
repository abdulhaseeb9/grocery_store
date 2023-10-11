import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_store/Screens/Home_Page.dart';
class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 80,right: 80,bottom: 40,top: 100),
            child: Image(image: AssetImage('lib/images/avocado.png')),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text("We Deliver Food at Your Doorstep",
            textAlign: TextAlign.center,
            style: GoogleFonts.notoSerif(
              fontWeight: FontWeight.bold,
              fontSize: 36
            ),),
          ),
          const SizedBox(height: 18,),
          Text('Fresh Items Everyday',style: TextStyle(
            color: Colors.grey[600]
          ),),
          const Spacer(),
          
          GestureDetector(
            onTap: () => Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context){
                  return  const HomeScreen();
                })),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(12)
              ),
              child: const Padding(
                padding: EdgeInsets.all(15),
                child: Text('Get Started',style: TextStyle(
                  color: Colors.white
                ),),
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
