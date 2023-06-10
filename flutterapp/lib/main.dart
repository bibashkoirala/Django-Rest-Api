import 'package:flutter/material.dart';
import 'package:flutterapp/student.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Django Connected',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Django Connected'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

 

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  Student studentService = Student();
  @override
  Widget build(BuildContext context) {
   
   return Scaffold(
      appBar: AppBar(
      title: Text(widget.title),
      ),
      body:  
      Container(
        child: FutureBuilder<List>(
           future: studentService.getAllStudent(),
           builder: (context, snapshot) {
              print(snapshot.data);
              if(snapshot.hasData){
                  return ListView.builder(
                    itemCount: snapshot.data?.length,
                    itemBuilder: (context, i){
        return Card(
          child: ListTile(
             title:Text(
              'Name', style: TextStyle(fontSize: 30.0)
              ,),
               subtitle: Text(
              'Email', style: TextStyle(fontSize: 30.0)
              ,),
              
             ),
        );
      });
              } else{
                return const Center(
                  child: Text('Searching For date'),
                );
              }
           },
           ),
      )
      
       );
  }
}
