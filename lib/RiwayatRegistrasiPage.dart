import 'package:flutter/material.dart';

class RiwayatRegistrasiPage extends StatelessWidget {
  final List<Map<String, dynamic>> riwayatRegistrasi = [
    {
      'no': 1,
      'semester': 'ganjil 2021/2022',
      'status': 'Aktif',
      'tanggal': '2021-07-14 15:06:52',
      'petugas': 'BRI',
    },
    {
      'no': 2,
      'semester': 'Genap 2021/2022',
      'status': 'Aktif',
      'tanggal': '2022-01-22 11:01:58',
      'petugas': 'BRI',
    },
    {
      'no': 3,
      'semester': 'Ganjil 2022/2023',
      'status': 'Aktif',
      'tanggal': '2022-08-05 08:08:47',
      'petugas': 'BRI',
    },
    {
      'no': 4,
      'semester': 'Genap 2022/2023',
      'status': 'Aktif',
      'tanggal': '2023-01-17 05:01:28',
      'petugas': 'BRI',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Riwayat Registrasi'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal, // Aktifkan pengguliran horizontal
        child: DataTable(
          columns: [
            DataColumn(label: Text('No')),
            DataColumn(label: Text('Semester')),
            DataColumn(label: Text('Status')),
            DataColumn(label: Text('Tanggal Registrasi')),
            DataColumn(label: Text('Petugas')),
          ],
          rows: riwayatRegistrasi.map((registrasi) {
            return DataRow(
              cells: [
                DataCell(Text(registrasi['no'].toString())),
                DataCell(Text(registrasi['semester'])),
                DataCell(Text(registrasi['status'])),
                DataCell(Text(registrasi['tanggal'])),
                DataCell(Text(registrasi['petugas'])),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
