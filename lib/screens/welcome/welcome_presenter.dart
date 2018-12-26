import 'package:game_i_flutter/screens/welcome/welcome_view.dart';

class WelcomePresenter {
  WelcomeView view;

  void initPresenter(WelcomeView v) {
    this.view = v;
    view.onPlayAction(onPlayAction);
  }

  void onPlayAction() {
    view.openSettingScreen();
  }
}
