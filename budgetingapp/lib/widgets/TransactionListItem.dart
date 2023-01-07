import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TransactionItem extends StatelessWidget {
  final Color color;
  final String text;

  const TransactionItem({super.key, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 100,
        height: 50,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              blurRadius: 4,
              // Shadow position
            ),
          ],
        ),
        child: Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            const Icon(
              Icons.emoji_objects_outlined,
              size: 30,
              color: Colors.white,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              text,
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                  fontSize: 15),
            ),
          ],
        ));
  }
}
