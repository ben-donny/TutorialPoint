<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="CoursePages.css" >
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>C++ Basic Syntax</title>
</head>
<body>


<header>
eduOnline
</header>

<h1>C++ BASIC SYNTAX</h1>


<p>When we consider a C++ program, it can be defined as a collection of objects that communicate via invoking each other's methods. Let us now briefly look into what do class, object, methods and Instance variables mean.</p>
<ul class="list">
<li><p><b>Object -</b> Objects have states and behaviors. Example: A dog has states - color, name, breed as well as behaviors - wagging, barking, eating. An object is an instance of a class. </p></li>
<li><p><b>Class -</b> A class can be defined as a template/blueprint that describes the behaviors/states that object of its type support.</p></li>
<li><p><b>Methods -</b> A method is basically a behavior. A class can contain many methods. It is in methods where the logics are written, data is manipulated and all the actions are executed.</p></li>
<li><p><b>Instance Variables -</b> Each object has its unique set of instance variables. An object's state is created by the values assigned to these instance variables.</p></li>
</ul>
<h2>C++ Program Structure:</h2>
<p>Let us look at a simple code that would print the words <i>Hello World</i>.</p>
<pre class="prettyprint notranslate tryit">
#include &lt;iostream&gt;
using namespace std;

// main() is where program execution begins.

