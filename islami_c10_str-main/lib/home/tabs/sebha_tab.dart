import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0;
  int currentIndex = 0;

  List<String> tasbih = ["سبحان الله", "الحمد لله", "لا اله الا الله"];

  void tasbihCounter() {
    setState(() {
      counter++;
      if (counter % 30 == 0) {
        counter = 0;
        currentIndex = (currentIndex + 1) % tasbih.length;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/head_sebha_logo.png"),
            // Ensure image exists
            InkWell(
              onTap: tasbihCounter,
              child: Image.asset(
                  "assets/images/body_sebha_logo.png"), // Ensure image exists
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              "عدد التسبيحات",
              style: GoogleFonts.elMessiri(
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              width: 80,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: const Color(0xffB7935F),
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
            const SizedBox(
              height: 25,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: const Color(0xffB7935F),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  tasbih[currentIndex],
                  style: GoogleFonts.inter(
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
