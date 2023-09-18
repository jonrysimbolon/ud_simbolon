class Item {
  String id; // {category}-{id}
  String name;
  String desc;
  String category;
  num price;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.category,
      required this.price});
}

var items = [
  Item(
      id: '01-01',
      name: 'Buku tulis isi 30',
      desc: 'Deskripsi buku tulis isi 30',
      category: 'Alat Tulis',
      price: 15000),
  Item(
      id: '01-02',
      name: 'Buku tulis isi 100',
      desc: 'Deskripsi buku tulis isi 100',
      category: 'Alat Tulis',
      price: 30000),
  Item(
      id: '01-03',
      name: 'Buku tulis kotak isi 30',
      desc: 'Deskripsi buku tulis kotak isi 30',
      category: 'Alat Tulis',
      price: 15000),
  Item(
      id: '01-04',
      name: 'Buku tulis kotak isi 100',
      desc: 'Deskripsi buku tulis kotak isi 100',
      category: 'Alat Tulis',
      price: 30000),
  Item(
      id: '01-05',
      name: 'Buku gambar',
      desc: 'Deskripsi buku gambar',
      category: 'Alat Tulis',
      price: 15000),
  Item(
      id: '01-06',
      name: 'Buku gambar murah',
      desc: 'Deskripsi buku gambar murah',
      category: 'Alat Tulis',
      price: 5000),
];
