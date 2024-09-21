import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_todo/constants/color_const.dart';
import 'package:riverpod_todo/feature/tasks/model/task.dart';
import 'package:riverpod_todo/feature/tasks/ui/add_task_screen.dart';
import 'package:riverpod_todo/service/task_provider.dart';
import 'package:riverpod_todo/util/theme_extension.dart';
import 'package:riverpod_todo/widget/custom_top_design.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColors.backgroundColor,
      body: Stack(
        children: [
          const CustomTopDesign(
            showBackIcon: false,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 60,
                ),
                const SizedBox(height: 20),
                Text(
                  'Welcome Mohammad',
                  style: context.titleStyle,
                ),
                const SizedBox(height: 20),
                Image.asset(
                  'assets/images/home_vector.png',
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Todo Tasks.',
                        style: context.titleStyle,
                      ),
                      const SizedBox(height: 21),
                      const _TaskTab(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _TaskTab extends StatelessWidget {
  const _TaskTab();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 270,
      width: double.infinity,
      child: Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        color: Colors.white,
        elevation: 4,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  right: 30, left: 30, top: 18, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Daily Tasks',
                    style: TextStyle(
                      fontFamily: 'P',
                      color: Colors.black.withOpacity(0.47),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (
                              context,
                            ) =>
                                const AddTaskScreen(),
                          ),
                        );
                      },
                      child: const Icon(
                        Icons.add,
                        size: 26,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Consumer(
              builder: (context, ref, child) {
                final AsyncValue<List<Task>> taskData =
                    ref.watch(taskNotifierProvider);
                switch (taskData) {
                  case AsyncData(:final value):
                    return SizedBox(
                      height: 180,
                      width: MediaQuery.of(context).size.width - 100,
                      child: Scrollbar(
                        child: ListView.builder(
                          padding: EdgeInsets.zero,
                          itemBuilder: (context, index) {
                            return CustomTaskWidget(
                              text: value[index].title,
                            );
                          },
                          itemCount: value.length,
                        ),
                      ),
                    );

                  case AsyncError(:final error):
                    print(error);
                    return Text(error.toString());

                  case _:
                    return const CircularProgressIndicator(
                      backgroundColor: ConstColors.greenColor,
                    );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CustomTaskWidget extends StatefulWidget {
  const CustomTaskWidget({
    super.key,
    required this.text,
  });
  final String text;

  @override
  State<CustomTaskWidget> createState() => _CustomTaskWidgetState();
}

class _CustomTaskWidgetState extends State<CustomTaskWidget> {
  bool onTapped = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Checkbox(
          side: const BorderSide(
            color: Colors.black,
            width: 2.5,
          ),
          checkColor: Colors.transparent,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(4),
            ),
          ),
          activeColor: ConstColors.greenColor,
          value: onTapped,
          onChanged: (value) {
            setState(() {
              onTapped = !onTapped;
            });
          },
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width - 160,
          height: 20,
          child: Text(
            widget.text,
            style: context.blackBodyStyle,
            overflow: TextOverflow.ellipsis,
          ),
        )
      ],
    );
  }
}
