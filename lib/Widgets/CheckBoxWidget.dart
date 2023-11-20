import '../Imports/ImportPackages.dart';

class CheckBoxWidget extends StatefulWidget {
  @override
  State<CheckBoxWidget> createState() => _CheckBoxWidgetState();

  String distance;

  CheckBoxWidget({required this.distance});
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  bool ischecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Checkbox(
              activeColor: Colors.black,
              value: ischecked,
              onChanged: (value) {
                setState(() {
                  ischecked = value!;
                });
              }),
          Text(
            widget.distance,
            style: TextStyle(
              fontFamily: 'Axiforma',
              fontSize: 14,
            ),
          )
        ],
      ),
    );
  }
}

List<CheckBoxWidget> CheckBoxWidgetList = [
  CheckBoxWidget(
    distance: 'Within 1000 km - 3000km',
  ),
  CheckBoxWidget(
    distance: 'Within 3001 km - 6000km',
  ),
  CheckBoxWidget(
    distance: 'Within 6001 km - 9000km',
  ),
  CheckBoxWidget(
    distance: 'Within 9001 km - 12000km',
  ),
  CheckBoxWidget(
    distance: 'Within 12001km - 15000km',
  ),
  CheckBoxWidget(
    distance: 'Within 15001km - 17000km',
  ),
];
