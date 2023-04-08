import 'package:flutter/material.dart';


void main(){
  return runApp(calculator());
}


class calculator extends StatefulWidget {
  const calculator({super.key});

  @override
  State<calculator> createState() => _calculatorState();
}

String input='',value='',finalResult='';

int add=0,add2=0,result=0,sum=0;
class _calculatorState extends State<calculator> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'LibreBaskerville'),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Calculator",style: TextStyle(fontSize: 36),),
          centerTitle: true,
           backgroundColor: Color.fromARGB(255, 2, 81, 85),
        ),
        drawer: Drawer(
           backgroundColor: Color.fromARGB(234, 3, 73, 77),
          child: ListView(
            children: [
              Stack(
                children: [
                  Image.asset('assets/images/img1.jpg'),
                  Positioned(
                    left: 110,
                    top: 10,
                    child: Center(
                      child: Container(
                        height: 70,
                        width: 70,
                        child: Image.asset('assets/images/profile.png'),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 40,
                    top: 82,
                    child: Center(
                      child: Text(
                        'Mir Md. Mosarof Hossan Showrav',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,fontSize: 12),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 100,
                    top: 100,
                    child: Center(
                      child: Text(
                        'Flutter Developer',
                        style: TextStyle(
                          color: Colors.white,fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 40,
                    top: 116,
                    child: Center(
                      child: Text(
                        'Email : showravofficial@gmail.com',
                        style: TextStyle(
                          color: Colors.white, fontSize: 11,
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(input,
                        style: TextStyle(fontSize: 40.0),),
                      Text(finalResult ,
                        style: TextStyle(fontSize: 40.0),)
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5,
              width: 5,
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          input =input+'1';
                          value=value+'1';
                        });
                      },
                      child: Container(
                        child: Text('1',style: TextStyle(fontSize: 36.0),),
                        color: Color.fromARGB(255, 2, 81, 85),
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                    width: 5,
                  ),
                  Expanded(
                    child: Container(
                      child: Text('2',style: TextStyle(fontSize: 36.0),),
                      color: Color.fromARGB(255, 2, 81, 85),
                      alignment: Alignment.center,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                    width: 5,
                  ),
                  Expanded(
                    child: Container(
                      child: Text('3',style: TextStyle(fontSize: 36.0),),
                      color: Color.fromARGB(255, 2, 81, 85),
                      alignment: Alignment.center,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                    width: 5,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          input= input + '+';
                          add=int.parse(value);
                          value='';
                          sum=1;
                        });
                      },
                      child: Container(
                        child: Text('+',style: TextStyle(fontSize: 36.0),),
                        color: Color.fromARGB(255, 2, 81, 85),
                        alignment: Alignment.center,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child:
                      Text('4',style: TextStyle(fontSize: 36.0),),
                      color: Color.fromARGB(255, 2, 81, 85),
                      alignment: Alignment.center,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                    width: 5,
                  ),
                  Expanded(
                    child: Container(
                      child:
                      Text('5',style: TextStyle(fontSize: 36.0),),
                      color: Color.fromARGB(255, 2, 81, 85),
                      alignment: Alignment.center,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                    width: 5,
                  ),
                  Expanded(
                    child: Container(
                      child:
                      Text('6',style: TextStyle(fontSize: 36.0),),
                      color: Color.fromARGB(255, 2, 81, 85),
                      alignment: Alignment.center,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                    width: 5,
                  ),
                  Expanded(
                    child: Container(
                      child:
                      Icon(Icons.remove,size: 24,),
                      color: Color.fromARGB(255, 2, 81, 85),
                      alignment: Alignment.center,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5,
              width: 5,
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child:
                      Text('7',style: TextStyle(fontSize: 36.0),),
                      color: Color.fromARGB(255, 2, 81, 85),
                      alignment: Alignment.center,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                    width: 5,
                  ),
                  Expanded(
                    child: Container(
                      child:
                      Text('8',style: TextStyle(fontSize: 36.0),),
                      color: Color.fromARGB(255, 2, 81, 85),
                      alignment: Alignment.center,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                    width: 5,
                  ),
                  Expanded(
                    child: Container(
                      child:
                      Text('9',style: TextStyle(fontSize: 36.0),),
                      color: Color.fromARGB(255, 2, 81, 85),
                      alignment: Alignment.center,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                    width: 5,
                  ),
                  Expanded(
                    child: Container(
                      child:
                      Icon(Icons.clear,size: 24,),
                      color: Color.fromARGB(255, 2, 81, 85),
                      alignment: Alignment.center,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5,
              width: 5,
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child:
                      Text('0',style: TextStyle(fontSize: 36.0),),
                      color: Color.fromARGB(255, 2, 81, 85),
                      alignment: Alignment.center,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                    width: 5,
                  ),
                  Expanded(
                    child: Container(
                      child:
                      Text('C',style: TextStyle(fontSize: 36.0),),
                      color: Color.fromARGB(255, 2, 81, 85),
                      alignment: Alignment.center,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                    width: 5,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        setState(() {
                              add2=int.parse(value);
                              result=add+add2;
                              finalResult= '=' +result.toString();
                        });
                      },
                      child: Container(
                        child:
                        Text('=',style: TextStyle(fontSize: 36.0),),
                        color: Color.fromARGB(255, 2, 81, 85),
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                    width: 5,
                  ),
                  Expanded(
                    child: Container(
                      child:
                      Text('/',style: TextStyle(fontSize: 36.0),),
                      color: Color.fromARGB(255, 2, 81, 85),
                      alignment: Alignment.center,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}