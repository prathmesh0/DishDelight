import 'package:dishdelight/Model/recipe.dart';
import 'package:dishdelight/Services/http_service.dart';

class DataService {
  static final DataService _singleton = DataService._internal();

  final HTTPService _httpService = HTTPService();

  factory DataService() {
    return _singleton;
  }

  DataService._internal();

  Future<List<Recipe>?> getRecipes(String filter) async {
    String path = "https://dummyjson.com/recipes/";
    if (filter.isNotEmpty && filter != 'All') {
      path += "meal-type/$filter";
    }

    var response = await _httpService.get(path);

    if (response?.statusCode == 200 && response?.data != null) {
      List data = response!.data["recipes"];
      List<Recipe> recipes = data.map((e) => Recipe.fromJson(e)).toList();
      return recipes;
    }
  }
}
