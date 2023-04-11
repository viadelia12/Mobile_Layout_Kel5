import 'package:flutter/material.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';

class StopwatchPage extends StatefulWidget {
  @override
  _StopwatchPageState createState() => _StopwatchPageState();
}

class _StopwatchPageState extends State<StopwatchPage> {
  final _stopWatchTimer = StopWatchTimer();
  bool _isRunning = false;
  final _scrollController = ScrollController();

  @override
  void dispose() {
    super.dispose();
    _stopWatchTimer.dispose();
    _scrollController;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stopwatch"),
        backgroundColor: Color(0xffEBC7E8),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StreamBuilder<int>(
              stream: _stopWatchTimer.rawTime,
              initialData: _stopWatchTimer.rawTime.value,
              builder: (context, snapshot) {
                final int? value = snapshot.data;
                final displayTime = StopWatchTimer.getDisplayTime(value!);
                return Text(
                  displayTime,
                  style: TextStyle(
                      fontSize: 36,
                      color: Color(0xffA084CA),
                      fontWeight: FontWeight.bold),
                );
              },
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MaterialButton(
                  color: Color(0xff645CAA),
                  height: 45,
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Text(
                    _isRunning ? 'Lap' : 'Reset',
                    style: TextStyle(color: Colors.white, fontSize: 16.0),
                  ),
                  onPressed: () {
                    setState(() {
                      _isRunning = _isRunning;
                      if (_isRunning) {
                        _stopWatchTimer.onExecute.add(StopWatchExecute.lap);
                      } else {
                        _stopWatchTimer.onExecute.add(StopWatchExecute.reset);
                      }
                    });
                  },
                ),
                SizedBox(width: 20),
                MaterialButton(
                  color: Color(0xff645CAA),
                  height: 45,
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Text(
                    _isRunning ? 'Stop' : 'Start',
                    style: TextStyle(color: Colors.white, fontSize: 16.0),
                  ),
                  onPressed: () {
                    setState(() {
                      _isRunning = !_isRunning;
                      if (_isRunning) {
                        _stopWatchTimer.onExecute.add(StopWatchExecute.start);
                      } else {
                        _stopWatchTimer.onExecute.add(StopWatchExecute.stop);
                      }
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              height: 120,
              margin: EdgeInsets.all(10),
              child: StreamBuilder<List<StopWatchRecord>>(
                stream: _stopWatchTimer.records,
                initialData: _stopWatchTimer.records.value,
                builder: (context, snapshot) {
                  final value = snapshot.data;
                  if (value!.isEmpty) {
                    return Container();
                  }
                  return ListView.builder(
                    controller: _scrollController,
                    itemBuilder: (context, index) {
                      final data = value[index];
                      return Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              '${index + 1} : ${data.displayTime}',
                              style: TextStyle(
                                fontSize: 20,
                                color: Color(0xffA084CA),
                              ),
                            ),
                          ),
                          Divider(
                            height: 2,
                          )
                        ],
                      );
                    },
                    itemCount: value.length,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
