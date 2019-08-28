import 'package:flutter/material.dart';

import '../intergrade/beans/pagination.dart';

typedef SetupParamsFn =Map<String, dynamic> Function(BuildContext context);

const TIME_FORMAT = "HH:mm:ss";
const DATE_FORMAT = "YYYY-MM-DD";
const TIMESTAMP_FORMAT = "YYYY-MM-DD HH:mm:ss";

class AreaState<T> {
  String areaName;
  Map<dynamic, T> valueMap;
  int index;
  Pagination pagination;
  List<dynamic> selectedRowKeys;
  bool doEdit;
  bool doQuery;
  Map<String, dynamic> queryRule;
  dynamic type;
  AreaState<T> cancelState;

  AreaState({
    this.areaName,
    this.valueMap,
    this.pagination,
    this.queryRule
  });

  void merge(AreaState<T> source) {
    if (source != null) {
      if (source.valueMap != null) {
        this.valueMap = source.valueMap;
      }
      if (source.pagination != null) {
        this.pagination = source.pagination;
      }
      if (source.queryRule != null) {
        this.queryRule = source.queryRule;
      }
    }
  }

  AreaState<T> clone() {
    var newArea = AreaState(
      valueMap : Map.of(this.valueMap),
    );
    return newArea;
  }
}


abstract class RouteUtil {

  static Map<String, dynamic> getParams(BuildContext context) {
    return null;
  }
}


