import 'package:bayitouser/components/custom_search_bar.dart';
import 'package:bayitouser/components/home_menu_card.dart';
import 'package:bayitouser/pages/cafe_page.dart';
import 'package:bayitouser/pages/reservation_page.dart';
import 'package:flutter/material.dart';
import '../utils/custom_color.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: CustomColors.mainGradientColor,
        ),
        child:  SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: TweenAnimationBuilder(
                    tween: Tween<double>(begin: 0, end: 1),
                    duration: const Duration(milliseconds: 600),
                    builder: (context, double scale, child) {
                      return Transform.scale(
                        scale: scale,
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white.withOpacity(0.3),
                                blurRadius: 10,
                                spreadRadius: 2,
                              ),
                            ],
                          ),
                          child: CircleAvatar(
                            radius: 80,
                            backgroundImage: const AssetImage(
                              "assets/images/bayitoLogo.jpeg",
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 8),
                Center(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "Book your Table • Meet your People",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.white.withOpacity(0.95),
                        letterSpacing: 0.5,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const CustomSearchBar(isReadOnly: true),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
                  children: [
                    sectionTitle("Quick Access"),
                    Text(
                      "See All",
                      style: TextStyle(
                        color:
                        Colors.orangeAccent.shade200,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 18),
                GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: 1.0,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  shrinkWrap: true,
                  physics:
                  const NeverScrollableScrollPhysics(),
                  children:  [
                    HomeMenuCard(
                      title: "Nearby",
                      subtitle: "Discover places",
                      icon: Icons.location_on_rounded,
                      gradient: [
                        Color(0xffa30c0f),
                        Color(0xffdc5512),
                      ],
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CafePage(),
                          ),
                        );
                      },
                    ),
                    HomeMenuCard(
                      title: "Book Table",
                      subtitle: "Reserve instantly",
                      icon: Icons.table_restaurant,
                      gradient: [
                        Color(0xff55069a),
                        Color(0xffd625a6),
                      ],
                    ),

                    HomeMenuCard(
                      title: "Meet People",
                      subtitle: "Connect nearby",
                      icon: Icons.handshake,
                      gradient: [
                        Color(0xff3E2723),
                        Color(0xff5D4037),
                      ],
                    ),

                    HomeMenuCard(
                      title: "Reservations",
                      subtitle: "Booking history",
                      icon: Icons.event,
                      gradient: [
                        Color(0xff14532D),
                        Color(0xff0B6B3A),
                      ],
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ReservationPage(showBackArrow: true),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
          ),
       );
    }
  Widget sectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
