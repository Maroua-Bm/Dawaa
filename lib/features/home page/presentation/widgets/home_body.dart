import 'package:flutter/material.dart';
import 'package:myapp/core/utils/constants.dart';
import 'package:myapp/core/utils/widgets/container_drawer.dart';
import 'package:myapp/features/home%20page/categorie_screen.dart';
import 'package:myapp/features/home%20page/pharmacie_screen.dart';

import 'package:myapp/features/home%20page/presentation/widgets/Advertissments_dawaa.dart';
import 'package:myapp/features/home%20page/presentation/widgets/Categories_dawaa.dart';
import 'package:myapp/features/home%20page/presentation/widgets/Pharmacies_dawaa.dart';
import 'package:myapp/features/home%20page/presentation/widgets/title_with_more_btn.dart';

class mydraw extends StatelessWidget {
   mydraw({ Key? key,required this.size }) : super(key: key);
GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

 final Size size;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        key: _scaffoldKey,
        drawer: Drawer(child: Column(
          children: [
           Container(
            width: double.infinity,
            height:115,
            color:kunselectedcolor,
          ),


          containerdrawer(titre: 'Locating settings',mic:Icons. location_on_outlined),
          containerdrawer(titre: 'Login as a pharmacy',mic: Icons.login_rounded),
          containerdrawer(titre:'Help',mic: Icons.help_outline_rounded),
             
          ],
        )
        ),
         
   body :Column(
       children:[
      Container(
       height: size.height*0.17 ,
       child :
   Stack(
      children:[
   Container(
               height:size.height*0.17-25 ,
              decoration: BoxDecoration(
                color:kbuttoncolor,
                  borderRadius : BorderRadius.only(
                  bottomLeft:Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                 ),
                  ),
                      
   Container(
       color: kbuttoncolor,
          margin: EdgeInsets.fromLTRB(10,30, 20,20),        
        child: IconButton(onPressed:() => _scaffoldKey.currentState!.openDrawer(), icon:const Icon(Icons.dehaze),color: Colors.white,iconSize: 35,)
      ),
      Positioned(
          
           left: 0,
           right: 0,
            bottom:10,
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 15),
              padding: EdgeInsets.symmetric(horizontal: 15),
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius .circular(20),
                boxShadow:[
                  BoxShadow(
                  offset: Offset(5,6),
                  blurRadius: 7,
                  color:Colors.black.withOpacity(0.1
                ),),]
                 ),
                child: Row(
                  children:<Widget> [
                    Expanded(
                      child: TextField(
                        decoration:InputDecoration(
                          hintText: "   Search",
                          hintStyle: TextStyle(
                            color: ktextcolor.withOpacity(0.5),
                          ),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                        ),
                    ),
                Icon(
                Icons.search,
                color:ktextcolor.withOpacity(0.5) ,
                size : 20,
                   ),
                  ],
                ),
              ),
            ),
   
   ]),),
            titlewithmorebtn(
               title:"Categories", press: (){},
               co: ktextcolor.withOpacity(0.5),
                scr: categoriescreen(),),
            CategoriesDAWAA(),
            titlewithmorebtn(
              title:"Pharmacies",press: (){},
              co: ktextcolor.withOpacity(0.5),   
              scr:pharmaciescreen() 
            ),
            Pharmaciesdawaa(),
            titlewithmorebtn(
              title:"Advertissments" ,press: (){},
              co: Colors.white,
            ),
            Advertissmentsdawaa(),

   ],
   )
      ),
    );
  }
}
