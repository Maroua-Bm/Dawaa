import 'package:flutter/material.dart';
import 'package:myapp/core/utils/constants.dart';

class mydrawer extends StatelessWidget {
   mydrawer({ Key? key, required this.size}) : super(key: key);
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


         Container(
           padding: EdgeInsets.only(left: 10),
            width: double.infinity,
            height:65,
            decoration: BoxDecoration(border: Border(bottom: BorderSide(color:kshadowcolor,width:1))),
           child: Row(
            children: [
            Icon(Icons.location_on_outlined,color:kunselectedcolor,size:32,) ,
            SizedBox(
              width:8,
            ),
            Text('Location settings',
             style: TextStyle(
             fontFamily:'Nunito',
             fontWeight:FontWeight.bold ,
             fontSize: 17,
             color: ktextmorecolor,
             ),
              
              ) ,
              ],
            ),
          ),
          Container(
           padding: EdgeInsets.only(left: 10),
            width: double.infinity,
            height:65,
            decoration: BoxDecoration(border: Border(bottom: BorderSide(color:kshadowcolor,width:1))),
           child: Row(
            children: [
            Icon(Icons.login_rounded,color:kunselectedcolor,size:32,) ,
            SizedBox(
              width:8,
            ),
            Text('Log in as a pharmacy',
             style: TextStyle(
             fontFamily:'Nunito',
             fontWeight:FontWeight.bold ,
             fontSize: 17,
             color: ktextmorecolor,
             ),
              
              ) ,
              ],
            ),
          ),
          Container(
           padding: EdgeInsets.only(left: 10),
            width: double.infinity,
            height:65,
            decoration: BoxDecoration(border: Border(bottom: BorderSide(color:kshadowcolor,width:1))),
           child: Row(
            children: [
            Icon(Icons.help_outline_rounded,color:kunselectedcolor,size:32,) ,
            SizedBox(
              width:8,
            ),
            Text('Help',
             style: TextStyle(
             fontFamily:'Nunito',
             fontWeight:FontWeight.bold ,
             fontSize: 17,
             color: ktextmorecolor,
             ),
              
              ) ,
              ],
            ),
          )   
             
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
            

   ],
   )
      ),
    );
  }
}