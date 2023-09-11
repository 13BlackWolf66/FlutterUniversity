import '../core/base_operation.dart';
import '../core/calculator_exception.dart';
import 'expression_dto.dart';
import 'operations/add_operation.dart';
import 'operations/div_operation.dart';
import 'operations/mul_operation.dart';
import 'operations/sub_operation.dart';

class InputParser {
  ExpressionDto parse(String input) {
    int index = -1;
    BaseOperation? operation;
    for (int i = 0; i < input.length; ++i) {
      if (input[i] == "+") {
        index = i;
        operation = AddOperation();
        break;
      } else if (input[i] == "-") {
        index = i;
        operation = SubOperation();
        break;
      } else if (input[i] == "*") {
        index = i;
        operation = MulOperation();
        break;
      } else if (input[i] == "/") {
        index = i;
        operation = DivOperation();
        break;
      }
    }

    if (index <= 0 || operation == null) {
      throw CalculatorException(text: "index > 0 && operation !=null");
    }

    final List<String> parts = input.split(operation.symbol);
    if (parts.length != 2) {
      throw CalculatorException(text: "parts.length != 2");
    }

    final double left = double.tryParse(parts[0]) ?? 0.0;
    final double right = double.tryParse(parts[1]) ?? 0.0;

    return ExpressionDto(
      operation: operation,
      left: left,
      right: right,
    );
  }
}
