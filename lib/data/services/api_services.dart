import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';

import '../model/country_list_response.dart';
part 'api_services.g.dart';

@singleton
@RestApi(baseUrl: "https://restcountries.com")
abstract class ApiServices {
 @factoryMethod
 factory  ApiServices(){
  final dio =Dio();
  dio.options=BaseOptions(
   receiveTimeout: 30000,
   connectTimeout: 30000,
   contentType: 'content/json'
  );
  return _ApiServices(dio);
 }

 @GET("/v3.1/all")
 Future<List<CountryResponse>?> getCountry ();

}