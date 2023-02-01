import 'package:flutter/material.dart';
void main()=>runApp(MaterialApp(home: NavigationDrawerEx(),debugShowCheckedModeBanner: false,));
class  NavigationDrawerEx extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      appBar: AppBar(title: Text('Drawer',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500) ,),backgroundColor: Colors.white,),
      endDrawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(accountName: accountName, accountEmail: accountEmail)
          ],
        ),

      ),

    );
  }

}