import 'dart:convert';

import 'package:http/http.dart' as http;

class PostPasien {
  int? kode;
  String? pesan;
  String? pasien_id;
  String? pasien_nama;
  String? pasien_nik;
  String? pasien_nowa;
  String? pasien_sandi;

  PostPasien({this.kode, this.pesan});

  static Future<PostPasien> registerPasien(String pasien_nama,
      String pasien_nik, String pasien_nowa, String pasien_sandi) async {
    Uri url = Uri.parse('http://172.16.110.21/apiklinik/register_pasien.php');
    var response = await http.post(url, body: {
      "pasien_nama": pasien_nama,
      "pasien_nik": pasien_nik,
      "pasien_nowa": pasien_nowa,
      "pasien_sandi": pasien_sandi
    });

    var data = json.decode(response.body);
    return PostPasien(
      kode: data['kode'],
      pesan: data['pesan'],
    );
  }
}

class LoginPasien {
  int? kode;
  String? pesan;
  String? nowa;
  String? sandi;

  LoginPasien({this.kode, this.pesan});
  static Future<LoginPasien> loginPasien(String nowa, String sandi) async {
    Uri url = Uri.parse('http://172.16.110.21/apiklinik/login_pasien.php');
    var response = await http.post(url, body: {
      'pasien_nowa': nowa,
      'pasien_sandi': sandi,
    });

    var data = json.decode(response.body);
    return LoginPasien(
      kode: data['kode'],
      pesan: data['pesan'],
    );
  }
}
