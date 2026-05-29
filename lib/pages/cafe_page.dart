import 'package:bayitouser/components/custom_search_bar.dart';
import 'package:flutter/material.dart';
import '../components/cafe_card.dart';
import '../utils/custom_color.dart';


class CafePage extends StatefulWidget {
  const CafePage({super.key});

  @override
  State<CafePage> createState() => _CafePageState();
}

class _CafePageState extends State<CafePage> {

  final TextEditingController searchController =
  TextEditingController();

  final List<Map<String, dynamic>> cafeList = [

    {
      "image": "assets/images/cafe.jpg",
      "cafeName": "Roast & Co.",
      "category": "Cafe",
      "location": "Banjara Hills",
      "rating": 4.6,
      "distance": 0.3,
      "openTime": "11:00 PM",
    },

    {
      "image": "assets/images/cafe2.jpeg",
      "cafeName": "Cloud 9 Lounge",
      "category": "Rooftop",
      "location": "Jubilee Hills",
      "rating": 4.7,
      "distance": 0.6,
      "openTime": "1:00 AM",
    },
  ];

  List<Map<String, dynamic>> filteredCafeList = [];

  @override
  void initState() {
    super.initState();
    filteredCafeList = cafeList;
  }
  void searchCafe(String value) {
    setState(() {
      filteredCafeList =
          cafeList.where((cafe) {
            final cafeName =
            cafe["cafeName"]
                .toString()
                .toLowerCase();

            final location =
            cafe["location"]
                .toString()
                .toLowerCase();

            final search =
            value.toLowerCase();

            return cafeName.contains(search) ||
                location.contains(search);

          }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: CustomColors.mainGradientColor,
        ),
        child: SafeArea(
          child: Padding(
            padding:
            const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                const SizedBox(height: 10),
                Row(
                  children: [
                    Container(
                      height: 42,
                      width: 42,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.08),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios_new_rounded,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                    const SizedBox(width: 14),
                    const Expanded(
                      child: Text(
                        "Nearby Places",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                CustomSearchBar(
                  controller: searchController,
                  onChanged: searchCafe,
                ),
                const SizedBox(height: 18),
                Expanded(
                  child: ListView.builder(
                    itemCount:
                    filteredCafeList.length,
                    itemBuilder: (context, index) {
                      final cafe = filteredCafeList[index];
                      return CafeCard(
                        image: cafe["image"],
                        cafeName:
                        cafe["cafeName"],
                        category:
                        cafe["category"],
                        location:
                        cafe["location"],
                        rating:
                        cafe["rating"],
                        distance:
                        cafe["distance"],
                        openTime:
                        cafe["openTime"],
                        onTap: () {},
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
