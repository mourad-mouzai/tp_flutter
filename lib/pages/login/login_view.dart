import 'package:first_project/pages/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_framework/responsive_framework.dart';

class LoginPage extends GetView<LoginController> {
  LoginPage({Key? key}) : super(key: key);

  final LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    TextEditingController usernameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      body: Container(
        color: Colors.amber,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
                width: ResponsiveBreakpoints.of(context).largerThan(TABLET)
                    ? MediaQuery.of(context).size.width * 0.3
                    : ResponsiveBreakpoints.of(context).isTablet
                        ? MediaQuery.of(context).size.width * 0.5
                        : MediaQuery.of(context).size.width * 0.88,
                color: Colors.white,
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.only(top: 120, left: 20, right: 20),
                child:
                    // GetBuilder<LoginController>(
                    // builder: (_) {
                    // return
                    Obx(
                  () => Column(
                    children: [
                      Text(
                          loginController.name.string, //'Welcom, Please Login',
                          style: const TextStyle(fontSize: 20)),
                      const SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: TextField(
                          controller: usernameController,
                          decoration: const InputDecoration(
                            hintText: 'Username',
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 30.0),
                        child: TextField(
                          controller: passwordController,
                          obscureText: true,
                          decoration: const InputDecoration(
                            hintText: 'Password',
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          usernameController.text = loginController
                              .validate(usernameController.text)!;
                        },
                        child: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.3,
                            child: const Text(
                              'Login',
                              textAlign: TextAlign.center,
                            )),
                      ),
                    ],
                  ),
                )
                // },
                // ),
                ),
          ],
        ),
      ),
    );
  }
}
