import 'package:moor_flutter/moor_flutter.dart';
import '../moor_database.dart';

part 'ProdutoDAO.g.dart';

@UseDao(tables: [Produtos, Pedidos, Empenhos, Fornecedors])
class ProdutoDAO extends DatabaseAccessor<MoorDatabase> with _$ProdutoDAOMixin {

  ProdutoDAO(MoorDatabase db) : super(db);

}