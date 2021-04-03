import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/ders6/details/renk_detail.dart';

class HomeCardWidget extends StatelessWidget {
  final image;
  final text;
  const HomeCardWidget({Key key, @required this.image, @required this.text})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Center(
        child: Material(
          child: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return RenkDetailWidget(color: text);
                },
              ));
            },
            child: Container(
              margin: EdgeInsets.only(bottom: 0),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: NetworkImage(image),
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(.5),
                    BlendMode.multiply,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              width: MediaQuery.of(context).size.width / 1.5,
              height: 150,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      text,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
