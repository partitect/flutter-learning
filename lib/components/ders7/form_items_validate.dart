import 'package:flutter/material.dart';

class FormItemsExample extends StatefulWidget {
  @override
  _FormItemsExampleState createState() => _FormItemsExampleState();
}

class _FormItemsExampleState extends State<FormItemsExample> {
  String textValue = "";
  String textFormFieldValue = "";
  String emailValue = "";
  String password = "";

  bool checkBoxValue;
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Items"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Form(
              key: formKey,
              child: Container(
                padding: EdgeInsets.all(
                  10,
                ),
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      obscureText: false, //yıldızlı text
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.green,
                          ),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.green,
                          ),
                        ),
                      ),
                      onChanged: (val) {
                        setState(() {
                          textFormFieldValue = val;
                        });
                      },
                      validator: (value) {
                        final pattern =
                            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                        final regExp = RegExp(pattern);

                        if (value.isNotEmpty) {
                          if (regExp.hasMatch(value)) {
                            if (value != "telatkaya@yandex.com") {
                              return "Email Adresi Yanlış";
                            } else {
                              return null;
                            }
                          } else {
                            return "Doğru Bir Email Adresi Yazınız";
                          }
                        } else {
                          return "Email Adresi Boş Bırakılamaz";
                        }
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      obscureText: true, //yıldızlı text
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.green,
                          ),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.green,
                          ),
                        ),
                      ),
                      onChanged: (val) {
                        setState(() {
                          textFormFieldValue = val;
                        });
                      },
                      validator: (value) {
                        if (value != "123") {
                          return "Parola Yanlış";
                        } else {
                          return null;
                        }
                      },
                    ),
                    InkWell(
                      onTap: () {
                        final isValid = formKey.currentState.validate();
                        print(isValid);
                        if (isValid) {
                          formKey.currentState.save();
                          print(textFormFieldValue);
                          final snackbar = SnackBar(
                            backgroundColor: Colors.green,
                            content: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Başarılı"),
                                SizedBox(
                                  width: 20,
                                  height: 20,
                                  child: CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                        Colors.white),
                                  ),
                                )
                              ],
                            ),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackbar);
                        }
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                          top: 10,
                        ),
                        padding: EdgeInsets.all(
                          10,
                        ),
                        color: Colors.green,
                        child: Text(
                          "Submit",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
