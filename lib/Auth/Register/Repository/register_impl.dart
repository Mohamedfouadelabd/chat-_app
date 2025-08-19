import 'package:chat_app/Auth/Register/Domain/repository/register_contract.dart';
import 'package:chat_app/Auth/Register/Repository/register_remote_data_source_impl.dart';
import 'package:chat_app/Firebase/Model/my_user.dart';

import '../Domain/repository/register_remote_data_source.dart';

class RegisterImpl implements RegisterContract{
  RegisterRemoteDataSource remoteDataSource;
  RegisterImpl({required this.remoteDataSource});
  @override
  Future<void> register(MyUser myUser) {
return remoteDataSource.register(myUser);
  }
  
}

RegisterContract injectRegisterContract(){
  return RegisterImpl(remoteDataSource: injectRegisterRemoteDataSource());

}