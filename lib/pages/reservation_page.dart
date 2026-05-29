import 'package:flutter/material.dart';

import '../components/reservation_cafe_card.dart';
import '../utils/custom_color.dart';

class ReservationPage extends StatefulWidget {
  const ReservationPage({super.key,required this.showBackArrow});

  final bool showBackArrow;

  @override
  State<ReservationPage> createState() =>
      _ReservationPageState();
}

class _ReservationPageState
    extends State<ReservationPage> {

  String selectedStatus = "Upcoming";
  final List<Map<String, dynamic>> reservationList = [
    {
      "status": "Upcoming",
      "image": "assets/images/cafe.jpg",
      "cafeName": "Roast & Co.",
      "location": "Banjara Hills",
      "date": "24 May 2024",
      "time": "02:00 PM",
      "people": "2 People",
      "table": "Table for 2",
    },
    {
      "status": "Completed",
      "image": "assets/images/cafe2.jpeg",
      "cafeName": "The Coffee Yard",
      "location": "Jubilee Hills",
      "date": "18 May 2024",
      "time": "06:00 PM",
      "people": "3 People",
      "table": "Table for 3",
    },

    {
      "status": "Cancelled",
      "image": "assets/images/cafe.jpg",
      "cafeName": "Cloud 9 Lounge",
      "location": "Hitech City",
      "date": "15 May 2024",
      "time": "08:00 PM",
      "table": "Table for 2",
    },
  ];

  @override
  Widget build(BuildContext context) {

    final filteredList =
    reservationList.where((reservation) {
      return reservation["status"] ==
          selectedStatus;
    }).toList();

    return Scaffold(
      body:Container(
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
                    widget.showBackArrow ?
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
                    ) : SizedBox(),
                    const SizedBox(width: 14),
                    const Expanded(
                      child: Text(
                        "Reservations",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    buildTab("Upcoming"),
                    const SizedBox(width: 10),
                    buildTab("Completed"),
                    const SizedBox(width: 10),
                    buildTab("Cancelled"),
                  ],
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: ListView.builder(
                    itemCount: filteredList.length,
                    itemBuilder: (context, index) {
                      final reservation = filteredList[index];
                      return ReservationCafeCard(
                        image: reservation["image"],
                        cafeName:
                        reservation["cafeName"],
                        location:
                        reservation["location"],
                        date: reservation["date"],
                        time: reservation["time"],
                        table: reservation["table"],
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

  Widget buildTab(String status) {
    final bool isSelected = selectedStatus == status;
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedStatus = status;
          });
        },
        child: Container(
          height: 42,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius:
            BorderRadius.circular(14),
            gradient: isSelected
                ? const LinearGradient(
              colors: [

                Color(0xffFF7B54),
                Color(0xffFF4D6D),
              ],
            )
                : null,

            color: isSelected
                ? null
                : Colors.white.withOpacity(0.06),
          ),

          child: Text(
            status,
            style: TextStyle(
              color: Colors.white,
              fontWeight: isSelected
                  ? FontWeight.w700
                  : FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}