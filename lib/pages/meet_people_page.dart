import 'package:bayitouser/components/empty_data_view.dart';
import 'package:bayitouser/utils/statefullwrapper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/custom_action_button.dart';
import '../components/custom_search_bar.dart';
import '../components/custom_tab_component.dart';
import '../components/meet_people_card.dart';
import '../models/requestModels/page_request_model.dart';
import '../utils/custom_color.dart';
import '../view_models/user_view_model.dart';

class MeetPeoplePage extends StatefulWidget {
  const MeetPeoplePage({super.key});

  @override
  State<MeetPeoplePage> createState() => _MeetPeoplePageState();
}

class _MeetPeoplePageState extends State<MeetPeoplePage> {

  final TextEditingController searchController = TextEditingController();
  final ValueNotifier<int> selectedIndex = ValueNotifier(0);

  final List<String> tabs = [
    "All",
    "Professional",
    "Business",
    "Study",
    "Family",
  ];

  final List<Map<String, dynamic>> peopleList = [

    {
      "image": "assets/images/cafe.jpg",
      "name": "Vinay",
      "category": "Professional",
      "profession": "UI/UX Designer",
    },

    {
      "image": "assets/images/cafe2.jpeg",
      "name": "Jawahar",
      "category": "Business",
      "profession": "Startup Founder",
    },

    {
      "image": "assets/images/cafe.jpg",
      "name": "Teja",
      "category": "Family",
      "profession": "Family Counselor",
    },

    {
      "image": "assets/images/cafe2.jpeg",
      "name": "Madhan",
      "category": "Study",
      "profession": "B.Tech(CSE)",
    },
  ];

  List<Map<String, dynamic>>filteredPeopleList = [];

  final UserViewModel userViewModel = Get.put(UserViewModel());

  @override
  void initState() {
    super.initState();
    filteredPeopleList = peopleList;
  }
  @override
  void dispose() {
    searchController.dispose();
    selectedIndex.dispose();
    super.dispose();
  }
  void searchPeople(String value) {
    final selectedTab = tabs[selectedIndex.value];
    setState(() {
      filteredPeopleList = peopleList.where((people) {
        final name = people["name"].toString().toLowerCase();
        final category = people["category"].toString().toLowerCase();
        final search = value.toLowerCase();
        final matchesSearch = name.contains(search) || category.contains(search);
        final matchesTab = selectedTab == "All"
                ? true : people["category"] == selectedTab;
        return matchesSearch && matchesTab;
      }).toList();
    });
  }

  void filterByTab(int index) {
    selectedIndex.value = index;
    final selectedTab = tabs[index];
    final search = searchController.text.toLowerCase();
    setState(() {
      filteredPeopleList = peopleList.where((people) {
        final name = people["name"].toString().toLowerCase();
        final category = people["category"].toString().toLowerCase();
        final matchesSearch = name.contains(search) || category.contains(search);
        final matchesTab = selectedTab == "All" ? true : people["category"] == selectedTab;
        return matchesSearch && matchesTab;
      }).toList();
    });
  }
  @override
  Widget build(BuildContext context) {
    return StatefulWrapper(
      onInit: (){
        userViewModel.fetchUsers(
          const PaginationRequestModel(page: 1),
          true,
        );
      },
      child: Scaffold(
        backgroundColor: CustomColors.primary,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Column(
              children: [
                const SizedBox(height: 10),
                Row(
                  children: [
                    CustomActionButton(
                      icon: Icons.arrow_back_ios_new_rounded,
                      onTap: () {
                        Get.back();
                      },
                    ),
                    const SizedBox(width: 14),
                     Expanded(
                      child: Text(
                        "Meet People",
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: CustomColors.secondary,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                CustomSearchBar(
                  controller: searchController,
                  onChanged: searchPeople,
                  hinTxt: "Search people or profession",
                ),
                const SizedBox(height: 20),
                ValueListenableBuilder<int>(
                  valueListenable: selectedIndex,
                  builder: (context, value, child) {
                    return CustomTabs(
                      tabs: tabs,
                      selectedIndex: value,
                      onChanged: filterByTab,
                    );
                  },
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: Obx(() {
                    final observer = userViewModel.fetchUsersObserver.value;

                    return observer.data.value.when(
                      loading: (_) => const Center(
                        child: CircularProgressIndicator(),
                      ),

                      error: (error) => Center(
                        child: Text(
                          error,
                          style: const TextStyle(color: CustomColors.secondary),
                        ),
                      ),
                      init: () => const SizedBox(),
                      success: (response) {
                        final users = response.data ?? [];
                        if (users.isEmpty) {
                          return const EmptyDataView(text: "No People Found");
                        }
                        return ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          itemCount: users.length,
                          itemBuilder: (context, index) {
                            final user = users[index];
                            return MeetPeopleCard(
                              user: user,
                              onTap: () {},
                            );
                          },
                        );
                      },
                    );
                  }),
                )
                // Expanded(
                //   child: filteredPeopleList.isEmpty
                //       ? const Center(
                //     child: Text(
                //       "No People Found",
                //       style: TextStyle(
                //         color: CustomColors.secondary,
                //         fontSize: 16,
                //         fontWeight: FontWeight.w500,
                //       ),
                //     ),
                //   ) : ListView.builder(
                //     physics: const BouncingScrollPhysics(),
                //     itemCount: filteredPeopleList.length,
                //     itemBuilder: (context, index) {
                //       final people = filteredPeopleList[index];
                //       return MeetPeopleCard(
                //         image: people["image"],
                //         name: people["name"],
                //         category:  people["category"],
                //         profession: people["profession"],
                //         onTap: () {},
                //       );
                //     },
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


