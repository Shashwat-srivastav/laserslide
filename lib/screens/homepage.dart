import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:gradient_text/gradient_text.dart';
import 'package:laser_slide/screens/help.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';



class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
var yes = false;

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    
    var l=["BTN1", "BTN2", "BTN3", "BTN4", "BTN5", "BTN6", "BTN7", "BTN8", "BTN9", "BTN10", "BTN11", "BTN12", "BTN13", "BTN14", "BTN15", "BTN16", "BTN17", "BTN18"];
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 186, 212, 234),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation:0
        ,bottom: PreferredSize( child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: GradientText("LaserSlides",
                      colors: [
                        Color.fromARGB(255, 76, 124, 191),
                        Color.fromARGB(255, 239,
                          79,
                          63),
                        Color.fromARGB(255, 252, 186, 37),
                        Color.fromARGB(255, 76,
                          124,
                          191),
                        Color.fromARGB(255,49, 177, 97),
                        //  Color(0xFF31b161),     
                      ],
                      style: GoogleFonts.teko(
                          fontSize: 36, fontWeight: FontWeight.w200),
                    ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(100, 0, 0, 0),
            child: TextButton(
              onPressed: ()=>
                 Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context) => HelpPage())),
              
              child: Text(
                        "Help",
                        textScaleFactor: 1,
                          style: TextStyle(color: Colors.white)
                      ),
            ),
          ),
             Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: TextButton(
                      onPressed: ()=> showDialog(context: context, builder: (context){
                          return AlertDialog(
                              scrollable: true,
                              
                              backgroundColor:
                                  Color.fromARGB(255, 173, 219, 244)
                                      .withOpacity(0.7),
                                  // Color.fromARGB(255, 186, 212, 234),
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      color: Colors.white,
                                      width: 2),
                                  borderRadius: BorderRadius.circular(10)),
                              clipBehavior: Clip.antiAlias,
                              content: Container(
                                height: 
                                MediaQuery.of(context).size.height * 0.6,
                                width: 
                                MediaQuery.of(context as BuildContext).size.width * 1,
                                color: Color.fromARGB(0, 227, 181, 181),
                                child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,

                                    // crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      const Text("Network Settings",
                                          style: TextStyle(
                                              fontSize: 21,
                                              fontWeight: FontWeight.w500)),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            10, 10, 0, 5),
                                        child: Text(
                                          "Outgoing",
                                          style: TextStyle(fontSize: 18),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: TextField(
                                            keyboardType: TextInputType.number,
                                            decoration: InputDecoration(
                                                label: Text(
                                                  "IP Address",
                                                  style:
                                                      TextStyle(fontSize: 15),
                                                ),
                                                enabled: true,
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        borderSide: BorderSide(
                                                            color:
                                                                Colors.white)),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        borderSide: BorderSide(
                                                            color: Colors
                                                                .white)))),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: TextField(
                                            keyboardType: TextInputType.number,
                                            decoration: InputDecoration(
                                                label: Text(
                                                  "Port",
                                                  style:
                                                      TextStyle(fontSize: 15),
                                                ),
                                                enabled: true,
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        borderSide: BorderSide(
                                                            color:
                                                                Colors.white)),
                                                focusColor: Colors.white,
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        borderSide: BorderSide(
                                                            color: Colors
                                                                .white)))),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: TextField(
                                            // keyboardType: TextInputType.number,
                                            decoration: InputDecoration(
                                                label: Text(
                                                  "Start Path",
                                                  style:
                                                      TextStyle(fontSize: 15),
                                                ),
                                                enabled: true,
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        borderSide: BorderSide(
                                                            color:
                                                                Colors.white)),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        borderSide: BorderSide(
                                                            color: Colors
                                                                .white)))),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            20, 10, 0, 10),
                                        //---------------------------------------------------------------------------------------------------------------------------------------------
                                        child: Text(
                                          "Incoming",
                                          style: TextStyle(fontSize: 21),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: TextField(
                                            keyboardType: TextInputType.number,
                                            decoration: InputDecoration(
                                                label: Text(
                                                  "IP Address",
                                                  style:
                                                      TextStyle(fontSize: 15),
                                                ),
                                                enabled: true,
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        borderSide: BorderSide(
                                                            color: Colors
                                                                .white)),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    10)))),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: TextField(
                                            keyboardType: TextInputType.number,
                                            decoration: InputDecoration(
                                                label: Text(
                                                  "Port",
                                                  style:
                                                      TextStyle(fontSize: 15),
                                                ),
                                                enabled: true,
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        borderSide: BorderSide(
                                                            color:
                                                                Colors.white)),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        borderSide: BorderSide(
                                                            color: Colors
                                                                .white)))),
                                      )
