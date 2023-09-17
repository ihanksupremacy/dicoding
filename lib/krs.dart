import 'package:flutter/material.dart';

class KrsPage extends StatelessWidget {
  final List<Map<String, dynamic>> krsList = [
     {
      'no': 1,
      'kodeMk': '	UNS441',
      'namaMk': '	AGAMA II',
      'sks': 2.00,
      'status': '	B',
      'kelas': 'R-003',
      'ruang': 'FST Gedung B Lantai 3 Ruang Aula 1',
      'jadwal': 'Senin / Jam 07:30:00 - 09:10:00',
      'dosen': 'Ahmad Fikri Rosyandi ,S.Pd.,M.Pd,',
    },
    {
      'no': 2,
      'kodeMk': '	DSI345',
      'namaMk': '	ANALISIS DAN PERANCANGAN SISTEM INFORMASI	',
      'sks': 3.00,
      'status': '	B',
      'kelas': 'R-003',
      'ruang': 'FST Gedung B Lantai 1 Ruang 10	',
      'jadwal': 'Rabu / Jam 15:40:00 - 18:10:00		',
      'dosen': 'Reni Aryani, S.Kom., M.S.I. & Mutia Fadhila Putri, M.Kom.',
    },
    {
      'no': 3,
      'kodeMk': 'DSI441',
      'namaMk': 'PEMROGRAMAN VISUAL',
      'sks': 2.00,
      'status': '	B',
      'kelas': 'R-003',
      'ruang': 'Laboratorium Komputasi Sains',
      'jadwal': '	Selasa / Jam 07:30:00 - 09:10:00',
      'dosen': 'Edi Saputra, S.T., M.Sc. & Andre Rabiula, S.Kom., M.Eng.',
    },
    {
      'no': 4,
      'kodeMk': 'DSI443',
      'namaMk': 'JARINGAN KOMPUTER DAN KOMUNIKASI DATA',
      'sks': 3.00,
      'status': '	B',
      'kelas': 'R-003',
      'ruang': 'Laboratorium ICT.1',
      'jadwal': '	Selasa / Jam 15:40:00 - 18:10:00',
      'dosen': 'Ir. Indra Weni, M.Kom. & Mohamad Ilhami, S.T., M.Kom.',
    },
    {
      'no': 5,
      'kodeMk': 'DSI444',
      'namaMk': 'PEMROGRAMAN WEB II',
      'sks': 2.00,
      'status': '	B',
      'kelas': 'R-003',
      'ruang': 'Laboratorium ICT.2',
      'jadwal': 'Selasa / Jam 10:10:00 - 11:50:00		',
      'dosen': 'Zainil Abidin, S.T., M.Eng. & Muhammad Razi A., S.T., MMSI.',
    },
    {
      'no': 6,
      'kodeMk': 'DSI442',
      'namaMk': 'INTERAKSI MANUSIA DAN KOMPUTER',
      'sks': 3.00,
      'status': '	B',
      'kelas': 'R-003',
      'ruang': 'Laboratorium ICT.2',
      'jadwal': '	Kamis / Jam 15:40:00 - 18:10:00',
      'dosen':
          'Benedika Ferdian Hutabarat, S.Komp., M.Kom. & Muhammad Razi A., S.T., MMSI. & Zainil Abidin, S.T., M.Eng.',
    },
    {
      'no': 7,
      'kodeMk': 'LSI444',
      'namaMk': 'PRAKTIKUM PEMROGRAMAN WEB II	',
      'sks': 1.00,
      'status': '	B',
      'kelas': 'R-003',
      'ruang': 'Laboratorium ICT.2',
      'jadwal': '	Selasa / Jam 11:50:00 - 12:40:00',
      'dosen': 'Zainil Abidin, S.T., M.Eng. & Muhammad Razi A., S.T., MMSI.',
    },
    {
      'no': 8,
      'kodeMk': 'LSI441',
      'namaMk': 'PRAKTIKUM PEMROGRAMAN VISUAL',
      'sks': 1.00,
      'status': '	B',
      'kelas': 'R-003',
      'ruang': '	Laboratorium Komputasi Sains',
      'jadwal': 'Selasa / Jam 09:10:00 - 10:00:00	',
      'dosen': 'Edi Saputra, S.T., M.Sc. & Andre Rabiula, S.Kom., M.Eng.',
    },
    {
      'no': 9,
      'kodeMk': 'FST441',
      'namaMk': 'BAHASA INGGRIS II',
      'sks': 2.00,
      'status': '	B',
      'kelas': 'R-003',
      'ruang': 'FST Gedung B Lantai 3 Ruang 09',
      'jadwal': 'Selasa / Jam 13:10:00 - 14:50:00',
      'dosen': 'Ernanda, S.Pd., M.A., Ph.D.',
    },
    {
      'no': 10,
      'kodeMk': 'UNS161',
      'namaMk': 'Kewarganegaraan',
      'sks': 2.00,
      'status': 'B',
      'kelas': 'R-003',
      'ruang': 'FST Gedung B Lantai 3 Ruang 08',
      'jadwal': 'Kamis / Jam 10:10:00 - 11:50:00',
      'dosen': 'Dawam Suprayogi, S.Pd., M.Sc. & Sundari Utami, S.Pd., M.Sc.',
    },
    {
      'no': 11,
      'kodeMk': 'DSI346',
      'namaMk': 'PROSES BISNIS',
      'sks': 2.00,
      'status': '	B',
      'kelas': 'R-003',
      'ruang': 'FST Gedung B Lantai 3 Ruang 08	',
      'jadwal': 'Senin / Jam 15:40:00 - 17:20:00',
      'dosen': 'Dewi Lestari, S.Kom., M.S.I. & Yolla Noverina, S.Kom., M.Kom',
    },
  
  ];

