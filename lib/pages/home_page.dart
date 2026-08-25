import 'package:bayitouser/components/featured_place_card.dart';
import 'package:bayitouser/components/home_menu_card.dart';
import 'package:bayitouser/pages/cafe_page.dart';
import 'package:bayitouser/pages/meet_people_page.dart';
import 'package:bayitouser/pages/reservation_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/section_title_item.dart';
import '../utils/custom_color.dart';
import 'package:get/get.dart';


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
      backgroundColor: CustomColors.primary,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.sizeOf(context).height * 0.22,
                decoration: BoxDecoration(
                  color: CustomColors.secondary..withOpacity(0.2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: CircleAvatar(
                    radius: 40,
                    backgroundColor: CustomColors.secondary..withOpacity(0.2),
                    child: Image.asset("assets/images/bayitoLogo.png"),
                  ),
                ),
              ),

              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SectionTitleItem(title: "Quick Access",fontSize: 16),
                  Text(
                    "See All",
                    style: GoogleFonts.sora(
                      color: CustomColors.secondary.withOpacity(0.7),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
              const Divider(
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
                    gradient: const [
                      Color(0xffa30c0f),
                      Color(0xffdc5512),
                    ],
                    onTap: (){
                      Get.to(() => const CafePage());
                    },
                  ),
                  HomeMenuCard(
                    title: "Book Table",
                    subtitle: "Reserve instantly",
                    icon: Icons.table_restaurant,
                    gradient: const [
                      Color(0xff55069a),
                      Color(0xffd625a6),
                    ],
                    onTap: (){
                      Get.to(() => const CafePage());
                    },
                  ),
                  HomeMenuCard(
                    title: "Meet People",
                    subtitle: "Connect nearby",
                    icon: Icons.handshake,
                    gradient: const [
                      Color(0xff3E2723),
                      Color(0xff5D4037),
                    ],
                    onTap: (){
                      Get.to(() => const MeetPeoplePage());
                    },
                  ),
                  HomeMenuCard(
                    title: "Reservations",
                    subtitle: "Booking history",
                    icon: Icons.event,
                    gradient: const [
                      Color(0xff048035),
                      Color(0xff3d8f40),
                    ],
                    onTap: (){
                      Get.to(() => const ReservationPage(showBackArrow: true));
                    },
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SectionTitleItem(title: "Trending Places",fontSize: 16,),
                  Text(
                    "See All",
                    style: GoogleFonts.sora(
                      color: CustomColors.secondary.withOpacity(0.7),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
              const Divider(
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
     );
    }
}
