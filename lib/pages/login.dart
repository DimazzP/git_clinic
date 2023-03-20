import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:puskesmas_nganjuk2/models/model_pasien.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _obscure = true;

  void _toglePass() {
    setState(() {
      _obscure = !_obscure;
    });
  }

  var _formKey = GlobalKey<FormState>();
  TextEditingController tNowa = TextEditingController();
  TextEditingController tSandi = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff1f1f1),
      body: Form(
        key: _formKey,
        child: Center(
            child: Container(
          margin: EdgeInsets.only(top: 14, left: 14, right: 14),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/logodinas.png"),
                  Container(
                    margin: EdgeInsets.only(left: 6, right: 6),
                    child: Text(
                      "Klinik Giri Husada",
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                  ),
                  Image.asset("assets/images/logopuskesmas.png"),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 32),
                padding: EdgeInsets.all(14),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffd9d9d9),
                ),
                child: Text(
                  "Aplikasi Pendaftaran Pasien\nKlinik Giri Husada",
                  style: Theme.of(context).textTheme.displayMedium,
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Image.asset("assets/images/ilustrasi.png"),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: TextFormField(
                  controller: tNowa,
                  style: TextStyle(fontSize: 14),
                  showCursor: false,
                  validator: (value) {
                    if (value.toString().isEmpty) {
                      return "Masukkan Nomor Anda";
                    }
                  },
                  keyboardType: TextInputType.phone,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(13),
                  ],
                  decoration: InputDecoration(
                      hintText: "Nomor Telepon",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide: BorderSide.none,
                      ),
                      suffixIcon: Icon(Icons.phone)),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: TextFormField(
                  obscureText: _obscure,
                  style: TextStyle(fontSize: 14),
                  showCursor: false,
                  controller: tSandi,
                  validator: (value) {
                    if (value.toString().isEmpty) {
                      return "Masukkan Kata Sandi";
                    }
                  },
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: "Kata Sandi",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide: BorderSide.none),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          _toglePass();
                        });
                      },
                      child: _obscure
                          ? const Icon(
                              Icons.visibility_off,
                            )
                          : const Icon(
                              Icons.visibility,
                            ),
                    ),
                  ),
                ),
              ),
              Container(
                // padding: EdgeInsets.only(top: 8, bottom: 8),
                margin: EdgeInsets.only(top: 14),
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _btlogin(context);
                      }
                    },
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ))),
                    child: Text(
                      "Masuk",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )),
              ),
              Container(
                margin: EdgeInsets.all(8),
                child: Center(
                    child: Text(
                  "Lupa Kata Sandi?",
                  style: TextStyle(
                    color: Colors.grey[600],
                  ),
                )),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Belum Punya Akun? ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            Navigator.of(context).pushNamed('/register');
                          });
                        },
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            alignment: Alignment.centerLeft),
                        child: Text(
                          "Daftar",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                      )
                    ]),
              )
            ],
          ),
        )),
      ),
    );
  }

  void _btlogin(BuildContext context) {
    setState(() {
      String nowa = tNowa.text;
      String sandi = tSandi.text;
      LoginPasien.loginPasien(nowa, sandi).then((value) {
        if (value.kode == 1) {
          Navigator.pushNamed(context, '/bottom_view');
        } else {
          showDialog(
              context: context,
              builder: (context) => AlertDialog(
                    title: Text(
                      "Gagal Masuk",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    content: Text(
                      "Nomor atau kata sandi anda salah.",
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
      });
    });
  }
}
