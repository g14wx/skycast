import 'package:skycast/router/constants/navigator_keys.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@injectable
class NavigatorKeysProvider extends ChangeNotifier {
  int _selectedIndexDrawer = 0;
  // this are for preserving the state of each navigation key
  final GlobalKey<NavigatorState> navigationDefault = NavigatorKeys.navigationDefault;
  // root navigation keys
  final GlobalKey<NavigatorState> navigationHome = NavigatorKeys.navigationHome;
  final GlobalKey<NavigatorState> navigationSecond = NavigatorKeys.navigationSecond;
  final GlobalKey<NavigatorState> navigationSettings = NavigatorKeys.navigationInfo;
  // this is not final due to it will be replaced everytime that the user changes the bottom item
  late GlobalKey<NavigatorState> currentNavigationKey;
  NavigatorKeysProvider() {
    currentNavigationKey = navigationSecond;
  }
  void setSelectedIndexDrawer(int index) {
    _selectedIndexDrawer = index;
    _setCurrentNavigationKey();
    notifyListeners();
  }

  _setCurrentNavigationKey() {
    switch (_selectedIndexDrawer) {
      case 0:
        currentNavigationKey = navigationHome;
        break;
      case 2:
        currentNavigationKey = navigationSecond;
        break;
      case 1:
        currentNavigationKey = navigationSettings;
        break;
      default:
    }
  }

  int get selectedIndexDrawer => _selectedIndexDrawer;
}
