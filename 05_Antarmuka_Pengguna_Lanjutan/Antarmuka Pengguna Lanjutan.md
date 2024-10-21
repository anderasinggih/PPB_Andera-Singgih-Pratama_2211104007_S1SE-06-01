# Cover

<div align="center">
LAPORAN PRAKTIKUM <br>
PEMROGRAMAN PERANGKAT BERGERAK <br>
<br>
MODUL V <br>
ANTARMUKA PENGGUNA LANJUTAN <br>

<img src="https://lac.telkomuniversity.ac.id/wp-content/uploads/2021/01/cropped-1200px-Telkom_University_Logo.svg-270x270.png" width="250px">

<br>

Disusun Oleh: <br>
Andera Singgih Pratama/2211104007 <br>
SE-06-01 <br>

<br>

Asisten Praktikum : <br>
Muhammad Faza Zulian Gesit Al Barru <br>
Aisyah Hasna Aulia <br>

<br>

Dosen Pengampu : <br>
Yudha Islami Sulistya, S.Kom., M.Cs <br>

<br>

PROGRAM STUDI S1 REKAYASSA PERANGKAT LUNAK <br>
FAKULTAS INFORMATIKA <br>
TELKOM UNIVERSITY PURWOKERTO <br>

</div>

# Guided

## 1. ListView.builder <br>

Source Code:

```
import 'package:flutter/material.dart';

class ListViewBuilderExample extends StatelessWidget {
  const ListViewBuilderExample({super.key});

  @override
  Widget build(BuildContext context) {
    final List<int> colorCodes = <int>[600, 500, 100];
    final List<String> entries = <String>['A', 'B', 'C'];

    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView.builder"),
        backgroundColor: Colors.amber,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 50,
            color: Colors.amber[colorCodes[index]],
            child: Center(
              child: Text('Entry ${entries[index]}'),
            ),
          );
        },
      ),
    );
  }
}

```

Output Code:
![listviewbuilder](img/1.listView.builder.png)

## 2. ListView.separated

Source Code:

```
import 'package:flutter/material.dart';

class ListViewSeparatedExample extends StatelessWidget {
  const ListViewSeparatedExample({super.key});

  @override
  Widget build(BuildContext context) {
    final List<int> colorCodes = <int>[600, 500, 100];
    final List<String> entries = <String>['A', 'B', 'C'];

    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView.separated"),
        backgroundColor: Colors.amber,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 50,
            color: Colors.amber[colorCodes[index]],
            child: Center(
              child: Text('Entry ${entries[index]}'),
            ),
          );
        }, separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}

```

Output Code:
![listviewseparated](img/2.listView.separated.png)

## 3. Flexible and Expanded

Source Code:

```
import 'package:flutter/material.dart';
void main() {
  runApp(const FlexibleExpandedScreen(title: 'Flexible and Expanded Demo'));
}

class FlexibleExpandedScreen extends StatefulWidget {
  const FlexibleExpandedScreen({super.key, required this.title});
  final String title;

  @override
  State<FlexibleExpandedScreen> createState() => _FlexibleExpandedScreenState();
}

class _FlexibleExpandedScreenState extends State<FlexibleExpandedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: [
                const Text("Flexible"),
                // Flexible
                Row(
                  children: <Widget>[
                    Container(
                      width: 50,
                      height: 100,
                      color: Colors.red,
                    ),
                    Flexible(
                      child: Container(
                        height: 100,
                        color: Colors.green,
                        child: const Text(
                          "Flexible takes up the remaining space but can shrink if needed.",
                        ),
                      ),
                    ),
                    const Icon(Icons.sentiment_very_satisfied),
                  ],
                ),
                const SizedBox(height: 20),
                // Expanded
                const Text("Expanded"),
                Row(
                  children: <Widget>[
                    Container(
                      width: 50,
                      height: 100,
                      color: Colors.red,
                    ),
                    Expanded(
                      child: Container(
                        height: 100,
                        color: Colors.green,
                        child: const Text(
                          "Expanded forces the widget to take up all the remaining space.",
                        ),
                      ),
                    ),
                    const Icon(Icons.sentiment_very_satisfied),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
```

![flexibleandexpanded](img/3.flexibleAndExpanded.png)

## 4. CustomScrollView

Source Code:

```
import 'package:flutter/material.dart';

class CustomScrollViewExample extends StatelessWidget {
  const CustomScrollViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sliver"),
        backgroundColor: Colors.amber,
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          // Sliver App Bar
          const SliverAppBar(
            pinned: true,
            expandedHeight: 50.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Sliver App Bar'),
            ),
          ),
          // Sliver Grid
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 4.0,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.teal[100 * (index % 9)],
                  child: Text('Grid Item $index'),
                );
              },
              childCount: 6,
            ),
          ),
          // Sliver Fixed List
          SliverFixedExtentList(
            itemExtent: 50.0,
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.lightBlue[100 * (index % 9)],
                  child: Text('List Item $index'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
```

Output Code:
![customscrollview](img/4.customScrollView.png)

# Unguided

Source Code:

```
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rekomendasi Wisata',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 97, 61, 176),
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Rekomendasi Wisata'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Map<String, String>> wisataList = [
    {
      "title": "Pantai Indah Widarapayung",
      "image":
          "https://disporapar.cilacapkab.go.id/wp-content/uploads/2020/09/Samudera_mandiri_01-768x512.jpg",
      "description":
          "Merupakan objek wisata pantai dengan luas sekitar 500 hektar terletak di Desa Widarapayung Kecamatan Binangun atau terletak ± 35 km arah timur dari Kota Cilacap. Kondisi pantainya sangat landai dengan dipagari pohon kelapa sehingga menjadikan pantai sejuk."
    },
    {
      "title": "Telaga Sunyi",
      "image":
          "data:image/jpeg;base64,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",
      "description":
          "Salah satu wisata alam di sekitar Baturraden yang sampai saat ini masih terjaga keasriannya adalah Telaga Sunyi. Berada di tengah hutan pinus dan damar membuat suasana Telaga Sunyi sepi dan menenangkan. Udaranya pun sangat segar. Apalagi airnya berasal langsung dari mata air Gunung Slamet. Bila kita menyentuh airnya akan terasa dingin menyegarkan."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: wisataList.length,
        itemBuilder: (context, index) {
          final wisata = wisataList[index];
          return Card(
            margin: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  wisata["title"]!,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                Image.network(
                  wisata["image"]!,
                  width: 300,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    wisata["description"]!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Kunjungi Sekarang'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}


```

Output Code:
![unguided](img/5.Unguided.png)

Deskripsi:
Di halaman utama, terdapat daftar tempat wisata yang berisi gambar, judul, dan deskripsi singkat. Setiap item ditampilkan dalam bentuk kartu, lengkap dengan tombol "Info Lebih Lanjut" untuk melihat detail tambahan (meskipun fungsinya belum diimplementasikan). Daftar wisata ini ditampilkan dengan efek scroll yang menarik, di mana bagian header tetap terlihat meskipun pengguna menggulir daftar.
Di aplikasi ini, pada bagian home menggunakan widget Scaffold.
Untuk membuat daftar tempat wisata, digunakan widget CustomScrollView, SliverAppBar, dan SliverList.
Setiap item wisata menggunakan widget Container, Column, Image.asset, Text, dan ElevatedButton.
