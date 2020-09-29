import 'package:e_commerce_ui/components/custom_suffix_icon.dart';
import 'package:e_commerce_ui/components/default_button.dart';
import 'package:e_commerce_ui/components/form_error.dart';
import 'package:e_commerce_ui/screen/complete_profile/complete_profile_screen.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SignUpForm extends StatefulWidget {
  SignUpForm({Key key}) : super(key: key);

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  String email;
  String password;
  String confirm_password;
  final List<String> errors = [];

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
          buildEmailTextField(),
          SizedBox(
            height: getProportionateScreenHeight(15),
          ),
          buildPasswordTextField(),
          SizedBox(
            height: getProportionateScreenHeight(25),
          ),
          buildConfirmPasswordTextField(),
          SizedBox(
            height: getProportionateScreenHeight(25),
          ),
          FormError(errors: errors),
          SizedBox(
            height: getProportionateScreenHeight(25),
          ),
          DefaultButton(
            text: "Continue",
            press: () {
              if (_formKey.currentState.validate()) {
                _formKey.currentState.save();
                Navigator.pushNamed(context, CompleteProfileScreen.routeName);
              }
            },
          ),
          SizedBox(
            height: getProportionateScreenHeight(25),
          ),
          Text(
            "By continuing your confirm that you agree \nwith term and condition",
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  TextFormField buildConfirmPasswordTextField() {
    return TextFormField(
      onSaved: (newValue) => confirm_password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kConfirmPassNullError)) {
          setState(() {
            removeError(error: kConfirmPassNullError);
          });
        } else if (value.length >= 6 && errors.contains(kShortPassError)) {
          setState(() {
            removeError(error: kShortPassError);
          });
        } else if (password == confirm_password) {
          setState(() {
            removeError(error: kMatchPassError);
          });
        }
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kConfirmPassNullError)) {
          setState(() {
            addError(error: kConfirmPassNullError);
          });
          return "";
        } else if (value.length < 6 && !errors.contains(kShortPassError)) {
          setState(() {
            addError(error: kShortPassError);
          });
          return "";
        } else if (value.length >= 6 && password != confirm_password) {
          setState(() {
            addError(error: kMatchPassError);
          });
          return "";
        }
        return null;
      },
      obscureText: true,
      decoration: InputDecoration(
        labelText: "Confirm Password",
        hintText: "Retype your password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: "assets/icons/Lock.svg",
        ),
      ),
    );
  }

  TextFormField buildPasswordTextField() {
    return TextFormField(
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kPassNullError)) {
          setState(() {
            removeError(error: kPassNullError);
          });
        } else if (value.length >= 6 && errors.contains(kShortPassError)) {
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
        } else if (value.length < 6 && !errors.contains(kShortPassError)) {
          setState(() {
            addError(error: kShortPassError);
            return "";
          });
        }
        return null;
      },
      obscureText: true,
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

  TextFormField buildEmailTextField() {
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
