import 'package:flutter/material.dart';

class AddSub extends StatefulWidget {
  const AddSub({
    Key? key,
  }) : super(key: key); //error disini
  @override
  State<AddSub> createState() => _AddSubState();
}

class _AddSubState extends State<AddSub> {
  int _result = 0;
  int? sum;

  void _setResult() {
    setState(() {
      _result = sum!;
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final _num1 = TextEditingController();
    final _num2 = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: Text("Add or Sub")),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            children: [
              Text("Add or Sub",
                  style: TextStyle(fontSize: 30, color: Colors.black)),
              SizedBox(
                height: 15,
              ),
              TextField(
                controller: _num1,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Number 1",
                    labelStyle:
                        TextStyle(fontSize: 15, color: Colors.grey.shade400),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                controller: _num2,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Number 2",
                    labelStyle:
                        TextStyle(fontSize: 15, color: Colors.grey.shade400),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: Text('Result ' + _result.toString(),
                    style: TextStyle(fontSize: 20, color: Colors.black)),
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  print(_num1);
                  sum = int.parse(_num1.text) + int.parse(_num2.text);
                  _setResult();
                },
                child: Container(
                  alignment: Alignment.center,
                  height: size.height / 14,
                  width: size.width,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(5)),
                  child: Text(
                    "Add",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  sum = int.parse(_num1.text) - int.parse(_num2.text);
                  _setResult();
                },
                child: Container(
                  alignment: Alignment.center,
                  height: size.height / 14,
                  width: size.width,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(5)),
                  child: Text(
                    "Sub",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
