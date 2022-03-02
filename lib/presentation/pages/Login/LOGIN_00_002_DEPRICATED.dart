// import 'package:flutter_redux/flutter_redux.dart';
// import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
// import 'package:simple_pay_flutter/mgr/fsm/login_fsm.dart';
// import 'package:simple_pay_flutter/mgr/redux/action.dart';
// import 'package:simple_pay_flutter/presentation/template/base/template.dart';
//
// class LOGIN_00_002 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return StoreConnector<AppState, AppState>(
//       converter: (store) => store.state,
//       onDispose: (store) => loginFsm.applyEvent(OnLogin001Event()),
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
//                 SizedBox(height: 86.h),
//                 SizedText(
//                   text: cantLogin,
//                   textStyle: ThemeTextSemibold.xl5
//                       .apply(color: ThemeColors.coolgray500),
//                 ),
//                 SizedBox(height: 34.h),
//                 SizedText(
//                   softWrap: true,
//                   textAlign: TextAlign.center,
//                   text: enterNumberForResetPassword,
//                   textStyle:
//                       ThemeTextRegular.xl.apply(color: ThemeColors.coolgray500),
//                 ),
//                 SizedBox(height: 126.h),
//                 InputFieldYolletApp(
//                   keyboardType: TextInputType.phone,
//                   placeholder: '+7(7__)-___-__-__',
//                   enableBorder: true,
//                   isOrange: true,
//                   controller: state.loginState.loginPhoneNumContr,
//                   inputFormatters: [
//                     MaskTextInputFormatter(
//                       mask: '+7(7__)-___-__-__',
//                       filter: {"_": RegExp(r'[0-9]')},
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 86.h),
//                 PrimaryButton(
//                   buttonText: sendSMS,
//                   buttonSize: ButtonSize.L2,
//                   onPressed: () => appStore.dispatch(GetLoginSendSmsAction),
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
// const cantLogin = 'Не удается войти?';
// const enterNumberForResetPassword =
//     'Введите номер телефона для SMS чтобы сбросить пароль';
// const sendSMS = 'Отправить SMS';
