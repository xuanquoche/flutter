import 'package:flutter/material.dart';

void main() {
  runApp(const ContactCard());
}

class ContactCard extends StatelessWidget {
  const ContactCard({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal.shade900, 
        appBar: AppBar(
          title: const Text("Contact Card",
            style: TextStyle(
              fontFamily: "Pacifico",
              fontSize: 26,
            ),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              CircleAvatar(
                backgroundImage: AssetImage("images/itme.jpg"),
                backgroundColor: Colors.transparent,
                radius: 80,
              ),
              Text("Xuan Quoc",
                style: TextStyle(
                  fontFamily: "Pacifico",
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text("Flutter Developer",
                style: TextStyle(
                  fontFamily: "SourceSans3",
                  fontSize: 20,
                  letterSpacing: 3,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20,
              width: 200,
              child: Divider(
                thickness: 1,
                color: Colors.tealAccent,
              ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: ListTile(
                  title: Text("TIKTORK",
                    style: TextStyle(
                      color: Colors.teal,
                      fontFamily: "SourceSans3",
                      fontSize: 20,
                    ),
                  ),
                  leading: Icon(Icons.person,
                    color: Colors.teal,
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: ListTile(
                  title: Text("+84 909 090 909",
                    style: TextStyle(
                      color: Colors.teal,
                      fontFamily: "SourceSans3",
                      fontSize: 20,
                    ),
                  ),
                  leading: Icon(Icons.phone,
                    color: Colors.teal,
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: ListTile(
                  title: Text("creator@gmail.com",
                    style: TextStyle(
                      color: Colors.teal,
                      fontFamily: "SourceSans3",
                      fontSize: 20,
                    ),
                  ),
                  leading: Icon(Icons.email,
                    color: Colors.teal,
                  ),
                ),
              ),
            ],
          ),
          )
        ),
      ),
    );
  }
}
