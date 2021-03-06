import 'dart:convert';

import 'package:precolombina/models/artwork.dart';
import 'package:http/http.dart' as http;

class PrecolombinaService {
  static final String _url = "https://precolombina-a1628.firebaseio.com";

  static Future<List<Artwork>> obtenerTodoArtwork() async {
    List<Artwork> lista = [];
    http.Response respuesta = await http.get("$_url/artworks.json");

    Map miMapa = json.decode(respuesta.body);

    miMapa.forEach((key, value) {
      Artwork miArtwork = Artwork(
        id: key,
        name: value["name"],
        image: value["image"],
        tipe: value["type"],
        description: value["description"],
        price: value["price"],
        product: value["product"],
        quantity: value["quantity"],
      );
      lista.add(miArtwork);
    });
    return lista;
  }

  static Future<void> sendData(String name, String image, String type,
      String description, int price, int quantity) async {
    await http.post("https://precolombina-a1628.firebaseio.com/artworks.json",
        body: json.encode({
          'name': name,
          'image': image,
          'type': type,
          'description': description,
          'price': price,
          'quantity': quantity,
          'product': true,
        }));
  }
}
