import 'package:flutter/material.dart';
import 'package:utssaya/halaman/home.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({Key? key}) : super(key: key);

  @override
  _BookingPageState createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  int _quantity = 1;
  double _totalPrice = 0;

  void _incrementQuantity() {
    setState(() {
      _quantity++;
      _totalPrice = _quantity * 10.0;
    });
  }

  void _decrementQuantity() {
    setState(() {
      if (_quantity > 1) {
        _quantity--;
        _totalPrice = _quantity * 10.0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pemesanan'),
      ),
      body: Column(
        children: [
          const SizedBox(height: 16),
          Text(
            'Jumlah Barang: $_quantity',
            style: Theme.of(context).textTheme.headline6,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: _decrementQuantity,
                child: const Icon(Icons.remove),
              ),
              const SizedBox(width: 16),
              ElevatedButton(
                onPressed: _incrementQuantity,
                child: const Icon(Icons.add),
              ),
            ],
          ),
          const Divider(),
          Text(
            'Total Harga: Rp. $_totalPrice',
            style: Theme.of(context).textTheme.headline6,
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Pesan Sekarang'),
          ),
          Text(''),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('keluar'),
          ),
          const SizedBox(height: 16),
        ],
      ),
      
    );
  }
}
