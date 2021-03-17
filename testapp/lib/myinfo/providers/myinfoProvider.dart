import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyinfoProvider extends StateNotifier<bool> {
  MyinfoProvider(state) : super(state);

  // bool _isPushSwitched = false;
  // bool _isMarketingSwitched = false;

  // setPushSwitchedValue(bool value) => _isPushSwitched = value;
  // bool get hasPushSwitched => _isPushSwitched;

  // setMarketingSwitchedValue(bool value) => _isMarketingSwitched = value;
  // bool get hasMarketingSwitched => _isMarketingSwitched;

  // Future changedPushSwitchValue(bool currentSwitched) async {
  //   _isPushSwitched = currentSwitched;
  //   notifyListeners();
  // }
  // Future changedMarketingSwitchValue(bool currentSwitched) async {
  //   _isMarketingSwitched = currentSwitched;
  //   notifyListeners();
  // }

  bool _isNickNameChecked = false;
  bool _isNickNameUnderLine = true;
  String _resultNickName = '';

  setNickNameChecked(bool value) => _isNickNameChecked = value;
  setNickNameUnderLine(bool value) => _isNickNameUnderLine = value;
  setResultNickName(String value) => _resultNickName = value;
  bool get hasNickNameChecked => _isNickNameChecked;
  bool get hasNickNameUnderLine => _isNickNameUnderLine;
  String get hasResultNickName => _resultNickName;

  void authEmailNickNameCheck(bool value, String tempNickName) {
    _isNickNameChecked = value;
    _isNickNameUnderLine = value;
    _resultNickName = tempNickName;
  }
}
