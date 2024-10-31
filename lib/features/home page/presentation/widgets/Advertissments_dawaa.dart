import 'package:flutter/material.dart';

class Advertissmentsdawaa extends StatelessWidget {
  const Advertissmentsdawaa({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Advertissmentsdawaacard(),
          Advertissmentsdawaacard(),
          Advertissmentsdawaacard(),
          Advertissmentsdawaacard(),
        ],
      ),
    );
  }
}

class Advertissmentsdawaacard extends StatelessWidget {
  const Advertissmentsdawaacard({
    Key? key, this.size,
  }) : super(key: key);
  final Size? size;

  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap:(){} ,
      child: Container(
        margin: EdgeInsets.only(left: 20,top:5,bottom:7),
        width:236,
        height: 180,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      boxShadow:[
        BoxShadow(
        offset: Offset(5,6),
        blurRadius: 7,
        color:Colors.black.withOpacity(0.1),
      ),]),
       ),
    );
  }
}

