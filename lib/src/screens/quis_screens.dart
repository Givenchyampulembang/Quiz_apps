part of 'screens.dart';

class QuisPage extends StatefulWidget {
  const QuisPage({Key? key}) : super(key: key);

  @override
  State<QuisPage> createState() => _QuisPageState();
}

class _QuisPageState extends State<QuisPage> {
  List<Icon> scoreKeeper = [];

  List<Question> questionBank = [
    Question(q: 'Apakah Manusia Hidup di Air? ', a: false),
    Question(q: 'Apakah Unta Hidup dipadang Pasir ? ', a: true),
    Question(q: 'Ayam dulu lalu telur ? ', a: true),
  ];

  int questionNumber = 0;

  void changeButtom() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 5,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      questionBank[questionNumber].questionText!,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Center(
                    child: TextButton(
                      child: Text(
                        'True',
                        style: TextStyle(color: Colors.black, fontSize: 20.0),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.green),
                      ),
                      onPressed: () {
                        bool correcrtanswers =
                            questionBank[questionNumber].questionAnswers!;
                        if (correcrtanswers == true) {
                          print("User got it right !");
                        } else {
                          print("User got it wrong");
                        }

                        setState(() {
                          questionNumber++;
                        });
                        print(questionNumber);
                      },
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Center(
                    child: TextButton(
                      child: Text(
                        'False',
                        style: TextStyle(color: Colors.black, fontSize: 20.0),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.red),
                      ),
                      onPressed: () {
                        bool correcrtanswers =
                            questionBank[questionNumber].questionAnswers!;
                        if (correcrtanswers == false) {
                          print("User got it right !");
                        } else {
                          print("User got it wrong");
                        }
                        setState(() {
                          questionNumber++;
                        });

                        print(questionNumber);
                      },
                    ),
                  ),
                ),
              ),
              Row(
                children: scoreKeeper,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/
