import 'package:flutter/material.dart';

class Pagebab54 extends StatefulWidget {
  const Pagebab54({Key? key}) : super(key: key);

  @override
  State<Pagebab54> createState() => _Pagebab54state();
}

class _Pagebab54state extends State<Pagebab54> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 180), // Menggeser konten di atas stack
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        Text(
                          'Metode substitusi',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                            height:
                                10), // Spasi antara judul dan teks berikutnya
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Metode substitusi bertujuan untuk mengganti nilai suatu variabel di suatu persamaan dari persamaan lainnya. Hah?! Gimana, gimana? Tenang, kalau bingung, caranya dapat kamu lihat ada contoh berikut ini: ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                            ),
                          ),
                        ),
                        SizedBox(height: 20), // Spasi antara teks dan gambar
                        Image.asset(
                          'assets/gambar/p54.png',
                          fit: BoxFit.fill,
                        ),
                        SizedBox(
                            height:
                                10), // Spasi antara judul dan teks berikutnya
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Berdasarkan metode substitusi, diperoleh nilai x = 100 dan y = 170. Jadi, dapat diketahui kalau tinggi badan Kumamon adalah sebesar 170 cm dan tali yang dipakai Kumamon untuk bermain lompat tali adalah 100 cm.',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: ClipPath(
              clipper: HalfCircleClipper(),
              child: Container(
                height: 200,
                color: Color(0xFF193498),
                child: Center(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Bab 5 ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: 'SPLDV',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 5,
            left: 5,
            child: Row(
              children: [
                IconButton(
                  iconSize: 20,
                  icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                SizedBox(
                    width:
                        1), // Menambahkan jarak horizontal antara ikon dan teks
                Text(
                  'Kembali',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 5,
            right: 5,
            child: IconButton(
              iconSize: 20,
              icon: Icon(Icons.arrow_forward_ios, color: Colors.white),
              onPressed: () {
                // Tambahkan logika navigasi ke halaman berikutnya di sini
              },
            ),
          ),
        ],
      ),
    );
  }
}

class HalfCircleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height / 2);
    path.arcToPoint(
      Offset(size.width, size.height / 2),
      radius: Radius.circular(size.width),
      clockwise: false,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
