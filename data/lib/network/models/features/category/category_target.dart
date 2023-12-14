import '../../../i_remote_target.dart';

class CategoryTarget extends ITargetType {
  @override
  String? path = "/categories.php";

  @override
  HttpMethod get method => HttpMethod.get;
}
