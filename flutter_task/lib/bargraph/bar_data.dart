import 'individual_line.dart';

class bar_data {
  final double sunamount;
  final double monamount;
  final double tueamount;
  final double wedamount;
  final double thuamount;
  final double friamount;
  final double satamount;

  bar_data(
      {required this.sunamount,
      required this.monamount,
      required this.tueamount,
      required this.wedamount,
      required this.thuamount,
      required this.friamount,
      required this.satamount});

  List<individualbar> bardata = [];

  void initializebardata() {
    bardata = [
      individualbar(x: 0, y: sunamount),
      individualbar(x: 1, y: monamount),
      individualbar(x: 2, y: tueamount),
      individualbar(x: 3, y: wedamount),
      individualbar(x: 4, y: thuamount),
      individualbar(x: 5, y: friamount),
      individualbar(x: 6, y: satamount),
    ];
  }
}
