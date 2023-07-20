import 'package:flutter/material.dart';

class Reviews extends StatelessWidget {
  const Reviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Workshop 02: Menu Reviews'),
      ),

      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Content
          Expanded(
            flex: 1,
            child: Column(
              children: [
                //Title of Menu
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: const Text('Strawberry Pavlova',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                
                //Description of Menu
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: const Text('Pavlova is a meringue-based dessert named after the Russian ballerine Anna Pavlova. \n Pavlova featues a crisp and soft, light inside, topped with fruit and whipped cream.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),

                //Rate(Stars)
                Container(
                  margin: null,
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.star, color: Colors.amber,),
                      Icon(Icons.star, color: Colors.amber,),
                      Icon(Icons.star, color: Colors.amber,),
                      Icon(Icons.star, color: Colors.grey,),
                      Icon(Icons.star, color: Colors.grey,),
                      SizedBox(width: 50,),
                      Text('170 Reviews',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),

                //Details of Menu
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //1st Detail, PREP:
                      Column(
                        children: [
                          Icon(Icons.kitchen, color: Colors.green, size: 30,),
                          SizedBox(height: 5),
                          Text('PREP:',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text('25 Min',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),

                      //2nd Detail, COOK:
                      Column(
                        children: [
                          Icon(Icons.timer, color: Colors.green, size: 30,),
                          SizedBox(height: 5),
                          Text('COOK:',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text('1 hr',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),

                      //3rd Detail, FEEDS:
                      Column(
                        children: [
                          Icon(Icons.restaurant, color: Colors.green, size: 30,),
                          SizedBox(height: 5),
                          Text('FEEDS:',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text('4-6',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          //Image of Menu
          Expanded(
            flex: 1,
            child:
              Container(
                color: Colors.blue,
                child: 
                  const Image(
                    image: AssetImage('assets/images/strawberry_pavlova.jpg'),
                    fit: BoxFit.cover,
                  ),
              ),
          ),
        ],
      ),
    );
  }
}