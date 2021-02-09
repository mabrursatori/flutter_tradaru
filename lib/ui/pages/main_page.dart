part of 'pages.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int bottomNavbarIndex;
  PageController pageController;

  @override
  void initState() {
    super.initState();

    bottomNavbarIndex = 0;
    pageController = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SafeArea(
          child: Container(
            color: mainColor,
            padding: EdgeInsets.all(10),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(30)),
              child: Stack(
                children: [
                  PageView(
                      physics: new NeverScrollableScrollPhysics(),
                      controller: pageController,
                      onPageChanged: (index) {
                        setState(() {
                          bottomNavbarIndex = index;
                        });
                      },
                      children: <Widget>[
                        ShopPage(),
                        Center(
                          child: Text("Favorite"),
                        ),
                        Center(
                          child: Text("History"),
                        ),
                        Center(
                          child: Text("Profile"),
                        )
                      ]),
                  createCustomBottomNavbar()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget createCustomBottomNavbar() => Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 70,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30)),
        ),
        child: BottomNavigationBar(
          selectedLabelStyle: TextStyle(color: Colors.red),
          showUnselectedLabels: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          selectedItemColor: mainColor,
          unselectedItemColor: Color(0xFFE5E5E5),
          currentIndex: bottomNavbarIndex,
          onTap: (index) {
            setState(() {
              bottomNavbarIndex = index;
              pageController.jumpToPage(index);
            });
          },
          items: [
            BottomNavigationBarItem(
                backgroundColor: Colors.transparent,
                icon: Container(
                    margin: EdgeInsets.only(bottom: 6),
                    height: 20,
                    child: Icon(MdiIcons.fromString('home'))),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Container(
                    margin: EdgeInsets.only(bottom: 6),
                    height: 20,
                    child: Icon(MdiIcons.fromString('heart'))),
                label: "Favorite"),
            BottomNavigationBarItem(
                icon: Container(
                    margin: EdgeInsets.only(bottom: 6),
                    height: 20,
                    child: Icon(MdiIcons.fromString('chat-outline'))),
                label: "History"),
            BottomNavigationBarItem(
                icon: Container(
                    margin: EdgeInsets.only(bottom: 6),
                    height: 20,
                    child: Icon(MdiIcons.fromString('account'))),
                label: "Profile")
          ],
        ),
      ));
}
