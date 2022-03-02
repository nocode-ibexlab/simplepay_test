import 'package:simple_pay_flutter/presentation/template/base/template.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class DefaultDatatable extends StatefulWidget {
  List<String> headNames;
  List<List<String>> bodyNames;
  List<double?>? bodyWidths;
  int freezedColNumber;
  int freezedRowNumber;
  double headNamesHorizontalPadding;
  List<int?>? bodyTextMaxlines;
  List<bool>?
      isNumericCols; //TODO: Need to change rectangle 15 for isNumeric alignment!
  double headNamesHeight;
  Color bodyBgColor;

  DefaultDatatable({
    required this.headNames,
    required this.bodyNames,
    this.bodyWidths,
    this.bodyTextMaxlines,
    this.isNumericCols,
    this.freezedColNumber = 0,
    this.freezedRowNumber = 0,
    this.headNamesHorizontalPadding = 24,
    this.bodyBgColor = ThemeColors.white,
    this.headNamesHeight = 55,
  }) {
    if (bodyWidths == null) {
      bodyWidths = [];
      for (int i = 0; i < headNames.length; i++) {
        bodyWidths!.add(null);
      }
    } else {
      for (int i = bodyWidths!.length; i < headNames.length; i++) {
        bodyWidths!.add(null);
      }
    }

    if (isNumericCols == null) {
      isNumericCols = [];
      for (int i = 0; i < headNames.length; i++) {
        isNumericCols!.add(false);
      }
    } else {
      for (int i = isNumericCols!.length; i < headNames.length; i++) {
        isNumericCols!.add(false);
      }
    }

    if (bodyTextMaxlines == null) {
      bodyTextMaxlines = [];
      for (int i = 0; i < headNames.length; i++) {
        bodyTextMaxlines!.add(null);
      }
    } else {
      for (int i = bodyTextMaxlines!.length; i < headNames.length; i++) {
        bodyTextMaxlines!.add(null);
      }
    }
  }

  @override
  State<DefaultDatatable> createState() => _DefaultDatatableState();
}

class _DefaultDatatableState extends State<DefaultDatatable> {
  late List<String> headNames;
  late List<List<String>> bodyNames;
  late DataSource _dataSource;

  @override
  void initState() {
    super.initState();
    headNames = widget.headNames;
    bodyNames = widget.bodyNames;
    _dataSource = DataSource(bodyNames,
        bodyTextMaxlines: widget.bodyTextMaxlines,
        isNumericCols: widget.isNumericCols,
        bodyBgColor: widget.bodyBgColor);
  }

  @override
  Widget build(BuildContext context) {
    return SfDataGrid(
        headerGridLinesVisibility: GridLinesVisibility.none,
        gridLinesVisibility: GridLinesVisibility.none,
        columnWidthMode: ColumnWidthMode.fill,
        source: _dataSource,
        frozenColumnsCount: widget.freezedColNumber,
        frozenRowsCount: widget.freezedRowNumber,
        headerRowHeight: widget.headNamesHeight.h,
        rowHeight: 140.h,
        columns: _buildColumns());
  }

  List<GridColumn> _buildColumns() {
    List<GridColumn> list = [];
    for (var element in headNames) {
      int index = headNames.indexOf(element);
      list.add(
        GridColumn(
            columnName: element,
            minimumWidth: widget.bodyWidths![index] == null
                ? double.nan
                : widget.bodyWidths![index]!.w,
            columnWidthMode: ColumnWidthMode.fill,
            label: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: widget.headNamesHorizontalPadding.w),
              child: SizedText(
                textAlign: widget.isNumericCols![headNames.indexOf(element)]
                    ? TextAlign.right
                    : TextAlign.left,
                textStyle: ThemeTextRegular.lg4
                    .copyWith(color: ThemeColors.coolgray400),
                text: element,
              ),
            )),
      );
    }

    return list;
  }
}

class DataSource extends DataGridSource {
  List<int?>? bodyTextMaxlines;
  List<bool>? isNumericCols;
  late List<DataGridRow> dataGridRows;
  Color bodyBgColor;

  DataSource(List<List<String>> data,
      {this.bodyTextMaxlines,
      this.isNumericCols,
      this.bodyBgColor = ThemeColors.white}) {
    _buildHeads(List<String> dataGridRow) {
      List<DataGridCell<dynamic>> list = [];
      for (var element in dataGridRow) {
        list.add(DataGridCell<String>(columnName: element, value: element));
      }
      return list;
    }

    dataGridRows = data
        .map<DataGridRow>(
            (dataGridRow) => DataGridRow(cells: _buildHeads(dataGridRow)))
        .toList();
  }

  @override
  List<DataGridRow> get rows => dataGridRows;
  @override
  DataGridRowAdapter? buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        cells: row.getCells().map<Widget>((dataGridCell) {
      int index = row.getCells().indexOf(dataGridCell);
      return RectangleFrame15(
        borderRadius: 0,
        bgColor: bodyBgColor,
        withBottomBorder: true,
        child: SizedText(
            softWrap: bodyTextMaxlines != null,
            text: dataGridCell.value.toString(),
            textStyle:
                ThemeTextRegular.lg5.copyWith(color: ThemeColors.coolgray900),
            maxLines: bodyTextMaxlines![index],
            overflow: TextOverflow.visible,
            textAlign:
                isNumericCols![index] ? TextAlign.right : TextAlign.left),
      );
    }).toList());
  }
}
