import 'package:flutter/material.dart';

class CardPopular extends StatelessWidget {
  const CardPopular({
    required this.iconstring,
    required this.text1,
    required this.text2,
    super.key,
  });
  final IconData iconstring;
  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 260,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(6)),

      ),
      padding: EdgeInsets.all(40),
      child: ElevatedButton(
    onPressed: (){},
        style: ButtonStyle(
          backgroundColor:  MaterialStatePropertyAll(Color(0xfff4f5fa)),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)))
            

        ),

        child: Column(
        children: [
          SizedBox(height: 10,),
          Icon(iconstring, size: 50, color: Color(0xff29AD62),),
          SizedBox(height: 20),
          Text(text1,
          style:const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 22,
            color: Color(0xff7c7d82),
          )),
          SizedBox(height: 10),
          Text(text2,
            style: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize:18,
              color: Color(0xffcccdd2)
            ),
          ),
        ],
      ),
    )
    );
  }
}
