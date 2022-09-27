import 'package:http/http.dart' as http;
import 'package:nnnapp/Model/modelClassOne.dart';

class AppState{
  Future<GettingMyData?> gettingData()async{
    String url='https://reqres.in/api/users?page=2';
   final response=await http.get(Uri.parse(url));
if(response.statusCode==200){
final data=gettingMyDataFromJson(response.body);
return data;
}else{
  return null;
}
  }
}