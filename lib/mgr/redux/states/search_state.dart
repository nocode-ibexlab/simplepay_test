import 'package:flutter/material.dart';

///
/// SearchState
///
@immutable
class SearchState {
  final SearchType searchType;
  final String searchLabel;
  final String searchFSMState;

  SearchState(
      {required this.searchType,
      required this.searchLabel,
      required this.searchFSMState});

  factory SearchState.initial() {
    return SearchState(
        searchType: SearchType.SALE_CAT_SEARCH,
        searchLabel: "Поиск по названию, штрих коду",
        searchFSMState: "");
  }

  SearchState copyWith({
    SearchType? searchType,
    String? searchLabel,
    String? searchFSMState,
  }) {
    return SearchState(
      searchType: searchType ?? this.searchType,
      searchLabel: searchLabel ?? this.searchLabel,
      searchFSMState: searchFSMState ?? this.searchFSMState,
    );
  }
}

enum SearchType {
  SALE_SEARCH,
  SALE_CAT_SEARCH,
  RETN_SEARCH,
  WARE_SEARCH,
  REVN_SEARCH,
}
