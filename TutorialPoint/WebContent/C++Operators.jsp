<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="CoursePages.css" >
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>C++ Operators</title>
</head>
<body>

<header>
eduOnline
</header>

<h1>C++ OPERATORS</h1>


<p>An operator is a symbol that tells the compiler to perform specific mathematical or logical manipulations. C++ is rich in built-in operators and provides the following types of operators:</p>
<ul class="list">
<li><p>Arithmetic Operators</p></li>
<li><p>Relational Operators</p></li>
<li><p>Logical Operators</p></li>
<li><p>Bitwise Operators</p></li>
<li><p>Assignment Operators</p></li>
<li><p>Misc Operators</p></li>
</ul>
<p>This chapter will examine the arithmetic, relational, logical, bitwise, assignment and other operators one by one.</p>
<h2>Arithmetic Operators:</h2>
<p>There are following arithmetic operators supported by C++ language:</p>
<p>Assume variable A holds 10 and variable B holds 20, then:</p>
<p><a href="/cplusplus/cpp_arithmatic_operators.htm" title="Arithmetic Operators in C++">Show Examples</a></p>
<table class="table table-bordered">
<tr><th width="10%">Operator</th><th width="45%">Description</th><th>Example</th></tr>
<tr><td>+</td><td>Adds two operands</td><td> A + B will give 30</td></tr>
<tr><td>-</td><td>Subtracts second operand from the first</td><td> A - B will give -10</td></tr>
<tr><td>*</td><td>Multiplies both operands</td><td> A * B will give 200</td></tr>
<tr><td>/</td><td>Divides numerator by de-numerator</td><td> B / A will give 2</td></tr>
<tr><td>%</td><td>Modulus Operator and remainder of after an integer division</td><td> B % A will give 0</td></tr>
<tr><td>++</td><td><a href="/cplusplus/cpp_increment_decrement_operators.htm" title="Increment operator in C++">Increment operator</a>, increases integer value by one</td><td> A++ will give 11</td></tr>
<tr><td>--</td><td><a href="/cplusplus/cpp_increment_decrement_operators.htm" title="Decrement operator in C++">Decrement operator</a>, decreases integer value by one</td><td> A-- will give 9</td></tr>
</table>
<h2>Relational Operators:</h2>
<p>There are following relational operators supported by C++ language</p>
<p>Assume variable A holds 10 and variable B holds 20, then:</p>
<p><a href="/cplusplus/cpp_relational_operators.htm" title="Relational Operators in C++">Show Examples</a></p>
<table class="table table-bordered">
<tr><th width="10%">Operator</th><th width="45%">Description</th><th>Example</th></tr>
<tr><td>==</td><td> Checks if the values of two operands are equal or not, if yes then condition becomes true.</td><td> (A == B) is not true. </td></tr>
<tr><td>!=</td><td> Checks if the values of two operands are equal or not, if values are not equal then condition becomes true.</td><td> (A != B) is true. </td></tr>
<tr><td>&gt;</td><td> Checks if the value of left  operand is greater than the value of right operand, if yes then condition becomes true.</td><td> (A &gt; B) is not true. </td></tr>
<tr><td>&lt;</td><td> Checks if the value of left  operand is less than the value of right operand, if yes then condition becomes true.</td><td> (A &lt; B) is true. </td></tr>
<tr><td>&gt;=</td><td> Checks if the value of left  operand is greater than or equal to the value of right operand, if yes then condition becomes true.</td><td> (A &gt;= B) is not true. </td></tr>
<tr><td>&lt;=</td><td> Checks if the value of left  operand is less than or equal to the value of right operand, if yes then condition becomes true.</td><td> (A &lt;= B) is true. </td></tr>
</table>
<h2>Logical Operators:</h2>
<p>There are following logical operators supported by C++ language</p>
<p>Assume variable A holds 1 and variable B holds 0, then:</p>
<p><a href="/cplusplus/cpp_logical_operators.htm" title="Logical Operators in C++">Show Examples</a></p>
<table class="table table-bordered">
<tr><th width="10%">Operator</th><th width="45%">Description</th><th>Example</th></tr>
<tr><td>&amp;&amp;</td><td> Called Logical AND  operator. If both the operands are non-zero, then condition becomes true.</td><td> (A &amp;&amp; B) is false. </td></tr>
<tr><td>||</td><td>Called Logical OR Operator.  If any of the two operands is non-zero, then condition becomes true.</td><td> (A || B) is true. </td></tr>
<tr><td>!</td><td>Called Logical NOT Operator.  Use to reverses the logical state of its operand. If a condition is true, then Logical NOT operator will make false.</td><td> !(A &amp;&amp; B) is true. </td></tr>
</table>
<h2>Bitwise Operators:</h2>
<p>Bitwise operator works on bits and perform bit-by-bit operation. The truth tables for &amp;, |, and ^ are as follows:</p>
<table class="table table-bordered">
<tr><th>p</th><th>q</th><th>p &amp; q</th><th>p | q</th><th>p ^ q</th></tr>
<tr><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td></tr>
<tr><td>0</td><td>1</td><td>0</td><td>1</td><td>1</td></tr>
<tr><td>1</td><td>1</td><td>1</td><td>1</td><td>0</td></tr>
<tr><td>1</td><td>0</td><td>0</td><td>1</td><td>1</td></tr>
</table>
<p>Assume if A = 60; and B = 13; now in binary format they will be as follows:</p>
<p>A = 0011 1100</p>
<p>B = 0000 1101</p>
<p>-----------------</p>
<p>A&amp;B = 0000 1100</p>
<p>A|B = 0011 1101</p>
<p>A^B = 0011 0001</p>
<p>~A&nbsp; = 1100 0011</p>
<p>The Bitwise operators supported by C++ language are listed in the following table. Assume variable A holds 60 and variable B holds 13, then:</p>
<p><a href="/cplusplus/cpp_bitwise_operators.htm" title="Bitwise Operators in C++">Show Examples</a></p>
<table class="table table-bordered">
<tr><th width="10%">Operator</th><th width="45%">Description</th><th>Example</th></tr>
<tr><td>&amp;</td><td> Binary AND Operator copies a bit to the result if it exists in both operands. </td><td> (A &amp; B) will give 12 which is 0000 1100</td></tr>
<tr><td>|</td><td> Binary OR Operator copies a bit if it exists in either operand. </td><td> (A | B) will give 61 which is 0011 1101</td></tr>
<tr><td>^</td><td> Binary XOR Operator copies the bit if it is set in one operand but not both. </td><td> (A ^ B) will give 49 which is 0011 0001</td></tr>
<tr><td>~</td><td> Binary Ones Complement Operator is unary and has the effect of 'flipping' bits. </td><td>(~A ) will give -61 which is 1100 0011 in 2's complement form due to a signed binary number.</td></tr>
<tr><td>&lt;&lt;</td><td> Binary Left Shift Operator. The left operands value is moved left by the number of bits specified by the right operand. </td><td> A &lt;&lt; 2 will give 240 which is 1111 0000</td></tr>
<tr><td>&gt;&gt;</td><td> Binary Right Shift Operator. The left operands value is moved right by the number of bits specified by the right operand. </td><td> A &gt;&gt; 2 will give 15 which is 0000 1111</td></tr>
</table>
<h2>Assignment Operators:</h2>
<p>There are following assignment operators supported by C++ language:</p>
<p><a href="/cplusplus/cpp_assignment_operators.htm" title="Assignment Operators in C++">Show Examples</a></p>
<table class="table table-bordered">
<tr><th width="10%">Operator</th><th width="45%">Description</th><th>Example</th></tr>
<tr><td>=</td><td>Simple assignment operator, Assigns values from right side operands to left side operand</td><td> C = A + B will assign value of A + B into C</td></tr>
<tr><td>+=</td><td>Add AND assignment operator, It adds right operand to the left operand and assign the result to left operand</td><td> C += A is equivalent to C = C + A</td></tr>
<tr><td>-=</td><td>Subtract AND assignment operator, It subtracts right operand from the left operand and assign the result to left operand</td><td> C -= A is equivalent to C = C - A</td></tr>
<tr><td>*=</td><td>Multiply AND assignment operator, It multiplies right operand with the left operand and assign the result to left operand</td><td> C *= A is equivalent to C = C * A</td></tr>
<tr><td>/=</td><td>Divide AND assignment operator, It divides left operand with the right operand and assign the result to left operand</td><td> C /= A is equivalent to C = C / A</td></tr>
<tr><td>%=</td><td>Modulus AND assignment operator, It takes modulus using two operands and assign the result to  left operand</td><td> C %= A is equivalent to C = C % A</td></tr>
<tr><td>&lt;&lt;=</td><td>Left shift AND assignment operator </td><td> C &lt;&lt;= 2 is same as  C = C &lt;&lt; 2</td></tr>
<tr><td>&gt;&gt;=</td><td>Right shift AND assignment operator </td><td> C &gt;&gt;= 2 is same as  C = C &gt;&gt; 2</td></tr>
<tr><td>&amp;=</td><td>Bitwise AND assignment operator</td><td> C &amp;= 2 is same as  C = C &amp; 2</td></tr>
<tr><td>^=</td><td>bitwise exclusive OR and assignment operator</td><td> C ^= 2 is same as  C = C ^ 2</td></tr>
<tr><td>|=</td><td>bitwise inclusive OR and assignment operator</td><td> C |= 2 is same as  C = C | 2</td></tr>
</table>
<h2>Misc Operators</h2>
<p>There are few other operators supported by C++ Language.</p>
<table class="table table-bordered">
<tr><th width="15%">Operator</th><th width="35%">Description</th></tr>
<tr><td>sizeof</td><td><a href="/cplusplus/cpp_sizeof_operator.htm">sizeof operator</a> returns the size of a variable. For example, sizeof(a), where a is integer, will return 4.</td></tr>
<tr><td>Condition ? X : Y</td><td><a href="/cplusplus/cpp_conditional_operator.htm">Conditional operator</a>. If Condition is true ? then it returns value X : otherwise value Y</td></tr>
<tr><td>,</td><td><a href="/cplusplus/cpp_comma_operator.htm">Comma operator</a> causes a sequence of operations to be performed. The value of the entire comma expression is the value of the last expression of the comma-separated list.</td></tr>
<tr><td>. (dot) and  -&gt; (arrow)</td><td><a href="/cplusplus/cpp_member_operators.htm">Member operators</a> are used to reference individual members of classes, structures, and unions.</td></tr>
<tr> <td>Cast</td><td><a href="/cplusplus/cpp_casting_operators.htm">Casting operators</a> convert one data type to another. For example, int(2.2000) would return 2.</td></tr>
<tr><td>&amp;</td><td><a href="/cplusplus/cpp_pointer_operators.htm">Pointer operator &amp;</a> returns the address of an variable. For example &amp;a; will give actual address of the variable.</td></tr>
<tr><td>*</td><td><a href="/cplusplus/cpp_pointer_operators.htm">Pointer operator *</a> is pointer to a variable. For example *var; will pointer to a variable var.</td></tr>
</table>
<h2>Operators Precedence in C++:</h2>
<p>Operator precedence determines the grouping of terms in an expression. This affects how an expression is evaluated. Certain operators have higher precedence than others; for example, the multiplication operator has higher precedence than the addition operator:</p>
<p>For example x = 7 + 3 * 2; here, x is assigned 13, not 20 because operator * has higher precedence than +, so it first gets multiplied with 3*2 and then adds into 7.</p>
 <p>Here, operators with the highest precedence appear at the top of the table, those with the lowest appear at the bottom. Within an expression, higher precedence operators will be evaluated first.</p>
