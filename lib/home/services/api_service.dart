import 'package:http/http.dart' as http;
import 'package:test_project/home/models/product_response.dart';
import 'package:test_project/utils/constants.dart';

class ApiService {
  Future<List<ProductResponse>> getProducts() async {
    try {
      final response = await http.get(Uri.parse(apiURL));
      if (response.statusCode == 200) {
        final _productList = productResponseFromJson(response.body);
        return _productList;
      } else {
        return [];
      }
    } catch (e) {
      print(e);
      return [];
    }
  }
}
