import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
void main()=>runApp(DevicePreview(
  enabled: !kReleaseMode,
  builder: (context) => MyApp(), // Wrap your app
),);
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home:  HomePage(),
    );
  }
}
class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('StaggeredGridView'),backgroundColor: Colors.greenAccent,),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: StaggeredGrid.count(

          crossAxisCount: 4,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          children: [
            StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 2,
                child: Custom_child(backgroundimage:'assets/images/universeImage.jpg', title: 'mysteries of the uni...', subtitle: 'ayshafahmi', Date: '26 jan 2023'),
            ),

            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 3,
              child: Custom_child(backgroundimage: 'assets/images/empireStateImage.jpg', title: 'An Empire state of...', subtitle: 'ayshafahmi', Date: '27 jan 2023'),
            ),

            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 3,
              child: Custom_child(backgroundimage: 'assets/images/hipsterImage.jpg', title: '10 tips for hipster t...', subtitle: 'ayshafahmi', Date: '28 jan 2023',),
            ),

            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 3,
              child: Custom_child(backgroundimage: 'assets/images/ClimbingImage.jpg', title:'my story of climbing...', subtitle: 'ayshafahmi', Date: '28 jan 2023'),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 4,
              child: Custom_child(backgroundimage: 'assets/images/petImage.jpg', title: 'pet are happiness..', subtitle: 'ayshafahmi', Date: '28 jan 2023'),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: Custom_child(backgroundimage:'assets/images/libraryImage.jpg', title: 'my home library..', subtitle: 'ayshafahmi', Date: '28 jan 2023'),
            ),
            // StaggeredGridTile.count(
            //   crossAxisCellCount: 2,
            //   mainAxisCellCount: 4,
            //   child: Custom_child(backgroundimage: 'assets/images/natureImage.jpg', title: 'into the nature stu...', subtitle: 'ayshafahmi', Date: '28 jan 2023'),
            // ),
            // StaggeredGridTile.count(
            //   crossAxisCellCount: 2,
            //   mainAxisCellCount: 2,
            //   child: Custom_child(backgroundimage: 'assets/images/tajmahalImage.jpg', title: 'the beauty of Taj...', subtitle: 'ayshafahmi', Date:'28 jan 2023'),
            // ),


          ],

        ),
      ),
    );
  }

}
class Custom_child extends StatelessWidget{
  final String? backgroundimage;
  final String? title;
  final String? Date;
  final String? subtitle;
  Custom_child({ this.backgroundimage,required this.title,required this.subtitle,required this.Date});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.white,
            blurRadius: 15.0,
            spreadRadius: 5.0,
          )
        ]
      ),
      // padding: EdgeInsets.all(10),
      // color: Colors.white,
      child: Column(
        children: [
          Image(image: AssetImage(backgroundimage!)),
          // const Divider(height: ,)     ,
          SizedBox(height: 20,),
          Text(title!),
          Text(Date!),
          Text(subtitle!),
          // text
          // text

        ],
      ),

    );
  }

}