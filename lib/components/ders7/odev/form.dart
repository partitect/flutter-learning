import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/ders7/odev/form_detail.dart';
import 'package:multi_image_picker/multi_image_picker.dart';

class RegisterFormExample extends StatefulWidget {
  @override
  _RegisterFormExampleState createState() => _RegisterFormExampleState();
}

class _RegisterFormExampleState extends State<RegisterFormExample> {
  List<Asset> images = List<Asset>();
  String _error;
  String imageUploadText = "3 Adet Resim Seçiniz..";
  @override
  void initState() {
    super.initState();
  }

  Widget buildGridView() {
    if (images != null)
      return GridView.count(
        crossAxisCount: 3,
        children: List.generate(images.length, (index) {
          Asset asset = images[index];
          return Container(
            margin: EdgeInsets.all(2),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4.0),
              child: AssetThumb(
                asset: asset,
                width: 300,
                height: 100,
              ),
            ),
          );
        }),
      );
    else
      return Container(color: Colors.white);
  }

  Future<void> loadAssets() async {
    setState(() {
      images = List<Asset>();
    });

    List<Asset> resultList;
    String error;

    try {
      resultList = await MultiImagePicker.pickImages(
        maxImages: 3,
        cupertinoOptions: CupertinoOptions(
          selectionFillColor: "#ff11ab",
          selectionTextColor: "#ffffff",
          selectionCharacter: "✓",
        ),
      );
    } on NoImagesSelectedException catch (e) {
      error = e.toString();
    } on Exception catch (e) {
      error = e.toString();
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      images = resultList;
      if (images.isNotEmpty) {
        setState(() {
          imageUploadText = "3 Adet Resim Seçildi";
        });
      }
      if (error == null) _error = 'No Error Dectected';
    });
  }

  String adSoyadText = "";
  String emailText = "";
  String parolaText = "";
  final TextEditingController _pass = TextEditingController();
  final TextEditingController _confirmPass = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ödev"),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.all(10),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Adınızı Soyadınızı Yazın',
                  ),
                  onChanged: (val) {
                    setState(() {
                      adSoyadText = val;
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
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Email Adresinizi Yazın',
                  ),
                  onChanged: (val) {
                    setState(() {
                      emailText = val;
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
                    border: OutlineInputBorder(),
                    hintText: 'Parolanızı Yazın',
                  ),
                  onChanged: (val) {
                    setState(() {
                      parolaText = val;
                    });
                  },
                  controller: _pass,
                  validator: (val) {
                    if (val.isEmpty) return 'Parola Boş Bırakılamaz';
                    return null;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                    keyboardType: TextInputType.text,
                    obscureText: true, //yıldızlı text
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Parolanızı Tekrar Yazın',
                    ),
                    onChanged: (val) {
                      setState(() {
                        parolaText = val;
                      });
                    },
                    controller: _confirmPass,
                    validator: (val) {
                      if (val.isEmpty) return 'Parola Boş Bırakılamaz';
                      if (val != _pass.text) return "Parolalar Eşleşmiyor";
                      return null;
                    }),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: loadAssets,
                  child: Container(
                    padding: EdgeInsets.all(5),
                    width: double.infinity,
                    height: 185,
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(
                        4,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          imageUploadText,
                          style: TextStyle(color: Colors.white, fontSize: 24),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Expanded(
                          child: buildGridView(),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.lightBlue,
                      padding: EdgeInsets.symmetric(
                        vertical: 15,
                      ),
                      textStyle: TextStyle(fontSize: 20),
                    ),
                    label: Text('Gönder'),
                    icon: Icon(Icons.send_to_mobile),
                    onPressed: () {
                      final isValid = formKey.currentState.validate();
                      if (isValid) {
                        formKey.currentState.save();
                        new Future.delayed(
                            const Duration(
                              milliseconds: 4600, //4600
                            ), () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return FormDetail(
                                adsoyad: adSoyadText,
                                emailAdress: emailText,
                                password: parolaText,
                                imgs: images,
                              );
                            },
                          ));
                        });
                        final snackbar = SnackBar(
                          backgroundColor: Colors.purple,
                          content: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                  "Kayıt Başarılı Detay Sayfasına Yönlendiriliyor"),
                              SizedBox(
                                width: 20,
                                height: 20,
                                child: CircularProgressIndicator(
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    Colors.white,
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackbar);
                      }
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
