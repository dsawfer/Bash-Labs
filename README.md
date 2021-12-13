## Some lab works from the HSE course "Operating systems"

>**review.sh**

Фильтр слов - по мере ввода текста заменяет "плохие" слова на "хорошие". После чего сохраняет текст в файл review.txt

>**RPS.sh**

Камень, ножницы, бумага - скрипт должен в цикле загадывать значение(камень, ножницы, бумага) и спрашивать юзера о фигуре. Сравнение происходит по стандартным правилам. 
Если юзер выиграл - пишем что он выиграл, и пишем какие фигуры участвовали, если проиграл - пишем что проиграл и какие фигуры участвовали.
Если юзер ввел "otpustite" то завершаем скрипт.
Также скрипт должен жульничать в 17% случаев. То есть, если выпала вероятность жульничества, то скрипт сначала спрашивает юзера о его фигуре и потом подбирает ту, которая его побьет.

>**final.sh**

1) Написать C++ программу, выводящюю на стандартный вывод сообщение "hello, world".
2) Написать скрипт, который генерирует программу из пункта 2, компилирует и запускает её.
3) Написать C++ программу, которая при запуске создает и запускает скрипт из пункта 3.
4) Написать итоговый скрипт, который генерирует программу из пункта 4, компилирует и запускает её.

>**chat.sh**

Напиcать чат-скрипт - **один и тот же** скрипт должен запускаться в двух разных консолях. После запуска нужно, чтобы скрипт запрашивал номер процесса-собеседника и бесконечно спрашивал от юзера ввод сообщений. После ввода сообщения должны отобазиться на консоли процесса собеседника.
Также необходимо использовать шифрование (openssl)

>**calc.sh**

Написать калькулятор для самых развитых.
Калькулятор должен бесконечно спрашивать юзера ввести первое число, потом знак, потом второе число. После выдавать на экран результат.
Калькулятор должен позволять вводить числа и знак словами с орфографическими ошибками и разным регистром:
- Числа в диапазоне от 0 до 9
- Операции плюс, минус, разделить, умножить
Вначале скрипта выводятся возможные числа и знаки