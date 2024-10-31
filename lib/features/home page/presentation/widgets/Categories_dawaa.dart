import 'package:flutter/material.dart';
import 'package:myapp/core/utils/constants.dart';

class CategoriesDAWAA extends StatelessWidget {
  const CategoriesDAWAA({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          categoriesdawaacard(image:'assets/images/cat1.png',siz: 57,
          title:'Respiratory diseases',
          thecolor: kttextcolorcategoriered,
          to:10,
          righ: 0,
          lef: 0,
          ),
          categoriesdawaacard(image:'assets/images/cat8.png',siz:55,
          title:'Dietary supp',
          thecolor: kttextcolorcategoriemove,
          to:10,
          righ: 15,
          lef: 23,  
          ),
          categoriesdawaacard(image:'assets/images/cat3.png',siz: 45,
          title:'Heart diseases ',
          thecolor: kttextcolorcategoriered,
          to: 20,
          righ: 15,
          lef: 20,
          ),
          categoriesdawaacard(image:'assets/images/cat12.png',siz: 52,
          title:'Endemic diseases',
          thecolor: kttextcolorcategorieorange,
          to: 13,
          righ:0,
          lef: 10,
          ),
          categoriesdawaacard(image:'assets/images/cat13.png',siz: 56,
          title:' Pain & fever',
          thecolor: kttextcolorcategoriemove,
          to: 10,
          righ: 15,
          lef: 25,
          ),
          categoriesdawaacard(image:'assets/images/cat6.png',siz:44,
          title:'Skin diseases',
          thecolor: kttextcolorcategoriered,
          to: 23,
          righ:15,
          lef: 25,
          ),
          categoriesdawaacard(image:'assets/images/cat7.png',siz:55,

          title:'Eye Disease ',
          thecolor: kttextcolorcategoriegreen,
          to: 12,
          righ: 15,
          lef: 25,
          ),
          categoriesdawaacard(image:'assets/images/cat14.png',siz:65,
          title:'Diabetes ',
          thecolor: kttextcolorcategorieorange,
          to: 0,
          righ: 15,
          lef: 31,
          ),
        ],
      ),
    );
  }
}

class categoriesdawaacard extends StatelessWidget {
  const categoriesdawaacard({
    Key? key, this.size, this.image, this.title,this.thecolor,this.righ,this.lef, this.siz, this.to
  }) : super(key: key);
  final Size? size;
  final String? image;
  final String? title;
  final  thecolor;
  final double? to;
  final double? lef;
  final double? righ;
  final double? siz;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: (){},
      child: Container(
      
      margin: EdgeInsets.only(left: 20,bottom:7),
        width: 110,
        height: 110,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius .circular(20),
          boxShadow:[
            BoxShadow(
            offset: Offset(5,6),
            blurRadius: 7,
            color:Colors.black.withOpacity(0.1),
          ),]
           ),
          
           child :Column(
             children :[
               Container(
                 margin: EdgeInsets.only(top: 20), 
                 child :Image.asset(image!,height:siz!),),
               Container(
                 width:110,
                 height: 15,
                 margin: EdgeInsets.only(
                   top:to!,
                   left:lef!,
                   right:righ!,
                 ),
                child : Text(title!,style: TextStyle(
                 fontFamily:'Nunito',
                 fontSize:11,
                 fontWeight: FontWeight.bold,
                 color: thecolor!,
               ),),
             
               ),
             ],
           )
           
    ),);
  }
}

