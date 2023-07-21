import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/control/login_cubit/login_cubit.dart';
import 'package:untitled/control/login_cubit/login_state.dart';

import '../../../core/style/image_app.dart';
import '../../../core/style/string_app.dart';
import '../../../core/style/val_aap.dart';
import '../../../core/widget/button_login.dart';
import '../../../core/widget/text_field_daf.dart';
import '../login/login_page.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({Key? key}) : super(key: key);
  final TextEditingController userName = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                ValApp.sizeH30,
                Container(
                  width: double.infinity,
                  color: Colors.teal,
                  child: Padding(
                      padding: const EdgeInsets.all(ValApp.va40),
                      child: Image.network(ImageApp.register)),
                ),
                ValApp.size10,
                Container(
                  decoration: const BoxDecoration(),
                  child: BlocConsumer<LoginCubit, LoginState>(
                    listener: (context, state) {
                      if (state is RegisterSuccess) {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ));
                      }

                      if (state is LoginError) {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(SnackBar(content: Text(state.error)));
                        if (kDebugMode) {
                          print(state.error);
                        }
                      }
                    },
                    builder: (context, state) {
                      return Column(
                        children: [
                          TextFieldDaf(
                            controller: userName,
                            label: StringApp.userName,
                            hint: StringApp.enterYourUseName,
                            prefixIcon: Icons.person,
                            color: Colors.indigo,
                            validator: (val) {
                              if (val!.isEmpty) {
                                return StringApp.enterYourUseEmail;
                              }
                              return null;
                            },
                          ),
                          TextFieldDaf(
                              controller: emailController,
                              label: StringApp.email,
                              hint: StringApp.enterYourUseEmail,
                              prefixIcon: Icons.email_outlined,
                              color: Colors.red,
                              validator: (val) {
                                if (val!.characters == '<>?(') {
                                  return StringApp.valEmail;
                                }
                                return null;
                              }),
                          TextFieldDaf(
                            controller: passController,
                            label: StringApp.pass,
                            hint: StringApp.enterYourPassword,
                            prefixIcon: Icons.password_sharp,
                            color: Colors.grey,
                            validator: (val) {
                              if (val!.length < 8) {
                                return StringApp.valPass;
                              }
                              return null;
                            },
                          ),
                          ValApp.size10,
                          ButtonLogin(
                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                if (state is! LoginLoading) {
                                  BlocProvider.of<LoginCubit>(context)
                                      .loginUser(
                                          email: emailController.text,
                                          password: passController.text,
                                          userName: userName.text);
                                }
                              }
                            },
                            text: StringApp.register,
                            color: Colors.teal,
                          ),
                          Row(
                            children: [
                              ValApp.sizeW20,
                              const Text(
                                StringApp.doYouHaveAccount,
                                style: TextStyle(fontSize: 16),
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text(
                                    '${StringApp.login}?',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.indigo),
                                  ))
                            ],
                          )
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
