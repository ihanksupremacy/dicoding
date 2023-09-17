import 'package:flutter/material.dart';

class PresensiMahasiswaPage extends StatelessWidget {
  final List<Map<String, dynamic>> presensiList = [
    {
      'no': 1,
      'kodeMK': 'UNS441',
      'namaMK': 'AGAMA II ',
      'dosen': 'Akhmad Fikri Rosyadi, S.Pd., M.Pd.',
      'sks': 2,
      'status': 'B',
      'kelas': 'R-003',
      'ruang': 'Gedung B Lantai 3 Ruang Aula 1',
      'jadwal': 'Senin / Jam 07:30:00 - 09:10:00',
    },
    {
      'no': 2,
      'kodeMK': '	DSI345',
      'namaMK': '	ANALISIS DAN PERANCANGAN SISTEM INFORMASI',
      'dosen': 'Reni Aryani, S.Kom., M.S.I. & Mutia Fadhila Putri, M.Kom.',
      'sks': 3,
      'status': 'B',
      'kelas': 'R-003',
      'ruang': 'Gedung B Lantai 1 Ruang 10',
      'jadwal': 'Rabu / Jam 15:40:00 - 18:10:00',
    },
     {
      'no': 3,
      'kodeMK': 'DSI441',
      'namaMK': 'PEMROGRAMAN VISUAL',
      'dosen': 'Edi Saputra, S.T., M.Sc. & Andre Rabiula, S.Kom., M.Eng.',
      'sks': 2.00,
      'status': '	B',
      'kelas': 'R-003',
      'ruang': 'Laboratorium Komputasi Sains',
      'jadwal': '	Selasa / Jam 07:30:00 - 09:10:00',
      
    },
    {
      'no': 4,
      'kodeMK': 'DSI443',
      'namaMK': 'JARINGAN KOMPUTER DAN KOMUNIKASI DATA',
      'dosen': 'Ir. Indra Weni, M.Kom. & Mohamad Ilhami, S.T., M.Kom.',
      'sks': 3.00,
      'status': '	B',
      'kelas': 'R-003',
      'ruang': 'Laboratorium ICT.1',
      'jadwal': '	Selasa / Jam 15:40:00 - 18:10:00',
      
    },
    {
      'no': 5,
      'kodeMK': 'DSI444',
      'namaMK': 'PEMROGRAMAN WEB II',
      'dosen': 'Zainil Abidin, S.T., M.Eng. & Muhammad Razi A., S.T., MMSI.',
      'sks': 2.00,
      'status': '	B',
      'kelas': 'R-003',
      'ruang': 'Laboratorium ICT.2',
      'jadwal': 'Selasa / Jam 10:10:00 - 11:50:00		',
     
    },
    {
      'no': 6,
      'kodeMK': 'DSI442',
      'namaMK': 'INTERAKSI MANUSIA DAN KOMPUTER',
      'dosen':
      'Benedika Ferdian Hutabarat, S.Komp., M.Kom. & Muhammad Razi A., S.T., MMSI. & Zainil Abidin, S.T., M.Eng.',
      'sks': 3.00,
      'status': '	B',
      'kelas': 'R-003',
      'ruang': 'Laboratorium ICT.2',
      'jadwal': '	Kamis / Jam 15:40:00 - 18:10:00',
      
    },
    {
      'no': 7,
      'kodeMK': 'LSI444',
      'namaMK': 'PRAKTIKUM PEMROGRAMAN WEB II	',
      'sks': 1.00,
      'status': '	B',
      'kelas': 'R-003',
      'ruang': 'Laboratorium ICT.2',
      'jadwal': '	Selasa / Jam 11:50:00 - 12:40:00',
      'dosen': 'Zainil Abidin, S.T., M.Eng. & Muhammad Razi A., S.T., MMSI.',
    },
    {
      'no': 8,
      'kodeMK': 'LSI441',
      'namaMK': 'PRAKTIKUM PEMROGRAMAN VISUAL',
      'sks': 1.00,
      'status': '	B',
      'kelas': 'R-003',
      'ruang': '	Laboratorium Komputasi Sains',
      'jadwal': 'Selasa / Jam 09:10:00 - 10:00:00	',
      'dosen': 'Edi Saputra, S.T., M.Sc. & Andre Rabiula, S.Kom., M.Eng.',
    },
    {
      'no': 9,
      'kodeMK': 'FST441',
      'namaMK': 'BAHASA INGGRIS II',
      'sks': 2.00,
      'status': '	B',
      'kelas': 'R-003',
      'ruang': 'FST Gedung B Lantai 3 Ruang 09',
      'jadwal': 'Selasa / Jam 13:10:00 - 14:50:00',
      'dosen': 'Ernanda, S.Pd., M.A., Ph.D.',
    },
    {
      'no': 10,
      'kodeMK': 'UNS161',
      'namaMK': 'Kewarganegaraan',
      'sks': 2.00,
      'status': 'B',
      'kelas': 'R-003',
      'ruang': 'FST Gedung B Lantai 3 Ruang 08',
      'jadwal': 'Kamis / Jam 10:10:00 - 11:50:00',
      'dosen': 'Dawam Suprayogi, S.Pd., M.Sc. & Sundari Utami, S.Pd., M.Sc.',
    },
    {
      'no': 11,
      'kodeMK': 'DSI346',
      'namaMK': 'PROSES BISNIS',
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
    return Scaffold(
      appBar: AppBar(
        title: Text('Presensi Mahasiswa'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          columns: const <DataColumn>[
            DataColumn(label: Text('No')),
            DataColumn(label: Text('Kode MK')),
            DataColumn(label: Text('Nama Matakuliah dan Dosen Pengampu')),
            DataColumn(label: Text('SKS')),
            DataColumn(label: Text('Status')),
            DataColumn(label: Text('Kelas, Ruang, dan Jadwal')),
            DataColumn(label: Text('Detail')),
          ],
          rows: presensiList.map((presensi) {
            return DataRow(
              cells: <DataCell>[
                DataCell(Text('${presensi['no']}')),
                DataCell(Text('${presensi['kodeMK']}')),
                DataCell(Text('${presensi['namaMK']}\nDosen: ${presensi['dosen']}')),
                DataCell(Text('${presensi['sks']}')),
                DataCell(Text('${presensi['status']}')),
                DataCell(Text('${presensi['kelas']}\nRuang: ${presensi['ruang']}\nJadwal: ${presensi['jadwal']}')),
                DataCell(ElevatedButton(
                  onPressed: () {
                    // Aksi saat tombol Detail pada presensi diklik
                    // Tambahkan logika atau navigasi ke halaman detail presensi jika diperlukan
                  },
                  child: Text('Detail'),
                )),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
