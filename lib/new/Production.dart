import 'package:flutter/material.dart';
import 'package:login/new/splash.dart';

class Production extends StatefulWidget {
  @override
  _ProductionState createState() => _ProductionState();
}

class _ProductionState extends State<Production> {
  final List<String> assetImages = [
    'asset/images/shoes.jpg',
    'asset/images/clothes.jpg',
    'asset/images/makeup.jpg',
    'asset/images/w1.jpg',
    'asset/images/circket.jpg',
  ];

  final List<String> text = [
    'UP TO 50% off',
    'Buy one get on free',
    'ORDER NOW',
    'Deals',
    'live',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
        actions: [IconButton(icon: Icon(Icons.search), onPressed: () {})],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            girls(),
            girlitems(),
            boys(),
            boysitems(),
            accessories(),
            accessoriesitems(),
            girls(),
            girlitems(),
            boys(),
            boysitems(),
            accessories(),
            accessoriesitems(),
          ],
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  final List<String> assetImages = [
    'asset/images/shoes.jpg',
    'asset/images/clothes.jpg',
    'asset/images/makeup.jpg',
    'asset/images/w.jpg',
    'asset/images/circket.jpg',
  ];

  final List<String> text = [
    'UP TO 50% off',
    'Buy one get one free',
    'ORDER NOW',
    'Deals',
    'Live',
  ];

