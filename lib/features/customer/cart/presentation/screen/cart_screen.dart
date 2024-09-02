import 'package:flutter/material.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/localization/lang_keys.dart';
import 'package:shoply/features/customer/main/presentation/widgets/main_customer_app_bar.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,

      appBar: const MainCustomerAppBar(
        title:'Cart Screen',
      ),
      body: Center(
        child: Column(
          children: [
            const Text('Your shopping cart is empty.'),
            ElevatedButton(
              onPressed: () {
                // Navigate to the home screen
                Navigator.pop(context);
              },
              child: const Text('Go to Home'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add a new item to the cart
          //...
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
