import 'package:flutter/material.dart';


class FeaturedPlaceCard extends StatelessWidget {
  final String image;
  final String title;
  final String location;
  final String rating;

  const FeaturedPlaceCard({
    super.key,
    required this.image,
    required this.title,
    required this.location,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.08),
        borderRadius: BorderRadius.circular(28),
        border: Border.all(
          color: Colors.white12,
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(28),
        child: Column(
          children: [

            Expanded(
              child: Stack(
                children: [

                  SizedBox(
                    width: double.infinity,
                    child: Image.network(
                      image,
                      fit: BoxFit.cover,
                    ),
                  ),

                  Positioned(
                    top: 15,
                    right: 15,
                    child: Container(
                      padding:
                      const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.black54,
                        borderRadius:
                        BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [

                          const Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 16,
                          ),

                          const SizedBox(width: 4),

                          Text(
                            rating,
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: [

                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 8),

                  Row(
                    children: [

                      const Icon(
                        Icons.location_on,
                        color: Colors.orange,
                        size: 18,
                      ),

                      const SizedBox(width: 4),

                      Text(
                        location,
                        style: TextStyle(
                          color: Colors.white
                              .withOpacity(0.7),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


