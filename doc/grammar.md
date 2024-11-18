[К постановке задачи](documnetation.md)
# Грамматика для входного языка
Высокоуровневое определение модифицированного синтаксиса для персонального варианта (см. рис. 1) с выделением модификаций жирным шрифтом в определения нетерминалов &lt;TEL&gt;, а также введёнными нетреминалами &lt;NUM&gt;,&lt;OPC&gt;,&lt;CON&gt;,&lt;TER&gt;,&lt;LOP&gt;,&lt;TEC&gt;,&lt;OPS&gt; приведен ниже:

1. &lt;PRO&gt; ::= &lt;OPR&gt;&lt;TEL&gt;&lt;OEN&gt;
2. &lt;OPR&gt; ::= &lt;IPR&gt;:PROC_OPTIONS(MAIN);
3. &lt;IPR&gt; ::= &lt;IDE&gt;
4. &lt;IDE&gt; ::= &lt;BUK&gt; | &lt;IDE&gt;&lt;BUK&gt; | &lt;IDE&gt;&lt;CIF&gt;
5. &lt;BUK&gt; ::= A | B | C | D | E | M | P | X | **W | O | H | I | L | N | S**
6. &lt;CIF&gt; ::= 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9
7. &lt;TEL&gt; ::= &lt;ODC&gt; | &lt;TEL&gt;&lt;ODC&gt; | &lt;TEL&gt;&lt;OPA&gt;**| &lt;TEL&gt;&lt;OPC&gt; | &lt;TEL&gt;&lt;OPS&gt;**
8. &lt;ODC&gt; ::= DCL_&lt;IPE&gt;_BIN_FIXED(&lt;RZR&gt;); |  DCL_&lt;IPE&gt;_BIN_FIXED(&lt;RZR&gt;)INIT(&lt;LIT&gt;);| DCL_&lt;IPE&gt;_CHAR(&lt;RZR&gt;);
9. &lt;IPE&gt; ::= &lt;IDE&gt;
10. &lt;RZR&gt; ::= &lt;CIF&gt; | &lt;RZR&gt;&lt;CIF&gt;
11. &lt;LIT&gt; ::= &lt;MAN&gt;B
12. **&lt;NUM&gt; ::= &lt;CIF&gt; | &lt;NUM&gt;&lt;CIF&gt;**
13. &lt;MAN&gt; ::= 1 | &lt;MAN&gt;0 | &lt;MAN&gt;1
14. &lt;OPA&gt; ::= &lt;IPE&gt;=&lt;AVI&gt;**;**
15. &lt;AVI&gt; ::= &lt;LIT&gt; | &lt;IPE&gt; | &lt;AVI&gt;&lt;ZNK&gt;&lt;LIT&gt; |  
&lt;AVI&gt;&lt;ZNK&gt;&lt;IPE&gt; **| &lt;AVI&gt;&lt;ZNK&gt;&lt;NUM&gt;**
16. &lt;ZNK&gt; ::= + | -
17. &lt;OEN&gt; ::= END_&lt;IPR&gt;
18. **&lt;OPC&gt;****::= DO_WHILE_(&lt;CON&gt;);&lt;TEC&gt;END;**
19. **&lt;CON&gt;::=&lt;IPE&gt;&lt;&lt;NUM&gt;**
20. **&lt;TEC&gt;::=&lt;OPA&gt; | &lt;TEC&gt;&lt;OPA&gt;**
21. **&lt;OPS&gt;::=****&lt;IPE&gt;,&lt;IPE&gt;=&lt;NUM&gt;;**

Здесь использованы следующие метасимволы и символы:
- "&lt;" и "&gt;" - левый и правый ограничители нетерминального символа,
- "::=" - метасимвол со смыслом "равно по определению",
- "|" - метасимвол альтернативного определения "или",
- "_" - терминальный символ со смыслом "пробел",
- "&lt;PRO&gt;" - нетерминал "программа",
- "&lt;OPR&gt;" - нетерминал "оператор пролога программы",
- "&lt;IPR&gt;" - нетерминал "имя программы",
- "&lt;IDE&gt;" - нетерминал "идентификатор",
- "&lt;BUK&gt;" - нетерминал "буква",
- "&lt;CIF&gt;" - нетерминал "цифра",
- "&lt;TEL&gt;" - нетерминал "тело программы",
- "&lt;ODC&gt;" - нетерминал "оператор declare",
- "&lt;IPE&gt;" - нетерминал "имя переменной",
- "&lt;RZR&gt;" - нетерминал "разрядность",
- "&lt;LIT&gt;" - нетерминал "литерал",
- "&lt;MAN&gt;" - нетерминал "мантисса",
- "&lt;OPA&gt;" - нетерминал "оператор присваивания арифметический",
- "&lt;AVI&gt;" - нетерминал "арифметическое выражение",
- "&lt;ZNK&gt;" - нетерминал "знак",
- "&lt;OEN&gt;" - нетерминал "оператор эпилога программы".
- **"&lt;****OPC****&gt;" - нетерминал "оператор цикла".**
- **"&lt;****OPS****&gt;" - нетерминал "оператор присваивания через запятую".**
- **"&lt;****NUM****&gt;" - нетерминал "десятичное число".**
- **"&lt;****CON****&gt;" - нетерминал "условие цикла".**
- **"&lt;****TEC****&gt;" - нетерминал "тело цикла".**