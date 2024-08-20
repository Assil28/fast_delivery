import 'package:fast_delivery/core/constant/routes.dart';
import 'package:fast_delivery/core/middleware/mymiddleware.dart';
import 'package:fast_delivery/view/address/add.dart';
import 'package:fast_delivery/view/address/addaddressdetails.dart';
import 'package:fast_delivery/view/address/view.dart';
import 'package:fast_delivery/view/screen/auth/forgetpassword/fogetpassword.dart';
import 'package:fast_delivery/view/screen/auth/forgetpassword/resetpassword.dart';
import 'package:fast_delivery/view/screen/auth/forgetpassword/success_resetpassword.dart';
import 'package:fast_delivery/view/screen/auth/forgetpassword/verifycode.dart';
 import 'package:fast_delivery/view/screen/auth/login.dart';
import 'package:fast_delivery/view/screen/homescreen.dart';
import 'package:fast_delivery/view/screen/language.dart';
import 'package:fast_delivery/view/screen/orders/archive.dart';
import 'package:fast_delivery/view/screen/orders/details.dart';
import 'package:fast_delivery/view/screen/orders/pending.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';


// medem nesta3mel fel getx donc  bch na3mel List
List<GetPage<dynamic>>? routes = [
  // l app par defaut tabda m Language nhot fiha l middleware l 3malto
  GetPage(
      name: "/", page: () => const Language(), middlewares: [MyMiddleWare()]),
  // GetPage(
  //   name: "/",
  //   page: () => const HomePage(),
  // ),

//Auth
  GetPage(name: AppRoutes.login, page: () => const Login()),
  GetPage(name: AppRoutes.forgetPassword, page: () => const ForgetPassword()),

  GetPage(name: AppRoutes.resetPassword, page: () => const ResetPassword()),
  GetPage(name: AppRoutes.verifyCode, page: () => const VerifyCode()),
  GetPage(
      name: AppRoutes.successResetPassword,
      page: () => const SuccessResetPassword()),



  // Home
  GetPage(name: AppRoutes.homePage, page: () => const HomeScreen()),




  //Adress client
  // GetPage(name: AppRoutes.addressview, page: () => const AddressView()),
  // GetPage(name: AppRoutes.addressadd, page: () => const AddressAdd()),
  // GetPage(
  //     name: AppRoutes.addressadddetails, page: () => const AddressAddDetails()),



  //Orders
  GetPage(name: AppRoutes.orderspending, page: () => const OrdersPending()),
  GetPage(name: AppRoutes.ordersdetails, page: () => const OrdersDetails()),
  GetPage(name: AppRoutes.ordersarchive, page: () => const OrdersArchiveView()),
  GetPage(name: AppRoutes.ordersdetails, page: () => const OrdersDetails()),


];










// nesta3mel l map k ne5dem 3adi mch bel getx
// Map<String, Widget Function(BuildContext)> routes = {
//   //Auth
//   AppRoutes.login: (context) => const Login(),
//   AppRoutes.signUp: (context) => const SignUp(),
//   AppRoutes.forgetPassword: (context) => const ForgetPassword(),
//   AppRoutes.verifyCode: (context) => const VerifyCode(),
//   AppRoutes.verifyCodeSignUp: (context) => const VerifyCodeSignUp(),
//   AppRoutes.resetPassword: (context) => const ResetPassword(),

//   AppRoutes.successSignUp: (context) => const SuccessSignUp(),
//   AppRoutes.successResetPassword: (context) => const SuccessResetPassword(),

//   //OnBoarding
//   AppRoutes.onBoarding: (context) => const OnBoarding(),
// };
