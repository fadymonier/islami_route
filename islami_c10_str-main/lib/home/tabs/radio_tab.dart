import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/radio_image.png"),
            SizedBox(
              height: 50,
            ),
            Text(
              "إذاعة القرآن الكريم",
              style: GoogleFonts.elMessiri(
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.skip_previous,
                  size: 40,
                  color: Color(0xffB7935F),
                ),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Icon(
                    Icons.play_arrow_rounded,
                    size: 70,
                    color: Color(0xffB7935F),
                  ),
                ),
                Icon(
                  Icons.skip_next,
                  size: 40,
                  color: Color(0xffB7935F),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
