// import 'package:dio/dio.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:testportal_suitmedia/models/list_user_model.dart';
// import 'package:testportal_suitmedia/services/reqres_services.dart';

// import '../utils/state/finite_state.dart';

// class ListUserProvider with ChangeNotifier{

// final _listUsersServices = ReqresServices();

// late List<ListUsersModel> _listUser = [];
// List<ListUsersModel> get _listUsers => _listUser;


// // ~~~~~~~ DIO
// // MyState myState = MyState.initial;

// // Future fetchListUsers() async {
 
// //     myState = MyState.loading;
// //     notifyListeners();

// //   final response = await _listUsersServices.getListUsers();

// //   _listUser = response;
// //   notifyListeners();
// //   return _listUser;

// // }




// // ~~~~~~~~~~~~ http
// Future<void> fetchListUsers() async {

//   final response = await _listUsersServices.getListUsers();

//   _listUser = response;
//   notifyListeners();

// }
// }