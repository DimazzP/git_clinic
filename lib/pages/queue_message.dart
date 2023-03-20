import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class QueuePage extends StatefulWidget {
  const QueuePage({super.key});

  @override
  State<QueuePage> createState() => _QueuePageState();
}

class _QueuePageState extends State<QueuePage> {
  DateTime _dateTime = DateTime.now();
  var myFormat;

  @override
  void initState() {
    // TODO: implement initState
    myFormat = "${_dateTime.day}-${_dateTime.month}-${_dateTime.year}";
    super.initState();
  }

  // void _showDatePicker() {
  //   showDatePicker(
  //     context: context,
  //     initialDate: _dateTime,
  //     firstDate: DateTime(2000),
  //     lastDate: DateTime(2025),
  //   );
  // }

  Future<DateTime?> pickDate() => showDatePicker(
        context: context,
        initialDate: _dateTime,
        firstDate: DateTime(2000),
        lastDate: DateTime(2025),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Daftar Pelayanan",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.5),
        ),
        backgroundColor: Color(0xfff1f1f1),
        automaticallyImplyLeading: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(14),
        child: Center(
            child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.symmetric(vertical: 6),
                          child: Text(
                            'Nama Layanan',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 14.5),
                          )),
                      Padding(
                          padding: EdgeInsets.symmetric(vertical: 6),
                          child: Text(
                            'Jumlah Kuota',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 14.5),
                          )),
                      Padding(
                          padding: EdgeInsets.symmetric(vertical: 6),
                          child: Text(
                            'Kuota Tersisa',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 14.5),
                          )),
                      Padding(
                          padding: EdgeInsets.symmetric(vertical: 6),
                          child: Text(
                            'Kuota Terisi',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 14.5),
                          )),
                      Padding(
                          padding: EdgeInsets.symmetric(vertical: 6),
                          child: Text(
                            'Dokter',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 14.5),
                          )),
                    ],
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                          padding: EdgeInsets.only(top: 6, left: 20, bottom: 6),
                          child: Text(
                            'Pelayanan Gawat Darurat',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 14.5, fontWeight: FontWeight.w600),
                          )),
                      Container(
                          padding: EdgeInsets.only(top: 6, left: 20, bottom: 6),
                          child: Text(
                            '32',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 14.5, fontWeight: FontWeight.w600),
                          )),
                      Container(
                          padding: EdgeInsets.only(top: 6, left: 24, bottom: 6),
                          child: Text(
                            '20',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 14.5, fontWeight: FontWeight.w600),
                          )),
                      Container(
                          padding: EdgeInsets.only(top: 6, left: 20, bottom: 6),
                          child: Text(
                            '12',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 14.5, fontWeight: FontWeight.w600),
                          )),
                      Container(
                          padding: EdgeInsets.only(top: 6, left: 20, bottom: 6),
                          child: Text(
                            'Dr Ahmad lja sdlkjfdlask jflkadjs sdjl ',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 14.5, fontWeight: FontWeight.w600),
                          )),
                    ],
                  ),
                ),
              ],
            ),
            ElevatedButton(
                onPressed: () async {
                  final _date = await pickDate();
                  if (_date == null) return;
                  setState(() {
                    _dateTime = _date;
                  });
                  // setState(() => _dateTime = _date);
                },
                child: Text(
                  '${_dateTime.year}-${_dateTime.month}-${_dateTime.day}',
                  // "${date.day}-${date.month}-${date.year}",
                  style: Theme.of(context).textTheme.bodyLarge,
                ))
          ],
        )),
      ),
    );
  }
}
