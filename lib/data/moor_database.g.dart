// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moor_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Produto extends DataClass implements Insertable<Produto> {
  final String nome;
  final String marca;
  final String unidade;
  final double valorUnitario;
  Produto(
      {@required this.nome,
      @required this.marca,
      @required this.unidade,
      @required this.valorUnitario});
  factory Produto.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    final doubleType = db.typeSystem.forDartType<double>();
    return Produto(
      nome: stringType.mapFromDatabaseResponse(data['${effectivePrefix}nome']),
      marca:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}marca']),
      unidade:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}unidade']),
      valorUnitario: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}valor_unitario']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || nome != null) {
      map['nome'] = Variable<String>(nome);
    }
    if (!nullToAbsent || marca != null) {
      map['marca'] = Variable<String>(marca);
    }
    if (!nullToAbsent || unidade != null) {
      map['unidade'] = Variable<String>(unidade);
    }
    if (!nullToAbsent || valorUnitario != null) {
      map['valor_unitario'] = Variable<double>(valorUnitario);
    }
    return map;
  }

  ProdutosCompanion toCompanion(bool nullToAbsent) {
    return ProdutosCompanion(
      nome: nome == null && nullToAbsent ? const Value.absent() : Value(nome),
      marca:
          marca == null && nullToAbsent ? const Value.absent() : Value(marca),
      unidade: unidade == null && nullToAbsent
          ? const Value.absent()
          : Value(unidade),
      valorUnitario: valorUnitario == null && nullToAbsent
          ? const Value.absent()
          : Value(valorUnitario),
    );
  }

  factory Produto.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Produto(
      nome: serializer.fromJson<String>(json['nome']),
      marca: serializer.fromJson<String>(json['marca']),
      unidade: serializer.fromJson<String>(json['unidade']),
      valorUnitario: serializer.fromJson<double>(json['valorUnitario']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'nome': serializer.toJson<String>(nome),
      'marca': serializer.toJson<String>(marca),
      'unidade': serializer.toJson<String>(unidade),
      'valorUnitario': serializer.toJson<double>(valorUnitario),
    };
  }

  Produto copyWith(
          {String nome, String marca, String unidade, double valorUnitario}) =>
      Produto(
        nome: nome ?? this.nome,
        marca: marca ?? this.marca,
        unidade: unidade ?? this.unidade,
        valorUnitario: valorUnitario ?? this.valorUnitario,
      );
  @override
  String toString() {
    return (StringBuffer('Produto(')
          ..write('nome: $nome, ')
          ..write('marca: $marca, ')
          ..write('unidade: $unidade, ')
          ..write('valorUnitario: $valorUnitario')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(nome.hashCode,
      $mrjc(marca.hashCode, $mrjc(unidade.hashCode, valorUnitario.hashCode))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Produto &&
          other.nome == this.nome &&
          other.marca == this.marca &&
          other.unidade == this.unidade &&
          other.valorUnitario == this.valorUnitario);
}

class ProdutosCompanion extends UpdateCompanion<Produto> {
  final Value<String> nome;
  final Value<String> marca;
  final Value<String> unidade;
  final Value<double> valorUnitario;
  const ProdutosCompanion({
    this.nome = const Value.absent(),
    this.marca = const Value.absent(),
    this.unidade = const Value.absent(),
    this.valorUnitario = const Value.absent(),
  });
  ProdutosCompanion.insert({
    @required String nome,
    @required String marca,
    @required String unidade,
    @required double valorUnitario,
  })  : nome = Value(nome),
        marca = Value(marca),
        unidade = Value(unidade),
        valorUnitario = Value(valorUnitario);
  static Insertable<Produto> custom({
    Expression<String> nome,
    Expression<String> marca,
    Expression<String> unidade,
    Expression<double> valorUnitario,
  }) {
    return RawValuesInsertable({
      if (nome != null) 'nome': nome,
      if (marca != null) 'marca': marca,
      if (unidade != null) 'unidade': unidade,
      if (valorUnitario != null) 'valor_unitario': valorUnitario,
    });
  }

  ProdutosCompanion copyWith(
      {Value<String> nome,
      Value<String> marca,
      Value<String> unidade,
      Value<double> valorUnitario}) {
    return ProdutosCompanion(
      nome: nome ?? this.nome,
      marca: marca ?? this.marca,
      unidade: unidade ?? this.unidade,
      valorUnitario: valorUnitario ?? this.valorUnitario,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (nome.present) {
      map['nome'] = Variable<String>(nome.value);
    }
    if (marca.present) {
      map['marca'] = Variable<String>(marca.value);
    }
    if (unidade.present) {
      map['unidade'] = Variable<String>(unidade.value);
    }
    if (valorUnitario.present) {
      map['valor_unitario'] = Variable<double>(valorUnitario.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProdutosCompanion(')
          ..write('nome: $nome, ')
          ..write('marca: $marca, ')
          ..write('unidade: $unidade, ')
          ..write('valorUnitario: $valorUnitario')
          ..write(')'))
        .toString();
  }
}

class $ProdutosTable extends Produtos with TableInfo<$ProdutosTable, Produto> {
  final GeneratedDatabase _db;
  final String _alias;
  $ProdutosTable(this._db, [this._alias]);
  final VerificationMeta _nomeMeta = const VerificationMeta('nome');
  GeneratedTextColumn _nome;
  @override
  GeneratedTextColumn get nome => _nome ??= _constructNome();
  GeneratedTextColumn _constructNome() {
    return GeneratedTextColumn(
      'nome',
      $tableName,
      false,
    );
  }

  final VerificationMeta _marcaMeta = const VerificationMeta('marca');
  GeneratedTextColumn _marca;
  @override
  GeneratedTextColumn get marca => _marca ??= _constructMarca();
  GeneratedTextColumn _constructMarca() {
    return GeneratedTextColumn(
      'marca',
      $tableName,
      false,
    );
  }

  final VerificationMeta _unidadeMeta = const VerificationMeta('unidade');
  GeneratedTextColumn _unidade;
  @override
  GeneratedTextColumn get unidade => _unidade ??= _constructUnidade();
  GeneratedTextColumn _constructUnidade() {
    return GeneratedTextColumn(
      'unidade',
      $tableName,
      false,
    );
  }

  final VerificationMeta _valorUnitarioMeta =
      const VerificationMeta('valorUnitario');
  GeneratedRealColumn _valorUnitario;
  @override
  GeneratedRealColumn get valorUnitario =>
      _valorUnitario ??= _constructValorUnitario();
  GeneratedRealColumn _constructValorUnitario() {
    return GeneratedRealColumn(
      'valor_unitario',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [nome, marca, unidade, valorUnitario];
  @override
  $ProdutosTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'produtos';
  @override
  final String actualTableName = 'produtos';
  @override
  VerificationContext validateIntegrity(Insertable<Produto> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('nome')) {
      context.handle(
          _nomeMeta, nome.isAcceptableOrUnknown(data['nome'], _nomeMeta));
    } else if (isInserting) {
      context.missing(_nomeMeta);
    }
    if (data.containsKey('marca')) {
      context.handle(
          _marcaMeta, marca.isAcceptableOrUnknown(data['marca'], _marcaMeta));
    } else if (isInserting) {
      context.missing(_marcaMeta);
    }
    if (data.containsKey('unidade')) {
      context.handle(_unidadeMeta,
          unidade.isAcceptableOrUnknown(data['unidade'], _unidadeMeta));
    } else if (isInserting) {
      context.missing(_unidadeMeta);
    }
    if (data.containsKey('valor_unitario')) {
      context.handle(
          _valorUnitarioMeta,
          valorUnitario.isAcceptableOrUnknown(
              data['valor_unitario'], _valorUnitarioMeta));
    } else if (isInserting) {
      context.missing(_valorUnitarioMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  Produto map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Produto.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $ProdutosTable createAlias(String alias) {
    return $ProdutosTable(_db, alias);
  }
}

class Pedido extends DataClass implements Insertable<Pedido> {
  final double valorTotal;
  final String nome;
  Pedido({@required this.valorTotal, @required this.nome});
  factory Pedido.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final doubleType = db.typeSystem.forDartType<double>();
    final stringType = db.typeSystem.forDartType<String>();
    return Pedido(
      valorTotal: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}valor_total']),
      nome: stringType.mapFromDatabaseResponse(data['${effectivePrefix}nome']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || valorTotal != null) {
      map['valor_total'] = Variable<double>(valorTotal);
    }
    if (!nullToAbsent || nome != null) {
      map['nome'] = Variable<String>(nome);
    }
    return map;
  }

  PedidosCompanion toCompanion(bool nullToAbsent) {
    return PedidosCompanion(
      valorTotal: valorTotal == null && nullToAbsent
          ? const Value.absent()
          : Value(valorTotal),
      nome: nome == null && nullToAbsent ? const Value.absent() : Value(nome),
    );
  }

  factory Pedido.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Pedido(
      valorTotal: serializer.fromJson<double>(json['valorTotal']),
      nome: serializer.fromJson<String>(json['nome']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'valorTotal': serializer.toJson<double>(valorTotal),
      'nome': serializer.toJson<String>(nome),
    };
  }

  Pedido copyWith({double valorTotal, String nome}) => Pedido(
        valorTotal: valorTotal ?? this.valorTotal,
        nome: nome ?? this.nome,
      );
  @override
  String toString() {
    return (StringBuffer('Pedido(')
          ..write('valorTotal: $valorTotal, ')
          ..write('nome: $nome')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(valorTotal.hashCode, nome.hashCode));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Pedido &&
          other.valorTotal == this.valorTotal &&
          other.nome == this.nome);
}

class PedidosCompanion extends UpdateCompanion<Pedido> {
  final Value<double> valorTotal;
  final Value<String> nome;
  const PedidosCompanion({
    this.valorTotal = const Value.absent(),
    this.nome = const Value.absent(),
  });
  PedidosCompanion.insert({
    @required double valorTotal,
    @required String nome,
  })  : valorTotal = Value(valorTotal),
        nome = Value(nome);
  static Insertable<Pedido> custom({
    Expression<double> valorTotal,
    Expression<String> nome,
  }) {
    return RawValuesInsertable({
      if (valorTotal != null) 'valor_total': valorTotal,
      if (nome != null) 'nome': nome,
    });
  }

  PedidosCompanion copyWith({Value<double> valorTotal, Value<String> nome}) {
    return PedidosCompanion(
      valorTotal: valorTotal ?? this.valorTotal,
      nome: nome ?? this.nome,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (valorTotal.present) {
      map['valor_total'] = Variable<double>(valorTotal.value);
    }
    if (nome.present) {
      map['nome'] = Variable<String>(nome.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PedidosCompanion(')
          ..write('valorTotal: $valorTotal, ')
          ..write('nome: $nome')
          ..write(')'))
        .toString();
  }
}

class $PedidosTable extends Pedidos with TableInfo<$PedidosTable, Pedido> {
  final GeneratedDatabase _db;
  final String _alias;
  $PedidosTable(this._db, [this._alias]);
  final VerificationMeta _valorTotalMeta = const VerificationMeta('valorTotal');
  GeneratedRealColumn _valorTotal;
  @override
  GeneratedRealColumn get valorTotal => _valorTotal ??= _constructValorTotal();
  GeneratedRealColumn _constructValorTotal() {
    return GeneratedRealColumn(
      'valor_total',
      $tableName,
      false,
    );
  }

  final VerificationMeta _nomeMeta = const VerificationMeta('nome');
  GeneratedTextColumn _nome;
  @override
  GeneratedTextColumn get nome => _nome ??= _constructNome();
  GeneratedTextColumn _constructNome() {
    return GeneratedTextColumn(
      'nome',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [valorTotal, nome];
  @override
  $PedidosTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'pedidos';
  @override
  final String actualTableName = 'pedidos';
  @override
  VerificationContext validateIntegrity(Insertable<Pedido> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('valor_total')) {
      context.handle(
          _valorTotalMeta,
          valorTotal.isAcceptableOrUnknown(
              data['valor_total'], _valorTotalMeta));
    } else if (isInserting) {
      context.missing(_valorTotalMeta);
    }
    if (data.containsKey('nome')) {
      context.handle(
          _nomeMeta, nome.isAcceptableOrUnknown(data['nome'], _nomeMeta));
    } else if (isInserting) {
      context.missing(_nomeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  Pedido map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Pedido.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $PedidosTable createAlias(String alias) {
    return $PedidosTable(_db, alias);
  }
}

class Empenho extends DataClass implements Insertable<Empenho> {
  final double valorTotal;
  final double saldoTotal;
  Empenho({@required this.valorTotal, @required this.saldoTotal});
  factory Empenho.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final doubleType = db.typeSystem.forDartType<double>();
    return Empenho(
      valorTotal: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}valor_total']),
      saldoTotal: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}saldo_total']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || valorTotal != null) {
      map['valor_total'] = Variable<double>(valorTotal);
    }
    if (!nullToAbsent || saldoTotal != null) {
      map['saldo_total'] = Variable<double>(saldoTotal);
    }
    return map;
  }

  EmpenhosCompanion toCompanion(bool nullToAbsent) {
    return EmpenhosCompanion(
      valorTotal: valorTotal == null && nullToAbsent
          ? const Value.absent()
          : Value(valorTotal),
      saldoTotal: saldoTotal == null && nullToAbsent
          ? const Value.absent()
          : Value(saldoTotal),
    );
  }

  factory Empenho.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Empenho(
      valorTotal: serializer.fromJson<double>(json['valorTotal']),
      saldoTotal: serializer.fromJson<double>(json['saldoTotal']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'valorTotal': serializer.toJson<double>(valorTotal),
      'saldoTotal': serializer.toJson<double>(saldoTotal),
    };
  }

  Empenho copyWith({double valorTotal, double saldoTotal}) => Empenho(
        valorTotal: valorTotal ?? this.valorTotal,
        saldoTotal: saldoTotal ?? this.saldoTotal,
      );
  @override
  String toString() {
    return (StringBuffer('Empenho(')
          ..write('valorTotal: $valorTotal, ')
          ..write('saldoTotal: $saldoTotal')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(valorTotal.hashCode, saldoTotal.hashCode));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Empenho &&
          other.valorTotal == this.valorTotal &&
          other.saldoTotal == this.saldoTotal);
}

class EmpenhosCompanion extends UpdateCompanion<Empenho> {
  final Value<double> valorTotal;
  final Value<double> saldoTotal;
  const EmpenhosCompanion({
    this.valorTotal = const Value.absent(),
    this.saldoTotal = const Value.absent(),
  });
  EmpenhosCompanion.insert({
    @required double valorTotal,
    @required double saldoTotal,
  })  : valorTotal = Value(valorTotal),
        saldoTotal = Value(saldoTotal);
  static Insertable<Empenho> custom({
    Expression<double> valorTotal,
    Expression<double> saldoTotal,
  }) {
    return RawValuesInsertable({
      if (valorTotal != null) 'valor_total': valorTotal,
      if (saldoTotal != null) 'saldo_total': saldoTotal,
    });
  }

  EmpenhosCompanion copyWith(
      {Value<double> valorTotal, Value<double> saldoTotal}) {
    return EmpenhosCompanion(
      valorTotal: valorTotal ?? this.valorTotal,
      saldoTotal: saldoTotal ?? this.saldoTotal,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (valorTotal.present) {
      map['valor_total'] = Variable<double>(valorTotal.value);
    }
    if (saldoTotal.present) {
      map['saldo_total'] = Variable<double>(saldoTotal.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('EmpenhosCompanion(')
          ..write('valorTotal: $valorTotal, ')
          ..write('saldoTotal: $saldoTotal')
          ..write(')'))
        .toString();
  }
}

class $EmpenhosTable extends Empenhos with TableInfo<$EmpenhosTable, Empenho> {
  final GeneratedDatabase _db;
  final String _alias;
  $EmpenhosTable(this._db, [this._alias]);
  final VerificationMeta _valorTotalMeta = const VerificationMeta('valorTotal');
  GeneratedRealColumn _valorTotal;
  @override
  GeneratedRealColumn get valorTotal => _valorTotal ??= _constructValorTotal();
  GeneratedRealColumn _constructValorTotal() {
    return GeneratedRealColumn(
      'valor_total',
      $tableName,
      false,
    );
  }

  final VerificationMeta _saldoTotalMeta = const VerificationMeta('saldoTotal');
  GeneratedRealColumn _saldoTotal;
  @override
  GeneratedRealColumn get saldoTotal => _saldoTotal ??= _constructSaldoTotal();
  GeneratedRealColumn _constructSaldoTotal() {
    return GeneratedRealColumn(
      'saldo_total',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [valorTotal, saldoTotal];
  @override
  $EmpenhosTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'empenhos';
  @override
  final String actualTableName = 'empenhos';
  @override
  VerificationContext validateIntegrity(Insertable<Empenho> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('valor_total')) {
      context.handle(
          _valorTotalMeta,
          valorTotal.isAcceptableOrUnknown(
              data['valor_total'], _valorTotalMeta));
    } else if (isInserting) {
      context.missing(_valorTotalMeta);
    }
    if (data.containsKey('saldo_total')) {
      context.handle(
          _saldoTotalMeta,
          saldoTotal.isAcceptableOrUnknown(
              data['saldo_total'], _saldoTotalMeta));
    } else if (isInserting) {
      context.missing(_saldoTotalMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  Empenho map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Empenho.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $EmpenhosTable createAlias(String alias) {
    return $EmpenhosTable(_db, alias);
  }
}

class Fornecedor extends DataClass implements Insertable<Fornecedor> {
  final String nome;
  final String cnpj;
  Fornecedor({@required this.nome, @required this.cnpj});
  factory Fornecedor.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    return Fornecedor(
      nome: stringType.mapFromDatabaseResponse(data['${effectivePrefix}nome']),
      cnpj: stringType.mapFromDatabaseResponse(data['${effectivePrefix}cnpj']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || nome != null) {
      map['nome'] = Variable<String>(nome);
    }
    if (!nullToAbsent || cnpj != null) {
      map['cnpj'] = Variable<String>(cnpj);
    }
    return map;
  }

  FornecedorsCompanion toCompanion(bool nullToAbsent) {
    return FornecedorsCompanion(
      nome: nome == null && nullToAbsent ? const Value.absent() : Value(nome),
      cnpj: cnpj == null && nullToAbsent ? const Value.absent() : Value(cnpj),
    );
  }

  factory Fornecedor.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Fornecedor(
      nome: serializer.fromJson<String>(json['nome']),
      cnpj: serializer.fromJson<String>(json['cnpj']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'nome': serializer.toJson<String>(nome),
      'cnpj': serializer.toJson<String>(cnpj),
    };
  }

  Fornecedor copyWith({String nome, String cnpj}) => Fornecedor(
        nome: nome ?? this.nome,
        cnpj: cnpj ?? this.cnpj,
      );
  @override
  String toString() {
    return (StringBuffer('Fornecedor(')
          ..write('nome: $nome, ')
          ..write('cnpj: $cnpj')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(nome.hashCode, cnpj.hashCode));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Fornecedor &&
          other.nome == this.nome &&
          other.cnpj == this.cnpj);
}

class FornecedorsCompanion extends UpdateCompanion<Fornecedor> {
  final Value<String> nome;
  final Value<String> cnpj;
  const FornecedorsCompanion({
    this.nome = const Value.absent(),
    this.cnpj = const Value.absent(),
  });
  FornecedorsCompanion.insert({
    @required String nome,
    @required String cnpj,
  })  : nome = Value(nome),
        cnpj = Value(cnpj);
  static Insertable<Fornecedor> custom({
    Expression<String> nome,
    Expression<String> cnpj,
  }) {
    return RawValuesInsertable({
      if (nome != null) 'nome': nome,
      if (cnpj != null) 'cnpj': cnpj,
    });
  }

  FornecedorsCompanion copyWith({Value<String> nome, Value<String> cnpj}) {
    return FornecedorsCompanion(
      nome: nome ?? this.nome,
      cnpj: cnpj ?? this.cnpj,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (nome.present) {
      map['nome'] = Variable<String>(nome.value);
    }
    if (cnpj.present) {
      map['cnpj'] = Variable<String>(cnpj.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FornecedorsCompanion(')
          ..write('nome: $nome, ')
          ..write('cnpj: $cnpj')
          ..write(')'))
        .toString();
  }
}

class $FornecedorsTable extends Fornecedors
    with TableInfo<$FornecedorsTable, Fornecedor> {
  final GeneratedDatabase _db;
  final String _alias;
  $FornecedorsTable(this._db, [this._alias]);
  final VerificationMeta _nomeMeta = const VerificationMeta('nome');
  GeneratedTextColumn _nome;
  @override
  GeneratedTextColumn get nome => _nome ??= _constructNome();
  GeneratedTextColumn _constructNome() {
    return GeneratedTextColumn(
      'nome',
      $tableName,
      false,
    );
  }

  final VerificationMeta _cnpjMeta = const VerificationMeta('cnpj');
  GeneratedTextColumn _cnpj;
  @override
  GeneratedTextColumn get cnpj => _cnpj ??= _constructCnpj();
  GeneratedTextColumn _constructCnpj() {
    return GeneratedTextColumn(
      'cnpj',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [nome, cnpj];
  @override
  $FornecedorsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'fornecedors';
  @override
  final String actualTableName = 'fornecedors';
  @override
  VerificationContext validateIntegrity(Insertable<Fornecedor> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('nome')) {
      context.handle(
          _nomeMeta, nome.isAcceptableOrUnknown(data['nome'], _nomeMeta));
    } else if (isInserting) {
      context.missing(_nomeMeta);
    }
    if (data.containsKey('cnpj')) {
      context.handle(
          _cnpjMeta, cnpj.isAcceptableOrUnknown(data['cnpj'], _cnpjMeta));
    } else if (isInserting) {
      context.missing(_cnpjMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  Fornecedor map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Fornecedor.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $FornecedorsTable createAlias(String alias) {
    return $FornecedorsTable(_db, alias);
  }
}

abstract class _$MoorDatabase extends GeneratedDatabase {
  _$MoorDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $ProdutosTable _produtos;
  $ProdutosTable get produtos => _produtos ??= $ProdutosTable(this);
  $PedidosTable _pedidos;
  $PedidosTable get pedidos => _pedidos ??= $PedidosTable(this);
  $EmpenhosTable _empenhos;
  $EmpenhosTable get empenhos => _empenhos ??= $EmpenhosTable(this);
  $FornecedorsTable _fornecedors;
  $FornecedorsTable get fornecedors => _fornecedors ??= $FornecedorsTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [produtos, pedidos, empenhos, fornecedors];
}
