#include <iostream>
#include <fstream>  
using namespace std;


//int readFile(ifstream txt){
//    fstream f;
//    f.open("test.dat", ios::out);
//    f << "Dieser Text geht in die Datei" << endl;
//    f.close();
//
//}

int main(){

int a;

cout << "Ihre Textdatei wird jetzt eingelesen" << endl;
ifstream txtRead;
ofstream txtWrite;
txtRead.open("test.txt", ios_base::in);

if (!txtRead){
  cout << "Fehler beim Öffnen der Quelle" << endl;}
cout << txtRead;
txtRead.close();

txtWrite.open("test.txt", ios_base::out);
txtWrite << "Das ist ein Test";

cin >> a;

}
