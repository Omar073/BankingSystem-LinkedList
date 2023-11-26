class Center {
  String _centerName;
  String _centerAddress;
  String _addressMapsLink;
  String _activeHours;
  int _centerCapacity;

  Center({
    required String centerName,
    required String centerAddress,
    required String addressMapsLink,
    required String activeHours,
    required int centerCapacity,
  })  : _centerName = centerName,
        _centerAddress = centerAddress,
        _addressMapsLink = addressMapsLink,
        _activeHours = activeHours,
        _centerCapacity = centerCapacity;

  // Getter methods
  String get centerName => _centerName;
  String get centerAddress => _centerAddress;
  String get addressMapsLink => _addressMapsLink;
  String get activeHours => _activeHours;
  int get centerCapacity => _centerCapacity;

  // Setter methods
  set centerName(String value) {
    _centerName = value;
  }

  set centerAddress(String value) {
    _centerAddress = value;
  }

  set addressMapsLink(String value) {
    _addressMapsLink = value;
  }

  set activeHours(String value) {
    _activeHours = value;
  }

  set centerCapacity(int value) {
    _centerCapacity = value;
  }
}
