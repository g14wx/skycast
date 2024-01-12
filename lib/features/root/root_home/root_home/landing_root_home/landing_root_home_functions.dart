part of 'landing_root_home.dart';

extension FunctionMainDashboardNavigationPage on LandingRootHome {
  _getBackgroundColorBottomNavigationBar(int selectedIndex, BuildContext context) {
    final customColors = getIt<ICustomColorsContainer>();
    switch (selectedIndex) {
      case 0:
        return customColors.quinary;
      case 1:
        return customColors.quaternary;
      case 2:
        return customColors.setarian;
      default:
        return Colors.red;
    }
  }

  void onItemTapped(int index, BuildContext context) {
    original_provider.Provider.of<NavigatorKeysProvider>(listen: false, context).setSelectedIndexDrawer(index);
  }
}
