import 'package:flutter/material.dart';
// import 'package:material_symbols_icons/symbols.dart';
// import 'package:material_symbols_icons/get.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:material_symbols_icons/material_symbols_icons.dart';
// import 'package:swipe_to/swipe_to.dart';
import 'package:flutter_swipe_button/flutter_swipe_button.dart';
import '../widgets/home_buttons.dart';
import '../widgets/app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(),
      // appBar: AppBar(
      //   title: const Text('',
      //       style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      //   actions: [
      //     IconButton(
      //       icon: Icon(Symbols.calendar_month_rounded), // Example: Settings icon
      //       onPressed: () async {
      //         // TO Add functionality for this button
      //         DateTime? pickedDate = await showDatePicker(
      //           context: context,
      //           initialDate: DateTime.now(),
      //           firstDate: DateTime(2025),
      //           lastDate: DateTime(2100),
      //         );
      //         // if (pickedDate != null) {
      //         //   setState(() {
      //         //     _selectedDate = '${pickedDate.year}-${pickedDate.month}-${pickedDate.day}';
      //         //   });
      //         // }
      //       },
      //     ),
      //     InkWell(
      //       onTap: () {
      //         Navigator.pushNamed(context, '/test');
      //       },
      //       borderRadius: BorderRadius.circular(50),
      //       child: CircleAvatar(
      //         backgroundImage: AssetImage('image/male.png'), // User image
      //       ),
      //     ),
      //     const SizedBox(width: 15),
      //   ],
      // ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Fitness Tracking Device",
                style: GoogleFonts.oswald(
                  fontSize: 55,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                )),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/connection');
                    },
                    style: CustomButtonStyles.primaryButton,
                    child: Text("Connection",
                      style: CustomTextStyles.buttonText,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/statistics');
                  },
                  style: CustomButtonStyles.primaryButton,
                  child: Text("Statistics",
                    style: CustomTextStyles.buttonText,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/shop');
                  },
                  style: CustomButtonStyles.primaryButton,
                  child: Text("Shop",
                    style: CustomTextStyles.buttonText,
                    ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            // const Text("Universal Fitness Expander",
            //     style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Container(
              height: 250,
              width: 450,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 47, 47, 47),
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [ BoxShadow(color: Color.fromARGB(255, 188, 84, 202), blurRadius: 20, spreadRadius: 1, offset: Offset(0, -10)) ],
              ),
              child: Center(
                child: Image(
                  image: AssetImage("image/home1.jpg"),
                  frameBuilder: (context, child, frame , wasSynchronouslyLoaded) {
                    return child;
                  },
                ), // Add a device image
              ),
            ),
            // IconButton(
            //   icon: Icon(
            //     Symbols.settings_suggest_rounded,
            //     color: const Color.fromARGB(28, 250, 3, 3),
            //   ), // Example: Settings icon
            //   onPressed: () {
            //     Navigator.pushNamed(context, '/test');
            //   },
            // ),
            const SizedBox(height: 30),


            SwipeButton.expand(
              duration: const Duration(milliseconds: 100),
              thumb: const Icon(
                Icons.double_arrow_rounded,
                color: Colors.white,
              ),
              activeThumbColor: const Color.fromARGB(255, 61, 61, 61),
              activeTrackColor: Colors.grey.shade300,
              onSwipe: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Connected"),
                    backgroundColor: Colors.green,
                  ),
                );
              },
              child: const Text(
                "Swipe to connect...",
                style: TextStyle(
                  color: Color.fromARGB(255, 3, 3, 3),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
