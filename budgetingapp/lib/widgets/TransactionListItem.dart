import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({ super.key });

  @override
  Widget build(BuildContext context) {
    return 
Container(
                  width: 100,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 4,
                        offset: const Offset(5, 8), // Shadow position
                      ),
                    ],
                  ),
                  child: 
                  Row(children: [
                    SizedBox(width: 10,),
                    const Icon(
                    Icons.emoji_objects_outlined,
                    size: 30,
                    color: Colors.white,
                  ),
                  SizedBox(width: 10,),
                  Text(
                              "-30 Dollars for Electricity Bill",
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                  fontSize: 15),
                            )
                  
                  ],)
                  
                  );
  }
}






