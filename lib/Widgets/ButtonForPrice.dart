import '../Imports/ImportPackages.dart';

Row MAXMIN({required String title, required TextEditingController controller}) {
  return Row(
    children: [
      Container(
        width: 90,
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.black),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
                fontFamily: 'Axiforma', fontSize: 20, color: Colors.white
                // fontWeight: FontWeight.bold
                ),
          ),
        ),
      ),
      SizedBox(
        width: 10,
      ),
      Container(
        width: 90,
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
        child: Center(
          child: TextFormField(
            controller: controller,
            style: TextStyle(
                fontFamily: 'Axiforma', fontSize: 20, color: Colors.black
                // fontWeight: FontWeight.bold
                ),
          ),
        ),
      )
    ],
  );
}
