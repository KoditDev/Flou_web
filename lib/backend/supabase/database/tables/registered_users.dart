import '../database.dart';

class RegisteredUsersTable extends SupabaseTable<RegisteredUsersRow> {
  @override
  String get tableName => 'Registered_users';

  @override
  RegisteredUsersRow createRow(Map<String, dynamic> data) =>
      RegisteredUsersRow(data);
}

class RegisteredUsersRow extends SupabaseDataRow {
  RegisteredUsersRow(super.data);

  @override
  SupabaseTable get table => RegisteredUsersTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);
}
