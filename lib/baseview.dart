// import 'package:flutter/material.dart';
// import 'package:myloapp/services/locator.dart';
// import 'package:provider/provider.dart';

// import 'login/model/baseModel.dart';

// class BaseView<T extends BaseModel> extends StatefulWidget {
//   final Widget Function(BuildContext context, T model, Widget child) builder;

//   BaseView({
//     required this.builder,
//   });

//   @override
//   _BaseViewState<T> createState() => _BaseViewState<T>();
// }

// class _BaseViewState<T extends BaseModel> extends State<BaseView<T>> {
//   T model = locator<T>();

//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider<T>.value(
//       //builder: (context) => model,
//       value: model,
//       //builder: (context) => model,
//     );
//   }
// }
