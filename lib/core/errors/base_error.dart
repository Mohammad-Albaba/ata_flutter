import 'package:beauty_app/core/coreModels/base_result_model.dart';

class BaseError extends BaseResultModel {
  String message = 'Error';
  String type;

  BaseError({this.message, this.type});

  @override
  List<Object> get props => [message, type];
}
