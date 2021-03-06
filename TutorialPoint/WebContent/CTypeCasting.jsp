<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="Layout.css" >
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>type Casting In C</title>
</head>
<body>

<header>
eduOnline
</header>

<h1>TYPE CASTING IN C</h1>

<p>Type casting is a way to convert a variable from one data type to another data type. For example,
 if you want to store a 'long' value into a simple integer then you can type cast 'long' to 'int'. 
 You can convert the values from one type to another explicitly using the <b>cast operator</b> as follows &minus;</p>
<pre>
(type_name) expression
</pre>
<p>Consider the following example where the cast operator causes the division of one integer variable by another to be
 performed as a floating-point operation &minus;</p>
<pre">
#include &lt;stdio.h&gt;

main() {

   int sum = 17, count = 5;
   double mean;

   mean = (double) sum / count;
   printf("Value of mean : %f\n", mean );

}
</pre>
<p>When the above code is compiled and executed, it produces the following result &minus;</p>
<pre>
Value of mean : 3.400000
</pre>
<p>It should be noted here that the cast operator has precedence over division, so the value of <b>sum</b> is first 
converted to type <b>double</b> and finally it gets divided by count yielding a double value.</p>
<p>Type conversions can be implicit which is performed by the compiler automatically, or it can be specified explicitly 
through the use of the <b>cast operator</b>. It is considered good programming practice to use the cast operator whenever
 type conversions are necessary.</p>
<h2>Integer Promotion</h2>
<p>Integer promotion is the process by which values of integer type "smaller" than <b>int</b> or <b>unsigned int</b> are converted
 either to <b>int</b> or <b>unsigned int</b>. Consider an example of adding a character with an integer &minus;</p>
<pre>
#include &lt;stdio.h&gt;

main() {

   int  i = 17;
   char c = 'c'; /* ascii value is 99 */
   int sum;

   sum = i + c;
   printf("Value of sum : %d\n", sum );

}
</pre>
<p>When the above code is compiled and executed, it produces the following result &minus;</p>
<pre>
Value of sum : 116
</pre>
<p>Here, the value of sum is 116 because the compiler is doing integer promotion and converting the value of 'c' to ASCII
 before performing the actual addition operation.</p>
<h2>Usual Arithmetic Conversion</h2>
<p>The <b>usual arithmetic conversions</b> are implicitly performed to cast their values to a common type.
 The compiler first performs <i>integer promotion</i>; if the operands still have different types, then they are converted to the 
 type that appears highest in the following hierarchy &minus;</p>
<img src=".\Images\usual_arithmetic_conversion.png" alt="Usual Arithmetic Conversion" />
<p>The usual arithmetic conversions are not performed for the assignment operators, nor for the logical operators &amp;&amp;
 and ||. Let us take the following example to understand the concept &minus;</p>
<pre>
#include &lt;stdio.h&gt;

main() {

   int  i = 17;
   char c = 'c'; /* ascii value is 99 */
   float sum;

   sum = i + c;
   printf("Value of sum : %f\n", sum );

}
</pre>
<p>When the above code is compiled and executed, it produces the following result &minus;</p>
<pre>
Value of sum : 116.000000
</pre>
<p>Here, it is simple to understand that first c gets converted to integer, but as the final value is double, usual 
arithmetic conversion applies and the compiler converts i and c into 'float' and adds them yielding a 'float' result.</p>


<br/><br/><br/><br/><br/>

<a href="CHeaderFiles.jsp">Previous</a>
<a href="CErrorHandling.jsp">Next</a>


 <footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>


</body>
</html>