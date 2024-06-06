import 'package:flutter/material.dart';

class CustomDropdownMenu<T> extends StatefulWidget {

  const CustomDropdownMenu({required this.itemList, required this.itemBuilder, super.key});
  final List<T> itemList;
  final Widget Function(T item) itemBuilder;

  @override
  _CustomDropdownMenuState<T> createState() => _CustomDropdownMenuState<T>();
}

class _CustomDropdownMenuState<T> extends State<CustomDropdownMenu<T>> {
  late T _selectedItem;
  List<T> _filteredItems = [];

  @override
  void initState() {
    _filteredItems.addAll(widget.itemList);
    super.initState();
  }

  void _filterItems(String query) {
    setState(() {
      _filteredItems = widget.itemList
          .where((item) =>
          item.toString().toLowerCase().contains(query.toLowerCase()),)
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          TextField(
            onChanged: _filterItems,
            decoration: const InputDecoration(
              hintText: 'Search',
            ),
          ),
          const SizedBox(height: 10),
          DropdownButtonFormField<T>(
            value: _selectedItem,
            onChanged: (T? value) {
              setState(() {
                _selectedItem = value as T ;
              });
            },
            items: _filteredItems.map((item) {
              return DropdownMenuItem<T>(
                value: item,
                child: widget.itemBuilder(item),
              );
            }).toList(),
            decoration: const InputDecoration(
              labelText: 'Select an item',
            ),
          ),
        ],
      ),
    );
  }
}

// void main() {
//   List<String> stringList = ['Item 1', 'Item 2', 'Item 3'];
//
//   List<Map<String, dynamic>> customList = [
//     {'id': 1, 'name': 'John'},
//     {'id': 2, 'name': 'Jane'},
//     {'id': 3, 'name': 'Alex'},
//   ];
//
//   runApp(MaterialApp(
//     home: Scaffold(
//       appBar: AppBar(
//         title: Text('Custom Dropdown Menu'),
//       ),
//       body: Column(
//         children: [
//           CustomDropdownMenu<String>(
//             itemList: stringList,
//             itemBuilder: (item) => Text(item),
//           ),
//           SizedBox(height: 20),
//           CustomDropdownMenu<Map<String, dynamic>>(
//             itemList: customList,
//             itemBuilder: (item) => ListTile(
//               leading: Icon(Icons.person),
//               title: Text(item['name']),
//             ),
//           ),
//         ],
//       ),
//     ),
//   ));
// }