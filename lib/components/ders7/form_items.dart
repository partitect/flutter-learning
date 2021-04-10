import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class FormItemsExample extends StatefulWidget {
  @override
  _FormItemsExampleState createState() => _FormItemsExampleState();
}

class _FormItemsExampleState extends State<FormItemsExample> {
  String textValue = "";
  String textFormFieldValue = "";
  String emailValue = "";
  String password = "";

  var items = ["Kırmızı", "Mavi", "Sarı"];
  String dropValue = "Kırmızı";
  var gropVal;
  var _datetime;
  bool checkBoxValue;
  final formKey = GlobalKey<FormState>();

  File _image;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Items"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(
                10,
              ),
              child: TextField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: textValue.length < 3
                          ? Colors.red
                          : textValue.length >= 6
                              ? Colors.green
                              : Colors.blue,
                    ),
                  ),
                ),
                onChanged: (val) {
                  setState(() {
                    textValue = val;
                  });
                },
              ),
            ),
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
                            return null;
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
                        if (value.length < 6) {
                          return "6 dan az karakter giremezsiniz";
                        } else {
                          return null;
                        }
                      },
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Colors.purpleAccent,
                          borderRadius: BorderRadius.circular(4)),
                      width: double.infinity,
                      height: 100,
                      child: Center(
                        child: DropdownButton<String>(
                          isExpanded: true,
                          iconSize: 40,
                          iconEnabledColor: Colors.white,
                          value: dropValue,
                          dropdownColor: Colors.red,
                          items: items.map((e) {
                            return DropdownMenuItem<String>(
                              value: e,
                              child: Text(
                                e,
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            );
                          }).toList(),
                          onChanged: (val) {
                            setState(() {
                              dropValue = val;
                            });
                          },
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.yellowAccent,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      width: double.infinity,
                      height: 100,
                      child: CheckboxListTile(
                        subtitle: Text(
                          "Check for Flutter",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        secondary: Icon(
                          Icons.ac_unit,
                        ),
                        value: checkBoxValue ?? false,
                        title: Text("Checkbox"),
                        onChanged: (val) {
                          setState(() {
                            checkBoxValue = val;
                          });
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      width: double.infinity,
                      height: 160,
                      child: Card(
                        child: Column(
                          children: [
                            RadioListTile(
                              value: 1,
                              groupValue: gropVal,
                              selected: gropVal == 1 ? true : false,
                              activeColor: Colors.blue,
                              onChanged: (val) {
                                setState(() {
                                  gropVal = val;
                                });
                              },
                              title: Text("Erkek"),
                            ),
                            RadioListTile(
                              value: 2,
                              groupValue: gropVal,
                              selected: gropVal == 2 ? true : false,
                              activeColor: Colors.pink,
                              onChanged: (val) {
                                setState(() {
                                  gropVal = val;
                                });
                              },
                              title: Text("Kadın"),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      width: double.infinity,
                      height: 160,
                      child: Column(
                        children: [
                          Text(
                            _datetime == null
                                ? "Tarih Seçilmemiş"
                                : _datetime.toString().substring(0, 10),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          InkWell(
                            onTap: () {
                              showDatePicker(
                                locale: Locale('tr', 'TR'),
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2002),
                                lastDate: DateTime(2023),
                              ).then((value) {
                                setState(() {
                                  _datetime = value;
                                });
                              });
                            },
                            child: Container(
                              width: 100,
                              height: 50,
                              color: Colors.white,
                              child: Center(
                                child: Text(
                                  "Select Date",
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      width: double.infinity,
                      height: 160,
                      child: InkWell(
                        child: Center(
                          child: _image == null
                              ? Text(
                                  'No image selected.',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                  ),
                                )
                              : Image.file(
                                  _image,
                                  width: double.infinity,
                                ),
                        ),
                        onTap: () {
                          getImage();
                        },
                      ),
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
                    )
                  ],
                ),
              ),
            ),
            Text(
              textValue == null ? "" : textValue.toString(),
            )
          ],
        ),
      ),
    );
  }
}
