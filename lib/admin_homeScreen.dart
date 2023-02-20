import 'package:flutter/material.dart';
import 'package:flutter/src/animation/animation_controller.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';

import 'DatabaseHelper.dart';

class adminHomeScreen extends StatefulWidget {
  const adminHomeScreen({super.key});

  @override
  State<adminHomeScreen> createState() => _adminHomeScreenState();
}

class _adminHomeScreenState extends State<adminHomeScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _codeController = TextEditingController();

  final DatabaseHelper _dbHelper = DatabaseHelper.instance;

  List<Map<String, dynamic>> _data = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SQLite Demo',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _codeController = TextEditingController();

  final DatabaseHelper _dbHelper = DatabaseHelper.instance;

  List<Map<String, dynamic>> _data = [];

  @override
  void initState() {
    super.initState();
    _queryData();
  }

  void _queryData() async {
    final allRows = await _dbHelper.queryAllRows();
    setState(() {
      _data = allRows;
    });
  }

  void _insertData() async {
    Map<String, dynamic> row = {
      DatabaseHelper.columnName: _nameController.text,
      DatabaseHelper.columnCode: int.parse(_codeController.text),
    };
    final id = await _dbHelper.insert(row);
    print('inserted row id: $id');
    _nameController.clear();
    _codeController.clear();
    _queryData();
  }

  void _updateData(int id, String name, int code) async {
    Map<String, dynamic> row = {
      DatabaseHelper.columnId: id,
      DatabaseHelper.columnName: name,
      DatabaseHelper.columnCode: code,
    };
    final rowsAffected = await _dbHelper.update(row);
    print('updated $rowsAffected row(s)');
    _queryData();
  }

  void _deleteData(int id) async {
    final rowsDeleted = await _dbHelper.delete(id);
    print('deleted $rowsDeleted row(s)');
    _queryData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 120,
          ),
          Text("Add a parcker",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700)),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _nameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Name',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _codeController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Code',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: _insertData,
            child: Text('Insert'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _data.length,
              itemBuilder: (context, index) {
                final item = _data[index];
                return ListTile(
                  title: Text(item[DatabaseHelper.columnName]),
                  subtitle: Text(item[DatabaseHelper.columnCode].toString()),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () => _updateData(
                          item[DatabaseHelper.columnId],
                          'Updated Name',
                          99,
                        ),
                        icon: Icon(Icons.edit),
                      ),
                      IconButton(
                        onPressed: () =>
                            _deleteData(item[DatabaseHelper.columnId]),
                        icon: Icon(Icons.delete),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
