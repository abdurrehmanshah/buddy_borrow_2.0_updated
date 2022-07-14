import 'package:get/get.dart';
import 'package:newbuddyborrow/core/others/base_view_widget.dart';

import '../core/enums/process_status.dart';
import '../core/models/user_model.dart';
import '../core/services/db_service.dart';
import '../core/services/local_db.dart';

class UserController extends GetxController {
  bool isLoading = false;

  // ignore: prefer_final_fields
  UserModel _user = UserModel();
  UserModel get user => _user;

  Future getUserData() async {
    await LocalDb.getDbID().then((db) async {
      await DbService().getUserData(dbId: db.toString()).then((value) {
        if (value.status == ProcessStatus.compeleted) {
          _user = value.value['data'];

          update();

          log(_user.userImageUrl.toString());

          return value.value['data'];
        } else if (value.status == ProcessStatus.failed) {
          final response = value.value['error'];
          log(response);
          return null;
        }
      });
    });
  }
}
