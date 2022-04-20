import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plan_vite/widgets/custom_text_field.dart';
import '../../constants.dart';
import 'log_in_controller.dart';

class LoginScreen extends StatelessWidget {
  //final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  LoginController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: kBackGround,
      body: ListView(
        children: [
          Align(
              alignment: Alignment(1,0),

              child: Image(image: AssetImage('images/log_in_flower.png'),)),
          Column(
            children: [
              Padding(
                padding:  EdgeInsets.only(left: width*0.19,right: width*0.15,top: height*0.09,bottom: height*0.02),
                child: Row(
                  children: [
                    Text(
                      'Welcome Back',
                      style: TextStyle(
                        fontSize: 35,
                          color: kWritings,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(left: width*0.15,right: width*0.01,top: 0,bottom: 0),
                child: Row(
                  children: [
                    Text(
                      'please sign in to your account',
                      style: TextStyle(
                          fontSize: 20,
                          color: kWritings,),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding:  EdgeInsets.only(left: width*0.1,right: width*0.1,top: height*0.1,bottom: 0),
            child: CustomTextField(
              hintText: 'Email',
              icon: Icons.email,
              textInputType: TextInputType.emailAddress,

            ),
          ),
          Padding(
            padding:  EdgeInsets.only(left: width*0.1,right: width*0.1,top: height*0.03,bottom: 0),
            child: CustomTextField(
              hintText: 'Password',
              icon: Icons.lock,


            ),
          ),
          Padding(

            padding:  EdgeInsets.only(left: width*0.34,right: width*0.34,top: height*0.04,bottom: 0),
            child: Container(

              decoration: BoxDecoration(
                color: kTextFieldBorder,
                borderRadius: BorderRadius.circular(20.0),

              ),
              child: TextButton(onPressed: (){}, child: Text('Login',style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),)

              ),
            ),
          ),
          Column(
            children: [
              Padding(
                padding:  EdgeInsets.only(left: width*0.25,right: width*0.01,top: height*0.02,bottom: 0),
                child: Row(
                    children: [Text(
                      'Don\'t have an account?',
                      style: TextStyle(
                        color: kGrey,
                        fontSize: 18,
                      ),

                    ),
                    ],
                ),
              ),
              GestureDetector(
                child: Padding(
                  padding:  EdgeInsets.only(left: width*0.42,right: width*0.01,top: height*0.003,bottom: 0),
                  child: Row(
                    children: [Text(
                      'Sign up',
                      style: TextStyle(
                        color: kTextFieldBorder,
                        fontSize: 18,
                      ),

                    ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(left: width*0.33,right: width*0.02,top: height*0.04,bottom: 0),
                child: Row(
                  children: [
                    TextButton(onPressed: (){}, child: Text('English',
                    style: TextStyle(
                      color: kTextFieldBorder,
                      fontSize: 18,
                    ),
                    )),
                    TextButton(onPressed: (){}, child: Text('العربية',
                      style: TextStyle(
                        color: kGrey,
                        fontSize: 18,
                      ),
                    ))
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
