import 'package:airbnb_clone/Imports/ImportPackages.dart';

class CategoryWidgetClass {
  String categoryName;
  String categoryIcon;

  CategoryWidgetClass({required this.categoryName, required this.categoryIcon});
}

class CategoryWidget {
  Widget CategoryWidgetGen(
      {required String CategoryIcon,
      required String CategoryName,
      required int index,
      required Function fuct,
      required int selectedindex}) {
    return Material(
      color: Colors.white,
      shadowColor: Colors.white,
      child: InkWell(
        onTap: () {
          fuct();
        },
        child: Container(
          width: 100,
          decoration: BoxDecoration(
              border: (selectedindex == index)
                  ? Border(
                      bottom: BorderSide(width: 3, color: Colors.black),
                    )
                  : Border(bottom: BorderSide(width: 0, color: Colors.white))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                CategoryIcon,
                height: 40,
                color:
                    (selectedindex != index) ? Colors.grey[500] : Colors.black,
              ),
              // Image.asset('logos/farm64.png', height: 40,)
              SizedBox(
                height: 5,
              ),
              Text(
                CategoryName,
                style: TextStyle(
                    color: (selectedindex != index)
                        ? Colors.grey[500]
                        : Colors.black,
                    fontSize: 12,
                    fontFamily: 'Axiforma'),
              ),

              // SizedBox(width: 5,)
            ],
          ),
        ),
      ),
    );
  }
}

List<CategoryWidgetClass> CategoryWidgetList = [
  CategoryWidgetClass(
    categoryName: 'Trending',
    categoryIcon: 'assets/logos/trending.svg',
  ),
  CategoryWidgetClass(
    categoryName: 'Farm',
    categoryIcon: 'assets/logos/farm.svg',
  ),
  CategoryWidgetClass(
    categoryName: 'Amazing views',
    categoryIcon: 'assets/logos/view.svg',
  ),
  CategoryWidgetClass(
    categoryName: 'Future',
    categoryIcon: 'assets/logos/future.svg',
  ),
  CategoryWidgetClass(
      categoryName: 'Amazing pools', categoryIcon: 'assets/logos/pools.svg'),
  CategoryWidgetClass(
    categoryName: 'Tree House',
    categoryIcon: 'assets/logos/treehouse.svg',
  ),
  CategoryWidgetClass(
    categoryName: 'Rooms',
    categoryIcon: 'assets/logos/rooms.svg',
  ),
  CategoryWidgetClass(
    categoryName: 'Beach front',
    categoryIcon: 'assets/logos/beachfront.svg',
  ),
  CategoryWidgetClass(
      categoryName: 'Tiny homes', categoryIcon: 'assets/logos/tinyhouse.svg'),
  CategoryWidgetClass(
    categoryName: 'Cabins',
    categoryIcon: 'assets/logos/cabin.svg',
  ),
  CategoryWidgetClass(
    categoryName: 'Lake view ',
    categoryIcon: 'assets/logos/lake.svg',
  ),
  CategoryWidgetClass(
    categoryName: 'Breakfast',
    categoryIcon: 'assets/logos/breakfast.svg',
  ),
  CategoryWidgetClass(
      categoryName: 'Tree House', categoryIcon: 'assets/logos/treehouse.svg'),
  CategoryWidgetClass(
    categoryName: 'Amazing pools',
    categoryIcon: 'assets/logos/pools.svg',
  ),
  //CategoryWidget(categoryName: 'Countryside', CategoryIcon: 'assets/logos/countryside.svg'),
  //CategoryWidget(categoryName: 'Castle', CategoryIcon: 'assets/logos/castle.svg',),
];
