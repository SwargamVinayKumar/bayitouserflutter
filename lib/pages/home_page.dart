import 'package:bayitouser/components/custom_search_bar.dart';
import 'package:bayitouser/components/home_menu_card.dart';
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
          gradient: CustomColors.primaryGradientColor,
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
                                blurRadius: 20,
                                spreadRadius: 5,
                              ),
                            ],
                          ),
                          child: CircleAvatar(
                            radius: 40,
                            backgroundImage: const AssetImage(
                              "assets/images/bayitoLogo.jpeg",
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.white,
                                  width: 3,
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 8),
                Center(
                  child: ShaderMask(
                    shaderCallback: (bounds) => const LinearGradient(
                      colors: [Colors.white, Colors.white70],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ).createShader(bounds),
                    child: const Text(
                      "Bayito",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 1.5,
                      ),
                    ),
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
                const CustomSearchBar(),
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
                  children: const [
                    HomeMenuCard(
                      title: "Nearby",
                      subtitle: "Discover places",
                      icon: Icons.location_on_rounded,
                      gradient: [
                        Color(0xffFF9966),
                        Color(0xffFF5E62),
                      ],
                    ),
                    HomeMenuCard(
                      title: "Book Table",
                      subtitle: "Reserve instantly",
                      icon: Icons.table_restaurant,
                      gradient: [
                        Color(0xff36D1DC),
                        Color(0xff5B86E5),
                      ],
                    ),

                    HomeMenuCard(
                      title: "Meet People",
                      subtitle: "Connect nearby",
                      icon: Icons.handshake,
                      gradient: [
                        Color(0xff834d9b),
                        Color(0xffd04ed6),
                      ],
                    ),

                    HomeMenuCard(
                      title: "Reservations",
                      subtitle: "Booking history",
                      icon: Icons.event,
                      gradient: [
                        Color(0xfff953c6),
                        Color(0xffb91d73),
                      ],
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
