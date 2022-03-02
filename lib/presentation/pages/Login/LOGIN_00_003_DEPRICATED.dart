// import 'package:flutter/services.dart';
// import 'package:flutter_redux/flutter_redux.dart';
// import 'package:simple_pay_flutter/mgr/fsm/login_fsm.dart';
// import 'package:simple_pay_flutter/mgr/redux/action.dart';
// import 'package:simple_pay_flutter/presentation/template/base/template.dart';
//
// class LOGIN_00_003 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return StoreConnector<AppState, AppState>(
//       converter: (store) => store.state,
//       onDispose: (store) => loginFsm.applyEvent(OnLogin002Event()),
//       builder: (context, state) => Scaffold(
//         body: Padding(
//           padding: EdgeInsets.only(top: 155.h, left: 72.w, right: 72.w),
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 SizedText(
//                   text: simplePayEn,
//                   textStyle:
//                       ThemeTextSemibold.xl7.apply(color: ThemeColors.orange500),
//                 ),
//                 SizedBox(height: 140.h),
//                 SizedText(
//                   text: enterCode,
//                   textStyle:
//                       ThemeTextRegular.xl.apply(color: ThemeColors.coolgray500),
//                 ),
//                 SizedBox(height: 86.h),
//                 InputFieldYolletApp(
//                   placeholder: '******',
//                   controller: state.loginState.loginSmsCodeContr,
//                   enableBorder: true,
//                   isOrange: true,
//                   obscureText: true,
//                   maxlines: 1,
//                   inputFormatters: [
//                     LengthLimitingTextInputFormatter(6),
//                   ],
//                 ),
//                 if (state.loginState.loginMsg.isNotEmpty)
//                   Column(
//                     children: [
//                       SizedBox(height: 86.h),
//                       AlertOrigin(text: state.loginState.loginMsg),
//                     ],
//                   ),
//                 SizedBox(height: 86.h),
//                 PrimaryButton(
//                   buttonText: reset,
//                   buttonSize: ButtonSize.L2,
//                   onPressed: () => appStore.dispatch(GetLoginCheckSmsAction),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// const enterCode = 'Введите код из SMS';
// const reset = 'Сбросить';
// const wrongSmsCode = 'Неверный код';
