import 'package:flutter/material.dart';

class InfoPageCard extends StatelessWidget {
  const InfoPageCard({
  required this.iconsstring,
    required this.text1,
    required this.text2,
  super.key,});
  final IconData iconsstring;
  final String text1 ;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Color(0xfff4f5fa),
          shape: BoxShape.circle,
        border: Border.all(width: 0.5, color: Color(0xff29AD62))
      ),
      padding: EdgeInsets.all(20),
      child: Icon(iconsstring, size: 50, color: Color(0xff29AD62),),
      ),
        SizedBox(height: 20,),
        Container(
          width: 180,
          child: Center(
            child: Text(text1, style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.normal,
            ),),
          ),
        ),
        SizedBox(height: 10,),
        Container(
          width: 260,
          child: Center(
            child: Text(text2,textAlign: TextAlign.center , style: TextStyle(
              color: Color(0xff7c7d82),
              fontSize: 18,
              fontWeight: FontWeight.normal
            ),),
          ),
        )
    ]
    );
  }
}
