import 'package:flutter/material.dart';
import 'package:healthscale/SplashScreen.dart';

import 'navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HealthScale',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({required this.title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage> {
  var wtController = TextEditingController();
  var ftController = TextEditingController();
  var inchController = TextEditingController();
  var result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),

      body: Center(
        child: Container(
          width: 320,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'BMI HealthScale',
                  style: TextStyle(fontFamily: 'Poppins',fontSize: 30, fontWeight: FontWeight.w400),
                ),

                Center(
                  child: Text(
                    'A BMI range of 18.5 to 24.9 is \n considered healthy and optimal',
                    style: TextStyle(fontFamily: 'Poppins' ,fontSize: 10, fontWeight: FontWeight.w400),
                  ),
                ),

                SizedBox(height: 25,),

                TextField(
                  controller: wtController,
                  decoration: InputDecoration(
                    labelText: 'Enter Your Weight',
                    prefixIcon: Icon(Icons.line_weight_rounded),
                  ),
                  keyboardType: TextInputType.number,
                ),

                TextField(
                  controller: ftController,
                  decoration: InputDecoration(
                      labelText: 'Enter your Height (In feet)',
                      prefixIcon: Icon(Icons.height_sharp)),
                  keyboardType: TextInputType.number,
                ),
                TextField(
                  controller: inchController,
                  decoration: InputDecoration(
                      labelText: 'Enter you Height (In Inch)',
                      prefixIcon: Icon(Icons.height)),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 20),
                // Text('result', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),

                ElevatedButton(
                    onPressed: () {
                      var wt = wtController.text.toString();
                      var ft = ftController.text.toString();
                      var inch = inchController.text.toString();

                      if (wt!= '' && ft != ' ' && inch!= ' ') {

                        //BMI calculation
                        var iWt = int.parse(wt);
                        var iFt = int.parse(ft);
                        var iInch = int.parse(inch);

                        var tInch = (iFt*12) + iInch;
                        var tCm = tInch*2.54;
                        var tM = tCm/100;

                        var bmi = iWt/(tM*tM);

                        setState(() {

                          result = "Your BMI is ${bmi.toStringAsFixed(4)}";

                        });



                      } else {
                        setState(() {
                          result = "Please Enter Full Details";
                        });
                      }
                    },

                    child: Text("Explore BMI Insights")

                ),
                SizedBox(height: 15,),
                Text(result),
              ],
            ),
          ),
        ),
      ),
    );
  }
}