@rem 08-01-2008 (raj) 
@rem compile java source and create jar file

@rem folder structure
@rem .\rajhello\src\com\raj\HelloWorld.java
@rem .\rajhello\src\Build.BAT  <<< This file

@rem .\rajhello\target
@rem .\rajhello\target\classes  << this folder is created during compilation
@rem .\rajhello\target\classes\com\raj\HelloWorld.class
@rem .\rajhello\target\classes\com\raj2\HelloWorld2.class
@rem .\rajhello\target\hello.jar
@rem /target/classes
@

@rem 2018-11-21 Revised java path
SET JAVAC="C:\Program Files\Java\jdk-10.0.2\bin"
%JAVAC%\javac  --version
%JAVAC%\javac -nowarn  ./com/raj/HelloWorld.java -d ../target/classes
%JAVAC%\javac -nowarn  ./com/raj/HelloWorld2.java -d ../target/classes


@rem %JAVAC%\jar -cf ../target/hello.jar ./com/raj/HelloWorld.class 
@rem 
@rem The -C option states change to the folder and then incldue the file
@rem so double check why it should  preceed each file
@rem Check how we can incldue all classes at one go

@rem %JAVAC%\jar -cvf ../target/hello.jar -C ../target/class/ com/raj/HelloWorld.class -C ../target/class/ com/raj2/HelloWorld2.class 

@rem change to the ../target/classes and add all subfolders (see the dot)
%JAVAC%\jar -cf --verbose ../target/hello.jar -C ../target/classes .

@rem First line inside HelloWorld.java is:   package com.raj;
@rem First line inside HelloWorld2.java is:   package com.raj2; and class name is HelloWorld2
@rem both HelloWorld.java amd HelloWorld2.java are in same folder but different package names
@rem change to folder containing jar
@rem java -classpath hello.jar com.raj.HelloWorld
@rem java -classpath hello.jar com.raj2.HelloWorld2
