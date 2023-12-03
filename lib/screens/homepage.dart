import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:laser_slide/screens/help.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var l=["BTN1", "BTN2", "BTN3", "BTN4", "BTN5", "BTN6", "BTN7", "BTN8", "BTN9", "BTN10", "BTN11", "BTN12", "BTN13", "BTN14", "BTN15", "BTN16", "BTN17", "BTN18"];
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 186, 212, 234),
      appBar: AppBar(bottom: PreferredSize( child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("LaserSlides",textScaleFactor: 2,style: TextStyle(color: Colors.white),),
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
                    //         insetPadding:
                    //     EdgeInsets.symmetric(vertical: 100, horizontal: 100),
                    // contentPadding:
                    //     EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    scrollable: true,
                    // actionsOverflowButtonSpacing: 20,
                    // shadowColor: Color.fromARGB(255, 192, 220, 234),
                    backgroundColor:  Color.fromARGB(255, 186, 212, 234),
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.white.withOpacity(0.8), width: 2),
                        borderRadius: BorderRadius.circular(20)),
                    clipBehavior: Clip.antiAlias,
                    content: Container(
                      height: MediaQuery.of(context).size.height * 0.66,
                      width: MediaQuery.of(context).size.width * 1,
                      // color: Color.fromARGB(0, 227, 181, 181),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Network Settings",style: TextStyle(fontSize: 26,fontWeight: FontWeight.w500)),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20,20,0,10),
                              child: Text("Outgoing",style: TextStyle(fontSize: 26),),
                            ),
                             Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: TextField(keyboardType: TextInputType.number,decoration: InputDecoration(label: Text("IP Address",style: TextStyle(fontSize: 21),),enabled: true,enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                                        borderSide: BorderSide(
                                                            color:
                                                                Colors.white)) ,focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color: Colors.white)))),
                             )
                            ,Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(keyboardType: TextInputType.number,decoration: InputDecoration(label: Text("Port",style: TextStyle(fontSize: 21),),enabled: true,enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20),borderSide: BorderSide(color: Colors.white)),focusColor: Colors.white ,focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),
                                                        borderSide: BorderSide(
                                                            color: Colors
                                                                .white)
                                                                )
                                                                )
                                                                ),
                            )
                            ,
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: TextField(
                                            // keyboardType: TextInputType.number,
                                            decoration: InputDecoration(
                                                label: Text(
                                                  "Start Path",
                                                  style: TextStyle(fontSize: 21),
                                                ),
                                                enabled: true,
                                                enabledBorder: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                        borderSide: BorderSide(
                                                            color: Colors
                                                                .white)),
                                                focusedBorder: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
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
                                          style: TextStyle(fontSize: 26),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: TextField(
                                            keyboardType: TextInputType.number,
                                            decoration: InputDecoration(
                                                label: Text(
                                                  "IP Address",
                                                  style: TextStyle(fontSize: 21),
                                                ),
                                                enabled: true,
                                                enabledBorder: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                        borderSide: BorderSide(
                                                            color: Colors
                                                                .white)),
                                                focusedBorder: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20)))),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: TextField(
                                            keyboardType: TextInputType.number,
                                            decoration: InputDecoration(
                                                label: Text(
                                                  "Port",
                                                  style: TextStyle(fontSize: 21),
                                                ),
                                                enabled: true,
                                                enabledBorder: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                        borderSide: BorderSide(
                                                            color: Colors
                                                                .white)),
                                                focusedBorder: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                        borderSide: BorderSide(
                                                            color: Colors
                                                                .white)))),
                                      )
//-----------------------------------------------------------------------------------------------------
                                ,TextButton(onPressed: (){}, child: Text("Save",style: TextStyle(color: Colors.blue,fontSize: 21),))                                                          
                                                          
                          ]),
                    ),
                  );
                
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
      ),preferredSize: Size(double.maxFinite, 0)),
      // title: Text("LaserSlides")
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        itemCount: l.length
        ,gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), itemBuilder: (Context,index){
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: InkWell(
            borderRadius: BorderRadius.circular(40) ,
          onDoubleTap: ()=>showDialog(context: context, builder: (context){
            return AlertDialog(
                            
                            scrollable: true,
                          
                            backgroundColor: Color.fromARGB(255, 186, 212, 234),
                            shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    color: Colors.white.withOpacity(0.8),
                                    width: 2),
                                borderRadius: BorderRadius.circular(20)),
                            clipBehavior: Clip.antiAlias,
                            content: Container(
                              height: MediaQuery.of(context).size.height * 0.43,
                              width: MediaQuery.of(context).size.width * 1,
                              // color: Color.fromARGB(0, 227, 181, 181),
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,

                                  
                                  children: [
                                    Text("Button Setting",
                                        style: TextStyle(
                                            fontSize: 26,
                                            fontWeight: FontWeight.w500)),
                                   
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextField(
                                         
                                          decoration: InputDecoration(
                                              label: Text(
                                                "Label",
                                                style: TextStyle(fontSize: 21),
                                              ),
                                              enabled: true,
                                              enabledBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  borderSide: BorderSide(
                                                      color: Colors.white)),
                                              focusedBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  borderSide: BorderSide(
                                                      color: Colors.white)))),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextField(
                                          decoration: InputDecoration(
                                              label: Text(
                                                "Button Pressed",
                                                style: TextStyle(fontSize: 21),
                                              ),
                                              enabled: true,
                                              enabledBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  borderSide: BorderSide(
                                                      color: Colors.white)),
                                              focusColor: Colors.white,
                                              focusedBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  borderSide: BorderSide(
                                                      color: Colors.white)))),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextField(
                                        
                                          decoration: InputDecoration(
                                              label: Text(
                                                "Button Released",
                                                style: TextStyle(fontSize: 21),
                                              ),
                                              enabled: true,
                                              enabledBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  borderSide: BorderSide(
                                                      color: Colors.white)),
                                              focusedBorder: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
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
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
              child:Container(
                child: Center(child: Text(l[index])),
                decoration: BoxDecoration(border: Border.all(width: 2.0,color:Colors.white),
                borderRadius: BorderRadius.circular(40),
                gradient: LinearGradient(begin: Alignment.topLeft,end: Alignment.bottomRight
                  ,colors: [Color.fromARGB(255, 52, 158, 207),Color.fromARGB(0, 216, 85, 85)])),
              ))),
        );
      })
    );
  }
}