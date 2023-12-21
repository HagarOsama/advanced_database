class PatientModel {
  String name, id, address,gender,disease;
  PatientModel(
      {required this.id,
      required this.name,
      required this.gender,
      required this.address,
    
      required this.disease
      });

  factory PatientModel.fromJSON(Map<String, dynamic> data) {
    return PatientModel(
        id: data["Patient_ID"],
        name: data["Patient_Name"],
        gender: data["Patient_Gender"],
        address: data["Patient_Address"],
       
        disease: data["Disease_Name"],
        );
  }
}
