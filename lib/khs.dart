import 'package:flutter/material.dart';

class KhsPage extends StatelessWidget {
  final List<Map<String, dynamic>> khsListSemester1 = [
    {
      'no': 1,
      'kodeMK': 'DSI217',
      'namaMK': 'ALGORITMA DAN PEMROGRAMAN',
      'status': 'B',
      'sks': 2,
      'nilaiHuruf': 'B',
      'nilaiAngka': 3.5,
    },
    {
      'no': 2,
      'kodeMK': 'DSI218',
      'namaMK': '	SISTEM OPERASI',
      'status': 'B',
      'sks': 2.00,
      'nilaiHuruf': '	A-',
      'nilaiAngka': 3.75,
    },
    {
      'no': 3,
      'kodeMK': 'DSI219',
      'namaMK': 'KALKULUS',
      'status': 'B',
      'sks': 3,
      'nilaiHuruf': 'A-',
      'nilaiAngka': 3.75,
    },
    {
      'no': 4,
      'kodeMK': 'FST115',
      'namaMK': 'DASAR - DASAR SAINS DAN TEKNOLOGI',
      'status': 'B',
      'sks': 2.00,
      'nilaiHuruf': 'B+',
      'nilaiAngka': 3.50,
    },
    {
      'no': 5,
      'kodeMK': 'FST116',
      'namaMK': '	TEKNOLOGI INFORMASI DAN KOMUNIKASI',
      'status': 'B',
      'sks': 2,
      'nilaiHuruf': 'A',
      'nilaiAngka': 4,
    },
    {
      'no': 6,
      'kodeMK': 'LSI217',
      'namaMK': 'PRAKTIKUM ALGORITMA DAN PEMROGRAMAN',
      'status': 'B',
      'sks': 1.00,
      'nilaiHuruf': 'B+',
      'nilaiAngka': 3.50,
    },
    {
      'no': 7,
      'kodeMK': 'LSI218',
      'namaMK': 'PRAKTIKUM SISTEM OPERASI',
      'status': 'B',
      'sks': 1,
      'nilaiHuruf': 'A-',
      'nilaiAngka': 3.75,
    },
    {
      'no': 8,
      'kodeMK': 'UNJ123',
      'namaMK': 'Bahasa Inggris',
      'status': 'B',
      'sks': 2.00,
      'nilaiHuruf': 'A-',
      'nilaiAngka': 3.75,
    },
    {
      'no': 9,
      'kodeMK': 'UNS112',
      'namaMK': 'Pancasila',
      'status': 'B',
      'sks': 2.00,
      'nilaiHuruf': 'A',
      'nilaiAngka': 4,
    },
    {
      'no': 10,
      'kodeMK': 'UNS114',
      'namaMK': '	Bahasa Indonesia',
      'status': 'B',
      'sks': 2.00,
      'nilaiHuruf': 'A',
      'nilaiAngka': 4.00,
    },
    {
      'no': 11,
      'kodeMK': 'UNS211',
      'namaMK': 'Agama I',
      'status': 'B',
      'sks': 2.00,
      'nilaiHuruf': 'A',
      'nilaiAngka': 4.00,
    },
  ];

