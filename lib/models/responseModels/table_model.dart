enum SeatType{
  available,
  selected,
  booked,
}

class TableModel {

  final int id;
  final String seatName;
  SeatType type;

  TableModel({
    required this.id,
    required this.seatName,
    required this.type,
  });
}


