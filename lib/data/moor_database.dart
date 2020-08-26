import 'package:APP_Linux_Empenho/data/dao/ProdutoDAO.dart';
import 'package:moor_flutter/moor_flutter.dart';

part 'moor_database.g.dart';

class Fornecedors extends Table {

  IntColumn get id => integer().autoIncrement().call();
  TextColumn get nome => text()();
  TextColumn get cnpj => text()();

}

class Empenhos extends Table {

  IntColumn get id => integer().autoIncrement().call();
  IntColumn get id_fornecedor => integer().call();
  RealColumn get valorTotal => real()();
  RealColumn get saldoTotal => real()();

}

class Pedidos extends Table {

  IntColumn get id => integer().autoIncrement().call();
  IntColumn get id_empenho => integer().call();
  IntColumn get quantidade => integer().call();
  RealColumn get valorTotal => real()();
  TextColumn get nome => text()();

}

class Produtos extends Table {

  //autoIncrement == Integer Primary Key
  IntColumn get id => integer().autoIncrement().call();
  IntColumn get id_pedido => integer().call();
  TextColumn get nome => text()();
  TextColumn get marca => text()();
  TextColumn get unidade => text()();
  RealColumn get valorUnitario => real()();

}

@UseMoor(tables: [Produtos, Pedidos, Empenhos, Fornecedors]) 
class MoorDatabase extends _$MoorDatabase {

  static MoorDatabase instance = MoorDatabase._internal();

  ProdutoDAO produtoDAO = ProdutoDAO(instance);

  MoorDatabase._internal(): super(FlutterQueryExecutor.inDatabaseFolder(path: 'db.sqlite'));

  @override
  // TODO: implement schemaVersion
  int get schemaVersion => 1;
}