import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grocery_scanner_app/features/Home/cubit/grocery_cubit.dart';
import 'package:grocery_scanner_app/features/Home/screens/create_list_screen.dart';
import 'package:grocery_scanner_app/features/Login/service/di.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    getIt<GroceryCubit>().watchGroceries();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Hi, John Doe Wow'),
        centerTitle: false,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return const CreateListScreen();
              },
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code_scanner),
            label: 'Scan Barcode',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Pengeluaran mu bulan ini:',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: BlocBuilder<GroceryCubit, GroceryState>(
              bloc: getIt<GroceryCubit>()..watchGroceries(),
              builder: (context, state) {
                if (state is GroceryInitial) {
                  return Center(
                    child: LoadingAnimationWidget.inkDrop(
                      color: Colors.white,
                      size: 24,
                    ),
                  );
                }
                if (state is GrocerySuccess) {
                  return ListView.builder(
                      itemCount: state.groceries.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(state.groceries[index].groceryName),
                          subtitle:
                              Text(state.groceries[index].groceryDescription),
                          trailing: Text(
                              " Rp.${state.groceries[index].totalPrice.toString()} "),
                          onTap: () {},
                        );
                      });
                }
                if (state is GroceryError) {
                  return Center(
                    child: Text(state.message),
                  );
                }
                return Container();
              },
            ),
          ),
        ],
      ),
    );
  }
}
