#include "CacheSim.h"
#include <stdio.h>

/* Posa aqui les teves estructures de dades globals
 * per mantenir la informacio necesaria de la cache
 * */

/* Muestra el contenido de las diferentes líneas de la Memoria de Datos de la
cache. El tamaño es de 128 debido a que dadas las especificaciones del enunciado
al calcular el número de líneas de la MC nos da 128 */
int MC_row[128];

// Variables para medir los aciertos, fallos y accesos a la MC
int fallos, accesos = 0;


/* La rutina init_cache es cridada pel programa principal per
 * inicialitzar la cache.
 * La cache es inicialitzada al comen�ar cada un dels tests.
 * */
void init_cache ()
{
    totaltime=0.0;
	/* Escriu aqui el teu codi */

  // Iniciamos la cache a -1
  // No a 0 porque en el test 1 (el segundo) el primer bloque tiene direción 0
  for (int i = 0; i < 128; i++) MC_row[i] = -1;

}

/* La rutina reference es cridada per cada referencia a simular */
void reference (unsigned int address)
{
	unsigned int byte;
	unsigned int bloque_m;
	unsigned int linea_mc;
	unsigned int tag;
	unsigned int miss;	   // boolea que ens indica si es miss
	unsigned int replacement;  // boolea que indica si es reempla�a una linia valida
	unsigned int tag_out;	   // TAG de la linia reempla�ada
	float t1,t2;		// Variables per mesurar el temps (NO modificar)

	t1=GetTime();
	/* Escriu aqui el teu codi */

  byte = address & 0x0000001F;
  bloque_m = address >> 5;
  linea_mc = (address << 20) >> 25;
  tag = address >> 12;

  accesos++;  // Incrementamos en 1 el número de accesos

  if (MC_row[linea_mc] == tag) {  // HIT
    miss = 0;
    replacement = 0;
  } else {
    fallos++;   // Incrementamos en 1 el número de fallos
    miss = true;
    if (MC_row[linea_mc] == -1) { // MISS without replacement
      replacement = 0;
      MC_row[linea_mc] = tag;
    }
    else {  // MISS wtih replacement
      replacement = 1;
      tag_out = MC_row[linea_mc];
      MC_row[linea_mc] = tag;
    }
  }

	/* La funcio test_and_print escriu el resultat de la teva simulacio
	 * per pantalla (si s'escau) i comproba si hi ha algun error
	 * per la referencia actual. Tamb� mesurem el temps d'execuci�
	 * */
	t2=GetTime();
	totaltime+=t2-t1;
	test_and_print (address, byte, bloque_m, linea_mc, tag,
			miss, replacement, tag_out);
}

/* La rutina final es cridada al final de la simulacio */
void final ()
{
 	/* Escriu aqui el teu codi */
  printf("Fallos: %d  Aciertos: %d  Accesos: %d\n", fallos, accesos - fallos, accesos);
}
