import 'package:flustars/flustars.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:scanner/core/themes/branding.dart';
import 'package:scanner/pages/register/bloc/RegisterBloc.dart';

class RegisterMobile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return RegisterMobileState();
  }
}

class RegisterMobileState extends State<RegisterMobile> {
  bool checkBoxValue = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: ScreenUtil.getInstance().getWidth(30),
          ),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Create Account',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: ScreenUtil.getInstance().getSp(25),
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    SizedBox(
                      height: ScreenUtil.getInstance().getHeight(20),
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce non finibus metus.',
                      style: TextStyle(
                        fontSize: ScreenUtil.getInstance().getSp(12),
                      ),
                    ),
                    SizedBox(
                      height: ScreenUtil.getInstance().getHeight(35),
                    ),
                    StreamBuilder(
                      stream: register.firstNameStream,
                      builder: (context, snapshot) {
                        return TextFormField(
                          onChanged: (value) =>
                              register.firstName.sink.add(value),
                          decoration: InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            labelText: 'First Name',
                            // errorText: snapshot.error,
                          ),
                        );
                      },
                    ),
                    SizedBox(
                      height: ScreenUtil.getInstance().getHeight(10),
                    ),
                    StreamBuilder(
                      stream: register.lastNameStream,
                      builder: (context, snapshot) {
                        return TextFormField(
                          onChanged: (value) =>
                              register.lastName.sink.add(value),
                          decoration: InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            labelText: 'Last Name',
                            // errorText: snapshot.error,
                          ),
                        );
                      },
                    ),
                    SizedBox(
                      height: ScreenUtil.getInstance().getHeight(10),
                    ),
                    StreamBuilder(
                      stream: register.addressStream,
                      builder: (context, snapshot) {
                        return TextFormField(
                          onChanged: (value) =>
                              register.address.sink.add(value),
                          decoration: InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            labelText: 'Address',
                            // errorText: snapshot.error,
                          ),
                        );
                      },
                    ),
                    SizedBox(
                      height: ScreenUtil.getInstance().getHeight(10),
                    ),
                    StreamBuilder(
                      stream: register.phoneStream,
                      builder: (context, snapshot) {
                        return TextFormField(
                          onChanged: (value) => register.phone.sink.add(value),
                          decoration: InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            labelText: 'Contact Number',
                            // errorText: snapshot.error,
                          ),
                        );
                      },
                    ),
                    SizedBox(
                      height: ScreenUtil.getInstance().getHeight(10),
                    ),
                    StreamBuilder(
                      stream: register.passwordStream,
                      builder: (context, snapshot) {
                        return TextFormField(
                          onChanged: (value) =>
                              register.password.sink.add(value),
                          obscureText: true,
                          decoration: InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            labelText: 'Password',
                            // errorText: snapshot.error,
                          ),
                        );
                      },
                    ),
                    SizedBox(
                      height: ScreenUtil.getInstance().getHeight(10),
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: checkBoxValue,
                          onChanged: (value) => {
                            setState(() {
                              // checkBoxValue = value;
                              checkBoxValue = checkBoxValue ? false : true;
                            })
                          },
                          activeColor: Theme.of(context).primaryColor,
                        ),
                        Flexible(
                          child: RichText(
                            text: TextSpan(
                              text: 'I agree to the ',
                              style: TextStyle(
                                color: Branding.textColor,
                                fontSize: ScreenUtil.getInstance().getSp(11),
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Terms and Conditions',
                                  style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontSize:
                                        ScreenUtil.getInstance().getSp(11),
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      // navigate to desired screen
                                    },
                                ),
                                TextSpan(
                                  text: ' and ',
                                  style: TextStyle(
                                    fontSize:
                                        ScreenUtil.getInstance().getSp(11),
                                  ),
                                ),
                                TextSpan(
                                  text: 'Privacy Policy',
                                  style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontSize:
                                        ScreenUtil.getInstance().getSp(11),
                                  ),
                                ),
                                TextSpan(
                                  text: ' of this app',
                                  style: TextStyle(
                                    fontSize:
                                        ScreenUtil.getInstance().getSp(11),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: ScreenUtil.getInstance().getHeight(30),
                    ),
                    StreamBuilder(
                      stream: register.validSubmit,
                      builder: (context, snapshot) {
                        return MaterialButton(
                          onPressed: () {
                            print('Checkbox: $checkBoxValue');
                            print('Snapshot: ${snapshot.data}');
                            // checkBoxValue == false ? null : Navigator.pushNamed(context, '/'),
                            if (checkBoxValue == false) {
                              return null;
                            }

                            if (snapshot.data == null) {
                              return null;
                            } else {
                              return register.submit(context: context);
                            }
                          },
                          minWidth: double.infinity,
                          color: Theme.of(context).primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          height: ScreenUtil.getInstance().getHeight(43),
                          elevation: 0.0,
                          child: Text(
                            'Register',
                            style: TextStyle(
                              fontSize: ScreenUtil.getInstance().getSp(15),
                              color: Colors.white,
                            ),
                          ),
                        );
                      },
                    ),
                    SizedBox(
                      height: ScreenUtil.getInstance().getHeight(20),
                    ),
                    Container(
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () => Navigator.pushNamed(context, '/'),
                            child: Text(
                              'Already Registered ?',
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: ScreenUtil.getInstance().getSp(12),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  bottom: ScreenUtil.getInstance().getHeight(3),
                ),
                child: Column(
                  children: [
                    Text(
                      'Powered by:',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: ScreenUtil.getInstance().getSp(9),
                      ),
                    ),
                    SizedBox(
                      height: ScreenUtil.getInstance().getHeight(3),
                    ),
                    Text(
                      'Rarcraft Enterprise',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: ScreenUtil.getInstance().getSp(9),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
