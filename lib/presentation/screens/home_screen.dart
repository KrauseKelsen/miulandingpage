import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miulandingpage/presentation/widgets/nav_bar_butttons.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [


            // Now the animation part






            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
      
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 30.0, top: 15.0, right: 20.0),
                      //color: Colors.deepPurpleAccent,
                      height: 90.0,
                      child: const Image(image: AssetImage('assets/images/star.png'))
                    ),
                    const Spacer(),
                    Container(
                      //color: Colors.deepPurpleAccent,
                      padding: const EdgeInsets.only(top: 15.0),
                      child: const Row(
                        children: [
                          NavBarButttons(text: "What's New",),
                          NavBarButttons(text: "Home",),
                          NavBarButttons(text: "About me",),
                          NavBarButttons(text: "Contact",),
                        ],
                      ),
                    ),
                  ],
                ),
      
                const SizedBox(height: 50.0,),
                Container(
                  //color: Colors.blueAccent,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 50.0, right: 15.0,),
                    child: Row(
                      children: [
                        Text("It's  ", style: GoogleFonts.rubik(fontSize: 60.0, fontWeight: FontWeight.w400, color: Colors.black),),
                        Text("MIU", style: GoogleFonts.montserrat(fontSize: 60.0, fontWeight: FontWeight.w900, color: Colors.black),),
                      ],
                    ),
                  ),
                ),
                Container(
                  //color: Colors.blueAccent,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 50.0, right: 15.0,),
                    child: Text("From the User, For the User", style: GoogleFonts.rubik(fontSize: 60.0, fontWeight: FontWeight.w400, color: Colors.black),),
                  ),
                ), 
                Container(
                  //color: Colors.amber,
                  width: MediaQuery.of(context).size.width*0.7,
                  padding: const EdgeInsets.only(left: 50.0, top: 10, right: 15.0,),
                  child: Text("Ut sint cillum ipsum minim. Consectetur quis nostrud ea tempor minim occaecat cillum elit duis in dolor Lorem ullamco. Dolore ipsum exercitation adipisicing eiusmod dolore cupidatat. Nostrud nostrud mollit nostrud magna fugiat occaecat. Laborum ut aute do velit do adipisicing ea. Cupidatat in adipisicing laborum ea. Eiusmod ex velit occaecat mollit anim fugiat est aliqua voluptate irure dolore labore.", 
                  style: GoogleFonts.poppins(fontSize: 16.0, fontWeight: FontWeight.w400, color: Colors.black87),),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 50.0, right: 15.0, top: 15.0),
                  padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7.0),
                    color: colors.primary
                  ),
                  child: Text(
                    "DOWNLOAD MY RESUME",
                    style: GoogleFonts.montserrat(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.white
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
