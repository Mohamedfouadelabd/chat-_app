import 'package:chat_app/Auth/Register/Domain/repository/register_contract.dart';
import 'package:chat_app/Auth/Register/Repository/register_impl.dart';
import 'package:chat_app/Firebase/Model/my_user.dart';

class RegisterUseCase {
  final RegisterContract registerContract;

  RegisterUseCase({required this.registerContract});

  Future<void> invoke(MyUser myUser) async {
    return await registerContract.register(myUser);
  }
}
RegisterUseCase   injectRegisterUseCase(){
 return  RegisterUseCase(registerContract: injectRegisterContract());
}

