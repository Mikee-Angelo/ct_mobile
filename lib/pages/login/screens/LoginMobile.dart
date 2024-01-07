import 'package:flustars/flustars.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:scanner/pages/login/bloc/LoginBloc.dart';

class LoginMobile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginMobileState();
  }
}

class LoginMobileState extends State<LoginMobile> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    double screenHeight = ScreenUtil.getScreenH(context);
    double screenWidth = ScreenUtil.getScreenW(context);

    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: ScreenUtil.getInstance().getWidth(30),
          ),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: double.infinity,
                      child: Image.asset('assets/img/logo.png'),
                    ),
                    Text(
                      'Contact Tracing App',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: ScreenUtil.getInstance().getSp(23),
                      ),
                    ),
                    SizedBox(
                      height: ScreenUtil.getInstance().getHeight(45),
                    ),
                    StreamBuilder(
                      stream: login.phoneStream,
                      builder: (context, snapshot) {
                        return TextFormField(
                          onChanged: (value) => login.phone.sink.add(value),
                          maxLength: 11,
                          cursorColor: Theme.of(context).primaryColor,
                          decoration: InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            labelText: 'Phone Number',
                            // errorText: snapshot.error,
                            counterText: "",
                          ),
                          keyboardType: TextInputType.phone,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly
                          ], // Only numbers can be entered
                        );
                      },
                    ),
                    SizedBox(
                      height: ScreenUtil.getInstance().getHeight(10),
                    ),
                    StreamBuilder(
                      stream: login.passwordStream,
                      builder: (context, snapshot) {
                        return TextFormField(
                          onChanged: (value) => login.password.sink.add(value),
                          cursorColor: Theme.of(context).primaryColor,
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
                      height: ScreenUtil.getInstance().getHeight(35),
                    ),
                    StreamBuilder(
                        stream: login.validSubmit,
                        builder: (context, snapshot) {
                          return MaterialButton(
                            onPressed: () => snapshot.data == true
                                ? login.submit(context: context)
                                : null,
                            minWidth: double.infinity,
                            color: Theme.of(context).primaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            height: ScreenUtil.getInstance().getHeight(43),
                            elevation: 0.0,
                            child: Text(
                              'Login',
                              style: TextStyle(
                                fontSize: ScreenUtil.getInstance().getSp(15),
                                color: Colors.white,
                              ),
                            ),
                          );
                        }),
                    SizedBox(
                      height: ScreenUtil.getInstance().getHeight(10),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.pushNamed(context, '/register'),
                      child: Text(
                        'Create Account',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                        ),
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
