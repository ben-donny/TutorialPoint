<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="CoursePages.css" >
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>C++ Interfaces</title>
</head>
<body>

<header>
eduOnline
</header>

<h1>C++ INTERFACES</h1>

<p>An interface describes the behavior or capabilities of a C++ class without committing to a particular implementation of that class.</p>
<p>The C++ interfaces are implemented using <b>abstract classes</b> and these abstract classes should not be confused with data abstraction which is a concept of keeping implementation details separate from associated data.</p>
<p>A class is made abstract by declaring at least one of its functions as <b>pure virtual</b> function. A pure virtual function is specified by placing "= 0" in its declaration as follows:</p>
<pre class="prettyprint notranslate">
class Box
{
   public:
      // pure virtual function
      virtual double getVolume() = 0;
   private:
      double length;      // Length of a box
      double breadth;     // Breadth of a box
      double height;      // Height of a box
};
</pre>
<p>The purpose of an <b>abstract class</b> (often referred to as an ABC) is to provide an appropriate base class from which other classes can inherit. Abstract classes cannot be used to instantiate objects and serves only as an <b>interface</b>. Attempting to instantiate an object of an abstract class causes a compilation error.</p>
<p>Thus, if a subclass of an ABC needs to be instantiated, it has to implement each of the virtual functions, which means that it supports the interface declared by the ABC.  Failure to override a pure virtual function in a derived class, then attempting to instantiate objects of that class, is a compilation error.</p>
<p>Classes that can be used to instantiate objects are called <b>concrete classes</b>.</p>
<h2>Abstract Class Example:</h2>
<p>Consider the following example where parent class provides an interface to the base class  to implement a function called <b>getArea()</b>:</p>
<pre class="prettyprint notranslate tryit">
#include &lt;iostream&gt;
 
using namespace std;
 
// Base class
class Shape 
{
public:
   // pure virtual function providing interface framework.
   virtual int getArea() = 0;
   void setWidth(int w)
   {
      width = w;
   }
   void setHeight(int h)
   {
      height = h;
   }
protected:
   int width;
   int height;
};
 
// Derived classes
class Rectangle: public Shape
{
public:
   int getArea()
   { 
      return (width * height); 
   }
};
class Triangle: public Shape
{
public:
   int getArea()
   { 
      return (width * height)/2; 
   }
};
 
int main(void)
{
   Rectangle Rect;
   Triangle  Tri;
 
   Rect.setWidth(5);
   Rect.setHeight(7);
   // Print the area of the object.
   cout &lt;&lt; "Total Rectangle area: " &lt;&lt; Rect.getArea() &lt;&lt; endl;

   Tri.setWidth(5);
   Tri.setHeight(7);
   // Print the area of the object.
   cout &lt;&lt; "Total Triangle area: " &lt;&lt; Tri.getArea() &lt;&lt; endl; 

   return 0;
}
</pre>
<p>When the above code is compiled and executed, it produces the following result:</p>
<pre class="prettyprint notranslate">
Total Rectangle area: 35
Total Triangle area: 17
</pre>
<p>You can see how an abstract class defined an interface in terms of getArea() and two other classes implemented same function but with different algorithm to calculate the area specific to the shape.</p>
<h2>Designing Strategy:</h2>
<p>An object-oriented system might use an abstract base class to provide a common and standardized interface appropriate for all the external applications. Then, through inheritance from that abstract base class, derived classes are formed that all operate similarly.</p>
<p>The capabilities (i.e., the public functions) offered by the external applications are provided as pure virtual functions in the abstract base class. The implementations of these pure virtual functions are provided in the derived classes that correspond to the specific types of the application.</p>
<p>This architecture also allows new applications to be added to a system easily, even after the system has been defined.</p>

<br/><br/><br/><br/><br/>
<a href="C++Encapsulation.jsp">Previous</a>
<a href="C++Files.jsp">Next</a>

<footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>

</body>
</html>