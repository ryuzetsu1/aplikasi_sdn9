import 'package:flutter/material.dart';
import 'package:aplikasi_sdn9/screen/login.dart';
import 'package:aplikasi_sdn9/screen/profile.dart';
import 'package:aplikasi_sdn9/screen/kalender.dart';
import 'package:aplikasi_sdn9/screen/informasi.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.white),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NotificationsPage()),
              );
            },
          ),
          LogoutButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
          ),
        ],
      ),
      body: Container(
        color: Colors.blue,
        child: Column(
          children: [
            UserInfo(),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                children: [
                  DashboardButton(
                    icon: Image.asset('assets/images/write.png'),
                    label: 'Absensi',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AbsensiPage()),
                      );
                    },
                  ),
                  DashboardButton(
                    icon: Image.asset('assets/images/open-book.png'),
                    label: 'PR',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PRPage()),
                      );
                    },
                  ),
                  DashboardButton(
                    icon: Image.asset('assets/images/calendar.png'),
                    label: 'Kalender',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => KalenderPage()),
                      );
                    },
                  ),
                  DashboardButton(
                    icon: Image.asset('assets/images/schedule.png'),
                    label: 'Jadwal',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => JadwalPage()),
                      );
                    },
                  ),
                  DashboardButton(
                    icon: Image.asset('assets/images/exam-results.png'),
                    label: 'Nilai',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => NilaiPage()),
                      );
                    },
                  ),
                  DashboardButton(
                    icon: Image.asset('assets/images/megaphone.png'),
                    label: 'Informasi Siswa',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => InformasiPage()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LogoutButton extends StatelessWidget {
  final VoidCallback onPressed;

  LogoutButton({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.logout, color: Colors.white),
      onPressed: onPressed,
    );
  }
}

class UserInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Profile()),
        );
      },
      child: Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.blue,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Image.asset('assets/images/man.png'), // Ganti ikon dengan gambar orang
            ),
            SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Undertaker',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Text(
                  'Kelas V B',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DashboardButton extends StatelessWidget {
  final Widget icon;
  final String label;
  final VoidCallback onPressed;

  DashboardButton({required this.icon, required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Card(
        margin: EdgeInsets.all(16.0),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(width: 50, height: 50, child: icon),
            SizedBox(height: 10),
            Text(label, style: TextStyle(fontSize: 18, color: Colors.black)),
          ],
        ),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
      ),
      body: Center(
        child: Text('Halaman Profil'),
      ),
    );
  }
}

class AbsensiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Absensi'),
      ),
      body: Center(
        child: Text('Halaman Absensi'),
      ),
    );
  }
}

class PRPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PR'),
      ),
      body: Center(
        child: Text('Halaman PR'),
      ),
    );
  }
}

class JadwalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jadwal'),
      ),
      body: Center(
        child: Text('Halaman Jadwal'),
      ),
    );
  }
}

class NilaiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nilai'),
      ),
      body: Center(
        child: Text('Halaman Nilai'),
      ),
    );
  }
}

class NotificationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifikasi'),
      ),
      body: Center(
        child: Text('Halaman Notifikasi'),
      ),
    );
  }
}
