import 'package:flutter_app_project/models/home.dart';

class HomeRepository {
  final _HOME_LIST = [
    Home(
      photoUrlone:
          'https://cf.bstatic.com/images/hotel/max1024x768/198/198852027.jpg',
      photoUrltwo:
          'https://decoracion2.com/imagenes/2015/03/pequenos-apartamentos32-1.jpg',
      photoUrlthree:
          'https://i.pinimg.com/originals/24/7e/ee/247eee9dcd9424b9a4f6e8e645614312.jpg',
      type: 'Apartamento',
      mod: 'Arriendo',
      nameUser: 'Maria Ramos',
      site: 'Bogota',
      cost: 680000,
      costNow: 600000,
    ),
    Home(
      photoUrlone:
          'https://i2.wp.com/deflorecitas.com/wp-content/uploads/2019/09/Im-Genes-Fotos-De-Interiores-Casas-Bonitas-Los-Mejores-30.jpg?fit=1024%2C640&ssl=1',
      photoUrltwo:
          'https://ideasnuevas.net/wp-content/uploads/2016/08/frentes-de-casas-peque%C3%B1as-sencillas-bonitas.png',
      photoUrlthree:
          'https://i.pinimg.com/originals/a3/01/12/a3011272f3cd80b1fd37be24bdc567c7.jpg',
      type: 'Casa',
      mod: 'Venta',
      nameUser: 'Armando Rodriguez',
      site: 'Cartagena',
      cost: 150000000,
      costNow: 130000000,
    ),
    Home(
      photoUrlone:
          'https://st3.idealista.com/news/archivos/2020-03/east-hampton7.jpg?sv=iCek4aEJ',
      photoUrltwo:
          'https://mirandalovestravelling.com/media/2016/08/Nida-19-768x508.jpg',
      photoUrlthree:
          'https://i.pinimg.com/originals/a3/01/12/a3011272f3cd80b1fd37be24bdc567c7.jpg',
      type: 'Casa',
      mod: 'Arriendo',
      nameUser: 'Mario Zuleta',
      site: 'Bucaramanga',
      cost: 1500000,
      costNow: 1200000,
    ),
  ];

  List<Home> getAll({int limit, int order}) {
    var result = _HOME_LIST;

    if (order != null) {
      switch (order) {
        case 1:
          _HOME_LIST.sort(
              (a, b) => a.site.toUpperCase().compareTo(b.site.toUpperCase()));
          break;
        case 2:
          _HOME_LIST.sort((a, b) => a.type.compareTo(b.type));
          break;
        case 3:
          _HOME_LIST.sort((a, b) => a.mod.compareTo(b.mod));
          break;
      }
    }

    if (limit != null) {
      limit = limit > _HOME_LIST.length ? _HOME_LIST.length : limit;

      result = _HOME_LIST.sublist(0, limit);
    }

    return result;
  }

  //Local temporal database

  create(Home home) {
    _HOME_LIST.add(home);
  }

  Home get(String id) {
    return Home();
  }

  update(Home home) {}

  delete(String id) {}

  nameExists(String nameUser) {
    return _HOME_LIST.any((home) => home.nameUser == nameUser);
  }
}
