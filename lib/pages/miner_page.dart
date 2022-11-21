import 'package:flutter/material.dart';


class MinerPage extends StatefulWidget {
  const MinerPage({Key? key}) : super(key: key);

  @override
  State<MinerPage> createState() => _MinerPageState();
}

class _MinerPageState extends State<MinerPage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double paddHeight = MediaQuery.of(context).size.height;
    final double paddwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromRGBO(55, 66, 63, 1),
        title: Center(
          child: Text(
            "Miner",style: TextStyle(fontFamily: "Lato", fontSize: 25, color: Colors.white),
          ),
        ),
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromRGBO(55, 66, 63, 1),
    body: Column(
      children: [
        Padding(padding: EdgeInsets.only(top: paddHeight*0.05),child:
          Center(child: Text("Mining is currently ON",style: TextStyle(fontSize: 25,fontFamily: "Lato",color: Colors.white),),),),
        Padding(padding: EdgeInsets.only(top: paddHeight*0.05),child:
          Center(child: Text("45 mh/s",style: TextStyle(fontSize: 25,fontFamily: "Lato",color: Colors.white),),),),
        Padding(padding: EdgeInsets.only(top: paddHeight*0.05),child:
          Center(child: Text("GPU temperature - 60 c",style: TextStyle(fontSize: 25,fontFamily: "Lato",color: Colors.white),),),),



        Padding(padding: EdgeInsets.only(top: paddHeight*0.1),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Container(child: ElevatedButton(style: ButtonStyle(elevation: MaterialStateProperty.all(5),backgroundColor: MaterialStateProperty.all(Color.fromRGBO(55, 66, 63, 1))), onPressed: (){}, child: Container(child: Text("Start Mining",style: TextStyle(fontFamily: "Lato", fontSize: 25, color: Colors.white)))))],
        ),)
      ],
    ),

    );
  }
}