  @override
  Widget build(BuildContext context) {
    int totalSksDiambil = 23;
    int jmlMaksimalSks = 24; 
    return Scaffold(
      appBar: AppBar(
        title: Text('KRS'),
      ),
      body: SingleChildScrollView( 
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Kartu Rencana Studi (KRS)',
                style: TextStyle(fontSize: 24.0),
              ),
              SizedBox(height: 16.0),
              DataTable(
                columns: [
                  DataColumn(label: Text('No')),
                  DataColumn(label: Text('Kode MK')),
                  DataColumn(label: Text('Nama MK')),
                  DataColumn(label: Text('SKS')),
                  DataColumn(label: Text('Status')),
                  DataColumn(label: Text('Kelas')),
                  DataColumn(label: Text('Ruang')),
                  DataColumn(label: Text('Jadwal')),
                  DataColumn(label: Text('Dosen')),
                ],
                rows: krsList
                    .map(
                      (item) => DataRow(
                        cells: [
                          DataCell(Text(item['no'].toString())),
                          DataCell(Text(item['kodeMk'])),
                          DataCell(Text(item['namaMk'])),
                          DataCell(Text(item['sks'].toString())),
                          DataCell(Text(item['status'])),
                          DataCell(Text(item['kelas'])),
                          DataCell(Text(item['ruang'])),
                          DataCell(Text(item['jadwal'])),
                          DataCell(Text(item['dosen'])),
                        ],
                      ),
                    )
                    .toList(),
              ),
              Padding(
                padding: EdgeInsets.only(top: 50.0),
                child: Text(
                  'Total SKS Diambil / Jml Maksimal SKS',
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                '$totalSksDiambil / $jmlMaksimalSks',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              Container(
                color: Colors.blue,
                padding: EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 28.0,
                  child: Text(
                    'KRS Telah Disetujui Dosen Pembimbing Akademik',
                    style: TextStyle(fontSize: 18.0, color: Colors.white),
                    textAlign: TextAlign.right,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
