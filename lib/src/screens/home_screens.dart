part of 'screens.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
        title: Text("Home"),
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.red, // background
            onPrimary: Colors.yellow, // foreground
          ),
          onPressed: () {
            context.go('/quis/');
          },
          child: Text(
            "GetStarted",
          ),
        ),
      ),
    );
  }
}
