import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

String tasbih1 = "سبحان الله";
String tasbih2 = "الحمد لله";
String tasbih3 = "لا اله الا الله";

int counter = 0;

class _SebhaTabState extends State<SebhaTab> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/head_sebha_logo.png"),
            InkWell(
                onTap: () {},
                child: Image.asset("assets/images/body_sebha_logo.png")),
            SizedBox(
              height: 25,
            ),
            Text(
              "عدد التسبيحات",
              style: GoogleFonts.elMessiri(
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              width: 80,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Color(0xffB7935F),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(


                  "$counter",
                  style: GoogleFonts.inter(
                    fontSize: 25,

                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Color(0xffB7935F),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "سبحان الله",
                  style: GoogleFonts.inter(
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
