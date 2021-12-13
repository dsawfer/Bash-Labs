#!/bin/bash

function operator_error()
{
        case "$1" in
        [PpBb][Ll][UuOo0][SsCcZz] ) operator="+";;
        [Mm][IiEeYy][Nn][UuYy][SsCcZz] ) operator="-";;
        [UuOo0][Mm][Nn][OoAa0][Zz][Hh][IiEeYy][TtDd] ) operator="*";;
        [Rr][AaOo0][ZzSsCc][DdTt][EeIiYy][Ll][EeIiYy][TtDd] ) operator="/";;
        * ) operator="!";;
        esac
}

function number_error()
{
        case "$1" in
        [NnMm][Oo0Uu][Ll] ) return 0;;
        [Oo0Aa][DdTt][IiEeYy][Nn] ) return 1;;
        [DdTt][VvFfWw][Aa] ) return 2;;
        [TtDd][Rr][IiEe] ) return 3;;
        [Cc][Hh][IiYyEe][TtDd][IiYyEe][Rr][IiYyEe] ) return 4;;
        [Pp][YyIi][Aa][TtDd] ) return 5;;
        [Ss][Hh][EeIiYy][SsCc][TtDd] ) return 6;;
        [SsCc][EeIiYy][Mm] ) return 7;;
        [VvFf][OoAa][SsCc][EeIiYy][Mm] ) return 8;;
        [DdTt][EeIiYy][Vv][EeIiYy][DdTt] ) return 9;;
        * ) return 10;;
        esac
}

first_number=0
second_number=0
operator=+

echo Available numbers: 1\(odin\), 2\(dva\), 3\(tri\), 4\(chetire\), 5\(pyat\), 6\(shest\), 7\(sem\), 8\(vosem\), 9\(devet\)
echo Available operations: +\(plus\), -\(minus\), *\(umnozhit\), /\(razdelit\)
echo $'\n'
while true
do
        echo Enter first digit
	read first_number
        number_error $first_number
        first_number=$?
	if [ $first_number = 10 ]
        then
                echo wrong input, try again
		echo $'\n'
                continue
        fi

	echo Enter operator
        read operator
        operator_error $operator
        if [ "$operator" = "!" ]
        then
                echo wrong input, try again
                echo $'\n'
                continue
        fi

        echo Enter second digit
        read second_number
        number_error $second_number
        second_number=$?
	if [ $second_number = 10 ]
        then
                echo wrong input, try again
		echo $'\n'
                continue
        fi

        let res=$first_number$operator$second_number
	echo result = $res
	echo $'\n'
done
