import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffcbcbcb),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Color(0xffd6b738),
        title: Text(
          'Home',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: const [
          CircleAvatar(
            radius: 16,
            backgroundColor: Color(0xffd4d181),
            child: Icon(
              Icons.search,
              size: 20,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: CircleAvatar(
              radius: 16,
              backgroundColor: Color(0xffd4d181),
              child: Icon(
                Icons.shop,
                size: 20,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: ListView(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://media.istockphoto.com/photos/vegetarian-food-in-string-bag-picture-id1311051864?k=20&m=1311051864&s=612x612&w=0&h=Y2RT33vB22QtNWFbcRSaesd_D8CEoW1wbR5r4e8rCuk='),
                  )),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 120, bottom: 10),
                            child: Container(
                              height: 40,
                              width: 60,
                              decoration: BoxDecoration(
                                color: Color(0xffd1ad17),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(25),
                                  bottomRight: Radius.circular(25),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  "Vegi",
                                  style: TextStyle(
                                      fontSize: 22,
                                      color: Colors.white,
                                      shadows: [
                                        BoxShadow(
                                          color: Colors.green,
                                          blurRadius: 10,
                                          offset: Offset(3, 3),
                                        )
                                      ]),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            "30% OFF",
                            style: TextStyle(
                                color: Colors.green[100],
                                fontSize: 39,
                                shadows: [
                                  BoxShadow(
                                    color: Colors.green,
                                    blurRadius: 5,
                                    offset: Offset(3, 3),
                                  )
                                ]),
                          ),
                          Text(
                            "On all vegetables products",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Herbs Seasonings'),
                  Text(
                    'View all',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  singleProduct(),
                  singleProduct(),
                  singleProduct(),
                  singleProduct(),
                  singleProduct(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Fresh Fruits'),
                  Text(
                    'View all',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  singleProduct(),
                  singleProduct(),
                  singleProduct(),
                  singleProduct(),
                  singleProduct(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget singleProduct() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      height: 230,
      width: 160,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Image.network(
              'https://thumbs.dreamstime.com/b/fresh-green-basil-leaves-closeup-perfect-fresh-basil-leaves-isolated-white-background-shadows-png-file-210754810.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Fresh Basil',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "50\$/50 Gram",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 2),
                          height: 30,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                  child: Text(
                                '50 Gram',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              )),
                              Icon(
                                Icons.arrow_drop_down,
                                color: Colors.yellow,
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: Container(
                          height: 30,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.remove,
                                size: 15,
                                color: Color(0xffd0b84c),
                              ),
                              Text(
                                '1',
                                style: TextStyle(
                                    color: Color(0xffd0b84c),
                                    fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                Icons.add,
                                size: 15,
                                color: Color(0xffd0b84c),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
