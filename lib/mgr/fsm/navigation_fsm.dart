import 'dart:developer';

import 'package:fsm2/fsm2.dart';

final navMachine = StateMachine.create((g) => g
  ..initialState<SimpleLoginState>()
  ..state<SimpleLoginState>(
    (b) => b
      ..on<OnLoginEvent, SimpleHomeState>()
      ..state<SimpleHomeState>((b) => b
        ..on<OnGoToEvent, SimpleReturnState>(
            condition: (event) => event.to == "RouteToReturn")
        ..onEnter((fromState, event) {
          print('RouteToReturn');
        })
        ..on<OnGoToEvent, SimpleReportState>(
            condition: (event) => event.to == "RouteToReport")
        ..on<OnGoToEvent, SimpleSalesState>(
            condition: (event) => event.to == "RouteToSales")
        ..on<OnGoToEvent, SimpleWarehouseState>(
            condition: (event) => event.to == "RouteToWH")
        ..on<OnGoToEvent, SimpleEntryWithdrawalState>(
            condition: (event) => event.to == "RouteToEW")
        ..on<OnGoToEvent, SimpleRevisionState>(
            condition: (event) => event.to == "RouteToRevision")
        ..on<OnGoToEvent, SimpleSettingsState>(
            condition: (event) => event.to == "RouteToSettings")
        ..state<SimpleSalesState>((b) => b)
        ..state<SimpleReportState>((b) => b)
        ..state<SimpleReturnState>((b) => b)
        ..state<SimpleWarehouseState>((b) => b)
        ..state<SimpleEntryWithdrawalState>((b) => b)
        ..state<SimpleRevisionState>((b) => b)
        ..state<SimpleSettingsState>((b) => b)),
  )
  ..onTransition((from, e, to) => log(
      '${e.toString().replaceAll("Instance of ", "")} in ${from!.stateType} transitioning to ${to!.stateType}')));

//State Declaration and definition

class SimpleLoginState implements State {}

class SimpleHomeState implements State {}

class SimpleSalesState implements State {}

class SimpleReturnState implements State {}

class SimpleReportState implements State {}

class SimpleWarehouseState implements State {}

class SimpleEntryWithdrawalState implements State {}

class SimpleRevisionState implements State {}

class SimpleSettingsState implements State {}

class SimpleLogoutState implements State {}

class SimpleSearchState implements State {}

class SimplePosState implements State {}

class SimpleReserverState implements State {}

//Event Declaration and definition

class OnLoginEvent implements Event {}

class OnGoToEvent implements Event {
  String to = "RouteToReturn";
}
