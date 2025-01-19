import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  static const name = 'progress_screen';

  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Progress Screen'),
      ),
      body: _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 30,),
          Text('Circular progress indicator'),

          const SizedBox(height: 30,),
          CircularProgressIndicator(
            strokeWidth: 5,
            backgroundColor: Colors.grey,
          ),

          const SizedBox(height: 30,),
          Text('Circular y linear controlado'),

          _ControlledProgressIndicator(),
        ],
      )
    );
  }
}

class _ControlledProgressIndicator extends StatelessWidget {
  const _ControlledProgressIndicator();

  @override
  Widget build(BuildContext context) {
    
    return StreamBuilder<Object>(

      stream: Stream.periodic(const Duration(seconds: 1), (value) {
        return (value * 2) / 100;
      }).takeWhile((value) => value <= 100),  

      builder: (context, snapshot) {
        
        final progressValue = snapshot.data is double ? snapshot.data as double : 0.0;

        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment:  MainAxisAlignment.center,

            children: [
              CircularProgressIndicator(
                value: progressValue,
                strokeWidth: 5,
                backgroundColor: Colors.grey,
              ),
              const SizedBox(width: 20,),
              Expanded(
                child: LinearProgressIndicator(
                  value: progressValue,
                  backgroundColor: Colors.grey,
                )
              )
        
              
            ],
          ),
        );
      }
    );
  }
}