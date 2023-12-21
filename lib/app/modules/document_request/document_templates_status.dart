enum DocumentTemplatesStatus {
  loading,
  success,
  error,
  none,
}

extension DocumentTemplatesStatusExt on DocumentTemplatesStatus {
  static var _value;
  get value => _value;
  set value(value) => _value = value;
}
