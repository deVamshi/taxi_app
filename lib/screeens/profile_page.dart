import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:taxi_app/constants/app_colors.dart';
import 'package:taxi_app/misc.dart';
import 'package:taxi_app/widgets/repeat_code.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: appbarColor,
        title: Text(
          "My Profile",
          style: GoogleFonts.lato(color: Colors.grey[200]),
        ),
        centerTitle: true,
        elevation: 0.0,
        actions: [
          PopupMenuButton(
              itemBuilder: (context) => [
                    PopupMenuItem(child: Text("About")),
                    PopupMenuItem(child: Text("Rate this app")),
                    PopupMenuItem(child: Text("Sign out")),
                  ])
        ],
      ),
      body: ScrollConfiguration(
        behavior: MyBehavior(),
        child: ListView(
          children: [
            Container(
              color: appbarColor,
              height: 230,
              child: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  CircleAvatar(
                    backgroundColor: appbarColor,
                    radius: 50,
                    backgroundImage: NetworkImage(
                        "https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "John Smith",
                    style: GoogleFonts.lato(
                        color: Colors.grey[200],
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Card(
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                rowItemForProfile("Rating", "4.95"),
                                rowItemForProfile("Total Earnings", "\$1034"),
                                rowItemForProfile("Total Trips", "432"),
                              ],
                            ),
                          ],
                        )),
                  )
                ],
              )),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      "Ongoing Trip",
                      style: GoogleFonts.lato(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListTile(
                    trailing: PopupMenuButton(
                        itemBuilder: (context) =>
                            [PopupMenuItem(child: Text("Cancel this trip"))]),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
                    ),
                    title: Text(
                      "Alexa Venlode",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    tileColor: Colors.white,
                    subtitle: Text(
                      "Saint street to Park Avenue",
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Divider(
                    color: Colors.grey[500],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      FlatButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          Icons.call,
                          color: appbarColor,
                        ),
                        label: Text(
                          "Call",
                          style: GoogleFonts.lato(
                              color: Colors.black, fontSize: 15),
                        ),
                      ),
                      FlatButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          Icons.chat,
                          color: appbarColor,
                        ),
                        label: Text(
                          "Chat",
                          style: GoogleFonts.lato(
                              color: Colors.black, fontSize: 15),
                        ),
                      ),
                      FlatButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          Icons.navigation_sharp,
                          color: appbarColor,
                        ),
                        label: Text(
                          "Navigation",
                          style: GoogleFonts.lato(
                              color: Colors.black, fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Text(
                "Notifications",
                style: GoogleFonts.lato(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.grey),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
                ),
                title: Text(
                  "Alexa Venlode messaged you",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                tileColor: Colors.white,
                subtitle: Text(
                  "I am waiting at the saint street",
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: appbarColor,
                  child: Center(
                    child: Icon(
                      Icons.star,
                      color: secondaryColor,
                    ),
                  ),
                ),
                title: Text(
                  "Congratulations!",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                tileColor: Colors.white,
                subtitle: Text(
                  "You got 5 stars from Lennet",
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
                ),
                title: Text(
                  "Lennert messaged you",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                tileColor: Colors.white,
                subtitle: Text(
                  "Great! I am coming that way",
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          LineAwesomeIcons.user_edit,
        ),
        onPressed: () {},
        backgroundColor: appbarColor,
      ),
    );
  }

  rowItemForProfile(String header, String value) {
    return Column(
      children: [
        header == "Rating"
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    size: 15,
                  ),
                  SizedBox(width: 2),
                  Text(
                    "4.9",
                    style: GoogleFonts.lato(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              )
            : Text(
                "$value",
                style:
                    GoogleFonts.lato(fontSize: 20, fontWeight: FontWeight.bold),
              ),
        const SizedBox(height: 5),
        Text(
          "$header",
          style: GoogleFonts.lato(
              fontSize: 12,
              color: Colors.grey[500],
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