  // ✅ Har image ke liye alag page list
  final List<Widget> pages = [
    ShoesPage(), // shoes.jpg
    ClothesPage(), // clothes.jpg
    MakeupPage(), // makeup.jpg
    WatchPage(), // w.jpg
    CricketPage(), // circket.jpg
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(assetImages.length, (index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => pages[index]),
                );
              },
              child: Container(
                width: 220,
                height: 120,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: const Color.fromARGB(255, 121, 120, 120),
                  ),
                ),
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(assetImages[index]),
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                            const Color.fromARGB(
                              255,
                              243,
                              242,
                              242,
                            ).withOpacity(0.9),
                            BlendMode.darken,
                          ),
                        ),
                        border: Border.all(width: 2),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      left: 50,
                      right: 50,
                      child: Container(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          text[index],
                          style: TextStyle(
                            color: const Color.fromARGB(255, 3, 3, 3),
                            fontSize: 22,
                            fontWeight: FontWeight.w900,
                            shadows: [
                              Shadow(
                                color: Colors.white,
                                blurRadius: 3,
                                offset: Offset(-1, -1),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}

Widget girls() {
  return Stack(
    children: [
      // background image or container
      Container(height: 25),

      // Positioned text aligned to the start (left)
      Positioned(
        left: 10, // Start of the container
        top: 0,
        bottom: 0, // Optional: for some vertical space
        child: Text(
          "latest ",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
    ],
  );
}

class girlitems extends StatelessWidget {
  final List<String> assetIimages = [
    'asset/images/gd3.jpg',
    'asset/images/sg3.jpg',
  ];
  final List<String> text2 = ['UP TO 50% off', 'Buy Two get on free'];
  // ✅ Har image ke liye alag page list
  final List<Widget> pages = [
    GirlsdressPage(), // girls dress
    girlsshoesPage(), // clothes.jpg
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(assetIimages.length, (index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => pages[index]),
                );
              },
              child: Container(
                width: 180,
                height: 180,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: const Color.fromARGB(255, 121, 120, 120),
                  ),
                ),
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(assetIimages[index]),
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                            const Color.fromARGB(
                              255,
                              243,
                              242,
                              242,
                            ).withOpacity(0.9),
                            BlendMode.darken,
                          ),
                        ),
                        border: Border.all(width: 2),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      left: 30,
                      // right: 20,
                      child: Container(
                        padding: EdgeInsets.all(8),

                        child: Row(
                          children: [
                            Text(
                              text2[index],
                              style: TextStyle(
                                color: const Color.fromARGB(255, 3, 3, 3),
                                fontSize: 12,
                                fontWeight: FontWeight.w900,
                                shadows: [
                                  Shadow(
                                    color: const Color.fromARGB(
                                      255,
                                      233,
                                      233,
                                      233,
                                    ),
                                    blurRadius: 3,
                                    offset: Offset(-1, -1),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}

Widget boys() {
  return Stack(
    children: [
      // background image or container
      Container(height: 25),

      // Positioned text aligned to the start (left)
      Positioned(
        left: 10, // Start of the container
        top: 0,
        bottom: 0, // Optional: for some vertical space
        child: Text(
          "POPULAR ",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
    ],
  );
}

class boysitems extends StatelessWidget {
  final List<String> assetIimages = [
    'asset/images/s.jpg',
    'asset/images/sk1.jpg',
  ];
  final List<String> text2 = ['UP TO 50% off', 'Buy one get on free'];
  // ✅ Har image ke liye alag page list
  final List<Widget> pages = [
    GirlsdressPage(), // girls dress
    girlsshoesPage(), // clothes.jpg
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(assetIimages.length, (index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => pages[index]),
                );
              },
              child: Container(
                width: 180,
                height: 180,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: const Color.fromARGB(255, 121, 120, 120),
                  ),
                ),
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(assetIimages[index]),
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                            const Color.fromARGB(
                              255,
                              243,
                              242,
                              242,
                            ).withOpacity(0.9),
                            BlendMode.darken,
                          ),
                        ),
                        border: Border.all(width: 2),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      left: 30,
                      // right: 20,
                      child: Container(
                        padding: EdgeInsets.all(8),

                        child: Row(
                          children: [
                            Text(
                              text2[index],
                              style: TextStyle(
                                color: const Color.fromARGB(255, 3, 3, 3),
                                fontSize: 12,
                                fontWeight: FontWeight.w900,
                                shadows: [
                                  Shadow(
                                    color: const Color.fromARGB(
                                      255,
                                      233,
                                      233,
                                      233,
                                    ),
                                    blurRadius: 3,
                                    offset: Offset(-1, -1),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}

Widget accessories() {
  return Stack(
    children: [
      // background image or container
      Container(height: 25),

      // Positioned text aligned to the start (left)
      Positioned(
        left: 10, // Start of the container
        top: 0,
        bottom: 0, // Optional: for some vertical space
        child: Text(
          "ACCESSORIES",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
    ],
  );
}

class accessoriesitems extends StatelessWidget {
  final List<String> assetIimages = [
    'asset/images/w7.jpg',
    'asset/images/jw9.jpg',
  ];

  final List<String> text2 = ['UP TO 50% off', 'Buy Two get on free'];
  // ✅ Har image ke liye alag page list
  final List<Widget> pages = [
    GirlsdressPage(), // girls dress
    girlsshoesPage(), // clothes.jpg
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(assetIimages.length, (index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => pages[index]),
                );
              },
              child: Container(
                width: 180,
                height: 180,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: const Color.fromARGB(255, 121, 120, 120),
                  ),
                ),
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(assetIimages[index]),
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                            const Color.fromARGB(
                              255,
                              243,
                              242,
                              242,
                            ).withOpacity(0.9),
                            BlendMode.darken,
                          ),
                        ),
                        border: Border.all(width: 2),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      left: 30,
                      // right: 20,
                      child: Container(
                        padding: EdgeInsets.all(8),

                        child: Row(
                          children: [
                            Text(
                              text2[index],
                              style: TextStyle(
                                color: const Color.fromARGB(255, 3, 3, 3),
                                fontSize: 12,
                                fontWeight: FontWeight.w900,
                                shadows: [
                                  Shadow(
                                    color: const Color.fromARGB(
                                      255,
                                      233,
                                      233,
                                      233,
                                    ),
                                    blurRadius: 3,
                                    offset: Offset(-1, -1),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}

//
//
// //////////////////                   header

class ShoesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ✅ Transparent AppBar with background image
      appBar: AppBar(
        automaticallyImplyLeading: false, // hum custom back button banayenge
        flexibleSpace: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('asset/images/sg3.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back_ios_new_outlined),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Production()),
                );
              },
            ),
            SizedBox(width: 8),
            Text(
              "shoess",

              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    blurRadius: 4,
                    color: Colors.black54,
                    offset: Offset(1, 1),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 8),
            Row(
              children: [GirlitemButton(), SizedBox(width: 8), BoyitemButton()],
            ),

            // shoespageitems(),
            // shoespageitems(),
          ],
        ),
      ),
    );
  }
}

/////////////////////// header shoes items
class GirlitemButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Click hone par new screen khulega
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => girlsitemScreen(), // 👈 apna page yaha daalo
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(2, 2),
            ),
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 18,
              backgroundImage: AssetImage(
                "asset/images/shoes.jpg",
              ), // 👈 apna image path
            ),
            SizedBox(width: 6),
            Text(
              "Girls Shoes", // 👈 apna text
              style: TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}

class girlsitemScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text("New Screen")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 8),
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back_ios_new_outlined),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ShoesPage()),
                    );
                  },
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 141, 176, 177),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(2, 2),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 18,
                        backgroundImage: AssetImage(
                          "asset/images/shoes.jpg",
                        ), // 👈 apna image path
                      ),
                      SizedBox(width: 8),
                      Text(
                        "Girls Shoes", // 👈 apna text
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 8),
                BoyitemButton(),
              ],
            ),

            ShoesPageItemsGirls(),
            ShoesPageItemsGirls(),
            // shoespageitemsgirls(),
          ],
        ),
      ),
    );
  }
}

