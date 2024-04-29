import 'package:online_shopping_grocery/router/routes_names.dart';
import 'package:online_shopping_grocery/utils.dart/file_collection.dart';
import 'package:online_shopping_grocery/widget.dart/custom_textform_field.dart';
import 'package:online_shopping_grocery/widget.dart/header_appbar.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteBackgroundColor,
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: HeaderWidget(
            text1: 'Register',
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
                    hintText: 'First Name',
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your first name';
                      }
                      return null;
                    }),
                const SizedBox(height: 15),
                CustomTextFormField(
                    // controller: refWatch.value?.passwordController,

                    keyboardType: TextInputType.text,
                    hintText: 'Last Name',
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your last name';
                      }
                      return null;
                    }),
                const SizedBox(height: 15),
                CustomTextFormField(
                    // controller: refWatch.value?.passwordController,

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
                    suffixIcon: const Icon(Icons.visibility),
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
                    'Register',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: whiteBackgroundColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(height: 20),
                Center(
                    child: InkWell(
                  onTap: () {
                    context.pushNamed(RouteNames.logInScreen);
                  },
                  child: RichText(
                    softWrap: true,
                    text: TextSpan(
                      text: 'Have an account? ',
                      style: const TextStyle(
                          color: greyColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Login',
                            style: TextStyle(
                                color: primaryRed.withOpacity(0.7),
                                fontSize: 16,
                                fontWeight: FontWeight.w400)),
                      ],
                    ),
                  ),
                )),
                const SizedBox(height: 60)
              ],
            )),
      ),
    );
  }
}
