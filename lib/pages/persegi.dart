import 'package:bangun_datar_app/controller/persegi_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class persegi extends StatelessWidget {
  persegi({super.key});
  
final PersegiController _persegiController = Get.put(PersegiController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Persegi Page"),
      ),
      body: Column(
        children: [
          Image.asset(
              "assets/img.png",
              height: 170),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Text("Persegi"),
          ),
      Text("Persegi atau bujur sangkar adalah bangun datar dengan empat sisi dan sudut yang sama panjang."),
      Padding(
          padding: const EdgeInsets.all(10.0),
      child:  TextFormField(
        onChanged: (value){
          _persegiController.sisi=int.parse(value);
        },
      decoration: InputDecoration(
      fillColor: Colors.white,
          filled: true,
          labelText: "sisi",
          hintText: "hitung sisi",
          hintStyle: TextStyle(color: Colors.grey.shade400),
          contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
          border: OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: Colors.grey),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: Colors.grey),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: Colors.blue),
              borderRadius: BorderRadius.all(Radius.circular(10)))),
    ),
      ),
    ElevatedButton(onPressed: (){
      _persegiController.hitungLuas();
    },
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.redAccent),
        ),

        child: Text("hitungluas")),
          Obx(() => Text(_persegiController.hasil.value)),
          ElevatedButton(onPressed: (){
            _persegiController.hitungKeliling();
          },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.teal),
              ),
              child: Text("hitungkeliling")),
          Obx(() => Text(_persegiController.hasil.value))
    ]
    ),
    );
  }
}
