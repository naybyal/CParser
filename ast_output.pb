
�n
TranslationUnit	example.c
TypedefDeclsize_t4
TypedefDeclva_list
TypeRef__builtin_va_list;
TypedefDecl__gnuc_va_list
TypeRef__builtin_va_list
TypedefDecl__u_char
TypedefDecl	__u_short
TypedefDecl__u_int
TypedefDecl__u_long
TypedefDecl__int8_t
TypedefDecl	__uint8_t
TypedefDecl	__int16_t
TypedefDecl
__uint16_t
TypedefDecl	__int32_t
TypedefDecl
__uint32_t
TypedefDecl	__int64_t
TypedefDecl
__uint64_t2
TypedefDecl__int_least8_t
TypeRef__int8_t4
TypedefDecl__uint_least8_t
TypeRef	__uint8_t4
TypedefDecl__int_least16_t
TypeRef	__int16_t6
TypedefDecl__uint_least16_t
TypeRef
__uint16_t4
TypedefDecl__int_least32_t
TypeRef	__int32_t6
TypedefDecl__uint_least32_t
TypeRef
__uint32_t4
TypedefDecl__int_least64_t
TypeRef	__int64_t6
TypedefDecl__uint_least64_t
TypeRef
__uint64_t
TypedefDecl__quad_t
TypedefDecl
__u_quad_t
TypedefDecl
__intmax_t
TypedefDecl__uintmax_t
TypedefDecl__dev_t
TypedefDecl__uid_t
TypedefDecl__gid_t
TypedefDecl__ino_t
TypedefDecl	__ino64_t
TypedefDecl__mode_t
TypedefDecl	__nlink_t
TypedefDecl__off_t
TypedefDecl	__off64_t
TypedefDecl__pid_t2

StructDecl$
	FieldDecl__val
IntegerLiteralK
TypedefDecl__fsid_t2

StructDecl$
	FieldDecl__val
IntegerLiteral
TypedefDecl	__clock_t
TypedefDecl__rlim_t
TypedefDecl
__rlim64_t
TypedefDecl__id_t
TypedefDecl__time_t
TypedefDecl__useconds_t
TypedefDecl
TypedefDecl__suseconds64_t
TypedefDecl	__daddr_t
TypedefDecl__key_t
TypedefDecl__clockid_t
TypedefDecl	__timer_t
TypedefDecl__blksize_t
TypedefDecl
__blkcnt_t
TypedefDecl__blkcnt64_t
TypedefDecl__fsblkcnt_t
TypedefDecl__fsblkcnt64_t
TypedefDecl__fsfilcnt_t
TypedefDecl__fsfilcnt64_t
TypedefDecl
__fsword_t
TypedefDecl	__ssize_t 
TypedefDecl__syscall_slong_t 
TypedefDecl__syscall_ulong_t-
TypedefDecl__loff_t
TypeRef	__off64_t
TypedefDecl	__caddr_t
TypedefDecl
__intptr_t
TypedefDecl__socklen_t
TypedefDecl__sig_atomic_t�

StructDecl
	FieldDecl__countF
	UnionDecl
	FieldDecl__wch%
	FieldDecl__wchb
IntegerLiteral\
	FieldDecl__valueF
	UnionDecl
	FieldDecl__wch%
	FieldDecl__wchb
IntegerLiteral�
TypedefDecl__mbstate_t�

StructDecl
	FieldDecl__countF
	UnionDecl
	FieldDecl__wch%
	FieldDecl__wchb
IntegerLiteral\
	FieldDecl__valueF
	UnionDecl
	FieldDecl__wch%
	FieldDecl__wchb
IntegerLiteralm

StructDecl	_G_fpos_t&
	FieldDecl__pos
TypeRef__off_t,
	FieldDecl__state
TypeRef__mbstate_t�
TypedefDecl__fpos_tm

StructDecl	_G_fpos_t&
	FieldDecl__pos
TypeRef__off_t,
	FieldDecl__state
TypeRef__mbstate_tq

