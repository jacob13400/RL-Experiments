??	
?'?'
:
Add
x"T
y"T
z"T"
Ttype:
2	
A
AddV2
x"T
y"T
z"T"
Ttype:
2	??
?
	ApplyAdam
var"T?	
m"T?	
v"T?
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"T?" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 
x
Assign
ref"T?

value"T

output_ref"T?"	
Ttype"
validate_shapebool("
use_lockingbool(?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
S
DynamicStitch
indices*N
data"T*N
merged"T"
Nint(0"	
Ttype
,
Exp
x"T
y"T"
Ttype:

2
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
9
FloorMod
x"T
y"T
z"T"
Ttype:

2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
?
	LessEqual
x"T
y"T
z
"
Ttype:
2	
,
Log
x"T
y"T"
Ttype:

2
?

LogSoftmax
logits"T

logsoftmax"T"
Ttype:
2
#
	LogicalOr
x

y

z
?
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
8
Maximum
x"T
y"T
z"T"
Ttype:

2	
?
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
8
Minimum
x"T
y"T
z"T"
Ttype:

2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	?
?
Multinomial
logits"T
num_samples
output"output_dtype"
seedint "
seed2int "
Ttype:
2	" 
output_dtypetype0	:
2	?
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
?
OneHot
indices"TI	
depth
on_value"T
	off_value"T
output"T"
axisint?????????"	
Ttype"
TItype0	:
2	
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
6
Pow
x"T
y"T
z"T"
Ttype:

2	
?
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
PyFunc
input2Tin
output2Tout"
tokenstring"
Tin
list(type)("
Tout
list(type)(?
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	?
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
?
SplitV

value"T
size_splits"Tlen
	split_dim
output"T*	num_split"
	num_splitint(0"	
Ttype"
Tlentype0	:
2	
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	
?
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
s

VariableV2
ref"dtype?"
shapeshape"
dtypetype"
	containerstring "
shared_namestring ?
&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.15.52v1.15.4-39-g3db52be??
n
PlaceholderPlaceholder*
dtype0*
shape:?????????*'
_output_shapes
:?????????
h
Placeholder_1Placeholder*
shape:?????????*#
_output_shapes
:?????????*
dtype0
h
Placeholder_2Placeholder*
dtype0*#
_output_shapes
:?????????*
shape:?????????
h
Placeholder_3Placeholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
h
Placeholder_4Placeholder*#
_output_shapes
:?????????*
shape:?????????*
dtype0
?
0pi/dense/kernel/Initializer/random_uniform/shapeConst*
dtype0*
valueB"   @   *
_output_shapes
:*"
_class
loc:@pi/dense/kernel
?
.pi/dense/kernel/Initializer/random_uniform/minConst*
dtype0*
valueB
 *:͓?*"
_class
loc:@pi/dense/kernel*
_output_shapes
: 
?
.pi/dense/kernel/Initializer/random_uniform/maxConst*
valueB
 *:͓>*"
_class
loc:@pi/dense/kernel*
dtype0*
_output_shapes
: 
?
8pi/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform0pi/dense/kernel/Initializer/random_uniform/shape*

seed *
dtype0*
T0*"
_class
loc:@pi/dense/kernel*
seed2*
_output_shapes

:@
?
.pi/dense/kernel/Initializer/random_uniform/subSub.pi/dense/kernel/Initializer/random_uniform/max.pi/dense/kernel/Initializer/random_uniform/min*
_output_shapes
: *"
_class
loc:@pi/dense/kernel*
T0
?
.pi/dense/kernel/Initializer/random_uniform/mulMul8pi/dense/kernel/Initializer/random_uniform/RandomUniform.pi/dense/kernel/Initializer/random_uniform/sub*
_output_shapes

:@*
T0*"
_class
loc:@pi/dense/kernel
?
*pi/dense/kernel/Initializer/random_uniformAdd.pi/dense/kernel/Initializer/random_uniform/mul.pi/dense/kernel/Initializer/random_uniform/min*
_output_shapes

:@*"
_class
loc:@pi/dense/kernel*
T0
?
pi/dense/kernel
VariableV2*"
_class
loc:@pi/dense/kernel*
_output_shapes

:@*
	container *
dtype0*
shape
:@*
shared_name 
?
pi/dense/kernel/AssignAssignpi/dense/kernel*pi/dense/kernel/Initializer/random_uniform*
use_locking(*
validate_shape(*
T0*
_output_shapes

:@*"
_class
loc:@pi/dense/kernel
~
pi/dense/kernel/readIdentitypi/dense/kernel*"
_class
loc:@pi/dense/kernel*
T0*
_output_shapes

:@
?
pi/dense/bias/Initializer/zerosConst* 
_class
loc:@pi/dense/bias*
valueB@*    *
dtype0*
_output_shapes
:@
?
pi/dense/bias
VariableV2*
_output_shapes
:@*
	container *
dtype0* 
_class
loc:@pi/dense/bias*
shape:@*
shared_name 
?
pi/dense/bias/AssignAssignpi/dense/biaspi/dense/bias/Initializer/zeros*
T0* 
_class
loc:@pi/dense/bias*
_output_shapes
:@*
validate_shape(*
use_locking(
t
pi/dense/bias/readIdentitypi/dense/bias*
_output_shapes
:@* 
_class
loc:@pi/dense/bias*
T0
?
pi/dense/MatMulMatMulPlaceholderpi/dense/kernel/read*'
_output_shapes
:?????????@*
transpose_a( *
transpose_b( *
T0
?
pi/dense/BiasAddBiasAddpi/dense/MatMulpi/dense/bias/read*'
_output_shapes
:?????????@*
data_formatNHWC*
T0
Y
pi/dense/ReluRelupi/dense/BiasAdd*'
_output_shapes
:?????????@*
T0
?
2pi/dense_1/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*$
_class
loc:@pi/dense_1/kernel*
valueB"@   @   *
dtype0
?
0pi/dense_1/kernel/Initializer/random_uniform/minConst*
dtype0*
valueB
 *׳]?*$
_class
loc:@pi/dense_1/kernel*
_output_shapes
: 
?
0pi/dense_1/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *׳]>*$
_class
loc:@pi/dense_1/kernel
?
:pi/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform2pi/dense_1/kernel/Initializer/random_uniform/shape*
seed2*
_output_shapes

:@@*

seed *
dtype0*
T0*$
_class
loc:@pi/dense_1/kernel
?
0pi/dense_1/kernel/Initializer/random_uniform/subSub0pi/dense_1/kernel/Initializer/random_uniform/max0pi/dense_1/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*$
_class
loc:@pi/dense_1/kernel
?
0pi/dense_1/kernel/Initializer/random_uniform/mulMul:pi/dense_1/kernel/Initializer/random_uniform/RandomUniform0pi/dense_1/kernel/Initializer/random_uniform/sub*
T0*
_output_shapes

:@@*$
_class
loc:@pi/dense_1/kernel
?
,pi/dense_1/kernel/Initializer/random_uniformAdd0pi/dense_1/kernel/Initializer/random_uniform/mul0pi/dense_1/kernel/Initializer/random_uniform/min*
_output_shapes

:@@*
T0*$
_class
loc:@pi/dense_1/kernel
?
pi/dense_1/kernel
VariableV2*
	container *
dtype0*
shared_name *
_output_shapes

:@@*
shape
:@@*$
_class
loc:@pi/dense_1/kernel
?
pi/dense_1/kernel/AssignAssignpi/dense_1/kernel,pi/dense_1/kernel/Initializer/random_uniform*
validate_shape(*$
_class
loc:@pi/dense_1/kernel*
T0*
use_locking(*
_output_shapes

:@@
?
pi/dense_1/kernel/readIdentitypi/dense_1/kernel*
T0*
_output_shapes

:@@*$
_class
loc:@pi/dense_1/kernel
?
!pi/dense_1/bias/Initializer/zerosConst*
dtype0*"
_class
loc:@pi/dense_1/bias*
valueB@*    *
_output_shapes
:@
?
pi/dense_1/bias
VariableV2*
shared_name *
dtype0*
_output_shapes
:@*"
_class
loc:@pi/dense_1/bias*
	container *
shape:@
?
pi/dense_1/bias/AssignAssignpi/dense_1/bias!pi/dense_1/bias/Initializer/zeros*
validate_shape(*"
_class
loc:@pi/dense_1/bias*
_output_shapes
:@*
T0*
use_locking(
z
pi/dense_1/bias/readIdentitypi/dense_1/bias*"
_class
loc:@pi/dense_1/bias*
_output_shapes
:@*
T0
?
pi/dense_1/MatMulMatMulpi/dense/Relupi/dense_1/kernel/read*'
_output_shapes
:?????????@*
transpose_b( *
T0*
transpose_a( 
?
pi/dense_1/BiasAddBiasAddpi/dense_1/MatMulpi/dense_1/bias/read*'
_output_shapes
:?????????@*
T0*
data_formatNHWC
]
pi/dense_1/ReluRelupi/dense_1/BiasAdd*
T0*'
_output_shapes
:?????????@
?
2pi/dense_2/kernel/Initializer/random_uniform/shapeConst*$
_class
loc:@pi/dense_2/kernel*
valueB"@      *
_output_shapes
:*
dtype0
?
0pi/dense_2/kernel/Initializer/random_uniform/minConst*
valueB
 *0??*$
_class
loc:@pi/dense_2/kernel*
_output_shapes
: *
dtype0
?
0pi/dense_2/kernel/Initializer/random_uniform/maxConst*
dtype0*$
_class
loc:@pi/dense_2/kernel*
_output_shapes
: *
valueB
 *0?>
?
:pi/dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform2pi/dense_2/kernel/Initializer/random_uniform/shape*
_output_shapes

:@*
dtype0*$
_class
loc:@pi/dense_2/kernel*
T0*
seed2**

seed 
?
0pi/dense_2/kernel/Initializer/random_uniform/subSub0pi/dense_2/kernel/Initializer/random_uniform/max0pi/dense_2/kernel/Initializer/random_uniform/min*
T0*
_output_shapes
: *$
_class
loc:@pi/dense_2/kernel
?
0pi/dense_2/kernel/Initializer/random_uniform/mulMul:pi/dense_2/kernel/Initializer/random_uniform/RandomUniform0pi/dense_2/kernel/Initializer/random_uniform/sub*
_output_shapes

:@*
T0*$
_class
loc:@pi/dense_2/kernel
?
,pi/dense_2/kernel/Initializer/random_uniformAdd0pi/dense_2/kernel/Initializer/random_uniform/mul0pi/dense_2/kernel/Initializer/random_uniform/min*
T0*
_output_shapes

:@*$
_class
loc:@pi/dense_2/kernel
?
pi/dense_2/kernel
VariableV2*
shared_name *
_output_shapes

:@*
dtype0*$
_class
loc:@pi/dense_2/kernel*
shape
:@*
	container 
?
pi/dense_2/kernel/AssignAssignpi/dense_2/kernel,pi/dense_2/kernel/Initializer/random_uniform*
_output_shapes

:@*$
_class
loc:@pi/dense_2/kernel*
T0*
use_locking(*
validate_shape(
?
pi/dense_2/kernel/readIdentitypi/dense_2/kernel*
T0*
_output_shapes

:@*$
_class
loc:@pi/dense_2/kernel
?
!pi/dense_2/bias/Initializer/zerosConst*
valueB*    *
dtype0*
_output_shapes
:*"
_class
loc:@pi/dense_2/bias
?
pi/dense_2/bias
VariableV2*
shared_name *
dtype0*
	container *
_output_shapes
:*"
_class
loc:@pi/dense_2/bias*
shape:
?
pi/dense_2/bias/AssignAssignpi/dense_2/bias!pi/dense_2/bias/Initializer/zeros*
validate_shape(*
_output_shapes
:*"
_class
loc:@pi/dense_2/bias*
use_locking(*
T0
z
pi/dense_2/bias/readIdentitypi/dense_2/bias*
_output_shapes
:*
T0*"
_class
loc:@pi/dense_2/bias
?
pi/dense_2/MatMulMatMulpi/dense_1/Relupi/dense_2/kernel/read*
T0*'
_output_shapes
:?????????*
transpose_b( *
transpose_a( 
?
pi/dense_2/BiasAddBiasAddpi/dense_2/MatMulpi/dense_2/bias/read*'
_output_shapes
:?????????*
T0*
data_formatNHWC
a
pi/LogSoftmax
LogSoftmaxpi/dense_2/BiasAdd*
T0*'
_output_shapes
:?????????
h
&pi/multinomial/Multinomial/num_samplesConst*
_output_shapes
: *
value	B :*
dtype0
?
pi/multinomial/MultinomialMultinomialpi/dense_2/BiasAdd&pi/multinomial/Multinomial/num_samples*
T0*
seed28*'
_output_shapes
:?????????*

seed *
output_dtype0	
v

pi/SqueezeSqueezepi/multinomial/Multinomial*
T0	*
squeeze_dims
*#
_output_shapes
:?????????
X
pi/one_hot/on_valueConst*
valueB
 *  ??*
_output_shapes
: *
dtype0
Y
pi/one_hot/off_valueConst*
valueB
 *    *
_output_shapes
: *
dtype0
R
pi/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :
?

pi/one_hotOneHotPlaceholder_1pi/one_hot/depthpi/one_hot/on_valuepi/one_hot/off_value*'
_output_shapes
:?????????*
axis?????????*
T0*
TI0
Z
pi/mulMul
pi/one_hotpi/LogSoftmax*
T0*'
_output_shapes
:?????????
Z
pi/Sum/reduction_indicesConst*
dtype0*
value	B :*
_output_shapes
: 
z
pi/SumSumpi/mulpi/Sum/reduction_indices*
T0*#
_output_shapes
:?????????*
	keep_dims( *

Tidx0
Z
pi/one_hot_1/on_valueConst*
_output_shapes
: *
valueB
 *  ??*
dtype0
[
pi/one_hot_1/off_valueConst*
dtype0*
_output_shapes
: *
valueB
 *    
T
pi/one_hot_1/depthConst*
value	B :*
_output_shapes
: *
dtype0
?
pi/one_hot_1OneHot
pi/Squeezepi/one_hot_1/depthpi/one_hot_1/on_valuepi/one_hot_1/off_value*
TI0	*
axis?????????*
T0*'
_output_shapes
:?????????
^
pi/mul_1Mulpi/one_hot_1pi/LogSoftmax*'
_output_shapes
:?????????*
T0
\
pi/Sum_1/reduction_indicesConst*
dtype0*
_output_shapes
: *
value	B :
?
pi/Sum_1Sumpi/mul_1pi/Sum_1/reduction_indices*

Tidx0*#
_output_shapes
:?????????*
	keep_dims( *
T0
?
/v/dense/kernel/Initializer/random_uniform/shapeConst*!
_class
loc:@v/dense/kernel*
valueB"   @   *
_output_shapes
:*
dtype0
?
-v/dense/kernel/Initializer/random_uniform/minConst*
valueB
 *:͓?*!
_class
loc:@v/dense/kernel*
dtype0*
_output_shapes
: 
?
-v/dense/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *!
_class
loc:@v/dense/kernel*
dtype0*
valueB
 *:͓>
?
7v/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform/v/dense/kernel/Initializer/random_uniform/shape*!
_class
loc:@v/dense/kernel*
_output_shapes

:@*
dtype0*
seed2L*
T0*

seed 
?
-v/dense/kernel/Initializer/random_uniform/subSub-v/dense/kernel/Initializer/random_uniform/max-v/dense/kernel/Initializer/random_uniform/min*!
_class
loc:@v/dense/kernel*
_output_shapes
: *
T0
?
-v/dense/kernel/Initializer/random_uniform/mulMul7v/dense/kernel/Initializer/random_uniform/RandomUniform-v/dense/kernel/Initializer/random_uniform/sub*
T0*
_output_shapes

:@*!
_class
loc:@v/dense/kernel
?
)v/dense/kernel/Initializer/random_uniformAdd-v/dense/kernel/Initializer/random_uniform/mul-v/dense/kernel/Initializer/random_uniform/min*
_output_shapes

:@*
T0*!
_class
loc:@v/dense/kernel
?
v/dense/kernel
VariableV2*
shape
:@*
dtype0*
_output_shapes

:@*
shared_name *
	container *!
_class
loc:@v/dense/kernel
?
v/dense/kernel/AssignAssignv/dense/kernel)v/dense/kernel/Initializer/random_uniform*
T0*
_output_shapes

:@*!
_class
loc:@v/dense/kernel*
validate_shape(*
use_locking(
{
v/dense/kernel/readIdentityv/dense/kernel*!
_class
loc:@v/dense/kernel*
T0*
_output_shapes

:@
?
v/dense/bias/Initializer/zerosConst*
valueB@*    *
dtype0*
_class
loc:@v/dense/bias*
_output_shapes
:@
?
v/dense/bias
VariableV2*
_output_shapes
:@*
_class
loc:@v/dense/bias*
shape:@*
shared_name *
	container *
dtype0
?
v/dense/bias/AssignAssignv/dense/biasv/dense/bias/Initializer/zeros*
_output_shapes
:@*
_class
loc:@v/dense/bias*
validate_shape(*
use_locking(*
T0
q
v/dense/bias/readIdentityv/dense/bias*
_output_shapes
:@*
T0*
_class
loc:@v/dense/bias
?
v/dense/MatMulMatMulPlaceholderv/dense/kernel/read*
transpose_b( *
transpose_a( *'
_output_shapes
:?????????@*
T0
?
v/dense/BiasAddBiasAddv/dense/MatMulv/dense/bias/read*'
_output_shapes
:?????????@*
data_formatNHWC*
T0
W
v/dense/ReluReluv/dense/BiasAdd*'
_output_shapes
:?????????@*
T0
?
1v/dense_1/kernel/Initializer/random_uniform/shapeConst*
valueB"@   @   *
dtype0*
_output_shapes
:*#
_class
loc:@v/dense_1/kernel
?
/v/dense_1/kernel/Initializer/random_uniform/minConst*
dtype0*
valueB
 *׳]?*#
_class
loc:@v/dense_1/kernel*
_output_shapes
: 
?
/v/dense_1/kernel/Initializer/random_uniform/maxConst*
valueB
 *׳]>*
dtype0*#
_class
loc:@v/dense_1/kernel*
_output_shapes
: 
?
9v/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform1v/dense_1/kernel/Initializer/random_uniform/shape*
dtype0*
seed2]*

seed *#
_class
loc:@v/dense_1/kernel*
_output_shapes

:@@*
T0
?
/v/dense_1/kernel/Initializer/random_uniform/subSub/v/dense_1/kernel/Initializer/random_uniform/max/v/dense_1/kernel/Initializer/random_uniform/min*#
_class
loc:@v/dense_1/kernel*
T0*
_output_shapes
: 
?
/v/dense_1/kernel/Initializer/random_uniform/mulMul9v/dense_1/kernel/Initializer/random_uniform/RandomUniform/v/dense_1/kernel/Initializer/random_uniform/sub*
_output_shapes

:@@*#
_class
loc:@v/dense_1/kernel*
T0
?
+v/dense_1/kernel/Initializer/random_uniformAdd/v/dense_1/kernel/Initializer/random_uniform/mul/v/dense_1/kernel/Initializer/random_uniform/min*
_output_shapes

:@@*#
_class
loc:@v/dense_1/kernel*
T0
?
v/dense_1/kernel
VariableV2*
shape
:@@*
dtype0*
	container *#
_class
loc:@v/dense_1/kernel*
_output_shapes

:@@*
shared_name 
?
v/dense_1/kernel/AssignAssignv/dense_1/kernel+v/dense_1/kernel/Initializer/random_uniform*
_output_shapes

:@@*
use_locking(*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
T0
?
v/dense_1/kernel/readIdentityv/dense_1/kernel*#
_class
loc:@v/dense_1/kernel*
T0*
_output_shapes

:@@
?
 v/dense_1/bias/Initializer/zerosConst*!
_class
loc:@v/dense_1/bias*
dtype0*
valueB@*    *
_output_shapes
:@
?
v/dense_1/bias
VariableV2*!
_class
loc:@v/dense_1/bias*
shared_name *
dtype0*
_output_shapes
:@*
	container *
shape:@
?
v/dense_1/bias/AssignAssignv/dense_1/bias v/dense_1/bias/Initializer/zeros*
validate_shape(*
T0*!
_class
loc:@v/dense_1/bias*
_output_shapes
:@*
use_locking(
w
v/dense_1/bias/readIdentityv/dense_1/bias*
T0*!
_class
loc:@v/dense_1/bias*
_output_shapes
:@
?
v/dense_1/MatMulMatMulv/dense/Reluv/dense_1/kernel/read*
T0*
transpose_a( *
transpose_b( *'
_output_shapes
:?????????@
?
v/dense_1/BiasAddBiasAddv/dense_1/MatMulv/dense_1/bias/read*
data_formatNHWC*
T0*'
_output_shapes
:?????????@
[
v/dense_1/ReluReluv/dense_1/BiasAdd*'
_output_shapes
:?????????@*
T0
?
1v/dense_2/kernel/Initializer/random_uniform/shapeConst*
dtype0*
valueB"@      *
_output_shapes
:*#
_class
loc:@v/dense_2/kernel
?
/v/dense_2/kernel/Initializer/random_uniform/minConst*
dtype0*
valueB
 *????*
_output_shapes
: *#
_class
loc:@v/dense_2/kernel
?
/v/dense_2/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *#
_class
loc:@v/dense_2/kernel*
dtype0*
valueB
 *???>
?
9v/dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform1v/dense_2/kernel/Initializer/random_uniform/shape*
_output_shapes

:@*
T0*#
_class
loc:@v/dense_2/kernel*

seed *
dtype0*
seed2n
?
/v/dense_2/kernel/Initializer/random_uniform/subSub/v/dense_2/kernel/Initializer/random_uniform/max/v/dense_2/kernel/Initializer/random_uniform/min*
T0*
_output_shapes
: *#
_class
loc:@v/dense_2/kernel
?
/v/dense_2/kernel/Initializer/random_uniform/mulMul9v/dense_2/kernel/Initializer/random_uniform/RandomUniform/v/dense_2/kernel/Initializer/random_uniform/sub*
T0*
_output_shapes

:@*#
_class
loc:@v/dense_2/kernel
?
+v/dense_2/kernel/Initializer/random_uniformAdd/v/dense_2/kernel/Initializer/random_uniform/mul/v/dense_2/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@v/dense_2/kernel*
_output_shapes

:@
?
v/dense_2/kernel
VariableV2*
shared_name *
dtype0*#
_class
loc:@v/dense_2/kernel*
shape
:@*
_output_shapes

:@*
	container 
?
v/dense_2/kernel/AssignAssignv/dense_2/kernel+v/dense_2/kernel/Initializer/random_uniform*
T0*
_output_shapes

:@*
use_locking(*#
_class
loc:@v/dense_2/kernel*
validate_shape(
?
v/dense_2/kernel/readIdentityv/dense_2/kernel*
T0*
_output_shapes

:@*#
_class
loc:@v/dense_2/kernel
?
 v/dense_2/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:*
valueB*    *!
_class
loc:@v/dense_2/bias
?
v/dense_2/bias
VariableV2*
	container *
_output_shapes
:*
shared_name *
dtype0*
shape:*!
_class
loc:@v/dense_2/bias
?
v/dense_2/bias/AssignAssignv/dense_2/bias v/dense_2/bias/Initializer/zeros*!
_class
loc:@v/dense_2/bias*
T0*
_output_shapes
:*
validate_shape(*
use_locking(
w
v/dense_2/bias/readIdentityv/dense_2/bias*!
_class
loc:@v/dense_2/bias*
_output_shapes
:*
T0
?
v/dense_2/MatMulMatMulv/dense_1/Reluv/dense_2/kernel/read*'
_output_shapes
:?????????*
transpose_b( *
T0*
transpose_a( 
?
v/dense_2/BiasAddBiasAddv/dense_2/MatMulv/dense_2/bias/read*'
_output_shapes
:?????????*
data_formatNHWC*
T0
l
	v/SqueezeSqueezev/dense_2/BiasAdd*
squeeze_dims
*
T0*#
_output_shapes
:?????????
O
subSubpi/SumPlaceholder_4*
T0*#
_output_shapes
:?????????
=
ExpExpsub*
T0*#
_output_shapes
:?????????
N
	Greater/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
Z
GreaterGreaterPlaceholder_2	Greater/y*
T0*#
_output_shapes
:?????????
J
mul/xConst*
valueB
 *????*
dtype0*
_output_shapes
: 
N
mulMulmul/xPlaceholder_2*#
_output_shapes
:?????????*
T0
L
mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *??L?
R
mul_1Mulmul_1/xPlaceholder_2*#
_output_shapes
:?????????*
T0
S
SelectSelectGreatermulmul_1*#
_output_shapes
:?????????*
T0
N
mul_2MulExpPlaceholder_2*#
_output_shapes
:?????????*
T0
O
MinimumMinimummul_2Select*
T0*#
_output_shapes
:?????????
O
ConstConst*
_output_shapes
:*
valueB: *
dtype0
Z
MeanMeanMinimumConst*
_output_shapes
: *
	keep_dims( *
T0*

Tidx0
1
NegNegMean*
T0*
_output_shapes
: 
T
sub_1SubPlaceholder_3	v/Squeeze*#
_output_shapes
:?????????*
T0
J
pow/yConst*
valueB
 *   @*
_output_shapes
: *
dtype0
F
powPowsub_1pow/y*
T0*#
_output_shapes
:?????????
Q
Const_1Const*
valueB: *
_output_shapes
:*
dtype0
Z
Mean_1MeanpowConst_1*
T0*
	keep_dims( *

Tidx0*
_output_shapes
: 
Q
sub_2SubPlaceholder_4pi/Sum*
T0*#
_output_shapes
:?????????
Q
Const_2Const*
dtype0*
_output_shapes
:*
valueB: 
\
Mean_2Meansub_2Const_2*
_output_shapes
: *
T0*

Tidx0*
	keep_dims( 
B
Neg_1Negpi/Sum*#
_output_shapes
:?????????*
T0
Q
Const_3Const*
_output_shapes
:*
valueB: *
dtype0
\
Mean_3MeanNeg_1Const_3*

Tidx0*
_output_shapes
: *
	keep_dims( *
T0
P
Greater_1/yConst*
valueB
 *????*
dtype0*
_output_shapes
: 
T
	Greater_1GreaterExpGreater_1/y*#
_output_shapes
:?????????*
T0
K
Less/yConst*
dtype0*
_output_shapes
: *
valueB
 *??L?
G
LessLessExpLess/y*#
_output_shapes
:?????????*
T0
L
	LogicalOr	LogicalOr	Greater_1Less*#
_output_shapes
:?????????
d
CastCast	LogicalOr*

DstT0*#
_output_shapes
:?????????*
Truncate( *

SrcT0

Q
Const_4Const*
_output_shapes
:*
dtype0*
valueB: 
[
Mean_4MeanCastConst_4*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
R
gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
X
gradients/grad_ys_0Const*
valueB
 *  ??*
dtype0*
_output_shapes
: 
o
gradients/FillFillgradients/Shapegradients/grad_ys_0*
_output_shapes
: *
T0*

index_type0
N
gradients/Neg_grad/NegNeggradients/Fill*
T0*
_output_shapes
: 
k
!gradients/Mean_grad/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?
gradients/Mean_grad/ReshapeReshapegradients/Neg_grad/Neg!gradients/Mean_grad/Reshape/shape*
Tshape0*
T0*
_output_shapes
:
`
gradients/Mean_grad/ShapeShapeMinimum*
out_type0*
_output_shapes
:*
T0
?
gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/Shape*
T0*

Tmultiples0*#
_output_shapes
:?????????
b
gradients/Mean_grad/Shape_1ShapeMinimum*
T0*
out_type0*
_output_shapes
:
^
gradients/Mean_grad/Shape_2Const*
valueB *
dtype0*
_output_shapes
: 
c
gradients/Mean_grad/ConstConst*
_output_shapes
:*
valueB: *
dtype0
?
gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_1gradients/Mean_grad/Const*
	keep_dims( *
_output_shapes
: *

Tidx0*
T0
e
gradients/Mean_grad/Const_1Const*
dtype0*
_output_shapes
:*
valueB: 
?
gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_2gradients/Mean_grad/Const_1*

Tidx0*
T0*
_output_shapes
: *
	keep_dims( 
_
gradients/Mean_grad/Maximum/yConst*
dtype0*
value	B :*
_output_shapes
: 
?
gradients/Mean_grad/MaximumMaximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum/y*
_output_shapes
: *
T0
?
gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum*
T0*
_output_shapes
: 
~
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv*

DstT0*

SrcT0*
_output_shapes
: *
Truncate( 
?
gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*
T0*#
_output_shapes
:?????????
a
gradients/Minimum_grad/ShapeShapemul_2*
_output_shapes
:*
T0*
out_type0
d
gradients/Minimum_grad/Shape_1ShapeSelect*
T0*
out_type0*
_output_shapes
:
y
gradients/Minimum_grad/Shape_2Shapegradients/Mean_grad/truediv*
out_type0*
_output_shapes
:*
T0
g
"gradients/Minimum_grad/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
?
gradients/Minimum_grad/zerosFillgradients/Minimum_grad/Shape_2"gradients/Minimum_grad/zeros/Const*

index_type0*
T0*#
_output_shapes
:?????????
j
 gradients/Minimum_grad/LessEqual	LessEqualmul_2Select*
T0*#
_output_shapes
:?????????
?
,gradients/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Minimum_grad/Shapegradients/Minimum_grad/Shape_1*2
_output_shapes 
:?????????:?????????*
T0
?
gradients/Minimum_grad/SelectSelect gradients/Minimum_grad/LessEqualgradients/Mean_grad/truedivgradients/Minimum_grad/zeros*
T0*#
_output_shapes
:?????????
?
gradients/Minimum_grad/SumSumgradients/Minimum_grad/Select,gradients/Minimum_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
?
gradients/Minimum_grad/ReshapeReshapegradients/Minimum_grad/Sumgradients/Minimum_grad/Shape*#
_output_shapes
:?????????*
Tshape0*
T0
?
gradients/Minimum_grad/Select_1Select gradients/Minimum_grad/LessEqualgradients/Minimum_grad/zerosgradients/Mean_grad/truediv*
T0*#
_output_shapes
:?????????
?
gradients/Minimum_grad/Sum_1Sumgradients/Minimum_grad/Select_1.gradients/Minimum_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
?
 gradients/Minimum_grad/Reshape_1Reshapegradients/Minimum_grad/Sum_1gradients/Minimum_grad/Shape_1*#
_output_shapes
:?????????*
T0*
Tshape0
s
'gradients/Minimum_grad/tuple/group_depsNoOp^gradients/Minimum_grad/Reshape!^gradients/Minimum_grad/Reshape_1
?
/gradients/Minimum_grad/tuple/control_dependencyIdentitygradients/Minimum_grad/Reshape(^gradients/Minimum_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Minimum_grad/Reshape*#
_output_shapes
:?????????
?
1gradients/Minimum_grad/tuple/control_dependency_1Identity gradients/Minimum_grad/Reshape_1(^gradients/Minimum_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/Minimum_grad/Reshape_1*#
_output_shapes
:?????????
]
gradients/mul_2_grad/ShapeShapeExp*
_output_shapes
:*
T0*
out_type0
i
gradients/mul_2_grad/Shape_1ShapePlaceholder_2*
T0*
out_type0*
_output_shapes
:
?
*gradients/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_2_grad/Shapegradients/mul_2_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
?
gradients/mul_2_grad/MulMul/gradients/Minimum_grad/tuple/control_dependencyPlaceholder_2*#
_output_shapes
:?????????*
T0
?
gradients/mul_2_grad/SumSumgradients/mul_2_grad/Mul*gradients/mul_2_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
?
gradients/mul_2_grad/ReshapeReshapegradients/mul_2_grad/Sumgradients/mul_2_grad/Shape*#
_output_shapes
:?????????*
T0*
Tshape0
?
gradients/mul_2_grad/Mul_1MulExp/gradients/Minimum_grad/tuple/control_dependency*
T0*#
_output_shapes
:?????????
?
gradients/mul_2_grad/Sum_1Sumgradients/mul_2_grad/Mul_1,gradients/mul_2_grad/BroadcastGradientArgs:1*

Tidx0*
T0*
	keep_dims( *
_output_shapes
:
?
gradients/mul_2_grad/Reshape_1Reshapegradients/mul_2_grad/Sum_1gradients/mul_2_grad/Shape_1*
Tshape0*
T0*#
_output_shapes
:?????????
m
%gradients/mul_2_grad/tuple/group_depsNoOp^gradients/mul_2_grad/Reshape^gradients/mul_2_grad/Reshape_1
?
-gradients/mul_2_grad/tuple/control_dependencyIdentitygradients/mul_2_grad/Reshape&^gradients/mul_2_grad/tuple/group_deps*
T0*#
_output_shapes
:?????????*/
_class%
#!loc:@gradients/mul_2_grad/Reshape
?
/gradients/mul_2_grad/tuple/control_dependency_1Identitygradients/mul_2_grad/Reshape_1&^gradients/mul_2_grad/tuple/group_deps*#
_output_shapes
:?????????*
T0*1
_class'
%#loc:@gradients/mul_2_grad/Reshape_1

gradients/Exp_grad/mulMul-gradients/mul_2_grad/tuple/control_dependencyExp*#
_output_shapes
:?????????*
T0
^
gradients/sub_grad/ShapeShapepi/Sum*
_output_shapes
:*
out_type0*
T0
g
gradients/sub_grad/Shape_1ShapePlaceholder_4*
_output_shapes
:*
out_type0*
T0
?
(gradients/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_grad/Shapegradients/sub_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
?
gradients/sub_grad/SumSumgradients/Exp_grad/mul(gradients/sub_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( *
_output_shapes
:
?
gradients/sub_grad/ReshapeReshapegradients/sub_grad/Sumgradients/sub_grad/Shape*
T0*
Tshape0*#
_output_shapes
:?????????
c
gradients/sub_grad/NegNeggradients/Exp_grad/mul*#
_output_shapes
:?????????*
T0
?
gradients/sub_grad/Sum_1Sumgradients/sub_grad/Neg*gradients/sub_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
?
gradients/sub_grad/Reshape_1Reshapegradients/sub_grad/Sum_1gradients/sub_grad/Shape_1*
T0*#
_output_shapes
:?????????*
Tshape0
g
#gradients/sub_grad/tuple/group_depsNoOp^gradients/sub_grad/Reshape^gradients/sub_grad/Reshape_1
?
+gradients/sub_grad/tuple/control_dependencyIdentitygradients/sub_grad/Reshape$^gradients/sub_grad/tuple/group_deps*
T0*#
_output_shapes
:?????????*-
_class#
!loc:@gradients/sub_grad/Reshape
?
-gradients/sub_grad/tuple/control_dependency_1Identitygradients/sub_grad/Reshape_1$^gradients/sub_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/sub_grad/Reshape_1*#
_output_shapes
:?????????
a
gradients/pi/Sum_grad/ShapeShapepi/mul*
_output_shapes
:*
T0*
out_type0
?
gradients/pi/Sum_grad/SizeConst*
_output_shapes
: *
value	B :*
dtype0*.
_class$
" loc:@gradients/pi/Sum_grad/Shape
?
gradients/pi/Sum_grad/addAddV2pi/Sum/reduction_indicesgradients/pi/Sum_grad/Size*
T0*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
_output_shapes
: 
?
gradients/pi/Sum_grad/modFloorModgradients/pi/Sum_grad/addgradients/pi/Sum_grad/Size*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
_output_shapes
: *
T0
?
gradients/pi/Sum_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB *.
_class$
" loc:@gradients/pi/Sum_grad/Shape
?
!gradients/pi/Sum_grad/range/startConst*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
dtype0*
value	B : *
_output_shapes
: 
?
!gradients/pi/Sum_grad/range/deltaConst*
_output_shapes
: *
dtype0*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
value	B :
?
gradients/pi/Sum_grad/rangeRange!gradients/pi/Sum_grad/range/startgradients/pi/Sum_grad/Size!gradients/pi/Sum_grad/range/delta*
_output_shapes
:*

Tidx0*.
_class$
" loc:@gradients/pi/Sum_grad/Shape
?
 gradients/pi/Sum_grad/Fill/valueConst*
dtype0*
value	B :*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
_output_shapes
: 
?
gradients/pi/Sum_grad/FillFillgradients/pi/Sum_grad/Shape_1 gradients/pi/Sum_grad/Fill/value*

index_type0*
_output_shapes
: *.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
T0
?
#gradients/pi/Sum_grad/DynamicStitchDynamicStitchgradients/pi/Sum_grad/rangegradients/pi/Sum_grad/modgradients/pi/Sum_grad/Shapegradients/pi/Sum_grad/Fill*
_output_shapes
:*
N*
T0*.
_class$
" loc:@gradients/pi/Sum_grad/Shape
?
gradients/pi/Sum_grad/Maximum/yConst*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
value	B :*
dtype0*
_output_shapes
: 
?
gradients/pi/Sum_grad/MaximumMaximum#gradients/pi/Sum_grad/DynamicStitchgradients/pi/Sum_grad/Maximum/y*
_output_shapes
:*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
T0
?
gradients/pi/Sum_grad/floordivFloorDivgradients/pi/Sum_grad/Shapegradients/pi/Sum_grad/Maximum*
T0*.
_class$
" loc:@gradients/pi/Sum_grad/Shape*
_output_shapes
:
?
gradients/pi/Sum_grad/ReshapeReshape+gradients/sub_grad/tuple/control_dependency#gradients/pi/Sum_grad/DynamicStitch*
Tshape0*0
_output_shapes
:??????????????????*
T0
?
gradients/pi/Sum_grad/TileTilegradients/pi/Sum_grad/Reshapegradients/pi/Sum_grad/floordiv*
T0*

Tmultiples0*'
_output_shapes
:?????????
e
gradients/pi/mul_grad/ShapeShape
pi/one_hot*
T0*
_output_shapes
:*
out_type0
j
gradients/pi/mul_grad/Shape_1Shapepi/LogSoftmax*
T0*
out_type0*
_output_shapes
:
?
+gradients/pi/mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/pi/mul_grad/Shapegradients/pi/mul_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
}
gradients/pi/mul_grad/MulMulgradients/pi/Sum_grad/Tilepi/LogSoftmax*'
_output_shapes
:?????????*
T0
?
gradients/pi/mul_grad/SumSumgradients/pi/mul_grad/Mul+gradients/pi/mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
?
gradients/pi/mul_grad/ReshapeReshapegradients/pi/mul_grad/Sumgradients/pi/mul_grad/Shape*
T0*'
_output_shapes
:?????????*
Tshape0
|
gradients/pi/mul_grad/Mul_1Mul
pi/one_hotgradients/pi/Sum_grad/Tile*
T0*'
_output_shapes
:?????????
?
gradients/pi/mul_grad/Sum_1Sumgradients/pi/mul_grad/Mul_1-gradients/pi/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*
T0*
	keep_dims( *

Tidx0
?
gradients/pi/mul_grad/Reshape_1Reshapegradients/pi/mul_grad/Sum_1gradients/pi/mul_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:?????????
p
&gradients/pi/mul_grad/tuple/group_depsNoOp^gradients/pi/mul_grad/Reshape ^gradients/pi/mul_grad/Reshape_1
?
.gradients/pi/mul_grad/tuple/control_dependencyIdentitygradients/pi/mul_grad/Reshape'^gradients/pi/mul_grad/tuple/group_deps*'
_output_shapes
:?????????*0
_class&
$"loc:@gradients/pi/mul_grad/Reshape*
T0
?
0gradients/pi/mul_grad/tuple/control_dependency_1Identitygradients/pi/mul_grad/Reshape_1'^gradients/pi/mul_grad/tuple/group_deps*'
_output_shapes
:?????????*
T0*2
_class(
&$loc:@gradients/pi/mul_grad/Reshape_1
h
 gradients/pi/LogSoftmax_grad/ExpExppi/LogSoftmax*
T0*'
_output_shapes
:?????????
}
2gradients/pi/LogSoftmax_grad/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
?????????
?
 gradients/pi/LogSoftmax_grad/SumSum0gradients/pi/mul_grad/tuple/control_dependency_12gradients/pi/LogSoftmax_grad/Sum/reduction_indices*
	keep_dims(*
T0*'
_output_shapes
:?????????*

Tidx0
?
 gradients/pi/LogSoftmax_grad/mulMul gradients/pi/LogSoftmax_grad/Sum gradients/pi/LogSoftmax_grad/Exp*
T0*'
_output_shapes
:?????????
?
 gradients/pi/LogSoftmax_grad/subSub0gradients/pi/mul_grad/tuple/control_dependency_1 gradients/pi/LogSoftmax_grad/mul*
T0*'
_output_shapes
:?????????
?
-gradients/pi/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad gradients/pi/LogSoftmax_grad/sub*
data_formatNHWC*
T0*
_output_shapes
:
?
2gradients/pi/dense_2/BiasAdd_grad/tuple/group_depsNoOp!^gradients/pi/LogSoftmax_grad/sub.^gradients/pi/dense_2/BiasAdd_grad/BiasAddGrad
?
:gradients/pi/dense_2/BiasAdd_grad/tuple/control_dependencyIdentity gradients/pi/LogSoftmax_grad/sub3^gradients/pi/dense_2/BiasAdd_grad/tuple/group_deps*'
_output_shapes
:?????????*
T0*3
_class)
'%loc:@gradients/pi/LogSoftmax_grad/sub
?
<gradients/pi/dense_2/BiasAdd_grad/tuple/control_dependency_1Identity-gradients/pi/dense_2/BiasAdd_grad/BiasAddGrad3^gradients/pi/dense_2/BiasAdd_grad/tuple/group_deps*
_output_shapes
:*
T0*@
_class6
42loc:@gradients/pi/dense_2/BiasAdd_grad/BiasAddGrad
?
'gradients/pi/dense_2/MatMul_grad/MatMulMatMul:gradients/pi/dense_2/BiasAdd_grad/tuple/control_dependencypi/dense_2/kernel/read*
T0*
transpose_a( *
transpose_b(*'
_output_shapes
:?????????@
?
)gradients/pi/dense_2/MatMul_grad/MatMul_1MatMulpi/dense_1/Relu:gradients/pi/dense_2/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
_output_shapes

:@*
transpose_b( *
T0
?
1gradients/pi/dense_2/MatMul_grad/tuple/group_depsNoOp(^gradients/pi/dense_2/MatMul_grad/MatMul*^gradients/pi/dense_2/MatMul_grad/MatMul_1
?
9gradients/pi/dense_2/MatMul_grad/tuple/control_dependencyIdentity'gradients/pi/dense_2/MatMul_grad/MatMul2^gradients/pi/dense_2/MatMul_grad/tuple/group_deps*'
_output_shapes
:?????????@*
T0*:
_class0
.,loc:@gradients/pi/dense_2/MatMul_grad/MatMul
?
;gradients/pi/dense_2/MatMul_grad/tuple/control_dependency_1Identity)gradients/pi/dense_2/MatMul_grad/MatMul_12^gradients/pi/dense_2/MatMul_grad/tuple/group_deps*
T0*<
_class2
0.loc:@gradients/pi/dense_2/MatMul_grad/MatMul_1*
_output_shapes

:@
?
'gradients/pi/dense_1/Relu_grad/ReluGradReluGrad9gradients/pi/dense_2/MatMul_grad/tuple/control_dependencypi/dense_1/Relu*'
_output_shapes
:?????????@*
T0
?
-gradients/pi/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad'gradients/pi/dense_1/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes
:@*
T0
?
2gradients/pi/dense_1/BiasAdd_grad/tuple/group_depsNoOp.^gradients/pi/dense_1/BiasAdd_grad/BiasAddGrad(^gradients/pi/dense_1/Relu_grad/ReluGrad
?
:gradients/pi/dense_1/BiasAdd_grad/tuple/control_dependencyIdentity'gradients/pi/dense_1/Relu_grad/ReluGrad3^gradients/pi/dense_1/BiasAdd_grad/tuple/group_deps*:
_class0
.,loc:@gradients/pi/dense_1/Relu_grad/ReluGrad*
T0*'
_output_shapes
:?????????@
?
<gradients/pi/dense_1/BiasAdd_grad/tuple/control_dependency_1Identity-gradients/pi/dense_1/BiasAdd_grad/BiasAddGrad3^gradients/pi/dense_1/BiasAdd_grad/tuple/group_deps*@
_class6
42loc:@gradients/pi/dense_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:@*
T0
?
'gradients/pi/dense_1/MatMul_grad/MatMulMatMul:gradients/pi/dense_1/BiasAdd_grad/tuple/control_dependencypi/dense_1/kernel/read*
transpose_b(*
T0*
transpose_a( *'
_output_shapes
:?????????@
?
)gradients/pi/dense_1/MatMul_grad/MatMul_1MatMulpi/dense/Relu:gradients/pi/dense_1/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
_output_shapes

:@@*
transpose_a(
?
1gradients/pi/dense_1/MatMul_grad/tuple/group_depsNoOp(^gradients/pi/dense_1/MatMul_grad/MatMul*^gradients/pi/dense_1/MatMul_grad/MatMul_1
?
9gradients/pi/dense_1/MatMul_grad/tuple/control_dependencyIdentity'gradients/pi/dense_1/MatMul_grad/MatMul2^gradients/pi/dense_1/MatMul_grad/tuple/group_deps*
T0*:
_class0
.,loc:@gradients/pi/dense_1/MatMul_grad/MatMul*'
_output_shapes
:?????????@
?
;gradients/pi/dense_1/MatMul_grad/tuple/control_dependency_1Identity)gradients/pi/dense_1/MatMul_grad/MatMul_12^gradients/pi/dense_1/MatMul_grad/tuple/group_deps*
_output_shapes

:@@*<
_class2
0.loc:@gradients/pi/dense_1/MatMul_grad/MatMul_1*
T0
?
%gradients/pi/dense/Relu_grad/ReluGradReluGrad9gradients/pi/dense_1/MatMul_grad/tuple/control_dependencypi/dense/Relu*
T0*'
_output_shapes
:?????????@
?
+gradients/pi/dense/BiasAdd_grad/BiasAddGradBiasAddGrad%gradients/pi/dense/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:@
?
0gradients/pi/dense/BiasAdd_grad/tuple/group_depsNoOp,^gradients/pi/dense/BiasAdd_grad/BiasAddGrad&^gradients/pi/dense/Relu_grad/ReluGrad
?
8gradients/pi/dense/BiasAdd_grad/tuple/control_dependencyIdentity%gradients/pi/dense/Relu_grad/ReluGrad1^gradients/pi/dense/BiasAdd_grad/tuple/group_deps*8
_class.
,*loc:@gradients/pi/dense/Relu_grad/ReluGrad*'
_output_shapes
:?????????@*
T0
?
:gradients/pi/dense/BiasAdd_grad/tuple/control_dependency_1Identity+gradients/pi/dense/BiasAdd_grad/BiasAddGrad1^gradients/pi/dense/BiasAdd_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/pi/dense/BiasAdd_grad/BiasAddGrad*
_output_shapes
:@
?
%gradients/pi/dense/MatMul_grad/MatMulMatMul8gradients/pi/dense/BiasAdd_grad/tuple/control_dependencypi/dense/kernel/read*
transpose_a( *
T0*
transpose_b(*'
_output_shapes
:?????????
?
'gradients/pi/dense/MatMul_grad/MatMul_1MatMulPlaceholder8gradients/pi/dense/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes

:@*
transpose_b( 
?
/gradients/pi/dense/MatMul_grad/tuple/group_depsNoOp&^gradients/pi/dense/MatMul_grad/MatMul(^gradients/pi/dense/MatMul_grad/MatMul_1
?
7gradients/pi/dense/MatMul_grad/tuple/control_dependencyIdentity%gradients/pi/dense/MatMul_grad/MatMul0^gradients/pi/dense/MatMul_grad/tuple/group_deps*'
_output_shapes
:?????????*
T0*8
_class.
,*loc:@gradients/pi/dense/MatMul_grad/MatMul
?
9gradients/pi/dense/MatMul_grad/tuple/control_dependency_1Identity'gradients/pi/dense/MatMul_grad/MatMul_10^gradients/pi/dense/MatMul_grad/tuple/group_deps*
_output_shapes

:@*
T0*:
_class0
.,loc:@gradients/pi/dense/MatMul_grad/MatMul_1
`
Reshape/shapeConst*
_output_shapes
:*
valueB:
?????????*
dtype0
?
ReshapeReshape9gradients/pi/dense/MatMul_grad/tuple/control_dependency_1Reshape/shape*
T0*
_output_shapes	
:?*
Tshape0
b
Reshape_1/shapeConst*
_output_shapes
:*
valueB:
?????????*
dtype0
?
	Reshape_1Reshape:gradients/pi/dense/BiasAdd_grad/tuple/control_dependency_1Reshape_1/shape*
_output_shapes
:@*
Tshape0*
T0
b
Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
	Reshape_2Reshape;gradients/pi/dense_1/MatMul_grad/tuple/control_dependency_1Reshape_2/shape*
_output_shapes	
:? *
T0*
Tshape0
b
Reshape_3/shapeConst*
dtype0*
_output_shapes
:*
valueB:
?????????
?
	Reshape_3Reshape<gradients/pi/dense_1/BiasAdd_grad/tuple/control_dependency_1Reshape_3/shape*
_output_shapes
:@*
Tshape0*
T0
b
Reshape_4/shapeConst*
valueB:
?????????*
dtype0*
_output_shapes
:
?
	Reshape_4Reshape;gradients/pi/dense_2/MatMul_grad/tuple/control_dependency_1Reshape_4/shape*
_output_shapes	
:?*
T0*
Tshape0
b
Reshape_5/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?
	Reshape_5Reshape<gradients/pi/dense_2/BiasAdd_grad/tuple/control_dependency_1Reshape_5/shape*
T0*
Tshape0*
_output_shapes
:
M
concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
?
concatConcatV2Reshape	Reshape_1	Reshape_2	Reshape_3	Reshape_4	Reshape_5concat/axis*
_output_shapes	
:?'*
T0*
N*

Tidx0
g
PyFuncPyFuncconcat*
token
pyfunc_0*
_output_shapes	
:?'*
Tout
2*
Tin
2
h
Const_5Const*-
value$B""   @      @         *
_output_shapes
:*
dtype0
Q
split/split_dimConst*
dtype0*
value	B : *
_output_shapes
: 
?
splitSplitVPyFuncConst_5split/split_dim*
T0*;
_output_shapes)
':?:@:? :@:?:*

Tlen0*
	num_split
`
Reshape_6/shapeConst*
dtype0*
_output_shapes
:*
valueB"   @   
c
	Reshape_6ReshapesplitReshape_6/shape*
T0*
Tshape0*
_output_shapes

:@
Y
Reshape_7/shapeConst*
dtype0*
_output_shapes
:*
valueB:@
a
	Reshape_7Reshapesplit:1Reshape_7/shape*
Tshape0*
T0*
_output_shapes
:@
`
Reshape_8/shapeConst*
dtype0*
valueB"@   @   *
_output_shapes
:
e
	Reshape_8Reshapesplit:2Reshape_8/shape*
T0*
_output_shapes

:@@*
Tshape0
Y
Reshape_9/shapeConst*
_output_shapes
:*
dtype0*
valueB:@
a
	Reshape_9Reshapesplit:3Reshape_9/shape*
Tshape0*
_output_shapes
:@*
T0
a
Reshape_10/shapeConst*
_output_shapes
:*
valueB"@      *
dtype0
g

Reshape_10Reshapesplit:4Reshape_10/shape*
T0*
Tshape0*
_output_shapes

:@
Z
Reshape_11/shapeConst*
_output_shapes
:*
dtype0*
valueB:
c

Reshape_11Reshapesplit:5Reshape_11/shape*
_output_shapes
:*
T0*
Tshape0
?
beta1_power/initial_valueConst*
_output_shapes
: *
valueB
 *fff?*
dtype0* 
_class
loc:@pi/dense/bias
?
beta1_power
VariableV2*
_output_shapes
: *
shared_name *
shape: * 
_class
loc:@pi/dense/bias*
	container *
dtype0
?
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
validate_shape(*
use_locking(*
_output_shapes
: * 
_class
loc:@pi/dense/bias*
T0
l
beta1_power/readIdentitybeta1_power*
_output_shapes
: *
T0* 
_class
loc:@pi/dense/bias
?
beta2_power/initial_valueConst*
_output_shapes
: * 
_class
loc:@pi/dense/bias*
dtype0*
valueB
 *w??
?
beta2_power
VariableV2*
shared_name *
_output_shapes
: *
shape: *
dtype0*
	container * 
_class
loc:@pi/dense/bias
?
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
_output_shapes
: *
use_locking(*
validate_shape(* 
_class
loc:@pi/dense/bias*
T0
l
beta2_power/readIdentitybeta2_power*
T0*
_output_shapes
: * 
_class
loc:@pi/dense/bias
?
&pi/dense/kernel/Adam/Initializer/zerosConst*
_output_shapes

:@*"
_class
loc:@pi/dense/kernel*
dtype0*
valueB@*    
?
pi/dense/kernel/Adam
VariableV2*
	container *
shape
:@*
shared_name *
_output_shapes

:@*"
_class
loc:@pi/dense/kernel*
dtype0
?
pi/dense/kernel/Adam/AssignAssignpi/dense/kernel/Adam&pi/dense/kernel/Adam/Initializer/zeros*
T0*
_output_shapes

:@*"
_class
loc:@pi/dense/kernel*
use_locking(*
validate_shape(
?
pi/dense/kernel/Adam/readIdentitypi/dense/kernel/Adam*
_output_shapes

:@*"
_class
loc:@pi/dense/kernel*
T0
?
(pi/dense/kernel/Adam_1/Initializer/zerosConst*
valueB@*    *
_output_shapes

:@*
dtype0*"
_class
loc:@pi/dense/kernel
?
pi/dense/kernel/Adam_1
VariableV2*"
_class
loc:@pi/dense/kernel*
	container *
shape
:@*
dtype0*
_output_shapes

:@*
shared_name 
?
pi/dense/kernel/Adam_1/AssignAssignpi/dense/kernel/Adam_1(pi/dense/kernel/Adam_1/Initializer/zeros*
T0*
use_locking(*
_output_shapes

:@*
validate_shape(*"
_class
loc:@pi/dense/kernel
?
pi/dense/kernel/Adam_1/readIdentitypi/dense/kernel/Adam_1*
T0*"
_class
loc:@pi/dense/kernel*
_output_shapes

:@
?
$pi/dense/bias/Adam/Initializer/zerosConst* 
_class
loc:@pi/dense/bias*
valueB@*    *
dtype0*
_output_shapes
:@
?
pi/dense/bias/Adam
VariableV2*
dtype0* 
_class
loc:@pi/dense/bias*
shared_name *
	container *
shape:@*
_output_shapes
:@
?
pi/dense/bias/Adam/AssignAssignpi/dense/bias/Adam$pi/dense/bias/Adam/Initializer/zeros* 
_class
loc:@pi/dense/bias*
T0*
validate_shape(*
_output_shapes
:@*
use_locking(
~
pi/dense/bias/Adam/readIdentitypi/dense/bias/Adam*
T0* 
_class
loc:@pi/dense/bias*
_output_shapes
:@
?
&pi/dense/bias/Adam_1/Initializer/zerosConst* 
_class
loc:@pi/dense/bias*
valueB@*    *
_output_shapes
:@*
dtype0
?
pi/dense/bias/Adam_1
VariableV2*
_output_shapes
:@*
dtype0*
	container * 
_class
loc:@pi/dense/bias*
shared_name *
shape:@
?
pi/dense/bias/Adam_1/AssignAssignpi/dense/bias/Adam_1&pi/dense/bias/Adam_1/Initializer/zeros* 
_class
loc:@pi/dense/bias*
T0*
_output_shapes
:@*
validate_shape(*
use_locking(
?
pi/dense/bias/Adam_1/readIdentitypi/dense/bias/Adam_1* 
_class
loc:@pi/dense/bias*
T0*
_output_shapes
:@
?
8pi/dense_1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"@   @   *
dtype0*
_output_shapes
:*$
_class
loc:@pi/dense_1/kernel
?
.pi/dense_1/kernel/Adam/Initializer/zeros/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0*$
_class
loc:@pi/dense_1/kernel
?
(pi/dense_1/kernel/Adam/Initializer/zerosFill8pi/dense_1/kernel/Adam/Initializer/zeros/shape_as_tensor.pi/dense_1/kernel/Adam/Initializer/zeros/Const*
_output_shapes

:@@*$
_class
loc:@pi/dense_1/kernel*

index_type0*
T0
?
pi/dense_1/kernel/Adam
VariableV2*
	container *
shared_name *$
_class
loc:@pi/dense_1/kernel*
dtype0*
_output_shapes

:@@*
shape
:@@
?
pi/dense_1/kernel/Adam/AssignAssignpi/dense_1/kernel/Adam(pi/dense_1/kernel/Adam/Initializer/zeros*
use_locking(*
_output_shapes

:@@*
validate_shape(*
T0*$
_class
loc:@pi/dense_1/kernel
?
pi/dense_1/kernel/Adam/readIdentitypi/dense_1/kernel/Adam*$
_class
loc:@pi/dense_1/kernel*
T0*
_output_shapes

:@@
?
:pi/dense_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"@   @   *$
_class
loc:@pi/dense_1/kernel*
_output_shapes
:*
dtype0
?
0pi/dense_1/kernel/Adam_1/Initializer/zeros/ConstConst*
_output_shapes
: *
valueB
 *    *$
_class
loc:@pi/dense_1/kernel*
dtype0
?
*pi/dense_1/kernel/Adam_1/Initializer/zerosFill:pi/dense_1/kernel/Adam_1/Initializer/zeros/shape_as_tensor0pi/dense_1/kernel/Adam_1/Initializer/zeros/Const*$
_class
loc:@pi/dense_1/kernel*
T0*

index_type0*
_output_shapes

:@@
?
pi/dense_1/kernel/Adam_1
VariableV2*
shape
:@@*
shared_name *
_output_shapes

:@@*
	container *
dtype0*$
_class
loc:@pi/dense_1/kernel
?
pi/dense_1/kernel/Adam_1/AssignAssignpi/dense_1/kernel/Adam_1*pi/dense_1/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

:@@
?
pi/dense_1/kernel/Adam_1/readIdentitypi/dense_1/kernel/Adam_1*$
_class
loc:@pi/dense_1/kernel*
T0*
_output_shapes

:@@
?
&pi/dense_1/bias/Adam/Initializer/zerosConst*
dtype0*"
_class
loc:@pi/dense_1/bias*
_output_shapes
:@*
valueB@*    
?
pi/dense_1/bias/Adam
VariableV2*
shared_name *
	container *
shape:@*"
_class
loc:@pi/dense_1/bias*
_output_shapes
:@*
dtype0
?
pi/dense_1/bias/Adam/AssignAssignpi/dense_1/bias/Adam&pi/dense_1/bias/Adam/Initializer/zeros*
T0*"
_class
loc:@pi/dense_1/bias*
_output_shapes
:@*
use_locking(*
validate_shape(
?
pi/dense_1/bias/Adam/readIdentitypi/dense_1/bias/Adam*"
_class
loc:@pi/dense_1/bias*
T0*
_output_shapes
:@
?
(pi/dense_1/bias/Adam_1/Initializer/zerosConst*"
_class
loc:@pi/dense_1/bias*
dtype0*
valueB@*    *
_output_shapes
:@
?
pi/dense_1/bias/Adam_1
VariableV2*"
_class
loc:@pi/dense_1/bias*
shape:@*
	container *
dtype0*
_output_shapes
:@*
shared_name 
?
pi/dense_1/bias/Adam_1/AssignAssignpi/dense_1/bias/Adam_1(pi/dense_1/bias/Adam_1/Initializer/zeros*
validate_shape(*
use_locking(*
_output_shapes
:@*
T0*"
_class
loc:@pi/dense_1/bias
?
pi/dense_1/bias/Adam_1/readIdentitypi/dense_1/bias/Adam_1*
_output_shapes
:@*
T0*"
_class
loc:@pi/dense_1/bias
?
(pi/dense_2/kernel/Adam/Initializer/zerosConst*
valueB@*    *$
_class
loc:@pi/dense_2/kernel*
_output_shapes

:@*
dtype0
?
pi/dense_2/kernel/Adam
VariableV2*
dtype0*
_output_shapes

:@*$
_class
loc:@pi/dense_2/kernel*
shared_name *
	container *
shape
:@
?
pi/dense_2/kernel/Adam/AssignAssignpi/dense_2/kernel/Adam(pi/dense_2/kernel/Adam/Initializer/zeros*$
_class
loc:@pi/dense_2/kernel*
use_locking(*
validate_shape(*
T0*
_output_shapes

:@
?
pi/dense_2/kernel/Adam/readIdentitypi/dense_2/kernel/Adam*$
_class
loc:@pi/dense_2/kernel*
T0*
_output_shapes

:@
?
*pi/dense_2/kernel/Adam_1/Initializer/zerosConst*
valueB@*    *
dtype0*
_output_shapes

:@*$
_class
loc:@pi/dense_2/kernel
?
pi/dense_2/kernel/Adam_1
VariableV2*$
_class
loc:@pi/dense_2/kernel*
shape
:@*
shared_name *
	container *
_output_shapes

:@*
dtype0
?
pi/dense_2/kernel/Adam_1/AssignAssignpi/dense_2/kernel/Adam_1*pi/dense_2/kernel/Adam_1/Initializer/zeros*$
_class
loc:@pi/dense_2/kernel*
use_locking(*
_output_shapes

:@*
T0*
validate_shape(
?
pi/dense_2/kernel/Adam_1/readIdentitypi/dense_2/kernel/Adam_1*
_output_shapes

:@*$
_class
loc:@pi/dense_2/kernel*
T0
?
&pi/dense_2/bias/Adam/Initializer/zerosConst*
_output_shapes
:*
valueB*    *
dtype0*"
_class
loc:@pi/dense_2/bias
?
pi/dense_2/bias/Adam
VariableV2*
shared_name *
dtype0*
	container *
_output_shapes
:*"
_class
loc:@pi/dense_2/bias*
shape:
?
pi/dense_2/bias/Adam/AssignAssignpi/dense_2/bias/Adam&pi/dense_2/bias/Adam/Initializer/zeros*
use_locking(*
validate_shape(*"
_class
loc:@pi/dense_2/bias*
T0*
_output_shapes
:
?
pi/dense_2/bias/Adam/readIdentitypi/dense_2/bias/Adam*"
_class
loc:@pi/dense_2/bias*
T0*
_output_shapes
:
?
(pi/dense_2/bias/Adam_1/Initializer/zerosConst*
dtype0*
_output_shapes
:*"
_class
loc:@pi/dense_2/bias*
valueB*    
?
pi/dense_2/bias/Adam_1
VariableV2*
_output_shapes
:*
shared_name *
shape:*
dtype0*
	container *"
_class
loc:@pi/dense_2/bias
?
pi/dense_2/bias/Adam_1/AssignAssignpi/dense_2/bias/Adam_1(pi/dense_2/bias/Adam_1/Initializer/zeros*
T0*"
_class
loc:@pi/dense_2/bias*
use_locking(*
_output_shapes
:*
validate_shape(
?
pi/dense_2/bias/Adam_1/readIdentitypi/dense_2/bias/Adam_1*
_output_shapes
:*
T0*"
_class
loc:@pi/dense_2/bias
W
Adam/learning_rateConst*
_output_shapes
: *
dtype0*
valueB
 *RI?9
O

Adam/beta1Const*
dtype0*
_output_shapes
: *
valueB
 *fff?
O

Adam/beta2Const*
valueB
 *w??*
dtype0*
_output_shapes
: 
Q
Adam/epsilonConst*
dtype0*
_output_shapes
: *
valueB
 *w?+2
?
%Adam/update_pi/dense/kernel/ApplyAdam	ApplyAdampi/dense/kernelpi/dense/kernel/Adampi/dense/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon	Reshape_6*"
_class
loc:@pi/dense/kernel*
use_nesterov( *
T0*
_output_shapes

:@*
use_locking( 
?
#Adam/update_pi/dense/bias/ApplyAdam	ApplyAdampi/dense/biaspi/dense/bias/Adampi/dense/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon	Reshape_7*
use_locking( *
T0*
_output_shapes
:@*
use_nesterov( * 
_class
loc:@pi/dense/bias
?
'Adam/update_pi/dense_1/kernel/ApplyAdam	ApplyAdampi/dense_1/kernelpi/dense_1/kernel/Adampi/dense_1/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon	Reshape_8*
use_nesterov( *
_output_shapes

:@@*$
_class
loc:@pi/dense_1/kernel*
use_locking( *
T0
?
%Adam/update_pi/dense_1/bias/ApplyAdam	ApplyAdampi/dense_1/biaspi/dense_1/bias/Adampi/dense_1/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon	Reshape_9*"
_class
loc:@pi/dense_1/bias*
use_locking( *
T0*
use_nesterov( *
_output_shapes
:@
?
'Adam/update_pi/dense_2/kernel/ApplyAdam	ApplyAdampi/dense_2/kernelpi/dense_2/kernel/Adampi/dense_2/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon
Reshape_10*
T0*
use_nesterov( *
use_locking( *
_output_shapes

:@*$
_class
loc:@pi/dense_2/kernel
?
%Adam/update_pi/dense_2/bias/ApplyAdam	ApplyAdampi/dense_2/biaspi/dense_2/bias/Adampi/dense_2/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon
Reshape_11*
_output_shapes
:*
T0*"
_class
loc:@pi/dense_2/bias*
use_locking( *
use_nesterov( 
?
Adam/mulMulbeta1_power/read
Adam/beta1$^Adam/update_pi/dense/bias/ApplyAdam&^Adam/update_pi/dense/kernel/ApplyAdam&^Adam/update_pi/dense_1/bias/ApplyAdam(^Adam/update_pi/dense_1/kernel/ApplyAdam&^Adam/update_pi/dense_2/bias/ApplyAdam(^Adam/update_pi/dense_2/kernel/ApplyAdam* 
_class
loc:@pi/dense/bias*
T0*
_output_shapes
: 
?
Adam/AssignAssignbeta1_powerAdam/mul* 
_class
loc:@pi/dense/bias*
use_locking( *
validate_shape(*
_output_shapes
: *
T0
?

Adam/mul_1Mulbeta2_power/read
Adam/beta2$^Adam/update_pi/dense/bias/ApplyAdam&^Adam/update_pi/dense/kernel/ApplyAdam&^Adam/update_pi/dense_1/bias/ApplyAdam(^Adam/update_pi/dense_1/kernel/ApplyAdam&^Adam/update_pi/dense_2/bias/ApplyAdam(^Adam/update_pi/dense_2/kernel/ApplyAdam* 
_class
loc:@pi/dense/bias*
T0*
_output_shapes
: 
?
Adam/Assign_1Assignbeta2_power
Adam/mul_1*
validate_shape(*
T0* 
_class
loc:@pi/dense/bias*
_output_shapes
: *
use_locking( 
?
AdamNoOp^Adam/Assign^Adam/Assign_1$^Adam/update_pi/dense/bias/ApplyAdam&^Adam/update_pi/dense/kernel/ApplyAdam&^Adam/update_pi/dense_1/bias/ApplyAdam(^Adam/update_pi/dense_1/kernel/ApplyAdam&^Adam/update_pi/dense_2/bias/ApplyAdam(^Adam/update_pi/dense_2/kernel/ApplyAdam
j
Reshape_12/shapeConst^Adam*
valueB:
?????????*
_output_shapes
:*
dtype0
q

Reshape_12Reshapepi/dense/kernel/readReshape_12/shape*
T0*
Tshape0*
_output_shapes	
:?
j
Reshape_13/shapeConst^Adam*
valueB:
?????????*
dtype0*
_output_shapes
:
n

Reshape_13Reshapepi/dense/bias/readReshape_13/shape*
T0*
_output_shapes
:@*
Tshape0
j
Reshape_14/shapeConst^Adam*
valueB:
?????????*
_output_shapes
:*
dtype0
s

Reshape_14Reshapepi/dense_1/kernel/readReshape_14/shape*
Tshape0*
T0*
_output_shapes	
:? 
j
Reshape_15/shapeConst^Adam*
valueB:
?????????*
dtype0*
_output_shapes
:
p

Reshape_15Reshapepi/dense_1/bias/readReshape_15/shape*
T0*
Tshape0*
_output_shapes
:@
j
Reshape_16/shapeConst^Adam*
_output_shapes
:*
dtype0*
valueB:
?????????
s

Reshape_16Reshapepi/dense_2/kernel/readReshape_16/shape*
Tshape0*
_output_shapes	
:?*
T0
j
Reshape_17/shapeConst^Adam*
valueB:
?????????*
_output_shapes
:*
dtype0
p

Reshape_17Reshapepi/dense_2/bias/readReshape_17/shape*
Tshape0*
_output_shapes
:*
T0
V
concat_1/axisConst^Adam*
_output_shapes
: *
value	B : *
dtype0
?
concat_1ConcatV2
Reshape_12
Reshape_13
Reshape_14
Reshape_15
Reshape_16
Reshape_17concat_1/axis*
N*
_output_shapes	
:?'*
T0*

Tidx0
h
PyFunc_1PyFuncconcat_1*
_output_shapes
:*
token
pyfunc_1*
Tout
2*
Tin
2
o
Const_6Const^Adam*-
value$B""   @      @         *
dtype0*
_output_shapes
:
Z
split_1/split_dimConst^Adam*
dtype0*
_output_shapes
: *
value	B : 
?
split_1SplitVPyFunc_1Const_6split_1/split_dim*
	num_split*,
_output_shapes
::::::*

Tlen0*
T0
h
Reshape_18/shapeConst^Adam*
_output_shapes
:*
valueB"   @   *
dtype0
g

Reshape_18Reshapesplit_1Reshape_18/shape*
_output_shapes

:@*
Tshape0*
T0
a
Reshape_19/shapeConst^Adam*
_output_shapes
:*
dtype0*
valueB:@
e

Reshape_19Reshape	split_1:1Reshape_19/shape*
_output_shapes
:@*
T0*
Tshape0
h
Reshape_20/shapeConst^Adam*
_output_shapes
:*
valueB"@   @   *
dtype0
i

Reshape_20Reshape	split_1:2Reshape_20/shape*
Tshape0*
_output_shapes

:@@*
T0
a
Reshape_21/shapeConst^Adam*
_output_shapes
:*
valueB:@*
dtype0
e

Reshape_21Reshape	split_1:3Reshape_21/shape*
_output_shapes
:@*
Tshape0*
T0
h
Reshape_22/shapeConst^Adam*
dtype0*
valueB"@      *
_output_shapes
:
i

Reshape_22Reshape	split_1:4Reshape_22/shape*
_output_shapes

:@*
Tshape0*
T0
a
Reshape_23/shapeConst^Adam*
dtype0*
_output_shapes
:*
valueB:
e

Reshape_23Reshape	split_1:5Reshape_23/shape*
_output_shapes
:*
Tshape0*
T0
?
AssignAssignpi/dense/kernel
Reshape_18*
T0*
validate_shape(*
_output_shapes

:@*"
_class
loc:@pi/dense/kernel*
use_locking(
?
Assign_1Assignpi/dense/bias
Reshape_19*
validate_shape(*
_output_shapes
:@*
use_locking(* 
_class
loc:@pi/dense/bias*
T0
?
Assign_2Assignpi/dense_1/kernel
Reshape_20*
use_locking(*
validate_shape(*$
_class
loc:@pi/dense_1/kernel*
T0*
_output_shapes

:@@
?
Assign_3Assignpi/dense_1/bias
Reshape_21*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
?
Assign_4Assignpi/dense_2/kernel
Reshape_22*
validate_shape(*
use_locking(*
_output_shapes

:@*$
_class
loc:@pi/dense_2/kernel*
T0
?
Assign_5Assignpi/dense_2/bias
Reshape_23*
T0*
use_locking(*
_output_shapes
:*
validate_shape(*"
_class
loc:@pi/dense_2/bias
Y

group_depsNoOp^Adam^Assign	^Assign_1	^Assign_2	^Assign_3	^Assign_4	^Assign_5
(
group_deps_1NoOp^Adam^group_deps
T
gradients_1/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
Z
gradients_1/grad_ys_0Const*
dtype0*
_output_shapes
: *
valueB
 *  ??
u
gradients_1/FillFillgradients_1/Shapegradients_1/grad_ys_0*

index_type0*
T0*
_output_shapes
: 
o
%gradients_1/Mean_1_grad/Reshape/shapeConst*
valueB:*
_output_shapes
:*
dtype0
?
gradients_1/Mean_1_grad/ReshapeReshapegradients_1/Fill%gradients_1/Mean_1_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
`
gradients_1/Mean_1_grad/ShapeShapepow*
T0*
_output_shapes
:*
out_type0
?
gradients_1/Mean_1_grad/TileTilegradients_1/Mean_1_grad/Reshapegradients_1/Mean_1_grad/Shape*

Tmultiples0*#
_output_shapes
:?????????*
T0
b
gradients_1/Mean_1_grad/Shape_1Shapepow*
T0*
_output_shapes
:*
out_type0
b
gradients_1/Mean_1_grad/Shape_2Const*
_output_shapes
: *
valueB *
dtype0
g
gradients_1/Mean_1_grad/ConstConst*
dtype0*
valueB: *
_output_shapes
:
?
gradients_1/Mean_1_grad/ProdProdgradients_1/Mean_1_grad/Shape_1gradients_1/Mean_1_grad/Const*
T0*
	keep_dims( *

Tidx0*
_output_shapes
: 
i
gradients_1/Mean_1_grad/Const_1Const*
valueB: *
_output_shapes
:*
dtype0
?
gradients_1/Mean_1_grad/Prod_1Prodgradients_1/Mean_1_grad/Shape_2gradients_1/Mean_1_grad/Const_1*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
c
!gradients_1/Mean_1_grad/Maximum/yConst*
value	B :*
_output_shapes
: *
dtype0
?
gradients_1/Mean_1_grad/MaximumMaximumgradients_1/Mean_1_grad/Prod_1!gradients_1/Mean_1_grad/Maximum/y*
T0*
_output_shapes
: 
?
 gradients_1/Mean_1_grad/floordivFloorDivgradients_1/Mean_1_grad/Prodgradients_1/Mean_1_grad/Maximum*
T0*
_output_shapes
: 
?
gradients_1/Mean_1_grad/CastCast gradients_1/Mean_1_grad/floordiv*

SrcT0*

DstT0*
_output_shapes
: *
Truncate( 
?
gradients_1/Mean_1_grad/truedivRealDivgradients_1/Mean_1_grad/Tilegradients_1/Mean_1_grad/Cast*
T0*#
_output_shapes
:?????????
_
gradients_1/pow_grad/ShapeShapesub_1*
out_type0*
T0*
_output_shapes
:
_
gradients_1/pow_grad/Shape_1Shapepow/y*
T0*
out_type0*
_output_shapes
: 
?
*gradients_1/pow_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/pow_grad/Shapegradients_1/pow_grad/Shape_1*2
_output_shapes 
:?????????:?????????*
T0
u
gradients_1/pow_grad/mulMulgradients_1/Mean_1_grad/truedivpow/y*#
_output_shapes
:?????????*
T0
_
gradients_1/pow_grad/sub/yConst*
valueB
 *  ??*
dtype0*
_output_shapes
: 
c
gradients_1/pow_grad/subSubpow/ygradients_1/pow_grad/sub/y*
T0*
_output_shapes
: 
n
gradients_1/pow_grad/PowPowsub_1gradients_1/pow_grad/sub*#
_output_shapes
:?????????*
T0
?
gradients_1/pow_grad/mul_1Mulgradients_1/pow_grad/mulgradients_1/pow_grad/Pow*#
_output_shapes
:?????????*
T0
?
gradients_1/pow_grad/SumSumgradients_1/pow_grad/mul_1*gradients_1/pow_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( *
_output_shapes
:
?
gradients_1/pow_grad/ReshapeReshapegradients_1/pow_grad/Sumgradients_1/pow_grad/Shape*
Tshape0*
T0*#
_output_shapes
:?????????
c
gradients_1/pow_grad/Greater/yConst*
_output_shapes
: *
valueB
 *    *
dtype0
|
gradients_1/pow_grad/GreaterGreatersub_1gradients_1/pow_grad/Greater/y*
T0*#
_output_shapes
:?????????
i
$gradients_1/pow_grad/ones_like/ShapeShapesub_1*
T0*
out_type0*
_output_shapes
:
i
$gradients_1/pow_grad/ones_like/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *  ??
?
gradients_1/pow_grad/ones_likeFill$gradients_1/pow_grad/ones_like/Shape$gradients_1/pow_grad/ones_like/Const*

index_type0*#
_output_shapes
:?????????*
T0
?
gradients_1/pow_grad/SelectSelectgradients_1/pow_grad/Greatersub_1gradients_1/pow_grad/ones_like*#
_output_shapes
:?????????*
T0
j
gradients_1/pow_grad/LogLoggradients_1/pow_grad/Select*#
_output_shapes
:?????????*
T0
a
gradients_1/pow_grad/zeros_like	ZerosLikesub_1*
T0*#
_output_shapes
:?????????
?
gradients_1/pow_grad/Select_1Selectgradients_1/pow_grad/Greatergradients_1/pow_grad/Loggradients_1/pow_grad/zeros_like*
T0*#
_output_shapes
:?????????
u
gradients_1/pow_grad/mul_2Mulgradients_1/Mean_1_grad/truedivpow*#
_output_shapes
:?????????*
T0
?
gradients_1/pow_grad/mul_3Mulgradients_1/pow_grad/mul_2gradients_1/pow_grad/Select_1*
T0*#
_output_shapes
:?????????
?
gradients_1/pow_grad/Sum_1Sumgradients_1/pow_grad/mul_3,gradients_1/pow_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
?
gradients_1/pow_grad/Reshape_1Reshapegradients_1/pow_grad/Sum_1gradients_1/pow_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
m
%gradients_1/pow_grad/tuple/group_depsNoOp^gradients_1/pow_grad/Reshape^gradients_1/pow_grad/Reshape_1
?
-gradients_1/pow_grad/tuple/control_dependencyIdentitygradients_1/pow_grad/Reshape&^gradients_1/pow_grad/tuple/group_deps*/
_class%
#!loc:@gradients_1/pow_grad/Reshape*
T0*#
_output_shapes
:?????????
?
/gradients_1/pow_grad/tuple/control_dependency_1Identitygradients_1/pow_grad/Reshape_1&^gradients_1/pow_grad/tuple/group_deps*
_output_shapes
: *1
_class'
%#loc:@gradients_1/pow_grad/Reshape_1*
T0
i
gradients_1/sub_1_grad/ShapeShapePlaceholder_3*
_output_shapes
:*
out_type0*
T0
g
gradients_1/sub_1_grad/Shape_1Shape	v/Squeeze*
out_type0*
_output_shapes
:*
T0
?
,gradients_1/sub_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/sub_1_grad/Shapegradients_1/sub_1_grad/Shape_1*
T0*2
_output_shapes 
:?????????:?????????
?
gradients_1/sub_1_grad/SumSum-gradients_1/pow_grad/tuple/control_dependency,gradients_1/sub_1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
?
gradients_1/sub_1_grad/ReshapeReshapegradients_1/sub_1_grad/Sumgradients_1/sub_1_grad/Shape*#
_output_shapes
:?????????*
T0*
Tshape0
~
gradients_1/sub_1_grad/NegNeg-gradients_1/pow_grad/tuple/control_dependency*
T0*#
_output_shapes
:?????????
?
gradients_1/sub_1_grad/Sum_1Sumgradients_1/sub_1_grad/Neg.gradients_1/sub_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
_output_shapes
:*
T0
?
 gradients_1/sub_1_grad/Reshape_1Reshapegradients_1/sub_1_grad/Sum_1gradients_1/sub_1_grad/Shape_1*
Tshape0*#
_output_shapes
:?????????*
T0
s
'gradients_1/sub_1_grad/tuple/group_depsNoOp^gradients_1/sub_1_grad/Reshape!^gradients_1/sub_1_grad/Reshape_1
?
/gradients_1/sub_1_grad/tuple/control_dependencyIdentitygradients_1/sub_1_grad/Reshape(^gradients_1/sub_1_grad/tuple/group_deps*1
_class'
%#loc:@gradients_1/sub_1_grad/Reshape*#
_output_shapes
:?????????*
T0
?
1gradients_1/sub_1_grad/tuple/control_dependency_1Identity gradients_1/sub_1_grad/Reshape_1(^gradients_1/sub_1_grad/tuple/group_deps*3
_class)
'%loc:@gradients_1/sub_1_grad/Reshape_1*#
_output_shapes
:?????????*
T0
q
 gradients_1/v/Squeeze_grad/ShapeShapev/dense_2/BiasAdd*
T0*
out_type0*
_output_shapes
:
?
"gradients_1/v/Squeeze_grad/ReshapeReshape1gradients_1/sub_1_grad/tuple/control_dependency_1 gradients_1/v/Squeeze_grad/Shape*
Tshape0*
T0*'
_output_shapes
:?????????
?
.gradients_1/v/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad"gradients_1/v/Squeeze_grad/Reshape*
data_formatNHWC*
T0*
_output_shapes
:
?
3gradients_1/v/dense_2/BiasAdd_grad/tuple/group_depsNoOp#^gradients_1/v/Squeeze_grad/Reshape/^gradients_1/v/dense_2/BiasAdd_grad/BiasAddGrad
?
;gradients_1/v/dense_2/BiasAdd_grad/tuple/control_dependencyIdentity"gradients_1/v/Squeeze_grad/Reshape4^gradients_1/v/dense_2/BiasAdd_grad/tuple/group_deps*5
_class+
)'loc:@gradients_1/v/Squeeze_grad/Reshape*'
_output_shapes
:?????????*
T0
?
=gradients_1/v/dense_2/BiasAdd_grad/tuple/control_dependency_1Identity.gradients_1/v/dense_2/BiasAdd_grad/BiasAddGrad4^gradients_1/v/dense_2/BiasAdd_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients_1/v/dense_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
?
(gradients_1/v/dense_2/MatMul_grad/MatMulMatMul;gradients_1/v/dense_2/BiasAdd_grad/tuple/control_dependencyv/dense_2/kernel/read*'
_output_shapes
:?????????@*
transpose_b(*
transpose_a( *
T0
?
*gradients_1/v/dense_2/MatMul_grad/MatMul_1MatMulv/dense_1/Relu;gradients_1/v/dense_2/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0*
_output_shapes

:@
?
2gradients_1/v/dense_2/MatMul_grad/tuple/group_depsNoOp)^gradients_1/v/dense_2/MatMul_grad/MatMul+^gradients_1/v/dense_2/MatMul_grad/MatMul_1
?
:gradients_1/v/dense_2/MatMul_grad/tuple/control_dependencyIdentity(gradients_1/v/dense_2/MatMul_grad/MatMul3^gradients_1/v/dense_2/MatMul_grad/tuple/group_deps*;
_class1
/-loc:@gradients_1/v/dense_2/MatMul_grad/MatMul*
T0*'
_output_shapes
:?????????@
?
<gradients_1/v/dense_2/MatMul_grad/tuple/control_dependency_1Identity*gradients_1/v/dense_2/MatMul_grad/MatMul_13^gradients_1/v/dense_2/MatMul_grad/tuple/group_deps*
_output_shapes

:@*=
_class3
1/loc:@gradients_1/v/dense_2/MatMul_grad/MatMul_1*
T0
?
(gradients_1/v/dense_1/Relu_grad/ReluGradReluGrad:gradients_1/v/dense_2/MatMul_grad/tuple/control_dependencyv/dense_1/Relu*'
_output_shapes
:?????????@*
T0
?
.gradients_1/v/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad(gradients_1/v/dense_1/Relu_grad/ReluGrad*
T0*
_output_shapes
:@*
data_formatNHWC
?
3gradients_1/v/dense_1/BiasAdd_grad/tuple/group_depsNoOp/^gradients_1/v/dense_1/BiasAdd_grad/BiasAddGrad)^gradients_1/v/dense_1/Relu_grad/ReluGrad
?
;gradients_1/v/dense_1/BiasAdd_grad/tuple/control_dependencyIdentity(gradients_1/v/dense_1/Relu_grad/ReluGrad4^gradients_1/v/dense_1/BiasAdd_grad/tuple/group_deps*;
_class1
/-loc:@gradients_1/v/dense_1/Relu_grad/ReluGrad*
T0*'
_output_shapes
:?????????@
?
=gradients_1/v/dense_1/BiasAdd_grad/tuple/control_dependency_1Identity.gradients_1/v/dense_1/BiasAdd_grad/BiasAddGrad4^gradients_1/v/dense_1/BiasAdd_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients_1/v/dense_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:@
?
(gradients_1/v/dense_1/MatMul_grad/MatMulMatMul;gradients_1/v/dense_1/BiasAdd_grad/tuple/control_dependencyv/dense_1/kernel/read*
T0*
transpose_a( *
transpose_b(*'
_output_shapes
:?????????@
?
*gradients_1/v/dense_1/MatMul_grad/MatMul_1MatMulv/dense/Relu;gradients_1/v/dense_1/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_b( *
_output_shapes

:@@*
transpose_a(
?
2gradients_1/v/dense_1/MatMul_grad/tuple/group_depsNoOp)^gradients_1/v/dense_1/MatMul_grad/MatMul+^gradients_1/v/dense_1/MatMul_grad/MatMul_1
?
:gradients_1/v/dense_1/MatMul_grad/tuple/control_dependencyIdentity(gradients_1/v/dense_1/MatMul_grad/MatMul3^gradients_1/v/dense_1/MatMul_grad/tuple/group_deps*;
_class1
/-loc:@gradients_1/v/dense_1/MatMul_grad/MatMul*
T0*'
_output_shapes
:?????????@
?
<gradients_1/v/dense_1/MatMul_grad/tuple/control_dependency_1Identity*gradients_1/v/dense_1/MatMul_grad/MatMul_13^gradients_1/v/dense_1/MatMul_grad/tuple/group_deps*
T0*
_output_shapes

:@@*=
_class3
1/loc:@gradients_1/v/dense_1/MatMul_grad/MatMul_1
?
&gradients_1/v/dense/Relu_grad/ReluGradReluGrad:gradients_1/v/dense_1/MatMul_grad/tuple/control_dependencyv/dense/Relu*
T0*'
_output_shapes
:?????????@
?
,gradients_1/v/dense/BiasAdd_grad/BiasAddGradBiasAddGrad&gradients_1/v/dense/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:@
?
1gradients_1/v/dense/BiasAdd_grad/tuple/group_depsNoOp-^gradients_1/v/dense/BiasAdd_grad/BiasAddGrad'^gradients_1/v/dense/Relu_grad/ReluGrad
?
9gradients_1/v/dense/BiasAdd_grad/tuple/control_dependencyIdentity&gradients_1/v/dense/Relu_grad/ReluGrad2^gradients_1/v/dense/BiasAdd_grad/tuple/group_deps*9
_class/
-+loc:@gradients_1/v/dense/Relu_grad/ReluGrad*
T0*'
_output_shapes
:?????????@
?
;gradients_1/v/dense/BiasAdd_grad/tuple/control_dependency_1Identity,gradients_1/v/dense/BiasAdd_grad/BiasAddGrad2^gradients_1/v/dense/BiasAdd_grad/tuple/group_deps*
T0*
_output_shapes
:@*?
_class5
31loc:@gradients_1/v/dense/BiasAdd_grad/BiasAddGrad
?
&gradients_1/v/dense/MatMul_grad/MatMulMatMul9gradients_1/v/dense/BiasAdd_grad/tuple/control_dependencyv/dense/kernel/read*
T0*'
_output_shapes
:?????????*
transpose_b(*
transpose_a( 
?
(gradients_1/v/dense/MatMul_grad/MatMul_1MatMulPlaceholder9gradients_1/v/dense/BiasAdd_grad/tuple/control_dependency*
_output_shapes

:@*
transpose_a(*
T0*
transpose_b( 
?
0gradients_1/v/dense/MatMul_grad/tuple/group_depsNoOp'^gradients_1/v/dense/MatMul_grad/MatMul)^gradients_1/v/dense/MatMul_grad/MatMul_1
?
8gradients_1/v/dense/MatMul_grad/tuple/control_dependencyIdentity&gradients_1/v/dense/MatMul_grad/MatMul1^gradients_1/v/dense/MatMul_grad/tuple/group_deps*'
_output_shapes
:?????????*9
_class/
-+loc:@gradients_1/v/dense/MatMul_grad/MatMul*
T0
?
:gradients_1/v/dense/MatMul_grad/tuple/control_dependency_1Identity(gradients_1/v/dense/MatMul_grad/MatMul_11^gradients_1/v/dense/MatMul_grad/tuple/group_deps*;
_class1
/-loc:@gradients_1/v/dense/MatMul_grad/MatMul_1*
_output_shapes

:@*
T0
c
Reshape_24/shapeConst*
dtype0*
valueB:
?????????*
_output_shapes
:
?

Reshape_24Reshape:gradients_1/v/dense/MatMul_grad/tuple/control_dependency_1Reshape_24/shape*
_output_shapes	
:?*
T0*
Tshape0
c
Reshape_25/shapeConst*
valueB:
?????????*
dtype0*
_output_shapes
:
?

Reshape_25Reshape;gradients_1/v/dense/BiasAdd_grad/tuple/control_dependency_1Reshape_25/shape*
_output_shapes
:@*
T0*
Tshape0
c
Reshape_26/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????
?

Reshape_26Reshape<gradients_1/v/dense_1/MatMul_grad/tuple/control_dependency_1Reshape_26/shape*
Tshape0*
_output_shapes	
:? *
T0
c
Reshape_27/shapeConst*
dtype0*
valueB:
?????????*
_output_shapes
:
?

Reshape_27Reshape=gradients_1/v/dense_1/BiasAdd_grad/tuple/control_dependency_1Reshape_27/shape*
_output_shapes
:@*
Tshape0*
T0
c
Reshape_28/shapeConst*
valueB:
?????????*
dtype0*
_output_shapes
:
?

Reshape_28Reshape<gradients_1/v/dense_2/MatMul_grad/tuple/control_dependency_1Reshape_28/shape*
_output_shapes
:@*
Tshape0*
T0
c
Reshape_29/shapeConst*
_output_shapes
:*
valueB:
?????????*
dtype0
?

Reshape_29Reshape=gradients_1/v/dense_2/BiasAdd_grad/tuple/control_dependency_1Reshape_29/shape*
T0*
Tshape0*
_output_shapes
:
O
concat_2/axisConst*
dtype0*
value	B : *
_output_shapes
: 
?
concat_2ConcatV2
Reshape_24
Reshape_25
Reshape_26
Reshape_27
Reshape_28
Reshape_29concat_2/axis*
_output_shapes	
:?%*
N*
T0*

Tidx0
k
PyFunc_2PyFuncconcat_2*
token
pyfunc_2*
Tin
2*
Tout
2*
_output_shapes	
:?%
h
Const_7Const*
dtype0*
_output_shapes
:*-
value$B""   @      @   @      
S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
?
split_2SplitVPyFunc_2Const_7split_2/split_dim*
	num_split*:
_output_shapes(
&:?:@:? :@:@:*

Tlen0*
T0
a
Reshape_30/shapeConst*
dtype0*
_output_shapes
:*
valueB"   @   
g

Reshape_30Reshapesplit_2Reshape_30/shape*
_output_shapes

:@*
Tshape0*
T0
Z
Reshape_31/shapeConst*
dtype0*
valueB:@*
_output_shapes
:
e

Reshape_31Reshape	split_2:1Reshape_31/shape*
Tshape0*
_output_shapes
:@*
T0
a
Reshape_32/shapeConst*
dtype0*
valueB"@   @   *
_output_shapes
:
i

Reshape_32Reshape	split_2:2Reshape_32/shape*
_output_shapes

:@@*
Tshape0*
T0
Z
Reshape_33/shapeConst*
dtype0*
_output_shapes
:*
valueB:@
e

Reshape_33Reshape	split_2:3Reshape_33/shape*
T0*
Tshape0*
_output_shapes
:@
a
Reshape_34/shapeConst*
valueB"@      *
_output_shapes
:*
dtype0
i

Reshape_34Reshape	split_2:4Reshape_34/shape*
Tshape0*
T0*
_output_shapes

:@
Z
Reshape_35/shapeConst*
dtype0*
_output_shapes
:*
valueB:
e

Reshape_35Reshape	split_2:5Reshape_35/shape*
Tshape0*
T0*
_output_shapes
:
?
beta1_power_1/initial_valueConst*
valueB
 *fff?*
dtype0*
_class
loc:@v/dense/bias*
_output_shapes
: 
?
beta1_power_1
VariableV2*
	container *
_class
loc:@v/dense/bias*
shape: *
_output_shapes
: *
dtype0*
shared_name 
?
beta1_power_1/AssignAssignbeta1_power_1beta1_power_1/initial_value*
validate_shape(*
use_locking(*
_output_shapes
: *
T0*
_class
loc:@v/dense/bias
o
beta1_power_1/readIdentitybeta1_power_1*
_class
loc:@v/dense/bias*
T0*
_output_shapes
: 
?
beta2_power_1/initial_valueConst*
dtype0*
valueB
 *w??*
_class
loc:@v/dense/bias*
_output_shapes
: 
?
beta2_power_1
VariableV2*
shape: *
_class
loc:@v/dense/bias*
shared_name *
dtype0*
_output_shapes
: *
	container 
?
beta2_power_1/AssignAssignbeta2_power_1beta2_power_1/initial_value*
use_locking(*
_class
loc:@v/dense/bias*
_output_shapes
: *
T0*
validate_shape(
o
beta2_power_1/readIdentitybeta2_power_1*
_class
loc:@v/dense/bias*
_output_shapes
: *
T0
?
%v/dense/kernel/Adam/Initializer/zerosConst*
valueB@*    *
dtype0*!
_class
loc:@v/dense/kernel*
_output_shapes

:@
?
v/dense/kernel/Adam
VariableV2*!
_class
loc:@v/dense/kernel*
shape
:@*
shared_name *
_output_shapes

:@*
dtype0*
	container 
?
v/dense/kernel/Adam/AssignAssignv/dense/kernel/Adam%v/dense/kernel/Adam/Initializer/zeros*
_output_shapes

:@*
validate_shape(*
T0*!
_class
loc:@v/dense/kernel*
use_locking(
?
v/dense/kernel/Adam/readIdentityv/dense/kernel/Adam*
_output_shapes

:@*
T0*!
_class
loc:@v/dense/kernel
?
'v/dense/kernel/Adam_1/Initializer/zerosConst*
_output_shapes

:@*!
_class
loc:@v/dense/kernel*
dtype0*
valueB@*    
?
v/dense/kernel/Adam_1
VariableV2*!
_class
loc:@v/dense/kernel*
shared_name *
	container *
_output_shapes

:@*
shape
:@*
dtype0
?
v/dense/kernel/Adam_1/AssignAssignv/dense/kernel/Adam_1'v/dense/kernel/Adam_1/Initializer/zeros*
use_locking(*
validate_shape(*
_output_shapes

:@*
T0*!
_class
loc:@v/dense/kernel
?
v/dense/kernel/Adam_1/readIdentityv/dense/kernel/Adam_1*!
_class
loc:@v/dense/kernel*
_output_shapes

:@*
T0
?
#v/dense/bias/Adam/Initializer/zerosConst*
_output_shapes
:@*
dtype0*
_class
loc:@v/dense/bias*
valueB@*    
?
v/dense/bias/Adam
VariableV2*
shape:@*
dtype0*
shared_name *
_output_shapes
:@*
_class
loc:@v/dense/bias*
	container 
?
v/dense/bias/Adam/AssignAssignv/dense/bias/Adam#v/dense/bias/Adam/Initializer/zeros*
use_locking(*
T0*
validate_shape(*
_class
loc:@v/dense/bias*
_output_shapes
:@
{
v/dense/bias/Adam/readIdentityv/dense/bias/Adam*
_output_shapes
:@*
_class
loc:@v/dense/bias*
T0
?
%v/dense/bias/Adam_1/Initializer/zerosConst*
valueB@*    *
_class
loc:@v/dense/bias*
_output_shapes
:@*
dtype0
?
v/dense/bias/Adam_1
VariableV2*
_class
loc:@v/dense/bias*
dtype0*
shape:@*
shared_name *
	container *
_output_shapes
:@
?
v/dense/bias/Adam_1/AssignAssignv/dense/bias/Adam_1%v/dense/bias/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes
:@*
T0*
_class
loc:@v/dense/bias*
use_locking(

v/dense/bias/Adam_1/readIdentityv/dense/bias/Adam_1*
T0*
_class
loc:@v/dense/bias*
_output_shapes
:@
?
7v/dense_1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*#
_class
loc:@v/dense_1/kernel*
dtype0*
_output_shapes
:*
valueB"@   @   
?
-v/dense_1/kernel/Adam/Initializer/zeros/ConstConst*
dtype0*
valueB
 *    *#
_class
loc:@v/dense_1/kernel*
_output_shapes
: 
?
'v/dense_1/kernel/Adam/Initializer/zerosFill7v/dense_1/kernel/Adam/Initializer/zeros/shape_as_tensor-v/dense_1/kernel/Adam/Initializer/zeros/Const*

index_type0*#
_class
loc:@v/dense_1/kernel*
T0*
_output_shapes

:@@
?
v/dense_1/kernel/Adam
VariableV2*
	container *
shared_name *
_output_shapes

:@@*
shape
:@@*
dtype0*#
_class
loc:@v/dense_1/kernel
?
v/dense_1/kernel/Adam/AssignAssignv/dense_1/kernel/Adam'v/dense_1/kernel/Adam/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

:@@
?
v/dense_1/kernel/Adam/readIdentityv/dense_1/kernel/Adam*
T0*
_output_shapes

:@@*#
_class
loc:@v/dense_1/kernel
?
9v/dense_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*#
_class
loc:@v/dense_1/kernel*
valueB"@   @   *
dtype0*
_output_shapes
:
?
/v/dense_1/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: *#
_class
loc:@v/dense_1/kernel
?
)v/dense_1/kernel/Adam_1/Initializer/zerosFill9v/dense_1/kernel/Adam_1/Initializer/zeros/shape_as_tensor/v/dense_1/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0*#
_class
loc:@v/dense_1/kernel*
_output_shapes

:@@
?
v/dense_1/kernel/Adam_1
VariableV2*
shared_name *
	container *
shape
:@@*
dtype0*#
_class
loc:@v/dense_1/kernel*
_output_shapes

:@@
?
v/dense_1/kernel/Adam_1/AssignAssignv/dense_1/kernel/Adam_1)v/dense_1/kernel/Adam_1/Initializer/zeros*#
_class
loc:@v/dense_1/kernel*
T0*
use_locking(*
_output_shapes

:@@*
validate_shape(
?
v/dense_1/kernel/Adam_1/readIdentityv/dense_1/kernel/Adam_1*#
_class
loc:@v/dense_1/kernel*
_output_shapes

:@@*
T0
?
%v/dense_1/bias/Adam/Initializer/zerosConst*
_output_shapes
:@*
dtype0*!
_class
loc:@v/dense_1/bias*
valueB@*    
?
v/dense_1/bias/Adam
VariableV2*
dtype0*
shared_name *
_output_shapes
:@*!
_class
loc:@v/dense_1/bias*
shape:@*
	container 
?
v/dense_1/bias/Adam/AssignAssignv/dense_1/bias/Adam%v/dense_1/bias/Adam/Initializer/zeros*
use_locking(*
_output_shapes
:@*!
_class
loc:@v/dense_1/bias*
T0*
validate_shape(
?
v/dense_1/bias/Adam/readIdentityv/dense_1/bias/Adam*
T0*
_output_shapes
:@*!
_class
loc:@v/dense_1/bias
?
'v/dense_1/bias/Adam_1/Initializer/zerosConst*
valueB@*    *
dtype0*
_output_shapes
:@*!
_class
loc:@v/dense_1/bias
?
v/dense_1/bias/Adam_1
VariableV2*
	container *
shared_name *
_output_shapes
:@*!
_class
loc:@v/dense_1/bias*
dtype0*
shape:@
?
v/dense_1/bias/Adam_1/AssignAssignv/dense_1/bias/Adam_1'v/dense_1/bias/Adam_1/Initializer/zeros*
_output_shapes
:@*
use_locking(*
validate_shape(*!
_class
loc:@v/dense_1/bias*
T0
?
v/dense_1/bias/Adam_1/readIdentityv/dense_1/bias/Adam_1*
_output_shapes
:@*!
_class
loc:@v/dense_1/bias*
T0
?
'v/dense_2/kernel/Adam/Initializer/zerosConst*
dtype0*
_output_shapes

:@*
valueB@*    *#
_class
loc:@v/dense_2/kernel
?
v/dense_2/kernel/Adam
VariableV2*
dtype0*
	container *
shared_name *
_output_shapes

:@*
shape
:@*#
_class
loc:@v/dense_2/kernel
?
v/dense_2/kernel/Adam/AssignAssignv/dense_2/kernel/Adam'v/dense_2/kernel/Adam/Initializer/zeros*
use_locking(*#
_class
loc:@v/dense_2/kernel*
T0*
validate_shape(*
_output_shapes

:@
?
v/dense_2/kernel/Adam/readIdentityv/dense_2/kernel/Adam*
_output_shapes

:@*
T0*#
_class
loc:@v/dense_2/kernel
?
)v/dense_2/kernel/Adam_1/Initializer/zerosConst*#
_class
loc:@v/dense_2/kernel*
valueB@*    *
_output_shapes

:@*
dtype0
?
v/dense_2/kernel/Adam_1
VariableV2*
_output_shapes

:@*
	container *#
_class
loc:@v/dense_2/kernel*
dtype0*
shared_name *
shape
:@
?
v/dense_2/kernel/Adam_1/AssignAssignv/dense_2/kernel/Adam_1)v/dense_2/kernel/Adam_1/Initializer/zeros*#
_class
loc:@v/dense_2/kernel*
_output_shapes

:@*
T0*
validate_shape(*
use_locking(
?
v/dense_2/kernel/Adam_1/readIdentityv/dense_2/kernel/Adam_1*#
_class
loc:@v/dense_2/kernel*
T0*
_output_shapes

:@
?
%v/dense_2/bias/Adam/Initializer/zerosConst*
dtype0*
valueB*    *!
_class
loc:@v/dense_2/bias*
_output_shapes
:
?
v/dense_2/bias/Adam
VariableV2*
shape:*
dtype0*
_output_shapes
:*
shared_name *!
_class
loc:@v/dense_2/bias*
	container 
?
v/dense_2/bias/Adam/AssignAssignv/dense_2/bias/Adam%v/dense_2/bias/Adam/Initializer/zeros*
_output_shapes
:*!
_class
loc:@v/dense_2/bias*
T0*
validate_shape(*
use_locking(
?
v/dense_2/bias/Adam/readIdentityv/dense_2/bias/Adam*
_output_shapes
:*
T0*!
_class
loc:@v/dense_2/bias
?
'v/dense_2/bias/Adam_1/Initializer/zerosConst*!
_class
loc:@v/dense_2/bias*
_output_shapes
:*
valueB*    *
dtype0
?
v/dense_2/bias/Adam_1
VariableV2*!
_class
loc:@v/dense_2/bias*
_output_shapes
:*
dtype0*
shape:*
shared_name *
	container 
?
v/dense_2/bias/Adam_1/AssignAssignv/dense_2/bias/Adam_1'v/dense_2/bias/Adam_1/Initializer/zeros*
_output_shapes
:*!
_class
loc:@v/dense_2/bias*
T0*
validate_shape(*
use_locking(
?
v/dense_2/bias/Adam_1/readIdentityv/dense_2/bias/Adam_1*!
_class
loc:@v/dense_2/bias*
T0*
_output_shapes
:
Y
Adam_1/learning_rateConst*
valueB
 *o?:*
dtype0*
_output_shapes
: 
Q
Adam_1/beta1Const*
_output_shapes
: *
dtype0*
valueB
 *fff?
Q
Adam_1/beta2Const*
_output_shapes
: *
valueB
 *w??*
dtype0
S
Adam_1/epsilonConst*
dtype0*
_output_shapes
: *
valueB
 *w?+2
?
&Adam_1/update_v/dense/kernel/ApplyAdam	ApplyAdamv/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1beta1_power_1/readbeta2_power_1/readAdam_1/learning_rateAdam_1/beta1Adam_1/beta2Adam_1/epsilon
Reshape_30*
_output_shapes

:@*
use_nesterov( *
T0*!
_class
loc:@v/dense/kernel*
use_locking( 
?
$Adam_1/update_v/dense/bias/ApplyAdam	ApplyAdamv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1beta1_power_1/readbeta2_power_1/readAdam_1/learning_rateAdam_1/beta1Adam_1/beta2Adam_1/epsilon
Reshape_31*
_class
loc:@v/dense/bias*
T0*
use_locking( *
_output_shapes
:@*
use_nesterov( 
?
(Adam_1/update_v/dense_1/kernel/ApplyAdam	ApplyAdamv/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1beta1_power_1/readbeta2_power_1/readAdam_1/learning_rateAdam_1/beta1Adam_1/beta2Adam_1/epsilon
Reshape_32*
use_nesterov( *
use_locking( *
_output_shapes

:@@*#
_class
loc:@v/dense_1/kernel*
T0
?
&Adam_1/update_v/dense_1/bias/ApplyAdam	ApplyAdamv/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1beta1_power_1/readbeta2_power_1/readAdam_1/learning_rateAdam_1/beta1Adam_1/beta2Adam_1/epsilon
Reshape_33*
T0*
use_locking( *
_output_shapes
:@*!
_class
loc:@v/dense_1/bias*
use_nesterov( 
?
(Adam_1/update_v/dense_2/kernel/ApplyAdam	ApplyAdamv/dense_2/kernelv/dense_2/kernel/Adamv/dense_2/kernel/Adam_1beta1_power_1/readbeta2_power_1/readAdam_1/learning_rateAdam_1/beta1Adam_1/beta2Adam_1/epsilon
Reshape_34*
_output_shapes

:@*
use_locking( *
use_nesterov( *#
_class
loc:@v/dense_2/kernel*
T0
?
&Adam_1/update_v/dense_2/bias/ApplyAdam	ApplyAdamv/dense_2/biasv/dense_2/bias/Adamv/dense_2/bias/Adam_1beta1_power_1/readbeta2_power_1/readAdam_1/learning_rateAdam_1/beta1Adam_1/beta2Adam_1/epsilon
Reshape_35*!
_class
loc:@v/dense_2/bias*
use_nesterov( *
_output_shapes
:*
use_locking( *
T0
?

Adam_1/mulMulbeta1_power_1/readAdam_1/beta1%^Adam_1/update_v/dense/bias/ApplyAdam'^Adam_1/update_v/dense/kernel/ApplyAdam'^Adam_1/update_v/dense_1/bias/ApplyAdam)^Adam_1/update_v/dense_1/kernel/ApplyAdam'^Adam_1/update_v/dense_2/bias/ApplyAdam)^Adam_1/update_v/dense_2/kernel/ApplyAdam*
_output_shapes
: *
T0*
_class
loc:@v/dense/bias
?
Adam_1/AssignAssignbeta1_power_1
Adam_1/mul*
T0*
use_locking( *
_output_shapes
: *
validate_shape(*
_class
loc:@v/dense/bias
?
Adam_1/mul_1Mulbeta2_power_1/readAdam_1/beta2%^Adam_1/update_v/dense/bias/ApplyAdam'^Adam_1/update_v/dense/kernel/ApplyAdam'^Adam_1/update_v/dense_1/bias/ApplyAdam)^Adam_1/update_v/dense_1/kernel/ApplyAdam'^Adam_1/update_v/dense_2/bias/ApplyAdam)^Adam_1/update_v/dense_2/kernel/ApplyAdam*
_class
loc:@v/dense/bias*
_output_shapes
: *
T0
?
Adam_1/Assign_1Assignbeta2_power_1Adam_1/mul_1*
use_locking( *
_output_shapes
: *
validate_shape(*
T0*
_class
loc:@v/dense/bias
?
Adam_1NoOp^Adam_1/Assign^Adam_1/Assign_1%^Adam_1/update_v/dense/bias/ApplyAdam'^Adam_1/update_v/dense/kernel/ApplyAdam'^Adam_1/update_v/dense_1/bias/ApplyAdam)^Adam_1/update_v/dense_1/kernel/ApplyAdam'^Adam_1/update_v/dense_2/bias/ApplyAdam)^Adam_1/update_v/dense_2/kernel/ApplyAdam
l
Reshape_36/shapeConst^Adam_1*
_output_shapes
:*
valueB:
?????????*
dtype0
p

Reshape_36Reshapev/dense/kernel/readReshape_36/shape*
Tshape0*
T0*
_output_shapes	
:?
l
Reshape_37/shapeConst^Adam_1*
valueB:
?????????*
dtype0*
_output_shapes
:
m

Reshape_37Reshapev/dense/bias/readReshape_37/shape*
Tshape0*
_output_shapes
:@*
T0
l
Reshape_38/shapeConst^Adam_1*
_output_shapes
:*
dtype0*
valueB:
?????????
r

Reshape_38Reshapev/dense_1/kernel/readReshape_38/shape*
T0*
Tshape0*
_output_shapes	
:? 
l
Reshape_39/shapeConst^Adam_1*
dtype0*
_output_shapes
:*
valueB:
?????????
o

Reshape_39Reshapev/dense_1/bias/readReshape_39/shape*
T0*
Tshape0*
_output_shapes
:@
l
Reshape_40/shapeConst^Adam_1*
_output_shapes
:*
dtype0*
valueB:
?????????
q

Reshape_40Reshapev/dense_2/kernel/readReshape_40/shape*
T0*
Tshape0*
_output_shapes
:@
l
Reshape_41/shapeConst^Adam_1*
valueB:
?????????*
_output_shapes
:*
dtype0
o

Reshape_41Reshapev/dense_2/bias/readReshape_41/shape*
T0*
_output_shapes
:*
Tshape0
X
concat_3/axisConst^Adam_1*
dtype0*
value	B : *
_output_shapes
: 
?
concat_3ConcatV2
Reshape_36
Reshape_37
Reshape_38
Reshape_39
Reshape_40
Reshape_41concat_3/axis*

Tidx0*
_output_shapes	
:?%*
T0*
N
h
PyFunc_3PyFuncconcat_3*
Tin
2*
_output_shapes
:*
token
pyfunc_3*
Tout
2
q
Const_8Const^Adam_1*
_output_shapes
:*-
value$B""   @      @   @      *
dtype0
\
split_3/split_dimConst^Adam_1*
_output_shapes
: *
dtype0*
value	B : 
?
split_3SplitVPyFunc_3Const_8split_3/split_dim*
	num_split*,
_output_shapes
::::::*

Tlen0*
T0
j
Reshape_42/shapeConst^Adam_1*
dtype0*
valueB"   @   *
_output_shapes
:
g

Reshape_42Reshapesplit_3Reshape_42/shape*
Tshape0*
_output_shapes

:@*
T0
c
Reshape_43/shapeConst^Adam_1*
_output_shapes
:*
dtype0*
valueB:@
e

Reshape_43Reshape	split_3:1Reshape_43/shape*
_output_shapes
:@*
Tshape0*
T0
j
Reshape_44/shapeConst^Adam_1*
_output_shapes
:*
valueB"@   @   *
dtype0
i

Reshape_44Reshape	split_3:2Reshape_44/shape*
Tshape0*
_output_shapes

:@@*
T0
c
Reshape_45/shapeConst^Adam_1*
dtype0*
valueB:@*
_output_shapes
:
e

Reshape_45Reshape	split_3:3Reshape_45/shape*
T0*
Tshape0*
_output_shapes
:@
j
Reshape_46/shapeConst^Adam_1*
_output_shapes
:*
valueB"@      *
dtype0
i

Reshape_46Reshape	split_3:4Reshape_46/shape*
_output_shapes

:@*
Tshape0*
T0
c
Reshape_47/shapeConst^Adam_1*
_output_shapes
:*
dtype0*
valueB:
e

Reshape_47Reshape	split_3:5Reshape_47/shape*
Tshape0*
T0*
_output_shapes
:
?
Assign_6Assignv/dense/kernel
Reshape_42*
_output_shapes

:@*
use_locking(*
validate_shape(*!
_class
loc:@v/dense/kernel*
T0
?
Assign_7Assignv/dense/bias
Reshape_43*
validate_shape(*
use_locking(*
T0*
_class
loc:@v/dense/bias*
_output_shapes
:@
?
Assign_8Assignv/dense_1/kernel
Reshape_44*
T0*
use_locking(*
_output_shapes

:@@*#
_class
loc:@v/dense_1/kernel*
validate_shape(
?
Assign_9Assignv/dense_1/bias
Reshape_45*
_output_shapes
:@*
validate_shape(*!
_class
loc:@v/dense_1/bias*
use_locking(*
T0
?
	Assign_10Assignv/dense_2/kernel
Reshape_46*
validate_shape(*
T0*
use_locking(*
_output_shapes

:@*#
_class
loc:@v/dense_2/kernel
?
	Assign_11Assignv/dense_2/bias
Reshape_47*
validate_shape(*
T0*
use_locking(*!
_class
loc:@v/dense_2/bias*
_output_shapes
:
a
group_deps_2NoOp^Adam_1
^Assign_10
^Assign_11	^Assign_6	^Assign_7	^Assign_8	^Assign_9
,
group_deps_3NoOp^Adam_1^group_deps_2
?
initNoOp^beta1_power/Assign^beta1_power_1/Assign^beta2_power/Assign^beta2_power_1/Assign^pi/dense/bias/Adam/Assign^pi/dense/bias/Adam_1/Assign^pi/dense/bias/Assign^pi/dense/kernel/Adam/Assign^pi/dense/kernel/Adam_1/Assign^pi/dense/kernel/Assign^pi/dense_1/bias/Adam/Assign^pi/dense_1/bias/Adam_1/Assign^pi/dense_1/bias/Assign^pi/dense_1/kernel/Adam/Assign ^pi/dense_1/kernel/Adam_1/Assign^pi/dense_1/kernel/Assign^pi/dense_2/bias/Adam/Assign^pi/dense_2/bias/Adam_1/Assign^pi/dense_2/bias/Assign^pi/dense_2/kernel/Adam/Assign ^pi/dense_2/kernel/Adam_1/Assign^pi/dense_2/kernel/Assign^v/dense/bias/Adam/Assign^v/dense/bias/Adam_1/Assign^v/dense/bias/Assign^v/dense/kernel/Adam/Assign^v/dense/kernel/Adam_1/Assign^v/dense/kernel/Assign^v/dense_1/bias/Adam/Assign^v/dense_1/bias/Adam_1/Assign^v/dense_1/bias/Assign^v/dense_1/kernel/Adam/Assign^v/dense_1/kernel/Adam_1/Assign^v/dense_1/kernel/Assign^v/dense_2/bias/Adam/Assign^v/dense_2/bias/Adam_1/Assign^v/dense_2/bias/Assign^v/dense_2/kernel/Adam/Assign^v/dense_2/kernel/Adam_1/Assign^v/dense_2/kernel/Assign
c
Reshape_48/shapeConst*
dtype0*
_output_shapes
:*
valueB:
?????????
q

Reshape_48Reshapepi/dense/kernel/readReshape_48/shape*
T0*
Tshape0*
_output_shapes	
:?
c
Reshape_49/shapeConst*
valueB:
?????????*
dtype0*
_output_shapes
:
n

Reshape_49Reshapepi/dense/bias/readReshape_49/shape*
T0*
Tshape0*
_output_shapes
:@
c
Reshape_50/shapeConst*
_output_shapes
:*
valueB:
?????????*
dtype0
s

Reshape_50Reshapepi/dense_1/kernel/readReshape_50/shape*
Tshape0*
_output_shapes	
:? *
T0
c
Reshape_51/shapeConst*
dtype0*
_output_shapes
:*
valueB:
?????????
p

Reshape_51Reshapepi/dense_1/bias/readReshape_51/shape*
_output_shapes
:@*
T0*
Tshape0
c
Reshape_52/shapeConst*
_output_shapes
:*
valueB:
?????????*
dtype0
s

Reshape_52Reshapepi/dense_2/kernel/readReshape_52/shape*
Tshape0*
_output_shapes	
:?*
T0
c
Reshape_53/shapeConst*
valueB:
?????????*
dtype0*
_output_shapes
:
p

Reshape_53Reshapepi/dense_2/bias/readReshape_53/shape*
Tshape0*
_output_shapes
:*
T0
c
Reshape_54/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????
p

Reshape_54Reshapev/dense/kernel/readReshape_54/shape*
T0*
_output_shapes	
:?*
Tshape0
c
Reshape_55/shapeConst*
_output_shapes
:*
valueB:
?????????*
dtype0
m

Reshape_55Reshapev/dense/bias/readReshape_55/shape*
T0*
Tshape0*
_output_shapes
:@
c
Reshape_56/shapeConst*
valueB:
?????????*
dtype0*
_output_shapes
:
r

Reshape_56Reshapev/dense_1/kernel/readReshape_56/shape*
T0*
Tshape0*
_output_shapes	
:? 
c
Reshape_57/shapeConst*
_output_shapes
:*
valueB:
?????????*
dtype0
o

Reshape_57Reshapev/dense_1/bias/readReshape_57/shape*
Tshape0*
_output_shapes
:@*
T0
c
Reshape_58/shapeConst*
valueB:
?????????*
_output_shapes
:*
dtype0
q

Reshape_58Reshapev/dense_2/kernel/readReshape_58/shape*
T0*
_output_shapes
:@*
Tshape0
c
Reshape_59/shapeConst*
dtype0*
valueB:
?????????*
_output_shapes
:
o

Reshape_59Reshapev/dense_2/bias/readReshape_59/shape*
T0*
Tshape0*
_output_shapes
:
c
Reshape_60/shapeConst*
valueB:
?????????*
_output_shapes
:*
dtype0
l

Reshape_60Reshapebeta1_power/readReshape_60/shape*
Tshape0*
T0*
_output_shapes
:
c
Reshape_61/shapeConst*
_output_shapes
:*
valueB:
?????????*
dtype0
l

Reshape_61Reshapebeta2_power/readReshape_61/shape*
_output_shapes
:*
T0*
Tshape0
c
Reshape_62/shapeConst*
valueB:
?????????*
dtype0*
_output_shapes
:
v

Reshape_62Reshapepi/dense/kernel/Adam/readReshape_62/shape*
_output_shapes	
:?*
T0*
Tshape0
c
Reshape_63/shapeConst*
dtype0*
valueB:
?????????*
_output_shapes
:
x

Reshape_63Reshapepi/dense/kernel/Adam_1/readReshape_63/shape*
_output_shapes	
:?*
Tshape0*
T0
c
Reshape_64/shapeConst*
_output_shapes
:*
valueB:
?????????*
dtype0
s

Reshape_64Reshapepi/dense/bias/Adam/readReshape_64/shape*
T0*
Tshape0*
_output_shapes
:@
c
Reshape_65/shapeConst*
dtype0*
_output_shapes
:*
valueB:
?????????
u

Reshape_65Reshapepi/dense/bias/Adam_1/readReshape_65/shape*
Tshape0*
T0*
_output_shapes
:@
c
Reshape_66/shapeConst*
valueB:
?????????*
dtype0*
_output_shapes
:
x

Reshape_66Reshapepi/dense_1/kernel/Adam/readReshape_66/shape*
T0*
Tshape0*
_output_shapes	
:? 
c
Reshape_67/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????
z

Reshape_67Reshapepi/dense_1/kernel/Adam_1/readReshape_67/shape*
T0*
Tshape0*
_output_shapes	
:? 
c
Reshape_68/shapeConst*
_output_shapes
:*
valueB:
?????????*
dtype0
u

Reshape_68Reshapepi/dense_1/bias/Adam/readReshape_68/shape*
Tshape0*
_output_shapes
:@*
T0
c
Reshape_69/shapeConst*
_output_shapes
:*
valueB:
?????????*
dtype0
w

Reshape_69Reshapepi/dense_1/bias/Adam_1/readReshape_69/shape*
Tshape0*
_output_shapes
:@*
T0
c
Reshape_70/shapeConst*
_output_shapes
:*
valueB:
?????????*
dtype0
x

Reshape_70Reshapepi/dense_2/kernel/Adam/readReshape_70/shape*
Tshape0*
_output_shapes	
:?*
T0
c
Reshape_71/shapeConst*
valueB:
?????????*
dtype0*
_output_shapes
:
z

Reshape_71Reshapepi/dense_2/kernel/Adam_1/readReshape_71/shape*
T0*
_output_shapes	
:?*
Tshape0
c
Reshape_72/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????
u

Reshape_72Reshapepi/dense_2/bias/Adam/readReshape_72/shape*
Tshape0*
T0*
_output_shapes
:
c
Reshape_73/shapeConst*
dtype0*
_output_shapes
:*
valueB:
?????????
w

Reshape_73Reshapepi/dense_2/bias/Adam_1/readReshape_73/shape*
_output_shapes
:*
T0*
Tshape0
c
Reshape_74/shapeConst*
valueB:
?????????*
_output_shapes
:*
dtype0
n

Reshape_74Reshapebeta1_power_1/readReshape_74/shape*
T0*
_output_shapes
:*
Tshape0
c
Reshape_75/shapeConst*
dtype0*
valueB:
?????????*
_output_shapes
:
n

Reshape_75Reshapebeta2_power_1/readReshape_75/shape*
_output_shapes
:*
Tshape0*
T0
c
Reshape_76/shapeConst*
dtype0*
valueB:
?????????*
_output_shapes
:
u

Reshape_76Reshapev/dense/kernel/Adam/readReshape_76/shape*
T0*
Tshape0*
_output_shapes	
:?
c
Reshape_77/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????
w

Reshape_77Reshapev/dense/kernel/Adam_1/readReshape_77/shape*
Tshape0*
_output_shapes	
:?*
T0
c
Reshape_78/shapeConst*
dtype0*
_output_shapes
:*
valueB:
?????????
r

Reshape_78Reshapev/dense/bias/Adam/readReshape_78/shape*
_output_shapes
:@*
Tshape0*
T0
c
Reshape_79/shapeConst*
_output_shapes
:*
valueB:
?????????*
dtype0
t

Reshape_79Reshapev/dense/bias/Adam_1/readReshape_79/shape*
T0*
Tshape0*
_output_shapes
:@
c
Reshape_80/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????
w

Reshape_80Reshapev/dense_1/kernel/Adam/readReshape_80/shape*
Tshape0*
_output_shapes	
:? *
T0
c
Reshape_81/shapeConst*
valueB:
?????????*
_output_shapes
:*
dtype0
y

Reshape_81Reshapev/dense_1/kernel/Adam_1/readReshape_81/shape*
Tshape0*
T0*
_output_shapes	
:? 
c
Reshape_82/shapeConst*
valueB:
?????????*
dtype0*
_output_shapes
:
t

Reshape_82Reshapev/dense_1/bias/Adam/readReshape_82/shape*
_output_shapes
:@*
Tshape0*
T0
c
Reshape_83/shapeConst*
dtype0*
_output_shapes
:*
valueB:
?????????
v

Reshape_83Reshapev/dense_1/bias/Adam_1/readReshape_83/shape*
Tshape0*
T0*
_output_shapes
:@
c
Reshape_84/shapeConst*
valueB:
?????????*
dtype0*
_output_shapes
:
v

Reshape_84Reshapev/dense_2/kernel/Adam/readReshape_84/shape*
T0*
Tshape0*
_output_shapes
:@
c
Reshape_85/shapeConst*
valueB:
?????????*
_output_shapes
:*
dtype0
x

Reshape_85Reshapev/dense_2/kernel/Adam_1/readReshape_85/shape*
_output_shapes
:@*
T0*
Tshape0
c
Reshape_86/shapeConst*
_output_shapes
:*
valueB:
?????????*
dtype0
t

Reshape_86Reshapev/dense_2/bias/Adam/readReshape_86/shape*
T0*
Tshape0*
_output_shapes
:
c
Reshape_87/shapeConst*
dtype0*
_output_shapes
:*
valueB:
?????????
v

Reshape_87Reshapev/dense_2/bias/Adam_1/readReshape_87/shape*
Tshape0*
T0*
_output_shapes
:
O
concat_4/axisConst*
dtype0*
_output_shapes
: *
value	B : 
?
concat_4ConcatV2
Reshape_48
Reshape_49
Reshape_50
Reshape_51
Reshape_52
Reshape_53
Reshape_54
Reshape_55
Reshape_56
Reshape_57
Reshape_58
Reshape_59
Reshape_60
Reshape_61
Reshape_62
Reshape_63
Reshape_64
Reshape_65
Reshape_66
Reshape_67
Reshape_68
Reshape_69
Reshape_70
Reshape_71
Reshape_72
Reshape_73
Reshape_74
Reshape_75
Reshape_76
Reshape_77
Reshape_78
Reshape_79
Reshape_80
Reshape_81
Reshape_82
Reshape_83
Reshape_84
Reshape_85
Reshape_86
Reshape_87concat_4/axis*
_output_shapes

:??*

Tidx0*
N(*
T0
h
PyFunc_4PyFuncconcat_4*
token
pyfunc_4*
Tout
2*
_output_shapes
:*
Tin
2
?
Const_9Const*
dtype0*?
value?B?("?   @      @            @      @   @                  @   @         @   @                           @   @         @   @   @   @         *
_output_shapes
:(
S
split_4/split_dimConst*
dtype0*
value	B : *
_output_shapes
: 
?
split_4SplitVPyFunc_4Const_9split_4/split_dim*
	num_split(*
T0*

Tlen0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::
a
Reshape_88/shapeConst*
dtype0*
_output_shapes
:*
valueB"   @   
g

Reshape_88Reshapesplit_4Reshape_88/shape*
T0*
_output_shapes

:@*
Tshape0
Z
Reshape_89/shapeConst*
_output_shapes
:*
valueB:@*
dtype0
e

Reshape_89Reshape	split_4:1Reshape_89/shape*
Tshape0*
T0*
_output_shapes
:@
a
Reshape_90/shapeConst*
_output_shapes
:*
valueB"@   @   *
dtype0
i

Reshape_90Reshape	split_4:2Reshape_90/shape*
Tshape0*
T0*
_output_shapes

:@@
Z
Reshape_91/shapeConst*
valueB:@*
_output_shapes
:*
dtype0
e

Reshape_91Reshape	split_4:3Reshape_91/shape*
_output_shapes
:@*
T0*
Tshape0
a
Reshape_92/shapeConst*
valueB"@      *
_output_shapes
:*
dtype0
i

Reshape_92Reshape	split_4:4Reshape_92/shape*
T0*
_output_shapes

:@*
Tshape0
Z
Reshape_93/shapeConst*
valueB:*
_output_shapes
:*
dtype0
e

Reshape_93Reshape	split_4:5Reshape_93/shape*
_output_shapes
:*
Tshape0*
T0
a
Reshape_94/shapeConst*
_output_shapes
:*
valueB"   @   *
dtype0
i

Reshape_94Reshape	split_4:6Reshape_94/shape*
Tshape0*
_output_shapes

:@*
T0
Z
Reshape_95/shapeConst*
dtype0*
_output_shapes
:*
valueB:@
e

Reshape_95Reshape	split_4:7Reshape_95/shape*
T0*
Tshape0*
_output_shapes
:@
a
Reshape_96/shapeConst*
dtype0*
valueB"@   @   *
_output_shapes
:
i

Reshape_96Reshape	split_4:8Reshape_96/shape*
T0*
Tshape0*
_output_shapes

:@@
Z
Reshape_97/shapeConst*
_output_shapes
:*
valueB:@*
dtype0
e

Reshape_97Reshape	split_4:9Reshape_97/shape*
T0*
Tshape0*
_output_shapes
:@
a
Reshape_98/shapeConst*
valueB"@      *
_output_shapes
:*
dtype0
j

Reshape_98Reshape
split_4:10Reshape_98/shape*
Tshape0*
T0*
_output_shapes

:@
Z
Reshape_99/shapeConst*
valueB:*
dtype0*
_output_shapes
:
f

Reshape_99Reshape
split_4:11Reshape_99/shape*
Tshape0*
_output_shapes
:*
T0
T
Reshape_100/shapeConst*
_output_shapes
: *
valueB *
dtype0
d
Reshape_100Reshape
split_4:12Reshape_100/shape*
T0*
Tshape0*
_output_shapes
: 
T
Reshape_101/shapeConst*
valueB *
_output_shapes
: *
dtype0
d
Reshape_101Reshape
split_4:13Reshape_101/shape*
Tshape0*
T0*
_output_shapes
: 
b
Reshape_102/shapeConst*
valueB"   @   *
_output_shapes
:*
dtype0
l
Reshape_102Reshape
split_4:14Reshape_102/shape*
T0*
Tshape0*
_output_shapes

:@
b
Reshape_103/shapeConst*
dtype0*
valueB"   @   *
_output_shapes
:
l
Reshape_103Reshape
split_4:15Reshape_103/shape*
T0*
Tshape0*
_output_shapes

:@
[
Reshape_104/shapeConst*
_output_shapes
:*
valueB:@*
dtype0
h
Reshape_104Reshape
split_4:16Reshape_104/shape*
T0*
Tshape0*
_output_shapes
:@
[
Reshape_105/shapeConst*
valueB:@*
dtype0*
_output_shapes
:
h
Reshape_105Reshape
split_4:17Reshape_105/shape*
T0*
_output_shapes
:@*
Tshape0
b
Reshape_106/shapeConst*
valueB"@   @   *
dtype0*
_output_shapes
:
l
Reshape_106Reshape
split_4:18Reshape_106/shape*
_output_shapes

:@@*
Tshape0*
T0
b
Reshape_107/shapeConst*
valueB"@   @   *
dtype0*
_output_shapes
:
l
Reshape_107Reshape
split_4:19Reshape_107/shape*
T0*
Tshape0*
_output_shapes

:@@
[
Reshape_108/shapeConst*
_output_shapes
:*
valueB:@*
dtype0
h
Reshape_108Reshape
split_4:20Reshape_108/shape*
_output_shapes
:@*
T0*
Tshape0
[
Reshape_109/shapeConst*
valueB:@*
dtype0*
_output_shapes
:
h
Reshape_109Reshape
split_4:21Reshape_109/shape*
Tshape0*
_output_shapes
:@*
T0
b
Reshape_110/shapeConst*
dtype0*
valueB"@      *
_output_shapes
:
l
Reshape_110Reshape
split_4:22Reshape_110/shape*
T0*
Tshape0*
_output_shapes

:@
b
Reshape_111/shapeConst*
dtype0*
valueB"@      *
_output_shapes
:
l
Reshape_111Reshape
split_4:23Reshape_111/shape*
T0*
Tshape0*
_output_shapes

:@
[
Reshape_112/shapeConst*
_output_shapes
:*
dtype0*
valueB:
h
Reshape_112Reshape
split_4:24Reshape_112/shape*
T0*
Tshape0*
_output_shapes
:
[
Reshape_113/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_113Reshape
split_4:25Reshape_113/shape*
T0*
_output_shapes
:*
Tshape0
T
Reshape_114/shapeConst*
dtype0*
_output_shapes
: *
valueB 
d
Reshape_114Reshape
split_4:26Reshape_114/shape*
T0*
Tshape0*
_output_shapes
: 
T
Reshape_115/shapeConst*
_output_shapes
: *
valueB *
dtype0
d
Reshape_115Reshape
split_4:27Reshape_115/shape*
Tshape0*
T0*
_output_shapes
: 
b
Reshape_116/shapeConst*
valueB"   @   *
_output_shapes
:*
dtype0
l
Reshape_116Reshape
split_4:28Reshape_116/shape*
T0*
Tshape0*
_output_shapes

:@
b
Reshape_117/shapeConst*
dtype0*
valueB"   @   *
_output_shapes
:
l
Reshape_117Reshape
split_4:29Reshape_117/shape*
_output_shapes

:@*
T0*
Tshape0
[
Reshape_118/shapeConst*
dtype0*
valueB:@*
_output_shapes
:
h
Reshape_118Reshape
split_4:30Reshape_118/shape*
Tshape0*
_output_shapes
:@*
T0
[
Reshape_119/shapeConst*
dtype0*
_output_shapes
:*
valueB:@
h
Reshape_119Reshape
split_4:31Reshape_119/shape*
T0*
_output_shapes
:@*
Tshape0
b
Reshape_120/shapeConst*
_output_shapes
:*
dtype0*
valueB"@   @   
l
Reshape_120Reshape
split_4:32Reshape_120/shape*
T0*
_output_shapes

:@@*
Tshape0
b
Reshape_121/shapeConst*
valueB"@   @   *
_output_shapes
:*
dtype0
l
Reshape_121Reshape
split_4:33Reshape_121/shape*
_output_shapes

:@@*
T0*
Tshape0
[
Reshape_122/shapeConst*
dtype0*
valueB:@*
_output_shapes
:
h
Reshape_122Reshape
split_4:34Reshape_122/shape*
_output_shapes
:@*
T0*
Tshape0
[
Reshape_123/shapeConst*
valueB:@*
dtype0*
_output_shapes
:
h
Reshape_123Reshape
split_4:35Reshape_123/shape*
T0*
_output_shapes
:@*
Tshape0
b
Reshape_124/shapeConst*
dtype0*
_output_shapes
:*
valueB"@      
l
Reshape_124Reshape
split_4:36Reshape_124/shape*
_output_shapes

:@*
T0*
Tshape0
b
Reshape_125/shapeConst*
valueB"@      *
_output_shapes
:*
dtype0
l
Reshape_125Reshape
split_4:37Reshape_125/shape*
_output_shapes

:@*
T0*
Tshape0
[
Reshape_126/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_126Reshape
split_4:38Reshape_126/shape*
T0*
_output_shapes
:*
Tshape0
[
Reshape_127/shapeConst*
dtype0*
_output_shapes
:*
valueB:
h
Reshape_127Reshape
split_4:39Reshape_127/shape*
Tshape0*
T0*
_output_shapes
:
?
	Assign_12Assignpi/dense/kernel
Reshape_88*
T0*
validate_shape(*
_output_shapes

:@*"
_class
loc:@pi/dense/kernel*
use_locking(
?
	Assign_13Assignpi/dense/bias
Reshape_89*
use_locking(*
validate_shape(*
_output_shapes
:@*
T0* 
_class
loc:@pi/dense/bias
?
	Assign_14Assignpi/dense_1/kernel
Reshape_90*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

:@@*
T0*
use_locking(
?
	Assign_15Assignpi/dense_1/bias
Reshape_91*
T0*"
_class
loc:@pi/dense_1/bias*
use_locking(*
_output_shapes
:@*
validate_shape(
?
	Assign_16Assignpi/dense_2/kernel
Reshape_92*$
_class
loc:@pi/dense_2/kernel*
validate_shape(*
_output_shapes

:@*
use_locking(*
T0
?
	Assign_17Assignpi/dense_2/bias
Reshape_93*
T0*
use_locking(*
validate_shape(*"
_class
loc:@pi/dense_2/bias*
_output_shapes
:
?
	Assign_18Assignv/dense/kernel
Reshape_94*!
_class
loc:@v/dense/kernel*
_output_shapes

:@*
validate_shape(*
use_locking(*
T0
?
	Assign_19Assignv/dense/bias
Reshape_95*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
:@
?
	Assign_20Assignv/dense_1/kernel
Reshape_96*
T0*
validate_shape(*
use_locking(*
_output_shapes

:@@*#
_class
loc:@v/dense_1/kernel
?
	Assign_21Assignv/dense_1/bias
Reshape_97*
_output_shapes
:@*
T0*
validate_shape(*
use_locking(*!
_class
loc:@v/dense_1/bias
?
	Assign_22Assignv/dense_2/kernel
Reshape_98*#
_class
loc:@v/dense_2/kernel*
use_locking(*
_output_shapes

:@*
T0*
validate_shape(
?
	Assign_23Assignv/dense_2/bias
Reshape_99*
_output_shapes
:*
validate_shape(*!
_class
loc:@v/dense_2/bias*
use_locking(*
T0
?
	Assign_24Assignbeta1_powerReshape_100* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: *
T0*
use_locking(
?
	Assign_25Assignbeta2_powerReshape_101*
validate_shape(* 
_class
loc:@pi/dense/bias*
use_locking(*
T0*
_output_shapes
: 
?
	Assign_26Assignpi/dense/kernel/AdamReshape_102*
use_locking(*
_output_shapes

:@*
T0*
validate_shape(*"
_class
loc:@pi/dense/kernel
?
	Assign_27Assignpi/dense/kernel/Adam_1Reshape_103*
T0*
validate_shape(*"
_class
loc:@pi/dense/kernel*
_output_shapes

:@*
use_locking(
?
	Assign_28Assignpi/dense/bias/AdamReshape_104*
T0* 
_class
loc:@pi/dense/bias*
_output_shapes
:@*
validate_shape(*
use_locking(
?
	Assign_29Assignpi/dense/bias/Adam_1Reshape_105*
T0*
use_locking(* 
_class
loc:@pi/dense/bias*
_output_shapes
:@*
validate_shape(
?
	Assign_30Assignpi/dense_1/kernel/AdamReshape_106*
use_locking(*
validate_shape(*
T0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes

:@@
?
	Assign_31Assignpi/dense_1/kernel/Adam_1Reshape_107*
use_locking(*
validate_shape(*
_output_shapes

:@@*
T0*$
_class
loc:@pi/dense_1/kernel
?
	Assign_32Assignpi/dense_1/bias/AdamReshape_108*
validate_shape(*
use_locking(*
_output_shapes
:@*
T0*"
_class
loc:@pi/dense_1/bias
?
	Assign_33Assignpi/dense_1/bias/Adam_1Reshape_109*
T0*"
_class
loc:@pi/dense_1/bias*
_output_shapes
:@*
use_locking(*
validate_shape(
?
	Assign_34Assignpi/dense_2/kernel/AdamReshape_110*
use_locking(*
validate_shape(*
_output_shapes

:@*$
_class
loc:@pi/dense_2/kernel*
T0
?
	Assign_35Assignpi/dense_2/kernel/Adam_1Reshape_111*
use_locking(*
T0*
validate_shape(*$
_class
loc:@pi/dense_2/kernel*
_output_shapes

:@
?
	Assign_36Assignpi/dense_2/bias/AdamReshape_112*
validate_shape(*
_output_shapes
:*
use_locking(*"
_class
loc:@pi/dense_2/bias*
T0
?
	Assign_37Assignpi/dense_2/bias/Adam_1Reshape_113*
_output_shapes
:*
validate_shape(*
use_locking(*
T0*"
_class
loc:@pi/dense_2/bias
?
	Assign_38Assignbeta1_power_1Reshape_114*
_class
loc:@v/dense/bias*
_output_shapes
: *
use_locking(*
validate_shape(*
T0
?
	Assign_39Assignbeta2_power_1Reshape_115*
use_locking(*
validate_shape(*
T0*
_output_shapes
: *
_class
loc:@v/dense/bias
?
	Assign_40Assignv/dense/kernel/AdamReshape_116*
_output_shapes

:@*
validate_shape(*
use_locking(*
T0*!
_class
loc:@v/dense/kernel
?
	Assign_41Assignv/dense/kernel/Adam_1Reshape_117*
use_locking(*
T0*
_output_shapes

:@*!
_class
loc:@v/dense/kernel*
validate_shape(
?
	Assign_42Assignv/dense/bias/AdamReshape_118*
_class
loc:@v/dense/bias*
T0*
use_locking(*
_output_shapes
:@*
validate_shape(
?
	Assign_43Assignv/dense/bias/Adam_1Reshape_119*
_class
loc:@v/dense/bias*
use_locking(*
T0*
validate_shape(*
_output_shapes
:@
?
	Assign_44Assignv/dense_1/kernel/AdamReshape_120*
validate_shape(*#
_class
loc:@v/dense_1/kernel*
_output_shapes

:@@*
T0*
use_locking(
?
	Assign_45Assignv/dense_1/kernel/Adam_1Reshape_121*
_output_shapes

:@@*#
_class
loc:@v/dense_1/kernel*
T0*
validate_shape(*
use_locking(
?
	Assign_46Assignv/dense_1/bias/AdamReshape_122*
T0*!
_class
loc:@v/dense_1/bias*
_output_shapes
:@*
validate_shape(*
use_locking(
?
	Assign_47Assignv/dense_1/bias/Adam_1Reshape_123*
_output_shapes
:@*
use_locking(*
validate_shape(*
T0*!
_class
loc:@v/dense_1/bias
?
	Assign_48Assignv/dense_2/kernel/AdamReshape_124*
validate_shape(*
use_locking(*#
_class
loc:@v/dense_2/kernel*
_output_shapes

:@*
T0
?
	Assign_49Assignv/dense_2/kernel/Adam_1Reshape_125*
use_locking(*
validate_shape(*
T0*
_output_shapes

:@*#
_class
loc:@v/dense_2/kernel
?
	Assign_50Assignv/dense_2/bias/AdamReshape_126*
_output_shapes
:*!
_class
loc:@v/dense_2/bias*
T0*
use_locking(*
validate_shape(
?
	Assign_51Assignv/dense_2/bias/Adam_1Reshape_127*
use_locking(*
validate_shape(*
T0*!
_class
loc:@v/dense_2/bias*
_output_shapes
:
?
group_deps_4NoOp
^Assign_12
^Assign_13
^Assign_14
^Assign_15
^Assign_16
^Assign_17
^Assign_18
^Assign_19
^Assign_20
^Assign_21
^Assign_22
^Assign_23
^Assign_24
^Assign_25
^Assign_26
^Assign_27
^Assign_28
^Assign_29
^Assign_30
^Assign_31
^Assign_32
^Assign_33
^Assign_34
^Assign_35
^Assign_36
^Assign_37
^Assign_38
^Assign_39
^Assign_40
^Assign_41
^Assign_42
^Assign_43
^Assign_44
^Assign_45
^Assign_46
^Assign_47
^Assign_48
^Assign_49
^Assign_50
^Assign_51
Y
save/filename/inputConst*
dtype0*
_output_shapes
: *
valueB Bmodel
n
save/filenamePlaceholderWithDefaultsave/filename/input*
dtype0*
_output_shapes
: *
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
shape: *
_output_shapes
: *
dtype0
?
save/StringJoin/inputs_1Const*
dtype0*<
value3B1 B+_temp_44840b2644364d0d931baface1194699/part*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
Q
save/num_shardsConst*
dtype0*
value	B :*
_output_shapes
: 
\
save/ShardedFilename/shardConst*
dtype0*
value	B : *
_output_shapes
: 
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 
?
save/SaveV2/tensor_namesConst*
dtype0*?
value?B?(Bbeta1_powerBbeta1_power_1Bbeta2_powerBbeta2_power_1Bpi/dense/biasBpi/dense/bias/AdamBpi/dense/bias/Adam_1Bpi/dense/kernelBpi/dense/kernel/AdamBpi/dense/kernel/Adam_1Bpi/dense_1/biasBpi/dense_1/bias/AdamBpi/dense_1/bias/Adam_1Bpi/dense_1/kernelBpi/dense_1/kernel/AdamBpi/dense_1/kernel/Adam_1Bpi/dense_2/biasBpi/dense_2/bias/AdamBpi/dense_2/bias/Adam_1Bpi/dense_2/kernelBpi/dense_2/kernel/AdamBpi/dense_2/kernel/Adam_1Bv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1Bv/dense_2/biasBv/dense_2/bias/AdamBv/dense_2/bias/Adam_1Bv/dense_2/kernelBv/dense_2/kernel/AdamBv/dense_2/kernel/Adam_1*
_output_shapes
:(
?
save/SaveV2/shape_and_slicesConst*
_output_shapes
:(*c
valueZBX(B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
?
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesbeta1_powerbeta1_power_1beta2_powerbeta2_power_1pi/dense/biaspi/dense/bias/Adampi/dense/bias/Adam_1pi/dense/kernelpi/dense/kernel/Adampi/dense/kernel/Adam_1pi/dense_1/biaspi/dense_1/bias/Adampi/dense_1/bias/Adam_1pi/dense_1/kernelpi/dense_1/kernel/Adampi/dense_1/kernel/Adam_1pi/dense_2/biaspi/dense_2/bias/Adampi/dense_2/bias/Adam_1pi/dense_2/kernelpi/dense_2/kernel/Adampi/dense_2/kernel/Adam_1v/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1v/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1v/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1v/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1v/dense_2/biasv/dense_2/bias/Adamv/dense_2/bias/Adam_1v/dense_2/kernelv/dense_2/kernel/Adamv/dense_2/kernel/Adam_1*6
dtypes,
*2(
?
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*'
_class
loc:@save/ShardedFilename*
T0*
_output_shapes
: 
?
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*

axis *
N*
T0*
_output_shapes
:
}
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency*
T0*
_output_shapes
: 
?
save/RestoreV2/tensor_namesConst*
dtype0*?
value?B?(Bbeta1_powerBbeta1_power_1Bbeta2_powerBbeta2_power_1Bpi/dense/biasBpi/dense/bias/AdamBpi/dense/bias/Adam_1Bpi/dense/kernelBpi/dense/kernel/AdamBpi/dense/kernel/Adam_1Bpi/dense_1/biasBpi/dense_1/bias/AdamBpi/dense_1/bias/Adam_1Bpi/dense_1/kernelBpi/dense_1/kernel/AdamBpi/dense_1/kernel/Adam_1Bpi/dense_2/biasBpi/dense_2/bias/AdamBpi/dense_2/bias/Adam_1Bpi/dense_2/kernelBpi/dense_2/kernel/AdamBpi/dense_2/kernel/Adam_1Bv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1Bv/dense_2/biasBv/dense_2/bias/AdamBv/dense_2/bias/Adam_1Bv/dense_2/kernelBv/dense_2/kernel/AdamBv/dense_2/kernel/Adam_1*
_output_shapes
:(
?
save/RestoreV2/shape_and_slicesConst*
dtype0*c
valueZBX(B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes
:(
?
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*6
dtypes,
*2(*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::
?
save/AssignAssignbeta1_powersave/RestoreV2*
_output_shapes
: *
use_locking(*
validate_shape(* 
_class
loc:@pi/dense/bias*
T0
?
save/Assign_1Assignbeta1_power_1save/RestoreV2:1*
validate_shape(*
_class
loc:@v/dense/bias*
T0*
use_locking(*
_output_shapes
: 
?
save/Assign_2Assignbeta2_powersave/RestoreV2:2* 
_class
loc:@pi/dense/bias*
use_locking(*
T0*
_output_shapes
: *
validate_shape(
?
save/Assign_3Assignbeta2_power_1save/RestoreV2:3*
_output_shapes
: *
T0*
_class
loc:@v/dense/bias*
use_locking(*
validate_shape(
?
save/Assign_4Assignpi/dense/biassave/RestoreV2:4*
T0* 
_class
loc:@pi/dense/bias*
_output_shapes
:@*
validate_shape(*
use_locking(
?
save/Assign_5Assignpi/dense/bias/Adamsave/RestoreV2:5*
_output_shapes
:@*
use_locking(*
T0*
validate_shape(* 
_class
loc:@pi/dense/bias
?
save/Assign_6Assignpi/dense/bias/Adam_1save/RestoreV2:6*
validate_shape(*
use_locking(*
_output_shapes
:@* 
_class
loc:@pi/dense/bias*
T0
?
save/Assign_7Assignpi/dense/kernelsave/RestoreV2:7*
T0*
_output_shapes

:@*"
_class
loc:@pi/dense/kernel*
validate_shape(*
use_locking(
?
save/Assign_8Assignpi/dense/kernel/Adamsave/RestoreV2:8*"
_class
loc:@pi/dense/kernel*
use_locking(*
_output_shapes

:@*
validate_shape(*
T0
?
save/Assign_9Assignpi/dense/kernel/Adam_1save/RestoreV2:9*
T0*
validate_shape(*
use_locking(*
_output_shapes

:@*"
_class
loc:@pi/dense/kernel
?
save/Assign_10Assignpi/dense_1/biassave/RestoreV2:10*
T0*
_output_shapes
:@*
use_locking(*"
_class
loc:@pi/dense_1/bias*
validate_shape(
?
save/Assign_11Assignpi/dense_1/bias/Adamsave/RestoreV2:11*"
_class
loc:@pi/dense_1/bias*
T0*
_output_shapes
:@*
validate_shape(*
use_locking(
?
save/Assign_12Assignpi/dense_1/bias/Adam_1save/RestoreV2:12*
validate_shape(*
T0*
_output_shapes
:@*
use_locking(*"
_class
loc:@pi/dense_1/bias
?
save/Assign_13Assignpi/dense_1/kernelsave/RestoreV2:13*
validate_shape(*
_output_shapes

:@@*$
_class
loc:@pi/dense_1/kernel*
use_locking(*
T0
?
save/Assign_14Assignpi/dense_1/kernel/Adamsave/RestoreV2:14*
T0*
use_locking(*
validate_shape(*$
_class
loc:@pi/dense_1/kernel*
_output_shapes

:@@
?
save/Assign_15Assignpi/dense_1/kernel/Adam_1save/RestoreV2:15*
use_locking(*
validate_shape(*
T0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes

:@@
?
save/Assign_16Assignpi/dense_2/biassave/RestoreV2:16*
use_locking(*
_output_shapes
:*"
_class
loc:@pi/dense_2/bias*
validate_shape(*
T0
?
save/Assign_17Assignpi/dense_2/bias/Adamsave/RestoreV2:17*
T0*
use_locking(*
_output_shapes
:*"
_class
loc:@pi/dense_2/bias*
validate_shape(
?
save/Assign_18Assignpi/dense_2/bias/Adam_1save/RestoreV2:18*
T0*
use_locking(*
validate_shape(*"
_class
loc:@pi/dense_2/bias*
_output_shapes
:
?
save/Assign_19Assignpi/dense_2/kernelsave/RestoreV2:19*
T0*
_output_shapes

:@*
use_locking(*
validate_shape(*$
_class
loc:@pi/dense_2/kernel
?
save/Assign_20Assignpi/dense_2/kernel/Adamsave/RestoreV2:20*
T0*
_output_shapes

:@*
use_locking(*
validate_shape(*$
_class
loc:@pi/dense_2/kernel
?
save/Assign_21Assignpi/dense_2/kernel/Adam_1save/RestoreV2:21*
validate_shape(*
T0*
use_locking(*
_output_shapes

:@*$
_class
loc:@pi/dense_2/kernel
?
save/Assign_22Assignv/dense/biassave/RestoreV2:22*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
:@*
T0*
use_locking(
?
save/Assign_23Assignv/dense/bias/Adamsave/RestoreV2:23*
use_locking(*
T0*
_output_shapes
:@*
_class
loc:@v/dense/bias*
validate_shape(
?
save/Assign_24Assignv/dense/bias/Adam_1save/RestoreV2:24*
_output_shapes
:@*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(
?
save/Assign_25Assignv/dense/kernelsave/RestoreV2:25*
_output_shapes

:@*
T0*
validate_shape(*!
_class
loc:@v/dense/kernel*
use_locking(
?
save/Assign_26Assignv/dense/kernel/Adamsave/RestoreV2:26*!
_class
loc:@v/dense/kernel*
T0*
validate_shape(*
use_locking(*
_output_shapes

:@
?
save/Assign_27Assignv/dense/kernel/Adam_1save/RestoreV2:27*
_output_shapes

:@*!
_class
loc:@v/dense/kernel*
use_locking(*
validate_shape(*
T0
?
save/Assign_28Assignv/dense_1/biassave/RestoreV2:28*
use_locking(*
_output_shapes
:@*!
_class
loc:@v/dense_1/bias*
T0*
validate_shape(
?
save/Assign_29Assignv/dense_1/bias/Adamsave/RestoreV2:29*!
_class
loc:@v/dense_1/bias*
T0*
validate_shape(*
use_locking(*
_output_shapes
:@
?
save/Assign_30Assignv/dense_1/bias/Adam_1save/RestoreV2:30*
_output_shapes
:@*!
_class
loc:@v/dense_1/bias*
validate_shape(*
use_locking(*
T0
?
save/Assign_31Assignv/dense_1/kernelsave/RestoreV2:31*
use_locking(*
T0*
_output_shapes

:@@*
validate_shape(*#
_class
loc:@v/dense_1/kernel
?
save/Assign_32Assignv/dense_1/kernel/Adamsave/RestoreV2:32*#
_class
loc:@v/dense_1/kernel*
_output_shapes

:@@*
T0*
validate_shape(*
use_locking(
?
save/Assign_33Assignv/dense_1/kernel/Adam_1save/RestoreV2:33*
T0*#
_class
loc:@v/dense_1/kernel*
use_locking(*
_output_shapes

:@@*
validate_shape(
?
save/Assign_34Assignv/dense_2/biassave/RestoreV2:34*
_output_shapes
:*
T0*
use_locking(*!
_class
loc:@v/dense_2/bias*
validate_shape(
?
save/Assign_35Assignv/dense_2/bias/Adamsave/RestoreV2:35*!
_class
loc:@v/dense_2/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
?
save/Assign_36Assignv/dense_2/bias/Adam_1save/RestoreV2:36*!
_class
loc:@v/dense_2/bias*
_output_shapes
:*
validate_shape(*
use_locking(*
T0
?
save/Assign_37Assignv/dense_2/kernelsave/RestoreV2:37*
T0*
validate_shape(*#
_class
loc:@v/dense_2/kernel*
_output_shapes

:@*
use_locking(
?
save/Assign_38Assignv/dense_2/kernel/Adamsave/RestoreV2:38*
T0*
use_locking(*
_output_shapes

:@*
validate_shape(*#
_class
loc:@v/dense_2/kernel
?
save/Assign_39Assignv/dense_2/kernel/Adam_1save/RestoreV2:39*
T0*
validate_shape(*
use_locking(*
_output_shapes

:@*#
_class
loc:@v/dense_2/kernel
?
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_3^save/Assign_30^save/Assign_31^save/Assign_32^save/Assign_33^save/Assign_34^save/Assign_35^save/Assign_36^save/Assign_37^save/Assign_38^save/Assign_39^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
-
save/restore_allNoOp^save/restore_shard "?<
save/Const:0save/Identity:0save/restore_all (5 @F8"
train_op

Adam
Adam_1"?%
	variables?%?%
s
pi/dense/kernel:0pi/dense/kernel/Assignpi/dense/kernel/read:02,pi/dense/kernel/Initializer/random_uniform:08
b
pi/dense/bias:0pi/dense/bias/Assignpi/dense/bias/read:02!pi/dense/bias/Initializer/zeros:08
{
pi/dense_1/kernel:0pi/dense_1/kernel/Assignpi/dense_1/kernel/read:02.pi/dense_1/kernel/Initializer/random_uniform:08
j
pi/dense_1/bias:0pi/dense_1/bias/Assignpi/dense_1/bias/read:02#pi/dense_1/bias/Initializer/zeros:08
{
pi/dense_2/kernel:0pi/dense_2/kernel/Assignpi/dense_2/kernel/read:02.pi/dense_2/kernel/Initializer/random_uniform:08
j
pi/dense_2/bias:0pi/dense_2/bias/Assignpi/dense_2/bias/read:02#pi/dense_2/bias/Initializer/zeros:08
o
v/dense/kernel:0v/dense/kernel/Assignv/dense/kernel/read:02+v/dense/kernel/Initializer/random_uniform:08
^
v/dense/bias:0v/dense/bias/Assignv/dense/bias/read:02 v/dense/bias/Initializer/zeros:08
w
v/dense_1/kernel:0v/dense_1/kernel/Assignv/dense_1/kernel/read:02-v/dense_1/kernel/Initializer/random_uniform:08
f
v/dense_1/bias:0v/dense_1/bias/Assignv/dense_1/bias/read:02"v/dense_1/bias/Initializer/zeros:08
w
v/dense_2/kernel:0v/dense_2/kernel/Assignv/dense_2/kernel/read:02-v/dense_2/kernel/Initializer/random_uniform:08
f
v/dense_2/bias:0v/dense_2/bias/Assignv/dense_2/bias/read:02"v/dense_2/bias/Initializer/zeros:08
T
beta1_power:0beta1_power/Assignbeta1_power/read:02beta1_power/initial_value:0
T
beta2_power:0beta2_power/Assignbeta2_power/read:02beta2_power/initial_value:0
|
pi/dense/kernel/Adam:0pi/dense/kernel/Adam/Assignpi/dense/kernel/Adam/read:02(pi/dense/kernel/Adam/Initializer/zeros:0
?
pi/dense/kernel/Adam_1:0pi/dense/kernel/Adam_1/Assignpi/dense/kernel/Adam_1/read:02*pi/dense/kernel/Adam_1/Initializer/zeros:0
t
pi/dense/bias/Adam:0pi/dense/bias/Adam/Assignpi/dense/bias/Adam/read:02&pi/dense/bias/Adam/Initializer/zeros:0
|
pi/dense/bias/Adam_1:0pi/dense/bias/Adam_1/Assignpi/dense/bias/Adam_1/read:02(pi/dense/bias/Adam_1/Initializer/zeros:0
?
pi/dense_1/kernel/Adam:0pi/dense_1/kernel/Adam/Assignpi/dense_1/kernel/Adam/read:02*pi/dense_1/kernel/Adam/Initializer/zeros:0
?
pi/dense_1/kernel/Adam_1:0pi/dense_1/kernel/Adam_1/Assignpi/dense_1/kernel/Adam_1/read:02,pi/dense_1/kernel/Adam_1/Initializer/zeros:0
|
pi/dense_1/bias/Adam:0pi/dense_1/bias/Adam/Assignpi/dense_1/bias/Adam/read:02(pi/dense_1/bias/Adam/Initializer/zeros:0
?
pi/dense_1/bias/Adam_1:0pi/dense_1/bias/Adam_1/Assignpi/dense_1/bias/Adam_1/read:02*pi/dense_1/bias/Adam_1/Initializer/zeros:0
?
pi/dense_2/kernel/Adam:0pi/dense_2/kernel/Adam/Assignpi/dense_2/kernel/Adam/read:02*pi/dense_2/kernel/Adam/Initializer/zeros:0
?
pi/dense_2/kernel/Adam_1:0pi/dense_2/kernel/Adam_1/Assignpi/dense_2/kernel/Adam_1/read:02,pi/dense_2/kernel/Adam_1/Initializer/zeros:0
|
pi/dense_2/bias/Adam:0pi/dense_2/bias/Adam/Assignpi/dense_2/bias/Adam/read:02(pi/dense_2/bias/Adam/Initializer/zeros:0
?
pi/dense_2/bias/Adam_1:0pi/dense_2/bias/Adam_1/Assignpi/dense_2/bias/Adam_1/read:02*pi/dense_2/bias/Adam_1/Initializer/zeros:0
\
beta1_power_1:0beta1_power_1/Assignbeta1_power_1/read:02beta1_power_1/initial_value:0
\
beta2_power_1:0beta2_power_1/Assignbeta2_power_1/read:02beta2_power_1/initial_value:0
x
v/dense/kernel/Adam:0v/dense/kernel/Adam/Assignv/dense/kernel/Adam/read:02'v/dense/kernel/Adam/Initializer/zeros:0
?
v/dense/kernel/Adam_1:0v/dense/kernel/Adam_1/Assignv/dense/kernel/Adam_1/read:02)v/dense/kernel/Adam_1/Initializer/zeros:0
p
v/dense/bias/Adam:0v/dense/bias/Adam/Assignv/dense/bias/Adam/read:02%v/dense/bias/Adam/Initializer/zeros:0
x
v/dense/bias/Adam_1:0v/dense/bias/Adam_1/Assignv/dense/bias/Adam_1/read:02'v/dense/bias/Adam_1/Initializer/zeros:0
?
v/dense_1/kernel/Adam:0v/dense_1/kernel/Adam/Assignv/dense_1/kernel/Adam/read:02)v/dense_1/kernel/Adam/Initializer/zeros:0
?
v/dense_1/kernel/Adam_1:0v/dense_1/kernel/Adam_1/Assignv/dense_1/kernel/Adam_1/read:02+v/dense_1/kernel/Adam_1/Initializer/zeros:0
x
v/dense_1/bias/Adam:0v/dense_1/bias/Adam/Assignv/dense_1/bias/Adam/read:02'v/dense_1/bias/Adam/Initializer/zeros:0
?
v/dense_1/bias/Adam_1:0v/dense_1/bias/Adam_1/Assignv/dense_1/bias/Adam_1/read:02)v/dense_1/bias/Adam_1/Initializer/zeros:0
?
v/dense_2/kernel/Adam:0v/dense_2/kernel/Adam/Assignv/dense_2/kernel/Adam/read:02)v/dense_2/kernel/Adam/Initializer/zeros:0
?
v/dense_2/kernel/Adam_1:0v/dense_2/kernel/Adam_1/Assignv/dense_2/kernel/Adam_1/read:02+v/dense_2/kernel/Adam_1/Initializer/zeros:0
x
v/dense_2/bias/Adam:0v/dense_2/bias/Adam/Assignv/dense_2/bias/Adam/read:02'v/dense_2/bias/Adam/Initializer/zeros:0
?
v/dense_2/bias/Adam_1:0v/dense_2/bias/Adam_1/Assignv/dense_2/bias/Adam_1/read:02)v/dense_2/bias/Adam_1/Initializer/zeros:0"?

trainable_variables?
?

s
pi/dense/kernel:0pi/dense/kernel/Assignpi/dense/kernel/read:02,pi/dense/kernel/Initializer/random_uniform:08
b
pi/dense/bias:0pi/dense/bias/Assignpi/dense/bias/read:02!pi/dense/bias/Initializer/zeros:08
{
pi/dense_1/kernel:0pi/dense_1/kernel/Assignpi/dense_1/kernel/read:02.pi/dense_1/kernel/Initializer/random_uniform:08
j
pi/dense_1/bias:0pi/dense_1/bias/Assignpi/dense_1/bias/read:02#pi/dense_1/bias/Initializer/zeros:08
{
pi/dense_2/kernel:0pi/dense_2/kernel/Assignpi/dense_2/kernel/read:02.pi/dense_2/kernel/Initializer/random_uniform:08
j
pi/dense_2/bias:0pi/dense_2/bias/Assignpi/dense_2/bias/read:02#pi/dense_2/bias/Initializer/zeros:08
o
v/dense/kernel:0v/dense/kernel/Assignv/dense/kernel/read:02+v/dense/kernel/Initializer/random_uniform:08
^
v/dense/bias:0v/dense/bias/Assignv/dense/bias/read:02 v/dense/bias/Initializer/zeros:08
w
v/dense_1/kernel:0v/dense_1/kernel/Assignv/dense_1/kernel/read:02-v/dense_1/kernel/Initializer/random_uniform:08
f
v/dense_1/bias:0v/dense_1/bias/Assignv/dense_1/bias/read:02"v/dense_1/bias/Initializer/zeros:08
w
v/dense_2/kernel:0v/dense_2/kernel/Assignv/dense_2/kernel/read:02-v/dense_2/kernel/Initializer/random_uniform:08
f
v/dense_2/bias:0v/dense_2/bias/Assignv/dense_2/bias/read:02"v/dense_2/bias/Initializer/zeros:08*?
serving_default?
)
x$
Placeholder:0?????????#
v
v/Squeeze:0?????????%
pi
pi/Squeeze:0	?????????tensorflow/serving/predict