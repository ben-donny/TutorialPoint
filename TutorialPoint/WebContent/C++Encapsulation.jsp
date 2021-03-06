<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="CoursePages.css" >
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>C++ Encapsulation</title>
</head>
<body>


<header>
eduOnline
</header>

<h1>C++ ENCAPSULATION</h1>

<p>All C++ programs are composed of the following two fundamental elements: </p>
<ul class="list">
<li><p><b>Program statements (code):</b> This is the part of a program that performs actions and they are called functions.</p></li>
<li><p><b>Program data:</b> The data is the information of the program which affected by the program functions.</p></li>
</ul>
<p>Encapsulation is an Object Oriented Programming concept that binds together the data and functions that manipulate the data, and that keeps both safe from outside interference and misuse. Data encapsulation led to the important OOP concept of <b>data hiding</b>.</p>
<p><b>Data encapsulation</b> is a mechanism of bundling the data, and the functions that use them and <b>data abstraction</b> is a mechanism of exposing only the interfaces and hiding the implementation details from the user.</p>
<p>C++ supports the properties of encapsulation and data hiding through the creation of user-defined types, called <b>classes</b>. We already have studied that a class can contain <b>private, protected </b> and <b>public</b> members. By default, all items defined in a class are private. For example:</p>
<pre class="prettyprint notranslate">
class Box
{
   public:
      double getVolume(void)
      {
         return length * breadth * height;
      }
   private:
      double length;      // Length of a box
      double breadth;     // Breadth of a box
      double height;      // Height of a box
};
</pre>
<p>The variables length, breadth, and height are <b>private</b>. This means that they can be accessed only by other members of the Box class, and not by any other part of your program. This is one way encapsulation is achieved.</p>
<p>To make parts of a class <b>public</b>  (i.e., accessible to other parts of your program), you must declare them after the <b>public</b> keyword. All variables or functions defined after the public specifier are accessible by all other functions in your program.</p>
<p>Making one class a friend of another exposes the implementation details and reduces encapsulation. The ideal is to keep as many of the details of each class hidden from all other classes as possible.</p>
<h2>Data Encapsulation Example:</h2>
<p>Any C++ program where you implement a class with public and private members is an example of data encapsulation and data abstraction. Consider the following example:</p>
<pre class="prettyprint notranslate tryit">
#include &lt;iostream&gt;
using namespace std;

class Adder{
   public:
      // constructor
      Adder(int i = 0)
      {
        total = i;
      }
      // interface to outside world
      void addNum(int number)
      {
          total += number;
      }
      // interface to outside world
      int getTotal()
      {
          return total;
      };
   private:
      // hidden data from outside world
      int total;
};
int main( )
{
   Adder a;
   
   a.addNum(10);
   a.addNum(20);
   a.addNum(30);

   cout &lt;&lt; "Total " &lt;&lt; a.getTotal() &lt;&lt;endl;
   return 0;
}
</pre>
<p>When the above code is compiled and executed, it produces the following result:</p>
<pre class="prettyprint notranslate">
Total 60
</pre>
<p>Above class adds numbers together, and returns the sum. The public members <b>addNum</b> and <b>getTotal </b> are the interfaces to the outside world and a user needs to know them to use the class. The private member <b>total</b> is something that is hidden from the outside world, but is needed for the class to operate properly.</p>
<h2>Designing Strategy:</h2>
<p>Most of us have learned through bitter experience to make class members private by default unless we really need to expose them. That's just good <b>encapsulation</b>.</p>
<p>This wisdom is applied most frequently to data members, but it applies equally to all members, including virtual functions.</p>

<br/><br/><br/><br/><br/>
<a href="C++Abstraction.jsp">Previous</a>
<a href="C++Interfaces.jsp">Next</a>

<footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>

</body>
</html>