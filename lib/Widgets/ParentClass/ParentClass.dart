import 'package:airbnb_clone/Imports/ImportPackages.dart';

class SearchingClass {
  static List<CardDesign> WishList = [];
  static GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();

  List<CardDesign> Search(List cardDetails, String category) {
    List<CardDesign> temp = [];
    for (int i = 0; i < CardDesign.PlaceDetails.length; i++) {
      if (CardDesign.PlaceDetails[i].categoryname!.contains(category)) {
        temp.add(CardDesign.PlaceDetails[i]);
      }
    }
    return temp;
  }

  List<Widget> CardGenerateList(List<String> list) {
    return list
        .map(
          (images) => Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            margin: EdgeInsets.only(right: 18),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image(
                  image: AssetImage(images),
                  fit: BoxFit.cover,
                )),
          ),
        )
        .toList();
  }

  bool isAvailableDateMethod(int specday, int specmonth, int startday,
      int startmonth, int endday, int endmonth) {
    if ((specmonth > startmonth ||
            (specmonth == startmonth && specday >= startday)) &&
        (specmonth < endmonth || specmonth == endmonth && specday <= endday)) {
      return true;
    } else
      return false;
  }

  List<CardDesign> FilterSearch(List<CardDesign> placeDetails, int minimumprice,
      int maximumprice, DateTime dt) {
    List<CardDesign> result = [];
    for (int index = 0; index < placeDetails.length; index++) {
      if ((placeDetails[index].amount! >= minimumprice &&
          placeDetails[index].amount! <= maximumprice)) {
        // price
        if (true) {
          if (isAvailableDateMethod(
            dt.day,
            dt.month,
            placeDetails[index].startingdate!,
            placeDetails[index].startingmonth!,
            placeDetails[index].endingdate!,
            placeDetails[index].endingmonth!,
          )) {
            result.add(placeDetails[index]);
          }
        }
      }
    }

    return result;
  }
}