<p><a href="/cplusplus/cpp_operators_precedence.htm" title="Operators Precedence in C++">Show Examples</a></p>
<table class="table table-bordered">
<tr> <th>Category&nbsp;</th> <th>Operator&nbsp;</th><th>Associativity&nbsp;</th> </tr> 
<tr> <td>Postfix&nbsp;</td><td>() [] -&gt; .  ++   - - &nbsp;</td> <td>Left to right&nbsp;</td> </tr>
<tr> <td>Unary&nbsp;</td> <td>+  -   !  ~  ++  - -   (type)*  &amp;  sizeof&nbsp;</td> <td>Right to left&nbsp;</td></tr> 
<tr> <td>Multiplicative &nbsp;</td> <td>*  /  %&nbsp;</td><td>Left to right&nbsp;</td> </tr> 
<tr> <td>Additive &nbsp;</td><td>+  -&nbsp;</td> <td>Left to right&nbsp;</td> </tr>
<tr> <td>Shift &nbsp;</td> <td>&lt;&lt; &gt;&gt;&nbsp;</td> <td>Left to right&nbsp;</td> </tr> 
<tr> <td>Relational &nbsp;</td><td>&lt; &lt;=  &gt; &gt;=&nbsp;</td> <td>Left to right&nbsp;</td> </tr>
<tr> <td>Equality &nbsp;</td> <td>==  !=&nbsp;</td> <td>Left to right&nbsp;</td> </tr> 
<tr> <td>Bitwise AND&nbsp;</td><td>&amp;&nbsp;</td> <td>Left to right&nbsp;</td> </tr> 
<tr> <td>Bitwise XOR&nbsp;</td> <td>^&nbsp;</td> <td>Left to right&nbsp;</td></tr> 
<tr> <td>Bitwise OR&nbsp;</td> <td>|&nbsp;</td> <td>Left to right&nbsp;</td></tr> 
<tr> <td>Logical AND&nbsp;</td><td>&amp;&amp;&nbsp;</td> <td>Left to right&nbsp;</td></tr>
<tr><td>Logical OR&nbsp;</td> <td>||&nbsp;</td> <td>Left to right&nbsp;</td></tr> 
<tr> <td>Conditional&nbsp;</td><td>?:&nbsp;</td> <td>Right to left&nbsp;</td> </tr>
<tr><td>Assignment&nbsp;</td> <td>=  +=  -=  *=  /=  %=&gt;&gt;=  &lt;&lt;=  &amp;=  ^=   |=&nbsp;</td><td>Right to left&nbsp;</td></tr>
<tr> <td>Comma&nbsp;</td> <td>,&nbsp;</td> <td>Left to right&nbsp;</td></tr> 
</table>

<br/><br/><br/><br/><br/>
<a href="C++Storage.jsp">Previous</a>
<a href="C++Loops.jsp">Next</a>

<footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>


</body>
</html>