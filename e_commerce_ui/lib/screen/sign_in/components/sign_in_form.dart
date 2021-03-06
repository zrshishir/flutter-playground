import 'package:e_commerce_ui/components/custom_suffix_icon.dart';
import 'package:e_commerce_ui/components/default_button.dart';
import 'package:e_commerce_ui/components/form_error.dart';
import 'package:e_commerce_ui/screen/forgot_password/forgot_password_screen.dart';
import 'package:e_commerce_ui/screen/login_success/login_success_screen.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SignFrom extends StatefulWidget {
  @override
  _SignFromState createState() => _SignFromState();
}

class _SignFromState extends State<SignFrom> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String email;
  String password;
  bool remember = false;

  void addError({String error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }

  void removeError({String error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(
            height: getProportionateScreenHeight(25),
          ),
          buildPasswordFormField(),
          SizedBox(
            height: getProportionateScreenHeight(25),
          ),
          FormError(errors: errors),
          Row(
            children: [
              Checkbox(
                value: remember,
                activeColor: kPrimaryColor,
                onChanged: (value) {
                  setState(() {
                    remember = value;
                  });
                },
              ),
              Text("remember me"),
              Spacer(),
              GestureDetector(
                onTap: () => Navigator.popAndPushNamed(
                    context, ForgotPassword.routeName),
                child: Text(
                  "Forgot Password",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          DefaultButton(
            text: "Continue",
            press: () {
              if (_formKey.currentState.validate()) {
                _formKey.currentState.save();
                Navigator.pushNamed(context, LoginSuccessScreen.routeName);
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kPassNullError)) {
          setState(() {
            removeError(error: kPassNullError);
          });
        } else if (value.length >= 8 && errors.contains(kShortPassError)) {
          setState(() {
            removeError(error: kShortPassError);
          });
        }
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kPassNullError)) {
          setState(() {
            addError(error: kPassNullError);
          });
          return "";
        } else if (value.length < 8 && !errors.contains(kShortPassError)) {
          setState(() {
            addError(error: kShortPassError);
          });
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Enter your password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: "assets/icons/Lock.svg",
        ),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kEmailNullError)) {
          setState(() {
            removeError(error: kEmailNullError);
          });
        } else if (emailValidatorRegExp.hasMatch(value) &&
            errors.contains(kInvalidEmailError)) {
          setState(() {
            removeError(error: kInvalidEmailError);
          });
        }
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kEmailNullError)) {
          setState(() {
            addError(error: kEmailNullError);
          });
        } else if (!emailValidatorRegExp.hasMatch(value) &&
            !errors.contains(kInvalidEmailError)) {
          setState(() {
            addError(error: kInvalidEmailError);
          });
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Enter your email",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: "assets/icons/Mail.svg",
        ),
      ),
    );
  }
}
