import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool isPasswordObs = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Title",
        theme: ThemeData(
          primarySwatch: Colors.grey,
        ),
        home: Scaffold(
          // appBar: AppBar(
          //   // title: Text("Title"),
          //   backgroundColor: Colors.redAccent,
          //
          // ),
          resizeToAvoidBottomInset: false,

          body: SingleChildScrollView(

            child: Container(
              width: double.infinity,
              child: Column(children: [
                Container(
                  color: Colors.white,
                  width: double.infinity,
                  child: Image.asset(
                    "images/b2.jpg",
                    alignment: Alignment.center,
                  ),
                  height: 260,
                ),
                SizedBox(
                  height: 10,
                ),
                const Text(
                  "Signing Up",
                  style: TextStyle(fontSize: 30, fontFamily: "Italiana"),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      label: Text("Email"),
                      hintText: "Enter your email",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email)),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      label: Text("Username"),
                      hintText: "Enter your username",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.person)),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    label: Text("Password"),
                    hintText: "Enter your password",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.password),
                    suffixIcon: IconButton(
                        onPressed: () {
                          isPasswordObs = !isPasswordObs;
                          setState(() {});
                        },
                        icon: isPasswordObs
                            ? Icon(Icons.visibility)
                            : Icon(Icons.visibility_off)),
                  ),
                  obscureText: isPasswordObs,
                  onChanged: (text) {
                    print(text);
                  },
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.go,
                  validator: (pass) {
                    if (pass?.isEmpty == true) {
                      return "Password can't be empty";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                    height: 50, //height of button
                    width: 167,
                    child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Sign Up",
                          style: TextStyle(color: Colors.white, fontSize: 29),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.redAccent),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          )),
                        ))),
                SizedBox(
                  height: 22,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.facebook),
                      Text("Continue with Facebook")
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "images/google.png",
                      width: 25,
                    ),
                    Text("Continue with Google")
                  ],
                )
              ]),
            ),
          ),
        ));
  }
}
//
//
// class HomeScreen extends StatelessWidget {
//   bool isPasswordObs = true;
//   HomeScreen({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         title: "Title",
//         theme: ThemeData(
//           primarySwatch: Colors.grey,
//         ),
//         home: Scaffold(
//             appBar: AppBar(
//               // title: Text("Title"),
//               backgroundColor: Colors.redAccent,
//
//             ),
//             body: Container(
//              width:double.infinity,
//               height: double.infinity,
//               child:
//               Column(
//                 children: [
//                   Container(
//                     width:double.infinity,
//                     child:Image.asset("asset/image.png",alignment: Alignment.bottomRight,),
//                     color: Colors.redAccent,
//                   ),
//                   Text("Signing Up",style:TextStyle(fontSize: 33) ,),
//                   SizedBox(height: 10,),
//                   TextFormField(
//                     decoration: InputDecoration(
//                         label: Text("Email"),
//                         hintText: "Enter your email",
//                         border: OutlineInputBorder(),
//                         prefixIcon: Icon(Icons.email)
//                     ),
//
//                   ),
//                   SizedBox(height: 10,),
//                   TextFormField(
//                     decoration: InputDecoration(
//                         label: Text("Email"),
//                         hintText: "Enter your email",
//                         border: OutlineInputBorder(),
//                         prefixIcon: Icon(Icons.email)
//                     ),
//
//                   ),
//               TextFormField(
//                 decoration: InputDecoration(
//                   label: Text("Password"),
//                   hintText: "Enter your password",
//                   border: OutlineInputBorder(),
//                   prefixIcon: Icon(Icons.password),
//                   suffixIcon: IconButton(
//                       onPressed: (){
//                         isPasswordObs = !isPasswordObs;
//                         setState(() {
//
//                         });
//                       },
//                       icon: isPasswordObs ? Icon(Icons.visibility) : Icon(Icons.visibility_off)),
//                 ),
//                 obscureText: isPasswordObs,
//                 onChanged: (text){
//                   print(text);
//                 },
//                 keyboardType: TextInputType.visiblePassword,
//                 textInputAction: TextInputAction.go,
//                 validator: (pass){
//                   if(pass?.isEmpty == true){
//                     return "Password can't be empty";
//                   }
//                   return null;
//                 },
//               ),
//
//   ]
//
//             ),
//
//             )
//
//         ));
//   }
//   }
