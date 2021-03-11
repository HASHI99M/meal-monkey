import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meal_monkey/config/ps_size.dart';
import 'package:meal_monkey/ui/components/custom_text_field.dart';
import 'package:meal_monkey/ui/components/primary_button.dart';
import 'package:meal_monkey/ui/components/switch_login.dart';

class SignUp extends StatefulWidget {
  final PageController controller;

  const SignUp({Key key, this.controller}) : super(key: key);
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
              Text('Sign Up' , style: Theme.of(context).textTheme.headline4,),
              SizedBox(height: PsSize.defaultSizeHeight,),
              Text('Add your details to sign up' , style: _style,),
              SizedBox(height: PsSize.defaultSizeHeight*4,),
              CustomTextField(hint: 'Name'),
              SizedBox(height: PsSize.defaultSizeHeight*2,),
              CustomTextField(hint: 'Email' , keyboard: TextInputType.emailAddress,),
              SizedBox(height: PsSize.defaultSizeHeight*2,),
              CustomTextField(hint: 'Mobile No' ,  keyboard: TextInputType.phone,),
              SizedBox(height: PsSize.defaultSizeHeight*2,),
              CustomTextField(hint: 'Address', keyboard: TextInputType.streetAddress,),
              SizedBox(height: PsSize.defaultSizeHeight*2,),
              CustomTextField(hint: 'Password' , keyboard: TextInputType.visiblePassword,),
              SizedBox(height: PsSize.defaultSizeHeight*2,),
              CustomTextField(hint: 'Confirm Password', keyboard: TextInputType.visiblePassword,),
              SizedBox(height: PsSize.defaultSizeHeight*3,),
              PrimaryButton(text: 'Login',),


            ],
          ),
        ),
      ),
      bottomNavigationBar: SwitchLogin(onTap: ()=>goToSignIn(),),
    );
  }

  void goToSignIn() {
    //controller_0To1.forward(from: 0.0);
    widget.controller.animateToPage(
      0,
      duration: Duration(milliseconds: 800),
      curve: Curves.bounceOut,
    );
  }
}
