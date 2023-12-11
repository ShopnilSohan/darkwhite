import 'package:flutter/material.dart';
void main(){
  runApp(DarkWhite());
}
class DarkWhite extends StatelessWidget {
  const DarkWhite({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DarkW(),
    );
  }
}

const Color colorDark = Color(0xFF374352);
const Color colorLight = Color(0xFFe6eeff);
class DarkW extends StatefulWidget {
  const DarkW({super.key});

  @override
  State<DarkW> createState() => _DarkWState();
}

class _DarkWState extends State<DarkW> {
  bool darkMode = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkMode ? colorDark : colorLight,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              GestureDetector(
                onTap: (){
                  setState(() {
                    darkMode ? darkMode = false : darkMode = true;
                  });
                },
                child: Container(
                  decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                 color: darkMode ? colorDark : colorLight,
                  ) ,
                  width: 100,
                  height: 100,
                  child:
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.wb_sunny,
                          color: darkMode ? Colors.grey : Colors.redAccent,
                        ),
                        Icon(
                          Icons.nightlight_round,
                          color: darkMode ? Colors.green : Colors.grey,
                        ),
                      ]),
                ),
              ),
        GestureDetector(
          onTap: (){},
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                color: darkMode ? colorDark : colorLight,
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                    color:
                    darkMode ? Colors.black54 : Colors.blueGrey.shade200,
                    offset: Offset(4.0, 4.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0,
                  ),
                  BoxShadow(
                      color:
                      darkMode ? Colors.blueGrey.shade700 : Colors.white,
                      offset: Offset(-4.0, -4.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0)
                ]),
            child: Center(child: Text('HEllo',style: TextStyle(fontSize: 40),)),

          ),
        )
            ],
          ),
        ),
      ),
      
    );
  }
}
