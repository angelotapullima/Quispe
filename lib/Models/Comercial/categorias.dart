import 'package:meta/meta.dart';

class CategoriasModel {
  final String? id;
  final String? nombre;
  final String? foto;

  const CategoriasModel({
    @required this.id,
    @required this.nombre,
    this.foto,
  });
}

const categoryList = [
  CategoriasModel(id: '1', nombre: 'Zapatillas'),
  CategoriasModel(id: '2', nombre: 'Moda para Hombre'),
  CategoriasModel(id: '3', nombre: 'Moda para Mujer'),
  CategoriasModel(id: '4', nombre: 'Belleza'),
  CategoriasModel(id: '5', nombre: 'Electrodomésticos'),
  CategoriasModel(id: '6', nombre: 'Deportes'),
  CategoriasModel(id: '7', nombre: 'supermercado'),
  CategoriasModel(id: '8', nombre: 'Relojes'),
  CategoriasModel(id: '9', nombre: 'Lentes'),
  CategoriasModel(id: '10', nombre: 'Juguetes'),
  CategoriasModel(id: '11', nombre: 'Celulares y smartphones'),
  CategoriasModel(id: '12', nombre: 'Consolas y videojuegos'),
  CategoriasModel(id: '13', nombre: 'Librería'),
  CategoriasModel(id: '14', nombre: 'Computación'),
  CategoriasModel(id: '15', nombre: 'Libros'),
  CategoriasModel(id: '16', nombre: 'Deportes'),
  CategoriasModel(id: '17', nombre: 'supermercado'),
  CategoriasModel(id: '18', nombre: 'Relojes'),
  CategoriasModel(id: '19', nombre: 'Lentes'),
  CategoriasModel(id: '20', nombre: 'Juguetes'),
];

const listMarcas = [
  CategoriasModel(id: '1', nombre: 'Nike'),
  CategoriasModel(id: '2', nombre: 'Adidas'),
  CategoriasModel(id: '3', nombre: 'Reebook'),
  CategoriasModel(id: '4', nombre: 'Samsung'),
  CategoriasModel(id: '5', nombre: 'Mossimo'),
  CategoriasModel(id: '6', nombre: 'Él'),
  CategoriasModel(id: '7', nombre: 'LENOVO'),
  CategoriasModel(id: '8', nombre: 'DELL'),
  CategoriasModel(id: '9', nombre: 'Panasonic'),
  CategoriasModel(id: '10', nombre: 'Juguetes'),
  CategoriasModel(id: '11', nombre: 'Celulares y smartphones'),
  CategoriasModel(id: '12', nombre: 'Consolas y videojuegos'),
  CategoriasModel(id: '13', nombre: 'Librería'),
  CategoriasModel(id: '14', nombre: 'Computación'),
  CategoriasModel(id: '15', nombre: 'Libros'),
  CategoriasModel(id: '16', nombre: 'Deportes'),
  CategoriasModel(id: '17', nombre: 'supermercado'),
  CategoriasModel(id: '18', nombre: 'Relojes'),
  CategoriasModel(id: '19', nombre: 'Lentes'),
  CategoriasModel(id: '20', nombre: 'Juguetes'),
];

const listSubcategorias = [
  CategoriasModel(
    id: '1',
    nombre: 'Fútbol',
    foto: 'https://home.ripley.com.pe/Attachment/WOP_5/2084246357805/2084246357805_2.jpg',
  ),
  CategoriasModel(
    id: '2',
    nombre: 'Running',
    foto: 'https://www.runnics.com/wp-content/uploads/2020/04/imagen-2-20365-e4350a03-12211-NORMAL-600x375.jpg',
  ),
  CategoriasModel(
    id: '3',
    nombre: 'Skate',
    foto:
        'https://media.revistagq.com/photos/5ca5e4bd3492a90ef0bee97d/master/w_1200,h_800,c_limit/zapatillas_skate_sneakers_moda_hombre_tendencias_312206596.jpg',
  ),
  CategoriasModel(
    id: '4',
    nombre: 'Basket',
    foto: 'https://as01.epimg.net/showroom/imagenes/2018/03/30/portada/1522395933_295228_1522397410_sumario_normal.jpg',
  ),
  CategoriasModel(
    id: '5',
    nombre: 'Trabajo y seguridad',
    foto: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5bRu2RYQ08k7bXfs1q0Nl0SKmHM6VonQvnw&usqp=CAU',
  ),
  CategoriasModel(
    id: '6',
    nombre: 'Outdoor',
    foto: 'https://falabella.scene7.com/is/image/FalabellaPE/882006460_1?wid=800&hei=800&qlt=70',
  ),
  CategoriasModel(
    id: '7',
    nombre: 'Botas',
    foto:
        'https://ae01.alicdn.com/kf/H8ae66d3de40841adbf5f73624d72b221F/DECARSDZ-hombres-botas-de-Primavera-de-2021-nuevos-zapatos-de-moda-de-hombre-al-aire-libre.jpg_q50.jpg',
  ),
];
