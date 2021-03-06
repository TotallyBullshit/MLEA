//+------------------------------------------------------------------+
//|                                                    Win16File.mqh |
//|                                                         Zephyrrr |
//|                                              http://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Zephyrrr"
#property link      "http://www.mql5.com"

#define OF_READ               0
#define OF_WRITE              1
#define OF_READWRITE          2
#define OF_SHARE_COMPAT       3
#define OF_SHARE_DENY_NONE    4
#define OF_SHARE_DENY_READ    5
#define OF_SHARE_DENY_WRITE   6
#define OF_SHARE_EXCLUSIVE    7

#import "kernel32.dll"
int _lopen  (string path, int of);
int _lcreat (string path, int attrib);
int _llseek (int handle, int offset, int origin);
int _lread  (int handle, uchar& buffer[], uint bytes);
int _lwrite (int handle, uchar& buffer[], uint bytes);
int _lclose (int handle);
#import
// _lopen: Opens a specified file. Returns: a file descriptor.
// _lcreat: Creates a specified file. Returns: a file descriptor.
// _llseek: Sets the pointer to the open file. Returns:
// New offset pointer.
// _lread: Reads from an open file specified number of bytes.
// Returns: the number of bytes read, 0 - if end of file.
// _lwrite: Writes data from buffer to the specified file. Returns:
// Number of bytes written.
// _lclose: Closes the file specified. Returns 0.
// In case of unsuccessful was completing all of the functions return a value
// HFILE_ERROR = -1.

// Path: string, which is determined path and file name.
// Of: method of discovery.
// Attrib: 0 - read or write, 1 - read only, 2 - or invisible
// 3 - system.
// Handle: File descriptor.
// Offset: The number of bytes in the kotopoe pepemeschaetsya pointer.
// Origin: Specifies the starting point and guiding the motions: 0 -
// Vpe.ped from the beginning, 1 - from the current position, and 2 - back from the end of the file.
// Buffer: accepts a / writable buffer.
// Bytes: The number of bytes read.

// How to open (setting of):
// Int OF_READ = 0, // ​​Open file for reading only
// Int OF_WRITE = 1 // Open file for writing only
// Int OF_READWRITE = 2 // Open the file in read / write
// Int OF_SHARE_COMPAT = 3 // Opens a file in shared mode
// Sharing. In this mode, any process can open this
// File any number of times. If you try to open this file in any other
// Mode, the function returns HFILE_ERROR.
// Int OF_SHARE_DENY_NONE = 4 // Opens a file in shared mode
// No ban on the read / write access to other processes. When trying to open
// This file is in the mode OF_SHARE_COMPAT, the function returns HFILE_ERROR.
// Int OF_SHARE_DENY_READ = 5 // Opens a file in shared mode with
// Read the ban on other processes. When trying to open the file
// The flags OF_SHARE_COMPAT and / or OF_READ or OF_READWRITE, the function
// Returns HFILE_ERROR.
// Int OF_SHARE_DENY_WRITE = 6 // Same thing, only with a ban on the entry.
// Int OF_SHARE_EXCLUSIVE = 7 // Prevent the current and other processes in the
// Access to the file in read / write mode. The file in this mode can be
// Open only once (current process). All other attempts
// Open the file will fail.
