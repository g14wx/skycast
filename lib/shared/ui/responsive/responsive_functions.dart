import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

mixin ResponsiveFunctionsMixin {
  ResponsiveRowColumn buildRow(
      {required BuildContext context, required List<ResponsiveRowColumnItem> children, bool reverse = false}) {
    return ResponsiveRowColumn(
        columnCrossAxisAlignment: CrossAxisAlignment.start,
        rowCrossAxisAlignment: CrossAxisAlignment.start,
        layout: ResponsiveBreakpoints.of(context).isMobile && !reverse
            ? ResponsiveRowColumnType.COLUMN
            : ResponsiveRowColumnType.ROW,
        children: [...children]);
  }

  ResponsiveRowColumnItem buildCell(
      {required BuildContext context,
      required List<ResponsiveRowColumnItem> children,
      FlexFit? rowFlexFit = FlexFit.tight,
      FlexFit? columnFit = FlexFit.tight,
      ResponsiveRowColumnType? layout,
      EdgeInsets? edgeInsetsRow,
      EdgeInsets? edgeInsetsColumn,
      EdgeInsets? edgeInsets}) {
    final padding = (ResponsiveBreakpoints.of(context).isMobile ? edgeInsetsColumn : null) ??
        (!ResponsiveBreakpoints.of(context).isMobile ? edgeInsetsRow : null) ??
        edgeInsets;
    final responsiveMobileColumn =
        ResponsiveBreakpoints.of(context).isMobile || ResponsiveBreakpoints.of(context).isTablet
            ? ResponsiveRowColumnType.COLUMN
            : ResponsiveRowColumnType.ROW;
    return ResponsiveRowColumnItem(
      columnFit: columnFit,
      rowFit: rowFlexFit,
      child: Padding(
        padding: padding ?? const EdgeInsets.all(0),
        child: ResponsiveRowColumn(
          rowCrossAxisAlignment: CrossAxisAlignment.start,
          columnCrossAxisAlignment: CrossAxisAlignment.start,
          rowMainAxisSize: MainAxisSize.max,
          layout: layout ?? responsiveMobileColumn,
          children: [...children],
        ),
      ),
    );
  }

  ResponsiveRowColumnItem buildComponentCell(
      {required BuildContext context,
      required Widget child,
      FlexFit? rowFlexFix,
      FlexFit? colFlexFix,
      EdgeInsets? edgeInsetsRow,
      EdgeInsets? edgeInsetsColumn,
      EdgeInsets? edgeInsets}) {
    final padding = (ResponsiveBreakpoints.of(context).isMobile ? edgeInsetsColumn : null) ??
        (!ResponsiveBreakpoints.of(context).isMobile ? edgeInsetsRow : null) ??
        edgeInsets;
    return ResponsiveRowColumnItem(
        rowFit: rowFlexFix,
        rowFlex: 1,
        child: padding != null
            ? Padding(
                padding: padding,
                child: child,
              )
            : child);
  }

  ResponsiveRowColumnItem buildSpaceBetweenCells(BuildContext context) {
    return buildComponentCell(
        context: context,
        child: const Visibility(
          child: SizedBox(
            height: 10,
            width: 10,
          ),
        ));
  }
}
