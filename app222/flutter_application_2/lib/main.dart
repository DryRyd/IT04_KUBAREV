

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 66, 187, 30)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Общежитие КубГАУ'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  int like = 0;

  void incrementLike() {
    setState(() {

      like++;
    });
  }
void shareDormitory() {
    
  }
void copyAddress() {
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      
        title: Text(widget.title),
      ),
      
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
         children: <Widget>[
      Image.asset('images/phot.jpg',
      height: 300, 
      ),
     
      Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          
          children: [
            Text(
            'Общежитие 20',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
             fontSize: 15,
            ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'г. Краснодар, ул. Калинина 13',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                    icon: Icon(Icons.favorite, color: Colors.red),
                    onPressed: incrementLike,
                    ),
                    
                    Text("$like"),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
            Column(
              
                  children: [
                    Column(
                      children: [
                    IconButton(
                    icon: Icon(Icons.phone, color: Colors.green),
                    onPressed: shareDormitory,
                  
                    ),
                      ],
                    ),
                  
                    Text('Позвонить'),
                  ],
            ),
            
              Column(
                        children: [
                          IconButton(
                            icon: Icon(Icons.directions, color: Colors.green),
                            onPressed: copyAddress,
                          ),
                          Text('Маршрут'),
                        ],
                      ),
                Column(
                        children: [
                          IconButton(
                              icon: Icon(Icons.share, color: Colors.green),
                              onPressed: shareDormitory),
                          Text('Поделиться'),
                        ],
                       )
          ],
            ),
          ],
        
        ),
      
      ),
      
       SizedBox(height: 16),
       Padding(
        padding: EdgeInsets.all(40),
        child: 
                  Text(
                    
                    "Студенческий городок или так называемый кампус Кубанского ГАУ состоит из двадцати общежитий, в которых проживает более 8000 студентов, что составляет 96 от всех нуждающихся. Студенты первого курса обеспечены местами в общежитии полностью. В соответствии с Положением о студенческих общежитиях университета, при поселении между администрацией и студентами заключается договор найма жилого помещения. Воспитательная работа в общежитиях направлена на улучшение быта, соблюдение правил внутреннего распорядка, отсутствия асоциальных явлений в молодежной среде. Условия проживания в общежитиях университетского кампуса полностью отвечают санитарным нормам и требованиям: наличие оборудованных кухонь, душевых комнат, прачечных, читальных залов, комнат самоподготовки, помещений для заседаний студенческих советов и наглядной агитации. С целью улучшения условий быта студентов активно работает система студенческого самоуправления - студенческие советы организуют всю работу по самообслуживанию.",
                    style: TextStyle(fontSize: 16),
                  ),
       ),
         ],
        
      ),

      
      ),
    );
  }
}
