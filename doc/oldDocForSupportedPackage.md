[К постановке задачи](documnetation.md)

09.03.2007

1. Данный комплект, состоящий из трех элементов учебной системы программирования
и тестового задания:
    - компилятор    PL/1 --> Ассемблер   ( komppl.c ),
    - компилятор    Ассемблер --> объектный образ  ( kompassr.c ),
    - абсолютный загрузчик, эмулятор и отладчик ( absloadm.c ),
    - тестовое задание ( examppl.pli и spismod ).
    
2. Для получения исполняемых модулей двух компиляторов и абсолютного загрузчика
следует выполнить Bash-скрипт GenSysProgr.

3. После получения исполняемого кода компиляторов можно запускать на выполнение
тестовый пример с помощью Bash-скрипта StartTestTask.