int main()
{
   cout &lt;&lt; "Hello World"; // prints Hello World
   return 0;
}
</pre>
<p>Let us look various parts of the above program:</p>
<ul class="list">
<li><p>The C++ language defines several headers, which contain information that is either necessary or useful to your program. For this program, the header <b>&lt;iostream&gt;</b> is needed.</p></li>
<li><p>The line <b>using namespace std;</b> tells the compiler to use the std namespace. Namespaces are a relatively recent addition to C++.</p></li>
<li><p>The next line <b>// main() is where program execution begins.</b> is a single-line comment available in C++. Single-line comments begin with // and stop at the end of the line.</p></li>
<li><p>The line <b>int main()</b> is the main function where program execution begins.</p></li>
<li><p>The next line <b>cout &lt;&lt; "This is my first C++ program.";</b> causes the message "This is my first C++ program" to be displayed on the screen.</p></li>
<li><p>The next line <b>return 0;</b> terminates main( )function and causes it to return the value 0 to the calling process.</p></li>
</ul>
<h2>Compile &amp; Execute C++ Program:</h2>
<p>Let's look at how to save the file, compile and run the program. Please follow the steps given below:</p>
<ul class="list">
<li><p>Open a text editor and add the code as above.</p></li>
<li><p>Save the file as:  hello.cpp</p></li>
<li><p>Open a command prompt and go to the directory where you saved the file.</p></li>
<li><p>Type 'g++ hello.cpp ' and press enter to compile your code. If there are no errors in your code the command prompt will take you to the next line and would generate a.out executable file.</p></li>
<li><p>Now, type ' a.out' to run your program.</p></li>	
<li><p>You will be able to see ' Hello World ' printed on the window.</p></li>
</ul>
<pre class="prettyprint notranslate">
$ g++ hello.cpp
$ ./a.out
Hello World
</pre>
<p>Make sure that g++ is in your path and that you are running it in the directory containing file hello.cpp.</p>
<p>You can compile C/C++ programs using makefile. For more details, you can check <a href="/makefile/index.htm" target="_blank">Makefile Tutorial</a>.</p>
<h2>Semicolons &amp; Blocks in C++:</h2>
<p>In C++, the semicolon is a statement terminator. That is, each individual statement must be ended with a semicolon. It indicates the end of one logical entity.</p>
<p>For example, following are three different statements:</p>
<pre class="prettyprint notranslate">
x = y;
y = y+1;
add(x, y);
</pre>
<p>A block is a set of logically connected statements that are surrounded by opening and closing braces. For example:</p>
<pre class="prettyprint notranslate">
{
   cout &lt;&lt; "Hello World"; // prints Hello World
   return 0;
}
</pre>
<p>C++ does not recognize the end of the line as a terminator. For this reason, it does not matter where on a line you put a statement. For example:</p>
<pre class="prettyprint notranslate">
x = y;
y = y+1;
add(x, y);
</pre>
<p>is the same as</p>
<pre class="prettyprint notranslate">
x = y; y = y+1; add(x, y);
</pre>
<h2>C++ Identifiers:</h2>
<p>A C++ identifier is a name used to identify a variable, function, class, module, or any other user-defined item. An identifier starts with a letter A to Z or a to z or an underscore (_) followed by zero or more letters, underscores, and digits (0 to 9).</p>
<p>C++ does not allow punctuation characters such as @, $, and % within identifiers. C++ is a case-sensitive programming language.  Thus, <b>Manpower</b> and <b>manpower</b> are two different identifiers in C++.</p>
<p>Here are some examples of acceptable identifiers:</p>
<pre class="prettyprint notranslate">
mohd       zara    abc   move_name  a_123
myname50   _temp   j     a23b9      retVal
</pre>
<h2>C++ Keywords:</h2>
<p>The following list shows the reserved words in C++. These reserved words may not be used as constant or variable or any other identifier names.</p>
<table class="table table-bordered">
<tr>
<td>asm</td>
<td>else</td>
<td>new</td>
<td>this</td>
</tr>
<tr>
<td>auto</td>
<td>enum</td>
<td>operator</td>
<td>throw</td>
</tr>
<tr>
<td>bool</td>
<td>explicit</td>
<td>private</td>
<td>true</td>
</tr>
<tr>
<td>break</td>
<td>export</td>
<td>protected</td>
<td>try</td>
</tr>
<tr>
<td>case</td>
<td>extern</td>
<td>public</td>
<td>typedef</td>
</tr>
<tr>
<td>catch</td>
<td>false</td>
<td>register</td>
<td>typeid</td>
</tr>
<tr>
<td>char</td>
<td>float</td>
<td>reinterpret_cast</td>
<td>typename</td>
</tr>
<tr>
<td>class</td>
<td>for</td>
<td>return</td>
<td>union</td>
</tr>
<tr>
<td>const</td>
<td>friend</td>
<td>short</td>
<td>unsigned</td>
</tr>
<tr>
<td>const_cast</td>
<td>goto</td>
<td>signed</td>
<td>using</td>
</tr>
<tr>
<td>continue</td>
<td>if</td>
<td>sizeof</td>
<td>virtual</td>
</tr>
<tr>
<td>default</td>
<td>inline</td>
<td>static</td>
<td>void</td>
</tr>
<tr>
<td>delete</td>
<td>int</td>
<td>static_cast</td>
<td>volatile</td>
</tr>
<tr>
<td>do</td>
<td>long</td>
<td>struct</td>
<td>wchar_t</td>
</tr>
<tr>
<td>double</td>
<td>mutable</td>
<td>switch</td>
<td>while</td>
</tr>
<tr>
<td>dynamic_cast</td>
<td>namespace</td>
<td>template</td>
<td>&nbsp;</td>
</tr>
</table>
<h2>Trigraphs:</h2>
<p>A few characters have an alternative representation, called a trigraph sequence. A trigraph is a three-character sequence that represents a single character and the sequence always starts with two question marks.</p>
<p>Trigraphs are expanded anywhere they appear, including within string literals and character literals, in comments, and in preprocessor directives.</p>
<p>Following are most frequently used trigraph sequences:</p>
<table class="table table-bordered">
<tr>
<th>Trigraph</th>
<th>Replacement</th>
</tr>
<tr>
<td>??=</td>
<td>#</td>
</tr>
<tr>
<td>??/</td>
<td>\</td>
</tr>
<tr>
<td>??'</td>
<td>^</td>
</tr>
<tr>
<td>??(</td>
<td>[</td>
</tr>
<tr>
<td>??)</td>
<td>]</td>
</tr>
<tr>
<td>??!</td>
<td>|</td>
</tr>
<tr>
<td>??&lt;</td>
<td>{</td>
</tr>
<tr>
<td>??&gt;</td>
<td>}</td>
</tr>
<tr>
<td>??-</td>
<td>~</td>
</tr>
</table>
<p>All the compilers do not support trigraphs and they are not advised to be used because of their confusing nature.</p>
<h2>Whitespace in C++:</h2>
<p>A line containing only whitespace, possibly with a comment, is known as a blank line, and C++ compiler totally ignores it.</p>
<p>Whitespace is the term used in C++ to describe blanks, tabs, newline characters and comments. Whitespace separates one part of a statement from another and enables the compiler to identify where one element in a statement, such as int, ends and the next element begins. Therefore, in the statement,</p>
<pre class="prettyprint notranslate">
int age;
</pre>
<p>there must be at least one whitespace character (usually a space) between int and age for the compiler to be able to distinguish them. On the other hand, in the statement</p>
<pre class="prettyprint notranslate">
fruit = apples + oranges;   // Get the total fruit
</pre>
<p>no whitespace characters are necessary between fruit and =, or between = and apples, although you are free to include some if you wish for readability purpose.</p>


<br/><br/><br/><br/><br/>
<a href="C++Intro.jsp">Previous</a>
<a href="C++Comments.jsp">Next</a>

<footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>


</body>
</html>