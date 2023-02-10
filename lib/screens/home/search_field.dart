import 'package:flutter/material.dart';
import 'package:news/utils/image_loader.dart';

class SearchField extends StatelessWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomLeft,
          child: Container(
            margin: const EdgeInsets.only(right: 60),
            child: TextButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.circular(
                                18.0))),
                    backgroundColor:
                    MaterialStateProperty.all(
                        Colors.white)),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 12, right: 8),
                      child: Image.asset('${ImageLoader.rootPath}redu.png', width: 18, height: 18),
                    ),
                    const Text(
                      '中方回应美方断供华为 ｜ 英雄联盟S11赛季',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                          fontSize: 14),
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                ),
                onPressed: () {}
            )
          )
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Column(
            children: [
              Container(
                width: 25,
                height: 25,
                margin: const EdgeInsets.only(top: 40),
                child: FloatingActionButton(
                  backgroundColor: Colors.white,
                  onPressed: () {},
                  child: const Text('+',
                      style: TextStyle(fontSize: 20, color: Colors.red)),
                ),
              ),
              const Text('发布',
                  style: TextStyle(color: Colors.white, fontSize: 10))
            ],
          ),
        )
      ],
    );
  }
}
