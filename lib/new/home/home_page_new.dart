import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageNew extends StatelessWidget {
  const HomePageNew({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Text('app_name'.tr, style: TextStyle(fontSize: 40)),
          Text('app_description'.tr, style: TextStyle(fontSize: 20)),
          const SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
            Get.updateLocale(Locale('en', 'US'));
          }, child: Text('English')),
          ElevatedButton(onPressed: () {
            Get.updateLocale(Locale('bn', 'BD'));
          }, child: Text('Bangla')),
        ],
      ),
    );
  }
}
