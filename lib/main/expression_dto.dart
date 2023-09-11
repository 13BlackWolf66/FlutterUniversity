import 'package:vntu1/core/base_operation.dart';

class ExpressionDto {
  final double left;
  final double right;
  final BaseOperation operation;

  ExpressionDto({
    required this.left,
    required this.right,
    required this.operation,
  });
}
