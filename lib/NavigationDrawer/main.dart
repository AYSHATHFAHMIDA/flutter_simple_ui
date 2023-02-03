import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
void main()=>runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context)=>MyApp()));
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NavigationDrawerEx(),
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
    );
  }

}
class  NavigationDrawerEx extends StatefulWidget{
  @override
  State<NavigationDrawerEx> createState() => _NavigationDrawerExState();
}

class _NavigationDrawerExState extends State<NavigationDrawerEx> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      appBar: AppBar(title: Text('Drawer',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500) ,),backgroundColor: Colors.white,),
      endDrawer: Drawer(
        backgroundColor: Colors.amber,
        child: Text('aysha'),

      ),

    );
  }
}