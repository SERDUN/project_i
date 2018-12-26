import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:game_i_flutter/screens/settings/setting_page.dart';
import 'package:game_i_flutter/base/routes.dart';
import 'package:game_i_flutter/screens/welcome/welcome_presenter.dart';
import 'package:game_i_flutter/screens/welcome/welcome_view.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: ContactList(new WelcomePresenter()));
  }
}

///
///   Contact List
///

class ContactList extends StatefulWidget {
  final WelcomePresenter presenter;

  ContactList(this.presenter, {Key key}) : super(key: key);

  @override
  _ContactListState createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> implements WelcomeView {
  Function _onPlayAction;

  @override
  void initState() {
    super.initState();
    this.widget.presenter.initPresenter(this);
  }

  @override
  void onPlayAction(Function onClick) {
    _onPlayAction = onClick;
  }

  @override
  Widget build(BuildContext context) {
    var widget = Center(
      child: Card(
        elevation: 2.0,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Container(
          width: 300.0,
          height: 190.0,
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 20.0, left: 25.0, right: 25.0),
                child: new RaisedButton(
                  child: const Text('Play'),
                  elevation: 4.0,
                  color: Colors.white,
                  splashColor: Colors.orange,
                  onPressed: () {
                    _onPlayAction();
                  },
                ),
              ),
//                      Container(
//                        width: 250.0,
//                        height: 1.0,
//                        color: Colors.grey[400],
//                      ),
              Padding(
                padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                child: new RaisedButton(
                  child: const Text("..."),
                  elevation: 4.0,
                  color: Colors.white,
                  splashColor: Colors.orange,
                  onPressed: () {
                    // Perform some action
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );

    return widget;
  }

  @override
  void openSettingScreen() {
    Navigator.push(
      context,
      new MyCustomRoute(builder: (context) => SettingPage()),
    );
  }
}
