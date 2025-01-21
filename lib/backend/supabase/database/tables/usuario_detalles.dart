import '../database.dart';

class UsuarioDetallesTable extends SupabaseTable<UsuarioDetallesRow> {
  @override
  String get tableName => 'usuario_detalles';

  @override
  UsuarioDetallesRow createRow(Map<String, dynamic> data) =>
      UsuarioDetallesRow(data);
}

class UsuarioDetallesRow extends SupabaseDataRow {
  UsuarioDetallesRow(super.data);

  @override
  SupabaseTable get table => UsuarioDetallesTable();

  String get idUsuario => getField<String>('id_usuario')!;
  set idUsuario(String value) => setField<String>('id_usuario', value);

  String get correo => getField<String>('correo')!;
  set correo(String value) => setField<String>('correo', value);
}
