import 'package:flutter/material.dart';
import 'package:relaxify/MeditationListPage.dart';
import 'package:relaxify/profile/ProfilePage.dart';
import 'Emoticons.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.grey.shade100,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //hi user!
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Welcome Back!',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'How are you feeling today?',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),

                    //profile
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ProfilePage()),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.black54,
                            borderRadius: BorderRadius.circular(12)
                        ),
                        padding: EdgeInsets.all(12),
                        child: Icon(
                          Icons.person,
                          color: Colors.grey.shade100,
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: 25,
                ),

                //emoticons row 1
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //happy
                    GestureDetector(
                      onTap: ()async {
                      },
                      child: Column(
                        children: [
                          Emoticons(
                            emoticon: 'assets/emoticons/happy.png',
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Happy',
                            style: TextStyle(color: Colors.black87),
                          ),
                        ],
                      ),
                    ),

                    //sad
                    GestureDetector(
                      onTap: ()async {
                      },
                      child: Column(
                        children: [
                          Emoticons(
                            emoticon: 'assets/emoticons/sad.png',
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Sad',
                            style: TextStyle(color: Colors.black87),
                          ),
                        ],
                      ),
                    ),

                    //tired
                    GestureDetector(
                      onTap: ()async {
                      },
                      child: Column(
                        children: [
                          Emoticons(
                            emoticon: 'assets/emoticons/tired.png',
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Tired',
                            style: TextStyle(color: Colors.black87),
                          ),
                        ],
                      ),
                    ),

                    //worried
                    GestureDetector(
                      onTap: ()async {
                      },
                      child: Column(
                        children: [
                          Emoticons(
                            emoticon: 'assets/emoticons/worried.png',
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Worried',
                            style: TextStyle(color: Colors.black87),
                          ),
                        ],
                      ),
                    ),

                    //excited
                    GestureDetector(
                      onTap: ()async {
                      },
                      child: Column(
                        children: [
                          Emoticons(
                            emoticon: 'assets/emoticons/excited.png',
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Excited',
                            style: TextStyle(color: Colors.black87),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: 40,
                ),

                GestureDetector(
                  onTap: (){
                  },
                  child: Stack(
                    children: [
                      Container(
                        height: 170,
                        width: 330,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: EdgeInsets.all(10),
                      ),
                      Positioned(
                        top: 10,
                        right: 10,
                        width: 150, // Half the width of the grey container
                        height: 150,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(2, 2, 2, 2),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100, // Customize the color as desired
                            borderRadius: BorderRadius.circular(12),
                          ),
                          // Add child widgets inside the new container
                        ),
                      ),
                      Positioned(
                        left: 20,
                        top: 50,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Ready to start the day?', // Replace with your desired text
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Turn on focus mode to \n'
                                  'increase productivity',
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 11,
                              ),
                            ),
                            SizedBox(height: 16),
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                width: 130,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade800,
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                child: Center(
                                  child: Text(
                                    'Start Focus Mode',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 25,
                ),
                //menu title
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Meditation',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),

                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MeditationListPage()),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.fromLTRB(1, 1, 5, 1),
                        child: Text(
                          'View all >',
                          style: TextStyle(
                            color: Colors.grey.shade800,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: 20,
                ),

                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 10,
                      ),

                      GestureDetector(
                        onTap: (){
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/musicwallpaper/musicposter1.jpg'),
                                  fit: BoxFit.fill,
                                ),
                                  borderRadius: BorderRadius.circular(12)
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Title 1',
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                        width: 10,
                      ),

                      GestureDetector(
                        onTap: (){
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/musicwallpaper/piano.jpg'),
                                    fit: BoxFit.fill,
                                  ),
                                  borderRadius: BorderRadius.circular(12)
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Title 2',
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                        width: 10,
                      ),

                      GestureDetector(
                        onTap: (){
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/musicwallpaper/city.jpg'),
                                    fit: BoxFit.fill,
                                  ),
                                  borderRadius: BorderRadius.circular(12)
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Title 3',
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      ],
                ),
              ],
            ),
          ),
        )
    );
  }
}


