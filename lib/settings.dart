import 'package:flutter/material.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  //String default = 'University of Waterloo';
  var _schools = [
    'University of Waterloo',
    'University of Toronto',
    'MacMaster University',
    'Ryerson University',
    'York University',
    'University of Western Ontario',
    'Ontario Tech University',
    'Other'
  ];
  var _schoolSelected = 'University of Waterloo';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          elevation: 1,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.green), // Icon
            onPressed: () {},
          ), // IconButton
          actions: [
            IconButton(
              icon: Icon(Icons.settings, color: Colors.green), // Icon
              onPressed: () {},
            ), // IconButton
          ],
        ), // AppBar
        body: Container(
            padding: EdgeInsets.only(left: 16, top: 25, right: 16),
            child: GestureDetector(
              onTap: () {
                FocusScope.of(context).unfocus();
              },

              child: ListView(
                children: [
                  Text("Edit Profile",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w500)),
                  SizedBox(
                    height: 15,
                  ), // SizedBox
                  Center(
                      child: Stack(
                    children: [
                      Container(
                          width: 130,
                          height: 130,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 4,
                                  color: Theme.of(context)
                                      .scaffoldBackgroundColor), // Border.all
                              boxShadow: [
                                BoxShadow(
                                    spreadRadius: 2,
                                    blurRadius: 10,
                                    color: Colors.black.withOpacity(0.1),
                                    offset: Offset(0, 10)), // BoxShadow
                              ],
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      "https://media-exp3.licdn.com/dms/image/C4E03AQHyzxHi48gd8A/profile-displayphoto-shrink_800_800/0/1622332436028?e=1628726400&v=beta&t=9jvzkGQlLbKofdYl1p4WsJbvJDQxzLYPgHDMr0Ql5t0")) // DecorationImage
                              ) // BoxDecoration
                          ), // Container
                      Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 4,
                                color:
                                    Theme.of(context).scaffoldBackgroundColor,
                              ), // Border.all
                              color: Colors.green,
                            ), // BoxDecoration
                            child: Icon(
                              Icons.edit,
                              color: Colors.white,
                            ),
                          )),
                    ],
                  ) // Stack
                      ), // Center
                  SizedBox(
                    height: 35,
                  ), // SizedBox
                  buildTextField("Full Name", "John Smith", false),
                  buildTextField("E-Mail", "jsmith@gmail.com", false),
                  buildTextField("Password", "*******", true),
                  buildTextField("Location", "VA, USA", false),
                  DropdownButton<String>(
                      items: _schools.map((String dropDownStringItem) {
                        return DropdownMenuItem<String>(
                            value: dropDownStringItem,
                            child: Text(dropDownStringItem));
                      }).toList(),
                      onChanged: (String newValueSelected) {
                        setState(() {
                          this._schoolSelected = newValueSelected;
                        });
                      },
                      value: _schoolSelected)
                ],
              ), // ListView
            ) // GestureDetector
            ) // Container
        ); // Scaffold
  }
}

Widget buildTextField(String labelText, String placeholder, bool isPassword) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 35.0),
    child: TextField(
        obscureText: isPassword,
        decoration: InputDecoration(
            suffixIcon: isPassword
                ? IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.remove_red_eye,
                      color: Colors.grey,
                    ) // Icon
                    )
                : null, // IconButton
            contentPadding: EdgeInsets.only(bottom: 3),
            labelText: labelText,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: placeholder,
            hintStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ) // TextStyle
            ) // InputDecoration

        ), // TextField
  ); // Padding
}

/*
                  DropdownButton<String>(
                    items: _schools.map((String dropDownStringItem){
                      return DropdownMenuItem<String>(
                        value: dropDownStringItem,
                        child: Text(dropDownStringItem)
                      );
                    }).toList(),

                    onChanged: (String newValueSelected){
                      setState((){
                        this._schoolSelected = newValueSelected;
                      }
                      );
                    },
                    value: _schoolSelected
                  ) 
*/
