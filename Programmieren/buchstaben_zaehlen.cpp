//Berechnung von Häufigkeiten von Buchstaben in einem Text 
#include <iostream>
#include <fstream>
#include <string>

using namespace std;

int main()
	{

	//Deklaration
	ifstream fs("test.txt");
	int counter = 0;
	int buchstabenzaehler[128];
	int zeichenwert;

	// Initialisieren der Zählvariablen
	for (int i = 0; i < 128; i++)
		buchstabenzaehler[i] = 0;

	while (fs.good())
		{
		char zeichen = fs.get();
		if (fs.good())
			{
			
			zeichenwert = int(zeichen);
			
			// ... zur Anschauung, sollte wieder entfernt werden
			//cout << "zeichenwert: " << zeichenwert << " -> zeichen: " << zeichen << endl;  

			if ( ((zeichenwert > 64) && (zeichenwert < 91))
				    || ((zeichenwert > 96) && (zeichenwert < 123)))
				{
					counter++;
					buchstabenzaehler[zeichenwert]++;
				}

			}

		}

	// Auswertung - noch zu implementieren
	for (int g = 0; g < 128; g++){
		if (buchstabenzaehler[g] != 0){
			cout<< "Buchstabe: " << char(g) << " Anzahl: " << buchstabenzaehler[g]<< endl;}
		else {}
	}



	fs.close();
	cin.get();
	cin.get(); 


	return 0;
	}
