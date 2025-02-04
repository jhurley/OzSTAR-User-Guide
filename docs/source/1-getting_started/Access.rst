.. highlight:: rst

Access to the supercomputer
============================

Access OzSTAR
-------------------

Access to the supercomputer is available through Secure Shell (SSH) to ozstar.swin.edu.au for all users. i.e:
::

    ssh [your-username]@ozstar.swin.edu.au

.. important::

    After logging in you will be assigned to one of the two login nodes: ``farnarkle1`` or ``farnarkle2``.

From these nodes you can submit jobs to the queue nodes using `Slurm <https://slurm.schedmd.com>`__. You may also use the login nodes as interactive nodes to run short jobs directly, compile code, or test your application.

From each of ``farnarkle1/2`` you can access the other with ``ssh f1`` or ``ssh f2``. ``farnarkle1/2`` are also available for direct login via eg. ``ssh [your-username]@farnarkle1.hpc.swin.edu.au``.

From ``farnarkle1/2`` you can also ``ssh sstar`` or ``ssh gstar``. ``sstar`` is the dedicated login node for the ``sstar`` queue, and similar for ``gstar``. These are also availably directly, but only from within SUT.

**Please, do not use these login nodes to run long jobs or jobs with big computational requirements.** Running such jobs in interactive mode can be done by requesting interactive nodes from the queue.

.. tip::

    If you want to avoid having to type the rather long ``[your-username]@ozstar.swin.edu.au`` every time you want to connect to the supercomputer, you can set an `alias <https://www.gnu.org/software/bash/manual/html_node/Aliases.html>`__.

    For example, if you are using the bash shell, you can set an alias in your bash configuration file (e.g. ``~/.bashrc`` or ``~/.bash_profile``) as follows:

    ::

        alias ozstar="[your-username]@ozstar.swin.edu.au"

    Once set, you can directly use this alias in your commands. The following commands will produce the same outcome:

    **Connect to supercomputer**::

        ssh [your-username]@ozstar.swin.edu.au

        ssh ozstar

    **Copy a local file to supercomputer**::

        scp myfile.txt [your-username]@ozstar.swin.edu.au:path/to/location/

        scp myfile.txt ozstar:path/to/location/


Client Requirements
--------------------

Terminal
^^^^^^^^

A terminal is required to access OzSTAR via Secure Shell (SSH) and issue command line instructions.

+------------------+------------------------------------------------------------------------------------------------------------+
| Operating System | Terminal                                                                                                   |
+==================+============================================================================================================+
| Mac              | Available by default via Applications > Utilities > Terminal                                               |
+------------------+------------------------------------------------------------------------------------------------------------+
| Linux            | Available by default                                                                                       |
+------------------+------------------------------------------------------------------------------------------------------------+
| Windows          | The recommended software is Putty. Windows users with updated                                              |
|                  | versions of Windows 10 may use the Windows Subsystem for                                                   |
|                  | Linux. More info available `here <https://docs.microsoft.com/en-us/windows/wsl/install-win10>`__.          |
+------------------+------------------------------------------------------------------------------------------------------------+

X11 Windows Forwarding
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

If you prefer to use the graphical screen of your application rather than a terminal, the ability to forward a graphical screen from the application back to your home computer is available via X11 Windows Forwarding.

With Linux and MacOS this can be done by login from the command line Secure Shell with the -X option (for X forwarding):

::

    ssh -X [username]@ozstar.swin.edu.au

For **MacOS** you will first need to install `XQuartz <https://www.xquartz.org/>`_.

For **Windows** you will need to install an X11 Server implementation. The following options can be used:

- `VcXsrv <https://sourceforge.net/projects/vcxsrv/>`_ (Recommended, frequently updated at time of writing)
- `Cygwin/X <http://x.cygwin.com/>`_ (Difficult to set up for everyday users)
- `Xming <http://sourceforge.net/projects/xming/files/Xming/>`_ (Not recommended, very old and no longer updated)

You will need also enable X11 forward from Putty, before connecting, This can be done through **connection > SSH > X11** by selecting “**Enable X11 Forwarding**”.
