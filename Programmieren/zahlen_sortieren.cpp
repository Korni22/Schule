#include <iostream>
using namespace std;

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
	exit();
}
else{
	return false;
	menu();
}}





int main(){

	if(menu()){
	
	}






};
