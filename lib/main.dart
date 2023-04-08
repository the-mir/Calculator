import 'package:flutter/material.dart';


void main(){
  return runApp(calculator());
}


class calculator extends StatefulWidget {
  const calculator({super.key});

  @override
  State<calculator> createState() => _calculatorState();
}

String input='';
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
                      Text('10+10',style: TextStyle(fontSize: 40.0),),
                      Text(' = 20',style: TextStyle(fontSize: 40.0),)
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Text('Clear',style: TextStyle(fontSize: 36.0),),
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
                      child: Text('1',style: TextStyle(fontSize: 36.0),),
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
                    child: Container(
                      child: Text('+',style: TextStyle(fontSize: 36.0),),
                      color: Color.fromARGB(255, 2, 81, 85),
                      alignment: Alignment.center,
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
                    child: Container(
                      child:
                      Text('=',style: TextStyle(fontSize: 36.0),),
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