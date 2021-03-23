import 'package:meta/meta.dart';

const imagenProduct =
    'https://www.crm2go.net/wp-content/uploads/2019/08/15023797586437_product-marketing.jpeg';

class CategoriaModel {
  final String categoriaNombre;
  final List<ProductoModel> productos;

  const CategoriaModel(
      {@required this.categoriaNombre, @required this.productos});
}

class ProductoModel {
  final String nombreProducto;
  final String precio;
  final String imagen;
  final String descriprion;

  const ProductoModel(
      {@required this.nombreProducto,
      @required this.precio,
      @required this.imagen,
      @required this.descriprion});
}

const listCategorias = [
  CategoriaModel(categoriaNombre: 'Algo1', productos: [
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
  ]),
  CategoriaModel(categoriaNombre: 'Algo2', productos: [
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
  ]),
  CategoriaModel(categoriaNombre: 'Algo3', productos: [
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
  ]),
  CategoriaModel(categoriaNombre: 'Algo4', productos: [
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
  ]),
  CategoriaModel(categoriaNombre: 'Algo5', productos: [
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
  ]),
  CategoriaModel(categoriaNombre: 'Algo6', productos: [
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
  ]),
  CategoriaModel(categoriaNombre: 'Algo7', productos: [
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
  ]),
  CategoriaModel(categoriaNombre: 'Algo8', productos: [
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
  ]),
  CategoriaModel(categoriaNombre: 'Algo9', productos: [
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
  ]),
  CategoriaModel(categoriaNombre: 'Algo10', productos: [
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
  ]),
  CategoriaModel(categoriaNombre: 'Algo11', productos: [
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
  ]),
  CategoriaModel(categoriaNombre: 'Algo12', productos: [
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
  ]),
  CategoriaModel(categoriaNombre: 'Algo13', productos: [
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
  ]),
  CategoriaModel(categoriaNombre: 'Algo14', productos: [
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
  ]),
  CategoriaModel(categoriaNombre: 'Algo15', productos: [
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
  ]),
  CategoriaModel(categoriaNombre: 'Algo16', productos: [
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
  ]),
  CategoriaModel(categoriaNombre: 'Algo17', productos: [
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
  ]),
  CategoriaModel(categoriaNombre: 'Algo18', productos: [
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
  ]),
  CategoriaModel(categoriaNombre: 'Algo19', productos: [
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
  ]),
  CategoriaModel(categoriaNombre: 'Algo20', productos: [
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
  ]),
  CategoriaModel(categoriaNombre: 'Algo21', productos: [
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
  ]),
  CategoriaModel(categoriaNombre: 'Algo22', productos: [
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
  ]),
  CategoriaModel(categoriaNombre: 'Algo23', productos: [
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
  ]),
  CategoriaModel(categoriaNombre: 'Algo24', productos: [
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
  ]),
  CategoriaModel(categoriaNombre: 'Algo25', productos: [
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
  ]),
  CategoriaModel(categoriaNombre: 'Algo26', productos: [
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
  ]),
  CategoriaModel(categoriaNombre: 'Algo27', productos: [
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
  ]),
  CategoriaModel(categoriaNombre: 'Algo28', productos: [
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
  ]),
  CategoriaModel(categoriaNombre: 'Algo29', productos: [
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
  ]),
  CategoriaModel(categoriaNombre: 'Algo30', productos: [
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
    ProductoModel(
        nombreProducto: 'jbefbf',
        precio: '20.00',
        imagen: imagenProduct,
        descriprion: 'nfjnf'),
  ]),
 
 ];
