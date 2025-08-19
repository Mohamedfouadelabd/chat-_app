import 'package:chat_app/Auth/login/Repository/Login_remote_data_source_impl.dart';
import 'package:chat_app/Auth/login/domain/repository/login_contract.dart';

import '../domain/repository/login_remote_data_source.dart';


class LoginImpl implements LoginContract{
  LoginRemoteDataSource remoteDataSource;
  LoginImpl({required this.remoteDataSource});
  @override
  Future<void> login(String uId) {
  return remoteDataSource.login(uId);
  }


}
LoginContract injectLoginContract(){
  return LoginImpl(remoteDataSource: injectLoginRemoteDataSource());

}