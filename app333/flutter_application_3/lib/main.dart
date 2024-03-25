import 'package:flutter/material.dart'; 
import 'dart:math';  

void main() { 
  runApp(MaterialApp(home: RunMyApp(),debugShowCheckedModeBanner: false, 
      theme: ThemeData(primarySwatch: Colors.green),)); 
} 
  
class RunMyApp extends StatelessWidget { 
  RunMyApp({super.key}); 
    
  @override 
  Widget build(BuildContext context) { 
    return Scaffold( 
        appBar: AppBar( 
          title: Text('Домашняя страница'), 
        ), 
        body: Center( 
          
          child:  Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
              ElevatedButton( 
                  onPressed: () { 
                    
                    Navigator.push( 
                        context, 
                        MaterialPageRoute( 
                            builder: (context) => 
                                NextPage())); 
                  }, 
                  child: Text('Бесконечный список')
                  ),

                  const SizedBox(
                  height: 30,),

              ElevatedButton( 
                  onPressed: () { 
                    
                    Navigator.push( 
                        context, 
                        MaterialPageRoute( 
                            builder: (context) => 
                                NextPage1())); 
                  }, 
                  child: Text('Простой список')
                  ), 

                  const SizedBox(
                  height: 30,),

              ElevatedButton( 
                  onPressed: () { 
                    
                    Navigator.push( 
                        context, 
                        MaterialPageRoute( 
                            builder: (context) => 
                                NextPage2())); 
                  }, 
                  child: Text('Бесконечный список с степенью числа 2')),      
         
             ],
          )
              
              
                         
        ), 
        
    ); 
  } 
} 
  
class NextPage extends StatelessWidget { 
    
  const NextPage({super.key}); 
  
  @override 
  Widget build(BuildContext context) { 
    return Scaffold( 
      appBar: AppBar(title: Text('Интерфейс бесконечного списка'),), 
      body: Center( 
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            body: ListView.builder(itemBuilder: (context, index){
              return Text('строка $index');
            },
            ),
          ),
        ),
      ), 
    ); 
  } 
}

class NextPage1 extends StatelessWidget { 
    
  const NextPage1({super.key}); 
  
  @override 
  Widget build(BuildContext context) { 
     return Scaffold( 
      appBar: AppBar(title: Text('Интерфейс простого списка'),), 
      body: Center( 
        child: Scaffold(
          body: ListView(children: <Widget>[
            Text('0000'),
            Divider(),
            Text('0001'),
            Divider(),
            Text('0010'),
            Divider(),
          ]
        )
      ),
      ), 
    ); 
  }
}

class NextPage2 extends StatelessWidget { 
    
  const NextPage2({super.key}); 
  
  @override 
  Widget build(BuildContext context) { 
      return Scaffold(
        appBar: AppBar(title: Text('Интерфейс бесконечного списка с степенью числа 2'),),
        body: ListView.separated(
          itemCount: 1000,
          itemBuilder: (context, index) {
            return Text('2 ^ $index = ${pow(2, index)}');
          },
          separatorBuilder: (context, index) {
            return const Divider();
          },
        ),
        );
  }
}





