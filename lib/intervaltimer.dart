import 'package:flutter/material.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Mainmenu.dart';


const kRedColor = Color(0xFFC64343);
const kGreyColor = Color(0xFF6C7589);
const kBackgroundColor = Color(0xFFFFDEDE);

final largeTextStyle = GoogleFonts.poppins(
  color: Colors.white,
  fontSize: 60,
  fontWeight: FontWeight.bold,
);
final smallTextStyle = GoogleFonts.poppins(
  color: kBackgroundColor,
  fontWeight: FontWeight.w600,
);

void main() {
  runApp(const IntervalTimer());
}

class IntervalTimer extends StatelessWidget {
  const IntervalTimer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: const CountDownTimer(),
    );
  }
}

class CountDownTimer extends StatefulWidget {
  const CountDownTimer({Key? key}) : super(key: key);



  @override
  State<CountDownTimer> createState() => _CountDownTimerState();
}

final _countDownController = CountDownController();

class _CountDownTimerState extends State<CountDownTimer> {
  int counter =0;
  TextEditingController edjin = TextEditingController();
  
  @override
  void initState(){
    super.initState();
    edjin.text = '0';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                IconButton(
                  icon: Image.asset(
                    'images/logo.png',
                    width: MediaQuery.of(context).size.width * 0.15,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Mainmenu();
                        },
                      ),
                    );
                  },
                ),
                TextButton(
                  child: Text(
                    "Everyday Fitness",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Mainmenu();
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:100.0),
            child: Center(
              child: CircularCountDownTimer(
                controller: _countDownController,
                autoStart: false,
                initialDuration: 0,
                duration: int.parse(edjin.text),
                isReverse: true,
                fillColor: kRedColor,
                height: 250,
                width: 250,
                strokeWidth: 40,
                onComplete: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        'Finished',
                        style: smallTextStyle,
                      ),
                      behavior: SnackBarBehavior.floating,
                      duration: const Duration(seconds: 2),
                      backgroundColor: kRedColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  );
                },
                strokeCap: StrokeCap.round,
                isReverseAnimation: true,
                ringColor: kGreyColor,

                textStyle: largeTextStyle,
              ),
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Button(
                text: 'Start',
                onPressed: () => _countDownController.restart(duration: int.parse(edjin.text)),
              ),
              Button(
                text: 'Pause',
                onPressed: () => _countDownController.pause(),
              ),



            ],
          ),
          /////////////////////////
          TextField(
            keyboardType: TextInputType.number,
            controller: edjin,


            decoration: InputDecoration(
              labelText: 'Enter Timer Value (in seconds)',
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Current Timer Value: $counter seconds',
            style: TextStyle(fontSize: 18),
          ),
          //////////////////////////
        ],
      ),
    );
  }
}


class Button extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const Button({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: Color(0xFFC64343),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
