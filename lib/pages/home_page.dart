import 'package:bayitouser/components/featured_place_card.dart';
import 'package:bayitouser/components/home_menu_card.dart';
import 'package:bayitouser/pages/cafe_page.dart';
import 'package:bayitouser/pages/meet_people_page.dart';
import 'package:bayitouser/pages/reservation_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/section_title_item.dart';
import '../utils/custom_color.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Map<String, String>> featuredPlaces = [
    {
      "image": "assets/images/cafe.jpg",
      "title": "Roast & Co.",
      "location": "Hyderabad",
      "rating": "4.8",
    },
    {
      "image": "assets/images/cafe.jpg",
      "title": "Coffee House",
      "location": "Bangalore",
      "rating": "4.7",
    },
    {
      "image": "assets/images/cafe.jpg",
      "title": "Blue Cafe",
      "location": "Chennai",
      "rating": "4.9",
    },
  ];

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
                                color: CustomColors.white.withOpacity(0.3),
                                blurRadius: 10,
                                spreadRadius: 2,
                              ),
                            ],
                          ),
                          child: CircleAvatar(
                            radius: 60,
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
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: CustomColors.secondary..withOpacity(0.2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "Book your Table • Meet your People",
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 14,
                        letterSpacing: 0.5,
                        fontWeight: FontWeight.w600,
                        color: CustomColors.white.withOpacity(0.95),
                      ),
                    ),
                  ),
                ),
                // const CustomSearchBar(isReadOnly: true),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
                  children: [
                    SectionTitleItem(title: "Quick Access",fontSize: 16,),
                    Text(
                      "See All",
                      style: GoogleFonts.sora(
                        color: Colors.white70,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
                Divider(
                  height: 1,
                  thickness: 0.4,
                ),
                const SizedBox(height: 18),
                GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: 1.4,
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
                      title: "Meet People",
                      subtitle: "Connect nearby",
                      icon: Icons.handshake,
                      gradient: [
                        Color(0xff3E2723),
                        Color(0xff5D4037),
                      ],
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MeetPeoplePage(),
                          ),
                        );
                      },
                    ),
                    HomeMenuCard(
                      title: "Reservations",
                      subtitle: "Booking history",
                      icon: Icons.event,
                      gradient: [
                        Color(0xff048035),
                        Color(0xff3d8f40),
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
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SectionTitleItem(title: "Trending Places",fontSize: 16,),
                    Text(
                      "See All",
                      style: GoogleFonts.sora(
                        color: Colors.white70,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
                Divider(
                  height: 1,
                  thickness: 0.4,
                ),
                const SizedBox(height: 12),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.2,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: featuredPlaces.length,
                    separatorBuilder: (_, __) => const SizedBox(width: 12),
                    itemBuilder: (context, index) {
                      final place = featuredPlaces[index];
                      return SizedBox(
                        width: MediaQuery.sizeOf(context).width * 0.34,
                        child: FeaturedPlaceCard(
                          image: place["image"]!,
                          title: place["title"]!,
                          location: place["location"]!,
                          rating: place["rating"]!,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
     );
    }
}