class ShoesPageItemsGirls extends StatelessWidget {
  final List<String> assetImages = [
    'asset/images/sg.jpg',
    'asset/images/sg1.jpg',
    'asset/images/sg2.jpg',
    'asset/images/sg3.jpg',
    'asset/images/s.jpg',
    'asset/images/sb.jpg',
  ];

  final List<String> text2 = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
    'Item 6',
  ];

  final List<Widget> pages = [
    FirstScreen(),
    FirstScreen(),
    FirstScreen(),
    FirstScreen(),
    FirstScreen(),
    FirstScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Wrap(
        spacing: 10,
        runSpacing: 10,
        children: List.generate(assetImages.length, (index) {
          return GestureDetector(
            onTap: () {
              if (index < pages.length) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => pages[index]),
                );
              }
            },
            child: Container(
              width: MediaQuery.of(context).size.width / 2 - 20,
              height: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: const Color.fromARGB(255, 121, 120, 120),
                ),
              ),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(assetImages[index]),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                          Colors.white.withOpacity(0.9),
                          BlendMode.darken,
                        ),
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 20,
                    child: Text(
                      text2[index],
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w900,
                        shadows: [
                          Shadow(
                            color: Colors.white,
                            blurRadius: 3,
                            offset: Offset(-1, -1),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}

class BoyitemButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Click hone par new screen khulega
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BoyitemScreen(), // 👈 apna page yaha daalo
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(2, 2),
            ),
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 18,
              backgroundImage: AssetImage(
                "asset/images/sb1.jpg",
              ), // 👈 apna image path
            ),
            SizedBox(width: 6),
            Text(
              "Boy Shoes", // 👈 apna text
              style: TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}

class BoyitemScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 8),
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back_ios_new_outlined),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ShoesPage()),
                    );
                  },
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 141, 176, 177),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(2, 2),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CircleAvatar(
                        radius: 18,
                        backgroundImage: AssetImage(
                          "asset/images/sb1.jpg",
                        ), // 👈 apna image path
                      ),
                      SizedBox(width: 8),
                      Text(
                        "Boy Shoes", // 👈 apna text
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 8),
                GirlitemButton(),
              ],
            ),

            shoespageitemsboys(),
            shoespageitemsboys(),
          ],
        ),
      ),
    );
  }
}

class shoespageitemsboys extends StatelessWidget {
  final List<String> assetImages = [
    'asset/images/sb1.jpg',
    'asset/images/s.jpg',
    'asset/images/sb.jpg',
    'asset/images/sb5.jpg',
    'asset/images/sb6.webp',
    'asset/images/sb8.webp',
    'asset/images/sb9.avif',
    'asset/images/sb11.jpg',
    'asset/images/sb12.avif',
  ];

  final List<String> text2 = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
    'Item 6',
    'Item 7',
    'Item 8',
    'Item 9',
  ];

  final List<Widget> pages = [
    FirstScreen(),
    FirstScreen(),
    FirstScreen(),
    FirstScreen(),
    FirstScreen(),
    FirstScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Wrap(
        spacing: 10,
        runSpacing: 10,
        children: List.generate(assetImages.length, (index) {
          return GestureDetector(
            onTap: () {
              if (index < pages.length) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => pages[index]),
                );
              }
            },
            child: Container(
              width: MediaQuery.of(context).size.width / 2 - 20,
              height: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: const Color.fromARGB(255, 121, 120, 120),
                ),
              ),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(assetImages[index]),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                          Colors.white.withOpacity(0.9),
                          BlendMode.darken,
                        ),
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 20,
                    child: Text(
                      text2[index],
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w900,
                        shadows: [
                          Shadow(
                            color: Colors.white,
                            blurRadius: 3,
                            offset: Offset(-1, -1),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}

class ClothesPage extends StatefulWidget {
  @override
  _ClothesPageState createState() => _ClothesPageState();
}

class _ClothesPageState extends State<ClothesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class MakeupPage extends StatefulWidget {
  @override
  _MakeupPageState createState() => _MakeupPageState();
}

class _MakeupPageState extends State<MakeupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class WatchPage extends StatefulWidget {
  @override
  _WatchPageState createState() => _WatchPageState();
}

class _WatchPageState extends State<WatchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class CricketPage extends StatefulWidget {
  @override
  _CricketPageState createState() => _CricketPageState();
}

class _CricketPageState extends State<CricketPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

//
//
//
//
// /////////////////////  latest

class GirlsdressPage extends StatefulWidget {
  @override
  _GirlsdressPageState createState() => _GirlsdressPageState();
}

class _GirlsdressPageState extends State<GirlsdressPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class girlsshoesPage extends StatefulWidget {
  @override
  _girlsshoesPageState createState() => _girlsshoesPageState();
}

class _girlsshoesPageState extends State<girlsshoesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
