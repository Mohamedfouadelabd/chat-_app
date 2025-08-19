import 'package:chat_app/Auth/login/Repository/login_impl.dart';
import 'package:chat_app/Auth/login/domain/repository/login_contract.dart';

class LoginUseCase{
  LoginContract loginContract;
  LoginUseCase({required this.loginContract});

  Future <void>invoke(String uId)async{
 return await  loginContract.login(uId);

}
}


LoginUseCase injectLoginUseCase(){
 return LoginUseCase(loginContract: injectLoginContract());

}