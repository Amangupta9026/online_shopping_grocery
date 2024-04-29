import 'package:online_shopping_grocery/auth/login.dart';
import 'package:online_shopping_grocery/auth/signup.dart';
import 'package:online_shopping_grocery/router/routes_names.dart';
import 'package:online_shopping_grocery/screen/auth/choose_shipping_country.dart';
import 'package:online_shopping_grocery/screen/drawer/cart.dart';
import 'package:online_shopping_grocery/screen/drawer/contact_us.dart';
import 'package:online_shopping_grocery/screen/drawer/new_arrivals.dart';
import 'package:online_shopping_grocery/screen/drawer/notification.dart';
import 'package:online_shopping_grocery/screen/drawer/wishlist.dart';
import 'package:online_shopping_grocery/screen/home/collection_details.dart';
import 'package:online_shopping_grocery/screen/home/featured_collection_details.dart';
import 'package:online_shopping_grocery/screen/home/home.dart';
import 'package:online_shopping_grocery/utils.dart/file_collection.dart';

bool isUserLogin = false;
// Prefs.getBool(PrefNames.isLogin) ?? false;

CustomTransitionPage buildPageWithDefaultTransition<T>({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
  Offset? begin,
}) {
  return CustomTransitionPage<T>(
    fullscreenDialog: true,
    transitionDuration: const Duration(seconds: 1),
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(
          alwaysIncludeSemantics: true, opacity: animation, child: child);

      // SlideTransition(
      //   position: Tween<Offset>(
      //     begin: const Offset(0, 1.0),
      //     end: Offset.fromDirection(0, 1.0),
      //   ).animate(animation),
      //   child: child,
      // );
    },
  );
}

String getInitialRoute() {
  if (isUserLogin) {
    return RouteNames.home;
  } else {
    return RouteNames.home;
  }
}

final appRoute = GoRouter(initialLocation: getInitialRoute(), routes: [
  GoRoute(
      path: RouteNames.logInScreen,
      name: RouteNames.logInScreen,
      builder: (context, state) {
        return const Login();
      }),

  GoRoute(
      path: RouteNames.signup,
      name: RouteNames.signup,
      builder: (context, state) {
        return const Signup();
      }),

  GoRoute(
      path: RouteNames.chooseShoppingCountry,
      name: RouteNames.chooseShoppingCountry,
      builder: (context, state) {
        return const ChooseShippingCountry();
      }),

  GoRoute(
      path: RouteNames.home,
      name: RouteNames.home,
      builder: (context, state) {
        return Home();
      }),

  GoRoute(
      path: RouteNames.featuredCollectionDetails,
      name: RouteNames.featuredCollectionDetails,
      builder: (context, state) {
        return const FeaturedCollectionDetails();
      }),

  GoRoute(
      path: RouteNames.collectionDetails,
      name: RouteNames.collectionDetails,
      builder: (context, state) {
        return const CollectionDetails();
      }),

  GoRoute(
      path: RouteNames.newArrivals,
      name: RouteNames.newArrivals,
      builder: (context, state) {
        return const NewArrivals();
      }),

  GoRoute(
      path: RouteNames.cart,
      name: RouteNames.cart,
      builder: (context, state) {
        return const Cart();
      }),

    GoRoute(
      path: RouteNames.wishlist,
      name: RouteNames.wishlist,
      builder: (context, state) {
        return const Wishlist();
      }),

    GoRoute(
      path: RouteNames.notification,
      name: RouteNames.notification,
      builder: (context, state) {
        return const NotificationScreen();
      }),

    GoRoute(
      path: RouteNames.contactUs,
      name: RouteNames.contactUs,
      builder: (context, state) {
        return const ContactUs();
      }),

      

  // GoRoute(
  //   path: '/allPermissionList/:fromSignup',
  //   name: RouteNames.allPermissionList,
  //   builder: (context, state) {
  //     return PermList(
  //       fromSignup: state.pathParameters['fromSignup'] ?? '',
  //     );
  //   },
  // ),

  // GoRoute(
  //     path:
  //         '/otpScreen/:fullName/:phoneNumber/:emailID/:password/:otp/:address',
  //     name: RouteNames.otpScreen,
  //     builder: (context, state) {
  //       return OtpVerificationScreen(
  //         fullName: state.pathParameters['fullName'] ?? '',
  //         phoneNumber: state.pathParameters['phoneNumber'] ?? '',
  //         emailId: state.pathParameters['emailID'] ?? '',
  //         password: state.pathParameters['password'] ?? '',
  //         otp: state.pathParameters['otp'],
  //         address: state.pathParameters['address'],
  //       );
  //     }),
  // GoRoute(
  //     path: RouteNames.logInScreen,
  //     name: RouteNames.logInScreen,
  //     builder: (context, state) {
  //       return const Login();
  //     }),

  // GoRoute(
  //     path: RouteNames.forgotPassword,
  //     name: RouteNames.forgotPassword,
  //     builder: (context, state) {
  //       return const ForgotPassword();
  //     }),

  // GoRoute(
  //     path: RouteNames.resetPassword,
  //     name: RouteNames.resetPassword,
  //     builder: (context, state) {
  //       return const ForgotOtpVerificationScreen();
  //     }),

  // GoRoute(
  //     path: RouteNames.changePassword,
  //     name: RouteNames.changePassword,
  //     builder: (context, state) {
  //       return const ChangePasswordScreen();
  //     }),

  // GoRoute(
  //     path: RouteNames.signup,
  //     name: RouteNames.signup,
  //     builder: (context, state) {
  //       return const RegistrationForm();
  //     }),

  // GoRoute(
  //     path: RouteNames.updatedPasswordSuccess,
  //     name: RouteNames.updatedPasswordSuccess,
  //     builder: (context, state) {
  //       return const PasswordUpdatedSuccessfullyScreen();
  //     }),

  // GoRoute(
  //     path:
  //         '/otpScreen/:fullName/:phoneNumber/:emailID/:password/:gender/:city',
  //     name: RouteNames.otpScreen,
  // builder: (context, state) {
  //   return OtpVerificationScreen(
  //       fullName: state.pathParameters['fullName'] ?? '',
  //       phoneNumber: state.pathParameters['phoneNumber'] ?? '',
  //       emailID: state.pathParameters['emailID'] ?? '',
  //       password: state.pathParameters['password'] ?? '',
  //       gender: state.pathParameters['gender'] ?? '',
  //       city: state.pathParameters['city'] ?? '');
  // }),

  // GoRoute(
  //     path:
  //         '/submitPersonalDetailsScreen/:fullName/:phoneNumber/:emailID/:password',
  //     name: RouteNames.submitPersonalDetailsScreen,
  //     builder: (context, state) {
  //       return SubmitPersonalDetailsScreen(
  //           fullName: state.pathParameters['fullName'] ?? '',
  //           phoneNumber: state.pathParameters['phoneNumber'] ?? '',
  //           emailID: state.pathParameters['emailID'] ?? '',
  //           password: state.pathParameters['password'] ?? '');
  //     }),

  // GoRoute(
  //     path: RouteNames.profileEdit,
  //     name: RouteNames.profileEdit,
  //     builder: (context, state) {
  //       return const EditProfile();
  //     }),

  // GoRoute(
  //     path: RouteNames.notification,
  //     name: RouteNames.notification,
  //     builder: (context, state) {
  //       return const AppNotification();
  //     }),

  // GoRoute(
  //     path: RouteNames.aboutApp,
  //     name: RouteNames.aboutApp,
  //     builder: (context, state) {
  //       return const AboutApp();
  //     }),
]);
