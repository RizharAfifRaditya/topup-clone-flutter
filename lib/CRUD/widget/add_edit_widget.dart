import 'package:get/get.dart';
import 'package:modulberapa/CRUD/models/model_provider.dart';
import 'package:modulberapa/CRUD/providers/list_provider.dart';
import 'package:modulberapa/CRUD/widget/info_widget.dart';
import 'package:uuid/uuid.dart';
import 'package:uuid/uuid_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddEditTodoWidget extends StatelessWidget {
  // const AddEditTodoWidget({Key? key}) : super(key: key);
  final String title;
  final ModelList? model;
  const AddEditTodoWidget({
    Key? key,
    required this.title,
    this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _todoController = TextEditingController();

    if (model != null) {
      _todoController.text = model!.todo;
    }

    return AlertDialog(
      title: Text(title),
      content: SingleChildScrollView(
        child: Column(
          children: [
            TextField(
              controller: _todoController,
              textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration(
                border: InputBorder.none,
                filled: true,
                isDense: true,
                fillColor: Colors.grey.shade100,
                labelText: "Data",
                hintText: "Masukkan Data",
              ),
            )
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("Batal"),
        ),
        TextButton(
          onPressed: () {
            if (_todoController.text.isEmpty) {
              showDialog(
                context: context,
                builder: (context) {
                  return const InfoWidget(
                      title: "Error",
                      content: "Error! Data tidak Boleh Kosong");
                },
              );
            } else {
              if (model != null) {
                Provider.of<ListProvider>(context, listen: false).updateTodo(
                  ModelList(
                    id: model!.id,
                    todo: _todoController.text,
                  ),
                );
              } else {
                const uuid = Uuid();

                Provider.of<ListProvider>(context, listen: false).addTodo(
                  ModelList(id: uuid.v4(), todo: _todoController.text),
                );
              }
              Navigator.pop(context);
            }
          },
          child: const Text("Simpan"),
        ),
      ],
    );
  }
}
