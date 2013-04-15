#include <iostream>
using namespace std;

//Globale Variablen
long numOne, numTwo, numThree, numFour, temp1, temp2;

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
bool getNumbers(){
	cout << "Geben Sie nun 4 Zahlen ein" << endl;
	cout << "Zahl 1:" << endl;
	cin >> numOne;
	cout << "Zahl 2:" << endl;
	cin >> numTwo;
	cout << "Zahl 3:" << endl;
	cin >> numThree;
	cout << "Zahl 4:" << endl;
	cin >> numFour;
	return true;
}

// Sortieren der eingegebenen Zahlen
bool sortNumbers(){

	for(int i=0; i<2; i++){
	if(numOne < numTwo){
		numOne = temp1;
		numTwo = temp2;
		numOne = temp2;
		numTwo = temp1;
	}
	if(numOne < numTwo){
		numTwo = temp1;
		numThree = temp2;
		numTwo = temp2;
		numThree = temp1;
	}
	if(numOne < numTwo){
		numThree = temp1;
		numFour = temp2;
		numThree = temp2;
		numFour = temp1;
	}}
	cout << numOne << " " << numTwo << " " << numThree << " " << numFour << " ";
	return true;
}



int main(){

	if(menu()){
		getNumbers();
		sortNumbers();
	}
	else {
	}






};
