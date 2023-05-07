import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Login  extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    home: Login2(),
    );
  }
}

class Login2 extends StatelessWidget {
var emailController=TextEditingController();
var passController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
body: Padding(
  padding: const EdgeInsets.all(20.0),
  child:   SingleChildScrollView(
    child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Center(child: Text('Login',style:GoogleFonts.alike(fontSize: 30))),
SizedBox(
    height: 20,
),
        TextFormField(
          controller: emailController,
          keyboardType:TextInputType.emailAddress ,
          decoration: InputDecoration(
            labelText: 'EmailAddress',
            border:OutlineInputBorder(
            ),
            prefixIcon: Icon(Icons.email),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        TextFormField(
          controller:passController,
          keyboardType:TextInputType.visiblePassword,
          obscureText: true,

          decoration: InputDecoration(

            labelText: 'Passward',
            border:OutlineInputBorder(
            ),
            prefixIcon: Icon(Icons.lock),
            suffixIcon: Icon(Icons.remove_red_eye)
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          width: double.infinity,
          color: Colors.blue,
          child:
        MaterialButton(onPressed: (){},
          child: Text('Login',style:TextStyle(fontSize: 18),),),),
SizedBox(
    height: 10,
),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Dont have an account ?'),
            TextButton(onPressed: (){},child:Text('Register now')),
          ],
        )
      ],

    ),
  ),
),
    );
  }
}
