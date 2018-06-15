#!/usr/bin/env bash
#FUNCION QUE PERMITE TRADUCIR LOS NOMBRES DE MES O ABREVIATURAS DE TRES LETRAS EN ESPAÑOL O INGLÉS EN MINÚSCULA A SU POSICIÓN DEL 1 AL 12.
obtenmes () {
case $entrada in
enero|ene|january|jan|1 ) resultado=1 ;;
feb|febrero|february|2 ) resultado=2;;
mar|marzo|march|3 ) resultado=3;;
abr|abril|apr|april|4 ) resultado=4;;
mayo|may|5 ) resultado=5;;
junio|jun|june|6 ) resultado=6;;
jul|julio|july|7 ) resultado=7;;
ago|agosto|august|aug|8 ) resultado=8;;
sep|septiembre|setiembre|september|9 ) resultado=9;;
oct|octubre|october|10 ) resultado=10;;
nov|noviembre|november|11 ) resultado=11;;
dic|diciembre|december|dec|12 ) resultado=12;;
*) resultado="ERROR"
esac
}
#----------------------------------------------------------------------------------------------

MESES_E="enero febrero marzo abril mayo junio julio agosto septiembre octubre noviembre diciembre"
MESES_I="january february march april may june july august september october november december"

 for valor in $MESES_E
        do
            i=1
            cuenta=$i
            while [ $i -lt 12 ]
            do
                let "i+=1"
                #echo $i
                echo ${cuenta}
            done
              echo $valor
        done

        for valor in $MESES_I
        do
            #$valor = $cuenta1[]
            echo $valor
           #echo $cuenta1
        done
       exit 0
