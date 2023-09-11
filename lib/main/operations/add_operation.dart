import '../../core/base_operation.dart';

class AddOperation extends BaseOperation {
  AddOperation() : super("+");

  @override
  double calc(double left, double right) {
    return left + right;
  }
}
