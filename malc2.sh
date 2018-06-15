#!/usr/bin/env bash
#### CALENDARIO MODIFICADO PARA P2P MOOC 6#################################################################
##  cal [ [mes] año]                                                                                     ##
###########################################################################################################
#La sintaxis del nuevo comando será:                                                                     ##
#    mcal [mes] [año]                                                                                    ##
#    Es decir, se puede proporcionar sólo el mes, sólo el año o ambos                                    ##
#    Además de la funcionalidad anterior, el comando debe tener las siguientes características:          ##
#                                                                                                        ##
#    El comando ha de implementar una opción de ayuda (-help) para mostrar el uso básico del comando.    ##
#    El comando ha de implementar un control básico de errores: número incorrecto de argumentos, mes     ##
#    o año incorrectamente especificados, etc.                                                           ##
#    Los meses pueden especificarse mediante un número entre 1 y 12 y por su nombre o abreviatura en     ##
#    inglés y en español.                                                                                ##
#    Documente el script con líneas de comentario para que resulte legible y fácilmente mantenible       ##
#    Se valorará cualquier funcionalidad adicional útil y razonable.                                     ##
#    También es útil conocer que el siguiente comando:                                                   ##
#                                                                                                        ##
#    set string1 string2 string3 …                                                                       ##
#    set `date`                                                                                          ##
#   Esta práctica se evalúa por pares, ejecutando el script con, al menos, los siguientes casos de prueba:#
###########################################################################################################
NOMSCRIPT=`basename $0` #nombre del script
MESES_E="enero febrero marzo abril mayo junio julio agosto septiembre octubre noviembre diciembre"
MESES_I="january february march april may june july august september october november december"
##########################################
valor=12
anoactual=2018
mesactual=6
vacio=""
#data=set `date`
arg3=$1
arg4=$2

calendario () #funcion de calendario

{
    if [[ $arg3 = "ayuda" ]]
then
    echo "######################################################"
    echo "###   Como se usa ${NOMSCRIPT}                          ###"
    echo "###   Como se usa ${NOMSCRIPT}                          ###"
    echo "###   Como se usa ${NOMSCRIPT}                          ###"
    echo "######################################################"

    elif [[ $arg3 -eq $vacio ]] && [[ $arg4 -eq $vacio ]]
    then
        arg4=$anoactual
        arg3=$mesactual
        ncal -M -C $arg3 $arg4
        echo " quieres gardar calendario? teclea mcal calendario"
        echo " quieres ayuda teclea mcal ayuda"
        echo " quieres guardar en un fichero la ayuda teclea mcal guarda-ayuda"


    elif [[ $arg3 -le $valor ]] && [[ $arg4 -eq $vacio ]]
    then
        arg4=$anoactual
        ncal -M -C $arg3 $arg4
        echo " quieres gardar calendario? teclea mcal calendario"
        echo " quieres ayuda teclea mcal ayuda"
        echo " quieres guardar en un fichero la ayuda teclea mcal guarda-ayuda"
    elif [[ $arg3 -le $valor ]] && [[ $arg4 -ge 0 ]]
    then
        ncal -M -C $arg3 $arg4
        echo " quieres gardar calendario? teclea mcal calendario"
        echo " quieres ayuda teclea mcal ayuda"
        echo " quieres guardar en un fichero la ayuda teclea mcal guarda-ayuda"
    else
        ncal -M -C $arg3 $arg4
        echo " quieres gardar calendario? teclea mcal calendario"
        echo " quieres ayuda teclea mcal ayuda"
        echo " quieres guardar en un fichero la ayuda teclea mcal guarda-ayuda"
    #ncal $1 $2 -M -C
     fi

}
calendario


#####invocamos la funcion####
#calendario
#############################

# llamado el ejecutable debe de reconocer primero si entran 1 o 2 argumentos o texto,
#


#        mcal               #Proporciona el calendario del mes actual.
#        mcal 1             #Proporciona el calendario de enero del año actual.
#        mcal ene           #Proporciona el calendario de enero del año actual.
#        mcal jan           #Proporciona el calendario de enero del año actual.
#        mcal 1 1           #Proporciona el calendario de enero del año 1.
#        mcal 2018          #Proporciona el calendario del año 2018.
#        mcal 2018 > temp   #Escribe en el fichero de nombre temp el calendario del año 2018.
#        mcal -help         #Proporciona en consola el texto de ayuda.
#        mcal -help >temp2  #Proporciona en consola el texto de ayuda.
#        mcal 13            #Proporciona el calendario del año 13.
#                           #El listado anterior no contempla la posible necesidad de utilización
#                           #de paths absolutos o relativos (o la actualización de la variable de
#                           #entorno PATH) para la correcta localización del fichero por el
#                           #interprete de comandos.
exit $?
