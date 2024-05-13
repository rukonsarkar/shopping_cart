import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {

  int pulloverUnitCount = 1 ;
  int pulloverUnitPrice = 101 ;

  int tshirtUnitCount = 1 ;
  int tshirtUnitPrice = 150 ;

  int sportUnitCount = 1 ;
  int sportUnitPrice = 200 ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF2F2F2),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            const Text(
              'My Bag',
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: double.maxFinite,
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 3,
                      blurRadius: 5,
                    ),
                  ]),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    'https://cdn.pixabay.com/photo/2021/12/18/12/58/woman-6878637_1280.jpg',
                    height: double.maxFinite,
                    width: 150,
                    fit: BoxFit.fill,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Pullover',
                          style: titleTextStyle.textStyle,
                        ),
                        const Row(
                          children: [
                            Text(
                              'Color : ',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12),
                            ),
                            Text(
                              'Black',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 12),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Size : ',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12),
                            ),
                            Text(
                              'L',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 12),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () {
                                if(pulloverUnitCount>1){
                                  pulloverUnitCount -- ;
                                }
                                pulloverUnitPrice = 101 * pulloverUnitCount ;
                                setState(() {});
                              },
                              child: Container(
                                alignment: Alignment.center,
                                width: 25,
                                height: 25,
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                    image: const DecorationImage(
                                      image: NetworkImage(
                                          'https://cdn-icons-png.flaticon.com/128/16116/16116295.png'),
                                      fit: BoxFit.fill,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        blurRadius: 3,
                                        spreadRadius: 2,
                                      )
                                    ]),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                                margin: const EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  '$pulloverUnitCount',
                                  style: TextStyle(fontSize: 15),
                                )),
                            const SizedBox(
                              width: 10,
                            ),
                            GestureDetector(
                              onTap: () {
                                pulloverUnitCount ++;
                                pulloverUnitPrice = 51 * pulloverUnitCount ;
                                setState(() {});
                              },
                              child: Container(
                                alignment: Alignment.center,
                                width: 25,
                                height: 25,
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                    image: const DecorationImage(
                                      image: NetworkImage(
                                          'https://cdn-icons-png.flaticon.com/128/9411/9411817.png'),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        blurRadius: 3,
                                        spreadRadius: 2,
                                      )
                                    ]),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: Icon(
                          Icons.more_vert_rounded,
                          color: Colors.grey,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 5, 15, 10),
                          child: Text(
                        '$pulloverUnitPrice\$',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ))
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width: double.maxFinite,
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 3,
                      blurRadius: 5,
                    ),
                  ]),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    'https://cdn.pixabay.com/photo/2024/04/30/07/10/ai-generated-8729602_640.jpg',
                    height: double.maxFinite,
                    width: 150,
                    fit: BoxFit.fill,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'T-Shirt',
                          style: titleTextStyle.textStyle,
                        ),
                        const Row(
                          children: [
                            Text(
                              'Color : ',
                              style:
                              TextStyle(color: Colors.grey, fontSize: 12),
                            ),
                            Text(
                              'Gray',
                              style:
                              TextStyle(color: Colors.black, fontSize: 12),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Size : ',
                              style:
                              TextStyle(color: Colors.grey, fontSize: 12),
                            ),
                            Text(
                              'L',
                              style:
                              TextStyle(color: Colors.black, fontSize: 12),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () {
                                if(tshirtUnitCount>1){
                                  tshirtUnitCount -- ;
                                }
                                tshirtUnitPrice = 150 * tshirtUnitCount ;
                                setState(() {});
                              },
                              child: Container(
                                alignment: Alignment.center,
                                width: 25,
                                height: 25,
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                    image: const DecorationImage(
                                      image: NetworkImage(
                                          'https://cdn-icons-png.flaticon.com/128/16116/16116295.png'),
                                      fit: BoxFit.fill,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        blurRadius: 3,
                                        spreadRadius: 2,
                                      )
                                    ]),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                                margin: const EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  '$tshirtUnitCount',
                                  style: TextStyle(fontSize: 15),
                                )),
                            const SizedBox(
                              width: 10,
                            ),
                            GestureDetector(
                              onTap: () {
                                tshirtUnitCount ++;
                                tshirtUnitPrice = 150 * tshirtUnitCount ;
                                setState(() {});
                              },
                              child: Container(
                                alignment: Alignment.center,
                                width: 25,
                                height: 25,
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                    image: const DecorationImage(
                                      image: NetworkImage(
                                          'https://cdn-icons-png.flaticon.com/128/9411/9411817.png'),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        blurRadius: 3,
                                        spreadRadius: 2,
                                      )
                                    ]),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: Icon(
                          Icons.more_vert_rounded,
                          color: Colors.grey,
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.fromLTRB(0, 5, 15, 10),
                          child: Text(
                            '$tshirtUnitPrice\$',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ))
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width: double.maxFinite,
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 3,
                      blurRadius: 5,
                    ),
                  ]),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    'https://cdn.pixabay.com/photo/2014/11/07/00/00/volleyball-520093_640.jpg',
                    height: double.maxFinite,
                    width: 150,
                    fit: BoxFit.fill,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Sport Dress',
                          style: titleTextStyle.textStyle,
                        ),
                        const Row(
                          children: [
                            Text(
                              'Color : ',
                              style:
                              TextStyle(color: Colors.grey, fontSize: 12),
                            ),
                            Text(
                              'Black',
                              style:
                              TextStyle(color: Colors.black, fontSize: 12),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Size : ',
                              style:
                              TextStyle(color: Colors.grey, fontSize: 12),
                            ),
                            Text(
                              'M',
                              style:
                              TextStyle(color: Colors.black, fontSize: 12),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () {
                                if(sportUnitCount>1){
                                  sportUnitCount -- ;
                                }
                                sportUnitPrice = 200 * sportUnitCount ;
                                setState(() {});
                              },
                              child: Container(
                                alignment: Alignment.center,
                                width: 25,
                                height: 25,
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                    image: const DecorationImage(
                                      image: NetworkImage(
                                          'https://cdn-icons-png.flaticon.com/128/16116/16116295.png'),
                                      fit: BoxFit.fill,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        blurRadius: 3,
                                        spreadRadius: 2,
                                      )
                                    ]),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                                margin: const EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  '$sportUnitCount',
                                  style: TextStyle(fontSize: 15),
                                )),
                            const SizedBox(
                              width: 10,
                            ),
                            GestureDetector(
                              onTap: () {
                                sportUnitCount ++;
                                sportUnitPrice = 200 * sportUnitCount ;
                                setState(() {});
                              },
                              child: Container(
                                alignment: Alignment.center,
                                width: 25,
                                height: 25,
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                    image: const DecorationImage(
                                      image: NetworkImage(
                                          'https://cdn-icons-png.flaticon.com/128/9411/9411817.png'),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        blurRadius: 3,
                                        spreadRadius: 2,
                                      )
                                    ]),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: Icon(
                          Icons.more_vert_rounded,
                          color: Colors.grey,
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.fromLTRB(0, 5, 15, 10),
                          child: Text(
                            '$sportUnitPrice\$',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ))
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class titleTextStyle {
  static TextStyle textStyle = const TextStyle(
    color: Colors.black,
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );
}
