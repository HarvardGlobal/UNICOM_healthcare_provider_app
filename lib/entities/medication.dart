class Medication {
  late final String id;
  late final String mpid;
  late final String name;
  late final String substanceName;
  late final String moietyName;
  late final String administrableDoseForm;
  late final String productUnitOfPresentation;
  late final String routesOfAdministration;
  late final String referenceStrength;
  late final String marketingAuthorizationHolderLabel;
  late final String country;
  late final String languageCode;

  Medication({
    required this.id,
    required this.mpid,
    required this.name,
    required this.substanceName,
    required this.moietyName,
    required this.administrableDoseForm,
    required this.productUnitOfPresentation,
    required this.routesOfAdministration,
    required this.referenceStrength,
    required this.marketingAuthorizationHolderLabel,
    required this.country,
    required this.languageCode,
  });

  Medication.compiled({
    required this.id,
    required this.mpid,
    required this.name,
    this.substanceName = '',
    this.moietyName = '',
    this.administrableDoseForm = '',
    this.productUnitOfPresentation = '',
    this.routesOfAdministration = '',
    this.referenceStrength = '',
    this.marketingAuthorizationHolderLabel = '',
    this.country = '',
    this.languageCode = '',
  });

  Medication.fromMap(Map<String, dynamic> medicationMap) {
    id = medicationMap['id'];
    mpid = medicationMap['mpid'];
    name = medicationMap['name'];
    substanceName = medicationMap['substanceName'];
    moietyName = medicationMap['moietyName'];
    administrableDoseForm = medicationMap['administrableDoseForm'];
    productUnitOfPresentation = medicationMap['productUnitOfPresentation'];
    routesOfAdministration = medicationMap['routesOfAdministration'];
    referenceStrength = medicationMap['referenceStrength'];
    marketingAuthorizationHolderLabel = medicationMap['marketingAuthorizationHolderLabel'];
    country = medicationMap['country'];
    languageCode = medicationMap['languageCode'];
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'mpid': mpid,
      'name': name,
      'substanceName': substanceName,
      'moietyName': moietyName,
      'administrableDoseForm': administrableDoseForm,
      'productUnitOfPresentation': productUnitOfPresentation,
      'routesOfAdministration': routesOfAdministration,
      'referenceStrength': referenceStrength,
      'marketingAuthorizationHolderLabel': marketingAuthorizationHolderLabel,
      'country': country,
      'languageCode': languageCode,
    };
  }

  @override
  String toString() {
    return '('
        'id: $id, '
        'mpid: $mpid, '
        'name: $name, '
        'substanceName: $substanceName '
        'moietyName: $moietyName '
        'administrableDoseForm: $administrableDoseForm '
        'productUnitOfPresentation: $productUnitOfPresentation '
        'routesOfAdministration: $routesOfAdministration '
        'referenceStrength: $referenceStrength '
        'marketingAuthorizationHolderLabel: $marketingAuthorizationHolderLabel '
        'country: $country '
        'languageCode: $languageCode '
      ')'
    ;
  }

  @override
  bool operator == (Object other) =>
      identical(this, other) 
        || other is Medication
        && runtimeType == other.runtimeType
        && id == other.id
        && mpid == other.mpid
        && country == other.country;

  @override
  int get hashCode => id.hashCode;
}
