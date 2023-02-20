import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:parking_app_sqlite/DatabaseHelper.dart';

class userScreen extends StatefulWidget {
  const userScreen({super.key});

  @override
  State<userScreen> createState() => _userScreenState();
}

class _userScreenState extends State<userScreen> {
  TextEditingController _controller = TextEditingController();
  bool _isValid = false;

  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        _isValid = _controller.text.isNotEmpty &&
            int.tryParse(_controller.text) != null &&
            _controller.text.length <= 4;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _controller,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter a number up to 4 digits',
                  ),
                ),
              ),
              SizedBox(width: 16.0),
              ElevatedButton(
                onPressed: _isValid
                    ? () async {
                        bool exists = await DatabaseHelper.instance
                            .checkIfCodeExists(_controller.text);
                        if (exists == true) {
                          print("truue  truuue truueee truuuee ");
                        } else
                          print("false faaaaalseee fallsseee ");
                      }
                    : null,
                child: Text('Validate'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
