class Promo {
  String id;
  String title;
  String desc;

  Promo({required this.id, required this.title, required this.desc});
}

var promos = [
  Promo(
    id: 'PR-01',
    title: 'Beli 3 buku gratis 1 pulpen',
    desc: promoDesc1
  ),
  Promo(
    id: 'PR-02',
    title: 'Beli 10 buku gratis 2 buku',
    desc: promoDesc1
  ),
];

var promoDesc1 = '''
Hanya untuk Anda pecinta buku, kami memiliki tawaran spesial yang tidak boleh Anda lewatkan! Dalam promo terbatas ini, setiap pembelian 3 buku dari koleksi terpilih akan memberikan Anda 1 pulpen eksklusif secara gratis!

Kenapa Anda Harus Mengambil Keuntungan dari Promo Ini?

    Koleksi Buku Berkualitas: Koleksi buku kami mencakup berbagai genre, mulai dari fiksi, non-fiksi, hingga buku anak-anak, yang pasti akan memenuhi selera pembaca berbagai usia.
    Harga Terjangkau: Dengan harga buku yang sudah terjangkau, promo ini memberikan nilai lebih dengan memberikan pulpen gratis tambahan untuk menemani koleksi baru Anda.
    Pulpen Eksklusif: Dapatkan pulpen eksklusif kami, dirancang dengan indah, yang cocok untuk menulis catatan, mencoret-coret, atau membuat tanda di halaman-halaman buku Anda.
    Hadiah Ideal: Buku dan pulpen adalah hadiah ideal untuk teman, keluarga, atau untuk memanjakan diri sendiri.

Cara Mendapatkan Promo Ini:

    Pilih 3 buku dari koleksi kami.
    Tambahkan buku-buku tersebut ke keranjang belanja Anda.
    Di saat checkout, gunakan kode promo "BELI3GRATIS1" untuk mendapatkan pulpen gratis.

Beli Sekarang dan Nikmati Koleksi Buku Baru Anda!

Segera manfaatkan kesempatan ini untuk mengembangkan koleksi buku Anda dan mendapatkan pulpen eksklusif yang cantik. Promo ini hanya berlaku untuk pembelian tertentu, jadi pastikan untuk mengambil keuntungan sebelum kehabisan! Selamat berbelanja dan berbaca!
''';
