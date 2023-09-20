class Item {
  String id; // {category}-{id}
  String name;
  String desc;
  String category;
  int qty;
  num price;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.category,
      required this.qty,
      required this.price});
}

var bookItems = [
  Item(
      id: '01-01',
      name: 'Buku tulis isi 30',
      desc: deskripsiBukuIsi30,
      category: 'Alat Tulis',
      qty: 30,
      price: 15000),
  Item(
      id: '01-02',
      name: 'Buku tulis isi 100',
      desc: deskripsiBukuIsi30,
      category: 'Alat Tulis',
      qty: 20,
      price: 30000),
  Item(
      id: '01-03',
      name: 'Buku tulis kotak isi 30',
      desc: deskripsiBukuIsi30,
      category: 'Alat Tulis',
      qty: 10,
      price: 15000),
  Item(
      id: '01-04',
      name: 'Buku tulis kotak isi 100',
      desc: deskripsiBukuIsi30,
      category: 'Alat Tulis',
      qty: 18,
      price: 30000),
  Item(
      id: '01-05',
      name: 'Buku gambar',
      desc: deskripsiBukuIsi30,
      category: 'Alat Tulis',
      qty: 22,
      price: 15000),
  Item(
      id: '01-06',
      name: 'Buku gambar murah',
      desc: deskripsiBukuIsi30,
      category: 'Alat Tulis',
      qty: 38,
      price: 5000),
];

var deskripsiBukuIsi30 = '''
Deskripsi Produk:
Dapatkan buku tulis kreatif yang sempurna untuk anak-anak Anda dengan "Buku Tulis Kreatif 30 Lembar!" Buku ini adalah teman sempurna untuk memotivasi anak-anak dalam belajar menulis, menggambar, dan berkreasi.

Dengan 30 lembar berkualitas tinggi, buku ini memberikan anak-anak ruang yang cukup untuk mengekspresikan ide-ide mereka, menceritakan cerita-cerita fantastis, menggambar gambar-gambar yang indah, atau hanya mencatat pengalaman sehari-hari mereka.

Fitur utama:

    Isi 30 Lembar: Buku ini memiliki 30 lembar kosong yang cukup untuk mengisi dengan imajinasi tanpa batas.
    Ukuran yang Nyaman: Dengan ukuran yang pas di tangan anak-anak, buku ini mudah dibawa ke mana-mana.
    Kertas Berkualitas Tinggi: Kertas berkualitas tinggi yang cocok untuk berbagai jenis pena, pensil, dan alat gambar lainnya.
    Kover Warna-warni: Kover buku yang cerah dan menarik akan menginspirasi anak-anak untuk mulai berkarya.

Buku Tulis Kreatif 30 Lembar adalah alat sempurna untuk membantu anak-anak Anda mengembangkan keterampilan menulis dan kreativitas mereka. Dengan buku ini, mereka dapat mengukir cerita-cerita ajaib mereka sendiri, menggambar dunia imajinatif mereka, dan mencatat petualangan mereka. Ini juga bisa menjadi hadiah yang indah untuk anak-anak pada berbagai kesempatan. Segera berikan mereka kesempatan untuk mengungkapkan diri mereka dan membiarkan imajinasi mereka berkembang dengan Buku Tulis Kreatif 30 Lembar!
''';
