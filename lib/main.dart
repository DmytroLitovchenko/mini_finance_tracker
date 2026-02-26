import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
  }

  class MyApp extends StatelessWidget {
    const MyApp({super.key});

      @override
        Widget build(BuildContext context) {
            return const MaterialApp(
                  debugShowCheckedModeBanner: false,
                        home: HomePage(),
                            );
                              }
                              }

                              class HomePage extends StatefulWidget {
                                const HomePage({super.key});

                                  @override
                                    State<HomePage> createState() => _HomePageState();
                                    }

                                    class _HomePageState extends State<HomePage> {
                                      double balance = 0.0;

                                        void addIncome() {
                                            setState(() {
                                                  balance += 100;
                                                      });
                                                        }

                                                          void addExpense() {
                                                              setState(() {
                                                                    balance -= 50;
                                                                        });
                                                                          }

                                                                            @override
                                                                              Widget build(BuildContext context) {
                                                                                  return Scaffold(
                                                                                        appBar: AppBar(
                                                                                                title: const Text("Mini Finance Tracker"),
                                                                                                        centerTitle: true,
                                                                                                              ),
                                                                                                                    body: Center(
                                                                                                                            child: Column(
                                                                                                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                                                                                                                children: [
                                                                                                                                                            const Text(
                                                                                                                                                                          "Баланс",
                                                                                                                                                                                        style: TextStyle(fontSize: 22),
                                                                                                                                                                                                    ),
                                                                                                                                                                                                                const SizedBox(height: 10),
                                                                                                                                                                                                                            Text(
                                                                                                                                                                                                                                          "${balance.toStringAsFixed(2)} ₴",
                                                                                                                                                                                                                                                        style: const TextStyle(
                                                                                                                                                                                                                                                                        fontSize: 36,
                                                                                                                                                                                                                                                                                        fontWeight: FontWeight.bold,
                                                                                                                                                                                                                                                                                                      ),
                                                                                                                                                                                                                                                                                                                  ),
                                                                                                                                                                                                                                                                                                                              const SizedBox(height: 40),
                                                                                                                                                                                                                                                                                                                                          ElevatedButton(
                                                                                                                                                                                                                                                                                                                                                        onPressed: addIncome,
                                                                                                                                                                                                                                                                                                                                                                      child: const Text("Додати дохід +100"),
                                                                                                                                                                                                                                                                                                                                                                                  ),
                                                                                                                                                                                                                                                                                                                                                                                              const SizedBox(height: 10),
                                                                                                                                                                                                                                                                                                                                                                                                          ElevatedButton(
                                                                                                                                                                                                                                                                                                                                                                                                                        onPressed: addExpense,
                                                                                                                                                                                                                                                                                                                                                                                                                                      child: const Text("Додати витрату -50"),
                                                                                                                                                                                                                                                                                                                                                                                                                                                  ),
                                                                                                                                                                                                                                                                                                                                                                                                                                                            ],
                                                                                                                                                                                                                                                                                                                                                                                                                                                                    ),
                                                                                                                                                                                                                                                                                                                                                                                                                                                                          ),
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              );
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                }
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage obje 