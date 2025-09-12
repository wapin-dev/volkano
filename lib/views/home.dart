import 'package:flutter/material.dart';
import 'package:volkano/views/widget/volcanoSwipe.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image(
                        height: 50,
                        width: 50,
                        image: AssetImage('assets/images/profil/profil.webp'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Welcome Back',
                            style: TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            'Boyer Dorian',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.notifications, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5, left: 5, right: 5),
                  child: Container(
                    height: 500,
                    width: double.infinity,
                    alignment: Alignment.center,
                    // color: Colors.red,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        'assets/images/volcano.webp',
                        height: 500,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 2,
                  left: 15,
                  right: 15,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 200,
                      width: double.infinity,
                      alignment: Alignment.center,
                      // color: Colors.yellow,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            child: Row(
                              children: [
                                SizedBox(
                                  child: Icon(
                                    Icons.location_on,
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: SizedBox(
                                    child: Text(
                                      'Location',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: Text(
                              'Arenal Volcano',
                              style: TextStyle(
                                fontSize: 45,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: SizedBox(
                                    child: Icon(
                                      Icons.star,
                                      color: Colors.orangeAccent,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: SizedBox(
                                    child: Text(
                                      '4/5',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  child: Text(
                                    "(500+Reviews)",
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50),
                                  borderSide: BorderSide.none,
                                ),
                                filled: true,
                                fillColor: Colors.white60,
                                prefixIcon: Icon(Icons.search),
                                prefixIconColor: Colors.white,
                                suffixIcon: Icon(Icons.settings_backup_restore),
                                suffixIconColor: Colors.white,
                                hintText: 'Search',
                                hintStyle: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(left: 40, top: 5, right: 40),
              child: SizedBox(
                height: 50,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      child: Text(
                        "Popular Place",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      child: Text(
                        "view all",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // SizedBox(
            //   height: 200,
            //   width: 180,
            //   child: Stack(
            //     children: [
            //       Padding(
            //         padding: const EdgeInsets.only(top: 5, left: 5, right: 5),
            //         child: Container(
            //           height: 200,
            //           width: double.infinity,
            //           alignment: Alignment.center,
            //           // color: Colors.red,
            //           child: ClipRRect(
            //             borderRadius: BorderRadius.circular(25),
            //             child: Image.asset(
            //               'assets/images/volcano.webp',
            //               height: 250,
            //               width: double.infinity,
            //               fit: BoxFit.cover,
            //             ),
            //           ),
            //         ),
            //       ),
            //       Positioned(
            //         bottom: 0,
            //         left: 3,
            //         child: Padding(
            //           padding: const EdgeInsets.all(13),
            //           child: Column(
            //             mainAxisAlignment: MainAxisAlignment.end,
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             children: [
            //               SizedBox(
            //                 child: Text(
            //                   'Mount Rinjani',
            //                   style: TextStyle(
            //                     fontSize: 20,
            //                     fontWeight: FontWeight.bold,
            //                     color: Colors.white,
            //                   ),
            //                 ),
            //               ),
            //               Row(
            //                 mainAxisAlignment: MainAxisAlignment.start,
            //                 crossAxisAlignment: CrossAxisAlignment.center,
            //                 children: [
            //                   SizedBox(
            //                     child: Icon(
            //                       Icons.location_on,
            //                       color: Colors.white,
            //                       size: 15,
            //                     ),
            //                   ),
            //                   SizedBox(
            //                     child: Text(
            //                       'Mount Rinjani',
            //                       style: TextStyle(
            //                         fontSize: 14,
            //                         fontWeight: FontWeight.bold,
            //                         color: Colors.white,
            //                       ),
            //                     ),
            //                   ),
            //                 ],
            //               ),
            //             ],
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            SizedBox(
              height: 300,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return VolcanoSwipe(
                    title: 'MON foudji',
                    image: 'assets/images/volcano.webp',
                    subtitle: "test",
                  );
                },
              ),
            ),
          ],
        ),
      ),

      // bottomNavigationBar: Container(
      //   width: 30,
      //   decoration: BoxDecoration(
      //     color: Colors.white,
      //     borderRadius: BorderRadius.only(
      //       topLeft: Radius.circular(30),
      //       topRight: Radius.circular(30),
      //     ),
      //   ),
      //   child: BottomNavigationBar(
      //     type: BottomNavigationBarType.fixed,

      //     selectedItemColor: Colors.black,
      //     unselectedItemColor: Colors.black38,
      //     backgroundColor: Colors.red,

      //     items: const <BottomNavigationBarItem>[
      //       BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      //       BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
      //       BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      //     ],
      //   ),
      // ),
    );
  }
}
