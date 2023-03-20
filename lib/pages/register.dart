import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:puskesmas_nganjuk2/models/model_pasien.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var _formKey = GlobalKey<FormState>();
  TextEditingController tName = TextEditingController();
  TextEditingController tNik = TextEditingController();
  TextEditingController tNo = TextEditingController();
  TextEditingController tSandi = TextEditingController();
  TextEditingController tAlamat = TextEditingController();
  TextEditingController tKonfirm = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var bodysmall = Theme.of(context).textTheme.bodySmall;
    var bodymedium = Theme.of(context).textTheme.bodySmall;
    var headmedium = Theme.of(context).textTheme.headlineMedium;
    var headlarge = Theme.of(context).textTheme.headlineLarge;
    return Scaffold(
      appBar: AppBar(
        title: Text("Daftar Pelayanan", style: headlarge),
        backgroundColor: Color(0xfff1f1f1),
        automaticallyImplyLeading: true,
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Container(
              margin: EdgeInsets.all(14),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 8),
                    child: TextFormField(
                      style: headmedium,
                      controller: tName,
                      validator: (value) {
                        if (value.toString().isEmpty) {
                          return "Masukkan Nama Lengkap Anda";
                        }
                      },
                      decoration: InputDecoration(
                        labelText: "Nama Lengkap",
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 8),
                    child: TextFormField(
                      style: headmedium,
                      controller: tNik,
                      validator: (value) {
                        if (value.toString().isEmpty) {
                          return "Masukkan NIK KTP Anda";
                        }
                      },
                      decoration: InputDecoration(
                        labelText: "Nomor KTP",
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 8),
                    child: TextFormField(
                      style: headmedium,
                      controller: tNo,
                      validator: (value) {
                        if (value.toString().isEmpty) {
                          return "Masukkan Nomor Whatsapp Anda";
                        }
                      },
                      decoration: InputDecoration(
                        labelText: "Nomor Whatsapp",
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 8),
                    child: TextFormField(
                      style: headmedium,
                      controller: tAlamat,
                      validator: (value) {
                        if (value.toString().isEmpty) {
                          return "Masukkan Alamat Anda";
                        }
                      },
                      decoration: InputDecoration(
                        labelText: "Alamat",
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 8),
                    child: TextFormField(
                      style: headmedium,
                      controller: tSandi,
                      obscureText: _obscure,
                      validator: (value) {
                        if (value.toString().isEmpty) {
                          return "Masukkan Kata Sandi";
                        }
                      },
                      decoration: InputDecoration(
                          labelText: "Kata Sandi",
                          suffixIcon: GestureDetector(
                            child: _obscure
                                ? const Icon(Icons.visibility_off)
                                : const Icon(Icons.visibility),
                            onTap: () {
                              setState(() {
                                _toglePass();
                              });
                            },
                          )),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 8),
                    child: TextFormField(
                      style: headmedium,
                      controller: tKonfirm,
                      obscureText: _obscure2,
                      validator: (value) {
                        if (value.toString().isEmpty) {
                          return "Masukkan Konfirmasi Kata Sandi";
                        }
                      },
                      decoration: InputDecoration(
                          labelText: "Konfirmasi Kata Sandi",
                          suffixIcon: GestureDetector(
                            child: _obscure2
                                ? const Icon(Icons.visibility_off)
                                : const Icon(Icons.visibility),
                            onTap: () {
                              setState(() {
                                _toglePass2();
                              });
                            },
                          )),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 8),
                    child: CheckboxListTile(
                        title: Text(
                          "Dengan ini saya menyetujui Persyaratan pada aplikasi ini",
                          style: Theme.of(context).textTheme.labelSmall,
                        ),
                        contentPadding: EdgeInsets.zero,
                        controlAffinity: ListTileControlAffinity.leading,
                        activeColor: Color(0xff3FBBC0),
                        value: _isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            _isChecked = value!;
                          });
                        }),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 14),
                    alignment: Alignment.center,
                    child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if (_formKey.currentState!.validate()) {
                              _btRegister(context);
                            }
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            minimumSize:
                                Size(double.infinity, double.minPositive),
                            padding: EdgeInsets.all(8)),
                        child: Text(
                          "Daftar",
                          style: Theme.of(context).textTheme.titleLarge,
                        )),
                  ),
                ],
              )),
        ),
      ),
    );
  }

  bool _isChecked = false;

  bool _obscure = true, _obscure2 = true;

  void _toglePass() {
    setState(() {
      _obscure = !_obscure;
    });
  }

  void _toglePass2() {
    setState(() {
      _obscure2 = !_obscure2;
    });
  }

  void _showDialog(BuildContext context, String title, String content) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text(
                title,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              content: Text(
                content,
                style: Theme.of(context).textTheme.displayMedium,
              ),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("OK"))
              ],
            ));
  }

  void _btRegister(BuildContext context) {
    setState(() {
      String nama = tName.text;
      String ktp = tNik.text;
      String nowa = tNo.text;
      String alamat = tAlamat.text;
      String sandi = tSandi.text;
      String konfirm = tKonfirm.text;

      if (sandi != konfirm) {
        _showDialog(context, "Konfirmasi Kata Sandi",
            "Konfirmasi kata sandi yang anda masukkan tidak sesuai.");
      } else if (_isChecked == false) {
        _showDialog(context, "Centang Persetujuan",
            "Klik centang jika anda menyetujui peraturan pada aplikasi ini.");
      } else {
        PostPasien.registerPasien(nama, ktp, nowa, sandi).then((value) {
          if (value.kode == 1) {
            Navigator.pushNamed(context, '/bottom_view');
          } else {
            _showDialog(context, "Error",
                "Gagal mendaftarkan akun anda. Mohon pastikan bahwa data yang anda masukkan benar dan koneksi internet anda lancar.");
          }
        });
      }
    });
  }
}
