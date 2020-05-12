import 'package:flutter/material.dart';

class Users extends StatefulWidget {
  @override
  _UsersState createState() => _UsersState();
}

class _UsersState extends State<Users> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 16, vertical: 16),
              child: Column(children: <Widget>[
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 10,
                  child: Container(
                      color: Colors.white,
                      child: Column(
                        children: <Widget>[
                          Container(
                              margin: EdgeInsets.fromLTRB(50,10,10,10),
                              color: Colors.white,
                              child: Column(children: <Widget>[
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                    width: double.infinity,
                                    child: Text(
                                      "Signed in with",
                                      style: TextStyle(
                                        fontFamily: "Playfair",
                                        color: Colors.grey,
                                        fontSize: 20,
                                        fontStyle: FontStyle.normal,
                                      ),

                                    )),
                                Container(
                                    width: double.infinity,
                                    child: Text(
                                      "Email",
                                      style: TextStyle(
                                        fontFamily: "Playfair",
                                        color: Colors.black87,
                                        fontSize: 20,
                                        fontStyle: FontStyle.normal,
                                      ),

                                    )),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                    width: double.infinity,
                                    child: Text(
                                      "Usernname",
                                      style: TextStyle(
                                        fontFamily: "Playfair",
                                        color: Colors.grey,
                                        fontSize: 20,
                                        fontStyle: FontStyle.normal,
                                      ),

                                    )),
                                Container(
                                    width: double.infinity,
                                    child: Text(
                                      "Saurab",
                                      style: TextStyle(
                                        fontFamily: "Playfair",
                                        color: Colors.black87,
                                        fontSize: 20,
                                        fontStyle: FontStyle.normal,
                                      ),

                                    )),SizedBox(
                                  height: 20,
                                ),

                                Container(
                                    width: double.infinity,
                                    child: Text(
                                      "Email",
                                      style: TextStyle(
                                        fontFamily: "Playfair",
                                        color: Colors.grey,
                                        fontSize: 20,
                                        fontStyle: FontStyle.normal,
                                      ),

                                    )),
                                Container(
                                    width: double.infinity,
                                    child: Text(
                                      "deep@gmail.com",
                                      style: TextStyle(
                                        fontFamily: "Playfair",
                                        color: Colors.black87,
                                        fontSize: 20,
                                        fontStyle: FontStyle.normal,
                                      ),

                                    )),

                                SizedBox(
                                  height: 20,
                                ),

                                SizedBox(
                                  height: 10,
                                ),

                              ],
                              )),
                          Column(
                            children: <Widget>[

                              Divider(
                                indent: 8,
                                endIndent: 8,
                                color: Colors.grey.shade400,
                              ),
                              SizedBox(
                                height: 10,
                              ),

                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Delete", style: TextStyle(
                                  fontFamily: "OpenSans",
                                  fontSize: 20,

                                  color: Colors.black87,
                                ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),

                            ],
                          )
                        ],
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 10,
                  child: Container(
                      color: Colors.white,
                      child: Column(
                        children: <Widget>[
                          Container(
                              margin: EdgeInsets.fromLTRB(50,10,10,10),
                              color: Colors.white,
                              child: Column(children: <Widget>[
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                    width: double.infinity,
                                    child: Text(
                                      "Signed in with",
                                      style: TextStyle(
                                        fontFamily: "Playfair",
                                        color: Colors.grey,
                                        fontSize: 20,
                                        fontStyle: FontStyle.normal,
                                      ),

                                    )),
                                Container(
                                    width: double.infinity,
                                    child: Text(
                                      "Gmail",
                                      style: TextStyle(
                                        fontFamily: "Playfair",
                                        color: Colors.black87,
                                        fontSize: 20,
                                        fontStyle: FontStyle.normal,
                                      ),

                                    )),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                    width: double.infinity,
                                    child: Text(
                                      "Usernname",
                                      style: TextStyle(
                                        fontFamily: "Playfair",
                                        color: Colors.grey,
                                        fontSize: 20,
                                        fontStyle: FontStyle.normal,
                                      ),

                                    )),
                                Container(
                                    width: double.infinity,
                                    child: Text(
                                      "hh",
                                      style: TextStyle(
                                        fontFamily: "Playfair",
                                        color: Colors.black87,
                                        fontSize: 20,
                                        fontStyle: FontStyle.normal,
                                      ),

                                    )),SizedBox(
                                  height: 20,
                                ),

                                Container(
                                    width: double.infinity,
                                    child: Text(
                                      "Email",
                                      style: TextStyle(
                                        fontFamily: "Playfair",
                                        color: Colors.grey,
                                        fontSize: 20,
                                        fontStyle: FontStyle.normal,
                                      ),

                                    )),
                                Container(
                                    width: double.infinity,
                                    child: Text(
                                      "hjg@fg.nj"
                                      ,
                                      style: TextStyle(
                                        fontFamily: "Playfair",
                                        color: Colors.black87,
                                        fontSize: 20,
                                        fontStyle: FontStyle.normal,
                                      ),

                                    )),

                                SizedBox(
                                  height: 20,
                                ),

                                SizedBox(
                                  height: 10,
                                ),

                              ],
                              )),
                          Column(
                            children: <Widget>[

                              Divider(
                                indent: 8,
                                endIndent: 8,
                                color: Colors.grey.shade400,
                              ),
                              SizedBox(
                                height: 10,
                              ),

                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Delete", style: TextStyle(
                                  fontFamily: "OpenSans",
                                  fontSize: 20,

                                  color: Colors.black87,
                                ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),

                            ],
                          )
                        ],
                      )),
                )

                ,SizedBox(
                  height: 10,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 10,
                  child: Container(
                      color: Colors.white,
                      child: Column(
                        children: <Widget>[
                          Container(
                              margin: EdgeInsets.fromLTRB(50,10,10,10),
                              color: Colors.white,
                              child: Column(children: <Widget>[
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                    width: double.infinity,
                                    child: Text(
                                      "Signed in with",
                                      style: TextStyle(
                                        fontFamily: "Playfair",
                                        color: Colors.grey,
                                        fontSize: 20,
                                        fontStyle: FontStyle.normal,
                                      ),

                                    )),
                                Container(
                                    width: double.infinity,
                                    child: Text(
                                      "Gmail",
                                      style: TextStyle(
                                        fontFamily: "Playfair",
                                        color: Colors.black87,
                                        fontSize: 20,
                                        fontStyle: FontStyle.normal,
                                      ),

                                    )),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                    width: double.infinity,
                                    child: Text(
                                      "Usernname",
                                      style: TextStyle(
                                        fontFamily: "Playfair",
                                        color: Colors.grey,
                                        fontSize: 20,
                                        fontStyle: FontStyle.normal,
                                      ),

                                    )),
                                Container(
                                    width: double.infinity,
                                    child: Text(
                                      "Rana Majumder"
                                      ,
                                      style: TextStyle(
                                        fontFamily: "Playfair",
                                        color: Colors.black87,
                                        fontSize: 20,
                                        fontStyle: FontStyle.normal,
                                      ),

                                    )),SizedBox(
                                  height: 20,
                                ),

                                Container(
                                    width: double.infinity,
                                    child: Text(
                                      "Email",
                                      style: TextStyle(
                                        fontFamily: "Playfair",
                                        color: Colors.grey,
                                        fontSize: 20,
                                        fontStyle: FontStyle.normal,
                                      ),

                                    )),
                                Container(
                                    width: double.infinity,
                                    child: Text(
                                      "ranad964@gmail.com"

                                      ,
                                      style: TextStyle(
                                        fontFamily: "Playfair",
                                        color: Colors.black87,
                                        fontSize: 20,
                                        fontStyle: FontStyle.normal,
                                      ),

                                    )),

                                SizedBox(
                                  height: 20,
                                ),

                                SizedBox(
                                  height: 10,
                                ),

                              ],
                              )),
                          Column(
                            children: <Widget>[

                              Divider(
                                indent: 8,
                                endIndent: 8,
                                color: Colors.grey.shade400,
                              ),
                              SizedBox(
                                height: 10,
                              ),

                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Delete", style: TextStyle(
                                  fontFamily: "OpenSans",
                                  fontSize: 20,

                                  color: Colors.black87,
                                ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),

                            ],
                          )
                        ],
                      )),
                )


                ,SizedBox(
                  height: 10,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 10,
                  child: Container(
                      color: Colors.white,
                      child: Column(
                        children: <Widget>[
                          Container(
                              margin: EdgeInsets.fromLTRB(50,10,10,10),
                              color: Colors.white,
                              child: Column(children: <Widget>[
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                    width: double.infinity,
                                    child: Text(
                                      "Signed in with",
                                      style: TextStyle(
                                        fontFamily: "Playfair",
                                        color: Colors.grey,
                                        fontSize: 20,
                                        fontStyle: FontStyle.normal,
                                      ),

                                    )),
                                Container(
                                    width: double.infinity,
                                    child: Text(
                                      "Gmail",
                                      style: TextStyle(
                                        fontFamily: "Playfair",
                                        color: Colors.black87,
                                        fontSize: 20,
                                        fontStyle: FontStyle.normal,
                                      ),

                                    )),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                    width: double.infinity,
                                    child: Text(
                                      "Usernname",
                                      style: TextStyle(
                                        fontFamily: "Playfair",
                                        color: Colors.grey,
                                        fontSize: 20,
                                        fontStyle: FontStyle.normal,
                                      ),

                                    )),
                                Container(
                                    width: double.infinity,
                                    child: Text(
                                      "pavan sms123"
                                      ,

                                      style: TextStyle(
                                        fontFamily: "Playfair",
                                        color: Colors.black87,
                                        fontSize: 20,
                                        fontStyle: FontStyle.normal,
                                      ),

                                    )),SizedBox(
                                  height: 20,
                                ),

                                Container(
                                    width: double.infinity,
                                    child: Text(
                                      "Email",
                                      style: TextStyle(
                                        fontFamily: "Playfair",
                                        color: Colors.grey,
                                        fontSize: 20,
                                        fontStyle: FontStyle.normal,
                                      ),

                                    )),
                                Container(
                                    width: double.infinity,
                                    child: Text(
                                      "pavansms750@gmail.com"                                 ,
                                      style: TextStyle(
                                        fontFamily: "Playfair",
                                        color: Colors.black87,
                                        fontSize: 20,
                                        fontStyle: FontStyle.normal,
                                      ),

                                    )),

                                SizedBox(
                                  height: 20,
                                ),

                                SizedBox(
                                  height: 10,
                                ),

                              ],
                              )),
                          Column(
                            children: <Widget>[

                              Divider(
                                indent: 8,
                                endIndent: 8,
                                color: Colors.grey.shade400,
                              ),
                              SizedBox(
                                height: 10,
                              ),

                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Delete", style: TextStyle(
                                  fontFamily: "OpenSans",
                                  fontSize: 20,

                                  color: Colors.black87,
                                ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),

                            ],
                          )
                        ],
                      )),
                )



              ],
              ),
            ),

          ],
        )

    );



  }
}
