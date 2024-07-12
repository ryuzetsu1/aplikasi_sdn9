import 'edit_profile.dart';
import 'package:flutter/material.dart';


class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2196F3), // Warna biru untuk header
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Profil'),
        backgroundColor: const Color(0xFF2196F3), // Keep the app bar background color blue
      ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      SizedBox(height: constraints.maxHeight * 0.02),
                      CircleAvatar(
                        radius: constraints.maxWidth * 0.1,
                        backgroundColor: Colors.white,
                        child: Image.asset("assets/images/man.png", width: constraints.maxWidth * 0.17,),
                      ),
                      SizedBox(height: constraints.maxHeight * 0.02),
                      Text(
                        'Undertaker',
                        style: TextStyle(
                          fontSize: constraints.maxWidth * 0.05,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Kelas V B',
                        style: TextStyle(
                          fontSize: constraints.maxWidth * 0.04,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ProfileDetailRow(
                            label: 'Nomor Absen',
                            value: '020',
                            showDivider: true,
                            constraints: constraints,
                          ),
                          ProfileDetailRow(
                            label: 'Nama Lengkap',
                            value: 'Undertaker',
                            showDivider: true,
                            constraints: constraints,
                          ),
                          ProfileDetailRow(
                            label: 'Kelas',
                            value: 'V B',
                            showDivider: true,
                            constraints: constraints,
                          ),
                          ProfileDetailRow(
                            label: 'Nama Ayah',
                            value: 'Brock',
                            showDivider: true,
                            constraints: constraints,
                          ),
                          ProfileDetailRow(
                            label: 'Nama Ibu',
                            value: 'Robin',
                            showDivider: true,
                            constraints: constraints,
                          ),
                          ProfileDetailRow(
                            label: 'No Telpon',
                            value: '081371876789',
                            showDivider: true,
                            constraints: constraints,
                          ),
                          const Spacer(),
                          Center(
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const EditProfile(),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF2196F3), // Warna biru untuk tombol
                                padding: EdgeInsets.symmetric(
                                  horizontal: constraints.maxWidth * 0.1,
                                  vertical: constraints.maxHeight * 0.02,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                              ),
                              child: const Text(
                                'Edit Profile',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class ProfileDetailRow extends StatelessWidget {
  final String label;
  final String value;
  final bool showDivider;
  final BoxConstraints constraints;

  const ProfileDetailRow({super.key, required this.label, required this.value, this.showDivider = false, required this.constraints});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                label,
                style: TextStyle(fontSize: constraints.maxWidth * 0.04),
              ),
              const SizedBox(width: 10.0),
              Text(
                value,
                style: TextStyle(fontSize: constraints.maxWidth * 0.04, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          if (showDivider)
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Container(
                height: 1.0,
                color: Colors.black,
                width: double.infinity,
              ),
            ),
        ],
      ),
    );
  }
}