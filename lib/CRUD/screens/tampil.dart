import 'package:flutter/material.dart';
import 'package:modulberapa/CRUD/providers/list_provider.dart';
import 'package:modulberapa/CRUD/widget/add_edit_widget.dart';
import 'package:modulberapa/app_bar/menu_bar.dart';
import 'package:provider/provider.dart';

class TampilCrud extends StatelessWidget {
  const TampilCrud({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomAppBar(),
        backgroundColor: Colors.purple.shade500,
      ),
      body: Consumer<ListProvider>(builder: (
        context,
        todoProvider,
        child,
      ) {
        return ListView(
          padding: const EdgeInsets.all(20.0),
          children: todoProvider.listModel.isNotEmpty
              ? todoProvider.listModel.map((model) {
                  return Dismissible(
                    key: Key(model.id),
                    background: Container(
                      color: Colors.red.shade300,
                      child: const Center(
                        child: Text(
                          "Hapus",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    child: Card(
                      child: ListTile(
                        title: Text(model.todo),
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AddEditTodoWidget(
                                  title: "Edit Data",
                                  model: model,
                                );
                              });
                        },
                      ),
                    ),
                    onDismissed: (direction) {
                      Provider.of<ListProvider>(
                        context,
                        listen: false,
                      ).removeTodo(model);
                    },
                  );
                }).toList()
              : [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 100),
                      child: Text(
                        "Data Masih Kosong",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  // CustomAppBar()
                ],
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return const AddEditTodoWidget(title: "Tambah Data");
              });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
