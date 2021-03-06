<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="Layout.css" >
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>File Input/Output In C</title>
</head>
<body>

<header>
eduOnline
</header>

<h1>FILE HANDLING IN C </h1>

<p>The last chapter explained the standard input and output devices handled by C programming language.
 This chapter cover how C programmers can create, open, close text or binary files for their data storage.</p>
<p>A file represents a sequence of bytes, regardless of it being a text file or a binary file. C programming language 
provides access on high level functions as well as low level (OS level) calls to handle file on your storage devices. 
This chapter will take you through the important calls for file management.</p> 
<h2>Opening Files</h2>
<p>You can use the <b>fopen( )</b> function to create a new file or to open an existing file. This call will initialize an
 object of the type <b>FILE</b>, which contains all the information necessary to control the stream. 
 The prototype of this function call is as follows &minus;</p>
<pre>
FILE *fopen( const char * filename, const char * mode );
</pre>
<p>Here, <b>filename</b> is a string literal, which you will use to name your file, 
and access <b>mode</b> can have one of the following values &minus;</p>
<table border="1">
<tr>
<th style="width:5%">Mode</th>
<th>Description</th>
</tr>
<tr>
<td>r</td>
<td>Opens an existing text file for reading purpose.</td>
</tr>
<tr>
<td>w</td>
<td>Opens a text file for writing. If it does not exist, then a new file is created. Here your program will start writing
 content from the beginning of the file.</td>
</tr>
<tr>
<td>a</td>
<td>Opens a text file for writing in appending mode. If it does not exist, then a new file is created. Here your program 
will start appending content in the existing file content.</td>
</tr>
<tr>
<td>r+</td>
<td>Opens a text file for both reading and writing.</td>
</tr>
<tr>
<td>w+</td>
<td>Opens a text file for both reading and writing. It first truncates the file to zero length if it exists,
 otherwise creates a file if it does not exist.</td>
</tr>
<tr>
<td>a+</td>
<td>Opens a text file for both reading and writing. It creates the file if it does not exist. The reading will start
 from the beginning but writing can only be appended.</td>
</tr>
</table>
<p>If you are going to handle binary files, then you will use following access modes instead of the above mentioned 
ones &minus;</p>
<pre>
"rb", "wb", "ab", "rb+", "r+b", "wb+", "w+b", "ab+", "a+b"
</pre>
<h2>Closing a File</h2>
<p>To close a file, use the fclose( ) function. The prototype of this function is &minus;</p>
<pre>
int fclose( FILE *fp );
</pre>
<p>The <b>fclose(-)</b> function returns zero on success, or <b>EOF</b> if there is an error in closing the file. 
This function actually flushes any data still pending in the buffer to the file, closes the file, and releases any memory 
used for the file. The EOF is a constant defined in the header file <b>stdio.h</b>.</p>
<p>There are various functions provided by C standard library to read and write a file, character by character,
 or in the form of a fixed length string.</p>
<h2>Writing a File</h2>
<p>Following is the simplest function to write individual characters to a stream &minus;</p>
<pre>
int fputc( int c, FILE *fp );
</pre>
<p>The function <b>fputc()</b> writes the character value of the argument c to the output stream referenced by fp.
 It returns the written character written on success otherwise <b>EOF</b> if there is an error.
  You can use the following functions to write a null-terminated string to a stream &minus;</p> 
<pre>
int fputs( const char *s, FILE *fp );
</pre>
<p>The function <b>fputs()</b> writes the string <b>s</b> to the output stream referenced by fp. It returns a non-negative 
value on success, otherwise <b>EOF</b> is returned in case of any error.
 You can use <b>int fprintf(FILE *fp,const char *format, ...)</b> function as well to write a string into a file.
  Try the following example.</p>
<p>Make sure you have <b>/tmp</b> directory available. If it is not, then before proceeding, you must create this directory
 on your machine.</p>
<pre>
#include &lt;stdio.h&gt;

main() {
   FILE *fp;

   fp = fopen("/tmp/test.txt", "w+");
   fprintf(fp, "This is testing for fprintf...\n");
   fputs("This is testing for fputs...\n", fp);
   fclose(fp);
}
</pre>
<p>When the above code is compiled and executed, it creates a new file <b>test.txt</b> in /tmp directory and writes
 two lines using two different functions. Let us read this file in the next section.</p>
<h2>Reading a File</h2>
<p>Given below is the simplest function to read a single character from a file &minus;</p>
<pre>
int fgetc( FILE * fp );
</pre>
<p>The <b>fgetc()</b> function reads a character from the input file referenced by fp. 
The return value is the character read, or in case of any error, it returns <b>EOF</b>. The following function allows to read a string from a stream &minus;</p>
<pre>
char *fgets( char *buf, int n, FILE *fp );
</pre>
<p>The functions <b>fgets()</b> reads up to n-1 characters from the input stream referenced by fp.
 It copies the read string into the buffer <b>buf</b>, appending a <b>null</b> character to terminate the string.</p>
<p>If this function encounters a newline character '\n' or the end of the file EOF before they have read the maximum
 number of characters, then it returns only the characters read up to that point including the new line character.
  You can also use <b>int fscanf(FILE *fp, const char *format, ...)</b> function to read strings from a file,
   but it stops reading after encountering the first space character.</p>
<pre>
#include &lt;stdio.h&gt;

main() {

   FILE *fp;
   char buff[255];

   fp = fopen("/tmp/test.txt", "r");
   fscanf(fp, "%s", buff);
   printf("1 : %s\n", buff );

   fgets(buff, 255, (FILE*)fp);
   printf("2: %s\n", buff );
   
   fgets(buff, 255, (FILE*)fp);
   printf("3: %s\n", buff );
   fclose(fp);

}
</pre>
<p>When the above code is compiled and executed, it reads the file created in the previous section and produces
 the following result &minus;</p>
<pre>
1 : This
2: is testing for fprintf...

3: This is testing for fputs...
</pre>
<p>Let's see a little more in detail about what happened here. First, <b>fscanf()</b> read just <b>This</b> because after that,
 it encountered a space, second call is for <b>fgets()</b> which reads the remaining line till it encountered end of line.
  Finally, the last call <b>fgets()</b> reads the second line completely.</p>
<h2>Binary I/O Functions</h2>
<p>There are two functions, that can be used for binary input and output &minus;</p>
<pre>
size_t fread(void *ptr, size_t size_of_elements, size_t number_of_elements, FILE *a_file);
              
size_t fwrite(const void *ptr, size_t size_of_elements, size_t number_of_elements, FILE *a_file);
</pre>
<p>Both of these functions should be used to read or write blocks of memories - usually arrays or structures.</p>


<br/><br/><br/><br/><br/>

<a href="CIO.jsp">Previous</a>
<a href="CPreprocessors.jsp">Next</a>


 <footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>


</body>
</html>