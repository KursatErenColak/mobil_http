import 'package:http/http.dart' as http;
class ProductApi{

  static Future getProducts(){
    return http.get(Uri.http('10.0.2.2:3000', '/products'));
  }
  static Future getProductsByCategoryId(int categoryid){
    String cd = categoryid.toString();
    var queryParameter ={
      'categoryId':'$cd'
    };
    return http.get(Uri.http('10.0.2.2:3000', '/products',queryParameter));
  }
}