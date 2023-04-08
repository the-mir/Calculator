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

int add=0,add2=0,result=0,process=0,presskey=0,operator=0;
double dresult=0;
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
                          presskey=1;
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
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          presskey=1;
                          input =input+'2';
                          value=value+'2';
                        });
                      },
                      child: Container(
                        child: Text('2',style: TextStyle(fontSize: 36.0),),
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
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          presskey=1;
                          input =input+'3';
                          value=value+'3';
                        });
                      },
                      child: Container(
                        child: Text('3',style: TextStyle(fontSize: 36.0),),
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
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          if(presskey==1 && operator==0)
                            {
                                input= input + '+';
                                add=int.parse(value);
                                value='';
                                process=1;
                                operator=operator+1;

                            }
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
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          presskey=1;
                          input =input+'4';
                          value=value+'4';
                        });
                      },
                      child: Container(
                        child:
                        Text('4',style: TextStyle(fontSize: 36.0),),
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
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          presskey=1;
                          input =input+'5';
                          value=value+'5';
                        });
                      },
                      child: Container(
                        child:
                        Text('5',style: TextStyle(fontSize: 36.0),),
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
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          presskey=1;
                          input=input+'6';
                          value=value+'6';
                        });
                      },
                      child: Container(
                        child:
                        Text('6',style: TextStyle(fontSize: 36.0),),
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
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          process=2;
                          input= input + '-';
                          add=int.parse(value);
                          value='';
                          operator=operator+1;
                        });
                      },
                      child: Container(
                        child:
                        Icon(Icons.remove,size: 24,),
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
                          presskey=1;
                          input =input+'7';
                          value=value+'7';
                        });
                      },
                      child: Container(
                        child:
                        Text('7',style: TextStyle(fontSize: 36.0),),
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
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          presskey=1;
                          input =input+'8';
                          value=value+'8';
                        });
                      },
                      child: Container(
                        child:
                        Text('8',style: TextStyle(fontSize: 36.0),),
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
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          presskey=1;
                          input =input+'9';
                          value=value+'9';
                        });
                      },
                      child: Container(
                        child:
                        Text('9',style: TextStyle(fontSize: 36.0),),
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
                    child: InkWell(
                      onTap: (){
                        process=3;
                        input= input + 'X';
                        add=int.parse(value);
                        value='';
                        operator=operator+1;
                      },
                      child: Container(
                        child:
                        Icon(Icons.clear,size: 24,),
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
                          presskey=1;
                          input =input+'0';
                          value=value+'0';
                        });
                      },
                      child: Container(
                        child:
                        Text('0',style: TextStyle(fontSize: 36.0),),
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
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          input='';
                          value='';
                          finalResult='';
                          result=0;
                        });
                      },
                      child: Container(
                        child:
                        Text('C',style: TextStyle(fontSize: 36.0),),
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
                    child: InkWell(
                      onTap: (){
                        setState(() {
                              if(process==1){
                                add2=int.parse(value);
                                result=add+add2;
                                finalResult= '=' +result.toString();
                              }
                              if(process==2){
                                add2=int.parse(value);
                                result=add-add2;
                                finalResult= '=' +result.toString();
                              }
                              if(process==3){
                                add2=int.parse(value);
                                result=add*add2;
                                finalResult= '=' +result.toString();
                              }
                              if(process==4){
                                add2=int.parse(value);
                                dresult =add / add2;
                                finalResult= '=' +dresult.toStringAsFixed(2);
                              }
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
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          process=4;
                          input= input + '/';
                          add=int.parse(value);
                          value='';
                          operator=operator+1;
                        });
                      },
                      child: Container(
                        child:
                        Text('/',
                          style: TextStyle(fontSize: 36.0),),
                        color: Color.fromARGB(255, 2, 81, 85),
                        alignment: Alignment.center,
                      ),
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