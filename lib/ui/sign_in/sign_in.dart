import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meal_monkey/config/ps_size.dart';
import 'package:meal_monkey/const/route_paths.dart';
import 'package:meal_monkey/ui/components/custom_text_field.dart';
import 'package:meal_monkey/ui/components/primary_button.dart';
import 'package:meal_monkey/ui/components/social_media_button.dart';
import 'package:meal_monkey/ui/components/switch_login.dart';

class SignIn extends StatefulWidget {
  final PageController controller;

  const SignIn({Key key, this.controller}) : super(key: key);
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    TextStyle _style = Theme.of(context).textTheme.bodyText1;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: PsSize.screenWidth,
          padding: EdgeInsets.symmetric(horizontal: PsSize.defaultSizeWidth * 2),
          child: Column(
            children: [
              SizedBox(height: PsSize.defaultSizeHeight * 6,),
              Text('Sign In' , style: Theme.of(context).textTheme.headline4,),
              SizedBox(height: PsSize.defaultSizeHeight,),
              Text('Add your details to login' , style: _style,),
              SizedBox(height: PsSize.defaultSizeHeight*4,),
              CustomTextField(hint: 'Your Email' ,keyboard: TextInputType.emailAddress,),
              SizedBox(height: PsSize.defaultSizeHeight*2,),
              CustomTextField(hint: 'Password', keyboard: TextInputType.visiblePassword,),
              SizedBox(height: PsSize.defaultSizeHeight*2,),
              PrimaryButton(text: 'Login',onTap: login,),
              SizedBox(height: PsSize.defaultSizeHeight*2,),
              Text('Forgot your password?' , style: _style,),
              SizedBox(height: PsSize.defaultSizeHeight*4,),
              Text('or Login With' , style: _style,),
              SizedBox(height: PsSize.defaultSizeHeight*2,),
              SocialMediaButton(facebook: true,),
              SizedBox(height: PsSize.defaultSizeHeight*2,),
              SocialMediaButton(facebook: false,),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SwitchLogin(signUp: true , onTap:goToSignUp,),
    );
  }

  void goToSignUp() {
    //controller_minus1To0.reverse(from: 0.0);
    widget.controller.animateToPage(
      2,
      duration: Duration(milliseconds: 800),
      curve: Curves.bounceOut,
    );
  }
  void login(){
    Navigator.pushReplacementNamed(context, RoutesPaths.home);
  }
}


