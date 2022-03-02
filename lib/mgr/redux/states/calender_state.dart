class CalenderState {
  final String startDate;
  final String endDate;
  CalenderState({
    required this.startDate,
    required this.endDate,
  });
  factory CalenderState.initial() {
    return CalenderState(
      startDate: '',
      endDate: '',
    );
  }

  CalenderState copyWith({String? startDate, String? endDate}) {
    return CalenderState(
        startDate: startDate ?? this.startDate,
        endDate: endDate ?? this.endDate);
  }
}
