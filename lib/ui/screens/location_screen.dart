import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:two_dimensional_scrollables/two_dimensional_scrollables.dart';

class LocationScreen extends StatefulWidget {
  /// Creates a screen that demonstrates the TableView widget.
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  late final ScrollController _verticalController = ScrollController();
  int _rowCount = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: TableView.builder(
          verticalDetails:
              ScrollableDetails.vertical(controller: _verticalController),
          cellBuilder: _buildCell,
          columnCount: 20,
          columnBuilder: _buildColumnSpan,
          rowCount: _rowCount,
          rowBuilder: _buildRowSpan,
        ),
      ),
    );
  }

  TableViewCell _buildCell(BuildContext context, TableVicinity vicinity) {
    return TableViewCell(
      child: Center(
        child: Text('Tile c: ${vicinity.column}, r: ${vicinity.row}'),
      ),
    );
  }

  TableSpan _buildColumnSpan(int index) {
    const TableSpanDecoration decoration = TableSpanDecoration(
      border: TableSpanBorder(
        trailing: BorderSide(),
      ),
    );

    switch (index % 5) {
      case 0:
        return TableSpan(
          foregroundDecoration: decoration,
          extent: const FixedTableSpanExtent(100),
          onEnter: (_) => print('Entered column $index'),
          recognizerFactories: <Type, GestureRecognizerFactory>{
            TapGestureRecognizer:
                GestureRecognizerFactoryWithHandlers<TapGestureRecognizer>(
              () => TapGestureRecognizer(),
              (TapGestureRecognizer t) =>
                  t.onTap = () => print('Tap column $index'),
            ),
          },
        );
      case 1:
        return TableSpan(
          foregroundDecoration: decoration,
          extent: const FractionalTableSpanExtent(0.5),
          onEnter: (_) => print('Entered column $index'),
          cursor: SystemMouseCursors.contextMenu,
        );
      case 2:
        return TableSpan(
          foregroundDecoration: decoration,
          extent: const FixedTableSpanExtent(120),
          onEnter: (_) => print('Entered column $index'),
        );
      case 3:
        return TableSpan(
          foregroundDecoration: decoration,
          extent: const FixedTableSpanExtent(145),
          onEnter: (_) => print('Entered column $index'),
        );
      case 4:
        return TableSpan(
          foregroundDecoration: decoration,
          extent: const FixedTableSpanExtent(200),
          onEnter: (_) => print('Entered column $index'),
        );
    }
    throw AssertionError(
        'This should be unreachable, as every index is accounted for in the switch clauses.');
  }

  TableSpan _buildRowSpan(int index) {
    final TableSpanDecoration decoration = TableSpanDecoration(
      color: index.isEven ? Colors.purple[100] : null,
      border: const TableSpanBorder(
        trailing: BorderSide(
          width: 3,
        ),
      ),
    );

    switch (index % 3) {
      case 0:
        return TableSpan(
          backgroundDecoration: decoration,
          extent: const FixedTableSpanExtent(50),
          recognizerFactories: <Type, GestureRecognizerFactory>{
            TapGestureRecognizer:
                GestureRecognizerFactoryWithHandlers<TapGestureRecognizer>(
              () => TapGestureRecognizer(),
              (TapGestureRecognizer t) =>
                  t.onTap = () => print('Tap row $index'),
            ),
          },
        );
      case 1:
        return TableSpan(
          backgroundDecoration: decoration,
          extent: const FixedTableSpanExtent(65),
          cursor: SystemMouseCursors.click,
        );
      case 2:
        return TableSpan(
          backgroundDecoration: decoration,
          extent: const FractionalTableSpanExtent(0.15),
        );
    }
    throw AssertionError(
        'This should be unreachable, as every index is accounted for in the switch clauses.');
  }
}
