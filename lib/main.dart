import 'package:flutter/material.dart';

class Mytable extends StatefulWidget {
  const Mytable({Key? key}) : super(key: key);

  @override
  State<Mytable> createState() => _MytableState();
}

class _MytableState extends State<Mytable> {
  Widget a = Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Row(
        children: [Image.asset('image/redmi.jpg'), Text('Iphoone 14 ')],
      ),
      Row(
        children: [
          Image.asset('image/s 22.jpg',),Text('S 22 Ultra')
        ],
      ),
        Row(
        children: [
          Image.asset('image/huawei.jpg'),Text('Huawei P30 lite')
        ],
      ),
    ],
  );
  Widget b = Container(
    height: 100,
    width: 100,
    color: Colors.black,
  );
  Widget c= Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Row(
        children: [Image.asset('image/redmi.jpg'), ],
      ),
      Row(
        children: [
          Image.asset('image/s 22.jpg',),
        ],
      ),
        Row(
        children: [
          Image.asset('image/redmi.jpg'),
        ],
      ),
    ],
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            color: Colors.blue,
            height: 800,
            child: b,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                  onPressed: () {
                    setState(() {
                      b = a;
                    });
                  },
                  child: Icon(
                    Icons.list,
                    size: 40,
                    color: Colors.black,
                  )),
              TextButton(
                  onPressed: () {
                    setState(() {
                      b=c;
                    });
                  },
                  child: Icon(
                    Icons.image,
                    size: 40,
                    color: Colors.black,
                  ))
            ],
          )
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Mytable(),
  ));
}
