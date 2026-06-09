import 'package:bayitouser/components/tab_item.dart';
import 'package:flutter/material.dart';

class CustomTabs extends StatelessWidget {

  final List<String> tabs;
  final int selectedIndex;
  final ValueChanged<int> onChanged;

  const CustomTabs({
    super.key,
    required this.tabs,
    required this.selectedIndex,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: tabs.length,
        separatorBuilder: (_, __) =>
        const SizedBox(width: 10),
        itemBuilder: (context, index) {
          final bool isSelected = selectedIndex == index;
          return TabItem(
            title: tabs[index],
            isSelected: isSelected,
            onTap: () {
              onChanged(index);
            },
          );
        },
      ),
    );
  }
}
