import 'package:injectable/injectable.dart';

import '../../di/di_config.dart';

@devEnv
@prodEnv
@testEnv
@injectable
class LoginScreenUseCase {

 ///
  bool onLogin(String email,String password){
    if(email=='rahul@gmail.com'&&password=='1234') {
      return true;
    } else {
      return false;
    }
  }

}