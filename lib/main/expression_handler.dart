import 'package:vntu1/main/expression_dto.dart';

class ExpressionHandler {
  double calculateExpression(ExpressionDto dto) {
    return dto.operation.calc(dto.left, dto.right);
  }
}
