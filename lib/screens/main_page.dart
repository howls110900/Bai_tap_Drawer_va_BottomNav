import 'package:drawer_pratice/base/app_colors.dart';
import 'package:drawer_pratice/screens/account/account_page.dart';
import 'package:drawer_pratice/screens/cart/cart_page.dart';
import 'package:drawer_pratice/screens/drawer/About/about.dart';
import 'package:drawer_pratice/screens/drawer/Address/address.dart';
import 'package:drawer_pratice/screens/drawer/Contact_Us/contact_us.dart';
import 'package:drawer_pratice/screens/drawer/FAQ/faq.dart';
import 'package:drawer_pratice/screens/drawer/My_Subcriptions/my_subcriptions.dart';
import 'package:drawer_pratice/screens/explore/explore_page.dart';
import 'package:drawer_pratice/screens/fav/fav_page.dart';
import 'package:drawer_pratice/screens/home/home_page.dart';
import 'package:drawer_pratice/widgets/drawer_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/app_icon.dart';
import '../widgets/drawer_view.dart';
import 'drawer/My_Orders/my_orders.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override

  State<StatefulWidget> createState() => _MainPage();
}

class _MainPage extends State<MainPage>{
  int selectedPage = 0;
  bool isDrawer = false;
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    const List <Widget> widgetOption = [
      HomePage(),
      ExplorePage(),
      CartPage(),
      FavPage(),
      AccountPage()
    ];

    const List <Widget> drawerOption = [
      MyOrdersPage(),
      MySubcriptionsPage(),
      AddressPage(),
      FAQPage(),
      ContactUsPage(),
      AboutPage(),

    ];


    buildIcon(){
      return Positioned(
        left: 0,
        right: 0,
        child: InkWell(
          child: Image.asset('assets/images/drawer.png'),
        ),
      );
    }

    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.black,
          size: 36
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Center(
          child: isDrawer? drawerOption[selectedPage] : widgetOption[selectedPage]),
      drawer: DrawerView(
          icon : const AppIcon(
            icon : "assets/images/avt.png",
            name : "Peter Parker",
            username : "@PeterParker1109"
          ),
        background: AppColors.whiteColor,
        backgroundItem: AppColors.backgroundItemDrawerColor,
        onClickItem: (index){
           setState(() {
             isDrawer = true;
             selectedPage = index;
           });
        } ,
        item: const [
          DrawerItem(
          icon: "assets/svg/About.svg",
          title: "My Orders",
        ),
          DrawerItem(
            icon: "assets/svg/mysubcription.svg",
            title: "My Subscriptions",
          ),
          DrawerItem(
            icon: "assets/svg/myaddress.svg",
            title: "My Address",
          ),
          DrawerItem(
            icon: "assets/svg/FQA.svg",
            title: "FAQ",
          ),
          DrawerItem(
            icon: "assets/svg/contact.svg",
            title: "Contact Us",
          ),
          DrawerItem(
            icon: "assets/svg/About.svg",
            title: "About",
          ),
          DrawerItem(
            icon: "assets/svg/logout.svg",
            title: "Log Out",
          )
        ]),
      bottomNavigationBar:
        SizedBox(
          height: 72,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            onTap: (index){
              setState(() {
                isDrawer = false;
                selectedPage = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: Image.asset("assets/images/icon 1.png"),
                  label: "Home"
              ),
              BottomNavigationBarItem(
                  icon: Image.asset("assets/images/iocn 2.png"),
                  label: "Explore"
              ),
              BottomNavigationBarItem(
                  icon: Image.asset("assets/images/icon 3.png"),
                  label: "Cart"
              ),
              BottomNavigationBarItem(
                  icon: Image.asset("assets/images/icon 4.png"),
                  label: "FAV"
              ),
              BottomNavigationBarItem(
                  icon: Image.asset("assets/images/icon 5.png"),
                  label: "Account"
              ),
            ],
          ),
        ),
    );
  }
  
}