//-----------------------------------------------------------------------------------------------------
                                      ,
                                      TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            "Save",
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 21),
                                          ))
                                    ]),
                              ),
                            );

                            ;
                        })
                      ,
                      child: Text(
                        "Network",
                        textScaleFactor: 1,
                          style: TextStyle(color: Colors.white)
                      ),
                    ),
                  ),
 
        ],
      ),preferredSize: Size(double.maxFinite, 20)),
      // title: Text("LaserSlides")
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          
          children: [
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                child: Container(
                  height: MediaQuery.of(context).size.height*0.5,
                  width: MediaQuery.of(context).size.width*0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(colors: [Colors.blue.withOpacity(0.4),Colors.green.withOpacity(0.4)],begin: Alignment.topLeft,end: Alignment.bottomRight),
                    border: Border.all(width: 2.0,color:Colors.white ), 
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    Image.asset("lib/assets/icons8-phone-100.png",scale: 0.5,),
                    
                    Card(
                      elevation: 0,
                      color: Colors.transparent,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
                      // clipBehavior: Clip.antiAlias,
                      child: IconButton(
                        splashRadius: 100,
                        padding: const EdgeInsets.fromLTRB(0, 0, 30, 30)
                        ,onPressed: (){
                         if (yes == false) {
                                yes = true;
                              } else {
                                yes = false;
                              }
                        setState(() {
                         
                        });
                      },icon: Icon(Icons.swap_vert_circle_sharp,
                                size: 60,
                                color: yes ? Colors.green : Colors.red,
                              ),
                                   ),
                    ),
                                   Image.asset(
                          "lib/assets/icons8-video-projector-100.png",
                          scale: 0.6,
                        ),

                        
                  
                  
                  ],),),
              ),
            ),
            //-----------------------first part ------------------------------------------ends=--------------------
            // Text("hello",style: TextStyle(fontSize: 36),),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                child: Container(
                  decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                            colors: [
                              Colors.blue.withOpacity(0.4),
                              Colors.green.withOpacity(0.4)
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight),
                        border: Border.all(width: 2.0, color: Colors.white)),
                  //----------------
                  height: MediaQuery.of(context).size.height*0.36,
                  width:MediaQuery.of(context).size.width*0.95 ,
                  child: Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: GridView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.all(18),
                      itemCount: l.length
                      ,gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), itemBuilder: (Context,index){
                      return InkWell(
                        borderRadius: BorderRadius.circular(40) ,
                      onDoubleTap: ()=>showDialog(context: context, builder: (context){
                        return AlertDialog(
                                        
                                        scrollable: true,
                                      
                                        backgroundColor: Color.fromARGB(255, 173, 219, 244).withOpacity(0.7),
                                        shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                                color: Colors.white,
                                                width: 2),
                                            borderRadius: BorderRadius.circular(10)),
                                        clipBehavior: Clip.antiAliasWithSaveLayer,
                                        content: Container(
                                          
                                          height: MediaQuery.of(context).size.height * 0.35,
                                          width: MediaQuery.of(context).size.width * 0.4,
                                          // color: Color.fromARGB(0, 227, 181, 181),
                                          child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                
                                              
                                              children: [
                                                Text("Button Setting",
                                                    style: TextStyle(
                                                        fontSize: 21,
                                                        fontWeight: FontWeight.w500)),
                                               
                                                Padding(
                                                  padding: const EdgeInsets.all(5.0),
                                                  child: TextField(
                                                     
                                                      decoration: InputDecoration(
                                                          label: Text(
                                                            "Label",
                                                            style: TextStyle(fontSize: 15),
                                                          ),
                                                          enabled: true,
                                                          enabledBorder: OutlineInputBorder(
                                                              borderRadius:
                                                                  BorderRadius.circular(10),
                                                              borderSide: BorderSide(
                                                                  color: Colors.white)),
                                                          focusedBorder: OutlineInputBorder(
                                                              borderRadius:
                                                                  BorderRadius.circular(10),
                                                              borderSide: BorderSide(
                                                                  color: Colors.white)))),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.all(5.0),
                                                  child: TextField(
                                                      decoration: InputDecoration(
                                                          label: Text(
                                                            "Button Pressed",
                                                            style: TextStyle(fontSize: 15),
                                                          ),
                                                          enabled: true,
                                                          enabledBorder: OutlineInputBorder(
                                                              borderRadius:
                                                                  BorderRadius.circular(10),
                                                              borderSide: BorderSide(
                                                                  color: Colors.white)),
                                                          focusColor: Colors.white,
                                                          focusedBorder: OutlineInputBorder(
                                                              borderRadius:
                                                                  BorderRadius.circular(10),
                                                              borderSide: BorderSide(
                                                                  color: Colors.white)))),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.all(5.0),
                                                  child: TextField(
                                                    
                                                      decoration: InputDecoration(
                                                          label: Text(
                                                            "Button Released",
                                                            style: TextStyle(fontSize: 15),
                                                          ),
                                                          enabled: true,
                                                          enabledBorder: OutlineInputBorder(
                                                              borderRadius:
                                                                  BorderRadius.circular(10),
                                                              borderSide: BorderSide(
                                                                  color: Colors.white)),
                                                          focusedBorder: OutlineInputBorder(
                                                              borderRadius:
                                                                  BorderRadius.circular(10),
                                                              borderSide: BorderSide(
                                                                  color: Colors.white)))),
                                                ),
                                                TextButton(
                                                    onPressed: () {},
                                                    child: Text(
                                                      "Save",
                                                      style: TextStyle(
                                                          color: Colors.blue, fontSize: 21),
                                                    ))
                                              ]),
                                        ),
                                      );
                      })
                        
                      
                        ,child: Card(
                          elevation: 0,
                          color: Colors.transparent,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          child:Container(
                            child: Center(child: Text(l[index],style: TextStyle(color: Colors.white),)),
                            decoration: BoxDecoration(border: Border.all(width: 2.0,color:Colors.white),
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(begin: Alignment.topLeft,end: Alignment.bottomRight
                              ,colors: [
                                                Colors.blue.withOpacity(0.2),
                                                Colors.green.withOpacity(0.4)
                                              ])),
                          )));
                    }),
                  ),
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}