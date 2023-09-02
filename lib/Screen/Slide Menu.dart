import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/config.dart';
import 'package:flutter_application_1/model/login_result.dart';
import 'home.dart';


class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    String accountName = "N/A";
    String accountEmail = "N/A";
    String accountUrl = "https://scontent-sin6-4.xx.fbcdn.net/v/t39.30808-6/352386517_1317402298841381_4420159163541585973_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=VoSAQipm06kAX-o-PC3&_nc_ht=scontent-sin6-4.xx&oh=00_AfBMNsuWUr9mXLgGBOq_SzjpBr46169SrUayDrYZqrLsRA&oe=64F3D9CC";
    Users user = Configure.login;
    print(user.toJson().toString());
    if (user.id != null) {
      accountName = user.fullname!;
      accountEmail = user.email!;
    }
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(accountName), 
            accountEmail: Text(accountEmail),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(accountUrl),
              backgroundColor: Colors.white,
            ),
          ),
          ListTile(
            title: Text("Home"),
            onTap: () {
              Navigator.pushNamed(context, Home.routeName);
            },
          ),
          ListTile(
            title: Text("login"),
            onTap: () {
              Navigator.pushNamed(context, Login.routeName);
            },
          ),
        ],
      ),
    );
  }
}
class Login extends StatefulWidget {
  static const routeName = "/login";

  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'User CRUD',
      initialRoute: '/',
      routes: {
        '/':(constext) => const Home(),
        '/login':(context) => const Login(),
        
      },
    );
  }
}
