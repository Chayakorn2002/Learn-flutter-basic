import 'package:expense_tracker/widgets/chart/chart.dart';
import 'package:expense_tracker/widgets/expenses_list/expenses_list.dart';
import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/new_expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ExpenseState();
  }
}

class _ExpenseState extends State<Expenses> {
  final List<Expense> _regiserExpenses = [
    Expense(
      title: 'flutter course',
      amount: 19.99,
      date: DateTime.now(),
      category: Category.work,
    ),
    Expense(
      title: 'Cinema',
      amount: 15.99,
      date: DateTime.now(),
      category: Category.leisure,
    )
  ];

  void _openAddExpenseOverlay() {
    showModalBottomSheet(
      useSafeArea: true,
      isScrollControlled: true,
      context: context,
      builder: (ctx) => NewExpense(
        onAddExpense: _addExpense,
      ),
    );
    // we use ctx cause the name may may crash with each other, those two are different objects (context and ctx)
  }

  void _addExpense(Expense expense) {
    setState(() {
      _regiserExpenses.add(expense);
    });
  }

  void _removeExpense(Expense expense) {
    final expenseIndex = _regiserExpenses.indexOf(expense);
    setState(() {
      _regiserExpenses.remove(expense);
    });
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 3),
        content: const Text('Expense deleted.'),
        action: SnackBarAction(
          label: 'Undo',
          onPressed: () {
            setState(
              () {
                _regiserExpenses.insert(expenseIndex, expense);
              },
            );
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    print(MediaQuery.of(context).size.width);
    print(MediaQuery.of(context).size.height);

    Widget mainContent = const Center(
      child: Text('No expense founded. Start adding some!'),
    );

    if (_regiserExpenses.isNotEmpty) {
      mainContent = ExpensesList(
        expenseList: _regiserExpenses,
        onRemoveExpense: _removeExpense,
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Flutter Expense Tracker',
        ),
        // centerTitle: false,

        //   style: GoogleFonts.lato(
        //     textStyle: TextStyle(
        //       color: Color.fromARGB(255, 251, 230, 255),
        //       fontSize: 20,
        //       fontWeight: FontWeight.bold,
        //     ),
        //   ),
        // ),

        // titleTextStyle: (const TextStyle(
        //   color: Color.fromARGB(255, 251, 230, 255),
        //   fontSize: 20,
        //   fontWeight: FontWeight.bold,
        //   fontFamily: 'lato',
        // )),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: _openAddExpenseOverlay,
            color: Colors.purple[100],
          ),
        ],
        // backgroundColor: const Color.fromARGB(255, 85, 25, 249),
      ),
      body: width < 600
          // Portrait Mode
          ? Column(
              children: [
                Chart(expenses: _regiserExpenses),
                Expanded(
                  child: mainContent,
                )
              ],
            )
          // Landscape Mode
          : Row(
              children: [
                Expanded(
                  child: Chart(expenses: _regiserExpenses),
                ),
                Expanded(
                  child: mainContent,
                )
              ],
            ),
    );
  }
}
