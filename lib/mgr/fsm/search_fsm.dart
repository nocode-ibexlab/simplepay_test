// import 'dart:developer';
// import 'package:fsm2/fsm2.dart';
// import 'package:simple_pay_flutter/mgr/redux/action.dart';
// import 'package:simple_pay_flutter/mgr/redux/states/search_state.dart';
//
// import '../../utils/common/log_tester.dart';
//
// final searchFsm = StateMachine.create((g) => g
//   ..onTransition((from, e, to) {
//     log('${e.toString().replaceAll("Instance of ", "")} in ${from!.stateType} SEARCH TRANSIT to ${to!.stateType}');
//     appStore
//         .dispatch(UpdateSearchAction(searchFSMState: to.stateType.toString()));
//   })
//   ..initialState<IdleSearchState>()
//   ..state<IdleSearchState>((b) => b..on<OnInitSearchEvent, InitSearchState>())
//   ..state<InitSearchState>((b) => b
//     ..on<OnSearchingEvent, SearchingSearchState>(
//       sideEffect: (event) async {
//         event.runSearchingFun();
//       },
//     )
//     ..on<OnIdleSearchEvent, IdleSearchState>(
//       sideEffect: (event) async {
//         event.runIdleFun();
//       },
//     ))
//   ..state<SearchingSearchState>((b) => b
//     ..on<OnEmptySearchEvent, EmptySearchState>()
//     ..on<OnInitSearchEvent, InitSearchState>()
//     ..on<OnSearchingEvent, SearchingSearchState>(
//       sideEffect: (event) async {
//         event.runSearchingFun();
//       },
//     )
//     ..on<OnIdleSearchEvent, IdleSearchState>(
//       sideEffect: (event) async {
//         event.runIdleFun();
//       },
//     ))
//   ..state<EmptySearchState>((b) => b
//     ..on<OnSearchingEvent, SearchingSearchState>(
//       sideEffect: (event) async {
//         event.runSearchingFun();
//       },
//     )
//     ..on<OnIdleSearchEvent, IdleSearchState>(
//       sideEffect: (event) async {
//         event.runIdleFun();
//       },
//     )));
//
// //State Declaration and definition
// class IdleSearchState implements State {}
//
// class InitSearchState implements State {}
//
// class SearchingSearchState implements State {}
//
// class EmptySearchState implements State {}
//
// class OnIdleSearchEvent implements Event {
//   void runIdleFun() {
//     // appStore.dispatch(UpdateSalesAction(
//     //     currentCategory: {},
//     //     bestSellingCategoryList: [],
//     //     bestSellingItemList: []));
//     appStore
//         .dispatch(UpdateSearchAction(searchType: SearchType.SALE_CAT_SEARCH));
//   }
// }
//
// class OnInitSearchEvent implements Event {}
//
// class OnSearchingEvent implements Event {
//   // void runSearchingFun() {
//   //   logger(GETSTATE.salesState.bestSellingItemList, hint: 'LOGGERERER');
//   //   if (GETSTATE.salesState.bestSellingItemList.isEmpty) {
//   //     searchFsm.applyEvent(OnEmptySearchEvent());
//   //   } else {
//   //     searchFsm.applyEvent(OnSearchingEvent());
//   //   }
//   // }
// }
//
// class OnEmptySearchEvent implements Event {}
//
// class SearchFSMState {
//   static String currentState = "";
// }
