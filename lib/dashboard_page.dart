import 'package:flutter/material.dart';
import 'riwayatregistrasipage.dart';
import 'krs.dart';
import 'khs.dart';
import 'login_page.dart';
import 'presensi_mahasiswa_page.dart';
import 'kurikulum_mahasiswa_page.dart';

class DashboardPage extends StatelessWidget {
  final List<double> ipList = [3.9, 3.8, 3.9];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SIAKAD UNJA'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'SIAKAD UNJA',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.history),
              title: Text('Riwayat Registrasi'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RiwayatRegistrasiPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.menu_book),
              title: Text('KRS'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => KrsPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.assignment),
              title: Text('Presensi Mahasiswa'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PresensiMahasiswaPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.library_books),
              title: Text('KHS'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => KhsPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.school),
              title: Text('Kurikulum Mahasiswa'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => KurikulumMahasiswaPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.print),
              title: Text('Cetak KTM'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () {
                 Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Selamat datang Mahasiswa',
                  style: TextStyle(fontSize: 24.0),
                ),
                SizedBox(height: 16.0),
                Text(
                  'Biodata Mahasiswa',
                  style: TextStyle(fontSize: 18.0),
                ),
                SizedBox(height: 16.0),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/images/profile.jpg'),
                    ),
                    SizedBox(width: 16.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('NIM: F1E121069'),
                        Text('Nama: RAIHAN MUHAIMIN'),
                        Text('Fakultas: SAINS DAN TEKNOLOGI'),
                        Text('Program Studi: SISTEM INFORMASI'),
                        Text('Angkatan: 2021'),
                        Text('Dosen PA: Daniel Arsa, S.Kom., M.S.I'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(),
          Expanded(
            child: ListView.builder(
              itemCount: ipList.length,
              itemBuilder: (context, index) {
                final semester = index + 1;
                final ip = ipList[index];
                return ListTile(
                  leading: Text('Semester $semester'),
                  title: Text('IP: $ip'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
