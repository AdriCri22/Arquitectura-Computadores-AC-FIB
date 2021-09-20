#include "CacheSim.h"
#include <stdio.h>

/* Posa aqui les teves estructures de dades globals
 * per mantenir la informacio necesaria de la cache
 * */

// Cache que contiene el bit de validez, el TAG y el dirty bit por el Copy Back
struct S {
	unsigned int bit_validez;
	unsigned int dirty_bit;
	unsigned int TAG;
};

struct S cache[128];

// Variable global para contar los accesos y fallos de la ejecución
unsigned int accesos, fallos = 0;


/* La rutina init_cache es cridada pel programa principal per
 * inicialitzar la cache.
 * La cache es inicialitzada al comen�ar cada un dels tests.
 * */
void init_cache () {
	/* Escriu aqui el teu codi */

	// Inicializamos la cache con el bit de validez a 0, de esta manera sabemos
	// que el TAG de la memoria de etiquetas está "vacío".
	// Además inicializamos el dirty bit a false para indicar que ninguna línea ha
	// sido modificada, ya que la tabla ni siquiera está inicializada.
	for (int i = 0; i < 128; i++) {
		cache[i].bit_validez = false;
		cache[i].dirty_bit = false;
	}
}

/* La rutina reference es cridada per cada referencia a simular */
void reference (unsigned int address, unsigned int LE) {
	unsigned int byte;
	unsigned int bloque_m;
	unsigned int linea_mc;
	unsigned int tag;
	unsigned int miss;					// booleano que indica si es miss
	unsigned int lec_mp;				// booleano que indica si se lee de MP
	unsigned int mida_lec_mp;
	unsigned int esc_mp;				// booleano que indica si se escribe en MP
	unsigned int mida_esc_mp;
	unsigned int replacement;		// booleano que indica si se reemplaza una
															// línea válida
	unsigned int tag_out;				// TAG de la l´ınea reemplazada

	/* Escriu aqui el teu codi */

  byte = address & 0x0000001F;
	bloque_m = address >> 5;
  linea_mc = (address << 20) >> 25;
  tag = address >> 12;

	accesos++;		// Incrementamos en 1 el número de accesos

	if (cache[linea_mc].bit_validez == true && cache[linea_mc].TAG == tag) {	// HIT
		miss = false;
		lec_mp = false;
		replacement = false;
		esc_mp = false;

	} else {		// MISS
		miss = true;
		fallos++;			// Incrementamos en 1 el número de fallos
		lec_mp = true;
		mida_lec_mp = 32;
		esc_mp = false;
		if (cache[linea_mc].bit_validez == false) {		// Línea vacía
			replacement = false;
			cache[linea_mc].bit_validez = true;
		} else {		// Línea ocupada => Hay que escribir la línea MC en la MP
			replacement = true;
			tag_out = cache[linea_mc].TAG;
		}
		cache[linea_mc].TAG = tag;

		// Si la línea que remplazamos ha sido modificada hay que escribir en la MP
		if (cache[linea_mc].dirty_bit == true) {
			esc_mp = true;
			mida_esc_mp = 32;
			cache[linea_mc].dirty_bit = false;
		}
	}

	// La línea ha sido modificada
	if (LE == escriptura) cache[linea_mc].dirty_bit = true;


	/* La funcio test_and_print escriu el resultat de la teva simulacio
	 * per pantalla (si s'escau) i comproba si hi ha algun error
	 * per la referencia actual
	 * */
	test_and_print (address, LE, byte, bloque_m, linea_mc, tag,
			miss, lec_mp, mida_lec_mp, esc_mp, mida_esc_mp,
			replacement, tag_out);
}

/* La rutina final es cridada al final de la simulacio */
void final ()
{
 	/* Escriu aqui el teu codi */

	// Imprime el número de accesos, fallos y aciertos de la ejecución
	printf("Accesos: %d		Fallos: %d	Aciertos: %d\n", accesos, fallos, accesos - fallos);
}
