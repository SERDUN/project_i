//import 'package:cont_project/contacts/contact_view.dart';
//import 'package:cont_project/repository/dependency_injection.dart';
import 'package:flutter/material.dart';
import 'package:game_i_flutter/views/welcome/welcome_page.dart';

void main() {
//  Injector.configure(Flavor.PRO);

  runApp(
      new MaterialApp(
          title: 'Flutter Demo',
          theme: new ThemeData(
              primarySwatch: Colors.blue
          ),
          home: new WelcomePage()
      )
  );
}