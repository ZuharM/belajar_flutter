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

  TextEditingController nama = new TextEditingController();
  TextEditingController alamat = new TextEditingController();
  TextEditingController semester = new TextEditingController();

  void _kirimdata(){
    AlertDialog alertDialog = new AlertDialog(
      content: new Container(
        height: 200.0,
        child: new Column(
          children: <Widget>[
            new Text("Nama Lengkap : ${nama.text}"),
            new Text("Alamat : ${alamat.text}"),
            new Text("Semester : ${semester.text}"),
            RaisedButton(
              child: new Text("OK"),
              onPressed: ()=>Navigator.pop(context),
            )
          ],
        ),
      ),
    );
    showDialog(context: context, child: alertDialog);
  }

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
                 controller: nama,
                  decoration: new InputDecoration(
                  hintText: "Nama Lengkap", 
                  labelText: "Nama Mahasiswa", 
                  icon: Icon(Icons.people), 
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
                controller: alamat,
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
                  controller: semester,
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
              onPressed: () {
                _kirimdata();
              },
            ),
          ],
        ),
      ),
    );
  }
}