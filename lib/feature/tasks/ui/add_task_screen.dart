import 'package:flutter/material.dart';
import 'package:riverpod_todo/constants/color_const.dart';
import 'package:riverpod_todo/util/theme_extension.dart';
import 'package:riverpod_todo/widget/custom_textfield.dart';
import 'package:riverpod_todo/widget/custom_top_design.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ConstColors.backgroundColor,
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          const CustomTopDesign(
            showBackIcon: true,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 70),
                  Text(
                    'Add Task',
                    style: context.titleStyle,
                  ),
                  const SizedBox(height: 45),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Image.asset('assets/images/task_vector.png'),
                  ),
                  const SizedBox(height: 25),
                  Text(
                    'Add What you want to do later',
                    style: context.greenBodyStyle,
                  ),
                  const SizedBox(height: 25),
                  const _InputSection(),
                  const SizedBox(height: 50),
                  SizedBox(
                    height: 44,
                    width: 220,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Add to list',
                        style: context.buttonStyle,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _InputSection extends StatefulWidget {
  const _InputSection();

  @override
  State<_InputSection> createState() => __InputSectionState();
}

class __InputSectionState extends State<_InputSection> {
  late TextEditingController taskController;
  late TextEditingController subtaskController;
  @override
  void initState() {
    taskController = TextEditingController();
    subtaskController = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    taskController.dispose();
    subtaskController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(
          controller: taskController,
          hintText: 'Enter your Task',
        ),
        const SizedBox(height: 25),
        CustomTextField(
          controller: subtaskController,
          hintText: 'Enter your Task Detail',
          maxLines: 5,
        ),
      ],
    );
  }
}
