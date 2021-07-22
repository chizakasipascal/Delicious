import 'package:flutter/material.dart';

abstract class RegisterAuth {
  GlobalKey<FormState> formKey = GlobalKey();
  TextEditingController emailOrNumber = TextEditingController();
  TextEditingController password = TextEditingController();
  bool rememberMe = false;
  bool isLoading = false;
  Future register();
}
