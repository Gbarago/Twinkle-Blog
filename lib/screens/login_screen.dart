import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';
import 'package:twinkle_assesment_app/widgets/inputs.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool rememberMe = false;
  bool hidePin = false;

  void togglePasswordView() {
    setState(() {
      hidePin = !hidePin;
    }); // toggles thw pasword visibility
  }

  void toggleRemembeMe() {
    setState(() {
      rememberMe = !rememberMe;
    });
  }

  void navToHome() {
    Navigator.pushNamed(context, 'homePage');
  } // Navigation to home page

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: width * 0.05),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: height * 0.09,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      'Log in',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Color(0xff1A1A1A),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.08,
                ),
                Input(
                  width: width * 0.9,
                  height: height * 0.074,
                  suffixIcon: const Icon(
                    Icons.email_outlined,
                    color: Color(0xFFBBBDC0),
                  ),
                  hintText: 'Email',
                  fillColor: const Color(0xffF2F2F2),
                  validator: null,
                  onSaved: null,
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Input(
                  width: width * 0.9,
                  height: height * 0.074,
                  suffixIcon: InkWell(
                    onTap: togglePasswordView,
                    child: Icon(
                      hidePin ? Icons.visibility_off : Icons.visibility,
                      color: const Color(0xFFBBBDC0),
                    ),
                  ),
                  hintText: 'Password',
                  fillColor: const Color(0xffF2F2F2),
                  validator: null,
                  onSaved: null,
                ),
                SizedBox(
                  height: height * 0.018,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                      focusColor: const Color(0xffD0D5DD),
                      value: rememberMe,
                      onChanged: null,
                      checkColor: const Color(0xff2281E3),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 0)),
                      child: const Text(
                        ' Remember me ',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color(0xff344054),
                        ),
                      ),
                      onPressed: () {},
                    ),
                    SizedBox(
                      width: width * 0.2,
                    ),
                    TextButton(
                      child: const Text(
                        'Forgot password',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color(0xff2281E3),
                        ),
                      ),
                      onPressed: () {},
                    )
                  ],
                ),
                SizedBox(
                  height: height * 0.018,
                ),
                Container(
                  width: width * 0.9,
                  height: height * 0.07,
                  decoration: BoxDecoration(
                    color: const Color(0xff2281E3),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: MaterialButton(
                    onPressed: navToHome,
                    child: const Text(
                      'Log in',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xffFFFFFF),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                TextButton(
                  child: const Text(
                    'Or log in with',
                    style: TextStyle(
                      fontSize: 13,
                      color: Color(0xff8E8CA3),
                    ),
                  ),
                  onPressed: () {
                    print('login with');
                  },
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 22,
                      height: 22,
                      child:
                          Image(image: AssetImage('assets/images/apple.png')),
                    ),
                    SizedBox(
                      width: width * 0.08,
                    ),
                    const SizedBox(
                      width: 22,
                      height: 22,
                      child: Image(
                          fit: BoxFit.contain,
                          image: AssetImage('assets/images/google.png')),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
