import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/control/login_cubit/login_state.dart';
import 'package:untitled/core/style/image_app.dart';
import 'package:untitled/view/screen_nav/home%20_main_screen.dart';

import '../../../core/widget/button_login.dart';
import '../../../core/widget/text_field_daf.dart';
import '../register_page/register_screen.dart';
import '../../../control/login_cubit/login_cubit.dart';
import '../../../core/style/string_app.dart';
import '../../../core/style/val_aap.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  final TextEditingController uerEmail = TextEditingController();
  final TextEditingController uerPass = TextEditingController();
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
                  color: Colors.blueGrey,
                  child: Padding(
                      padding: const EdgeInsets.all(ValApp.va40),
                      child: CachedNetworkImage(imageUrl: ImageApp.login)),
                ),
                ValApp.size10,
                BlocConsumer<LoginCubit, LoginState>(
                  listener: (context, state) {
                    if (state is LoginSuccess) {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
                          ));
                    }
                  },
                  builder: (context, state) {
                    return Column(
                      children: [
                        TextFieldDaf(
                            controller: uerEmail,
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
                          controller: uerPass,
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
                            if (state is! LoginLoading) {
                              LoginCubit.get(context).loginSuccess(
                                  email: uerEmail.text, password: uerPass.text);
                            }
                          },
                          text: StringApp.login,
                          color: Colors.red,
                        ),
                        Row(
                          children: [
                            ValApp.sizeW20,
                            const Text(
                              StringApp.doYouWanTo,
                              style: TextStyle(fontSize: ValApp.va20),
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => RegisterPage(),
                                      ));
                                },
                                child: const Text(
                                  StringApp.register,
                                  style: TextStyle(
                                      fontSize: ValApp.va25,
                                      color: Colors.indigo),
                                ))
                          ],
                        )
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
