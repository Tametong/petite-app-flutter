import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'model.dart'; // si tu mets le modèle dans un autre fichier



Future<List<Post>> fetchPosts() async{
  final url = Uri.parse('https://jsonplaceholder.typicode.com/posts?_limit=10');
  final response = await http.get(url);

  if (response.statusCode == 200){
    //Récupération
    final List<dynamic> data = convert.json.decode(response.body);
    return  data.map((item)=>Post.fromJson(item)).toList();
    print(data);
  }else {
    //erreur
    throw Exception('Echec de chargement des connées');
  }
}

