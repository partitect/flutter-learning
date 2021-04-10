import 'package:flutter/material.dart';
import 'package:multi_image_picker/multi_image_picker.dart';
import 'package:flutter_absolute_path/flutter_absolute_path.dart';

class FormDetail extends StatefulWidget {
  final adsoyad;
  final emailAdress;
  final password;
  final imgs;

  const FormDetail(
      {Key key, this.adsoyad, this.emailAdress, this.password, this.imgs})
      : super(key: key);
  @override
  _FormDetailState createState() => _FormDetailState();
}

class _FormDetailState extends State<FormDetail> {
  Future<List> getData() async {
    List<String> imagePaths = [];
    for (int i = 0; i < widget.imgs.length; i++) {
      imagePaths.add(await FlutterAbsolutePath.getAbsolutePath(
        widget.imgs[i].identifier,
      ));
    }

    return imagePaths;
  }

  getFileList() async {
    var imagePaths;
    for (int i = 0; i < widget.imgs.length; i++) {
      imagePaths = await FlutterAbsolutePath.getAbsolutePath(
        widget.imgs[i].identifier,
      );
    }
    return ListView.builder(
      itemCount: imagePaths.length,
      itemBuilder: (context, index) {
        return Image.asset(imagePaths[index]);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Detay"),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 60,
            color: Colors.red,
            child: Center(
              child: Text(
                "Ad Soyad: " + widget.adsoyad,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 60,
            color: Colors.red,
            child: Center(
              child: Text(
                "E-posta: " + widget.emailAdress,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 60,
            color: Colors.red,
            child: Center(
              child: Text(
                "Parola: " + widget.password,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          Container(
            color: Colors.blue,
            constraints: BoxConstraints(
              maxHeight: 300.0,
            ),
            child: FutureBuilder(
              future: getData(),
              builder: (context, snapshot) {
                //return Image.asset(snapshot.data[2].toString());
                return Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  child: snapshot.data != null
                      ? ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: snapshot.data.length,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.all(5),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(4),
                                child: Image.asset(snapshot.data[index]),
                              ),
                            );
                          },
                        )
                      : SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(
                              Colors.white,
                            ),
                          ),
                        ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
