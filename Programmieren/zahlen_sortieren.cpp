#include <iostream>
using namespace std;

//Globale Variablen
long numOne, numTwo, numThree, numFour; 

// Das Hauptmenu
bool menu(){

int SE = 0;

cout << "Hallo!" << endl << "Dieses Programm listet Ihnen 4 Zahlen in aufsteigender Reihenfolge auf" << endl
	 << "1 = Start" << endl << "2 = Beenden";
cin >> SE;

if (SE == 1){
	return true;
}
else if (SE == 2){
	return false;
}
else{
	return false;
	menu();
}}

// Zahlen eingeben und speichern
getNumbers(){
	cout << "Geben Sie nun 4 Zahlen ein" << endl;



}





int main(){

	if(menu()){
		getNumbers();
	}
	else {
		exit();
	}






};
