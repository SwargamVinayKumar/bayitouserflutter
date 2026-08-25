import 'package:bayitouser/components/custom_action_button.dart';
import 'package:bayitouser/components/custom_gradient_button.dart';
import 'package:bayitouser/components/table_seat_item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import '../components/people_count_component.dart';
import '../components/section_title_item.dart';
import '../models/response_model/table_response_model.dart';
import '../utils/custom_color.dart';
import 'package:get/get.dart';



class BookTablePage extends StatefulWidget {

  final String? image;
  final String? name;
  final String? location;
  final double? rating;

  const BookTablePage({super.key,this.image,this.location,this.rating,this.name});

  @override
  State<BookTablePage> createState() => _BookTablePageState();
}

class _BookTablePageState extends State<BookTablePage> {

  DateTime selectedDate = DateTime.now();
  int selectedTimeIndex = 0;
  int peopleCount = 0;
  List<String> timeSlots = [
    "10:00 AM",
    "11:00 AM",
    "12:00 PM",
  ];

  final List<String> seatNames = [
    "Corner",
    "Professional",
    "Family",
    "Study",
    "Business",
    "Window",
  ];

  late List<TableModel> tables = List.generate(
    seatNames.length,
        (index) => TableModel(
      id: index + 1,
      seatName: seatNames[index],
      type: "available",
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.primary,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                Row(
                  children: [
                    CustomActionButton(icon: Icons.arrow_back_ios_new_rounded, onTap: (){
                      Get.back();
                    }),
                    const SizedBox(width: 14),
                     Expanded(
                      child: Text(
                        "Book Table",
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: CustomColors.secondary,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: CustomColors.white.withOpacity(0.08),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.white24,
                    ),
                  ),
                  child: Row(
                    children: [
                      ClipRRect(borderRadius: BorderRadius.circular(16),
                        child: Image.asset(
                          widget.image ?? "No Image",
                          width: 90,
                          height: 90,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 16),
                       Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.name ?? "No Name",
                              style: GoogleFonts.sora(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: CustomColors.secondary,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              widget.location ?? "No Location",
                              style: GoogleFonts.sora(
                                fontSize: 16,
                                color: CustomColors.secondary.withOpacity(0.7),
                              ),
                            ),
                            const SizedBox(height: 8),
                            Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 20,
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  (widget.rating ?? 0.0).toString(),
                                  style: GoogleFonts.sora(
                                    fontSize: 14,
                                    color: CustomColors.secondary,
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
                const SizedBox(height: 24),
                const SectionTitleItem(title: "Select Date"),
                const SizedBox(height: 12),
                GestureDetector(
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                      context: context,
                      initialDate: selectedDate,
                      firstDate: DateTime.now(),
                      lastDate: DateTime(2030),
                      builder: (context, child) {
                        return Theme(
                          data: ThemeData.dark(),
                          child: child!,
                        );
                      },
                    );
                    if(pickedDate != null){
                      setState(() {
                        selectedDate = pickedDate;
                      });
                    }
                  },
                  child: buildBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          DateFormat(
                            "EEE, d MMM yyyy",
                          ).format(selectedDate),
                          style: GoogleFonts.sora(
                            fontSize: 18,
                            color: CustomColors.secondary,
                          ),
                        ),
                        const Icon(
                          Icons.calendar_month,
                          color: CustomColors.secondary,
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                const SectionTitleItem(title: "Select Time Slot (1 Hour)"),
                const SizedBox(height: 14),
                SizedBox(
                  height: 52,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index){
                      bool isSelected =
                          selectedTimeIndex == index;
                      return GestureDetector(
                        onTap: (){
                          setState(() {
                            selectedTimeIndex = index;
                          });
                        },
                        child: TimeSlotWidget(
                          title: timeSlots[index],
                          isSelected: isSelected,
                        ),
                      );
                    },
                    separatorBuilder: (_,__) =>
                    const SizedBox(width: 10),
                    itemCount: timeSlots.length,
                  ),
                ),
                const SizedBox(height: 24),
                const SectionTitleItem(title: "Number of People"),
                const SizedBox(height: 16),
                PeopleCountComponent(
                  peopleCount: peopleCount,
                  onAdd: () {
                    if(peopleCount < 6){
                      setState(() {
                        peopleCount++;
                      });
                    }
                  },
                  onRemove: () {
                    if(peopleCount > 0){
                      setState(() {
                        peopleCount--;
                      });
                    }
                  },
                ),
                const SizedBox(height: 24),
                const SectionTitleItem(title: "Select Seating Layout"),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceAround,
                  children: [
                    buildLegend(
                      color: CustomColors.red,
                      text: "Available",
                    ),
                    buildLegend(
                      color: CustomColors.secondary,
                      text: "Selected",
                    ),
                    buildLegend(
                      color: Colors.grey,
                      text: "Booked",
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.05),
                    borderRadius: BorderRadius.circular(24),
                    border: Border.all(
                      color: Colors.white24,
                    ),
                  ),
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: tables.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                      childAspectRatio: 1,
                    ),
                    itemBuilder: (context,index){
                      TableModel table = tables[index];
                      return GestureDetector(
                        onTap: (){

                        },
                        child: TableSeatItem(
                          table: table,
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 30),
                CustomGradientButton(title: "Confirm Reservation", onTap: () {
                  bool hasSelection = tables.any((table) => table.type == "selected",);
                  if(!hasSelection){
                    ScaffoldMessenger.of(context)
                        .showSnackBar(
                      const SnackBar(
                        content: Text(
                          "Please Select Table",
                        ),
                      ),
                    );
                    return;
                  }
                  setState(() {

                  });
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Reservation Confirmed",),
                    ),
                  );
                },),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// BOX
  Widget buildBox({
    required Widget child,
  }){
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 18,
      ),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.08),
        borderRadius: BorderRadius.circular(18),
      ),
      child: child,
    );
  }
  Widget buildLegend({
    required Color color,
    required String text,
  }){
    return Row(
      children: [
        Container(
          height: 16,
          width: 16,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        const SizedBox(width: 6),
        Text(
          text,
          style: GoogleFonts.sora(
            color: CustomColors.secondary,
          ),
        ),
      ],
    );
  }
}

class TimeSlotWidget extends StatelessWidget {

  final String title;
  final bool isSelected;

  const TimeSlotWidget({
    super.key,
    required this.title,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: isSelected
            ? CustomColors.secondary
            :  CustomColors.white,
      ),
      child: Center(
        child: Text(
          title,
          style: GoogleFonts.sora(
            fontWeight: FontWeight.w600,
            color: isSelected ? CustomColors.white : CustomColors.secondary,
          ),
        ),
      ),
    );
  }
}
