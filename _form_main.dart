import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "My Apps",
    debugShowCheckedModeBanner: false,
    home: new Myapp(),
  ));
}

class Myapp extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("My Apps"),
      ),
      body: new Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
               child: TextField(
                decoration: new InputDecoration(
                  hintText: "Nama Lengkap", 
                  labelText: "Nama Mahasiswa", 
                  icon: Icon(Icons.people), 
                  border: OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(10.0)
                  ),
                ),
                keyboardType: TextInputType.numberWithOptions(),
              ),
            ),
            
            Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: TextField(
                decoration: new InputDecoration(
                  hintText: "Alamat Lengkap", 
                  labelText: "Alamat", 
                  icon: Icon(Icons.home), 
                  border: OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(10.0)
                  ),
                ),
                keyboardType: TextInputType.text,
              ),
            ),

            Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: TextField(
                decoration: new InputDecoration(
                  hintText: "Semester", 
                  labelText: "Semester Kuliah", 
                  icon: Icon(Icons.event_seat), 
                  border: OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(10.0)
                  ),
                ),
                keyboardType: TextInputType.number,
              ),
            ),

            RaisedButton(
              child: Text(
                "Submit",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
              onPressed: (){},
            ),
          ],
        ),
      ),
    );
  }
}