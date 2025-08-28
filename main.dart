import 'dart:io';

const double passingGradeThreshold = 60.0;
const double maxAssignmentScore = 100.0;
const double assignmentWeight = 0.2;
const double midtermWeight = 0.3;
const double finalExamWeight = 0.5;

void main() {
    print("Enter your Name:");
    String name = stdin.readLineSync()!;

    double getValidScore(String prompt) {
        print(prompt);
        try{
            return double.parse(stdin.readLineSync()!);
        }   catch (e) {
            print("Invalid Input!");
            exit(!);
        }
    }

    double assignment = getValidScore("Enter your Assignment Score:");
    double midterm = getValidScore("Enter your Midterm Score:");
    double finalexam = getValidScore("Enter your Final Exam Score:");

    double finalGrade = (assignment * assignmentWeight) + (midterm * midtermWeight) + (finalexam * finalExamWeight);

    print('Name: $name');
    print('Assignment Score: $(assignment.toStringAsFixed(1))');
    print('Midterm Score: $(midterm.toStringAsFixed(1))');
    print('Final Exam Score: $(finalExam.toStringAsFixed(1))');
    print('Final Grade: $(finalGrade.toStringAsFixed(1))');
    print(finalGrade >= passingGradeThreshold ? 'Passed' : 'Failed');
}

// no time sa comment sir aaaaaaaaaaaaaaaaaaaaaaaaaaaa