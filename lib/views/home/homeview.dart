import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:joinme/textcomponenets.dart';
import 'package:joinme/views/home/addview.dart';
import 'package:joinme/views/home/home_controller.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});
  HomeController homeControl = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    print("Calling Build Method");
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<HomeController>(builder: (cahomeControlca) {
              return Center(
                  child: TextComponent(
                      textComponentValue: "${cahomeControlca.counterValue}"));
            }),

            // GetX<HomeController>(builder: (cahomeControlca) {
            //   return Center(
            //       child: TextComponent(
            //    textComponentValue: "${cahomeControlca.counterValue.value}",
            //   ));
            // }),
            // Obx(() => Center(
            //         child: TextComponent(
            //       textComponentValue:"${homeControl.counterValue.value}",
            //     ))),
            ElevatedButton(
                onPressed: () async {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => AddView()));
                  // Get.off(() => AddView());
                  // Get.offAll(() => AddView());
                  var abc =
                      await Get.to(() => AddView(), arguments: "Shahzeb naqvi");
                  print(abc);
                  // Get.offUntil( AddView());
                },
                child: Text("Navigate"))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          homeControl.addValue();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}