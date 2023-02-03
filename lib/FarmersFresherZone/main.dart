import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main()=>runApp(DevicePreview(
  builder: (context)=>MyApp(),
  enabled: !kReleaseMode,
));

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: const Text('FARMERS FRESHER ZONE',style: TextStyle(fontWeight: FontWeight.bold),
            ),
            floating: false,
            pinned: true,
            actions: const [
              SizedBox(width: 10,),
              Padding(padding: EdgeInsets.only(bottom: 10,left: 10),child: Icon(Icons.location_on_outlined),),
              Padding(padding: EdgeInsets.only(top: 10,bottom: 10,right: 10),child: Text("Kochi",style: TextStyle(fontWeight: FontWeight.bold),),),
            ],
           bottom: AppBar(
             title: Container(
               color: Colors.white,
               width: double.infinity,
               height: 40,
               child: const TextField(
                 decoration: InputDecoration(
                   hintText: 'Search for vegitables and fruits...',
                   prefixIcon: Icon(Icons.search),
                 ),
               ),
             ),
           ),
          ),
          SliverList(delegate: SliverChildListDelegate([
             const SizedBox(height: 10,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.greenAccent,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                    ),
                    height: 25,
                    width: 120,
                    child: const Center(
                      child: Text('VEGITABLES',style: TextStyle(color: Colors.green),),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.greenAccent,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                    ),
                    height: 25,
                    width: 120,
                    child: const Center(
                      child: Text('FRUITS',style: TextStyle(color: Colors.green),),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.greenAccent,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                    ),
                    height: 25,
                    width: 120,
                    child: const Center(
                      child: Text('EXOTIC',style: TextStyle(color: Colors.green),),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.greenAccent,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                    ),
                    height: 25,
                    width: 120,
                    child: const Center(
                      child: Text('FRESH CUTS',style: TextStyle(color: Colors.green),),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 10,
            ),
            Image.network('data:image/jpeg;base64,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',fit: BoxFit.cover,),
            const SizedBox(
              height: 10,
            ),
            Padding(padding: const EdgeInsets.all(10),child: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(width: 1),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: const [
                      Icon(Icons.timer),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                  Column(
                    children: const [
                      Icon(Icons.camera_front_outlined),
                      SizedBox(height: 10,),
                      Text('Traceability'),
                    ],
                  ),
                  Column(
                    children: const [
                      Icon(Icons.home_work),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Local Surroundings'),
                    ],
                  ),
                ],
              ),
            ),),
          ],),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
                const SizedBox(height: 10,),
                const Padding(padding: EdgeInsets.all(8),
                child: Text('Shop by Category',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),
                const SizedBox(
                  height: 10,
                ),
                OptionGrid(),
              ]),
          ),

        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home,color: Colors.green,),
            label: "Home",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart,color: Colors.green,),
          label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.green,),label: 'Account'),
        ],

      ),
    );
  }
}

class OptionGrid extends StatelessWidget{
  List<String> images=[
    'assets/images/vegitablesImage.jpg',
    'assets/images/fruits.jpg',
    'assets/images/freshcut.jpg',
    'assets/images/exotic.jpg',
    'assets/images/nutritionchargers.jpg',
    'assets/images/packedFlavours.jpg',
  ];
  List<String> names=[
    'Vegitables',
    'Fruits',
    'Fresh Cuts',
    'Exotic',
    'Nutritious',
    'Packed Flavours',
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
          padding: const EdgeInsets.all(10),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 5,
          ),
          itemCount: images.length,
          itemBuilder: (BuildContext,int index){
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Container(
                height: MediaQuery.of(context).size.height/7,
                width: MediaQuery.of(context).size.width*.3,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(images[index])),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Center(child: Text(names[index],style: TextStyle(fontWeight: FontWeight.bold),)),
            ],
          );
          },);
  }
}