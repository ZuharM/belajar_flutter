import 'package:flutter/material.dart';

//void main() => runApp(MyApp());
//fungsi main akan dijalankan pertama sekali saat program pertama sekali dijalankan
//fungsi ini akan menjalankan method runApp. method runApp akan menjalankan aplikasi yang ada dalam kelas MyApp. bentuk lain dari fungsi main ini dapat ditulis : 
void main(){
  runApp(new MyApp());
} 

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) { 
    //method build mengembalikan sebuah widget yg merupakan tampilan dari statelesswidget yakni MyApp 
    // sebuah widget yg berisi data-data yg akan diperlukan oleh aplikasi yg menggunakan material design. material design memiliki beberapa property yg dapat digunakan
    return MaterialApp(
      //widget Scaffold widget utama dari materialApp yg memiliki 2 bagian utama yakni appBar dan body
      home: Scaffold(
        appBar: AppBar(title: Text("Aplikasi Hello FLutter"),),
        body: Center(child: Text("Hello Flutter"),),
      ),
    );
  }
}
