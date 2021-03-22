import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SwiperExample extends StatefulWidget {
  @override
  _SwiperExampleState createState() => _SwiperExampleState();
}

class _SwiperExampleState extends State<SwiperExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("asdasd"),
      ),
      body: ListView(padding: EdgeInsets.all(20), children: [
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 300,
            margin: EdgeInsets.only(bottom: 20),
            child: Swiper(
              itemBuilder: (BuildContext context, int index) {
                return Image.network(
                  "https://images.unsplash.com/photo-1616190866710-09c4b5e7c38f?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDZ8NnNNVmpUTFNrZVF8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
                  fit: BoxFit.fill,
                );
              },
              itemCount: 3,
              pagination: SwiperPagination(),
              control: SwiperControl(),
              viewportFraction: 0.8,
              scale: 0.9,
            ),
          ),
        ),
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 300,
            child: Swiper(
              itemBuilder: (BuildContext context, int index) {
                return Image.network(
                  "https://images.unsplash.com/photo-1616190866710-09c4b5e7c38f?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDZ8NnNNVmpUTFNrZVF8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
                  fit: BoxFit.fill,
                );
              },
              itemCount: 3,
              pagination: SwiperPagination(),
              control: SwiperControl(),
              itemWidth: 300.0,
              layout: SwiperLayout.STACK,
            ),
          ),
        ),
        Center(
          child: Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              child: Swiper(
                  layout: SwiperLayout.CUSTOM,
                  customLayoutOption: CustomLayoutOption(
                          startIndex: -1, stateCount: 3)
                      .addRotate([-45.0 / 180, 0.0, 45.0 / 180]).addTranslate([
                    Offset(-370.0, -40.0),
                    Offset(0.0, 0.0),
                    Offset(370.0, -40.0)
                  ]),
                  itemWidth: 300.0,
                  itemHeight: 200.0,
                  itemBuilder: (context, index) {
                    return Image.network(
                      "https://images.unsplash.com/photo-1616190866710-09c4b5e7c38f?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDZ8NnNNVmpUTFNrZVF8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60",
                      fit: BoxFit.fill,
                    );
                  },
                  itemCount: 10)),
        ),
      ]),
    );
  }
}
