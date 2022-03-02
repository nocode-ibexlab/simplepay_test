import 'package:flutter_redux/flutter_redux.dart';
import 'package:intl/intl.dart';
import 'package:simple_pay_flutter/mgr/redux/action.dart';
import 'package:simple_pay_flutter/mgr/redux/app_state.dart';
import 'package:simple_pay_flutter/presentation/template/base/template.dart';
import 'package:simple_pay_flutter/utils/common/log_tester.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class DATE_00_001 extends StatefulWidget {
  @override
  State<DATE_00_001> createState() => _DATE_00_001State();
}

class _DATE_00_001State extends State<DATE_00_001> {
  final DateRangePickerController _dateRangePickerController =
      DateRangePickerController();

  String _selectedDate = '';
  String _dateCount = '';
  String _range = '';
  String _rangeCount = '';

  String startDate = DateFormat('yyyyMMdd')
      .format(DateTime.now().subtract(const Duration(days: 1)));
  String endDate = DateFormat('yyyyMMdd').format(DateTime.now());

  @override
  void initState() {
    super.initState();
    if (GETSTATE.calenderState.startDate.isNotEmpty) {
      setState(() {
        startDate = DateTime.parse(GETSTATE.calenderState.startDate).toString();
        endDate = DateTime.parse(GETSTATE.calenderState.endDate).toString();
      });
      _dateRangePickerController.selectedRange = PickerDateRange(
          DateTime.parse(GETSTATE.calenderState.startDate),
          DateTime.parse(GETSTATE.calenderState.endDate));
    }
  }

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
        converter: (store) => store.state,
        builder: (context, state) => DefaultBody(
            showLeadingBack: true,
            paddingTop: 0,
            paddingHorizontal: 0,
            showActionClear: _resetDate,
            titleText:
                "${DateFormat("dd MMMM", "ru").format(DateTime.parse(startDate))}  -  ${DateFormat("dd MMMM", "ru").format(DateTime.parse(endDate))}",
            child: Container(
                height: 770.h,
                color: ThemeColors.white,
                child: SpacedColumn(
                  children: [
                    SizedBox(height: 20.h),
                    SfDateRangePicker(
                      controller: _dateRangePickerController,
                      //Header style
                      headerStyle: DateRangePickerHeaderStyle(
                          textAlign: TextAlign.center,
                          textStyle: ThemeTextSemibold.xl
                              .copyWith(color: ThemeColors.coolgray500)),
                      //Month view style
                      monthViewSettings: DateRangePickerMonthViewSettings(
                          showTrailingAndLeadingDates: true,
                          enableSwipeSelection: true,
                          viewHeaderHeight: 43.h,
                          firstDayOfWeek: 1,
                          viewHeaderStyle: DateRangePickerViewHeaderStyle(
                              textStyle: ThemeTextRegular.xl
                                  .copyWith(color: ThemeColors.coolgray500))),
                      //Month Cell Style
                      monthCellStyle: DateRangePickerMonthCellStyle(
                          blackoutDateTextStyle: ThemeTextRegular.xl
                              .copyWith(color: ThemeColors.green600),
                          trailingDatesTextStyle: ThemeTextRegular.xl
                              .copyWith(color: ThemeColors.coolgray300),
                          todayTextStyle: ThemeTextRegular.xl
                              .copyWith(color: ThemeColors.orange500),
                          leadingDatesTextStyle: ThemeTextRegular.xl
                              .copyWith(color: ThemeColors.coolgray300),
                          textStyle: ThemeTextRegular.xl
                              .copyWith(color: ThemeColors.coolgray500)),
                      //Other style
                      rangeTextStyle: ThemeTextRegular.xl
                          .copyWith(color: ThemeColors.coolgray400),
                      selectionTextStyle: ThemeTextRegular.xl,
                      selectionColor: ThemeColors.orange500,
                      onSelectionChanged: _onSelectionChanged,
                      startRangeSelectionColor: ThemeColors.orange500,
                      endRangeSelectionColor: ThemeColors.orange500,
                      rangeSelectionColor: ThemeColors.orange100,
                      todayHighlightColor: ThemeColors.orange500,
                      selectionMode: DateRangePickerSelectionMode.range,
                      initialDisplayDate: DateTime.parse(startDate),
                      initialSelectedDate: DateTime.parse(startDate),
                    ),
                    Divider(
                      height: 2.h,
                    ),
                    SizedBox(height: 90.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 32.w),
                      child: PrimaryButton(
                        buttonText: 'Выбрать',
                        onPressed: () {
                          _selectDate(state);
                        },
                      ),
                    )
                  ],
                ))));
  }

  _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    setState(() {
      if (args.value is PickerDateRange) {
        startDate = DateFormat("yyyyMMdd").format(args.value.startDate);
        endDate = DateFormat("yyyyMMdd")
            .format(args.value.endDate ?? args.value.startDate);
        _range = '$startDate -'
            ' $endDate';
      } else if (args.value is DateTime) {
        _selectedDate = args.value.toString();
      } else if (args.value is List<DateTime>) {
        _dateCount = args.value.length.toString();
      } else {
        _rangeCount = args.value.length.toString();
      }
    });
  }

  _selectDate(AppState state) async {
    appStore
        .dispatch(UpdateCalenderAction(startDate: startDate, endDate: endDate));
    appStore.dispatch(NavigateToAction(to: "up"));
  }

  _resetDate() async {
    appStore.dispatch(UpdateCalenderAction(startDate: '', endDate: ''));
    setState(() {
      startDate = DateFormat('yyyyMMdd').format(DateTime.now());
      endDate = startDate;
    });
    _dateRangePickerController.selectedRange =
        PickerDateRange(DateTime.parse(startDate), DateTime.parse(endDate));
  }
}
