import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// Event Model
class Event {
  String title;
  String date;
  String description;

  Event(this.title, this.date, this.description);
}

// Main App
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EventScreen(),
    );
  }
}

// Main Screen
class EventScreen extends StatefulWidget {
  @override
  _EventScreenState createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
  List<Event> events = [
    Event("Hackathon", "25 April", "Coding competition"),
    Event("Workshop", "27 April", "Flutter basics"),
  ];

  // Add Event
  void addEvent(String title, String date, String description) {
    setState(() {
      events.add(Event(title, date, description));
    });
  }

  // Delete Event
  void deleteEvent(int index) {
    setState(() {
      events.removeAt(index);
    });
  }

  // Show Add Event Dialog
  void showAddDialog() {
    String title = "";
    String date = "";
    String description = "";

    showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          title: Text("Add Event"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                decoration: InputDecoration(labelText: "Title"),
                onChanged: (value) => title = value,
              ),
              TextField(
                decoration: InputDecoration(labelText: "Date"),
                onChanged: (value) => date = value,
              ),
              TextField(
                decoration: InputDecoration(labelText: "Description"),
                onChanged: (value) => description = value,
              ),
            ],
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                if (title.isNotEmpty &&
                    date.isNotEmpty &&
                    description.isNotEmpty) {
                  addEvent(title, date, description);
                  Navigator.pop(context);
                }
              },
              child: Text("Add"),
            )
          ],
        );
      },
    );
  }

  // Show Details
  void showDetails(Event event) {
    showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          title: Text(event.title),
          content: Text(
            "Date: ${event.date}\n\nDescription: ${event.description}",
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text("Close"),
            )
          ],
        );
      },
    );
  }

  // UI
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Events (${events.length})"),
      ),
      body: ListView.builder(
        itemCount: events.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(events[index].title),
              subtitle: Text(events[index].date),
              onTap: () => showDetails(events[index]),
              trailing: IconButton(
                icon: Icon(Icons.delete, color: Colors.red),
                onPressed: () => deleteEvent(index),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: showAddDialog,
        child: Icon(Icons.add),
      ),
    );
  }
}