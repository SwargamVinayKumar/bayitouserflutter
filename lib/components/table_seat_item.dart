import 'package:bayitouser/utils/custom_color.dart';
import 'package:flutter/material.dart';

import '../models/response_model/table_response_model.dart';


class TableSeatItem extends StatelessWidget {
  final TableModel table;

  const TableSeatItem({super.key, required this.table,});

  @override
  Widget build(BuildContext context) {

    Color color = CustomColors.white;
    switch(table.type){
      case "available":
        color = CustomColors.white;
        break;
      case "selected":
        color = CustomColors.secondary;
        break;
      case 'booked':
        color = CustomColors.midGray;
        break;
    }

    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.table_restaurant,
            color: CustomColors.darkBlack,
            size: 24,
          ),
          const SizedBox(height: 4),
          Text(
            table.id.toString(),
            style: const TextStyle(
              color: CustomColors.darkBlack,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            table?.seatName ?? "",
            style: const TextStyle(
              color: CustomColors.darkBlack,
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

