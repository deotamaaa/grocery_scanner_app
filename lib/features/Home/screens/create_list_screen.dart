import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:grocery_scanner_app/domain/entities/grocery_entities.dart';
import 'package:grocery_scanner_app/features/Home/cubit/grocery_cubit.dart';

class CreateListScreen extends StatefulWidget {
  const CreateListScreen({super.key});

  @override
  State<CreateListScreen> createState() => _CreateListScreenState();
}

class _CreateListScreenState extends State<CreateListScreen> {
  TextEditingController listnameController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController quantityController = TextEditingController();
  TextEditingController priceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create List'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              controller: listnameController,
              decoration: InputDecoration(
                labelText: 'Name',
                hintText: 'e.g. Grocery List',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            const Gap(16),
            TextFormField(
              controller: descriptionController,
              decoration: InputDecoration(
                labelText: 'Description',
                hintText: 'e.g. Grocery List for the week',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            const Gap(16),
            TextFormField(
              controller: quantityController,
              decoration: InputDecoration(
                labelText: 'Quantity',
                hintText: 'e.g. 5',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            const Gap(16),
            TextFormField(
              controller: priceController,
              decoration: InputDecoration(
                labelText: 'Price',
                hintText: 'e.g. 100.000',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            const Gap(16),
            BlocListener<GroceryCubit, GroceryState>(
              listener: (context, state) {
                if (state is GroceryError) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(state.message),
                    ),
                  );
                } else if (state is GroceryAdded) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Grocery Added'),
                    ),
                  );
                  Navigator.pop(context);
                }
              },
              child: ElevatedButton(
                onPressed: () {
                  context.read<GroceryCubit>().addGrocery(
                        GroceryEntity(
                          groceryName: listnameController.text,
                          groceryDescription: descriptionController.text,
                          groceryPrice: double.parse(priceController.text),
                          groceryQuantity: int.parse(quantityController.text),
                          totalPrice: double.parse(priceController.text) *
                              double.parse(quantityController.text),  
                        ),
                      );
                },
                child: const Text('Add Grocery'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
