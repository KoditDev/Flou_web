import '../database.dart';

class ServiciosTable extends SupabaseTable<ServiciosRow> {
  @override
  String get tableName => 'Servicios';

  @override
  ServiciosRow createRow(Map<String, dynamic> data) => ServiciosRow(data);
}

class ServiciosRow extends SupabaseDataRow {
  ServiciosRow(super.data);

  @override
  SupabaseTable get table => ServiciosTable();

  int get idServicio => getField<int>('id_servicio')!;
  set idServicio(int value) => setField<int>('id_servicio', value);

  String get nombreServicio => getField<String>('nombre_servicio')!;
  set nombreServicio(String value) =>
      setField<String>('nombre_servicio', value);

  String? get descripcion => getField<String>('descripcion');
  set descripcion(String? value) => setField<String>('descripcion', value);

  double? get precio => getField<double>('precio');
  set precio(double? value) => setField<double>('precio', value);

  String? get imageUrl => getField<String>('image_url');
  set imageUrl(String? value) => setField<String>('image_url', value);

  int? get order => getField<int>('order');
  set order(int? value) => setField<int>('order', value);
}
