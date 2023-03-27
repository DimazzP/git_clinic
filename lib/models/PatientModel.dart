import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:puskesmas_nganjuk2/helpers/ApiHelper.dart';

class PatientModel {
  int? kode;
  String? pesan;
  DataPatient? data;

  PatientModel({this.kode, this.pesan, this.data});

  static Future<PatientModel> registerPasien(String pasien_nama,
      String pasien_nik, String pasien_nowa, String pasien_sandi) async {
    Uri url = Uri.parse(Apihelper.url + 'register_pasien.php');
    var response = await http.post(url, body: {
      "pasien_nama": pasien_nama,
      "pasien_nik": pasien_nik,
      "pasien_nowa": pasien_nowa,
      "pasien_sandi": pasien_sandi
    });

    var body = json.decode(response.body);
    return PatientModel(
      kode: body['kode'],
      pesan: body['pesan'],
      data: body['data'],
    );
  }

  static Future<PatientModel> loginPasien(String nowa, String sandi) async {
    Uri url = Uri.parse(Apihelper.url + 'login_pasien.php');
    var response = await http.post(url, body: {
      'pasien_nowa': nowa,
      'pasien_sandi': sandi,
    });

    var body = json.decode(response.body);
    return PatientModel(
      kode: body['kode'],
      pesan: body['pesan'],
      data: body['data'],
    );
  }
}

class DataPatient {
  String? pasien_id;
  String? pasien_nama;
  String? pasien_nik;
  String? pasien_nowa;
  String? pasien_sandi;
  DataPatient(
      {this.pasien_id,
      this.pasien_nama,
      this.pasien_nik,
      this.pasien_nowa,
      this.pasien_sandi});
}
