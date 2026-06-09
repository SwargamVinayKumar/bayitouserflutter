import 'package:bayitouser/components/cafe_detail_card.dart';
import 'package:bayitouser/components/custom_action_button.dart';
import 'package:bayitouser/components/custom_gradient_button.dart';
import 'package:bayitouser/pages/book_table_page.dart';
import 'package:flutter/material.dart';

class CafeDetailsPage extends StatelessWidget {
  final String image;
  final String? cafeName;
  final String? location;
  final double? rating;
  final int? reviews;
  final String? description;
  final bool? showButton;


  const CafeDetailsPage({
    super.key,
    required this.image,
    this.cafeName,
    this.location,
    this.rating,
    this.reviews,
    this.description,
    this.showButton = true
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F3F0),
      body: Stack(
        children: [
          SizedBox(
            height: 330,
            width: double.infinity,
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 12,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomActionButton(
                    icon: Icons.arrow_back_ios_new_rounded,
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  CustomActionButton(
                    icon: Icons.favorite_border_rounded,
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.64,
              width: double.infinity,
              padding: const EdgeInsets.all(22),
              decoration: const BoxDecoration(
                color: Color(0xffF7F3F0),
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(34),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      cafeName ?? "No Name",
                      style: const TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w800,
                        color: Color(0xff2D2D2D),
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      location ?? "No Location",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey.shade700,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 14),
                    Row(
                      children: [
                        const Icon(
                          Icons.star_rounded,
                          color: Colors.orange,
                          size: 22,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          rating.toString(),
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          "($reviews reviews)",
                          style: TextStyle(
                            color: Colors.grey.shade600,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 14),
                    Row(
                      children: [
                        Text(
                          "Open Now",
                          style: TextStyle(
                            color: Colors.green.shade700,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          "• Closes 11:00 PM",
                          style: TextStyle(
                            color: Colors.green.shade700,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 28),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        CafeDetailCard(
                          icon: Icons.call_outlined,
                          title: "Call",
                        ),
                        CafeDetailCard(
                          icon: Icons.location_on_outlined,
                          title: "Direction",
                        ),
                        CafeDetailCard(
                          icon: Icons.share_outlined,
                          title: "Share",
                        ),
                        CafeDetailCard(
                          icon: Icons.bookmark_border_rounded,
                          title: "Save",
                        ),
                      ],
                    ),
                    const SizedBox(height: 28),
                    const Text(
                      "About",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      description ?? "gyuabdhyuagdyubnasudcgyuascbhjsdabyugyushabdyisayudgyusdagyugsduy",
                      style: TextStyle(
                        color: Colors.grey.shade700,
                        height: 1.5,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(height: 24),
                    const Text(
                      "Highlights",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 14),
                    Wrap(
                      spacing: 10,
                      runSpacing: 10,
                      children: const [
                        CafeDetailCard(title: "Free WiFi",isChip: true),
                        CafeDetailCard(title: "Live Music",isChip: true),
                      ],
                    ),
                    SizedBox(height: 20),
                    showButton == true ?  CustomGradientButton(
                      title: "Book Table",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BookTablePage(image: image,name : cafeName,location: location,rating: rating,),
                          ),
                        );
                      },
                    ) : SizedBox(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
