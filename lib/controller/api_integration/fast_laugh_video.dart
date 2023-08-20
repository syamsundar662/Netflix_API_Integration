import 'dart:convert';
import 'package:http/http.dart' as http;

 const fastLaugh =
      "https://run.mocky.io/v3/e5b9ed99-e74a-4a1f-a624-aad618c77a85";

      class FastLaughVideo{
  Future<List<String>> getFastLaughVideoUrls() async {
    final response = await http.get(Uri.parse(fastLaugh));
    if (response.statusCode == 200) {
      final responseData = jsonDecode(response.body)["videoUrls"] as List;
      return responseData.map((videoUrl) => videoUrl as String).toList();
    } else {
      throw Exception('something went wrong');
    }
  }
      }