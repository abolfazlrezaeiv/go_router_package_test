import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:gorouter/main.dart';
import 'package:gorouter/page2/page2_controller.dart';

class Page2Screen extends StatelessWidget {
  /// Creates a [Page2Screen].
  Page2Screen({Key? key}) : super(key: key);

  ///instead of binding controller to routes we can inject them this way
  final Page2Controller _page2controller = Get.put(Page2Controller());

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text(App.title)),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Obx(() => Text(_page2controller.count.value.toString())),
              ElevatedButton(
                onPressed: () => _page2controller.increment(),
                child: const Text('increase'),
              ),
              ElevatedButton(
                onPressed: () => context.go('/'),
                child: const Text('Go to home page'),
              ),
            ],
          ),
        ),
      );
}
