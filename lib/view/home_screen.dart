import 'package:flutter/material.dart';
import 'package:carobar/view/components/elevated_button.dart';
import 'login_screen.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(backgroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(15),
              bottomRight: Radius.circular(15)
          ),
        ),
        child: ListView(
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/MECH.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: const [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.black,
                    backgroundImage: AssetImage('assets/images/logo.jpeg'),
                  ),
                  Text(
                    'Future fixer',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            ListTile(

              leading: const Icon(
                Icons.person, color: Colors.black,
                size: 28,
              ),
              title: const Text(
                'Future Fixer',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              onTap: () {

              },
            ),
            ListTile(

              leading: const Icon(
                Icons.phone,
                size: 28,
                color: Colors.black,
              ),
              title: const Text(
                '03449518940',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              onTap: () {

              },
            ),
            const Divider(
              color: Colors.teal,
              thickness: 3,
              indent: 10,
              endIndent: 10,
            ),
            ListTile(
              leading: const Icon(
                Icons.work,
                size: 28,
                color: Colors.black,
              ),
              title: const Text(
                'How it works',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              onTap: () {

              },
            ),
            ListTile(

              leading: const Icon(
                Icons.question_answer_outlined,
                size: 28,
                color: Colors.black,
              ),
              title: const Text(
                'FAQ',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              onTap: () {

              },
            ),
            ListTile(

              leading: const Icon(
                Icons.home,
                size: 28,
                color: Colors.black,
              ),
              title: const Text(
                'Home',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              onTap: () {

              },
            ),
            const Divider(
              color: Colors.teal,
              thickness: 3,
              indent: 10,
              endIndent: 10,
            ),
            ListTile(

              leading: const Icon(
                Icons.logout,
                size: 28,
                color: Colors.black,
              ),
              title: const Text(
                'Sign-Out',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context)=> LoginScreen(),
                  ),
                );

              },
            ),
          ],
        ),
      ),
      appBar:AppBar(
        title: const Text('Mechanify'),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: <Color>[Colors.teal.shade400, Colors.teal.shade200]
              )
          ),
        ),
        titleTextStyle: const TextStyle(
          fontStyle: FontStyle.normal,
          fontFamily: 'Arial',
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 36.0,
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.car_repair_rounded, color: Colors.white,
            ),
            onPressed: () {

            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column (
            crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 170,
                child: Image.asset('assets/images/res_home.png'),
              ),
              //Ink.image(image: AssetImage('assets/images/res_home.png')),
               //const Image(image: AssetImage('assets/images/car-wash.png')),
             Center(
               child: Container(
                 decoration: BoxDecoration (
                     gradient: LinearGradient(
                         begin: Alignment.centerLeft,
                         end: Alignment.centerRight,
                         colors: <Color>[Colors.teal.shade400, Colors.teal.shade200]
                     )
                 ),
                 padding: const EdgeInsets.all(6),
                 child: Row(
                   children:  const <Widget>[
                     Expanded(
                         child:  Center(
                           child: Text('OUR SERVICES', style: TextStyle(

                             color: Colors.white,
                             fontSize: 26,
                             fontFamily: 'Arial',
                             fontStyle: FontStyle.normal,
                             fontWeight: FontWeight.bold,
                           ),
                             textAlign: TextAlign.start,
                           ),
                         ),

                     )
                   ]
                 ),
               ),
             ),
               Center(
                 child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                   children:   [
                   //Image(image: AssetImage('assets/images/car-wash.png')),
                     InsertButton('Engine', Icons.engineering_rounded,Colors.red.shade100),
                     InsertButton('Car Wash', Icons.car_repair_rounded,Colors.lightGreen.shade200),
                  ]
                 ),
               ),
              Center(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:   [
                      InsertButton('Oil Change', Icons.oil_barrel_rounded,Colors.amber.shade100),
                      InsertButton('Paint', Icons.format_color_fill_rounded,Colors.deepPurple.shade200),
                    ]
                ),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                    children:   [
                      InsertButton('Accesories', Icons.account_tree_rounded,Colors.lightBlue.shade200),
                      InsertButton('Tyre Change', Icons.radio_button_on_rounded,Colors.teal.shade100),
                    ]
                ),
              ),
            ],
          ),
        ),
      ),
    backgroundColor: Colors.white,
    );
  }
}





