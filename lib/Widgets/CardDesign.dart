import 'package:airbnb_clone/Imports/ImportPackages.dart';

class CardDesign {
  String? townname;
  String? city;
  String? spotlocation;
  String? availability;
  int? amount;
  double? rating;
  String? categoryname;

  List<String>? images;
  int? likes;

  bool isLiked = false;

  CarouselController carouselController = CarouselController();
  bool isBookMarked = false;
  int? startingdate;

  int? startingmonth;

  int? endingdate;

  int? endingmonth;
  String ?elongated ;
  CardDesign(
      {
        this.elongated,
        this.startingdate,
      this.endingdate,
      this.endingmonth,
      this.startingmonth,
      this.likes,
      this.categoryname,
      this.townname,
      this.city,
      this.spotlocation,
      this.availability,
      this.amount,
      this.rating,
      this.images});

  static List<CardDesign> PlaceDetails = [
    CardDesign(
      elongated:   'assets/logos/la1.jpg',  //assets/logos/la21.jpg
      likes: 654,
      categoryname: 'Farm',
      startingdate: 1,
      endingdate: 8,
      endingmonth: 1,
      startingmonth: 1,
      images: [
        'assets/logos/r1.jpg', 'assets/logos/r2.jpg', 'assets/logos/r3.jpg',
      ],
      townname: 'Medan',
      spotlocation: '9,548 kilometers away',
      city: 'Indonesia',
      availability: 'Jan 1-8',
      amount: 11812,
      rating: 4.90,
    ),
    CardDesign(
      elongated:  'assets/logos/la2.jpg',
      likes: 923,
      categoryname: 'Farm',
      images: [
        'assets/logos/r4.jpg', 'assets/logos/r5.jpg', 'assets/logos/r6.jpg',
      ],
      startingdate: 17,
      endingdate: 23,
      endingmonth: 1,
      startingmonth: 1,
      townname: 'Hat Yai',
      spotlocation: '6,322 kilometers away',
      city: 'Thailand',
      availability: 'Jan 17-23',
      amount: 49903,
      rating: 4.87,
    ),
    CardDesign(
      elongated:   'assets/logos/la3.jpg',
      likes: 373,
      categoryname: 'Breakfast',
      images: [
        'assets/logos/r7.jpg', 'assets/logos/r8.jpg', 'assets/logos/r9.jpg',
      ],
      startingdate: 2,
      endingdate: 10,
      endingmonth: 2,
      startingmonth: 2,
      townname: 'Leicester',
      spotlocation: '6,704 kilometers away',
      city: 'England',
      availability: 'Feb 2-10',
      amount: 37864,
      rating: 4.75,
    ),
    CardDesign(
      elongated:   'assets/logos/la4.jpg',

      likes: 233,
      categoryname: 'Breakfast',
      startingdate: 8,
      endingdate: 17,
      endingmonth: 2,
      startingmonth: 2,
      images: [
        'assets/logos/p13a.jpg',
        'assets/logos/p13b.jpg',
        'assets/logos/p13c.jpg'
      ],
      townname: 'Chittogarh',
      spotlocation: '1,440 kilometers away',
      city: 'India',
      availability: 'Feb 8-17',
      amount: 38450,
      rating: 4.92,
    ),
    CardDesign(
      elongated:   'assets/logos/la5.jpg',

      likes: 137,
      categoryname: 'Farm',
      images: [
        'assets/logos/r10.jpg', 'assets/logos/r11.jpg', 'assets/logos/r12.jpg',
      ],
      startingdate: 14,
      endingdate: 20,
      endingmonth: 1,
      startingmonth: 1,
      townname: 'Edmonton',
      spotlocation: '11,460 kilometers away',
      city: 'Canada',
      availability: 'Jan14-20',
      amount: 35995,
      rating: 5.00,
    ),
    CardDesign(
      elongated:   'assets/logos/la6.jpg',

      likes: 786,
      categoryname: 'Amazing views',
      images: [
        'assets/logos/r13.jpg', 'assets/logos/r14.jpg', 'assets/logos/r15.jpg',
      ],
      startingdate: 25,
      endingdate: 30,
      endingmonth: 4,
      startingmonth: 4,
      townname: 'Baltimore',
      spotlocation: '10,460 kilometers away',
      city: 'USA',
      availability: 'Apr 25-30',
      amount: 31138,
      rating: 4.80,
    ),
    CardDesign(
      elongated:   'assets/logos/la7.jpg',

      likes: 80,
      categoryname: 'Farm',
      images: [
        'assets/logos/r16.jpg', 'assets/logos/r17.jpg', 'assets/logos/r18.jpg',
      ],
      startingdate: 5,
      endingdate: 11,
      endingmonth: 10,
      startingmonth: 10,
      townname: 'Congqinq',
      spotlocation: '15,707 kilometers away',
      city: 'China',
      availability: 'Oct 5-11',
      amount: 12488,
      rating: 4.97,
    ),
    CardDesign(
      elongated:   'assets/logos/la8.jpg',

      likes: 450,
      categoryname: 'Amazing views',
      images: [
        'assets/logos/r19.jpg', 'assets/logos/r20.jpg', 'assets/logos/r21.jpg',
      ],
      startingdate: 9,
      endingdate: 14,
      endingmonth: 12,
      startingmonth: 12,
      townname: 'Langkawi',
      spotlocation: '2,460 kilometers away',
      city: 'Malaysia',
      availability: 'Dec 9-14',
      amount: 12485,
      rating: 4.00,
    ),
    CardDesign(
      elongated:   'assets/logos/la9.jpg',

      likes: 340,
      categoryname: 'Farm',
      startingdate: 28,
      endingdate: 3,
      endingmonth: 12,
      startingmonth: 11,
      images: [
        'assets/logos/p1a.jpg',
        'assets/logos/p1b.jpg',
        'assets/logos/p1c.jpg'
      ],
      townname: 'Unawatuna',
      spotlocation: '785 kilometers away',
      city: 'Sri Lanka',
      availability: 'Nov 28-3 Dec',
      amount: 36195,
      rating: 4.67,
    ),
    CardDesign(
      elongated:   'assets/logos/la10.jpg',

      likes: 790,
      categoryname: 'Amazing views',
      startingdate: 25,
      endingdate: 30,
      endingmonth: 11,
      startingmonth: 11,
      images: [
        'assets/logos/p2a.jpg',
        'assets/logos/p2b.jpg',
        'assets/logos/p2c.jpg'
      ],
      townname: 'Manali',
      spotlocation: '2,690 kilometers away',
      city: 'Himachal Pradesh',
      availability: 'Nov 25-30',
      amount: 40278,
      rating: 4.96,
    ),
    CardDesign(
      elongated:   'assets/logos/la11.jpg',

      likes: 543,
      categoryname: 'Lake view',
      startingdate: 1,
      endingdate: 6,
      endingmonth: 3,
      startingmonth: 3,
      images: [
        'assets/logos/p3a.jpg',
        'assets/logos/p3b.jpg',
        'assets/logos/p3c.jpg'
      ],
      // assets/logos/p2c.jpg
      townname: 'Arendal',
      spotlocation: '7,701 kilometers away',
      city: 'Norway',
      availability: 'Mar 1-6',
      amount: 26185,
      rating: 4.56,
    ),
    CardDesign(
      elongated:   'assets/logos/la12.jpg',

      likes: 470,
      categoryname: 'Lake view',
      startingdate: 14,
      endingdate: 20,
      endingmonth: 5,
      startingmonth: 5,
      images: [
        'assets/logos/p4a.jpg',
        'assets/logos/p4b.jpg',
        'assets/logos/p4c.jpg'
      ],
      townname: 'Stockholm',
      spotlocation: '7,194 kilometers away',
      city: 'Sweden',
      availability: 'May 14-20',
      amount: 35995,
      rating: 5.00,
    ),
    CardDesign(
      elongated:   'assets/logos/la13.jpg',

      likes: 420,
      categoryname: 'Amazing pools',
      startingdate: 9,
      endingdate: 14,
      endingmonth: 4,
      startingmonth: 4,
      images: [
        'assets/logos/p5a.jpg',
        'assets/logos/p5b.jpg',
        'assets/logos/p5c.jpg'
      ],
      townname: 'Kimchaek',
      spotlocation: '5,491 kilometers away',
      city: 'North Korea',
      availability: 'Apr 9-14',
      amount: 15689,
      rating: 4.93,
    ),
    CardDesign(
      elongated:   'assets/logos/la14.jpg',

      likes: 600,
      categoryname: 'Amazing pools',
      startingdate: 12,
      endingdate: 18,
      endingmonth: 1,
      startingmonth: 7,
      images: [
        'assets/logos/p6a.jpg',
        'assets/logos/p6b.jpg',
        'assets/logos/p6c.jpg'
      ],
      townname: 'Berlin',
      spotlocation: '7,471 kilometers away',
      city: 'Germany',
      availability: 'Jul 12-18',
      amount: 26189,
      rating: 4.80,
    ),
    CardDesign(
      elongated:   'assets/logos/la15.jpg',

      likes: 921,
      categoryname: 'Rooms',
      startingdate: 14,
      endingdate: 19,
      endingmonth: 8,
      startingmonth: 8,
      images: [
        'assets/logos/p7a.jpg',
        'assets/logos/p7b.jpg',
        'assets/logos/p7c.jpg'
      ],
      townname: 'San Roque',
      spotlocation: '16,924 kilometers away',
      city: 'Costa Rica',
      availability: 'Aug 14-19',
      amount: 27724,
      rating: 4.58,
    ),
    CardDesign(
      elongated:   'assets/logos/la16.jpg',

      likes: 345,
      categoryname: 'Rooms',
      startingdate: 20,
      endingdate: 25,
      endingmonth: 11,
      startingmonth: 11,
      images: [
        'assets/logos/p8a.jpg',
        'assets/logos/p8b.jpg',
        'assets/logos/p8c.jpg'
      ],
      townname: 'Valencia',
      spotlocation: '8,605 kilometers away',
      city: 'Spain',
      availability: 'Nov 20-25',
      amount: 10815,
      rating: 4.92,
    ),
    CardDesign(
      elongated:   'assets/logos/la17.jpg',

      likes: 780,
      categoryname: 'Cabins',
      startingdate: 3,
      endingdate: 8,
      endingmonth: 1,
      startingmonth: 1,
      images: [
        'assets/logos/p9a.jpg',
        'assets/logos/p9b.jpg',
        'assets/logos/p9c.jpg'
      ],
      townname: 'Helsniki',
      spotlocation: '7,129 kilometers away',
      city: 'Finland',
      availability: 'Jan 3-8',
      amount: 15618,
      rating: 4.81,
    ),
    CardDesign(
      elongated:   'assets/logos/la18.jpg',

      likes: 611,
      categoryname: 'Cabins',
      startingdate: 19,
      endingdate: 24,
      endingmonth: 11,
      startingmonth: 11,
      images: [
        'assets/logos/p10a.jpg',
        'assets/logos/p10b.jpg',
        'assets/logos/p10c.jpg'
      ],
      townname: 'Amsterdam',
      spotlocation: '7,870 kilometers away',
      city: 'Amsterdam',
      availability: 'Nov 19-24',
      amount: 34890,
      rating: 4.87,
    ),
    CardDesign(
      elongated:   'assets/logos/la19.jpg',

      likes: 345,
      categoryname: 'Future',
      startingdate: 3,
      endingdate: 8,
      endingmonth: 3,
      startingmonth: 3,
      images: [
        'assets/logos/p11a.jpg',
        'assets/logos/p11b.jpg',
        'assets/logos/p11c.jpg'
      ],
      townname: 'Naulcalpan',
      spotlocation: '16,394 kilometers away',
      city: 'Mexico',
      availability: 'Mar 3-8',
      amount: 16673,
      rating: 4.94,
    ),
    CardDesign(
      elongated:   'assets/logos/la20.jpg',

      likes: 289,
      categoryname: 'Future',
      startingdate: 25,
      endingdate: 1,
      endingmonth: 3,
      startingmonth: 2,
      images: [
        'assets/logos/p12a.jpg',
        'assets/logos/p12b.jpg',
        'assets/logos/p12c.jpg'
      ],
      townname: 'Marton',
      spotlocation: '11,370 kilometers away',
      city: 'New Zealand',
      availability: 'Feb 25-Mar 1',
      amount: 11374,
      rating: 4.92,
    ),
  ];
}
