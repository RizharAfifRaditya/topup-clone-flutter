import 'package:flutter/material.dart';
import 'package:modulberapa/CRUD/models/model_provider.dart';

class ListProvider with ChangeNotifier {
  List<ModelList> _listM = [];

  List<ModelList> get listModel => _listM;

  void addTodo(ModelList model) async {
    _listM.add(model);
    notifyListeners();
  }

  void removeTodo(ModelList model) async {
    _listM = _listM.where((item) => item.id != model.id).toList();
    notifyListeners();
  }

  void updateTodo(ModelList model) async {
    _listM[_listM.indexWhere((item) => item.id == model.id)] = model;
    notifyListeners();
  }
}
