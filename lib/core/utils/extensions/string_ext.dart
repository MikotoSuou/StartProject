
import 'package:start_project/core/utils/constants.dart';

extension StringExt on String? {

  String get orEmpty => this ?? Constants.emptyString;

  bool get isBlank => (this == null || this!.trim().isEmpty);

  bool get isNotBlank => !isBlank;

}