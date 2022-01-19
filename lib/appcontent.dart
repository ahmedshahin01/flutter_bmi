import 'package:flutter/material.dart';
 
import 'package:flutter_bmi/styles.dart';

// ignore: must_be_immutable
class MyhomeContent extends StatefulWidget {
  bool x;
  MyhomeContent(this.x);
  @override
  _MyhomeContentState createState() => _MyhomeContentState(x);
}

// ignore: non_constant_identifier_names
double Formation(int w, double H) {
  // ignore: non_constant_identifier_names
  double BMI = 0;
  double hm = H / 100;
  BMI = w / (hm * hm);
  return BMI;
}

class _MyhomeContentState extends State<MyhomeContent> {
  _MyhomeContentState(this.b);
  double _value = 170;
  int _edgecounter = 20;

  // ignore: non_constant_identifier_names
  int _Weightcounter = 60;

  bool b;
  String get genderx {
    String gender = '';
    if (b == true)
      gender = "male";
    else
      gender = "female";
    return gender;
  }

  void _incrementECounter() {
    setState(() {
      _edgecounter++;
    });
  }

  void _decrementECounter() {
    setState(() {
      _edgecounter--;
    });
  }

  void _incrementWCounter() {
    setState(() {
      _Weightcounter++;
    });
  }

  void _decrementWCounter() {
    setState(() {
      _Weightcounter--;
    });
  }

//////////////////
  double resultNum = 0;

  String get resultPhrase {
    String resultText = '';
    if (resultNum >= 30)
      resultText = 'Obese';
    else if (resultNum > 25 && resultNum < 30)
      resultText = 'Overweight';
    else if (resultNum >= 18.5 && resultNum <= 24.9)
      resultText = 'Normal';
    else
      resultText = 'Thin';
    return resultText;
  }

//////////////////

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 200,
          height: 25,
        ),
        Text("Height"),
        Text(
          '${(_value).toStringAsFixed(2)}cm',
        ),
        Slider(
          value: _value,
          onChanged: (double val) => setState(() => _value = val),
          min: 50,
          max: 300,
          label: '$_value',
          activeColor: Colors.red,
          inactiveColor: Colors.teal,
        ),
        SizedBox(
          width: 200,
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Text("Edge"),
                Text(
                  '$_edgecounter',
                  style: Theme.of(context).textTheme.headline4,
                ),
                Row(
                  children: [
                    FloatingActionButton(
                      onPressed: _incrementECounter,
                      tooltip: 'Increment',
                      child: Icon(Icons.add),
                    ),
                    SizedBox(
                      width: 35,
                    ),
                    FloatingActionButton(
                      onPressed: _decrementECounter,
                      tooltip: 'Increment',
                      child: Icon(Icons.remove),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              width: 200,
              height: 10,
            ),
            Column(
              children: [
                Text("Weight"),
                Text(
                  '$_Weightcounter',
                  style: Theme.of(context).textTheme.headline4,
                ),
                Row(
                  children: [
                    FloatingActionButton(
                      onPressed: _incrementWCounter,
                      tooltip: 'Increment',
                      child: Icon(Icons.add),
                    ),
                    SizedBox(
                      width: 35,
                    ),
                    FloatingActionButton(
                      onPressed: _decrementWCounter,
                      tooltip: 'Increment',
                      child: Icon(Icons.remove),
                    )
                  ],
                )
              ],
            )
          ],
        ),
        ElevatedButton(
            onPressed: () {
              resultNum = Formation(_Weightcounter, _value);
              print(b);
              print(resultNum);
            },
            child: Text("calc")),
        SizedBox(
          width: 200,
          height: 10,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 200,
              height: 10,
            ),
            SizedBox(
              width: 200,
              height: 10,
            ),
            Text("theResult", style: text1),
            SizedBox(
              width: 200,
              height: 10,
            ),
            Text(
              "${(resultNum).toStringAsFixed(2)}",
              style: text1,
            ),
            SizedBox(
              width: 200,
              height: 10,
            ),
            Text(resultPhrase, style: text1),
            SizedBox(
              width: 200,
              height: 10,
            ),
            Text(genderx, style: text1),
          ],
        )
      ],
    );
  }
}
