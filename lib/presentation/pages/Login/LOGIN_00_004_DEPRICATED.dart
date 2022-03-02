// import 'package:flutter_redux/flutter_redux.dart';
// import 'package:simple_pay_flutter/mgr/fsm/login_fsm.dart';
// import 'package:simple_pay_flutter/mgr/redux/action.dart';
// import 'package:simple_pay_flutter/presentation/template/base/template.dart';
//
// class LOGIN_00_004 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return StoreConnector<AppState, AppState>(
//       converter: (store) => store.state,
//       onDispose: (store) => loginFsm.applyEvent(OnLogin003Event()),
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
//                 SizedBox(height: 113.h),
//                 SizedText(
//                   text: enterNewPasswordForLogin,
//                   textStyle:
//                       ThemeTextRegular.xl.apply(color: ThemeColors.coolgray500),
//                 ),
//                 SizedBox(height: 86.h),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     InputFieldYolletAppLabel(
//                       label: newPassword,
//                       labelSize: LabelSize.M,
//                       isOrange: true,
//                     ),
//                     InputFieldYolletApp(
//                       placeholder: enterNewPassword,
//                       controller: state.loginState.loginPwdContr,
//                       enableBorder: true,
//                       isOrange: true,
//                       obscureText: true,
//                       maxlines: 1,
//                     ),
//                     SizedBox(height: 48.h),
//                     InputFieldYolletAppLabel(
//                       label: repeatPassword,
//                       labelSize: LabelSize.M,
//                       isOrange: true,
//                     ),
//                     InputFieldYolletApp(
//                       placeholder: repeatNewPassword,
//                       controller: state.loginState.loginPwdRepeatContr,
//                       enableBorder: true,
//                       isOrange: true,
//                       obscureText: true,
//                       maxlines: 1,
//                     ),
//                   ],
//                 ),
//                 if (state.loginState.loginMsg.isNotEmpty)
//                   Column(
//                     children: [
//                       SizedBox(height: 46.h),
//                       AlertOrigin(
//                           text: state.loginState.loginMsg,
//                           isError: state.loginState.loginIsMsgError),
//                     ],
//                   ),
//                 SizedBox(height: 86.h),
//                 PrimaryButton(
//                   buttonText: reset,
//                   buttonSize: ButtonSize.L2,
//                   onPressed: () => appStore.dispatch(GetLoginResetPwdAction),
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
// const enterNewPasswordForLogin = 'Введите новый пароль для входа';
// const newPassword = 'Новый пароль';
// const enterNewPassword = 'Введите новый пароль';
// const repeatPassword = 'Повторите пароль';
// const repeatNewPassword = 'Повторите новый пароль';
// const passwordReset = 'Пароль сброшен';
// const passwordMismatch = 'Пароли не совпадают';
// const loginAgain = 'Войти заново';
