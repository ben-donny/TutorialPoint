<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="CoursePages.css" >
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>C++ Strings</title>
</head>
<body>


<header>
eduOnline
</header>

<h1>C++ STRINGS</h1>

<p>C++ provides following two types of string representations:</p>
<ul class="list">
<li><p>The C-style character string.</p></li>
<li><p>The string class type introduced with Standard C++.</p></li>
</ul>
<h2>The C-Style Character String:</h2>
<p>The C-style character string originated within the C language and continues to be supported within C++.  This string is actually a one-dimensional array of characters which is terminated by a <b>null</b> character '\0'. Thus a null-terminated string contains the characters that comprise the string followed by a <b>null</b>.</p>
<p>The following declaration and initialization create a string consisting of the word "Hello". To hold the null character at the end of the array, the size of the character array containing the string is one more than the number of characters in the word "Hello."</p>
<pre class="prettyprint notranlate">
char greeting[6] = {'H', 'e', 'l', 'l', 'o', '\0'};
</pre>
<p>If you follow the rule  of array initialization, then you can write the above statement as follows: </p>
<pre class="prettyprint notranlate">
char greeting[] = "Hello";
</pre>
<p>Following is the memory presentation of above defined string in C/C++:</p>
<center>
<img src=".\Images\string_representation1.jpg" alt="String Presentation in C/C++"/>
</center>
<p>Actually, you do not place the null character at the end of a string constant. The C++ compiler automatically places the '\0' at the end of the string when it initializes the array. Let us try to print above-mentioned string:</p>
<pre class="prettyprint notranlate tryit">
#include &lt;iostream&gt;

using namespace std;

int main ()
{
   char greeting[6] = {'H', 'e', 'l', 'l', 'o', '\0'};

   cout &lt;&lt; "Greeting message: ";
   cout &lt;&lt; greeting &lt;&lt; endl;

   return 0;
}
</pre>
<p>When the above code is compiled and executed, it produces result something as follows:</p>
<pre class="prettyprint notranlate">
Greeting message: Hello
</pre>
<p>C++ supports a wide range of functions that manipulate null-terminated strings:</p>
<table class="table table-bordered">
<tr>
<th width="5%">S.N.</th>
<th>Function &amp; Purpose</th>
</tr>
<tr>
<td>1</td>
<td><b>strcpy(s1, s2);</b>
<p>Copies string s2 into string s1.</p>
</td>
</tr>
<tr>
<td>2</td>
<td><b>strcat(s1, s2);</b>
<p>Concatenates string s2 onto the end of string s1.</p>
</td>
</tr>
<tr>
<td>3</td>
<td><b>strlen(s1);</b>
<p>Returns the length of string s1.</p>
</td>
</tr>
<tr>
<td>4</td>
<td><b>strcmp(s1, s2);</b>
<p>Returns 0 if s1 and s2 are the same; less than 0 if s1&lt;s2; greater than 0 if s1&gt;s2.</p>
</td>
</tr>
<tr>
<td>5</td>
<td><b>strchr(s1, ch);</b>
<p>Returns a pointer to the first occurrence of character ch in string s1.</p>
</td>
</tr>
<tr>
<td>6</td>
<td><b>strstr(s1, s2);</b>
<p>Returns a pointer to the first occurrence of string s2 in string s1.</p>
</td>
</tr>
</table>
<p>Following example makes use of few of the above-mentioned functions:</p>
<pre class="prettyprint notranlate tryit">
#include &lt;iostream&gt;
#include &lt;cstring&gt;

using namespace std;

int main ()
{
   char str1[10] = "Hello";
   char str2[10] = "World";
   char str3[10];
   int  len ;

   // copy str1 into str3
   strcpy( str3, str1);
   cout &lt;&lt; "strcpy( str3, str1) : " &lt;&lt; str3 &lt;&lt; endl;

   // concatenates str1 and str2
   strcat( str1, str2);
   cout &lt;&lt; "strcat( str1, str2): " &lt;&lt; str1 &lt;&lt; endl;

   // total lenghth of str1 after concatenation
   len = strlen(str1);
   cout &lt;&lt; "strlen(str1) : " &lt;&lt; len &lt;&lt; endl;

   return 0;
}
</pre>
<p>When the above code is compiled and executed, it produces result something as follows:</p>
<pre class="prettyprint notranlate">
strcpy( str3, str1) : Hello
strcat( str1, str2): HelloWorld
strlen(str1) : 10
</pre>
<h2>The String Class in C++:</h2>
<p>The standard C++ library provides a <b>string</b> class type that supports all the operations mentioned above, additionally much more functionality. We will study this class in C++ Standard Library but for now let us check following example:</p>
<p>At this point, you may not understand this example because so far we have not discussed Classes and Objects. So can have a look and proceed until you have understanding on Object Oriented Concepts.</p> 
<pre class="prettyprint notranlate tryit">
#include &lt;iostream&gt;
#include &lt;string&gt;

using namespace std;

int main ()
{
   string str1 = "Hello";
   string str2 = "World";
   string str3;
   int  len ;

   // copy str1 into str3
   str3 = str1;
   cout &lt;&lt; "str3 : " &lt;&lt; str3 &lt;&lt; endl;

   // concatenates str1 and str2
   str3 = str1 + str2;
   cout &lt;&lt; "str1 + str2 : " &lt;&lt; str3 &lt;&lt; endl;

   // total lenghth of str3 after concatenation
   len = str3.size();
   cout &lt;&lt; "str3.size() :  " &lt;&lt; len &lt;&lt; endl;

   return 0;
}
</pre>
<p>When the above code is compiled and executed, it produces result something as follows:</p>
<pre class="prettyprint notranlate">
str3 : Hello
str1 + str2 : HelloWorld
str3.size() :  10
</pre>

<br/><br/><br/><br/><br/>
<a href="C++Arrays.jsp">Previous</a>
<a href="C++Pointers.jsp">Next</a>

<footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>

</body>
</html>