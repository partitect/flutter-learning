import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class VillaFavori {
  var title;
  var villaContent;
  var villaImage;
  VillaFavori({this.title, this.villaContent, this.villaImage});
  VillaFavori.fromJson(json) {
    this.title = json["title"];
    this.villaContent = json["address"];
    this.villaImage = json["image"];
  }
}

class ApiStartedExample extends StatefulWidget {
  @override
  _ApiStartedExampleState createState() => _ApiStartedExampleState();
}

class _ApiStartedExampleState extends State<ApiStartedExample> {
  VillaFavori villas = VillaFavori();
  List<VillaFavori> tvs = [];

  var isLoading = true;
  var _errorMessage;
  getData() async {
    var url = Uri.parse('https://villafavori.com/api/superclassified');
    var response = await http.get(url);
    var albums;
    if (response.statusCode == 200) {
      albums = json.decode(response.body);
      setState(() {
        for (var item in albums[0]["superclassified"][0]) {
          tvs.add(VillaFavori.fromJson(item));
        }
        isLoading = false;
      });
    } else {
      print("Api Çekilirken Bir Sorun Oluştu ${response.statusCode}");
      setState(() {
        isLoading = false;
        response.statusCode == 404
            ? _errorMessage = "Sayfa Bulunamadı"
            : _errorMessage = "";
      });
    }
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Api Started",
        ),
      ),
      body: isLoading == false
          ? SingleChildScrollView(
              child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                itemCount: tvs.length,
                itemBuilder: (context, index) {
                  return CachedNetworkImage(
                    imageUrl: tvs[index].villaImage != null
                        ? "https://villafavori.com/${tvs[index].villaImage}"
                        : "https://logowik.com/content/uploads/images/flutter5786.jpg",
                    imageBuilder: (context, imageProvider) => Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Container(
                          padding: EdgeInsets.all(20),
                          width: double.infinity,
                          height: 300,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: imageProvider,
                              fit: BoxFit.cover,
                              colorFilter: new ColorFilter.mode(
                                  Colors.purple.withOpacity(.5),
                                  BlendMode.multiply),
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                tvs[index].title,
                                style: GoogleFonts.quicksand(
                                  textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                tvs[index].villaContent != ""
                                    ? tvs[index].villaContent
                                    : "Adres Yok",
                                style: GoogleFonts.quicksand(
                                  textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    placeholder: (context, url) => Center(
                      child: CircularProgressIndicator(),
                    ),
                    errorWidget: (context, url, error) => Icon(
                      Icons.error,
                    ),
                  );
                },
              ),
            ))
          : Column(
              children: [
                Center(
                  child: SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(),
                  ),
                ),
              ],
            ),
    );
  }
}
