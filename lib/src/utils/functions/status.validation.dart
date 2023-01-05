import 'package:cafe/src/utils/enums/status.enum.dart';

statusValidation(StatusEnum status) {
  switch (status) {
    case StatusEnum.validating:
      return 'Validating order';
    case StatusEnum.accepted:
      return 'Order accepted';
    case StatusEnum.preparing:
      return 'Preparing';
    case StatusEnum.delivering:
      return 'Delivering';
    case StatusEnum.finished:
      return 'Finished';
    default:
      'Recusado';
  }
}
