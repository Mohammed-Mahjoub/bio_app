import 'package:bio_app/widgets/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BioScreen extends StatefulWidget {
  const BioScreen({Key? key}) : super(key: key);

  @override
  State<BioScreen> createState() => _BioScreenState();
}

class _BioScreenState extends State<BioScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          'Bio App',
          style: TextStyle(
            fontSize: 22,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomEnd,
            colors: [
              Color(0XFFA8A4CE),
              Color(0XFF495C83),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            const CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('images/mohammed.jpeg'),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Mohammed Ashraf Mahjoub',
              style: GoogleFonts.nunito(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Flutter Developer',
              style: GoogleFonts.nunito(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            const Divider(
              thickness: 2,
              indent: 40,
              endIndent: 40,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomCard(
              title: 'Mobile',
              subTitle: '+972-59-777-4041',
              leadingIcon: Icons.phone_android_outlined,
              trailingIcon: Icons.call,
              bottomPadding: 15,
            ),
            CustomCard(
              title: 'Email',
              subTitle: 'momahjoub14@gmail.com',
              leadingIcon: Icons.email_outlined,
              trailingIcon: Icons.send,
            ),
            const Spacer(),
            Text(
              'Mohammed Mahjoub',
              style: GoogleFonts.nunito(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
