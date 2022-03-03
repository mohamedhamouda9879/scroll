import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scroll_app/modules/register/cubit/cubit.dart';
import 'package:scroll_app/modules/register/cubit/state.dart';

import '../../../shared/components/components.dart';

class AccountDetails extends StatelessWidget {
  var formKey = GlobalKey<FormState>();
  var EmailController = TextEditingController();
  var PasswordController = TextEditingController();
  var ReEnterPasswordController = TextEditingController();
  var PhoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => RegisterCubit(),
      child: BlocConsumer<RegisterCubit, RegisterStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                key: formKey,
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30.0,
                      ),
                      defaultFormField(
                          controller: EmailController,
                          type: TextInputType.text,
                          validate: (String? value) {
                            if (value!.isEmpty)
                              return 'Please Enter Your Full Name';
                          },
                          label: 'Full Name *',
                          prefix: Icons.person),
                      SizedBox(
                        height: 30.0,
                      ),
                      defaultFormField(
                        controller: PasswordController,
                        isPassword: RegisterCubit.get(context).isPasswordShowen,
                        type: TextInputType.visiblePassword,
                        onSubmit: (value) {},
                        validate: (String? value) {
                          if (value!.isEmpty) return 'Password is Too Short';
                        },
                        label: 'Password',
                        suffix: RegisterCubit.get(context).sufix,
                        suffixPressed: () {
                          RegisterCubit.get(context).changePasswordVisibility();
                        },
                        prefix: Icons.lock_outline,
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      defaultFormField(
                        controller: ReEnterPasswordController,
                        isPassword: RegisterCubit.get(context).isPasswordShowen,
                        type: TextInputType.visiblePassword,
                        onSubmit: (value) {},
                        validate: (String? value) {},
                        label: 'Re-Password',
                        suffix: RegisterCubit.get(context).sufix,
                        suffixPressed: () {
                          RegisterCubit.get(context).changePasswordVisibility();
                        },
                        prefix: Icons.lock_outline,
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      defaultFormField(
                          controller: PhoneController,
                          type: TextInputType.text,
                          validate: (String? value) {
                            if (value!.isEmpty) return 'Please Enter Your Phone';
                          },
                          label: 'Phone *',
                          prefix: Icons.person),
                      SizedBox(
                        height: 30.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Already have an account?',style: TextStyle(fontSize: 16.0),),
                          defaultTextButton(function: (){},text: 'Login'),
                        ],
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      defaultButton(function: (){}, text: 'Submit',radius: 15.0)
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