  final List<Map<String, dynamic>> khsListSemester2 = [
    {
      'no': 1,
      'kodeMK': 'DSI126',
      'namaMK': 'MATEMATIKA DISKRIT',
      'status': 'B',
      'sks': 3,
      'nilaiHuruf': 'B+',
      'nilaiAngka': 3.50,
    },
    {
      'no': 2,
      'kodeMK': 'DSI221',
      'namaMK': 'PENGANTAR BISNIS DAN MANAJEMEN ',
      'status': 'B',
      'sks': 3.00,
      'nilaiHuruf': 'A',
      'nilaiAngka': 4.0,
    },
    {
      'no': 3,
      'kodeMK': 'DSI224',
      'namaMK': 'MBASIS DATA I',
      'status': 'B',
      'sks': 2.00,
      'nilaiHuruf': 'B+',
      'nilaiAngka': 3.50,
    },
    {
      'no': 4,
      'kodeMK': 'DSI225',
      'namaMK': 'PENGANTAR SISTEM INFORMASI ',
      'status': 'B',
      'sks': 3.00,
      'nilaiHuruf': 'A',
      'nilaiAngka': 4.0,
    },
    {
      'no': 5,
      'kodeMK': 'DSI327',
      'namaMK': 'STRUKTUR DATA',
      'status': 'B',
      'sks': 2.00,
      'nilaiHuruf': 'A',
      'nilaiAngka': 4.00,
    },
    {
      'no': 6,
      'kodeMK': 'DSI328',
      'namaMK': 'MATRIKS DAN TRANSFORMASI LINEAR',
      'status': 'B',
      'sks': 3.00,
      'nilaiHuruf': 'A-',
      'nilaiAngka': 3.75,
    },
    {
      'no': 7,
      'kodeMK': 'LSI224',
      'namaMK': 'PRAKTIKUM BASIS DATA I',
      'status': 'B',
      'sks': 1.00,
      'nilaiHuruf': 'A-',
      'nilaiAngka': 3.75,
    },
    {
      'no': 8,
      'kodeMK': 'LSI327',
      'namaMK': 'PRAKTIKUM STRUKTUR DATA',
      'status': 'B',
      'sks': 1.00,
      'nilaiHuruf': 'A',
      'nilaiAngka': 4.0,
    },
    {
      'no': 9,
      'kodeMK': 'UNJ124',
      'namaMK': 'KEWIRAUSAHAAN BERBASIS AGROINDUSTRI DAN LINGKUNGAN',
      'status': 'B',
      'sks': 3.00,
      'nilaiHuruf': 'B+',
      'nilaiAngka': 3.50,
    },
  ];
  final List<Map<String, dynamic>> khsListSemester3 = [
    {
      'no': 1,
      'kodeMK': 'DSI231',
      'namaMK': 'REKAYASA PERANGKAT LUNAK',
      'status': 'B',
      'sks': 3,
      'nilaiHuruf': 'A',
      'nilaiAngka': 4.00,
    },
    {
      'no': 2,
      'kodeMK': 'DSI232',
      'namaMK': 'PEMROGRAMAN WEB I',
      'status': 'B',
      'sks': 2.00,
      'nilaiHuruf': 'A',
      'nilaiAngka': 4.0,
    },
    {
      'no': 3,
      'kodeMK': 'DSI237',
      'namaMK': 'STATISTIKA DASAR',
      'status': 'B',
      'sks': 3.00,
      'nilaiHuruf': 'B+',
      'nilaiAngka': 3.50,
    },
    {
      'no': 4,
      'kodeMK': 'DSI334',
      'namaMK': '	PEMROGRAMAN BERORIENTASI OBJEK',
      'status': 'B',
      'sks': 2.00,
      'nilaiHuruf': 'A',
      'nilaiAngka': 4.0,
    },
    {
      'no': 5,
      'kodeMK': 'DSI335',
      'namaMK': '	DASAR INFRASTUKTUR TEKNOLOGI INFORMASI',
      'status': 'B',
      'sks': 3.00,
      'nilaiHuruf': 'A',
      'nilaiAngka': 4.00,
    },
    {
      'no': 6,
      'kodeMK': 'DSI433',
      'namaMK': 'BASIS DATA II',
      'status': 'B',
      'sks': 3.00,
      'nilaiHuruf': 'B+',
      'nilaiAngka': 3.50,
    },
    {
      'no': 7,
      'kodeMK': 'DSI451',
      'namaMK': 'Sistem Informasi Manajemen',
      'status': 'B',
      'sks': 3.00,
      'nilaiHuruf': 'A-',
      'nilaiAngka': 3.75,
    },
    {
      'no': 8,
      'kodeMK': '	FST131',
      'namaMK': 'AGROINDUSTRI DAN GREEN TEKNOLOGI',
      'status': 'B',
      'sks': 3.00,
      'nilaiHuruf': 'A',
      'nilaiAngka': 4.0,
    },
    {
      'no': 9,
      'kodeMK': 'LSI232',
      'namaMK': 'PRAKTIKUM PEMROGRAMAN WEB I',
      'status': 'B',
      'sks': 1.00,
      'nilaiHuruf': 'A',
      'nilaiAngka': 4.00,
    },
    {
      'no': 10,
      'kodeMK': '	LSI334',
      'namaMK': 'PRAKTIKUM PEMROGRAMAN BERORIENTASI OBJEK',
      'status': 'B',
      'sks': 1.00,
      'nilaiHuruf': 'A',
      'nilaiAngka': 4.0,
    },
    {
      'no': 11,
      'kodeMK': 'LSI433',
      'namaMK': 'PRAKTIKUM BASIS DATA II',
      'status': 'B',
      'sks': 1.00,
      'nilaiHuruf': 'B+',
      'nilaiAngka': 3.50,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('KHS'),
      ),
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            TabBar(
              tabs: [
                Tab(text: 'Semester 1'),
                Tab(text: 'Semester 2'),
                Tab(text: 'Semester 3'),
              ],
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
            ),
            Expanded(
              child: TabBarView(
                children: [
                  buildKhsListView(khsListSemester1),
                  buildKhsListView(khsListSemester2),
                  buildKhsListView(khsListSemester3),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildKhsListView(List<Map<String, dynamic>> khsList) {
    return ListView.builder(
      itemCount: khsList.length,
      itemBuilder: (context, index) {
        final khs = khsList[index];
        return ListTile(
          title: Text('${khs['no']}. ${khs['namaMK']}'),
          subtitle: Text('Kode MK: ${khs['kodeMK']}, Status: ${khs['status']}'),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('SKS: ${khs['sks']}'),
              Text('Nilai Huruf: ${khs['nilaiHuruf']}'),
              Text('Nilai Angka: ${khs['nilaiAngka']}'),
            ],
          ),
        );
      },
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: KhsPage(),
  ));
}
