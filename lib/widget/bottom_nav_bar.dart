part of 'widgets.dart';

class PrimaryBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const PrimaryBottomNavigationBar({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      elevation: 0,
      onTap: onTap,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      items: [
        BottomNavigationBarItem(
          label: 'Home',
          icon: _buildImageIcon(AppAssets.homeOutline),
          activeIcon: _buildImageIcon(AppAssets.homeFilled),
        ),
        BottomNavigationBarItem(
          label: 'Wallet',
          icon: _buildImageIcon(AppAssets.walletOutline),
          activeIcon: _buildImageIcon(AppAssets.walletFilled),
        ),
        // BottomNavigationBarItem(
        //   label: 'Chat',
        //   icon: _buildImageIcon(AppAssets.chatOutline),
        //   activeIcon: _buildImageIcon(AppAssets.chatFilled),
        // ),
        BottomNavigationBarItem(
          label: 'Account',
          icon: _buildImageIcon(AppAssets.accoutOutline),
          activeIcon: _buildImageIcon(AppAssets.accountFilled),
        ),
      ],
    );
  }

  Widget _buildImageIcon(String imagePath, {double size = 22}) {
    return SvgPicture.asset(
      imagePath,
      height: ScreenUtil().setHeight(size),
      width: ScreenUtil().setHeight(size),
    );
  }
}

class PrimaryPageBody extends StatelessWidget {
  final int index;
  final Widget home;
  final Widget wallet;
  // final Widget chat;
  final Widget account;

  const PrimaryPageBody({
    Key? key,
    required this.index,
    required this.home,
    required this.wallet,
    // required this.chat,
    required this.account,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildBody();
  }

  Widget _buildBody() {
    switch (index) {
      case 0:
        return home;
      case 1:
        return wallet;
      case 2:
      // return chat;
      case 3:
        return account;
      default:
    }
    return const SizedBox.shrink();
  }
}
