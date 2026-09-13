import 'package:bayitouser/shimmer/single_item_shimmer.dart';
import 'package:bayitouser/components/empty_data_view.dart';
import 'package:bayitouser/models/responseModels/user_response_model.dart';
import 'package:bayitouser/pages/professional_book_table_page.dart';
import 'package:bayitouser/shimmer/meet_people_shimmer.dart';
import 'package:bayitouser/utils/statefullwrapper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/custom_action_button.dart';
import '../components/custom_search_bar.dart';
import '../components/custom_tab_component.dart';
import '../components/meet_people_card.dart';
import '../models/requestModels/page_request_model.dart';
import '../models/responseModels/booking_response_model.dart';
import '../models/responseModels/page_model.dart';
import '../utils/custom_color.dart';
import '../view_models/user_view_model.dart';

class MeetPeoplePage extends StatefulWidget {
  const MeetPeoplePage({super.key});

  @override
  State<MeetPeoplePage> createState() => _MeetPeoplePageState();
}

class _MeetPeoplePageState extends State<MeetPeoplePage> {
  final TextEditingController searchController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  final ValueNotifier<int> selectedIndex = ValueNotifier(0);
  final UserViewModel userViewModel = Get.put(UserViewModel());

  final List<String> tabs = [
    "All",
    "Professional",
    "Business",
    "Study",
    "Family",
  ];

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.position.pixels >= _scrollController.position.maxScrollExtent - 200) {
      _fetchUsers(isRefresh: false);
    }
  }

  void _fetchUsers({bool isRefresh = true}) {
    userViewModel.fetchUsers(
      PaginationRequestModel(
        page: 1,
        type: tabs[selectedIndex.value] == "All" ? null : tabs[selectedIndex.value].toLowerCase(),
        query: searchController.text.trim().isEmpty ? null : searchController.text.trim(),
      ),
      isRefresh,
    );
  }

  @override
  void dispose() {
    searchController.dispose();
    _scrollController.dispose();
    selectedIndex.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StatefulWrapper(
      onInit: () {
        _fetchUsers(isRefresh: true);
      },
      child: Scaffold(
        backgroundColor: CustomColors.primary,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                const SizedBox(height: 10),
                Row(
                  children: [
                    CustomActionButton(
                      icon: Icons.arrow_back_ios_new_rounded,
                      onTap: () => Get.back(),
                    ),
                    const SizedBox(width: 14),
                    Expanded(
                      child: Text(
                        "Meet People",
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700, color: CustomColors.secondary),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                CustomSearchBar(
                  controller: searchController,
                  onChanged: (value) {
                    setState(() {});
                    _fetchUsers(isRefresh: true);
                  },
                  hinTxt: "Search people or profession",
                ),
                const SizedBox(height: 20),
                ValueListenableBuilder<int>(
                  valueListenable: selectedIndex,
                  builder: (context, value, child) {
                    return CustomTabs(
                      tabs: tabs,
                      selectedIndex: value,
                      onChanged: (index) {
                        selectedIndex.value = index;
                        _fetchUsers(isRefresh: true);
                      },
                    );
                  },
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: Obx(() {
                    final paginationModel = userViewModel.fetchUsersObserver.value;
                    final state = paginationModel.data.value;

                    return state.when(
                      init: () => const SizedBox(),
                      loading: (_) => paginationModel.page == 1 
                          ? const MeetPeopleShimmer() 
                          : _buildList(paginationModel),
                      error: (error) => Center(child: Text(error, style: const TextStyle(color: CustomColors.secondary))),
                      success: (response) {
                        final users = response?.data?.bookings ?? [];
                        if (users.isEmpty) {
                          return const EmptyDataView(text: "No People Found");
                        }
                        return _buildList(paginationModel);
                      },
                    );
                  }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildList(PaginationModel pagination) {
    final List<BookingModel> users = (pagination.data.value as dynamic).maybeWhen(
      success: (response) => response?.data?.bookings ?? [],
      orElse: () => <BookingModel>[],
    );

    return RefreshIndicator(
      onRefresh: () async => _fetchUsers(isRefresh: true),
      child: ListView.builder(
        controller: _scrollController,
        physics: const AlwaysScrollableScrollPhysics(),
        itemCount: users.length + (pagination.isPaginationCompleted ? 0 : 1),
        itemBuilder: (context, index) {
          if (index == users.length) {
            return const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: SinglePersonShimmer(),
            );
          }
          final user = users[index];
          return MeetPeopleCard(
            booking: user,
            onTap: () {
              Get.to(() => ProfessionalBookTablePage(bookingId: user.id ?? ""));
            },
          );
        },
      ),
    );
  }
}
