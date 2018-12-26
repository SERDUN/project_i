import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:game_i_flutter/screens/welcome/welcome_presenter.dart';
import 'package:game_i_flutter/screens/welcome/welcome_view.dart';

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Settings"),
        ),
//        body: ContactList(new WelcomePresenter()));
        body: ContactList());
  }
}

///
///   Contact List
///

class ContactList extends StatefulWidget {
//  final WelcomePresenter presenter;

//  ContactList(this.presenter, {Key key}) : super(key: key);
  ContactList({Key key}) : super(key: key);

  @override
  _ContactListState createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {
  Function _onPlayAction;

  @override
  void initState() {
    super.initState();
//    this.widget.presenter.initPresenter(this);
  }

  @override
  void onPlayAction(Function onClick) {
    _onPlayAction = onClick;
  }

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Card(
                    elevation: 2.0,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Container(
                      width: double.infinity,
                      height: 100.0,
                      child: Column(
                        children: <Widget>[

//                      Container(
//                        width: 250.0,
//                        height: 1.0,
//                        color: Colors.grey[400],
//                      ),

                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
    return titleSection;
  }
}
