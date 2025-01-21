import '../database.dart';

class ServiceDetailsTable extends SupabaseTable<ServiceDetailsRow> {
  @override
  String get tableName => 'ServiceDetails';

  @override
  ServiceDetailsRow createRow(Map<String, dynamic> data) =>
      ServiceDetailsRow(data);
}

class ServiceDetailsRow extends SupabaseDataRow {
  ServiceDetailsRow(super.data);

  @override
  SupabaseTable get table => ServiceDetailsTable();

  int get idServiceDet => getField<int>('id_service_det')!;
  set idServiceDet(int value) => setField<int>('id_service_det', value);

  int get serviceDetId => getField<int>('service_det_id')!;
  set serviceDetId(int value) => setField<int>('service_det_id', value);

  String? get nombreServicio => getField<String>('nombre_servicio');
  set nombreServicio(String? value) =>
      setField<String>('nombre_servicio', value);

  String? get descripcion => getField<String>('descripcion');
  set descripcion(String? value) => setField<String>('descripcion', value);

  String? get imageUrl => getField<String>('image_url');
  set imageUrl(String? value) => setField<String>('image_url', value);

  double? get precio => getField<double>('precio');
  set precio(double? value) => setField<double>('precio', value);

  int? get order => getField<int>('order');
  set order(int? value) => setField<int>('order', value);
}
