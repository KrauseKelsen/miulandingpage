import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miulandingpage/presentation/widgets/hover_button.dart';
import 'package:miulandingpage/presentation/widgets/image_holder.dart';
import 'package:miulandingpage/presentation/widgets/nav_bar_butttons.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // some variable for driving the animation
  Color myColor = Colors.purple;
  double image1right = 200.0;
  double image2right = -700.0;
  double image3right = -700.0;

  // main animation driver function
  void changer(int a) {
    setState(() {
      if (a == 1) {
        //print('pase por 1');
        myColor = Colors.green.shade800;
        image1right = 200.0;
        image2right = -700.0;
        image3right = -700.0;
      } else if (a == 2) {
        //print('pase por 2');
        myColor = Colors.purple;
        image1right = -700.0;
        image2right = 200.0;
        image3right = -700.0;
      } else if (a == 3) {
        //print('pase por 3');
        myColor = Colors.pink.shade100;
        image1right = -700.0;
        image2right = -700.0;
        image3right = 200.0;
      }
    });
  }

  static TextStyle chakraPetchStyle() {
    return GoogleFonts.chakraPetch(
                        fontSize: 60.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.black);
  }

  static TextStyle chakraPetch800Style() {
    return GoogleFonts.chakraPetch(
                        fontSize: 60.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.black);
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Scaffold(
      body: Stack(
        children: [
          // Now the animation part

          //La bola gigante
          Positioned(
            bottom: -100,
            right: -200,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeIn,
              height: MediaQuery.of(context).size.height * 0.9,
              width: MediaQuery.of(context).size.height * 0.9,
              decoration: BoxDecoration(
                  color: myColor,
                  borderRadius: BorderRadius.circular(
                      MediaQuery.of(context).size.height * 0.5)),
            ),
          ),

          ImageHolder(
            image: 'assets/images/coffee1.png',
            right: image1right,
          ),
          ImageHolder(
            image: 'assets/images/coffee2.png',
            right: image2right,
          ),
          ImageHolder(
            image: 'assets/images/coffee3.png',
            right: image3right,
          ),

          // Las 3 imagenes flotantes en posicion bottom center

          Positioned(
              bottom: 20,
              right: MediaQuery.of(context).size.width * 0.40,
              child: Container(
                width: 400,
                child: Row(
                  children: [
                    HoverButton(
                      image: 'assets/images/coffee1.png',
                      hover: () {
                        changer(1);
                      },
                    ),
                    HoverButton(
                      image: 'assets/images/coffee2.png',
                      hover: () {
                        changer(2);
                      },
                    ),
                    HoverButton(
                      image: 'assets/images/coffee3.png',
                      hover: () {
                        changer(3);
                      },
                    ),
                  ],
                ),
              )),

          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      padding: const EdgeInsets.only(
                          left: 30.0, top: 15.0, right: 20.0),
                      //color: Colors.deepPurpleAccent,
                      height: 90.0,
                      child: const Image(
                          image: AssetImage('assets/images/star.png'))),
                  const Spacer(),
                  Container(
                    //color: Colors.deepPurpleAccent,
                    padding: const EdgeInsets.only(top: 15.0),
                    child: const Row(
                      children: [
                        NavBarButttons(
                          text: "What's New",
                        ),
                        NavBarButttons(
                          text: "Home",
                        ),
                        NavBarButttons(
                          text: "About me",
                        ),
                        NavBarButttons(
                          text: "Contact",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50.0,
              ),
              
              Container(
                //color: Colors.blueAccent,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 50.0,
                    right: 15.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: 'MIU ® ',
                          style: GoogleFonts.chakraPetch(
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                            color: colors.primary,
                            letterSpacing: 1.5
                          ),
                        ),
                      ),
                      Text(
                        "From the User, For the User",
                        style: chakraPetchStyle(),
                      ),
                      buildAnimatedTextKit(['Flutter Development','Android Development', 'Backend Development', 'iOS Development']),
                    ],
                  ),
                ),
              ),

              
              Container(
                //color: Colors.amber,
                width: MediaQuery.of(context).size.width * 0.7,
                padding: const EdgeInsets.only(
                  left: 50.0,
                  top: 10,
                  right: 15.0,
                ),
                child: Text(
                  "Ut sint cillum ipsum minim. Consectetur quis nostrud ea tempor minim occaecat cillum elit duis in dolor Lorem ullamco. Dolore ipsum exercitation adipisicing eiusmod dolore cupidatat. Nostrud nostrud mollit nostrud magna fugiat occaecat. Laborum ut aute do velit do adipisicing ea. Cupidatat in adipisicing laborum ea. Eiusmod ex velit occaecat mollit anim fugiat est aliqua voluptate irure dolore labore.",
                  style: GoogleFonts.poppins(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.black87),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.only(left: 50.0, right: 15.0, top: 15.0),
                padding: const EdgeInsets.symmetric(
                    horizontal: 12.0, vertical: 12.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7.0),
                    color: colors.primary),
                child: Text(
                  "DOWNLOAD MY RESUME",
                  style: GoogleFonts.montserrat(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget buildAnimatedTextKit(List<String> texts) {
    return Container(
      color: Colors.transparent,
      child: AnimatedTextKit(
        animatedTexts: texts.map((text) {
          return TyperAnimatedText(
            text,
            textStyle: chakraPetch800Style(),
          );
        }).toList(),
        pause: const Duration(milliseconds: 1000),
        displayFullTextOnTap: true,
        stopPauseOnTap: false,
      ),
    );
  }
}
