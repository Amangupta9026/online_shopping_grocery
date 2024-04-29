import 'package:online_shopping_grocery/router/routes_names.dart';
import 'package:online_shopping_grocery/widget.dart/custom_textform_field.dart';
import 'package:online_shopping_grocery/widget.dart/header_appbar.dart';

import '../utils.dart/file_collection.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteBackgroundColor,
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: HeaderWidget(
            text1: 'Login',
            leading1: Icons.arrow_back,
          )),
      body: SafeArea(
        child: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const SizedBox(height: 15),
                Center(
                  child: Image.asset(
                    'assets/images/Finland.png',
                    width: 200,
                  ),
                ),
                const SizedBox(height: 20),
                CustomTextFormField(
                    // controller: refWatch.value?.emailController,

                    keyboardType: TextInputType.text,
                    hintText: 'Email',
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your email id';
                      }
                      return null;
                    }),
                const SizedBox(height: 15),
                CustomTextFormField(
                    // controller: refWatch.value?.passwordController,

                    keyboardType: TextInputType.text,
                    hintText: 'Password must contains 6 letters',
                    suffixIcon: const Icon(Icons.visibility_off),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your password';
                      }
                      return null;
                    }),
                const SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: primaryRed),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                  width: double.infinity,
                  child: const Text(
                    'Login',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: whiteBackgroundColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(height: 20),
                Center(
                    child: RichText(
                  softWrap: true,
                  text: TextSpan(
                    text: 'Having trouble? ',
                    style: const TextStyle(
                        color: greyColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Reset your password',
                          style: TextStyle(
                              color: primaryRed.withOpacity(0.7),
                              fontSize: 16,
                              fontWeight: FontWeight.w400)),
                    ],
                  ),
                )),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 1,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      'or login with',
                      style: TextStyle(
                          color: greyColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                        child: Container(
                      height: 1,
                      color: Colors.grey,
                    ))
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: primaryRed),
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(MdiIcons.google, color: whiteBackgroundColor),
                      const SizedBox(width: 10),
                      const Text('Google',
                          style: TextStyle(
                              color: whiteBackgroundColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w400))
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Center(
                    child: RichText(
                  textAlign: TextAlign.center,
                  softWrap: true,
                  text: TextSpan(
                    text: 'By creating an account, you agree to our ',
                    style: TextStyle(
                        color: textColor.withOpacity(0.7),
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Privacy Policy',
                          style: TextStyle(
                              color: textColor.withOpacity(0.7),
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.underline)),
                    ],
                  ),
                )),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    context.pushNamed(RouteNames.signup);
                  },
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    decoration: BoxDecoration(
                      border: Border.all(color: primaryRed),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: RichText(
                      textAlign: TextAlign.center,
                      softWrap: true,
                      text: TextSpan(
                        text: 'Don\'t have an account? ',
                        style: TextStyle(
                            color: textColor.withOpacity(0.7),
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'REGISTER',
                              style: TextStyle(
                                  color: primaryRed.withOpacity(0.7),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400)),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 60)
              ],
            )),
      ),
    );
  }
}