StructDecl_G_fpos64_t(
	FieldDecl__pos
TypeRef	__off64_t,
	FieldDecl__state
TypeRef__mbstate_t�
TypedefDecl
__fpos64_tq

StructDecl_G_fpos64_t(
	FieldDecl__pos
TypeRef	__off64_t,
	FieldDecl__state
TypeRef__mbstate_t

StructDecl_IO_FILE1
TypedefDecl__FILE
TypeRefstruct _IO_FILE

StructDecl_IO_FILE/
TypedefDeclFILE
TypeRefstruct _IO_FILE

StructDecl_IO_FILE

StructDecl
_IO_marker

StructDecl_IO_codecvt

StructDecl
TypedefDecl
_IO_lock_t�	

StructDecl_IO_FILE
	FieldDecl_flags
	FieldDecl_IO_read_ptr
	FieldDecl_IO_read_end
	FieldDecl
	FieldDecl_IO_write_base
	FieldDecl
	FieldDecl
	FieldDecl_IO_buf_base
	FieldDecl_IO_buf_end
	FieldDecl
	FieldDecl_IO_backup_base
	FieldDecl_IO_save_end3
	FieldDecl_markers
TypeRefstruct _IO_marker/
	FieldDecl_chain
TypeRefstruct _IO_FILE
	FieldDecl_fileno
	FieldDecl_flags2,
	FieldDecl_old_offset
TypeRef__off_t
	FieldDecl_cur_column
	FieldDecl_vtable_offset(
	FieldDecl	_shortbuf
IntegerLiteral)
	FieldDecl_lock
TypeRef
_IO_lock_t*
	FieldDecl_offset
TypeRef	__off64_t4
	FieldDecl_codecvt
TypeRefstruct _IO_codecvt8
	FieldDecl
_wide_data
TypeRefstruct _IO_wide_data6
	FieldDecl
TypeRefstruct _IO_FILE
	FieldDecl_freeres_buf&
	FieldDecl__pad5
TypeRefsize_t
	FieldDecl_mode�
	FieldDecl_unused2�
BinaryOperator�
BinaryOperator@
BinaryOperator!

IntegerLiteral
	UnaryExpr@
BinaryOperator!

IntegerLiteral
	UnaryExpr
	UnaryExpr
TypeRefsize_t1
TypedefDeclva_list
TypeRef__gnuc_va_list(
TypedefDecloff_t
TypeRef__off_t,
TypedefDeclssize_t
TypeRef	__ssize_t*
TypedefDeclfpos_t
TypeRef__fpos_t!
VarDeclstdin
TypeRefFILE"
VarDeclstdout
TypeRefFILE"
VarDeclstderr
TypeRefFILE?
FunctionDeclremove

ParmDecl
__filenameM
FunctionDeclrename

ParmDecl__old
ParmDecl__newy
FunctionDeclrenameat

ParmDecl__oldfd
ParmDecl__old
ParmDecl__newfd
ParmDecl__new=
FunctionDeclfclose%
ParmDecl__stream
TypeRefFILE9
FunctionDecltmpfile

TypeRefFILEE
FunctionDecltmpnam

ParmDecl
IntegerLiteralL
FunctionDecltmpnam_r

ParmDecl__s
IntegerLiteral_
FunctionDecltempnam


ParmDecl__dir
ParmDecl__pfx=
FunctionDeclfflush%
ParmDecl__stream
TypeRefFILEF
FunctionDeclfflush_unlocked%
ParmDecl__stream
TypeRefFILEd
FunctionDeclfopen

TypeRefFILE
ParmDecl
__filename
ParmDecl__modes|
FunctionDeclfreopen
TypeRefFILE
ParmDecl
__filename
ParmDecl__modes%
ParmDecl__stream
TypeRefFILEp
FunctionDeclfdopen


TypeRefFILE
ParmDecl__fd
ParmDecl__modes�
FunctionDeclfmemopen


TypeRefFILE
ParmDecl__s$
ParmDecl__len
TypeRefsize_t
ParmDecl__modes�
FunctionDeclopen_memstream


TypeRefFILE
ParmDecl__bufloc(
ParmDecl	__sizeloc
TypeRefsize_ta
FunctionDeclsetbuf

ParmDecl__stream
TypeRefFILE
ParmDecl__buf�
FunctionDeclsetvbuf

ParmDecl__stream
TypeRefFILE
ParmDecl__buf
ParmDecl__modes"
ParmDecl__n
TypeRefsize_t�
FunctionDecl	setbuffer

ParmDecl__stream
TypeRefFILE
ParmDecl__buf%
ParmDecl__size
TypeRefsize_tR
FunctionDecl
setlinebuf

ParmDecl__stream
TypeRefFILEe
FunctionDeclfprintf

ParmDecl__stream
TypeRefFILE
ParmDecl__format=
FunctionDeclprintf

ParmDecl__format`
FunctionDeclsprintf


ParmDecl__s
ParmDecl__format�
FunctionDeclvfprintf

ParmDecl__s
TypeRefFILE
ParmDecl__format,
ParmDecl__arg
TypeRef__gnuc_va_listl
FunctionDeclvprintf

ParmDecl__format,
ParmDecl__arg
TypeRef__gnuc_va_list�
FunctionDeclvsprintf


ParmDecl__s
ParmDecl__format,
ParmDecl__arg
TypeRef__gnuc_va_list�
FunctionDeclsnprintf


ParmDecl__s'
ParmDecl__maxlen
TypeRefsize_t
ParmDecl__format�
FunctionDecl	vsnprintf


ParmDecl__s'
ParmDecl__maxlen
TypeRefsize_t
ParmDecl__format,
ParmDecl__arg
TypeRef__gnuc_va_list|
FunctionDeclvdprintf

ParmDecl__fd
ParmDecl__fmt,
ParmDecl__arg
TypeRef__gnuc_va_listM
FunctionDecldprintf

ParmDecl__fd
ParmDecl__fmtd
FunctionDeclfscanf

ParmDecl__stream
TypeRefFILE
ParmDecl__format<
FunctionDeclscanf

ParmDecl__format_
FunctionDeclsscanf


ParmDecl__s
ParmDecl__format
TypedefDecl_Float32
TypedefDecl_Float64
TypedefDecl	_Float32x
TypedefDecl	_Float64x�
FunctionDeclfscanf

AsmLabelAttr__isoc99_fscanf%
ParmDecl__stream
TypeRefFILE
ParmDecl__format\
FunctionDeclscanf

AsmLabelAttr__isoc99_scanf
ParmDecl__format�
FunctionDeclsscanf

AsmLabelAttr__isoc99_sscanf

ParmDecl__s
ParmDecl__format�
FunctionDeclvfscanf

ParmDecl__s
TypeRefFILE
ParmDecl__format,
ParmDecl__arg
TypeRef__gnuc_va_listk
FunctionDeclvscanf

ParmDecl__format,
ParmDecl__arg
TypeRef__gnuc_va_list�
FunctionDeclvsscanf


ParmDecl__s
ParmDecl__format,
ParmDecl__arg
TypeRef__gnuc_va_list�
FunctionDeclvfscanf 
AsmLabelAttr__isoc99_vfscanf

ParmDecl__s
TypeRefFILE
ParmDecl__format,
ParmDecl__arg
TypeRef__gnuc_va_list�
FunctionDeclvscanf
AsmLabelAttr__isoc99_vscanf

ParmDecl__format,
ParmDecl__arg
TypeRef__gnuc_va_list�
FunctionDeclvsscanf 
AsmLabelAttr__isoc99_vsscanf


ParmDecl__s
ParmDecl__format,
ParmDecl__arg
TypeRef__gnuc_va_list<
FunctionDeclfgetc%
ParmDecl__stream
TypeRefFILE;
FunctionDeclgetc%
ParmDecl__stream
TypeRefFILE
FunctionDeclgetcharD
FunctionDecl
ParmDecl__stream
TypeRefFILE 
FunctionDeclgetchar_unlockedE
FunctionDeclfgetc_unlocked%
ParmDecl__stream
TypeRefFILEM
FunctionDeclfputc
ParmDecl__c%
ParmDecl__stream
TypeRefFILEL
FunctionDeclputc
ParmDecl__c%
ParmDecl__stream
TypeRefFILE(
FunctionDeclputchar
ParmDecl__cV
FunctionDeclfputc_unlocked
ParmDecl__c%
ParmDecl__stream
TypeRefFILEU
FunctionDecl
ParmDecl__c%
ParmDecl__stream
TypeRefFILE1
FunctionDeclputchar_unlocked
ParmDecl__c;
FunctionDeclgetw%
ParmDecl__stream
TypeRefFILEL
FunctionDeclputw
ParmDecl__w%
ParmDecl__stream
TypeRefFILE^
FunctionDeclfgets
ParmDecl__s
ParmDecl__n%
ParmDecl__stream
TypeRefFILE�
FunctionDecl
__getdelim
TypeRef	__ssize_t
ParmDecl	__lineptr"
ParmDecl__n
TypeRefsize_t
ParmDecl__delimiter%
ParmDecl__stream
TypeRefFILE�
FunctionDeclgetdelim
TypeRef	__ssize_t
ParmDecl	__lineptr"
ParmDecl__n
TypeRefsize_t
ParmDecl__delimiter%
ParmDecl__stream
TypeRefFILE�
FunctionDeclgetline
TypeRef	__ssize_t
ParmDecl	__lineptr"
ParmDecl__n
TypeRefsize_t%
ParmDecl__stream
TypeRefFILEM
FunctionDeclfputs
ParmDecl__s%
ParmDecl__stream
TypeRefFILE%
FunctionDeclputs
ParmDecl__sN
FunctionDeclungetc
ParmDecl__c%
ParmDecl__stream
TypeRefFILE�
FunctionDeclfread
TypeRefsize_t
ParmDecl__ptr%
ParmDecl__size
TypeRefsize_t"
ParmDecl__n
TypeRefsize_t%
ParmDecl__stream
TypeRefFILE�
FunctionDeclfwrite
TypeRefsize_t
ParmDecl__ptr%
ParmDecl__size
TypeRefsize_t"
ParmDecl__n
TypeRefsize_t 
ParmDecl__s
TypeRefFILE�
FunctionDeclfread_unlocked
TypeRefsize_t
ParmDecl__ptr%
ParmDecl__size
TypeRefsize_t"
ParmDecl__n
TypeRefsize_t%
ParmDecl__stream
TypeRefFILE�
FunctionDeclfwrite_unlocked
TypeRefsize_t
ParmDecl__ptr%
ParmDecl__size
TypeRefsize_t"
ParmDecl__n
TypeRefsize_t%
ParmDecl__stream
TypeRefFILEe
FunctionDeclfseek%
ParmDecl__stream
TypeRefFILE
ParmDecl__off
ParmDecl__whence<
FunctionDeclftell%
ParmDecl__stream
TypeRefFILE=
FunctionDeclrewind%
ParmDecl__stream
TypeRefFILEz
FunctionDeclfseeko%
ParmDecl__stream
TypeRefFILE%
ParmDecl__off
TypeRef__off_t
ParmDecl__whenceQ
FunctionDeclftello
TypeRef__off_t%
ParmDecl__stream
TypeRefFILEd
FunctionDeclfgetpos%
ParmDecl__stream
TypeRefFILE$
ParmDecl__pos
TypeReffpos_td
FunctionDeclfsetpos%
ParmDecl__stream
TypeRefFILE$
ParmDecl__pos
TypeReffpos_tP
FunctionDeclclearerr

ParmDecl__stream
TypeRefFILEL
FunctionDeclfeof

ParmDecl__stream
TypeRefFILEN
FunctionDeclferror

ParmDecl__stream
TypeRefFILEY
FunctionDeclclearerr_unlocked

ParmDecl__stream
TypeRefFILEU
FunctionDecl

ParmDecl__stream
TypeRefFILEW
FunctionDeclferror_unlocked

ParmDecl__stream
TypeRefFILE'
FunctionDeclperror
ParmDecl__sN
FunctionDeclfileno

ParmDecl__stream
TypeRefFILEW
FunctionDeclfileno_unlocked

ParmDecl__stream
TypeRefFILE=
FunctionDeclpclose%
ParmDecl__stream
TypeRefFILEc
FunctionDeclpopen

TypeRefFILE
ParmDecl	__command
ParmDecl__modes9
FunctionDeclctermid

ParmDecl__sQ
FunctionDecl	flockfile

ParmDecl__stream
TypeRefFILET
FunctionDeclftrylockfile

ParmDecl__stream
TypeRefFILES
FunctionDeclfunlockfile

ParmDecl__stream
TypeRefFILE4
FunctionDecl__uflow
ParmDecl
TypeRefFILEC
FunctionDecl
__overflow
ParmDecl
TypeRefFILE

ParmDecl�
FunctionDeclmain�
CompoundStmt�
CallExprprintf.

DeclRefExprprintfD




ReturnStmt
IntegerLiteral