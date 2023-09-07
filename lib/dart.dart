import 'package:http/http.dart' as http;


Future<void> func()async{
  final response = await http.get(Uri.parse('string'));
  if(response.statusCode ==200){
    print('success');
  }
}

Future<void> post()async{
  final response = await http.post(Uri.parse('String'),);
}