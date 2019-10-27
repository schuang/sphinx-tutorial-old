
Code listing
----------------------

Some of the useful code-listing features are:

- syntax highlighting
- line numbering
- line highlighting (emphasis)
- including external files.

Highlighting of programming languages are supported by `Pygments <http://pygments.org/docs/>`_.

Bash example:

.. code-block:: bash

    export PATH=$HOME/bin:$PATH
    for i in `seq 1 10`; do
       echo $i
       echo $LD_LIBRARY_PATH
    done

C example with line emphasis:

.. code-block:: c
   :linenos:
   :emphasize-lines: 3,5

    #include <stdio.h>

    int static hello(int *i)
    {
       double *x;
       return 0;
    }

    for (int i=0; i<10; i++) {
      printf("i = %d\n", i);
    } 


It is possible to include an external file, e.g. including a Python file:

.. literalinclude:: code1.py
   :language: python
   :linenos:

Code listing without highlighting:

.. literalinclude:: code1.py
   :language: none


