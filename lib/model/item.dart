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

var items = [
  Item(
      id: '01-01',
      name: 'Buku tulis isi 30',
      desc: 'Deskripsi buku tulis isi 30',
      category: 'Alat Tulis',
      qty: 30,
      price: 15000),
  Item(
      id: '01-02',
      name: 'Buku tulis isi 100',
      desc: 'Deskripsi buku tulis isi 100',
      category: 'Alat Tulis',
      qty: 20,
      price: 30000),
  Item(
      id: '01-03',
      name: 'Buku tulis kotak isi 30',
      desc: 'Deskripsi buku tulis kotak isi 30',
      category: 'Alat Tulis',
      qty: 10,
      price: 15000),
  Item(
      id: '01-04',
      name: 'Buku tulis kotak isi 100',
      desc: 'Deskripsi buku tulis kotak isi 100',
      category: 'Alat Tulis',
      qty: 18,
      price: 30000),
  Item(
      id: '01-05',
      name: 'Buku gambar',
      desc: 'Deskripsi buku gambar',
      category: 'Alat Tulis',
      qty: 22,
      price: 15000),
  Item(
      id: '01-06',
      name: 'Buku gambar murah',
      desc: 'Deskripsi buku gambar murah',
      category: 'Alat Tulis',
      qty: 38,
      price: 5000),
];
