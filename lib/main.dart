import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const ActiveColor=Color(0XFF1D1E33);
const BottomColor=Color(0XFFEB1555);
const BottomHeight=80.0;

void main() => runApp(BMICalculator());


class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0XFF191919),
        scaffoldBackgroundColor: Color(0XFF191919),

      ),
      home: InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body:Column(
        children: [
          Expanded(
            child: Row(
            children: [
              reusable(
                colour: Color(0XFF1D1E33),

                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    // Icon(
                    //   FontAwesomeIcons.mars,
                    //   size: 80.0,
                    // ),


                    Icon(
                      Icons.airplanemode_active,
                      size: 80.0,
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      'Male',
                    style:TextStyle(
                      fontSize: 18.0,
                      color: Color(0XFF8D8E98),
                    ),

              ),
                  ],
                ),
              ),

              reusable(colour: Color(0XFF1D1E33),),
            ],
          ),
          ),


          Expanded(child: Row(
            children: [
              Container(
                margin: EdgeInsets.all(15.0),
                width: 330.0,
                height: 200.0,
                decoration: BoxDecoration(
                  color: ActiveColor,
                  borderRadius: BorderRadius.circular(13.0),

                ),
              ),
            ],
          ),),


          Expanded(child: Row(
            children: [
              Expanded(child:reusable(colour: Color(0XFF1D1E33),
              ),
              ),
              Expanded(child: reusable(colour: Color(0XFF1D1E33),),
              ),
            ],
          ),
          ),

          Container(
            color: BottomColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: BottomHeight,
          ),
        ],
      ),

    );
  }
}

class reusable extends StatelessWidget {
  reusable({@required this.colour, this.cardChild});
    final Color colour;

    final Widget cardChild;

   @override
  Widget build(BuildContext context) {
    return Expanded(child:Container(
      margin: EdgeInsets.all(15.0),
      width: 170.0,
      height: 200.0,
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(13.0),

      ),
    ),
    );
  }
}

