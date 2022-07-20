import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCard extends StatelessWidget {
  IconData leadingIcon;
  IconData trailingIcon;
  String title;
  String subTitle;
  double bottomPadding;
  CustomCard({
    Key? key,
    required this.leadingIcon,
    required this.trailingIcon,
    required this.title,
    required this.subTitle,
    this.bottomPadding = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsetsDirectional.only(start: 30, end: 30, bottom: bottomPadding),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 8,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Icon(leadingIcon),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.nunito(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    subTitle,
                    style: GoogleFonts.nunito(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Icon(trailingIcon),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}