///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

import 'package:flutter/material.dart';


class home extends StatelessWidget {

@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: Color(0xffffffff),
body:
Column(
mainAxisAlignment:MainAxisAlignment.start,
crossAxisAlignment:CrossAxisAlignment.stretch,
mainAxisSize:MainAxisSize.max,
children: [

SizedBox(
height:29,
width:16,
),

Card( 
margin:EdgeInsets.all(4),
color:Color(0xffe0e0e0),
shadowColor:Color(0xff000000),
elevation:1,
shape:RoundedRectangleBorder(
borderRadius:BorderRadius.circular(4.0),
side: BorderSide(color:Color(0x4d9e9e9e), width:1),
),
child:

Column(
mainAxisAlignment:MainAxisAlignment.start,
crossAxisAlignment:CrossAxisAlignment.center,
mainAxisSize:MainAxisSize.max,
children: [
TextField(
controller:TextEditingController(),
obscureText:false,
textAlign:TextAlign.start,
maxLines:1,
style:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff000000),
),
decoration:InputDecoration(
disabledBorder:OutlineInputBorder(
borderRadius:BorderRadius.circular(4.0),
borderSide:BorderSide(
color:Color(0xff000000),
width:1
),
),
focusedBorder:OutlineInputBorder(
borderRadius:BorderRadius.circular(4.0),
borderSide:BorderSide(
color:Color(0xff000000),
width:1
),
),
enabledBorder:OutlineInputBorder(
borderRadius:BorderRadius.circular(4.0),
borderSide:BorderSide(
color:Color(0xff000000),
width:1
),
),
hintText:"Enter Text",
hintStyle:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff000000),
),
filled:true,
fillColor:Color(0xfff2f2f3),
isDense:false,
contentPadding:EdgeInsets.symmetric(vertical: 8,horizontal:12),
),
),
Padding(
padding:EdgeInsets.fromLTRB(0, 10, 0, 0),
child:Row(
mainAxisAlignment:MainAxisAlignment.spaceBetween,
crossAxisAlignment:CrossAxisAlignment.center,
mainAxisSize:MainAxisSize.max,
children:[

Padding(
padding:EdgeInsets.fromLTRB(10, 0, 0, 0),
child:IconButton(
icon:Icon(
Icons.add
),
onPressed:(){},
color:Color(0xff212435),
iconSize:24,
),
),
Padding(
padding:EdgeInsets.fromLTRB(0, 0, 10, 0),
child:MaterialButton(
onPressed:(){},
color:Color(0xffffffff),
elevation:0,
shape:RoundedRectangleBorder(
borderRadius:BorderRadius.zero,
side:BorderSide(color:Color(0xff808080),width:1),
),
padding:EdgeInsets.all(16),
child:Text("Button", style: TextStyle( fontSize:14,
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
),),
textColor:Color(0xff000000),
height:40,
minWidth:140,
),
),
],),),
],),
),
Divider(
color:Color(0xff808080),
height:16,
thickness:0,
indent:0,
endIndent:0,
),
Padding(
padding:EdgeInsets.fromLTRB(0, 0, 15, 0),
child:Row(
mainAxisAlignment:MainAxisAlignment.end,
crossAxisAlignment:CrossAxisAlignment.center,
mainAxisSize:MainAxisSize.max,
children:[

Text(
"Text",
textAlign: TextAlign.start,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff000000),
),
),
],),),

Expanded(
flex: 1,
child: 
ListView(
scrollDirection: Axis.vertical,
padding:EdgeInsets.all(0),
shrinkWrap:false,
physics:ScrollPhysics(), 
children:[


Card( 
margin:EdgeInsets.all(4),
color:Color(0x79d7f8f9),
shadowColor:Color(0xff000000),
elevation:1,
shape:RoundedRectangleBorder(
borderRadius:BorderRadius.circular(4.0),
side: BorderSide(color:Color(0x4d9e9e9e), width:1),
),
child:
Row(
mainAxisAlignment:MainAxisAlignment.spaceBetween,
crossAxisAlignment:CrossAxisAlignment.center,
mainAxisSize:MainAxisSize.max,
children:[

Container(
margin:EdgeInsets.all(0),
padding:EdgeInsets.all(0),
width:92,
height:90,
decoration: BoxDecoration(
color:Color(0x1f000000),
shape:BoxShape.rectangle,
borderRadius:BorderRadius.zero,
border:Border.all(color:Color(0x4d9e9e9e),width:1),
),
child:

Stack(
alignment:Alignment.topLeft,
children: [
Align(
alignment:Alignment.bottomRight,
child:Icon(
Icons.adjust,
color:Color(0xff10b818),
size:90,
),
),
Align(
alignment:Alignment(0.0, 0.1),
child:Container(
height:70,
width:70,
clipBehavior: Clip.antiAlias,
decoration: BoxDecoration(
shape: BoxShape.circle,
),
child:Image.network(
 "https://picsum.photos/250?image=9",
fit:BoxFit.cover),
),
),
],),
),

Column(
mainAxisAlignment:MainAxisAlignment.start,
crossAxisAlignment:CrossAxisAlignment.center,
mainAxisSize:MainAxisSize.max,
children: [
Text(
"Text",
textAlign: TextAlign.start,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff000000),
),
),

SizedBox(
height:16,
width:16,
),
Text(
"Text",
textAlign: TextAlign.start,
overflow:TextOverflow.clip,
style:TextStyle(
fontWeight:FontWeight.w400,
fontStyle:FontStyle.normal,
fontSize:14,
color:Color(0xff000000),
),
),
],),
Padding(
padding:EdgeInsets.fromLTRB(0, 0, 10, 0),
child:Container(
height:20,
width:20,
clipBehavior: Clip.antiAlias,
decoration: BoxDecoration(
shape: BoxShape.circle,
),
child:Image.network(
 "https://picsum.photos/250?image=9",
fit:BoxFit.cover),
),
),
],),
),

Card( 
margin:EdgeInsets.all(4),
color:Color(0xffe0e0e0),
shadowColor:Color(0xff000000),
elevation:1,
shape:RoundedRectangleBorder(
borderRadius:BorderRadius.circular(4.0),
side: BorderSide(color:Color(0x4d9e9e9e), width:1),
),
)

,

Card( 
margin:EdgeInsets.all(4),
color:Color(0xffe0e0e0),
shadowColor:Color(0xff000000),
elevation:1,
shape:RoundedRectangleBorder(
borderRadius:BorderRadius.circular(4.0),
side: BorderSide(color:Color(0x4d9e9e9e), width:1),
),
)

,
],),),
],),
)
;}
}