import 'package:belajar_getx/app/helpers/size_helpers.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/register_controller.dart';


class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key?key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SafeArea(      
      child: Container(      
        height: double.infinity,
        width: double.infinity,
         decoration: const BoxDecoration(
        image: DecorationImage(
              image: AssetImage("assets/img/background.jpg"),
              fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(         
          child: Column(            
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                elevation: 4,
                margin: EdgeInsets.all(10),
                color: Color.fromARGB(185, 255, 255, 255),
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(8),
                  
                ),
                child: Padding(
                  padding: EdgeInsets.all(24),
                  child: Form(
                    key: controller.formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Register"),
                        SizedBox(height: 18,),
                        TextFormField(
                          onChanged: controller.onNameChanged,
                          decoration: InputDecoration(
                            hintText: "Masukan Nama",
                            border: OutlineInputBorder(),
                           prefixIcon: Icon(Icons.text_fields),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Input Nama ';
                            }
                            return null;
                          },
                        ),

                        SizedBox(height: 18,),
                        TextFormField(
                          onChanged: controller.onEmailChanged,
                          decoration: InputDecoration(
                            hintText: "Masukan Email",
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.email_outlined),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Input Email ';
                            }
                            return null;
                          },
                        ),

                         SizedBox(height: 18,),
                        TextFormField(
                          onChanged: controller.onPasswordChanged,
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "password",
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.password_outlined),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'input Password ';
                            }
                            return null;
                          },
                        ),
                       
                       
                        SizedBox(height: 18,),
                        SizedBox(
                          width: displayWidth(context) * 0.8,
                          height: displayHeight(context) * 0.075,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                              RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadiusDirectional.circular(10),
                                  side: BorderSide(color: Color.fromARGB(82, 255, 255, 255)),
                                ),
                              ),
                            ),
                            child: Text(""),
                            onPressed: () {
                              if (controller.formKey.currentState!
                              .validate()) {
                                controller.register();
                              }
                            },
                          ),
                        ),
                       SizedBox(height: 18,),
                       Row(
                         children: [
                              Text(
                                "Punya akun? ",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                              InkWell(
                                // onTap: () {
                                //   Navigator.push(
                                //     context,
                                //     new MaterialPageRoute(
                                //       builder: (context) => LoginView(),
                                //     ),
                                //   );
                                // },
                                child: Text(
                                  'Register',
                                  style: TextStyle(
                                    color: Color.fromARGB(187, 58, 58, 58),
                                    fontSize: 16.0,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                         ]
                       ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}