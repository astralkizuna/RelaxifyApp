import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../Dashboard.dart';
import '../MeditationInfoPage.dart';
import '../SettingsPage.dart';
import '../profile/CustomAppBar.dart';
import 'FocusDBoard.dart';
import 'FocusLog.dart';

class FocusResultPage extends StatefulWidget {
  const FocusResultPage({Key? key}) : super(key: key);

  @override
  State<FocusResultPage> createState() => _FocusResultPageState();
}

class _FocusResultPageState extends State<FocusResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          title: 'Focus Mode',
          onBackButtonPressed: () {
            Navigator.pop(context);
          },
          onSettingsButtonPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SettingsPage()), // Navigate to the SettingsPage
            );
          },
        ),
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0XFFF8F8F8),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 15,
                ),

                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Focus Mode Complete',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                SizedBox(height: 35),

                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Daily and weekly goals',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 15),

                Padding(
                  padding: EdgeInsets.all(0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width:340,
                        height: 145,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: EdgeInsets.all(10),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 20,
                              left: 20,
                              child: CircularPercentIndicator(
                                radius: 40.0,
                                lineWidth: 7.0,
                                animation: true,
                                percent: 0.8,
                                center: new Text(
                                  "Goal",
                                  style:
                                  new TextStyle(color: Colors.grey.shade900,fontWeight: FontWeight.bold, fontSize: 15.0),
                                ),
                                linearGradient: LinearGradient(
                                  begin: Alignment.topRight,end:Alignment.bottomLeft,
                                  colors: <Color> [Colors.green,Colors.lightGreen],
                                ),
                                circularStrokeCap: CircularStrokeCap.round,
                                rotateLinearGradient: true,
                              ),
                            ),
                            Positioned(
                              top: 10,
                              left: 10,
                              child: CircularPercentIndicator(
                                radius: 50.0,
                                lineWidth: 7.0,
                                animation: true,
                                percent: 0.5,
                                linearGradient: LinearGradient(
                                  begin: Alignment.topRight,end:Alignment.bottomLeft,
                                  colors: <Color> [Colors.blueAccent.shade700,Colors.blueAccent],
                                ),
                                circularStrokeCap: CircularStrokeCap.round,
                                rotateLinearGradient: true,
                              ),
                            ),
                            Positioned(
                              top: 0,
                              right: 2,
                              width: 200, // Half the width of the grey container
                              height: 125,
                              child: Container(
                                margin: EdgeInsets.fromLTRB(2, 2, 2, 2),
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade100, // Customize the color as desired
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    width: 2,
                                    color: Color(0xFF69817A),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        'Badges',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          width: 35,height: 35,
                                          decoration: BoxDecoration(
                                            color: Colors.grey.shade100, // Customize the color as desired
                                            borderRadius: BorderRadius.circular(2),
                                          ),
                                          child: Center(
                                            child: Container(
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage('assets/badges/rank.png'),
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 5),
                                        Container(
                                          width: 35,height: 35,
                                          decoration: BoxDecoration(
                                            color: Colors.grey.shade100, // Customize the color as desired
                                            borderRadius: BorderRadius.circular(2),
                                          ),
                                          child: Center(
                                            child: Container(
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage('assets/badges/star.png'),
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width:5),
                                        Container(
                                          width: 35,height: 35,
                                          decoration: BoxDecoration(
                                            color: Colors.grey.shade100, // Customize the color as desired
                                            borderRadius: BorderRadius.circular(2),
                                          ),
                                          child: Center(
                                            child: Container(
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage('assets/badges/badge.png'),
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        'Informatrix',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 12,height: 12,
                                          padding: EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                            color: Colors.green,
                                            borderRadius: BorderRadius.circular(3),
                                          ),
                                        ),
                                        SizedBox(width: 5),

                                        Text(
                                          'Daily goal',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 25,
                                        ),
                                        Container(
                                          width: 12,height: 12,
                                          padding: EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                            color: Colors.blueAccent.shade400, // Customize the color as desired
                                            borderRadius: BorderRadius.circular(3),
                                          ),
                                        ),
                                        SizedBox(width: 5),

                                        Text(
                                          'Weekly goal',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ), // Add child widgets inside the new container
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height:60),

                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        width: 320,
                        height: 30,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.black,
                              width: 1.5,
                            ),
                          ),
                        ),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Focus Rate',
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '78%',
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold),
                              ),
                            ]

                        )
                    ),

                    SizedBox(height: 40),

                    Container(
                        width: 320,
                        height: 30,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.black,
                              width: 1.5,
                            ),
                          ),
                        ),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Rest:Focus Ratio',
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '3 : 2',
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold),
                              ),
                            ]

                        )
                    ),
                  ],
                ),

                SizedBox(height: 110),

                /*
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 10,
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [

                        Text(
                          'Daily',
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Progress',
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),

                        SizedBox(height: 20),

                        CircularPercentIndicator(
                          radius: 50.0,
                          lineWidth: 9.0,
                          animation: true,
                          percent: 0.8,
                          center: new Text(
                            "80.0%",
                            style:
                            new TextStyle(color: Colors.grey.shade900,fontWeight: FontWeight.bold, fontSize: 15.0),
                          ),
                          linearGradient: LinearGradient(
                            begin: Alignment.topRight,end:Alignment.bottomLeft,
                            colors: <Color> [Colors.grey.shade900,Colors.grey.shade900],
                          ),
                          circularStrokeCap: CircularStrokeCap.round,
                          rotateLinearGradient: true,
                        ),


                      ],
                    ),

                    SizedBox(
                      width: 60,
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Weekly',
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Progress',
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),

                        SizedBox(height: 20),

                        CircularPercentIndicator(
                          radius: 50.0,
                          lineWidth: 9.0,
                          animation: true,
                          percent: 0.64,
                          center: new Text(
                            "64.0%",
                            style:
                            new TextStyle(color: Colors.grey.shade900,fontWeight: FontWeight.bold, fontSize: 15.0),
                          ),
                          linearGradient: LinearGradient(
                            begin: Alignment.topRight,end:Alignment.bottomLeft,
                            colors: <Color> [Colors.grey.shade900,Colors.grey.shade900],
                          ),
                          circularStrokeCap: CircularStrokeCap.round,
                          rotateLinearGradient: true,
                        ),


                      ],
                    ),
                  ],
                ),
                */

                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => focusLogPage()),
                    );
                  },
                  child: Container(
                    height: 40,
                    width: 310,
                    decoration: BoxDecoration(
                        color: Color(0xFF7F9B8F),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    padding: EdgeInsets.all(12),
                    child: Text("Show Past Log",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),

                SizedBox(height: 25),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => FocusDashboard()),
                        );
                      },
                      child: Container(
                        height: 40,
                        width: 130,
                        decoration: BoxDecoration(
                            color: Color(0xFF7F9B8F),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        padding: EdgeInsets.all(12),
                        child: Text("Restart",
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),

                    SizedBox(width: 50),

                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Dashboard()),
                        );
                      },
                      child: Container(
                        height: 40,
                        width: 130,
                        decoration: BoxDecoration(
                            color: Color(0xFF7F9B8F),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        padding: EdgeInsets.all(12),
                        child: Text("Home",
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
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
