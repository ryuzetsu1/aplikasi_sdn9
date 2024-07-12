import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2196F3),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Edit Profile'),
        backgroundColor: const Color(0xFF2196F3),
      ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        SizedBox(height: constraints.maxHeight * 0.02),
                        CircleAvatar(
                          radius: constraints.maxWidth * 0.1,
                          backgroundColor: Colors.white,
                          child: Image.asset(
                            "assets/images/man.png",
                            width: 60,
                          ),
                        ),
                        SizedBox(height: constraints.maxHeight * 0.02),
                        Text(
                          'Edit Profile',
                          style: TextStyle(
                            fontSize: constraints.maxWidth * 0.05,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
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
                          EditProfileDetailRow(
                            label: 'Nomor Absen',
                            initialValue: '020',
                            constraints: constraints,
                          ),
                          EditProfileDetailRow(
                            label: 'Nama Lengkap',
                            initialValue: 'Undertaker',
                            constraints: constraints,
                          ),
                          EditProfileDetailRow(
                            label: 'Kelas',
                            initialValue: 'V B',
                            constraints: constraints,
                          ),
                          EditProfileDetailRow(
                            label: 'Nama Ayah',
                            initialValue: 'Brock',
                            constraints: constraints,
                          ),
                          EditProfileDetailRow(
                            label: 'Nama Ibu',
                            initialValue: 'Robin',
                            constraints: constraints,
                          ),
                          EditProfileDetailRow(
                            label: 'No Telpon',
                            initialValue: '081371876789',
                            constraints: constraints,
                          ),
                          const SizedBox(height: 16),
                          ElevatedButton(
                            onPressed: () {
                              // Tambahkan aksi saat tombol diklik
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
                              'Save Changes',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class EditProfileDetailRow extends StatelessWidget {
  final String label;
  final String initialValue;
  final BoxConstraints constraints;

  const EditProfileDetailRow({Key? key, required this.label, required this.initialValue, required this.constraints});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(fontSize: constraints.maxWidth * 0.04),
          ),
          TextFormField(
            initialValue: initialValue,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                vertical: constraints.maxHeight * 0.01,
                horizontal: constraints.maxWidth * 0.03,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}