��
��
B
AssignVariableOp
resource
value"dtype"
dtypetype�
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
�
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

�
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%��8"&
exponential_avg_factorfloat%  �?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
\
	LeakyRelu
features"T
activations"T"
alphafloat%��L>"
Ttype0:
2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
�
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�

NoOp
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
@
ReadVariableOp
resource
value"dtype"
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
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
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring �
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.5.32v2.5.2-194-g959e9b2a0c08��
�
conv2d_60/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_60/kernel
}
$conv2d_60/kernel/Read/ReadVariableOpReadVariableOpconv2d_60/kernel*&
_output_shapes
: *
dtype0
t
conv2d_60/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_60/bias
m
"conv2d_60/bias/Read/ReadVariableOpReadVariableOpconv2d_60/bias*
_output_shapes
: *
dtype0
�
batch_normalization_60/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_namebatch_normalization_60/gamma
�
0batch_normalization_60/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_60/gamma*
_output_shapes
: *
dtype0
�
batch_normalization_60/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namebatch_normalization_60/beta
�
/batch_normalization_60/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_60/beta*
_output_shapes
: *
dtype0
�
"batch_normalization_60/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"batch_normalization_60/moving_mean
�
6batch_normalization_60/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_60/moving_mean*
_output_shapes
: *
dtype0
�
&batch_normalization_60/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *7
shared_name(&batch_normalization_60/moving_variance
�
:batch_normalization_60/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_60/moving_variance*
_output_shapes
: *
dtype0
�
conv2d_61/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_61/kernel
}
$conv2d_61/kernel/Read/ReadVariableOpReadVariableOpconv2d_61/kernel*&
_output_shapes
: *
dtype0
t
conv2d_61/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_61/bias
m
"conv2d_61/bias/Read/ReadVariableOpReadVariableOpconv2d_61/bias*
_output_shapes
:*
dtype0
�
batch_normalization_61/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_61/gamma
�
0batch_normalization_61/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_61/gamma*
_output_shapes
:*
dtype0
�
batch_normalization_61/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_61/beta
�
/batch_normalization_61/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_61/beta*
_output_shapes
:*
dtype0
�
"batch_normalization_61/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"batch_normalization_61/moving_mean
�
6batch_normalization_61/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_61/moving_mean*
_output_shapes
:*
dtype0
�
&batch_normalization_61/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&batch_normalization_61/moving_variance
�
:batch_normalization_61/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_61/moving_variance*
_output_shapes
:*
dtype0
�
conv2d_62/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_62/kernel
}
$conv2d_62/kernel/Read/ReadVariableOpReadVariableOpconv2d_62/kernel*&
_output_shapes
:*
dtype0
t
conv2d_62/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_62/bias
m
"conv2d_62/bias/Read/ReadVariableOpReadVariableOpconv2d_62/bias*
_output_shapes
:*
dtype0
�
batch_normalization_62/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_62/gamma
�
0batch_normalization_62/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_62/gamma*
_output_shapes
:*
dtype0
�
batch_normalization_62/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_62/beta
�
/batch_normalization_62/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_62/beta*
_output_shapes
:*
dtype0
�
"batch_normalization_62/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"batch_normalization_62/moving_mean
�
6batch_normalization_62/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_62/moving_mean*
_output_shapes
:*
dtype0
�
&batch_normalization_62/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&batch_normalization_62/moving_variance
�
:batch_normalization_62/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_62/moving_variance*
_output_shapes
:*
dtype0
�
conv2d_63/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_63/kernel
}
$conv2d_63/kernel/Read/ReadVariableOpReadVariableOpconv2d_63/kernel*&
_output_shapes
:*
dtype0
t
conv2d_63/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_63/bias
m
"conv2d_63/bias/Read/ReadVariableOpReadVariableOpconv2d_63/bias*
_output_shapes
:*
dtype0
�
batch_normalization_63/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_63/gamma
�
0batch_normalization_63/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_63/gamma*
_output_shapes
:*
dtype0
�
batch_normalization_63/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_63/beta
�
/batch_normalization_63/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_63/beta*
_output_shapes
:*
dtype0
�
"batch_normalization_63/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"batch_normalization_63/moving_mean
�
6batch_normalization_63/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_63/moving_mean*
_output_shapes
:*
dtype0
�
&batch_normalization_63/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&batch_normalization_63/moving_variance
�
:batch_normalization_63/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_63/moving_variance*
_output_shapes
:*
dtype0
�
conv2d_64/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_64/kernel
}
$conv2d_64/kernel/Read/ReadVariableOpReadVariableOpconv2d_64/kernel*&
_output_shapes
:*
dtype0
t
conv2d_64/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_64/bias
m
"conv2d_64/bias/Read/ReadVariableOpReadVariableOpconv2d_64/bias*
_output_shapes
:*
dtype0
�
batch_normalization_64/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_64/gamma
�
0batch_normalization_64/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_64/gamma*
_output_shapes
:*
dtype0
�
batch_normalization_64/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_64/beta
�
/batch_normalization_64/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_64/beta*
_output_shapes
:*
dtype0
�
"batch_normalization_64/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"batch_normalization_64/moving_mean
�
6batch_normalization_64/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_64/moving_mean*
_output_shapes
:*
dtype0
�
&batch_normalization_64/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&batch_normalization_64/moving_variance
�
:batch_normalization_64/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_64/moving_variance*
_output_shapes
:*
dtype0
�
conv2d_65/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_65/kernel
}
$conv2d_65/kernel/Read/ReadVariableOpReadVariableOpconv2d_65/kernel*&
_output_shapes
:*
dtype0
t
conv2d_65/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_65/bias
m
"conv2d_65/bias/Read/ReadVariableOpReadVariableOpconv2d_65/bias*
_output_shapes
:*
dtype0
�
batch_normalization_65/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_65/gamma
�
0batch_normalization_65/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_65/gamma*
_output_shapes
:*
dtype0
�
batch_normalization_65/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_65/beta
�
/batch_normalization_65/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_65/beta*
_output_shapes
:*
dtype0
�
"batch_normalization_65/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"batch_normalization_65/moving_mean
�
6batch_normalization_65/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_65/moving_mean*
_output_shapes
:*
dtype0
�
&batch_normalization_65/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&batch_normalization_65/moving_variance
�
:batch_normalization_65/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_65/moving_variance*
_output_shapes
:*
dtype0
{
dense_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�* 
shared_namedense_10/kernel
t
#dense_10/kernel/Read/ReadVariableOpReadVariableOpdense_10/kernel*
_output_shapes
:	�*
dtype0
r
dense_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_10/bias
k
!dense_10/bias/Read/ReadVariableOpReadVariableOpdense_10/bias*
_output_shapes
:*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
b
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0

NoOpNoOp
�r
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�q
value�qB�q B�q
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

layer-9
layer_with_weights-6
layer-10
layer_with_weights-7
layer-11
layer-12
layer_with_weights-8
layer-13
layer_with_weights-9
layer-14
layer-15
layer_with_weights-10
layer-16
layer_with_weights-11
layer-17
layer-18
layer-19
layer_with_weights-12
layer-20
	optimizer

signatures
#_self_saveable_object_factories
	variables
regularization_losses
trainable_variables
	keras_api
�

kernel
bias
#_self_saveable_object_factories
 	variables
!regularization_losses
"trainable_variables
#	keras_api
�
$axis
	%gamma
&beta
'moving_mean
(moving_variance
#)_self_saveable_object_factories
*	variables
+regularization_losses
,trainable_variables
-	keras_api
w
#._self_saveable_object_factories
/	variables
0regularization_losses
1trainable_variables
2	keras_api
w
#3_self_saveable_object_factories
4	variables
5regularization_losses
6trainable_variables
7	keras_api
�

8kernel
9bias
#:_self_saveable_object_factories
;	variables
<regularization_losses
=trainable_variables
>	keras_api
�
?axis
	@gamma
Abeta
Bmoving_mean
Cmoving_variance
#D_self_saveable_object_factories
E	variables
Fregularization_losses
Gtrainable_variables
H	keras_api
w
#I_self_saveable_object_factories
J	variables
Kregularization_losses
Ltrainable_variables
M	keras_api
�

Nkernel
Obias
#P_self_saveable_object_factories
Q	variables
Rregularization_losses
Strainable_variables
T	keras_api
�
Uaxis
	Vgamma
Wbeta
Xmoving_mean
Ymoving_variance
#Z_self_saveable_object_factories
[	variables
\regularization_losses
]trainable_variables
^	keras_api
w
#__self_saveable_object_factories
`	variables
aregularization_losses
btrainable_variables
c	keras_api
�

dkernel
ebias
#f_self_saveable_object_factories
g	variables
hregularization_losses
itrainable_variables
j	keras_api
�
kaxis
	lgamma
mbeta
nmoving_mean
omoving_variance
#p_self_saveable_object_factories
q	variables
rregularization_losses
strainable_variables
t	keras_api
w
#u_self_saveable_object_factories
v	variables
wregularization_losses
xtrainable_variables
y	keras_api
�

zkernel
{bias
#|_self_saveable_object_factories
}	variables
~regularization_losses
trainable_variables
�	keras_api
�
	�axis

�gamma
	�beta
�moving_mean
�moving_variance
$�_self_saveable_object_factories
�	variables
�regularization_losses
�trainable_variables
�	keras_api
|
$�_self_saveable_object_factories
�	variables
�regularization_losses
�trainable_variables
�	keras_api
�
�kernel
	�bias
$�_self_saveable_object_factories
�	variables
�regularization_losses
�trainable_variables
�	keras_api
�
	�axis

�gamma
	�beta
�moving_mean
�moving_variance
$�_self_saveable_object_factories
�	variables
�regularization_losses
�trainable_variables
�	keras_api
|
$�_self_saveable_object_factories
�	variables
�regularization_losses
�trainable_variables
�	keras_api
|
$�_self_saveable_object_factories
�	variables
�regularization_losses
�trainable_variables
�	keras_api
�
�kernel
	�bias
$�_self_saveable_object_factories
�	variables
�regularization_losses
�trainable_variables
�	keras_api
 
 
 
�
0
1
%2
&3
'4
(5
86
97
@8
A9
B10
C11
N12
O13
V14
W15
X16
Y17
d18
e19
l20
m21
n22
o23
z24
{25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37
 
�
0
1
%2
&3
84
95
@6
A7
N8
O9
V10
W11
d12
e13
l14
m15
z16
{17
�18
�19
�20
�21
�22
�23
�24
�25
�
�metrics
�non_trainable_variables
	variables
regularization_losses
�layers
 �layer_regularization_losses
trainable_variables
�layer_metrics
\Z
VARIABLE_VALUEconv2d_60/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_60/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1
 

0
1
�
�metrics
�non_trainable_variables
 	variables
!regularization_losses
�layers
 �layer_regularization_losses
"trainable_variables
�layer_metrics
 
ge
VARIABLE_VALUEbatch_normalization_60/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_60/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_60/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_60/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

%0
&1
'2
(3
 

%0
&1
�
�metrics
�non_trainable_variables
*	variables
+regularization_losses
�layers
 �layer_regularization_losses
,trainable_variables
�layer_metrics
 
 
 
 
�
�metrics
�non_trainable_variables
/	variables
0regularization_losses
�layers
 �layer_regularization_losses
1trainable_variables
�layer_metrics
 
 
 
 
�
�metrics
�non_trainable_variables
4	variables
5regularization_losses
�layers
 �layer_regularization_losses
6trainable_variables
�layer_metrics
\Z
VARIABLE_VALUEconv2d_61/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_61/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

80
91
 

80
91
�
�metrics
�non_trainable_variables
;	variables
<regularization_losses
�layers
 �layer_regularization_losses
=trainable_variables
�layer_metrics
 
ge
VARIABLE_VALUEbatch_normalization_61/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_61/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_61/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_61/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

@0
A1
B2
C3
 

@0
A1
�
�metrics
�non_trainable_variables
E	variables
Fregularization_losses
�layers
 �layer_regularization_losses
Gtrainable_variables
�layer_metrics
 
 
 
 
�
�metrics
�non_trainable_variables
J	variables
Kregularization_losses
�layers
 �layer_regularization_losses
Ltrainable_variables
�layer_metrics
\Z
VARIABLE_VALUEconv2d_62/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_62/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

N0
O1
 

N0
O1
�
�metrics
�non_trainable_variables
Q	variables
Rregularization_losses
�layers
 �layer_regularization_losses
Strainable_variables
�layer_metrics
 
ge
VARIABLE_VALUEbatch_normalization_62/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_62/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_62/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_62/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

V0
W1
X2
Y3
 

V0
W1
�
�metrics
�non_trainable_variables
[	variables
\regularization_losses
�layers
 �layer_regularization_losses
]trainable_variables
�layer_metrics
 
 
 
 
�
�metrics
�non_trainable_variables
`	variables
aregularization_losses
�layers
 �layer_regularization_losses
btrainable_variables
�layer_metrics
\Z
VARIABLE_VALUEconv2d_63/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_63/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
 

d0
e1
 

d0
e1
�
�metrics
�non_trainable_variables
g	variables
hregularization_losses
�layers
 �layer_regularization_losses
itrainable_variables
�layer_metrics
 
ge
VARIABLE_VALUEbatch_normalization_63/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_63/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_63/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_63/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

l0
m1
n2
o3
 

l0
m1
�
�metrics
�non_trainable_variables
q	variables
rregularization_losses
�layers
 �layer_regularization_losses
strainable_variables
�layer_metrics
 
 
 
 
�
�metrics
�non_trainable_variables
v	variables
wregularization_losses
�layers
 �layer_regularization_losses
xtrainable_variables
�layer_metrics
\Z
VARIABLE_VALUEconv2d_64/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_64/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE
 

z0
{1
 

z0
{1
�
�metrics
�non_trainable_variables
}	variables
~regularization_losses
�layers
 �layer_regularization_losses
trainable_variables
�layer_metrics
 
ge
VARIABLE_VALUEbatch_normalization_64/gamma5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_64/beta4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_64/moving_mean;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_64/moving_variance?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 
 
�0
�1
�2
�3
 

�0
�1
�
�metrics
�non_trainable_variables
�	variables
�regularization_losses
�layers
 �layer_regularization_losses
�trainable_variables
�layer_metrics
 
 
 
 
�
�metrics
�non_trainable_variables
�	variables
�regularization_losses
�layers
 �layer_regularization_losses
�trainable_variables
�layer_metrics
][
VARIABLE_VALUEconv2d_65/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_65/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE
 

�0
�1
 

�0
�1
�
�metrics
�non_trainable_variables
�	variables
�regularization_losses
�layers
 �layer_regularization_losses
�trainable_variables
�layer_metrics
 
hf
VARIABLE_VALUEbatch_normalization_65/gamma6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEbatch_normalization_65/beta5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE"batch_normalization_65/moving_mean<layer_with_weights-11/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE&batch_normalization_65/moving_variance@layer_with_weights-11/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 
 
�0
�1
�2
�3
 

�0
�1
�
�metrics
�non_trainable_variables
�	variables
�regularization_losses
�layers
 �layer_regularization_losses
�trainable_variables
�layer_metrics
 
 
 
 
�
�metrics
�non_trainable_variables
�	variables
�regularization_losses
�layers
 �layer_regularization_losses
�trainable_variables
�layer_metrics
 
 
 
 
�
�metrics
�non_trainable_variables
�	variables
�regularization_losses
�layers
 �layer_regularization_losses
�trainable_variables
�layer_metrics
\Z
VARIABLE_VALUEdense_10/kernel7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_10/bias5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUE
 

�0
�1
 

�0
�1
�
�metrics
�non_trainable_variables
�	variables
�regularization_losses
�layers
 �layer_regularization_losses
�trainable_variables
�layer_metrics

�0
�1
�2
Z
'0
(1
B2
C3
X4
Y5
n6
o7
�8
�9
�10
�11
�
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
 
 
 
 
 
 
 
 

'0
(1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

B0
C1
 
 
 
 
 
 
 
 
 
 
 
 
 
 

X0
Y1
 
 
 
 
 
 
 
 
 
 
 
 
 
 

n0
o1
 
 
 
 
 
 
 
 
 
 
 
 
 
 

�0
�1
 
 
 
 
 
 
 
 
 
 
 
 
 
 

�0
�1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

�total

�count
�	variables
�	keras_api
I

�total

�count
�
_fn_kwargs
�	variables
�	keras_api
I

�total

�count
�
_fn_kwargs
�	variables
�	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

�0
�1

�	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

�0
�1

�	variables
QO
VARIABLE_VALUEtotal_24keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_24keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE
 

�0
�1

�	variables
�
serving_default_conv2d_60_inputPlaceholder*/
_output_shapes
:���������(*
dtype0*$
shape:���������(
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_60_inputconv2d_60/kernelconv2d_60/biasbatch_normalization_60/gammabatch_normalization_60/beta"batch_normalization_60/moving_mean&batch_normalization_60/moving_varianceconv2d_61/kernelconv2d_61/biasbatch_normalization_61/gammabatch_normalization_61/beta"batch_normalization_61/moving_mean&batch_normalization_61/moving_varianceconv2d_62/kernelconv2d_62/biasbatch_normalization_62/gammabatch_normalization_62/beta"batch_normalization_62/moving_mean&batch_normalization_62/moving_varianceconv2d_63/kernelconv2d_63/biasbatch_normalization_63/gammabatch_normalization_63/beta"batch_normalization_63/moving_mean&batch_normalization_63/moving_varianceconv2d_64/kernelconv2d_64/biasbatch_normalization_64/gammabatch_normalization_64/beta"batch_normalization_64/moving_mean&batch_normalization_64/moving_varianceconv2d_65/kernelconv2d_65/biasbatch_normalization_65/gammabatch_normalization_65/beta"batch_normalization_65/moving_mean&batch_normalization_65/moving_variancedense_10/kerneldense_10/bias*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*H
_read_only_resource_inputs*
(&	
 !"#$%&*-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference_signature_wrapper_38482
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_60/kernel/Read/ReadVariableOp"conv2d_60/bias/Read/ReadVariableOp0batch_normalization_60/gamma/Read/ReadVariableOp/batch_normalization_60/beta/Read/ReadVariableOp6batch_normalization_60/moving_mean/Read/ReadVariableOp:batch_normalization_60/moving_variance/Read/ReadVariableOp$conv2d_61/kernel/Read/ReadVariableOp"conv2d_61/bias/Read/ReadVariableOp0batch_normalization_61/gamma/Read/ReadVariableOp/batch_normalization_61/beta/Read/ReadVariableOp6batch_normalization_61/moving_mean/Read/ReadVariableOp:batch_normalization_61/moving_variance/Read/ReadVariableOp$conv2d_62/kernel/Read/ReadVariableOp"conv2d_62/bias/Read/ReadVariableOp0batch_normalization_62/gamma/Read/ReadVariableOp/batch_normalization_62/beta/Read/ReadVariableOp6batch_normalization_62/moving_mean/Read/ReadVariableOp:batch_normalization_62/moving_variance/Read/ReadVariableOp$conv2d_63/kernel/Read/ReadVariableOp"conv2d_63/bias/Read/ReadVariableOp0batch_normalization_63/gamma/Read/ReadVariableOp/batch_normalization_63/beta/Read/ReadVariableOp6batch_normalization_63/moving_mean/Read/ReadVariableOp:batch_normalization_63/moving_variance/Read/ReadVariableOp$conv2d_64/kernel/Read/ReadVariableOp"conv2d_64/bias/Read/ReadVariableOp0batch_normalization_64/gamma/Read/ReadVariableOp/batch_normalization_64/beta/Read/ReadVariableOp6batch_normalization_64/moving_mean/Read/ReadVariableOp:batch_normalization_64/moving_variance/Read/ReadVariableOp$conv2d_65/kernel/Read/ReadVariableOp"conv2d_65/bias/Read/ReadVariableOp0batch_normalization_65/gamma/Read/ReadVariableOp/batch_normalization_65/beta/Read/ReadVariableOp6batch_normalization_65/moving_mean/Read/ReadVariableOp:batch_normalization_65/moving_variance/Read/ReadVariableOp#dense_10/kernel/Read/ReadVariableOp!dense_10/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOpConst*9
Tin2
02.*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *'
f"R 
__inference__traced_save_40046
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_60/kernelconv2d_60/biasbatch_normalization_60/gammabatch_normalization_60/beta"batch_normalization_60/moving_mean&batch_normalization_60/moving_varianceconv2d_61/kernelconv2d_61/biasbatch_normalization_61/gammabatch_normalization_61/beta"batch_normalization_61/moving_mean&batch_normalization_61/moving_varianceconv2d_62/kernelconv2d_62/biasbatch_normalization_62/gammabatch_normalization_62/beta"batch_normalization_62/moving_mean&batch_normalization_62/moving_varianceconv2d_63/kernelconv2d_63/biasbatch_normalization_63/gammabatch_normalization_63/beta"batch_normalization_63/moving_mean&batch_normalization_63/moving_varianceconv2d_64/kernelconv2d_64/biasbatch_normalization_64/gammabatch_normalization_64/beta"batch_normalization_64/moving_mean&batch_normalization_64/moving_varianceconv2d_65/kernelconv2d_65/biasbatch_normalization_65/gammabatch_normalization_65/beta"batch_normalization_65/moving_mean&batch_normalization_65/moving_variancedense_10/kerneldense_10/biastotalcounttotal_1count_1total_2count_2*8
Tin1
/2-*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__traced_restore_40188��
�[
�
__inference__traced_save_40046
file_prefix/
+savev2_conv2d_60_kernel_read_readvariableop-
)savev2_conv2d_60_bias_read_readvariableop;
7savev2_batch_normalization_60_gamma_read_readvariableop:
6savev2_batch_normalization_60_beta_read_readvariableopA
=savev2_batch_normalization_60_moving_mean_read_readvariableopE
Asavev2_batch_normalization_60_moving_variance_read_readvariableop/
+savev2_conv2d_61_kernel_read_readvariableop-
)savev2_conv2d_61_bias_read_readvariableop;
7savev2_batch_normalization_61_gamma_read_readvariableop:
6savev2_batch_normalization_61_beta_read_readvariableopA
=savev2_batch_normalization_61_moving_mean_read_readvariableopE
Asavev2_batch_normalization_61_moving_variance_read_readvariableop/
+savev2_conv2d_62_kernel_read_readvariableop-
)savev2_conv2d_62_bias_read_readvariableop;
7savev2_batch_normalization_62_gamma_read_readvariableop:
6savev2_batch_normalization_62_beta_read_readvariableopA
=savev2_batch_normalization_62_moving_mean_read_readvariableopE
Asavev2_batch_normalization_62_moving_variance_read_readvariableop/
+savev2_conv2d_63_kernel_read_readvariableop-
)savev2_conv2d_63_bias_read_readvariableop;
7savev2_batch_normalization_63_gamma_read_readvariableop:
6savev2_batch_normalization_63_beta_read_readvariableopA
=savev2_batch_normalization_63_moving_mean_read_readvariableopE
Asavev2_batch_normalization_63_moving_variance_read_readvariableop/
+savev2_conv2d_64_kernel_read_readvariableop-
)savev2_conv2d_64_bias_read_readvariableop;
7savev2_batch_normalization_64_gamma_read_readvariableop:
6savev2_batch_normalization_64_beta_read_readvariableopA
=savev2_batch_normalization_64_moving_mean_read_readvariableopE
Asavev2_batch_normalization_64_moving_variance_read_readvariableop/
+savev2_conv2d_65_kernel_read_readvariableop-
)savev2_conv2d_65_bias_read_readvariableop;
7savev2_batch_normalization_65_gamma_read_readvariableop:
6savev2_batch_normalization_65_beta_read_readvariableopA
=savev2_batch_normalization_65_moving_mean_read_readvariableopE
Asavev2_batch_normalization_65_moving_variance_read_readvariableop.
*savev2_dense_10_kernel_read_readvariableop,
(savev2_dense_10_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableop
savev2_const

identity_1��MergeV2Checkpoints�
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard�
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:-*
dtype0*�
value�B�-B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-11/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-11/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:-*
dtype0*m
valuedBb-B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices�
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_60_kernel_read_readvariableop)savev2_conv2d_60_bias_read_readvariableop7savev2_batch_normalization_60_gamma_read_readvariableop6savev2_batch_normalization_60_beta_read_readvariableop=savev2_batch_normalization_60_moving_mean_read_readvariableopAsavev2_batch_normalization_60_moving_variance_read_readvariableop+savev2_conv2d_61_kernel_read_readvariableop)savev2_conv2d_61_bias_read_readvariableop7savev2_batch_normalization_61_gamma_read_readvariableop6savev2_batch_normalization_61_beta_read_readvariableop=savev2_batch_normalization_61_moving_mean_read_readvariableopAsavev2_batch_normalization_61_moving_variance_read_readvariableop+savev2_conv2d_62_kernel_read_readvariableop)savev2_conv2d_62_bias_read_readvariableop7savev2_batch_normalization_62_gamma_read_readvariableop6savev2_batch_normalization_62_beta_read_readvariableop=savev2_batch_normalization_62_moving_mean_read_readvariableopAsavev2_batch_normalization_62_moving_variance_read_readvariableop+savev2_conv2d_63_kernel_read_readvariableop)savev2_conv2d_63_bias_read_readvariableop7savev2_batch_normalization_63_gamma_read_readvariableop6savev2_batch_normalization_63_beta_read_readvariableop=savev2_batch_normalization_63_moving_mean_read_readvariableopAsavev2_batch_normalization_63_moving_variance_read_readvariableop+savev2_conv2d_64_kernel_read_readvariableop)savev2_conv2d_64_bias_read_readvariableop7savev2_batch_normalization_64_gamma_read_readvariableop6savev2_batch_normalization_64_beta_read_readvariableop=savev2_batch_normalization_64_moving_mean_read_readvariableopAsavev2_batch_normalization_64_moving_variance_read_readvariableop+savev2_conv2d_65_kernel_read_readvariableop)savev2_conv2d_65_bias_read_readvariableop7savev2_batch_normalization_65_gamma_read_readvariableop6savev2_batch_normalization_65_beta_read_readvariableop=savev2_batch_normalization_65_moving_mean_read_readvariableopAsavev2_batch_normalization_65_moving_variance_read_readvariableop*savev2_dense_10_kernel_read_readvariableop(savev2_dense_10_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *;
dtypes1
/2-2
SaveV2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*�
_input_shapes�
�: : : : : : : : ::::::::::::::::::::::::::::::	�:: : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
:: 	

_output_shapes
:: 


_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
::  

_output_shapes
:: !

_output_shapes
:: "

_output_shapes
:: #

_output_shapes
:: $

_output_shapes
::%%!

_output_shapes
:	�: &

_output_shapes
::'

_output_shapes
: :(

_output_shapes
: :)

_output_shapes
: :*

_output_shapes
: :+

_output_shapes
: :,

_output_shapes
: :-

_output_shapes
: 
�
�
Q__inference_batch_normalization_64_layer_call_and_return_conditional_losses_39590

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�	
-__inference_sequential_10_layer_call_fn_37477
conv2d_60_input!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: 
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:$

unknown_11:

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:$

unknown_17:

unknown_18:

unknown_19:

unknown_20:

unknown_21:

unknown_22:$

unknown_23:

unknown_24:

unknown_25:

unknown_26:

unknown_27:

unknown_28:$

unknown_29:

unknown_30:

unknown_31:

unknown_32:

unknown_33:

unknown_34:

unknown_35:	�

unknown_36:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv2d_60_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*H
_read_only_resource_inputs*
(&	
 !"#$%&*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_10_layer_call_and_return_conditional_losses_373982
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*z
_input_shapesi
g:���������(: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:���������(
)
_user_specified_nameconv2d_60_input
�
�
6__inference_batch_normalization_60_layer_call_fn_39080

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������( *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_60_layer_call_and_return_conditional_losses_378322
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:���������( 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������( : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������( 
 
_user_specified_nameinputs
�
�
6__inference_batch_normalization_60_layer_call_fn_39054

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+��������������������������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_60_layer_call_and_return_conditional_losses_363562
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+��������������������������� 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�
_
C__inference_re_lu_51_layer_call_and_return_conditional_losses_39239

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:���������2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
D__inference_conv2d_64_layer_call_and_return_conditional_losses_39563

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
_
C__inference_re_lu_54_layer_call_and_return_conditional_losses_39855

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:���������2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_64_layer_call_and_return_conditional_losses_37304

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������:::::*
epsilon%o�:*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
6__inference_batch_normalization_60_layer_call_fn_39067

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������( *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_60_layer_call_and_return_conditional_losses_370992
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:���������( 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������( : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������( 
 
_user_specified_nameinputs
�

�
C__inference_dense_10_layer_call_and_return_conditional_losses_37391

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:���������2	
Sigmoid�
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
6__inference_batch_normalization_64_layer_call_fn_39657

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_64_layer_call_and_return_conditional_losses_368282
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
)__inference_conv2d_60_layer_call_fn_38956

inputs!
unknown: 
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������( *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_60_layer_call_and_return_conditional_losses_370762
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:���������( 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������(: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������(
 
_user_specified_nameinputs
�
�	
-__inference_sequential_10_layer_call_fn_38197
conv2d_60_input!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: 
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:$

unknown_11:

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:$

unknown_17:

unknown_18:

unknown_19:

unknown_20:

unknown_21:

unknown_22:$

unknown_23:

unknown_24:

unknown_25:

unknown_26:

unknown_27:

unknown_28:$

unknown_29:

unknown_30:

unknown_31:

unknown_32:

unknown_33:

unknown_34:

unknown_35:	�

unknown_36:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv2d_60_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*<
_read_only_resource_inputs
	
 !"%&*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_10_layer_call_and_return_conditional_losses_380372
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*z
_input_shapesi
g:���������(: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:���������(
)
_user_specified_nameconv2d_60_input
�
�
Q__inference_batch_normalization_61_layer_call_and_return_conditional_losses_39182

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_64_layer_call_and_return_conditional_losses_36872

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
6__inference_batch_normalization_63_layer_call_fn_39542

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_63_layer_call_and_return_conditional_losses_376522
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_63_layer_call_and_return_conditional_losses_37652

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_62_layer_call_and_return_conditional_losses_39318

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������:::::*
epsilon%o�:*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
D__inference_conv2d_64_layer_call_and_return_conditional_losses_37281

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_63_layer_call_and_return_conditional_losses_36702

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_64_layer_call_and_return_conditional_losses_39626

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������:::::*
epsilon%o�:*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_60_layer_call_and_return_conditional_losses_36312

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+��������������������������� : : : : :*
epsilon%o�:*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+��������������������������� 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�m
�
H__inference_sequential_10_layer_call_and_return_conditional_losses_38037

inputs)
conv2d_60_37939: 
conv2d_60_37941: *
batch_normalization_60_37944: *
batch_normalization_60_37946: *
batch_normalization_60_37948: *
batch_normalization_60_37950: )
conv2d_61_37955: 
conv2d_61_37957:*
batch_normalization_61_37960:*
batch_normalization_61_37962:*
batch_normalization_61_37964:*
batch_normalization_61_37966:)
conv2d_62_37970:
conv2d_62_37972:*
batch_normalization_62_37975:*
batch_normalization_62_37977:*
batch_normalization_62_37979:*
batch_normalization_62_37981:)
conv2d_63_37985:
conv2d_63_37987:*
batch_normalization_63_37990:*
batch_normalization_63_37992:*
batch_normalization_63_37994:*
batch_normalization_63_37996:)
conv2d_64_38000:
conv2d_64_38002:*
batch_normalization_64_38005:*
batch_normalization_64_38007:*
batch_normalization_64_38009:*
batch_normalization_64_38011:)
conv2d_65_38015:
conv2d_65_38017:*
batch_normalization_65_38020:*
batch_normalization_65_38022:*
batch_normalization_65_38024:*
batch_normalization_65_38026:!
dense_10_38031:	�
dense_10_38033:
identity��.batch_normalization_60/StatefulPartitionedCall�.batch_normalization_61/StatefulPartitionedCall�.batch_normalization_62/StatefulPartitionedCall�.batch_normalization_63/StatefulPartitionedCall�.batch_normalization_64/StatefulPartitionedCall�.batch_normalization_65/StatefulPartitionedCall�!conv2d_60/StatefulPartitionedCall�!conv2d_61/StatefulPartitionedCall�!conv2d_62/StatefulPartitionedCall�!conv2d_63/StatefulPartitionedCall�!conv2d_64/StatefulPartitionedCall�!conv2d_65/StatefulPartitionedCall� dense_10/StatefulPartitionedCall�
!conv2d_60/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_60_37939conv2d_60_37941*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������( *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_60_layer_call_and_return_conditional_losses_370762#
!conv2d_60/StatefulPartitionedCall�
.batch_normalization_60/StatefulPartitionedCallStatefulPartitionedCall*conv2d_60/StatefulPartitionedCall:output:0batch_normalization_60_37944batch_normalization_60_37946batch_normalization_60_37948batch_normalization_60_37950*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������( *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_60_layer_call_and_return_conditional_losses_3783220
.batch_normalization_60/StatefulPartitionedCall�
re_lu_50/PartitionedCallPartitionedCall7batch_normalization_60/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������( * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_re_lu_50_layer_call_and_return_conditional_losses_371142
re_lu_50/PartitionedCall�
 max_pooling2d_10/PartitionedCallPartitionedCall!re_lu_50/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_364222"
 max_pooling2d_10/PartitionedCall�
!conv2d_61/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_10/PartitionedCall:output:0conv2d_61_37955conv2d_61_37957*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_61_layer_call_and_return_conditional_losses_371282#
!conv2d_61/StatefulPartitionedCall�
.batch_normalization_61/StatefulPartitionedCallStatefulPartitionedCall*conv2d_61/StatefulPartitionedCall:output:0batch_normalization_61_37960batch_normalization_61_37962batch_normalization_61_37964batch_normalization_61_37966*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_61_layer_call_and_return_conditional_losses_3777220
.batch_normalization_61/StatefulPartitionedCall�
re_lu_51/PartitionedCallPartitionedCall7batch_normalization_61/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_re_lu_51_layer_call_and_return_conditional_losses_371662
re_lu_51/PartitionedCall�
!conv2d_62/StatefulPartitionedCallStatefulPartitionedCall!re_lu_51/PartitionedCall:output:0conv2d_62_37970conv2d_62_37972*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_62_layer_call_and_return_conditional_losses_371792#
!conv2d_62/StatefulPartitionedCall�
.batch_normalization_62/StatefulPartitionedCallStatefulPartitionedCall*conv2d_62/StatefulPartitionedCall:output:0batch_normalization_62_37975batch_normalization_62_37977batch_normalization_62_37979batch_normalization_62_37981*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_62_layer_call_and_return_conditional_losses_3771220
.batch_normalization_62/StatefulPartitionedCall�
re_lu_52/PartitionedCallPartitionedCall7batch_normalization_62/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_re_lu_52_layer_call_and_return_conditional_losses_372172
re_lu_52/PartitionedCall�
!conv2d_63/StatefulPartitionedCallStatefulPartitionedCall!re_lu_52/PartitionedCall:output:0conv2d_63_37985conv2d_63_37987*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_63_layer_call_and_return_conditional_losses_372302#
!conv2d_63/StatefulPartitionedCall�
.batch_normalization_63/StatefulPartitionedCallStatefulPartitionedCall*conv2d_63/StatefulPartitionedCall:output:0batch_normalization_63_37990batch_normalization_63_37992batch_normalization_63_37994batch_normalization_63_37996*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_63_layer_call_and_return_conditional_losses_3765220
.batch_normalization_63/StatefulPartitionedCall�
leaky_re_lu_10/PartitionedCallPartitionedCall7batch_normalization_63/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_372682 
leaky_re_lu_10/PartitionedCall�
!conv2d_64/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_10/PartitionedCall:output:0conv2d_64_38000conv2d_64_38002*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_64_layer_call_and_return_conditional_losses_372812#
!conv2d_64/StatefulPartitionedCall�
.batch_normalization_64/StatefulPartitionedCallStatefulPartitionedCall*conv2d_64/StatefulPartitionedCall:output:0batch_normalization_64_38005batch_normalization_64_38007batch_normalization_64_38009batch_normalization_64_38011*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_64_layer_call_and_return_conditional_losses_3759220
.batch_normalization_64/StatefulPartitionedCall�
re_lu_53/PartitionedCallPartitionedCall7batch_normalization_64/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_re_lu_53_layer_call_and_return_conditional_losses_373192
re_lu_53/PartitionedCall�
!conv2d_65/StatefulPartitionedCallStatefulPartitionedCall!re_lu_53/PartitionedCall:output:0conv2d_65_38015conv2d_65_38017*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_65_layer_call_and_return_conditional_losses_373322#
!conv2d_65/StatefulPartitionedCall�
.batch_normalization_65/StatefulPartitionedCallStatefulPartitionedCall*conv2d_65/StatefulPartitionedCall:output:0batch_normalization_65_38020batch_normalization_65_38022batch_normalization_65_38024batch_normalization_65_38026*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_65_layer_call_and_return_conditional_losses_3753220
.batch_normalization_65/StatefulPartitionedCall�
re_lu_54/PartitionedCallPartitionedCall7batch_normalization_65/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_re_lu_54_layer_call_and_return_conditional_losses_373702
re_lu_54/PartitionedCall�
flatten_10/PartitionedCallPartitionedCall!re_lu_54/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_flatten_10_layer_call_and_return_conditional_losses_373782
flatten_10/PartitionedCall�
 dense_10/StatefulPartitionedCallStatefulPartitionedCall#flatten_10/PartitionedCall:output:0dense_10_38031dense_10_38033*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_10_layer_call_and_return_conditional_losses_373912"
 dense_10/StatefulPartitionedCall�
IdentityIdentity)dense_10/StatefulPartitionedCall:output:0/^batch_normalization_60/StatefulPartitionedCall/^batch_normalization_61/StatefulPartitionedCall/^batch_normalization_62/StatefulPartitionedCall/^batch_normalization_63/StatefulPartitionedCall/^batch_normalization_64/StatefulPartitionedCall/^batch_normalization_65/StatefulPartitionedCall"^conv2d_60/StatefulPartitionedCall"^conv2d_61/StatefulPartitionedCall"^conv2d_62/StatefulPartitionedCall"^conv2d_63/StatefulPartitionedCall"^conv2d_64/StatefulPartitionedCall"^conv2d_65/StatefulPartitionedCall!^dense_10/StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*z
_input_shapesi
g:���������(: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_60/StatefulPartitionedCall.batch_normalization_60/StatefulPartitionedCall2`
.batch_normalization_61/StatefulPartitionedCall.batch_normalization_61/StatefulPartitionedCall2`
.batch_normalization_62/StatefulPartitionedCall.batch_normalization_62/StatefulPartitionedCall2`
.batch_normalization_63/StatefulPartitionedCall.batch_normalization_63/StatefulPartitionedCall2`
.batch_normalization_64/StatefulPartitionedCall.batch_normalization_64/StatefulPartitionedCall2`
.batch_normalization_65/StatefulPartitionedCall.batch_normalization_65/StatefulPartitionedCall2F
!conv2d_60/StatefulPartitionedCall!conv2d_60/StatefulPartitionedCall2F
!conv2d_61/StatefulPartitionedCall!conv2d_61/StatefulPartitionedCall2F
!conv2d_62/StatefulPartitionedCall!conv2d_62/StatefulPartitionedCall2F
!conv2d_63/StatefulPartitionedCall!conv2d_63/StatefulPartitionedCall2F
!conv2d_64/StatefulPartitionedCall!conv2d_64/StatefulPartitionedCall2F
!conv2d_65/StatefulPartitionedCall!conv2d_65/StatefulPartitionedCall2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall:W S
/
_output_shapes
:���������(
 
_user_specified_nameinputs
�
D
(__inference_re_lu_51_layer_call_fn_39244

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_re_lu_51_layer_call_and_return_conditional_losses_371662
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
6__inference_batch_normalization_63_layer_call_fn_39516

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_63_layer_call_and_return_conditional_losses_367462
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_65_layer_call_and_return_conditional_losses_39744

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
)__inference_conv2d_65_layer_call_fn_39726

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_65_layer_call_and_return_conditional_losses_373322
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
a
E__inference_flatten_10_layer_call_and_return_conditional_losses_39866

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"�����   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
F
*__inference_flatten_10_layer_call_fn_39871

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_flatten_10_layer_call_and_return_conditional_losses_373782
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_60_layer_call_and_return_conditional_losses_36356

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+��������������������������� : : : : :*
epsilon%o�:*
exponential_avg_factor%
�#<2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+��������������������������� 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�
D
(__inference_re_lu_50_layer_call_fn_39090

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������( * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_re_lu_50_layer_call_and_return_conditional_losses_371142
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������( 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������( :W S
/
_output_shapes
:���������( 
 
_user_specified_nameinputs
��
�*
 __inference__wrapped_model_36290
conv2d_60_inputP
6sequential_10_conv2d_60_conv2d_readvariableop_resource: E
7sequential_10_conv2d_60_biasadd_readvariableop_resource: J
<sequential_10_batch_normalization_60_readvariableop_resource: L
>sequential_10_batch_normalization_60_readvariableop_1_resource: [
Msequential_10_batch_normalization_60_fusedbatchnormv3_readvariableop_resource: ]
Osequential_10_batch_normalization_60_fusedbatchnormv3_readvariableop_1_resource: P
6sequential_10_conv2d_61_conv2d_readvariableop_resource: E
7sequential_10_conv2d_61_biasadd_readvariableop_resource:J
<sequential_10_batch_normalization_61_readvariableop_resource:L
>sequential_10_batch_normalization_61_readvariableop_1_resource:[
Msequential_10_batch_normalization_61_fusedbatchnormv3_readvariableop_resource:]
Osequential_10_batch_normalization_61_fusedbatchnormv3_readvariableop_1_resource:P
6sequential_10_conv2d_62_conv2d_readvariableop_resource:E
7sequential_10_conv2d_62_biasadd_readvariableop_resource:J
<sequential_10_batch_normalization_62_readvariableop_resource:L
>sequential_10_batch_normalization_62_readvariableop_1_resource:[
Msequential_10_batch_normalization_62_fusedbatchnormv3_readvariableop_resource:]
Osequential_10_batch_normalization_62_fusedbatchnormv3_readvariableop_1_resource:P
6sequential_10_conv2d_63_conv2d_readvariableop_resource:E
7sequential_10_conv2d_63_biasadd_readvariableop_resource:J
<sequential_10_batch_normalization_63_readvariableop_resource:L
>sequential_10_batch_normalization_63_readvariableop_1_resource:[
Msequential_10_batch_normalization_63_fusedbatchnormv3_readvariableop_resource:]
Osequential_10_batch_normalization_63_fusedbatchnormv3_readvariableop_1_resource:P
6sequential_10_conv2d_64_conv2d_readvariableop_resource:E
7sequential_10_conv2d_64_biasadd_readvariableop_resource:J
<sequential_10_batch_normalization_64_readvariableop_resource:L
>sequential_10_batch_normalization_64_readvariableop_1_resource:[
Msequential_10_batch_normalization_64_fusedbatchnormv3_readvariableop_resource:]
Osequential_10_batch_normalization_64_fusedbatchnormv3_readvariableop_1_resource:P
6sequential_10_conv2d_65_conv2d_readvariableop_resource:E
7sequential_10_conv2d_65_biasadd_readvariableop_resource:J
<sequential_10_batch_normalization_65_readvariableop_resource:L
>sequential_10_batch_normalization_65_readvariableop_1_resource:[
Msequential_10_batch_normalization_65_fusedbatchnormv3_readvariableop_resource:]
Osequential_10_batch_normalization_65_fusedbatchnormv3_readvariableop_1_resource:H
5sequential_10_dense_10_matmul_readvariableop_resource:	�D
6sequential_10_dense_10_biasadd_readvariableop_resource:
identity��Dsequential_10/batch_normalization_60/FusedBatchNormV3/ReadVariableOp�Fsequential_10/batch_normalization_60/FusedBatchNormV3/ReadVariableOp_1�3sequential_10/batch_normalization_60/ReadVariableOp�5sequential_10/batch_normalization_60/ReadVariableOp_1�Dsequential_10/batch_normalization_61/FusedBatchNormV3/ReadVariableOp�Fsequential_10/batch_normalization_61/FusedBatchNormV3/ReadVariableOp_1�3sequential_10/batch_normalization_61/ReadVariableOp�5sequential_10/batch_normalization_61/ReadVariableOp_1�Dsequential_10/batch_normalization_62/FusedBatchNormV3/ReadVariableOp�Fsequential_10/batch_normalization_62/FusedBatchNormV3/ReadVariableOp_1�3sequential_10/batch_normalization_62/ReadVariableOp�5sequential_10/batch_normalization_62/ReadVariableOp_1�Dsequential_10/batch_normalization_63/FusedBatchNormV3/ReadVariableOp�Fsequential_10/batch_normalization_63/FusedBatchNormV3/ReadVariableOp_1�3sequential_10/batch_normalization_63/ReadVariableOp�5sequential_10/batch_normalization_63/ReadVariableOp_1�Dsequential_10/batch_normalization_64/FusedBatchNormV3/ReadVariableOp�Fsequential_10/batch_normalization_64/FusedBatchNormV3/ReadVariableOp_1�3sequential_10/batch_normalization_64/ReadVariableOp�5sequential_10/batch_normalization_64/ReadVariableOp_1�Dsequential_10/batch_normalization_65/FusedBatchNormV3/ReadVariableOp�Fsequential_10/batch_normalization_65/FusedBatchNormV3/ReadVariableOp_1�3sequential_10/batch_normalization_65/ReadVariableOp�5sequential_10/batch_normalization_65/ReadVariableOp_1�.sequential_10/conv2d_60/BiasAdd/ReadVariableOp�-sequential_10/conv2d_60/Conv2D/ReadVariableOp�.sequential_10/conv2d_61/BiasAdd/ReadVariableOp�-sequential_10/conv2d_61/Conv2D/ReadVariableOp�.sequential_10/conv2d_62/BiasAdd/ReadVariableOp�-sequential_10/conv2d_62/Conv2D/ReadVariableOp�.sequential_10/conv2d_63/BiasAdd/ReadVariableOp�-sequential_10/conv2d_63/Conv2D/ReadVariableOp�.sequential_10/conv2d_64/BiasAdd/ReadVariableOp�-sequential_10/conv2d_64/Conv2D/ReadVariableOp�.sequential_10/conv2d_65/BiasAdd/ReadVariableOp�-sequential_10/conv2d_65/Conv2D/ReadVariableOp�-sequential_10/dense_10/BiasAdd/ReadVariableOp�,sequential_10/dense_10/MatMul/ReadVariableOp�
-sequential_10/conv2d_60/Conv2D/ReadVariableOpReadVariableOp6sequential_10_conv2d_60_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02/
-sequential_10/conv2d_60/Conv2D/ReadVariableOp�
sequential_10/conv2d_60/Conv2DConv2Dconv2d_60_input5sequential_10/conv2d_60/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������( *
paddingSAME*
strides
2 
sequential_10/conv2d_60/Conv2D�
.sequential_10/conv2d_60/BiasAdd/ReadVariableOpReadVariableOp7sequential_10_conv2d_60_biasadd_readvariableop_resource*
_output_shapes
: *
dtype020
.sequential_10/conv2d_60/BiasAdd/ReadVariableOp�
sequential_10/conv2d_60/BiasAddBiasAdd'sequential_10/conv2d_60/Conv2D:output:06sequential_10/conv2d_60/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������( 2!
sequential_10/conv2d_60/BiasAdd�
sequential_10/conv2d_60/ReluRelu(sequential_10/conv2d_60/BiasAdd:output:0*
T0*/
_output_shapes
:���������( 2
sequential_10/conv2d_60/Relu�
3sequential_10/batch_normalization_60/ReadVariableOpReadVariableOp<sequential_10_batch_normalization_60_readvariableop_resource*
_output_shapes
: *
dtype025
3sequential_10/batch_normalization_60/ReadVariableOp�
5sequential_10/batch_normalization_60/ReadVariableOp_1ReadVariableOp>sequential_10_batch_normalization_60_readvariableop_1_resource*
_output_shapes
: *
dtype027
5sequential_10/batch_normalization_60/ReadVariableOp_1�
Dsequential_10/batch_normalization_60/FusedBatchNormV3/ReadVariableOpReadVariableOpMsequential_10_batch_normalization_60_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02F
Dsequential_10/batch_normalization_60/FusedBatchNormV3/ReadVariableOp�
Fsequential_10/batch_normalization_60/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpOsequential_10_batch_normalization_60_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02H
Fsequential_10/batch_normalization_60/FusedBatchNormV3/ReadVariableOp_1�
5sequential_10/batch_normalization_60/FusedBatchNormV3FusedBatchNormV3*sequential_10/conv2d_60/Relu:activations:0;sequential_10/batch_normalization_60/ReadVariableOp:value:0=sequential_10/batch_normalization_60/ReadVariableOp_1:value:0Lsequential_10/batch_normalization_60/FusedBatchNormV3/ReadVariableOp:value:0Nsequential_10/batch_normalization_60/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������( : : : : :*
epsilon%o�:*
is_training( 27
5sequential_10/batch_normalization_60/FusedBatchNormV3�
sequential_10/re_lu_50/ReluRelu9sequential_10/batch_normalization_60/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������( 2
sequential_10/re_lu_50/Relu�
&sequential_10/max_pooling2d_10/MaxPoolMaxPool)sequential_10/re_lu_50/Relu:activations:0*/
_output_shapes
:��������� *
ksize
*
paddingVALID*
strides
2(
&sequential_10/max_pooling2d_10/MaxPool�
-sequential_10/conv2d_61/Conv2D/ReadVariableOpReadVariableOp6sequential_10_conv2d_61_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02/
-sequential_10/conv2d_61/Conv2D/ReadVariableOp�
sequential_10/conv2d_61/Conv2DConv2D/sequential_10/max_pooling2d_10/MaxPool:output:05sequential_10/conv2d_61/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2 
sequential_10/conv2d_61/Conv2D�
.sequential_10/conv2d_61/BiasAdd/ReadVariableOpReadVariableOp7sequential_10_conv2d_61_biasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.sequential_10/conv2d_61/BiasAdd/ReadVariableOp�
sequential_10/conv2d_61/BiasAddBiasAdd'sequential_10/conv2d_61/Conv2D:output:06sequential_10/conv2d_61/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2!
sequential_10/conv2d_61/BiasAdd�
sequential_10/conv2d_61/ReluRelu(sequential_10/conv2d_61/BiasAdd:output:0*
T0*/
_output_shapes
:���������2
sequential_10/conv2d_61/Relu�
3sequential_10/batch_normalization_61/ReadVariableOpReadVariableOp<sequential_10_batch_normalization_61_readvariableop_resource*
_output_shapes
:*
dtype025
3sequential_10/batch_normalization_61/ReadVariableOp�
5sequential_10/batch_normalization_61/ReadVariableOp_1ReadVariableOp>sequential_10_batch_normalization_61_readvariableop_1_resource*
_output_shapes
:*
dtype027
5sequential_10/batch_normalization_61/ReadVariableOp_1�
Dsequential_10/batch_normalization_61/FusedBatchNormV3/ReadVariableOpReadVariableOpMsequential_10_batch_normalization_61_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02F
Dsequential_10/batch_normalization_61/FusedBatchNormV3/ReadVariableOp�
Fsequential_10/batch_normalization_61/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpOsequential_10_batch_normalization_61_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02H
Fsequential_10/batch_normalization_61/FusedBatchNormV3/ReadVariableOp_1�
5sequential_10/batch_normalization_61/FusedBatchNormV3FusedBatchNormV3*sequential_10/conv2d_61/Relu:activations:0;sequential_10/batch_normalization_61/ReadVariableOp:value:0=sequential_10/batch_normalization_61/ReadVariableOp_1:value:0Lsequential_10/batch_normalization_61/FusedBatchNormV3/ReadVariableOp:value:0Nsequential_10/batch_normalization_61/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������:::::*
epsilon%o�:*
is_training( 27
5sequential_10/batch_normalization_61/FusedBatchNormV3�
sequential_10/re_lu_51/ReluRelu9sequential_10/batch_normalization_61/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������2
sequential_10/re_lu_51/Relu�
-sequential_10/conv2d_62/Conv2D/ReadVariableOpReadVariableOp6sequential_10_conv2d_62_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02/
-sequential_10/conv2d_62/Conv2D/ReadVariableOp�
sequential_10/conv2d_62/Conv2DConv2D)sequential_10/re_lu_51/Relu:activations:05sequential_10/conv2d_62/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2 
sequential_10/conv2d_62/Conv2D�
.sequential_10/conv2d_62/BiasAdd/ReadVariableOpReadVariableOp7sequential_10_conv2d_62_biasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.sequential_10/conv2d_62/BiasAdd/ReadVariableOp�
sequential_10/conv2d_62/BiasAddBiasAdd'sequential_10/conv2d_62/Conv2D:output:06sequential_10/conv2d_62/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2!
sequential_10/conv2d_62/BiasAdd�
sequential_10/conv2d_62/ReluRelu(sequential_10/conv2d_62/BiasAdd:output:0*
T0*/
_output_shapes
:���������2
sequential_10/conv2d_62/Relu�
3sequential_10/batch_normalization_62/ReadVariableOpReadVariableOp<sequential_10_batch_normalization_62_readvariableop_resource*
_output_shapes
:*
dtype025
3sequential_10/batch_normalization_62/ReadVariableOp�
5sequential_10/batch_normalization_62/ReadVariableOp_1ReadVariableOp>sequential_10_batch_normalization_62_readvariableop_1_resource*
_output_shapes
:*
dtype027
5sequential_10/batch_normalization_62/ReadVariableOp_1�
Dsequential_10/batch_normalization_62/FusedBatchNormV3/ReadVariableOpReadVariableOpMsequential_10_batch_normalization_62_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02F
Dsequential_10/batch_normalization_62/FusedBatchNormV3/ReadVariableOp�
Fsequential_10/batch_normalization_62/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpOsequential_10_batch_normalization_62_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02H
Fsequential_10/batch_normalization_62/FusedBatchNormV3/ReadVariableOp_1�
5sequential_10/batch_normalization_62/FusedBatchNormV3FusedBatchNormV3*sequential_10/conv2d_62/Relu:activations:0;sequential_10/batch_normalization_62/ReadVariableOp:value:0=sequential_10/batch_normalization_62/ReadVariableOp_1:value:0Lsequential_10/batch_normalization_62/FusedBatchNormV3/ReadVariableOp:value:0Nsequential_10/batch_normalization_62/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������:::::*
epsilon%o�:*
is_training( 27
5sequential_10/batch_normalization_62/FusedBatchNormV3�
sequential_10/re_lu_52/ReluRelu9sequential_10/batch_normalization_62/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������2
sequential_10/re_lu_52/Relu�
-sequential_10/conv2d_63/Conv2D/ReadVariableOpReadVariableOp6sequential_10_conv2d_63_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02/
-sequential_10/conv2d_63/Conv2D/ReadVariableOp�
sequential_10/conv2d_63/Conv2DConv2D)sequential_10/re_lu_52/Relu:activations:05sequential_10/conv2d_63/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2 
sequential_10/conv2d_63/Conv2D�
.sequential_10/conv2d_63/BiasAdd/ReadVariableOpReadVariableOp7sequential_10_conv2d_63_biasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.sequential_10/conv2d_63/BiasAdd/ReadVariableOp�
sequential_10/conv2d_63/BiasAddBiasAdd'sequential_10/conv2d_63/Conv2D:output:06sequential_10/conv2d_63/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2!
sequential_10/conv2d_63/BiasAdd�
sequential_10/conv2d_63/ReluRelu(sequential_10/conv2d_63/BiasAdd:output:0*
T0*/
_output_shapes
:���������2
sequential_10/conv2d_63/Relu�
3sequential_10/batch_normalization_63/ReadVariableOpReadVariableOp<sequential_10_batch_normalization_63_readvariableop_resource*
_output_shapes
:*
dtype025
3sequential_10/batch_normalization_63/ReadVariableOp�
5sequential_10/batch_normalization_63/ReadVariableOp_1ReadVariableOp>sequential_10_batch_normalization_63_readvariableop_1_resource*
_output_shapes
:*
dtype027
5sequential_10/batch_normalization_63/ReadVariableOp_1�
Dsequential_10/batch_normalization_63/FusedBatchNormV3/ReadVariableOpReadVariableOpMsequential_10_batch_normalization_63_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02F
Dsequential_10/batch_normalization_63/FusedBatchNormV3/ReadVariableOp�
Fsequential_10/batch_normalization_63/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpOsequential_10_batch_normalization_63_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02H
Fsequential_10/batch_normalization_63/FusedBatchNormV3/ReadVariableOp_1�
5sequential_10/batch_normalization_63/FusedBatchNormV3FusedBatchNormV3*sequential_10/conv2d_63/Relu:activations:0;sequential_10/batch_normalization_63/ReadVariableOp:value:0=sequential_10/batch_normalization_63/ReadVariableOp_1:value:0Lsequential_10/batch_normalization_63/FusedBatchNormV3/ReadVariableOp:value:0Nsequential_10/batch_normalization_63/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������:::::*
epsilon%o�:*
is_training( 27
5sequential_10/batch_normalization_63/FusedBatchNormV3�
&sequential_10/leaky_re_lu_10/LeakyRelu	LeakyRelu9sequential_10/batch_normalization_63/FusedBatchNormV3:y:0*/
_output_shapes
:���������*
alpha%���>2(
&sequential_10/leaky_re_lu_10/LeakyRelu�
-sequential_10/conv2d_64/Conv2D/ReadVariableOpReadVariableOp6sequential_10_conv2d_64_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02/
-sequential_10/conv2d_64/Conv2D/ReadVariableOp�
sequential_10/conv2d_64/Conv2DConv2D4sequential_10/leaky_re_lu_10/LeakyRelu:activations:05sequential_10/conv2d_64/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2 
sequential_10/conv2d_64/Conv2D�
.sequential_10/conv2d_64/BiasAdd/ReadVariableOpReadVariableOp7sequential_10_conv2d_64_biasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.sequential_10/conv2d_64/BiasAdd/ReadVariableOp�
sequential_10/conv2d_64/BiasAddBiasAdd'sequential_10/conv2d_64/Conv2D:output:06sequential_10/conv2d_64/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2!
sequential_10/conv2d_64/BiasAdd�
sequential_10/conv2d_64/ReluRelu(sequential_10/conv2d_64/BiasAdd:output:0*
T0*/
_output_shapes
:���������2
sequential_10/conv2d_64/Relu�
3sequential_10/batch_normalization_64/ReadVariableOpReadVariableOp<sequential_10_batch_normalization_64_readvariableop_resource*
_output_shapes
:*
dtype025
3sequential_10/batch_normalization_64/ReadVariableOp�
5sequential_10/batch_normalization_64/ReadVariableOp_1ReadVariableOp>sequential_10_batch_normalization_64_readvariableop_1_resource*
_output_shapes
:*
dtype027
5sequential_10/batch_normalization_64/ReadVariableOp_1�
Dsequential_10/batch_normalization_64/FusedBatchNormV3/ReadVariableOpReadVariableOpMsequential_10_batch_normalization_64_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02F
Dsequential_10/batch_normalization_64/FusedBatchNormV3/ReadVariableOp�
Fsequential_10/batch_normalization_64/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpOsequential_10_batch_normalization_64_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02H
Fsequential_10/batch_normalization_64/FusedBatchNormV3/ReadVariableOp_1�
5sequential_10/batch_normalization_64/FusedBatchNormV3FusedBatchNormV3*sequential_10/conv2d_64/Relu:activations:0;sequential_10/batch_normalization_64/ReadVariableOp:value:0=sequential_10/batch_normalization_64/ReadVariableOp_1:value:0Lsequential_10/batch_normalization_64/FusedBatchNormV3/ReadVariableOp:value:0Nsequential_10/batch_normalization_64/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������:::::*
epsilon%o�:*
is_training( 27
5sequential_10/batch_normalization_64/FusedBatchNormV3�
sequential_10/re_lu_53/ReluRelu9sequential_10/batch_normalization_64/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������2
sequential_10/re_lu_53/Relu�
-sequential_10/conv2d_65/Conv2D/ReadVariableOpReadVariableOp6sequential_10_conv2d_65_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02/
-sequential_10/conv2d_65/Conv2D/ReadVariableOp�
sequential_10/conv2d_65/Conv2DConv2D)sequential_10/re_lu_53/Relu:activations:05sequential_10/conv2d_65/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2 
sequential_10/conv2d_65/Conv2D�
.sequential_10/conv2d_65/BiasAdd/ReadVariableOpReadVariableOp7sequential_10_conv2d_65_biasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.sequential_10/conv2d_65/BiasAdd/ReadVariableOp�
sequential_10/conv2d_65/BiasAddBiasAdd'sequential_10/conv2d_65/Conv2D:output:06sequential_10/conv2d_65/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2!
sequential_10/conv2d_65/BiasAdd�
sequential_10/conv2d_65/ReluRelu(sequential_10/conv2d_65/BiasAdd:output:0*
T0*/
_output_shapes
:���������2
sequential_10/conv2d_65/Relu�
3sequential_10/batch_normalization_65/ReadVariableOpReadVariableOp<sequential_10_batch_normalization_65_readvariableop_resource*
_output_shapes
:*
dtype025
3sequential_10/batch_normalization_65/ReadVariableOp�
5sequential_10/batch_normalization_65/ReadVariableOp_1ReadVariableOp>sequential_10_batch_normalization_65_readvariableop_1_resource*
_output_shapes
:*
dtype027
5sequential_10/batch_normalization_65/ReadVariableOp_1�
Dsequential_10/batch_normalization_65/FusedBatchNormV3/ReadVariableOpReadVariableOpMsequential_10_batch_normalization_65_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02F
Dsequential_10/batch_normalization_65/FusedBatchNormV3/ReadVariableOp�
Fsequential_10/batch_normalization_65/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpOsequential_10_batch_normalization_65_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02H
Fsequential_10/batch_normalization_65/FusedBatchNormV3/ReadVariableOp_1�
5sequential_10/batch_normalization_65/FusedBatchNormV3FusedBatchNormV3*sequential_10/conv2d_65/Relu:activations:0;sequential_10/batch_normalization_65/ReadVariableOp:value:0=sequential_10/batch_normalization_65/ReadVariableOp_1:value:0Lsequential_10/batch_normalization_65/FusedBatchNormV3/ReadVariableOp:value:0Nsequential_10/batch_normalization_65/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������:::::*
epsilon%o�:*
is_training( 27
5sequential_10/batch_normalization_65/FusedBatchNormV3�
sequential_10/re_lu_54/ReluRelu9sequential_10/batch_normalization_65/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������2
sequential_10/re_lu_54/Relu�
sequential_10/flatten_10/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����   2 
sequential_10/flatten_10/Const�
 sequential_10/flatten_10/ReshapeReshape)sequential_10/re_lu_54/Relu:activations:0'sequential_10/flatten_10/Const:output:0*
T0*(
_output_shapes
:����������2"
 sequential_10/flatten_10/Reshape�
,sequential_10/dense_10/MatMul/ReadVariableOpReadVariableOp5sequential_10_dense_10_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02.
,sequential_10/dense_10/MatMul/ReadVariableOp�
sequential_10/dense_10/MatMulMatMul)sequential_10/flatten_10/Reshape:output:04sequential_10/dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
sequential_10/dense_10/MatMul�
-sequential_10/dense_10/BiasAdd/ReadVariableOpReadVariableOp6sequential_10_dense_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_10/dense_10/BiasAdd/ReadVariableOp�
sequential_10/dense_10/BiasAddBiasAdd'sequential_10/dense_10/MatMul:product:05sequential_10/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2 
sequential_10/dense_10/BiasAdd�
sequential_10/dense_10/SigmoidSigmoid'sequential_10/dense_10/BiasAdd:output:0*
T0*'
_output_shapes
:���������2 
sequential_10/dense_10/Sigmoid�
IdentityIdentity"sequential_10/dense_10/Sigmoid:y:0E^sequential_10/batch_normalization_60/FusedBatchNormV3/ReadVariableOpG^sequential_10/batch_normalization_60/FusedBatchNormV3/ReadVariableOp_14^sequential_10/batch_normalization_60/ReadVariableOp6^sequential_10/batch_normalization_60/ReadVariableOp_1E^sequential_10/batch_normalization_61/FusedBatchNormV3/ReadVariableOpG^sequential_10/batch_normalization_61/FusedBatchNormV3/ReadVariableOp_14^sequential_10/batch_normalization_61/ReadVariableOp6^sequential_10/batch_normalization_61/ReadVariableOp_1E^sequential_10/batch_normalization_62/FusedBatchNormV3/ReadVariableOpG^sequential_10/batch_normalization_62/FusedBatchNormV3/ReadVariableOp_14^sequential_10/batch_normalization_62/ReadVariableOp6^sequential_10/batch_normalization_62/ReadVariableOp_1E^sequential_10/batch_normalization_63/FusedBatchNormV3/ReadVariableOpG^sequential_10/batch_normalization_63/FusedBatchNormV3/ReadVariableOp_14^sequential_10/batch_normalization_63/ReadVariableOp6^sequential_10/batch_normalization_63/ReadVariableOp_1E^sequential_10/batch_normalization_64/FusedBatchNormV3/ReadVariableOpG^sequential_10/batch_normalization_64/FusedBatchNormV3/ReadVariableOp_14^sequential_10/batch_normalization_64/ReadVariableOp6^sequential_10/batch_normalization_64/ReadVariableOp_1E^sequential_10/batch_normalization_65/FusedBatchNormV3/ReadVariableOpG^sequential_10/batch_normalization_65/FusedBatchNormV3/ReadVariableOp_14^sequential_10/batch_normalization_65/ReadVariableOp6^sequential_10/batch_normalization_65/ReadVariableOp_1/^sequential_10/conv2d_60/BiasAdd/ReadVariableOp.^sequential_10/conv2d_60/Conv2D/ReadVariableOp/^sequential_10/conv2d_61/BiasAdd/ReadVariableOp.^sequential_10/conv2d_61/Conv2D/ReadVariableOp/^sequential_10/conv2d_62/BiasAdd/ReadVariableOp.^sequential_10/conv2d_62/Conv2D/ReadVariableOp/^sequential_10/conv2d_63/BiasAdd/ReadVariableOp.^sequential_10/conv2d_63/Conv2D/ReadVariableOp/^sequential_10/conv2d_64/BiasAdd/ReadVariableOp.^sequential_10/conv2d_64/Conv2D/ReadVariableOp/^sequential_10/conv2d_65/BiasAdd/ReadVariableOp.^sequential_10/conv2d_65/Conv2D/ReadVariableOp.^sequential_10/dense_10/BiasAdd/ReadVariableOp-^sequential_10/dense_10/MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*z
_input_shapesi
g:���������(: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2�
Dsequential_10/batch_normalization_60/FusedBatchNormV3/ReadVariableOpDsequential_10/batch_normalization_60/FusedBatchNormV3/ReadVariableOp2�
Fsequential_10/batch_normalization_60/FusedBatchNormV3/ReadVariableOp_1Fsequential_10/batch_normalization_60/FusedBatchNormV3/ReadVariableOp_12j
3sequential_10/batch_normalization_60/ReadVariableOp3sequential_10/batch_normalization_60/ReadVariableOp2n
5sequential_10/batch_normalization_60/ReadVariableOp_15sequential_10/batch_normalization_60/ReadVariableOp_12�
Dsequential_10/batch_normalization_61/FusedBatchNormV3/ReadVariableOpDsequential_10/batch_normalization_61/FusedBatchNormV3/ReadVariableOp2�
Fsequential_10/batch_normalization_61/FusedBatchNormV3/ReadVariableOp_1Fsequential_10/batch_normalization_61/FusedBatchNormV3/ReadVariableOp_12j
3sequential_10/batch_normalization_61/ReadVariableOp3sequential_10/batch_normalization_61/ReadVariableOp2n
5sequential_10/batch_normalization_61/ReadVariableOp_15sequential_10/batch_normalization_61/ReadVariableOp_12�
Dsequential_10/batch_normalization_62/FusedBatchNormV3/ReadVariableOpDsequential_10/batch_normalization_62/FusedBatchNormV3/ReadVariableOp2�
Fsequential_10/batch_normalization_62/FusedBatchNormV3/ReadVariableOp_1Fsequential_10/batch_normalization_62/FusedBatchNormV3/ReadVariableOp_12j
3sequential_10/batch_normalization_62/ReadVariableOp3sequential_10/batch_normalization_62/ReadVariableOp2n
5sequential_10/batch_normalization_62/ReadVariableOp_15sequential_10/batch_normalization_62/ReadVariableOp_12�
Dsequential_10/batch_normalization_63/FusedBatchNormV3/ReadVariableOpDsequential_10/batch_normalization_63/FusedBatchNormV3/ReadVariableOp2�
Fsequential_10/batch_normalization_63/FusedBatchNormV3/ReadVariableOp_1Fsequential_10/batch_normalization_63/FusedBatchNormV3/ReadVariableOp_12j
3sequential_10/batch_normalization_63/ReadVariableOp3sequential_10/batch_normalization_63/ReadVariableOp2n
5sequential_10/batch_normalization_63/ReadVariableOp_15sequential_10/batch_normalization_63/ReadVariableOp_12�
Dsequential_10/batch_normalization_64/FusedBatchNormV3/ReadVariableOpDsequential_10/batch_normalization_64/FusedBatchNormV3/ReadVariableOp2�
Fsequential_10/batch_normalization_64/FusedBatchNormV3/ReadVariableOp_1Fsequential_10/batch_normalization_64/FusedBatchNormV3/ReadVariableOp_12j
3sequential_10/batch_normalization_64/ReadVariableOp3sequential_10/batch_normalization_64/ReadVariableOp2n
5sequential_10/batch_normalization_64/ReadVariableOp_15sequential_10/batch_normalization_64/ReadVariableOp_12�
Dsequential_10/batch_normalization_65/FusedBatchNormV3/ReadVariableOpDsequential_10/batch_normalization_65/FusedBatchNormV3/ReadVariableOp2�
Fsequential_10/batch_normalization_65/FusedBatchNormV3/ReadVariableOp_1Fsequential_10/batch_normalization_65/FusedBatchNormV3/ReadVariableOp_12j
3sequential_10/batch_normalization_65/ReadVariableOp3sequential_10/batch_normalization_65/ReadVariableOp2n
5sequential_10/batch_normalization_65/ReadVariableOp_15sequential_10/batch_normalization_65/ReadVariableOp_12`
.sequential_10/conv2d_60/BiasAdd/ReadVariableOp.sequential_10/conv2d_60/BiasAdd/ReadVariableOp2^
-sequential_10/conv2d_60/Conv2D/ReadVariableOp-sequential_10/conv2d_60/Conv2D/ReadVariableOp2`
.sequential_10/conv2d_61/BiasAdd/ReadVariableOp.sequential_10/conv2d_61/BiasAdd/ReadVariableOp2^
-sequential_10/conv2d_61/Conv2D/ReadVariableOp-sequential_10/conv2d_61/Conv2D/ReadVariableOp2`
.sequential_10/conv2d_62/BiasAdd/ReadVariableOp.sequential_10/conv2d_62/BiasAdd/ReadVariableOp2^
-sequential_10/conv2d_62/Conv2D/ReadVariableOp-sequential_10/conv2d_62/Conv2D/ReadVariableOp2`
.sequential_10/conv2d_63/BiasAdd/ReadVariableOp.sequential_10/conv2d_63/BiasAdd/ReadVariableOp2^
-sequential_10/conv2d_63/Conv2D/ReadVariableOp-sequential_10/conv2d_63/Conv2D/ReadVariableOp2`
.sequential_10/conv2d_64/BiasAdd/ReadVariableOp.sequential_10/conv2d_64/BiasAdd/ReadVariableOp2^
-sequential_10/conv2d_64/Conv2D/ReadVariableOp-sequential_10/conv2d_64/Conv2D/ReadVariableOp2`
.sequential_10/conv2d_65/BiasAdd/ReadVariableOp.sequential_10/conv2d_65/BiasAdd/ReadVariableOp2^
-sequential_10/conv2d_65/Conv2D/ReadVariableOp-sequential_10/conv2d_65/Conv2D/ReadVariableOp2^
-sequential_10/dense_10/BiasAdd/ReadVariableOp-sequential_10/dense_10/BiasAdd/ReadVariableOp2\
,sequential_10/dense_10/MatMul/ReadVariableOp,sequential_10/dense_10/MatMul/ReadVariableOp:` \
/
_output_shapes
:���������(
)
_user_specified_nameconv2d_60_input
�
�
Q__inference_batch_normalization_60_layer_call_and_return_conditional_losses_39010

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������( : : : : :*
epsilon%o�:*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:���������( 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������( : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:���������( 
 
_user_specified_nameinputs
�
�
6__inference_batch_normalization_64_layer_call_fn_39683

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_64_layer_call_and_return_conditional_losses_373042
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_65_layer_call_and_return_conditional_losses_39762

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_63_layer_call_and_return_conditional_losses_39472

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������:::::*
epsilon%o�:*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
_
C__inference_re_lu_54_layer_call_and_return_conditional_losses_37370

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:���������2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_63_layer_call_and_return_conditional_losses_36746

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_63_layer_call_and_return_conditional_losses_39436

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
6__inference_batch_normalization_64_layer_call_fn_39696

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_64_layer_call_and_return_conditional_losses_375922
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_65_layer_call_and_return_conditional_losses_39798

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
_
C__inference_re_lu_52_layer_call_and_return_conditional_losses_37217

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:���������2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
D__inference_conv2d_60_layer_call_and_return_conditional_losses_38947

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������( *
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������( 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������( 2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:���������( 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������(: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������(
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_60_layer_call_and_return_conditional_losses_37099

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������( : : : : :*
epsilon%o�:*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:���������( 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������( : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:���������( 
 
_user_specified_nameinputs
�
_
C__inference_re_lu_53_layer_call_and_return_conditional_losses_37319

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:���������2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_61_layer_call_and_return_conditional_losses_39146

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�

�
C__inference_dense_10_layer_call_and_return_conditional_losses_39882

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:���������2	
Sigmoid�
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_63_layer_call_and_return_conditional_losses_39454

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_64_layer_call_and_return_conditional_losses_37592

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�	
-__inference_sequential_10_layer_call_fn_38936

inputs!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: 
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:$

unknown_11:

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:$

unknown_17:

unknown_18:

unknown_19:

unknown_20:

unknown_21:

unknown_22:$

unknown_23:

unknown_24:

unknown_25:

unknown_26:

unknown_27:

unknown_28:$

unknown_29:

unknown_30:

unknown_31:

unknown_32:

unknown_33:

unknown_34:

unknown_35:	�

unknown_36:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*<
_read_only_resource_inputs
	
 !"%&*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_10_layer_call_and_return_conditional_losses_380372
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*z
_input_shapesi
g:���������(: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������(
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_64_layer_call_and_return_conditional_losses_39644

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
6__inference_batch_normalization_62_layer_call_fn_39349

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_62_layer_call_and_return_conditional_losses_365762
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
)__inference_conv2d_63_layer_call_fn_39418

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_63_layer_call_and_return_conditional_losses_372302
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_60_layer_call_and_return_conditional_losses_39028

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������( : : : : :*
epsilon%o�:*
exponential_avg_factor%
�#<2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:���������( 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������( : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:���������( 
 
_user_specified_nameinputs
�
D
(__inference_re_lu_54_layer_call_fn_39860

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_re_lu_54_layer_call_and_return_conditional_losses_373702
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
6__inference_batch_normalization_63_layer_call_fn_39529

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_63_layer_call_and_return_conditional_losses_372532
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
D__inference_conv2d_62_layer_call_and_return_conditional_losses_39255

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_64_layer_call_and_return_conditional_losses_39608

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_62_layer_call_and_return_conditional_losses_36620

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�	
-__inference_sequential_10_layer_call_fn_38855

inputs!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: 
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:$

unknown_11:

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:$

unknown_17:

unknown_18:

unknown_19:

unknown_20:

unknown_21:

unknown_22:$

unknown_23:

unknown_24:

unknown_25:

unknown_26:

unknown_27:

unknown_28:$

unknown_29:

unknown_30:

unknown_31:

unknown_32:

unknown_33:

unknown_34:

unknown_35:	�

unknown_36:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*H
_read_only_resource_inputs*
(&	
 !"#$%&*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_10_layer_call_and_return_conditional_losses_373982
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*z
_input_shapesi
g:���������(: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������(
 
_user_specified_nameinputs
�
_
C__inference_re_lu_50_layer_call_and_return_conditional_losses_39085

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:���������( 2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:���������( 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������( :W S
/
_output_shapes
:���������( 
 
_user_specified_nameinputs
�
�
6__inference_batch_normalization_62_layer_call_fn_39375

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_62_layer_call_and_return_conditional_losses_372022
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
6__inference_batch_normalization_65_layer_call_fn_39837

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_65_layer_call_and_return_conditional_losses_373552
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
6__inference_batch_normalization_61_layer_call_fn_39195

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_61_layer_call_and_return_conditional_losses_364502
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
_
C__inference_re_lu_53_layer_call_and_return_conditional_losses_39701

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:���������2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
D__inference_conv2d_63_layer_call_and_return_conditional_losses_37230

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_61_layer_call_and_return_conditional_losses_37772

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
L
0__inference_max_pooling2d_10_layer_call_fn_36428

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_364222
PartitionedCall�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
6__inference_batch_normalization_61_layer_call_fn_39234

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_61_layer_call_and_return_conditional_losses_377722
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_62_layer_call_and_return_conditional_losses_39300

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
D__inference_conv2d_61_layer_call_and_return_conditional_losses_37128

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
_
C__inference_re_lu_52_layer_call_and_return_conditional_losses_39393

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:���������2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
6__inference_batch_normalization_62_layer_call_fn_39388

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_62_layer_call_and_return_conditional_losses_377122
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_63_layer_call_and_return_conditional_losses_39490

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_65_layer_call_and_return_conditional_losses_37355

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������:::::*
epsilon%o�:*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_62_layer_call_and_return_conditional_losses_39282

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
e
I__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_39547

inputs
identityl
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:���������*
alpha%���>2
	LeakyRelus
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
D__inference_conv2d_65_layer_call_and_return_conditional_losses_37332

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_64_layer_call_and_return_conditional_losses_36828

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
6__inference_batch_normalization_65_layer_call_fn_39811

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_65_layer_call_and_return_conditional_losses_369542
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_65_layer_call_and_return_conditional_losses_36954

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
D__inference_conv2d_63_layer_call_and_return_conditional_losses_39409

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
D
(__inference_re_lu_53_layer_call_fn_39706

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_re_lu_53_layer_call_and_return_conditional_losses_373192
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_61_layer_call_and_return_conditional_losses_37151

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������:::::*
epsilon%o�:*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�	
#__inference_signature_wrapper_38482
conv2d_60_input!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: 
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:$

unknown_11:

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:$

unknown_17:

unknown_18:

unknown_19:

unknown_20:

unknown_21:

unknown_22:$

unknown_23:

unknown_24:

unknown_25:

unknown_26:

unknown_27:

unknown_28:$

unknown_29:

unknown_30:

unknown_31:

unknown_32:

unknown_33:

unknown_34:

unknown_35:	�

unknown_36:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv2d_60_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*H
_read_only_resource_inputs*
(&	
 !"#$%&*-
config_proto

CPU

GPU 2J 8� *)
f$R"
 __inference__wrapped_model_362902
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*z
_input_shapesi
g:���������(: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:���������(
)
_user_specified_nameconv2d_60_input
�
g
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_36422

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
2	
MaxPool�
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
_
C__inference_re_lu_51_layer_call_and_return_conditional_losses_37166

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:���������2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�m
�
H__inference_sequential_10_layer_call_and_return_conditional_losses_38298
conv2d_60_input)
conv2d_60_38200: 
conv2d_60_38202: *
batch_normalization_60_38205: *
batch_normalization_60_38207: *
batch_normalization_60_38209: *
batch_normalization_60_38211: )
conv2d_61_38216: 
conv2d_61_38218:*
batch_normalization_61_38221:*
batch_normalization_61_38223:*
batch_normalization_61_38225:*
batch_normalization_61_38227:)
conv2d_62_38231:
conv2d_62_38233:*
batch_normalization_62_38236:*
batch_normalization_62_38238:*
batch_normalization_62_38240:*
batch_normalization_62_38242:)
conv2d_63_38246:
conv2d_63_38248:*
batch_normalization_63_38251:*
batch_normalization_63_38253:*
batch_normalization_63_38255:*
batch_normalization_63_38257:)
conv2d_64_38261:
conv2d_64_38263:*
batch_normalization_64_38266:*
batch_normalization_64_38268:*
batch_normalization_64_38270:*
batch_normalization_64_38272:)
conv2d_65_38276:
conv2d_65_38278:*
batch_normalization_65_38281:*
batch_normalization_65_38283:*
batch_normalization_65_38285:*
batch_normalization_65_38287:!
dense_10_38292:	�
dense_10_38294:
identity��.batch_normalization_60/StatefulPartitionedCall�.batch_normalization_61/StatefulPartitionedCall�.batch_normalization_62/StatefulPartitionedCall�.batch_normalization_63/StatefulPartitionedCall�.batch_normalization_64/StatefulPartitionedCall�.batch_normalization_65/StatefulPartitionedCall�!conv2d_60/StatefulPartitionedCall�!conv2d_61/StatefulPartitionedCall�!conv2d_62/StatefulPartitionedCall�!conv2d_63/StatefulPartitionedCall�!conv2d_64/StatefulPartitionedCall�!conv2d_65/StatefulPartitionedCall� dense_10/StatefulPartitionedCall�
!conv2d_60/StatefulPartitionedCallStatefulPartitionedCallconv2d_60_inputconv2d_60_38200conv2d_60_38202*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������( *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_60_layer_call_and_return_conditional_losses_370762#
!conv2d_60/StatefulPartitionedCall�
.batch_normalization_60/StatefulPartitionedCallStatefulPartitionedCall*conv2d_60/StatefulPartitionedCall:output:0batch_normalization_60_38205batch_normalization_60_38207batch_normalization_60_38209batch_normalization_60_38211*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������( *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_60_layer_call_and_return_conditional_losses_3709920
.batch_normalization_60/StatefulPartitionedCall�
re_lu_50/PartitionedCallPartitionedCall7batch_normalization_60/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������( * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_re_lu_50_layer_call_and_return_conditional_losses_371142
re_lu_50/PartitionedCall�
 max_pooling2d_10/PartitionedCallPartitionedCall!re_lu_50/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_364222"
 max_pooling2d_10/PartitionedCall�
!conv2d_61/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_10/PartitionedCall:output:0conv2d_61_38216conv2d_61_38218*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_61_layer_call_and_return_conditional_losses_371282#
!conv2d_61/StatefulPartitionedCall�
.batch_normalization_61/StatefulPartitionedCallStatefulPartitionedCall*conv2d_61/StatefulPartitionedCall:output:0batch_normalization_61_38221batch_normalization_61_38223batch_normalization_61_38225batch_normalization_61_38227*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_61_layer_call_and_return_conditional_losses_3715120
.batch_normalization_61/StatefulPartitionedCall�
re_lu_51/PartitionedCallPartitionedCall7batch_normalization_61/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_re_lu_51_layer_call_and_return_conditional_losses_371662
re_lu_51/PartitionedCall�
!conv2d_62/StatefulPartitionedCallStatefulPartitionedCall!re_lu_51/PartitionedCall:output:0conv2d_62_38231conv2d_62_38233*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_62_layer_call_and_return_conditional_losses_371792#
!conv2d_62/StatefulPartitionedCall�
.batch_normalization_62/StatefulPartitionedCallStatefulPartitionedCall*conv2d_62/StatefulPartitionedCall:output:0batch_normalization_62_38236batch_normalization_62_38238batch_normalization_62_38240batch_normalization_62_38242*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_62_layer_call_and_return_conditional_losses_3720220
.batch_normalization_62/StatefulPartitionedCall�
re_lu_52/PartitionedCallPartitionedCall7batch_normalization_62/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_re_lu_52_layer_call_and_return_conditional_losses_372172
re_lu_52/PartitionedCall�
!conv2d_63/StatefulPartitionedCallStatefulPartitionedCall!re_lu_52/PartitionedCall:output:0conv2d_63_38246conv2d_63_38248*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_63_layer_call_and_return_conditional_losses_372302#
!conv2d_63/StatefulPartitionedCall�
.batch_normalization_63/StatefulPartitionedCallStatefulPartitionedCall*conv2d_63/StatefulPartitionedCall:output:0batch_normalization_63_38251batch_normalization_63_38253batch_normalization_63_38255batch_normalization_63_38257*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_63_layer_call_and_return_conditional_losses_3725320
.batch_normalization_63/StatefulPartitionedCall�
leaky_re_lu_10/PartitionedCallPartitionedCall7batch_normalization_63/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_372682 
leaky_re_lu_10/PartitionedCall�
!conv2d_64/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_10/PartitionedCall:output:0conv2d_64_38261conv2d_64_38263*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_64_layer_call_and_return_conditional_losses_372812#
!conv2d_64/StatefulPartitionedCall�
.batch_normalization_64/StatefulPartitionedCallStatefulPartitionedCall*conv2d_64/StatefulPartitionedCall:output:0batch_normalization_64_38266batch_normalization_64_38268batch_normalization_64_38270batch_normalization_64_38272*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_64_layer_call_and_return_conditional_losses_3730420
.batch_normalization_64/StatefulPartitionedCall�
re_lu_53/PartitionedCallPartitionedCall7batch_normalization_64/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_re_lu_53_layer_call_and_return_conditional_losses_373192
re_lu_53/PartitionedCall�
!conv2d_65/StatefulPartitionedCallStatefulPartitionedCall!re_lu_53/PartitionedCall:output:0conv2d_65_38276conv2d_65_38278*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_65_layer_call_and_return_conditional_losses_373322#
!conv2d_65/StatefulPartitionedCall�
.batch_normalization_65/StatefulPartitionedCallStatefulPartitionedCall*conv2d_65/StatefulPartitionedCall:output:0batch_normalization_65_38281batch_normalization_65_38283batch_normalization_65_38285batch_normalization_65_38287*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_65_layer_call_and_return_conditional_losses_3735520
.batch_normalization_65/StatefulPartitionedCall�
re_lu_54/PartitionedCallPartitionedCall7batch_normalization_65/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_re_lu_54_layer_call_and_return_conditional_losses_373702
re_lu_54/PartitionedCall�
flatten_10/PartitionedCallPartitionedCall!re_lu_54/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_flatten_10_layer_call_and_return_conditional_losses_373782
flatten_10/PartitionedCall�
 dense_10/StatefulPartitionedCallStatefulPartitionedCall#flatten_10/PartitionedCall:output:0dense_10_38292dense_10_38294*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_10_layer_call_and_return_conditional_losses_373912"
 dense_10/StatefulPartitionedCall�
IdentityIdentity)dense_10/StatefulPartitionedCall:output:0/^batch_normalization_60/StatefulPartitionedCall/^batch_normalization_61/StatefulPartitionedCall/^batch_normalization_62/StatefulPartitionedCall/^batch_normalization_63/StatefulPartitionedCall/^batch_normalization_64/StatefulPartitionedCall/^batch_normalization_65/StatefulPartitionedCall"^conv2d_60/StatefulPartitionedCall"^conv2d_61/StatefulPartitionedCall"^conv2d_62/StatefulPartitionedCall"^conv2d_63/StatefulPartitionedCall"^conv2d_64/StatefulPartitionedCall"^conv2d_65/StatefulPartitionedCall!^dense_10/StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*z
_input_shapesi
g:���������(: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_60/StatefulPartitionedCall.batch_normalization_60/StatefulPartitionedCall2`
.batch_normalization_61/StatefulPartitionedCall.batch_normalization_61/StatefulPartitionedCall2`
.batch_normalization_62/StatefulPartitionedCall.batch_normalization_62/StatefulPartitionedCall2`
.batch_normalization_63/StatefulPartitionedCall.batch_normalization_63/StatefulPartitionedCall2`
.batch_normalization_64/StatefulPartitionedCall.batch_normalization_64/StatefulPartitionedCall2`
.batch_normalization_65/StatefulPartitionedCall.batch_normalization_65/StatefulPartitionedCall2F
!conv2d_60/StatefulPartitionedCall!conv2d_60/StatefulPartitionedCall2F
!conv2d_61/StatefulPartitionedCall!conv2d_61/StatefulPartitionedCall2F
!conv2d_62/StatefulPartitionedCall!conv2d_62/StatefulPartitionedCall2F
!conv2d_63/StatefulPartitionedCall!conv2d_63/StatefulPartitionedCall2F
!conv2d_64/StatefulPartitionedCall!conv2d_64/StatefulPartitionedCall2F
!conv2d_65/StatefulPartitionedCall!conv2d_65/StatefulPartitionedCall2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall:` \
/
_output_shapes
:���������(
)
_user_specified_nameconv2d_60_input
�
�
Q__inference_batch_normalization_62_layer_call_and_return_conditional_losses_37712

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_65_layer_call_and_return_conditional_losses_36998

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�m
�
H__inference_sequential_10_layer_call_and_return_conditional_losses_37398

inputs)
conv2d_60_37077: 
conv2d_60_37079: *
batch_normalization_60_37100: *
batch_normalization_60_37102: *
batch_normalization_60_37104: *
batch_normalization_60_37106: )
conv2d_61_37129: 
conv2d_61_37131:*
batch_normalization_61_37152:*
batch_normalization_61_37154:*
batch_normalization_61_37156:*
batch_normalization_61_37158:)
conv2d_62_37180:
conv2d_62_37182:*
batch_normalization_62_37203:*
batch_normalization_62_37205:*
batch_normalization_62_37207:*
batch_normalization_62_37209:)
conv2d_63_37231:
conv2d_63_37233:*
batch_normalization_63_37254:*
batch_normalization_63_37256:*
batch_normalization_63_37258:*
batch_normalization_63_37260:)
conv2d_64_37282:
conv2d_64_37284:*
batch_normalization_64_37305:*
batch_normalization_64_37307:*
batch_normalization_64_37309:*
batch_normalization_64_37311:)
conv2d_65_37333:
conv2d_65_37335:*
batch_normalization_65_37356:*
batch_normalization_65_37358:*
batch_normalization_65_37360:*
batch_normalization_65_37362:!
dense_10_37392:	�
dense_10_37394:
identity��.batch_normalization_60/StatefulPartitionedCall�.batch_normalization_61/StatefulPartitionedCall�.batch_normalization_62/StatefulPartitionedCall�.batch_normalization_63/StatefulPartitionedCall�.batch_normalization_64/StatefulPartitionedCall�.batch_normalization_65/StatefulPartitionedCall�!conv2d_60/StatefulPartitionedCall�!conv2d_61/StatefulPartitionedCall�!conv2d_62/StatefulPartitionedCall�!conv2d_63/StatefulPartitionedCall�!conv2d_64/StatefulPartitionedCall�!conv2d_65/StatefulPartitionedCall� dense_10/StatefulPartitionedCall�
!conv2d_60/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_60_37077conv2d_60_37079*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������( *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_60_layer_call_and_return_conditional_losses_370762#
!conv2d_60/StatefulPartitionedCall�
.batch_normalization_60/StatefulPartitionedCallStatefulPartitionedCall*conv2d_60/StatefulPartitionedCall:output:0batch_normalization_60_37100batch_normalization_60_37102batch_normalization_60_37104batch_normalization_60_37106*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������( *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_60_layer_call_and_return_conditional_losses_3709920
.batch_normalization_60/StatefulPartitionedCall�
re_lu_50/PartitionedCallPartitionedCall7batch_normalization_60/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������( * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_re_lu_50_layer_call_and_return_conditional_losses_371142
re_lu_50/PartitionedCall�
 max_pooling2d_10/PartitionedCallPartitionedCall!re_lu_50/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_364222"
 max_pooling2d_10/PartitionedCall�
!conv2d_61/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_10/PartitionedCall:output:0conv2d_61_37129conv2d_61_37131*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_61_layer_call_and_return_conditional_losses_371282#
!conv2d_61/StatefulPartitionedCall�
.batch_normalization_61/StatefulPartitionedCallStatefulPartitionedCall*conv2d_61/StatefulPartitionedCall:output:0batch_normalization_61_37152batch_normalization_61_37154batch_normalization_61_37156batch_normalization_61_37158*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_61_layer_call_and_return_conditional_losses_3715120
.batch_normalization_61/StatefulPartitionedCall�
re_lu_51/PartitionedCallPartitionedCall7batch_normalization_61/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_re_lu_51_layer_call_and_return_conditional_losses_371662
re_lu_51/PartitionedCall�
!conv2d_62/StatefulPartitionedCallStatefulPartitionedCall!re_lu_51/PartitionedCall:output:0conv2d_62_37180conv2d_62_37182*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_62_layer_call_and_return_conditional_losses_371792#
!conv2d_62/StatefulPartitionedCall�
.batch_normalization_62/StatefulPartitionedCallStatefulPartitionedCall*conv2d_62/StatefulPartitionedCall:output:0batch_normalization_62_37203batch_normalization_62_37205batch_normalization_62_37207batch_normalization_62_37209*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_62_layer_call_and_return_conditional_losses_3720220
.batch_normalization_62/StatefulPartitionedCall�
re_lu_52/PartitionedCallPartitionedCall7batch_normalization_62/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_re_lu_52_layer_call_and_return_conditional_losses_372172
re_lu_52/PartitionedCall�
!conv2d_63/StatefulPartitionedCallStatefulPartitionedCall!re_lu_52/PartitionedCall:output:0conv2d_63_37231conv2d_63_37233*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_63_layer_call_and_return_conditional_losses_372302#
!conv2d_63/StatefulPartitionedCall�
.batch_normalization_63/StatefulPartitionedCallStatefulPartitionedCall*conv2d_63/StatefulPartitionedCall:output:0batch_normalization_63_37254batch_normalization_63_37256batch_normalization_63_37258batch_normalization_63_37260*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_63_layer_call_and_return_conditional_losses_3725320
.batch_normalization_63/StatefulPartitionedCall�
leaky_re_lu_10/PartitionedCallPartitionedCall7batch_normalization_63/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_372682 
leaky_re_lu_10/PartitionedCall�
!conv2d_64/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_10/PartitionedCall:output:0conv2d_64_37282conv2d_64_37284*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_64_layer_call_and_return_conditional_losses_372812#
!conv2d_64/StatefulPartitionedCall�
.batch_normalization_64/StatefulPartitionedCallStatefulPartitionedCall*conv2d_64/StatefulPartitionedCall:output:0batch_normalization_64_37305batch_normalization_64_37307batch_normalization_64_37309batch_normalization_64_37311*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_64_layer_call_and_return_conditional_losses_3730420
.batch_normalization_64/StatefulPartitionedCall�
re_lu_53/PartitionedCallPartitionedCall7batch_normalization_64/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_re_lu_53_layer_call_and_return_conditional_losses_373192
re_lu_53/PartitionedCall�
!conv2d_65/StatefulPartitionedCallStatefulPartitionedCall!re_lu_53/PartitionedCall:output:0conv2d_65_37333conv2d_65_37335*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_65_layer_call_and_return_conditional_losses_373322#
!conv2d_65/StatefulPartitionedCall�
.batch_normalization_65/StatefulPartitionedCallStatefulPartitionedCall*conv2d_65/StatefulPartitionedCall:output:0batch_normalization_65_37356batch_normalization_65_37358batch_normalization_65_37360batch_normalization_65_37362*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_65_layer_call_and_return_conditional_losses_3735520
.batch_normalization_65/StatefulPartitionedCall�
re_lu_54/PartitionedCallPartitionedCall7batch_normalization_65/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_re_lu_54_layer_call_and_return_conditional_losses_373702
re_lu_54/PartitionedCall�
flatten_10/PartitionedCallPartitionedCall!re_lu_54/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_flatten_10_layer_call_and_return_conditional_losses_373782
flatten_10/PartitionedCall�
 dense_10/StatefulPartitionedCallStatefulPartitionedCall#flatten_10/PartitionedCall:output:0dense_10_37392dense_10_37394*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_10_layer_call_and_return_conditional_losses_373912"
 dense_10/StatefulPartitionedCall�
IdentityIdentity)dense_10/StatefulPartitionedCall:output:0/^batch_normalization_60/StatefulPartitionedCall/^batch_normalization_61/StatefulPartitionedCall/^batch_normalization_62/StatefulPartitionedCall/^batch_normalization_63/StatefulPartitionedCall/^batch_normalization_64/StatefulPartitionedCall/^batch_normalization_65/StatefulPartitionedCall"^conv2d_60/StatefulPartitionedCall"^conv2d_61/StatefulPartitionedCall"^conv2d_62/StatefulPartitionedCall"^conv2d_63/StatefulPartitionedCall"^conv2d_64/StatefulPartitionedCall"^conv2d_65/StatefulPartitionedCall!^dense_10/StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*z
_input_shapesi
g:���������(: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_60/StatefulPartitionedCall.batch_normalization_60/StatefulPartitionedCall2`
.batch_normalization_61/StatefulPartitionedCall.batch_normalization_61/StatefulPartitionedCall2`
.batch_normalization_62/StatefulPartitionedCall.batch_normalization_62/StatefulPartitionedCall2`
.batch_normalization_63/StatefulPartitionedCall.batch_normalization_63/StatefulPartitionedCall2`
.batch_normalization_64/StatefulPartitionedCall.batch_normalization_64/StatefulPartitionedCall2`
.batch_normalization_65/StatefulPartitionedCall.batch_normalization_65/StatefulPartitionedCall2F
!conv2d_60/StatefulPartitionedCall!conv2d_60/StatefulPartitionedCall2F
!conv2d_61/StatefulPartitionedCall!conv2d_61/StatefulPartitionedCall2F
!conv2d_62/StatefulPartitionedCall!conv2d_62/StatefulPartitionedCall2F
!conv2d_63/StatefulPartitionedCall!conv2d_63/StatefulPartitionedCall2F
!conv2d_64/StatefulPartitionedCall!conv2d_64/StatefulPartitionedCall2F
!conv2d_65/StatefulPartitionedCall!conv2d_65/StatefulPartitionedCall2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall:W S
/
_output_shapes
:���������(
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_62_layer_call_and_return_conditional_losses_39336

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
6__inference_batch_normalization_61_layer_call_fn_39221

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_61_layer_call_and_return_conditional_losses_371512
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
e
I__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_37268

inputs
identityl
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:���������*
alpha%���>2
	LeakyRelus
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_62_layer_call_and_return_conditional_losses_37202

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������:::::*
epsilon%o�:*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
��
�"
H__inference_sequential_10_layer_call_and_return_conditional_losses_38628

inputsB
(conv2d_60_conv2d_readvariableop_resource: 7
)conv2d_60_biasadd_readvariableop_resource: <
.batch_normalization_60_readvariableop_resource: >
0batch_normalization_60_readvariableop_1_resource: M
?batch_normalization_60_fusedbatchnormv3_readvariableop_resource: O
Abatch_normalization_60_fusedbatchnormv3_readvariableop_1_resource: B
(conv2d_61_conv2d_readvariableop_resource: 7
)conv2d_61_biasadd_readvariableop_resource:<
.batch_normalization_61_readvariableop_resource:>
0batch_normalization_61_readvariableop_1_resource:M
?batch_normalization_61_fusedbatchnormv3_readvariableop_resource:O
Abatch_normalization_61_fusedbatchnormv3_readvariableop_1_resource:B
(conv2d_62_conv2d_readvariableop_resource:7
)conv2d_62_biasadd_readvariableop_resource:<
.batch_normalization_62_readvariableop_resource:>
0batch_normalization_62_readvariableop_1_resource:M
?batch_normalization_62_fusedbatchnormv3_readvariableop_resource:O
Abatch_normalization_62_fusedbatchnormv3_readvariableop_1_resource:B
(conv2d_63_conv2d_readvariableop_resource:7
)conv2d_63_biasadd_readvariableop_resource:<
.batch_normalization_63_readvariableop_resource:>
0batch_normalization_63_readvariableop_1_resource:M
?batch_normalization_63_fusedbatchnormv3_readvariableop_resource:O
Abatch_normalization_63_fusedbatchnormv3_readvariableop_1_resource:B
(conv2d_64_conv2d_readvariableop_resource:7
)conv2d_64_biasadd_readvariableop_resource:<
.batch_normalization_64_readvariableop_resource:>
0batch_normalization_64_readvariableop_1_resource:M
?batch_normalization_64_fusedbatchnormv3_readvariableop_resource:O
Abatch_normalization_64_fusedbatchnormv3_readvariableop_1_resource:B
(conv2d_65_conv2d_readvariableop_resource:7
)conv2d_65_biasadd_readvariableop_resource:<
.batch_normalization_65_readvariableop_resource:>
0batch_normalization_65_readvariableop_1_resource:M
?batch_normalization_65_fusedbatchnormv3_readvariableop_resource:O
Abatch_normalization_65_fusedbatchnormv3_readvariableop_1_resource::
'dense_10_matmul_readvariableop_resource:	�6
(dense_10_biasadd_readvariableop_resource:
identity��6batch_normalization_60/FusedBatchNormV3/ReadVariableOp�8batch_normalization_60/FusedBatchNormV3/ReadVariableOp_1�%batch_normalization_60/ReadVariableOp�'batch_normalization_60/ReadVariableOp_1�6batch_normalization_61/FusedBatchNormV3/ReadVariableOp�8batch_normalization_61/FusedBatchNormV3/ReadVariableOp_1�%batch_normalization_61/ReadVariableOp�'batch_normalization_61/ReadVariableOp_1�6batch_normalization_62/FusedBatchNormV3/ReadVariableOp�8batch_normalization_62/FusedBatchNormV3/ReadVariableOp_1�%batch_normalization_62/ReadVariableOp�'batch_normalization_62/ReadVariableOp_1�6batch_normalization_63/FusedBatchNormV3/ReadVariableOp�8batch_normalization_63/FusedBatchNormV3/ReadVariableOp_1�%batch_normalization_63/ReadVariableOp�'batch_normalization_63/ReadVariableOp_1�6batch_normalization_64/FusedBatchNormV3/ReadVariableOp�8batch_normalization_64/FusedBatchNormV3/ReadVariableOp_1�%batch_normalization_64/ReadVariableOp�'batch_normalization_64/ReadVariableOp_1�6batch_normalization_65/FusedBatchNormV3/ReadVariableOp�8batch_normalization_65/FusedBatchNormV3/ReadVariableOp_1�%batch_normalization_65/ReadVariableOp�'batch_normalization_65/ReadVariableOp_1� conv2d_60/BiasAdd/ReadVariableOp�conv2d_60/Conv2D/ReadVariableOp� conv2d_61/BiasAdd/ReadVariableOp�conv2d_61/Conv2D/ReadVariableOp� conv2d_62/BiasAdd/ReadVariableOp�conv2d_62/Conv2D/ReadVariableOp� conv2d_63/BiasAdd/ReadVariableOp�conv2d_63/Conv2D/ReadVariableOp� conv2d_64/BiasAdd/ReadVariableOp�conv2d_64/Conv2D/ReadVariableOp� conv2d_65/BiasAdd/ReadVariableOp�conv2d_65/Conv2D/ReadVariableOp�dense_10/BiasAdd/ReadVariableOp�dense_10/MatMul/ReadVariableOp�
conv2d_60/Conv2D/ReadVariableOpReadVariableOp(conv2d_60_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_60/Conv2D/ReadVariableOp�
conv2d_60/Conv2DConv2Dinputs'conv2d_60/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������( *
paddingSAME*
strides
2
conv2d_60/Conv2D�
 conv2d_60/BiasAdd/ReadVariableOpReadVariableOp)conv2d_60_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_60/BiasAdd/ReadVariableOp�
conv2d_60/BiasAddBiasAddconv2d_60/Conv2D:output:0(conv2d_60/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������( 2
conv2d_60/BiasAdd~
conv2d_60/ReluReluconv2d_60/BiasAdd:output:0*
T0*/
_output_shapes
:���������( 2
conv2d_60/Relu�
%batch_normalization_60/ReadVariableOpReadVariableOp.batch_normalization_60_readvariableop_resource*
_output_shapes
: *
dtype02'
%batch_normalization_60/ReadVariableOp�
'batch_normalization_60/ReadVariableOp_1ReadVariableOp0batch_normalization_60_readvariableop_1_resource*
_output_shapes
: *
dtype02)
'batch_normalization_60/ReadVariableOp_1�
6batch_normalization_60/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_60_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype028
6batch_normalization_60/FusedBatchNormV3/ReadVariableOp�
8batch_normalization_60/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_60_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02:
8batch_normalization_60/FusedBatchNormV3/ReadVariableOp_1�
'batch_normalization_60/FusedBatchNormV3FusedBatchNormV3conv2d_60/Relu:activations:0-batch_normalization_60/ReadVariableOp:value:0/batch_normalization_60/ReadVariableOp_1:value:0>batch_normalization_60/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_60/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������( : : : : :*
epsilon%o�:*
is_training( 2)
'batch_normalization_60/FusedBatchNormV3�
re_lu_50/ReluRelu+batch_normalization_60/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������( 2
re_lu_50/Relu�
max_pooling2d_10/MaxPoolMaxPoolre_lu_50/Relu:activations:0*/
_output_shapes
:��������� *
ksize
*
paddingVALID*
strides
2
max_pooling2d_10/MaxPool�
conv2d_61/Conv2D/ReadVariableOpReadVariableOp(conv2d_61_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_61/Conv2D/ReadVariableOp�
conv2d_61/Conv2DConv2D!max_pooling2d_10/MaxPool:output:0'conv2d_61/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2
conv2d_61/Conv2D�
 conv2d_61/BiasAdd/ReadVariableOpReadVariableOp)conv2d_61_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_61/BiasAdd/ReadVariableOp�
conv2d_61/BiasAddBiasAddconv2d_61/Conv2D:output:0(conv2d_61/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2
conv2d_61/BiasAdd~
conv2d_61/ReluReluconv2d_61/BiasAdd:output:0*
T0*/
_output_shapes
:���������2
conv2d_61/Relu�
%batch_normalization_61/ReadVariableOpReadVariableOp.batch_normalization_61_readvariableop_resource*
_output_shapes
:*
dtype02'
%batch_normalization_61/ReadVariableOp�
'batch_normalization_61/ReadVariableOp_1ReadVariableOp0batch_normalization_61_readvariableop_1_resource*
_output_shapes
:*
dtype02)
'batch_normalization_61/ReadVariableOp_1�
6batch_normalization_61/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_61_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype028
6batch_normalization_61/FusedBatchNormV3/ReadVariableOp�
8batch_normalization_61/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_61_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02:
8batch_normalization_61/FusedBatchNormV3/ReadVariableOp_1�
'batch_normalization_61/FusedBatchNormV3FusedBatchNormV3conv2d_61/Relu:activations:0-batch_normalization_61/ReadVariableOp:value:0/batch_normalization_61/ReadVariableOp_1:value:0>batch_normalization_61/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_61/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������:::::*
epsilon%o�:*
is_training( 2)
'batch_normalization_61/FusedBatchNormV3�
re_lu_51/ReluRelu+batch_normalization_61/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������2
re_lu_51/Relu�
conv2d_62/Conv2D/ReadVariableOpReadVariableOp(conv2d_62_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02!
conv2d_62/Conv2D/ReadVariableOp�
conv2d_62/Conv2DConv2Dre_lu_51/Relu:activations:0'conv2d_62/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2
conv2d_62/Conv2D�
 conv2d_62/BiasAdd/ReadVariableOpReadVariableOp)conv2d_62_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_62/BiasAdd/ReadVariableOp�
conv2d_62/BiasAddBiasAddconv2d_62/Conv2D:output:0(conv2d_62/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2
conv2d_62/BiasAdd~
conv2d_62/ReluReluconv2d_62/BiasAdd:output:0*
T0*/
_output_shapes
:���������2
conv2d_62/Relu�
%batch_normalization_62/ReadVariableOpReadVariableOp.batch_normalization_62_readvariableop_resource*
_output_shapes
:*
dtype02'
%batch_normalization_62/ReadVariableOp�
'batch_normalization_62/ReadVariableOp_1ReadVariableOp0batch_normalization_62_readvariableop_1_resource*
_output_shapes
:*
dtype02)
'batch_normalization_62/ReadVariableOp_1�
6batch_normalization_62/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_62_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype028
6batch_normalization_62/FusedBatchNormV3/ReadVariableOp�
8batch_normalization_62/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_62_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02:
8batch_normalization_62/FusedBatchNormV3/ReadVariableOp_1�
'batch_normalization_62/FusedBatchNormV3FusedBatchNormV3conv2d_62/Relu:activations:0-batch_normalization_62/ReadVariableOp:value:0/batch_normalization_62/ReadVariableOp_1:value:0>batch_normalization_62/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_62/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������:::::*
epsilon%o�:*
is_training( 2)
'batch_normalization_62/FusedBatchNormV3�
re_lu_52/ReluRelu+batch_normalization_62/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������2
re_lu_52/Relu�
conv2d_63/Conv2D/ReadVariableOpReadVariableOp(conv2d_63_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02!
conv2d_63/Conv2D/ReadVariableOp�
conv2d_63/Conv2DConv2Dre_lu_52/Relu:activations:0'conv2d_63/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2
conv2d_63/Conv2D�
 conv2d_63/BiasAdd/ReadVariableOpReadVariableOp)conv2d_63_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_63/BiasAdd/ReadVariableOp�
conv2d_63/BiasAddBiasAddconv2d_63/Conv2D:output:0(conv2d_63/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2
conv2d_63/BiasAdd~
conv2d_63/ReluReluconv2d_63/BiasAdd:output:0*
T0*/
_output_shapes
:���������2
conv2d_63/Relu�
%batch_normalization_63/ReadVariableOpReadVariableOp.batch_normalization_63_readvariableop_resource*
_output_shapes
:*
dtype02'
%batch_normalization_63/ReadVariableOp�
'batch_normalization_63/ReadVariableOp_1ReadVariableOp0batch_normalization_63_readvariableop_1_resource*
_output_shapes
:*
dtype02)
'batch_normalization_63/ReadVariableOp_1�
6batch_normalization_63/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_63_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype028
6batch_normalization_63/FusedBatchNormV3/ReadVariableOp�
8batch_normalization_63/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_63_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02:
8batch_normalization_63/FusedBatchNormV3/ReadVariableOp_1�
'batch_normalization_63/FusedBatchNormV3FusedBatchNormV3conv2d_63/Relu:activations:0-batch_normalization_63/ReadVariableOp:value:0/batch_normalization_63/ReadVariableOp_1:value:0>batch_normalization_63/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_63/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������:::::*
epsilon%o�:*
is_training( 2)
'batch_normalization_63/FusedBatchNormV3�
leaky_re_lu_10/LeakyRelu	LeakyRelu+batch_normalization_63/FusedBatchNormV3:y:0*/
_output_shapes
:���������*
alpha%���>2
leaky_re_lu_10/LeakyRelu�
conv2d_64/Conv2D/ReadVariableOpReadVariableOp(conv2d_64_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02!
conv2d_64/Conv2D/ReadVariableOp�
conv2d_64/Conv2DConv2D&leaky_re_lu_10/LeakyRelu:activations:0'conv2d_64/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2
conv2d_64/Conv2D�
 conv2d_64/BiasAdd/ReadVariableOpReadVariableOp)conv2d_64_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_64/BiasAdd/ReadVariableOp�
conv2d_64/BiasAddBiasAddconv2d_64/Conv2D:output:0(conv2d_64/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2
conv2d_64/BiasAdd~
conv2d_64/ReluReluconv2d_64/BiasAdd:output:0*
T0*/
_output_shapes
:���������2
conv2d_64/Relu�
%batch_normalization_64/ReadVariableOpReadVariableOp.batch_normalization_64_readvariableop_resource*
_output_shapes
:*
dtype02'
%batch_normalization_64/ReadVariableOp�
'batch_normalization_64/ReadVariableOp_1ReadVariableOp0batch_normalization_64_readvariableop_1_resource*
_output_shapes
:*
dtype02)
'batch_normalization_64/ReadVariableOp_1�
6batch_normalization_64/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_64_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype028
6batch_normalization_64/FusedBatchNormV3/ReadVariableOp�
8batch_normalization_64/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_64_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02:
8batch_normalization_64/FusedBatchNormV3/ReadVariableOp_1�
'batch_normalization_64/FusedBatchNormV3FusedBatchNormV3conv2d_64/Relu:activations:0-batch_normalization_64/ReadVariableOp:value:0/batch_normalization_64/ReadVariableOp_1:value:0>batch_normalization_64/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_64/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������:::::*
epsilon%o�:*
is_training( 2)
'batch_normalization_64/FusedBatchNormV3�
re_lu_53/ReluRelu+batch_normalization_64/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������2
re_lu_53/Relu�
conv2d_65/Conv2D/ReadVariableOpReadVariableOp(conv2d_65_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02!
conv2d_65/Conv2D/ReadVariableOp�
conv2d_65/Conv2DConv2Dre_lu_53/Relu:activations:0'conv2d_65/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2
conv2d_65/Conv2D�
 conv2d_65/BiasAdd/ReadVariableOpReadVariableOp)conv2d_65_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_65/BiasAdd/ReadVariableOp�
conv2d_65/BiasAddBiasAddconv2d_65/Conv2D:output:0(conv2d_65/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2
conv2d_65/BiasAdd~
conv2d_65/ReluReluconv2d_65/BiasAdd:output:0*
T0*/
_output_shapes
:���������2
conv2d_65/Relu�
%batch_normalization_65/ReadVariableOpReadVariableOp.batch_normalization_65_readvariableop_resource*
_output_shapes
:*
dtype02'
%batch_normalization_65/ReadVariableOp�
'batch_normalization_65/ReadVariableOp_1ReadVariableOp0batch_normalization_65_readvariableop_1_resource*
_output_shapes
:*
dtype02)
'batch_normalization_65/ReadVariableOp_1�
6batch_normalization_65/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_65_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype028
6batch_normalization_65/FusedBatchNormV3/ReadVariableOp�
8batch_normalization_65/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_65_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02:
8batch_normalization_65/FusedBatchNormV3/ReadVariableOp_1�
'batch_normalization_65/FusedBatchNormV3FusedBatchNormV3conv2d_65/Relu:activations:0-batch_normalization_65/ReadVariableOp:value:0/batch_normalization_65/ReadVariableOp_1:value:0>batch_normalization_65/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_65/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������:::::*
epsilon%o�:*
is_training( 2)
'batch_normalization_65/FusedBatchNormV3�
re_lu_54/ReluRelu+batch_normalization_65/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������2
re_lu_54/Reluu
flatten_10/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����   2
flatten_10/Const�
flatten_10/ReshapeReshapere_lu_54/Relu:activations:0flatten_10/Const:output:0*
T0*(
_output_shapes
:����������2
flatten_10/Reshape�
dense_10/MatMul/ReadVariableOpReadVariableOp'dense_10_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02 
dense_10/MatMul/ReadVariableOp�
dense_10/MatMulMatMulflatten_10/Reshape:output:0&dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_10/MatMul�
dense_10/BiasAdd/ReadVariableOpReadVariableOp(dense_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_10/BiasAdd/ReadVariableOp�
dense_10/BiasAddBiasAdddense_10/MatMul:product:0'dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_10/BiasAdd|
dense_10/SigmoidSigmoiddense_10/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
dense_10/Sigmoid�
IdentityIdentitydense_10/Sigmoid:y:07^batch_normalization_60/FusedBatchNormV3/ReadVariableOp9^batch_normalization_60/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_60/ReadVariableOp(^batch_normalization_60/ReadVariableOp_17^batch_normalization_61/FusedBatchNormV3/ReadVariableOp9^batch_normalization_61/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_61/ReadVariableOp(^batch_normalization_61/ReadVariableOp_17^batch_normalization_62/FusedBatchNormV3/ReadVariableOp9^batch_normalization_62/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_62/ReadVariableOp(^batch_normalization_62/ReadVariableOp_17^batch_normalization_63/FusedBatchNormV3/ReadVariableOp9^batch_normalization_63/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_63/ReadVariableOp(^batch_normalization_63/ReadVariableOp_17^batch_normalization_64/FusedBatchNormV3/ReadVariableOp9^batch_normalization_64/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_64/ReadVariableOp(^batch_normalization_64/ReadVariableOp_17^batch_normalization_65/FusedBatchNormV3/ReadVariableOp9^batch_normalization_65/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_65/ReadVariableOp(^batch_normalization_65/ReadVariableOp_1!^conv2d_60/BiasAdd/ReadVariableOp ^conv2d_60/Conv2D/ReadVariableOp!^conv2d_61/BiasAdd/ReadVariableOp ^conv2d_61/Conv2D/ReadVariableOp!^conv2d_62/BiasAdd/ReadVariableOp ^conv2d_62/Conv2D/ReadVariableOp!^conv2d_63/BiasAdd/ReadVariableOp ^conv2d_63/Conv2D/ReadVariableOp!^conv2d_64/BiasAdd/ReadVariableOp ^conv2d_64/Conv2D/ReadVariableOp!^conv2d_65/BiasAdd/ReadVariableOp ^conv2d_65/Conv2D/ReadVariableOp ^dense_10/BiasAdd/ReadVariableOp^dense_10/MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*z
_input_shapesi
g:���������(: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2p
6batch_normalization_60/FusedBatchNormV3/ReadVariableOp6batch_normalization_60/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_60/FusedBatchNormV3/ReadVariableOp_18batch_normalization_60/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_60/ReadVariableOp%batch_normalization_60/ReadVariableOp2R
'batch_normalization_60/ReadVariableOp_1'batch_normalization_60/ReadVariableOp_12p
6batch_normalization_61/FusedBatchNormV3/ReadVariableOp6batch_normalization_61/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_61/FusedBatchNormV3/ReadVariableOp_18batch_normalization_61/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_61/ReadVariableOp%batch_normalization_61/ReadVariableOp2R
'batch_normalization_61/ReadVariableOp_1'batch_normalization_61/ReadVariableOp_12p
6batch_normalization_62/FusedBatchNormV3/ReadVariableOp6batch_normalization_62/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_62/FusedBatchNormV3/ReadVariableOp_18batch_normalization_62/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_62/ReadVariableOp%batch_normalization_62/ReadVariableOp2R
'batch_normalization_62/ReadVariableOp_1'batch_normalization_62/ReadVariableOp_12p
6batch_normalization_63/FusedBatchNormV3/ReadVariableOp6batch_normalization_63/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_63/FusedBatchNormV3/ReadVariableOp_18batch_normalization_63/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_63/ReadVariableOp%batch_normalization_63/ReadVariableOp2R
'batch_normalization_63/ReadVariableOp_1'batch_normalization_63/ReadVariableOp_12p
6batch_normalization_64/FusedBatchNormV3/ReadVariableOp6batch_normalization_64/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_64/FusedBatchNormV3/ReadVariableOp_18batch_normalization_64/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_64/ReadVariableOp%batch_normalization_64/ReadVariableOp2R
'batch_normalization_64/ReadVariableOp_1'batch_normalization_64/ReadVariableOp_12p
6batch_normalization_65/FusedBatchNormV3/ReadVariableOp6batch_normalization_65/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_65/FusedBatchNormV3/ReadVariableOp_18batch_normalization_65/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_65/ReadVariableOp%batch_normalization_65/ReadVariableOp2R
'batch_normalization_65/ReadVariableOp_1'batch_normalization_65/ReadVariableOp_12D
 conv2d_60/BiasAdd/ReadVariableOp conv2d_60/BiasAdd/ReadVariableOp2B
conv2d_60/Conv2D/ReadVariableOpconv2d_60/Conv2D/ReadVariableOp2D
 conv2d_61/BiasAdd/ReadVariableOp conv2d_61/BiasAdd/ReadVariableOp2B
conv2d_61/Conv2D/ReadVariableOpconv2d_61/Conv2D/ReadVariableOp2D
 conv2d_62/BiasAdd/ReadVariableOp conv2d_62/BiasAdd/ReadVariableOp2B
conv2d_62/Conv2D/ReadVariableOpconv2d_62/Conv2D/ReadVariableOp2D
 conv2d_63/BiasAdd/ReadVariableOp conv2d_63/BiasAdd/ReadVariableOp2B
conv2d_63/Conv2D/ReadVariableOpconv2d_63/Conv2D/ReadVariableOp2D
 conv2d_64/BiasAdd/ReadVariableOp conv2d_64/BiasAdd/ReadVariableOp2B
conv2d_64/Conv2D/ReadVariableOpconv2d_64/Conv2D/ReadVariableOp2D
 conv2d_65/BiasAdd/ReadVariableOp conv2d_65/BiasAdd/ReadVariableOp2B
conv2d_65/Conv2D/ReadVariableOpconv2d_65/Conv2D/ReadVariableOp2B
dense_10/BiasAdd/ReadVariableOpdense_10/BiasAdd/ReadVariableOp2@
dense_10/MatMul/ReadVariableOpdense_10/MatMul/ReadVariableOp:W S
/
_output_shapes
:���������(
 
_user_specified_nameinputs
�
�
)__inference_conv2d_61_layer_call_fn_39110

inputs!
unknown: 
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_61_layer_call_and_return_conditional_losses_371282
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
6__inference_batch_normalization_65_layer_call_fn_39850

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_65_layer_call_and_return_conditional_losses_375322
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
6__inference_batch_normalization_65_layer_call_fn_39824

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_65_layer_call_and_return_conditional_losses_369982
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
D__inference_conv2d_60_layer_call_and_return_conditional_losses_37076

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������( *
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������( 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������( 2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:���������( 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������(: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������(
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_60_layer_call_and_return_conditional_losses_37832

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������( : : : : :*
epsilon%o�:*
exponential_avg_factor%
�#<2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:���������( 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������( : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:���������( 
 
_user_specified_nameinputs
�m
�
H__inference_sequential_10_layer_call_and_return_conditional_losses_38399
conv2d_60_input)
conv2d_60_38301: 
conv2d_60_38303: *
batch_normalization_60_38306: *
batch_normalization_60_38308: *
batch_normalization_60_38310: *
batch_normalization_60_38312: )
conv2d_61_38317: 
conv2d_61_38319:*
batch_normalization_61_38322:*
batch_normalization_61_38324:*
batch_normalization_61_38326:*
batch_normalization_61_38328:)
conv2d_62_38332:
conv2d_62_38334:*
batch_normalization_62_38337:*
batch_normalization_62_38339:*
batch_normalization_62_38341:*
batch_normalization_62_38343:)
conv2d_63_38347:
conv2d_63_38349:*
batch_normalization_63_38352:*
batch_normalization_63_38354:*
batch_normalization_63_38356:*
batch_normalization_63_38358:)
conv2d_64_38362:
conv2d_64_38364:*
batch_normalization_64_38367:*
batch_normalization_64_38369:*
batch_normalization_64_38371:*
batch_normalization_64_38373:)
conv2d_65_38377:
conv2d_65_38379:*
batch_normalization_65_38382:*
batch_normalization_65_38384:*
batch_normalization_65_38386:*
batch_normalization_65_38388:!
dense_10_38393:	�
dense_10_38395:
identity��.batch_normalization_60/StatefulPartitionedCall�.batch_normalization_61/StatefulPartitionedCall�.batch_normalization_62/StatefulPartitionedCall�.batch_normalization_63/StatefulPartitionedCall�.batch_normalization_64/StatefulPartitionedCall�.batch_normalization_65/StatefulPartitionedCall�!conv2d_60/StatefulPartitionedCall�!conv2d_61/StatefulPartitionedCall�!conv2d_62/StatefulPartitionedCall�!conv2d_63/StatefulPartitionedCall�!conv2d_64/StatefulPartitionedCall�!conv2d_65/StatefulPartitionedCall� dense_10/StatefulPartitionedCall�
!conv2d_60/StatefulPartitionedCallStatefulPartitionedCallconv2d_60_inputconv2d_60_38301conv2d_60_38303*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������( *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_60_layer_call_and_return_conditional_losses_370762#
!conv2d_60/StatefulPartitionedCall�
.batch_normalization_60/StatefulPartitionedCallStatefulPartitionedCall*conv2d_60/StatefulPartitionedCall:output:0batch_normalization_60_38306batch_normalization_60_38308batch_normalization_60_38310batch_normalization_60_38312*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������( *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_60_layer_call_and_return_conditional_losses_3783220
.batch_normalization_60/StatefulPartitionedCall�
re_lu_50/PartitionedCallPartitionedCall7batch_normalization_60/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������( * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_re_lu_50_layer_call_and_return_conditional_losses_371142
re_lu_50/PartitionedCall�
 max_pooling2d_10/PartitionedCallPartitionedCall!re_lu_50/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_364222"
 max_pooling2d_10/PartitionedCall�
!conv2d_61/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_10/PartitionedCall:output:0conv2d_61_38317conv2d_61_38319*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_61_layer_call_and_return_conditional_losses_371282#
!conv2d_61/StatefulPartitionedCall�
.batch_normalization_61/StatefulPartitionedCallStatefulPartitionedCall*conv2d_61/StatefulPartitionedCall:output:0batch_normalization_61_38322batch_normalization_61_38324batch_normalization_61_38326batch_normalization_61_38328*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_61_layer_call_and_return_conditional_losses_3777220
.batch_normalization_61/StatefulPartitionedCall�
re_lu_51/PartitionedCallPartitionedCall7batch_normalization_61/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_re_lu_51_layer_call_and_return_conditional_losses_371662
re_lu_51/PartitionedCall�
!conv2d_62/StatefulPartitionedCallStatefulPartitionedCall!re_lu_51/PartitionedCall:output:0conv2d_62_38332conv2d_62_38334*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_62_layer_call_and_return_conditional_losses_371792#
!conv2d_62/StatefulPartitionedCall�
.batch_normalization_62/StatefulPartitionedCallStatefulPartitionedCall*conv2d_62/StatefulPartitionedCall:output:0batch_normalization_62_38337batch_normalization_62_38339batch_normalization_62_38341batch_normalization_62_38343*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_62_layer_call_and_return_conditional_losses_3771220
.batch_normalization_62/StatefulPartitionedCall�
re_lu_52/PartitionedCallPartitionedCall7batch_normalization_62/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_re_lu_52_layer_call_and_return_conditional_losses_372172
re_lu_52/PartitionedCall�
!conv2d_63/StatefulPartitionedCallStatefulPartitionedCall!re_lu_52/PartitionedCall:output:0conv2d_63_38347conv2d_63_38349*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_63_layer_call_and_return_conditional_losses_372302#
!conv2d_63/StatefulPartitionedCall�
.batch_normalization_63/StatefulPartitionedCallStatefulPartitionedCall*conv2d_63/StatefulPartitionedCall:output:0batch_normalization_63_38352batch_normalization_63_38354batch_normalization_63_38356batch_normalization_63_38358*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_63_layer_call_and_return_conditional_losses_3765220
.batch_normalization_63/StatefulPartitionedCall�
leaky_re_lu_10/PartitionedCallPartitionedCall7batch_normalization_63/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_372682 
leaky_re_lu_10/PartitionedCall�
!conv2d_64/StatefulPartitionedCallStatefulPartitionedCall'leaky_re_lu_10/PartitionedCall:output:0conv2d_64_38362conv2d_64_38364*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_64_layer_call_and_return_conditional_losses_372812#
!conv2d_64/StatefulPartitionedCall�
.batch_normalization_64/StatefulPartitionedCallStatefulPartitionedCall*conv2d_64/StatefulPartitionedCall:output:0batch_normalization_64_38367batch_normalization_64_38369batch_normalization_64_38371batch_normalization_64_38373*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_64_layer_call_and_return_conditional_losses_3759220
.batch_normalization_64/StatefulPartitionedCall�
re_lu_53/PartitionedCallPartitionedCall7batch_normalization_64/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_re_lu_53_layer_call_and_return_conditional_losses_373192
re_lu_53/PartitionedCall�
!conv2d_65/StatefulPartitionedCallStatefulPartitionedCall!re_lu_53/PartitionedCall:output:0conv2d_65_38377conv2d_65_38379*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_65_layer_call_and_return_conditional_losses_373322#
!conv2d_65/StatefulPartitionedCall�
.batch_normalization_65/StatefulPartitionedCallStatefulPartitionedCall*conv2d_65/StatefulPartitionedCall:output:0batch_normalization_65_38382batch_normalization_65_38384batch_normalization_65_38386batch_normalization_65_38388*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_65_layer_call_and_return_conditional_losses_3753220
.batch_normalization_65/StatefulPartitionedCall�
re_lu_54/PartitionedCallPartitionedCall7batch_normalization_65/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_re_lu_54_layer_call_and_return_conditional_losses_373702
re_lu_54/PartitionedCall�
flatten_10/PartitionedCallPartitionedCall!re_lu_54/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_flatten_10_layer_call_and_return_conditional_losses_373782
flatten_10/PartitionedCall�
 dense_10/StatefulPartitionedCallStatefulPartitionedCall#flatten_10/PartitionedCall:output:0dense_10_38393dense_10_38395*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_10_layer_call_and_return_conditional_losses_373912"
 dense_10/StatefulPartitionedCall�
IdentityIdentity)dense_10/StatefulPartitionedCall:output:0/^batch_normalization_60/StatefulPartitionedCall/^batch_normalization_61/StatefulPartitionedCall/^batch_normalization_62/StatefulPartitionedCall/^batch_normalization_63/StatefulPartitionedCall/^batch_normalization_64/StatefulPartitionedCall/^batch_normalization_65/StatefulPartitionedCall"^conv2d_60/StatefulPartitionedCall"^conv2d_61/StatefulPartitionedCall"^conv2d_62/StatefulPartitionedCall"^conv2d_63/StatefulPartitionedCall"^conv2d_64/StatefulPartitionedCall"^conv2d_65/StatefulPartitionedCall!^dense_10/StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*z
_input_shapesi
g:���������(: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_60/StatefulPartitionedCall.batch_normalization_60/StatefulPartitionedCall2`
.batch_normalization_61/StatefulPartitionedCall.batch_normalization_61/StatefulPartitionedCall2`
.batch_normalization_62/StatefulPartitionedCall.batch_normalization_62/StatefulPartitionedCall2`
.batch_normalization_63/StatefulPartitionedCall.batch_normalization_63/StatefulPartitionedCall2`
.batch_normalization_64/StatefulPartitionedCall.batch_normalization_64/StatefulPartitionedCall2`
.batch_normalization_65/StatefulPartitionedCall.batch_normalization_65/StatefulPartitionedCall2F
!conv2d_60/StatefulPartitionedCall!conv2d_60/StatefulPartitionedCall2F
!conv2d_61/StatefulPartitionedCall!conv2d_61/StatefulPartitionedCall2F
!conv2d_62/StatefulPartitionedCall!conv2d_62/StatefulPartitionedCall2F
!conv2d_63/StatefulPartitionedCall!conv2d_63/StatefulPartitionedCall2F
!conv2d_64/StatefulPartitionedCall!conv2d_64/StatefulPartitionedCall2F
!conv2d_65/StatefulPartitionedCall!conv2d_65/StatefulPartitionedCall2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall:` \
/
_output_shapes
:���������(
)
_user_specified_nameconv2d_60_input
�
�
Q__inference_batch_normalization_60_layer_call_and_return_conditional_losses_38974

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+��������������������������� : : : : :*
epsilon%o�:*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+��������������������������� 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�
�
)__inference_conv2d_62_layer_call_fn_39264

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_62_layer_call_and_return_conditional_losses_371792
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
D__inference_conv2d_61_layer_call_and_return_conditional_losses_39101

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
�
)__inference_conv2d_64_layer_call_fn_39572

inputs!
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_64_layer_call_and_return_conditional_losses_372812
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
6__inference_batch_normalization_61_layer_call_fn_39208

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_61_layer_call_and_return_conditional_losses_364942
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
6__inference_batch_normalization_64_layer_call_fn_39670

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_64_layer_call_and_return_conditional_losses_368722
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
_
C__inference_re_lu_50_layer_call_and_return_conditional_losses_37114

inputs
identityV
ReluReluinputs*
T0*/
_output_shapes
:���������( 2
Relun
IdentityIdentityRelu:activations:0*
T0*/
_output_shapes
:���������( 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������( :W S
/
_output_shapes
:���������( 
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_61_layer_call_and_return_conditional_losses_36450

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
a
E__inference_flatten_10_layer_call_and_return_conditional_losses_37378

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"�����   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
D__inference_conv2d_62_layer_call_and_return_conditional_losses_37179

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
D__inference_conv2d_65_layer_call_and_return_conditional_losses_39717

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
6__inference_batch_normalization_60_layer_call_fn_39041

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+��������������������������� *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_60_layer_call_and_return_conditional_losses_363122
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+��������������������������� 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_60_layer_call_and_return_conditional_losses_38992

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+��������������������������� : : : : :*
epsilon%o�:*
exponential_avg_factor%
�#<2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+��������������������������� 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_63_layer_call_and_return_conditional_losses_37253

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������:::::*
epsilon%o�:*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
��
�%
H__inference_sequential_10_layer_call_and_return_conditional_losses_38774

inputsB
(conv2d_60_conv2d_readvariableop_resource: 7
)conv2d_60_biasadd_readvariableop_resource: <
.batch_normalization_60_readvariableop_resource: >
0batch_normalization_60_readvariableop_1_resource: M
?batch_normalization_60_fusedbatchnormv3_readvariableop_resource: O
Abatch_normalization_60_fusedbatchnormv3_readvariableop_1_resource: B
(conv2d_61_conv2d_readvariableop_resource: 7
)conv2d_61_biasadd_readvariableop_resource:<
.batch_normalization_61_readvariableop_resource:>
0batch_normalization_61_readvariableop_1_resource:M
?batch_normalization_61_fusedbatchnormv3_readvariableop_resource:O
Abatch_normalization_61_fusedbatchnormv3_readvariableop_1_resource:B
(conv2d_62_conv2d_readvariableop_resource:7
)conv2d_62_biasadd_readvariableop_resource:<
.batch_normalization_62_readvariableop_resource:>
0batch_normalization_62_readvariableop_1_resource:M
?batch_normalization_62_fusedbatchnormv3_readvariableop_resource:O
Abatch_normalization_62_fusedbatchnormv3_readvariableop_1_resource:B
(conv2d_63_conv2d_readvariableop_resource:7
)conv2d_63_biasadd_readvariableop_resource:<
.batch_normalization_63_readvariableop_resource:>
0batch_normalization_63_readvariableop_1_resource:M
?batch_normalization_63_fusedbatchnormv3_readvariableop_resource:O
Abatch_normalization_63_fusedbatchnormv3_readvariableop_1_resource:B
(conv2d_64_conv2d_readvariableop_resource:7
)conv2d_64_biasadd_readvariableop_resource:<
.batch_normalization_64_readvariableop_resource:>
0batch_normalization_64_readvariableop_1_resource:M
?batch_normalization_64_fusedbatchnormv3_readvariableop_resource:O
Abatch_normalization_64_fusedbatchnormv3_readvariableop_1_resource:B
(conv2d_65_conv2d_readvariableop_resource:7
)conv2d_65_biasadd_readvariableop_resource:<
.batch_normalization_65_readvariableop_resource:>
0batch_normalization_65_readvariableop_1_resource:M
?batch_normalization_65_fusedbatchnormv3_readvariableop_resource:O
Abatch_normalization_65_fusedbatchnormv3_readvariableop_1_resource::
'dense_10_matmul_readvariableop_resource:	�6
(dense_10_biasadd_readvariableop_resource:
identity��%batch_normalization_60/AssignNewValue�'batch_normalization_60/AssignNewValue_1�6batch_normalization_60/FusedBatchNormV3/ReadVariableOp�8batch_normalization_60/FusedBatchNormV3/ReadVariableOp_1�%batch_normalization_60/ReadVariableOp�'batch_normalization_60/ReadVariableOp_1�%batch_normalization_61/AssignNewValue�'batch_normalization_61/AssignNewValue_1�6batch_normalization_61/FusedBatchNormV3/ReadVariableOp�8batch_normalization_61/FusedBatchNormV3/ReadVariableOp_1�%batch_normalization_61/ReadVariableOp�'batch_normalization_61/ReadVariableOp_1�%batch_normalization_62/AssignNewValue�'batch_normalization_62/AssignNewValue_1�6batch_normalization_62/FusedBatchNormV3/ReadVariableOp�8batch_normalization_62/FusedBatchNormV3/ReadVariableOp_1�%batch_normalization_62/ReadVariableOp�'batch_normalization_62/ReadVariableOp_1�%batch_normalization_63/AssignNewValue�'batch_normalization_63/AssignNewValue_1�6batch_normalization_63/FusedBatchNormV3/ReadVariableOp�8batch_normalization_63/FusedBatchNormV3/ReadVariableOp_1�%batch_normalization_63/ReadVariableOp�'batch_normalization_63/ReadVariableOp_1�%batch_normalization_64/AssignNewValue�'batch_normalization_64/AssignNewValue_1�6batch_normalization_64/FusedBatchNormV3/ReadVariableOp�8batch_normalization_64/FusedBatchNormV3/ReadVariableOp_1�%batch_normalization_64/ReadVariableOp�'batch_normalization_64/ReadVariableOp_1�%batch_normalization_65/AssignNewValue�'batch_normalization_65/AssignNewValue_1�6batch_normalization_65/FusedBatchNormV3/ReadVariableOp�8batch_normalization_65/FusedBatchNormV3/ReadVariableOp_1�%batch_normalization_65/ReadVariableOp�'batch_normalization_65/ReadVariableOp_1� conv2d_60/BiasAdd/ReadVariableOp�conv2d_60/Conv2D/ReadVariableOp� conv2d_61/BiasAdd/ReadVariableOp�conv2d_61/Conv2D/ReadVariableOp� conv2d_62/BiasAdd/ReadVariableOp�conv2d_62/Conv2D/ReadVariableOp� conv2d_63/BiasAdd/ReadVariableOp�conv2d_63/Conv2D/ReadVariableOp� conv2d_64/BiasAdd/ReadVariableOp�conv2d_64/Conv2D/ReadVariableOp� conv2d_65/BiasAdd/ReadVariableOp�conv2d_65/Conv2D/ReadVariableOp�dense_10/BiasAdd/ReadVariableOp�dense_10/MatMul/ReadVariableOp�
conv2d_60/Conv2D/ReadVariableOpReadVariableOp(conv2d_60_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_60/Conv2D/ReadVariableOp�
conv2d_60/Conv2DConv2Dinputs'conv2d_60/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������( *
paddingSAME*
strides
2
conv2d_60/Conv2D�
 conv2d_60/BiasAdd/ReadVariableOpReadVariableOp)conv2d_60_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_60/BiasAdd/ReadVariableOp�
conv2d_60/BiasAddBiasAddconv2d_60/Conv2D:output:0(conv2d_60/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������( 2
conv2d_60/BiasAdd~
conv2d_60/ReluReluconv2d_60/BiasAdd:output:0*
T0*/
_output_shapes
:���������( 2
conv2d_60/Relu�
%batch_normalization_60/ReadVariableOpReadVariableOp.batch_normalization_60_readvariableop_resource*
_output_shapes
: *
dtype02'
%batch_normalization_60/ReadVariableOp�
'batch_normalization_60/ReadVariableOp_1ReadVariableOp0batch_normalization_60_readvariableop_1_resource*
_output_shapes
: *
dtype02)
'batch_normalization_60/ReadVariableOp_1�
6batch_normalization_60/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_60_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype028
6batch_normalization_60/FusedBatchNormV3/ReadVariableOp�
8batch_normalization_60/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_60_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02:
8batch_normalization_60/FusedBatchNormV3/ReadVariableOp_1�
'batch_normalization_60/FusedBatchNormV3FusedBatchNormV3conv2d_60/Relu:activations:0-batch_normalization_60/ReadVariableOp:value:0/batch_normalization_60/ReadVariableOp_1:value:0>batch_normalization_60/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_60/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������( : : : : :*
epsilon%o�:*
exponential_avg_factor%
�#<2)
'batch_normalization_60/FusedBatchNormV3�
%batch_normalization_60/AssignNewValueAssignVariableOp?batch_normalization_60_fusedbatchnormv3_readvariableop_resource4batch_normalization_60/FusedBatchNormV3:batch_mean:07^batch_normalization_60/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_60/AssignNewValue�
'batch_normalization_60/AssignNewValue_1AssignVariableOpAbatch_normalization_60_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_60/FusedBatchNormV3:batch_variance:09^batch_normalization_60/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02)
'batch_normalization_60/AssignNewValue_1�
re_lu_50/ReluRelu+batch_normalization_60/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������( 2
re_lu_50/Relu�
max_pooling2d_10/MaxPoolMaxPoolre_lu_50/Relu:activations:0*/
_output_shapes
:��������� *
ksize
*
paddingVALID*
strides
2
max_pooling2d_10/MaxPool�
conv2d_61/Conv2D/ReadVariableOpReadVariableOp(conv2d_61_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_61/Conv2D/ReadVariableOp�
conv2d_61/Conv2DConv2D!max_pooling2d_10/MaxPool:output:0'conv2d_61/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2
conv2d_61/Conv2D�
 conv2d_61/BiasAdd/ReadVariableOpReadVariableOp)conv2d_61_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_61/BiasAdd/ReadVariableOp�
conv2d_61/BiasAddBiasAddconv2d_61/Conv2D:output:0(conv2d_61/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2
conv2d_61/BiasAdd~
conv2d_61/ReluReluconv2d_61/BiasAdd:output:0*
T0*/
_output_shapes
:���������2
conv2d_61/Relu�
%batch_normalization_61/ReadVariableOpReadVariableOp.batch_normalization_61_readvariableop_resource*
_output_shapes
:*
dtype02'
%batch_normalization_61/ReadVariableOp�
'batch_normalization_61/ReadVariableOp_1ReadVariableOp0batch_normalization_61_readvariableop_1_resource*
_output_shapes
:*
dtype02)
'batch_normalization_61/ReadVariableOp_1�
6batch_normalization_61/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_61_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype028
6batch_normalization_61/FusedBatchNormV3/ReadVariableOp�
8batch_normalization_61/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_61_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02:
8batch_normalization_61/FusedBatchNormV3/ReadVariableOp_1�
'batch_normalization_61/FusedBatchNormV3FusedBatchNormV3conv2d_61/Relu:activations:0-batch_normalization_61/ReadVariableOp:value:0/batch_normalization_61/ReadVariableOp_1:value:0>batch_normalization_61/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_61/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<2)
'batch_normalization_61/FusedBatchNormV3�
%batch_normalization_61/AssignNewValueAssignVariableOp?batch_normalization_61_fusedbatchnormv3_readvariableop_resource4batch_normalization_61/FusedBatchNormV3:batch_mean:07^batch_normalization_61/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_61/AssignNewValue�
'batch_normalization_61/AssignNewValue_1AssignVariableOpAbatch_normalization_61_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_61/FusedBatchNormV3:batch_variance:09^batch_normalization_61/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02)
'batch_normalization_61/AssignNewValue_1�
re_lu_51/ReluRelu+batch_normalization_61/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������2
re_lu_51/Relu�
conv2d_62/Conv2D/ReadVariableOpReadVariableOp(conv2d_62_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02!
conv2d_62/Conv2D/ReadVariableOp�
conv2d_62/Conv2DConv2Dre_lu_51/Relu:activations:0'conv2d_62/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2
conv2d_62/Conv2D�
 conv2d_62/BiasAdd/ReadVariableOpReadVariableOp)conv2d_62_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_62/BiasAdd/ReadVariableOp�
conv2d_62/BiasAddBiasAddconv2d_62/Conv2D:output:0(conv2d_62/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2
conv2d_62/BiasAdd~
conv2d_62/ReluReluconv2d_62/BiasAdd:output:0*
T0*/
_output_shapes
:���������2
conv2d_62/Relu�
%batch_normalization_62/ReadVariableOpReadVariableOp.batch_normalization_62_readvariableop_resource*
_output_shapes
:*
dtype02'
%batch_normalization_62/ReadVariableOp�
'batch_normalization_62/ReadVariableOp_1ReadVariableOp0batch_normalization_62_readvariableop_1_resource*
_output_shapes
:*
dtype02)
'batch_normalization_62/ReadVariableOp_1�
6batch_normalization_62/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_62_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype028
6batch_normalization_62/FusedBatchNormV3/ReadVariableOp�
8batch_normalization_62/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_62_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02:
8batch_normalization_62/FusedBatchNormV3/ReadVariableOp_1�
'batch_normalization_62/FusedBatchNormV3FusedBatchNormV3conv2d_62/Relu:activations:0-batch_normalization_62/ReadVariableOp:value:0/batch_normalization_62/ReadVariableOp_1:value:0>batch_normalization_62/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_62/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<2)
'batch_normalization_62/FusedBatchNormV3�
%batch_normalization_62/AssignNewValueAssignVariableOp?batch_normalization_62_fusedbatchnormv3_readvariableop_resource4batch_normalization_62/FusedBatchNormV3:batch_mean:07^batch_normalization_62/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_62/AssignNewValue�
'batch_normalization_62/AssignNewValue_1AssignVariableOpAbatch_normalization_62_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_62/FusedBatchNormV3:batch_variance:09^batch_normalization_62/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02)
'batch_normalization_62/AssignNewValue_1�
re_lu_52/ReluRelu+batch_normalization_62/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������2
re_lu_52/Relu�
conv2d_63/Conv2D/ReadVariableOpReadVariableOp(conv2d_63_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02!
conv2d_63/Conv2D/ReadVariableOp�
conv2d_63/Conv2DConv2Dre_lu_52/Relu:activations:0'conv2d_63/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2
conv2d_63/Conv2D�
 conv2d_63/BiasAdd/ReadVariableOpReadVariableOp)conv2d_63_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_63/BiasAdd/ReadVariableOp�
conv2d_63/BiasAddBiasAddconv2d_63/Conv2D:output:0(conv2d_63/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2
conv2d_63/BiasAdd~
conv2d_63/ReluReluconv2d_63/BiasAdd:output:0*
T0*/
_output_shapes
:���������2
conv2d_63/Relu�
%batch_normalization_63/ReadVariableOpReadVariableOp.batch_normalization_63_readvariableop_resource*
_output_shapes
:*
dtype02'
%batch_normalization_63/ReadVariableOp�
'batch_normalization_63/ReadVariableOp_1ReadVariableOp0batch_normalization_63_readvariableop_1_resource*
_output_shapes
:*
dtype02)
'batch_normalization_63/ReadVariableOp_1�
6batch_normalization_63/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_63_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype028
6batch_normalization_63/FusedBatchNormV3/ReadVariableOp�
8batch_normalization_63/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_63_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02:
8batch_normalization_63/FusedBatchNormV3/ReadVariableOp_1�
'batch_normalization_63/FusedBatchNormV3FusedBatchNormV3conv2d_63/Relu:activations:0-batch_normalization_63/ReadVariableOp:value:0/batch_normalization_63/ReadVariableOp_1:value:0>batch_normalization_63/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_63/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<2)
'batch_normalization_63/FusedBatchNormV3�
%batch_normalization_63/AssignNewValueAssignVariableOp?batch_normalization_63_fusedbatchnormv3_readvariableop_resource4batch_normalization_63/FusedBatchNormV3:batch_mean:07^batch_normalization_63/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_63/AssignNewValue�
'batch_normalization_63/AssignNewValue_1AssignVariableOpAbatch_normalization_63_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_63/FusedBatchNormV3:batch_variance:09^batch_normalization_63/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02)
'batch_normalization_63/AssignNewValue_1�
leaky_re_lu_10/LeakyRelu	LeakyRelu+batch_normalization_63/FusedBatchNormV3:y:0*/
_output_shapes
:���������*
alpha%���>2
leaky_re_lu_10/LeakyRelu�
conv2d_64/Conv2D/ReadVariableOpReadVariableOp(conv2d_64_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02!
conv2d_64/Conv2D/ReadVariableOp�
conv2d_64/Conv2DConv2D&leaky_re_lu_10/LeakyRelu:activations:0'conv2d_64/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2
conv2d_64/Conv2D�
 conv2d_64/BiasAdd/ReadVariableOpReadVariableOp)conv2d_64_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_64/BiasAdd/ReadVariableOp�
conv2d_64/BiasAddBiasAddconv2d_64/Conv2D:output:0(conv2d_64/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2
conv2d_64/BiasAdd~
conv2d_64/ReluReluconv2d_64/BiasAdd:output:0*
T0*/
_output_shapes
:���������2
conv2d_64/Relu�
%batch_normalization_64/ReadVariableOpReadVariableOp.batch_normalization_64_readvariableop_resource*
_output_shapes
:*
dtype02'
%batch_normalization_64/ReadVariableOp�
'batch_normalization_64/ReadVariableOp_1ReadVariableOp0batch_normalization_64_readvariableop_1_resource*
_output_shapes
:*
dtype02)
'batch_normalization_64/ReadVariableOp_1�
6batch_normalization_64/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_64_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype028
6batch_normalization_64/FusedBatchNormV3/ReadVariableOp�
8batch_normalization_64/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_64_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02:
8batch_normalization_64/FusedBatchNormV3/ReadVariableOp_1�
'batch_normalization_64/FusedBatchNormV3FusedBatchNormV3conv2d_64/Relu:activations:0-batch_normalization_64/ReadVariableOp:value:0/batch_normalization_64/ReadVariableOp_1:value:0>batch_normalization_64/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_64/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<2)
'batch_normalization_64/FusedBatchNormV3�
%batch_normalization_64/AssignNewValueAssignVariableOp?batch_normalization_64_fusedbatchnormv3_readvariableop_resource4batch_normalization_64/FusedBatchNormV3:batch_mean:07^batch_normalization_64/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_64/AssignNewValue�
'batch_normalization_64/AssignNewValue_1AssignVariableOpAbatch_normalization_64_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_64/FusedBatchNormV3:batch_variance:09^batch_normalization_64/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02)
'batch_normalization_64/AssignNewValue_1�
re_lu_53/ReluRelu+batch_normalization_64/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������2
re_lu_53/Relu�
conv2d_65/Conv2D/ReadVariableOpReadVariableOp(conv2d_65_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02!
conv2d_65/Conv2D/ReadVariableOp�
conv2d_65/Conv2DConv2Dre_lu_53/Relu:activations:0'conv2d_65/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2
conv2d_65/Conv2D�
 conv2d_65/BiasAdd/ReadVariableOpReadVariableOp)conv2d_65_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_65/BiasAdd/ReadVariableOp�
conv2d_65/BiasAddBiasAddconv2d_65/Conv2D:output:0(conv2d_65/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2
conv2d_65/BiasAdd~
conv2d_65/ReluReluconv2d_65/BiasAdd:output:0*
T0*/
_output_shapes
:���������2
conv2d_65/Relu�
%batch_normalization_65/ReadVariableOpReadVariableOp.batch_normalization_65_readvariableop_resource*
_output_shapes
:*
dtype02'
%batch_normalization_65/ReadVariableOp�
'batch_normalization_65/ReadVariableOp_1ReadVariableOp0batch_normalization_65_readvariableop_1_resource*
_output_shapes
:*
dtype02)
'batch_normalization_65/ReadVariableOp_1�
6batch_normalization_65/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_65_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype028
6batch_normalization_65/FusedBatchNormV3/ReadVariableOp�
8batch_normalization_65/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_65_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02:
8batch_normalization_65/FusedBatchNormV3/ReadVariableOp_1�
'batch_normalization_65/FusedBatchNormV3FusedBatchNormV3conv2d_65/Relu:activations:0-batch_normalization_65/ReadVariableOp:value:0/batch_normalization_65/ReadVariableOp_1:value:0>batch_normalization_65/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_65/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<2)
'batch_normalization_65/FusedBatchNormV3�
%batch_normalization_65/AssignNewValueAssignVariableOp?batch_normalization_65_fusedbatchnormv3_readvariableop_resource4batch_normalization_65/FusedBatchNormV3:batch_mean:07^batch_normalization_65/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_65/AssignNewValue�
'batch_normalization_65/AssignNewValue_1AssignVariableOpAbatch_normalization_65_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_65/FusedBatchNormV3:batch_variance:09^batch_normalization_65/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02)
'batch_normalization_65/AssignNewValue_1�
re_lu_54/ReluRelu+batch_normalization_65/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������2
re_lu_54/Reluu
flatten_10/ConstConst*
_output_shapes
:*
dtype0*
valueB"�����   2
flatten_10/Const�
flatten_10/ReshapeReshapere_lu_54/Relu:activations:0flatten_10/Const:output:0*
T0*(
_output_shapes
:����������2
flatten_10/Reshape�
dense_10/MatMul/ReadVariableOpReadVariableOp'dense_10_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02 
dense_10/MatMul/ReadVariableOp�
dense_10/MatMulMatMulflatten_10/Reshape:output:0&dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_10/MatMul�
dense_10/BiasAdd/ReadVariableOpReadVariableOp(dense_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_10/BiasAdd/ReadVariableOp�
dense_10/BiasAddBiasAdddense_10/MatMul:product:0'dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_10/BiasAdd|
dense_10/SigmoidSigmoiddense_10/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
dense_10/Sigmoid�
IdentityIdentitydense_10/Sigmoid:y:0&^batch_normalization_60/AssignNewValue(^batch_normalization_60/AssignNewValue_17^batch_normalization_60/FusedBatchNormV3/ReadVariableOp9^batch_normalization_60/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_60/ReadVariableOp(^batch_normalization_60/ReadVariableOp_1&^batch_normalization_61/AssignNewValue(^batch_normalization_61/AssignNewValue_17^batch_normalization_61/FusedBatchNormV3/ReadVariableOp9^batch_normalization_61/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_61/ReadVariableOp(^batch_normalization_61/ReadVariableOp_1&^batch_normalization_62/AssignNewValue(^batch_normalization_62/AssignNewValue_17^batch_normalization_62/FusedBatchNormV3/ReadVariableOp9^batch_normalization_62/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_62/ReadVariableOp(^batch_normalization_62/ReadVariableOp_1&^batch_normalization_63/AssignNewValue(^batch_normalization_63/AssignNewValue_17^batch_normalization_63/FusedBatchNormV3/ReadVariableOp9^batch_normalization_63/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_63/ReadVariableOp(^batch_normalization_63/ReadVariableOp_1&^batch_normalization_64/AssignNewValue(^batch_normalization_64/AssignNewValue_17^batch_normalization_64/FusedBatchNormV3/ReadVariableOp9^batch_normalization_64/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_64/ReadVariableOp(^batch_normalization_64/ReadVariableOp_1&^batch_normalization_65/AssignNewValue(^batch_normalization_65/AssignNewValue_17^batch_normalization_65/FusedBatchNormV3/ReadVariableOp9^batch_normalization_65/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_65/ReadVariableOp(^batch_normalization_65/ReadVariableOp_1!^conv2d_60/BiasAdd/ReadVariableOp ^conv2d_60/Conv2D/ReadVariableOp!^conv2d_61/BiasAdd/ReadVariableOp ^conv2d_61/Conv2D/ReadVariableOp!^conv2d_62/BiasAdd/ReadVariableOp ^conv2d_62/Conv2D/ReadVariableOp!^conv2d_63/BiasAdd/ReadVariableOp ^conv2d_63/Conv2D/ReadVariableOp!^conv2d_64/BiasAdd/ReadVariableOp ^conv2d_64/Conv2D/ReadVariableOp!^conv2d_65/BiasAdd/ReadVariableOp ^conv2d_65/Conv2D/ReadVariableOp ^dense_10/BiasAdd/ReadVariableOp^dense_10/MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*z
_input_shapesi
g:���������(: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2N
%batch_normalization_60/AssignNewValue%batch_normalization_60/AssignNewValue2R
'batch_normalization_60/AssignNewValue_1'batch_normalization_60/AssignNewValue_12p
6batch_normalization_60/FusedBatchNormV3/ReadVariableOp6batch_normalization_60/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_60/FusedBatchNormV3/ReadVariableOp_18batch_normalization_60/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_60/ReadVariableOp%batch_normalization_60/ReadVariableOp2R
'batch_normalization_60/ReadVariableOp_1'batch_normalization_60/ReadVariableOp_12N
%batch_normalization_61/AssignNewValue%batch_normalization_61/AssignNewValue2R
'batch_normalization_61/AssignNewValue_1'batch_normalization_61/AssignNewValue_12p
6batch_normalization_61/FusedBatchNormV3/ReadVariableOp6batch_normalization_61/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_61/FusedBatchNormV3/ReadVariableOp_18batch_normalization_61/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_61/ReadVariableOp%batch_normalization_61/ReadVariableOp2R
'batch_normalization_61/ReadVariableOp_1'batch_normalization_61/ReadVariableOp_12N
%batch_normalization_62/AssignNewValue%batch_normalization_62/AssignNewValue2R
'batch_normalization_62/AssignNewValue_1'batch_normalization_62/AssignNewValue_12p
6batch_normalization_62/FusedBatchNormV3/ReadVariableOp6batch_normalization_62/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_62/FusedBatchNormV3/ReadVariableOp_18batch_normalization_62/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_62/ReadVariableOp%batch_normalization_62/ReadVariableOp2R
'batch_normalization_62/ReadVariableOp_1'batch_normalization_62/ReadVariableOp_12N
%batch_normalization_63/AssignNewValue%batch_normalization_63/AssignNewValue2R
'batch_normalization_63/AssignNewValue_1'batch_normalization_63/AssignNewValue_12p
6batch_normalization_63/FusedBatchNormV3/ReadVariableOp6batch_normalization_63/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_63/FusedBatchNormV3/ReadVariableOp_18batch_normalization_63/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_63/ReadVariableOp%batch_normalization_63/ReadVariableOp2R
'batch_normalization_63/ReadVariableOp_1'batch_normalization_63/ReadVariableOp_12N
%batch_normalization_64/AssignNewValue%batch_normalization_64/AssignNewValue2R
'batch_normalization_64/AssignNewValue_1'batch_normalization_64/AssignNewValue_12p
6batch_normalization_64/FusedBatchNormV3/ReadVariableOp6batch_normalization_64/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_64/FusedBatchNormV3/ReadVariableOp_18batch_normalization_64/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_64/ReadVariableOp%batch_normalization_64/ReadVariableOp2R
'batch_normalization_64/ReadVariableOp_1'batch_normalization_64/ReadVariableOp_12N
%batch_normalization_65/AssignNewValue%batch_normalization_65/AssignNewValue2R
'batch_normalization_65/AssignNewValue_1'batch_normalization_65/AssignNewValue_12p
6batch_normalization_65/FusedBatchNormV3/ReadVariableOp6batch_normalization_65/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_65/FusedBatchNormV3/ReadVariableOp_18batch_normalization_65/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_65/ReadVariableOp%batch_normalization_65/ReadVariableOp2R
'batch_normalization_65/ReadVariableOp_1'batch_normalization_65/ReadVariableOp_12D
 conv2d_60/BiasAdd/ReadVariableOp conv2d_60/BiasAdd/ReadVariableOp2B
conv2d_60/Conv2D/ReadVariableOpconv2d_60/Conv2D/ReadVariableOp2D
 conv2d_61/BiasAdd/ReadVariableOp conv2d_61/BiasAdd/ReadVariableOp2B
conv2d_61/Conv2D/ReadVariableOpconv2d_61/Conv2D/ReadVariableOp2D
 conv2d_62/BiasAdd/ReadVariableOp conv2d_62/BiasAdd/ReadVariableOp2B
conv2d_62/Conv2D/ReadVariableOpconv2d_62/Conv2D/ReadVariableOp2D
 conv2d_63/BiasAdd/ReadVariableOp conv2d_63/BiasAdd/ReadVariableOp2B
conv2d_63/Conv2D/ReadVariableOpconv2d_63/Conv2D/ReadVariableOp2D
 conv2d_64/BiasAdd/ReadVariableOp conv2d_64/BiasAdd/ReadVariableOp2B
conv2d_64/Conv2D/ReadVariableOpconv2d_64/Conv2D/ReadVariableOp2D
 conv2d_65/BiasAdd/ReadVariableOp conv2d_65/BiasAdd/ReadVariableOp2B
conv2d_65/Conv2D/ReadVariableOpconv2d_65/Conv2D/ReadVariableOp2B
dense_10/BiasAdd/ReadVariableOpdense_10/BiasAdd/ReadVariableOp2@
dense_10/MatMul/ReadVariableOpdense_10/MatMul/ReadVariableOp:W S
/
_output_shapes
:���������(
 
_user_specified_nameinputs
�
�
6__inference_batch_normalization_62_layer_call_fn_39362

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_62_layer_call_and_return_conditional_losses_366202
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_61_layer_call_and_return_conditional_losses_36494

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
J
.__inference_leaky_re_lu_10_layer_call_fn_39552

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_372682
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
(__inference_dense_10_layer_call_fn_39891

inputs
unknown:	�
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_10_layer_call_and_return_conditional_losses_373912
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_61_layer_call_and_return_conditional_losses_39128

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_61_layer_call_and_return_conditional_losses_39164

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������:::::*
epsilon%o�:*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
D
(__inference_re_lu_52_layer_call_fn_39398

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_re_lu_52_layer_call_and_return_conditional_losses_372172
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_65_layer_call_and_return_conditional_losses_39780

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������:::::*
epsilon%o�:*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
6__inference_batch_normalization_63_layer_call_fn_39503

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_batch_normalization_63_layer_call_and_return_conditional_losses_367022
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
ʼ
�
!__inference__traced_restore_40188
file_prefix;
!assignvariableop_conv2d_60_kernel: /
!assignvariableop_1_conv2d_60_bias: =
/assignvariableop_2_batch_normalization_60_gamma: <
.assignvariableop_3_batch_normalization_60_beta: C
5assignvariableop_4_batch_normalization_60_moving_mean: G
9assignvariableop_5_batch_normalization_60_moving_variance: =
#assignvariableop_6_conv2d_61_kernel: /
!assignvariableop_7_conv2d_61_bias:=
/assignvariableop_8_batch_normalization_61_gamma:<
.assignvariableop_9_batch_normalization_61_beta:D
6assignvariableop_10_batch_normalization_61_moving_mean:H
:assignvariableop_11_batch_normalization_61_moving_variance:>
$assignvariableop_12_conv2d_62_kernel:0
"assignvariableop_13_conv2d_62_bias:>
0assignvariableop_14_batch_normalization_62_gamma:=
/assignvariableop_15_batch_normalization_62_beta:D
6assignvariableop_16_batch_normalization_62_moving_mean:H
:assignvariableop_17_batch_normalization_62_moving_variance:>
$assignvariableop_18_conv2d_63_kernel:0
"assignvariableop_19_conv2d_63_bias:>
0assignvariableop_20_batch_normalization_63_gamma:=
/assignvariableop_21_batch_normalization_63_beta:D
6assignvariableop_22_batch_normalization_63_moving_mean:H
:assignvariableop_23_batch_normalization_63_moving_variance:>
$assignvariableop_24_conv2d_64_kernel:0
"assignvariableop_25_conv2d_64_bias:>
0assignvariableop_26_batch_normalization_64_gamma:=
/assignvariableop_27_batch_normalization_64_beta:D
6assignvariableop_28_batch_normalization_64_moving_mean:H
:assignvariableop_29_batch_normalization_64_moving_variance:>
$assignvariableop_30_conv2d_65_kernel:0
"assignvariableop_31_conv2d_65_bias:>
0assignvariableop_32_batch_normalization_65_gamma:=
/assignvariableop_33_batch_normalization_65_beta:D
6assignvariableop_34_batch_normalization_65_moving_mean:H
:assignvariableop_35_batch_normalization_65_moving_variance:6
#assignvariableop_36_dense_10_kernel:	�/
!assignvariableop_37_dense_10_bias:#
assignvariableop_38_total: #
assignvariableop_39_count: %
assignvariableop_40_total_1: %
assignvariableop_41_count_1: %
assignvariableop_42_total_2: %
assignvariableop_43_count_2: 
identity_45��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:-*
dtype0*�
value�B�-B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-11/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-11/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:-*
dtype0*m
valuedBb-B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices�
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::::::::::::::*;
dtypes1
/2-2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity�
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_60_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_60_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOp/assignvariableop_2_batch_normalization_60_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOp.assignvariableop_3_batch_normalization_60_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOp5assignvariableop_4_batch_normalization_60_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOp9assignvariableop_5_batch_normalization_60_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_61_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_61_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8�
AssignVariableOp_8AssignVariableOp/assignvariableop_8_batch_normalization_61_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9�
AssignVariableOp_9AssignVariableOp.assignvariableop_9_batch_normalization_61_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10�
AssignVariableOp_10AssignVariableOp6assignvariableop_10_batch_normalization_61_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11�
AssignVariableOp_11AssignVariableOp:assignvariableop_11_batch_normalization_61_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12�
AssignVariableOp_12AssignVariableOp$assignvariableop_12_conv2d_62_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13�
AssignVariableOp_13AssignVariableOp"assignvariableop_13_conv2d_62_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14�
AssignVariableOp_14AssignVariableOp0assignvariableop_14_batch_normalization_62_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15�
AssignVariableOp_15AssignVariableOp/assignvariableop_15_batch_normalization_62_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16�
AssignVariableOp_16AssignVariableOp6assignvariableop_16_batch_normalization_62_moving_meanIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17�
AssignVariableOp_17AssignVariableOp:assignvariableop_17_batch_normalization_62_moving_varianceIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18�
AssignVariableOp_18AssignVariableOp$assignvariableop_18_conv2d_63_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19�
AssignVariableOp_19AssignVariableOp"assignvariableop_19_conv2d_63_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20�
AssignVariableOp_20AssignVariableOp0assignvariableop_20_batch_normalization_63_gammaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21�
AssignVariableOp_21AssignVariableOp/assignvariableop_21_batch_normalization_63_betaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22�
AssignVariableOp_22AssignVariableOp6assignvariableop_22_batch_normalization_63_moving_meanIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23�
AssignVariableOp_23AssignVariableOp:assignvariableop_23_batch_normalization_63_moving_varianceIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24�
AssignVariableOp_24AssignVariableOp$assignvariableop_24_conv2d_64_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25�
AssignVariableOp_25AssignVariableOp"assignvariableop_25_conv2d_64_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26�
AssignVariableOp_26AssignVariableOp0assignvariableop_26_batch_normalization_64_gammaIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27�
AssignVariableOp_27AssignVariableOp/assignvariableop_27_batch_normalization_64_betaIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28�
AssignVariableOp_28AssignVariableOp6assignvariableop_28_batch_normalization_64_moving_meanIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29�
AssignVariableOp_29AssignVariableOp:assignvariableop_29_batch_normalization_64_moving_varianceIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30�
AssignVariableOp_30AssignVariableOp$assignvariableop_30_conv2d_65_kernelIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31�
AssignVariableOp_31AssignVariableOp"assignvariableop_31_conv2d_65_biasIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32�
AssignVariableOp_32AssignVariableOp0assignvariableop_32_batch_normalization_65_gammaIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33�
AssignVariableOp_33AssignVariableOp/assignvariableop_33_batch_normalization_65_betaIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34�
AssignVariableOp_34AssignVariableOp6assignvariableop_34_batch_normalization_65_moving_meanIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35�
AssignVariableOp_35AssignVariableOp:assignvariableop_35_batch_normalization_65_moving_varianceIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36�
AssignVariableOp_36AssignVariableOp#assignvariableop_36_dense_10_kernelIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37�
AssignVariableOp_37AssignVariableOp!assignvariableop_37_dense_10_biasIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38�
AssignVariableOp_38AssignVariableOpassignvariableop_38_totalIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39�
AssignVariableOp_39AssignVariableOpassignvariableop_39_countIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40�
AssignVariableOp_40AssignVariableOpassignvariableop_40_total_1Identity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41�
AssignVariableOp_41AssignVariableOpassignvariableop_41_count_1Identity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42�
AssignVariableOp_42AssignVariableOpassignvariableop_42_total_2Identity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43�
AssignVariableOp_43AssignVariableOpassignvariableop_43_count_2Identity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_439
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp�
Identity_44Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_44�
Identity_45IdentityIdentity_44:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_45"#
identity_45Identity_45:output:0*m
_input_shapes\
Z: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
Q__inference_batch_normalization_62_layer_call_and_return_conditional_losses_36576

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������:::::*
epsilon%o�:*
is_training( 2
FusedBatchNormV3�
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+���������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_65_layer_call_and_return_conditional_losses_37532

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������:::::*
epsilon%o�:*
exponential_avg_factor%
�#<2
FusedBatchNormV3�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1�
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:���������
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
S
conv2d_60_input@
!serving_default_conv2d_60_input:0���������(<
dense_100
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
��
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

layer-9
layer_with_weights-6
layer-10
layer_with_weights-7
layer-11
layer-12
layer_with_weights-8
layer-13
layer_with_weights-9
layer-14
layer-15
layer_with_weights-10
layer-16
layer_with_weights-11
layer-17
layer-18
layer-19
layer_with_weights-12
layer-20
	optimizer

signatures
#_self_saveable_object_factories
	variables
regularization_losses
trainable_variables
	keras_api
+�&call_and_return_all_conditional_losses
�__call__
�_default_save_signature"��
_tf_keras_sequential��{"name": "sequential_10", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_10", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 40, 3, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_60_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_60", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 40, 3, 1]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_60", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "ReLU", "config": {"name": "re_lu_50", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_10", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_61", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_61", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "ReLU", "config": {"name": "re_lu_51", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}}, {"class_name": "Conv2D", "config": {"name": "conv2d_62", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 2]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_62", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "ReLU", "config": {"name": "re_lu_52", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}}, {"class_name": "Conv2D", "config": {"name": "conv2d_63", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [4, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_63", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_10", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}}, {"class_name": "Conv2D", "config": {"name": "conv2d_64", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [6, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_64", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "ReLU", "config": {"name": "re_lu_53", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}}, {"class_name": "Conv2D", "config": {"name": "conv2d_65", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [8, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_65", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "ReLU", "config": {"name": "re_lu_54", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}}, {"class_name": "Flatten", "config": {"name": "flatten_10", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_10", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 60, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}, "shared_object_id": 61}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 40, 3, 1]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 40, 3, 1]}, "float32", "conv2d_60_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_10", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 40, 3, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_60_input"}, "shared_object_id": 0}, {"class_name": "Conv2D", "config": {"name": "conv2d_60", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 40, 3, 1]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_60", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 4}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 5}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 7}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 8}, {"class_name": "ReLU", "config": {"name": "re_lu_50", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}, "shared_object_id": 9}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_10", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 10}, {"class_name": "Conv2D", "config": {"name": "conv2d_61", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 13}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_61", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 14}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 15}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 16}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 17}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 18}, {"class_name": "ReLU", "config": {"name": "re_lu_51", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}, "shared_object_id": 19}, {"class_name": "Conv2D", "config": {"name": "conv2d_62", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 2]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 20}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 21}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 22}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_62", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 23}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 24}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 25}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 26}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 27}, {"class_name": "ReLU", "config": {"name": "re_lu_52", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}, "shared_object_id": 28}, {"class_name": "Conv2D", "config": {"name": "conv2d_63", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [4, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 29}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 30}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 31}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_63", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 32}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 33}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 34}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 35}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 36}, {"class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_10", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "shared_object_id": 37}, {"class_name": "Conv2D", "config": {"name": "conv2d_64", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [6, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 38}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 39}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 40}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_64", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 41}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 42}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 43}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 44}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 45}, {"class_name": "ReLU", "config": {"name": "re_lu_53", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}, "shared_object_id": 46}, {"class_name": "Conv2D", "config": {"name": "conv2d_65", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [8, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 47}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 48}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 49}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_65", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 50}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 51}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 52}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 53}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 54}, {"class_name": "ReLU", "config": {"name": "re_lu_54", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}, "shared_object_id": 55}, {"class_name": "Flatten", "config": {"name": "flatten_10", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 56}, {"class_name": "Dense", "config": {"name": "dense_10", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 57}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 58}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 59}]}}, "training_config": {"loss": "binary_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "mse", "dtype": "float32", "fn": "mean_squared_error"}, "shared_object_id": 62}, {"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "binary_accuracy"}, "shared_object_id": 63}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 9.999999747378752e-06, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
�

kernel
bias
#_self_saveable_object_factories
 	variables
!regularization_losses
"trainable_variables
#	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�

_tf_keras_layer�
{"name": "conv2d_60", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 40, 3, 1]}, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_60", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 40, 3, 1]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}, "shared_object_id": 61}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 40, 3, 1]}}
�

$axis
	%gamma
&beta
'moving_mean
(moving_variance
#)_self_saveable_object_factories
*	variables
+regularization_losses
,trainable_variables
-	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"name": "batch_normalization_60", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_60", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 4}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 5}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 7}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 8, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 32}}, "shared_object_id": 64}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 40, 3, 32]}}
�
#._self_saveable_object_factories
/	variables
0regularization_losses
1trainable_variables
2	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"name": "re_lu_50", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ReLU", "config": {"name": "re_lu_50", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}, "shared_object_id": 9}
�
#3_self_saveable_object_factories
4	variables
5regularization_losses
6trainable_variables
7	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"name": "max_pooling2d_10", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_10", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 10, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 65}}
�


8kernel
9bias
#:_self_saveable_object_factories
;	variables
<regularization_losses
=trainable_variables
>	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�	
_tf_keras_layer�	{"name": "conv2d_61", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_61", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 13, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}, "shared_object_id": 66}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 20, 1, 32]}}
�

?axis
	@gamma
Abeta
Bmoving_mean
Cmoving_variance
#D_self_saveable_object_factories
E	variables
Fregularization_losses
Gtrainable_variables
H	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"name": "batch_normalization_61", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_61", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 14}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 15}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 16}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 17}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 18, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 16}}, "shared_object_id": 67}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 20, 1, 16]}}
�
#I_self_saveable_object_factories
J	variables
Kregularization_losses
Ltrainable_variables
M	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"name": "re_lu_51", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ReLU", "config": {"name": "re_lu_51", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}, "shared_object_id": 19}
�


Nkernel
Obias
#P_self_saveable_object_factories
Q	variables
Rregularization_losses
Strainable_variables
T	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�	
_tf_keras_layer�	{"name": "conv2d_62", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_62", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 2]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 20}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 21}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 22, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 16}}, "shared_object_id": 68}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 20, 1, 16]}}
�

Uaxis
	Vgamma
Wbeta
Xmoving_mean
Ymoving_variance
#Z_self_saveable_object_factories
[	variables
\regularization_losses
]trainable_variables
^	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"name": "batch_normalization_62", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_62", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 23}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 24}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 25}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 26}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 27, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 8}}, "shared_object_id": 69}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 20, 1, 8]}}
�
#__self_saveable_object_factories
`	variables
aregularization_losses
btrainable_variables
c	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"name": "re_lu_52", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ReLU", "config": {"name": "re_lu_52", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}, "shared_object_id": 28}
�


dkernel
ebias
#f_self_saveable_object_factories
g	variables
hregularization_losses
itrainable_variables
j	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�	
_tf_keras_layer�	{"name": "conv2d_63", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_63", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [4, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 29}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 30}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 31, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 8}}, "shared_object_id": 70}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 20, 1, 8]}}
�

kaxis
	lgamma
mbeta
nmoving_mean
omoving_variance
#p_self_saveable_object_factories
q	variables
rregularization_losses
strainable_variables
t	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"name": "batch_normalization_63", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_63", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 32}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 33}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 34}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 35}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 36, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 16}}, "shared_object_id": 71}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 20, 1, 16]}}
�
#u_self_saveable_object_factories
v	variables
wregularization_losses
xtrainable_variables
y	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"name": "leaky_re_lu_10", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LeakyReLU", "config": {"name": "leaky_re_lu_10", "trainable": true, "dtype": "float32", "alpha": 0.30000001192092896}, "shared_object_id": 37}
�


zkernel
{bias
#|_self_saveable_object_factories
}	variables
~regularization_losses
trainable_variables
�	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�	
_tf_keras_layer�	{"name": "conv2d_64", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_64", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [6, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 38}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 39}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 40, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 16}}, "shared_object_id": 72}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 20, 1, 16]}}
�

	�axis

�gamma
	�beta
�moving_mean
�moving_variance
$�_self_saveable_object_factories
�	variables
�regularization_losses
�trainable_variables
�	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"name": "batch_normalization_64", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_64", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 41}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 42}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 43}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 44}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 45, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 16}}, "shared_object_id": 73}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 20, 1, 16]}}
�
$�_self_saveable_object_factories
�	variables
�regularization_losses
�trainable_variables
�	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"name": "re_lu_53", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ReLU", "config": {"name": "re_lu_53", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}, "shared_object_id": 46}
�
�kernel
	�bias
$�_self_saveable_object_factories
�	variables
�regularization_losses
�trainable_variables
�	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�	
_tf_keras_layer�	{"name": "conv2d_65", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_65", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [8, 1]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 47}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 48}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 49, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 16}}, "shared_object_id": 74}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 20, 1, 16]}}
�

	�axis

�gamma
	�beta
�moving_mean
�moving_variance
$�_self_saveable_object_factories
�	variables
�regularization_losses
�trainable_variables
�	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"name": "batch_normalization_65", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_65", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 50}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 51}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 52}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 53}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "shared_object_id": 54, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 8}}, "shared_object_id": 75}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 20, 1, 8]}}
�
$�_self_saveable_object_factories
�	variables
�regularization_losses
�trainable_variables
�	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"name": "re_lu_54", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ReLU", "config": {"name": "re_lu_54", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}, "shared_object_id": 55}
�
$�_self_saveable_object_factories
�	variables
�regularization_losses
�trainable_variables
�	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"name": "flatten_10", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten_10", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 56, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 76}}
�	
�kernel
	�bias
$�_self_saveable_object_factories
�	variables
�regularization_losses
�trainable_variables
�	keras_api
+�&call_and_return_all_conditional_losses
�__call__"�
_tf_keras_layer�{"name": "dense_10", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_10", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 57}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 58}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 59, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 160}}, "shared_object_id": 77}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 160]}}
"
	optimizer
-
�serving_default"
signature_map
 "
trackable_dict_wrapper
�
0
1
%2
&3
'4
(5
86
97
@8
A9
B10
C11
N12
O13
V14
W15
X16
Y17
d18
e19
l20
m21
n22
o23
z24
{25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37"
trackable_list_wrapper
 "
trackable_list_wrapper
�
0
1
%2
&3
84
95
@6
A7
N8
O9
V10
W11
d12
e13
l14
m15
z16
{17
�18
�19
�20
�21
�22
�23
�24
�25"
trackable_list_wrapper
�
�metrics
�non_trainable_variables
	variables
regularization_losses
�layers
 �layer_regularization_losses
trainable_variables
�layer_metrics
�__call__
�_default_save_signature
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
*:( 2conv2d_60/kernel
: 2conv2d_60/bias
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
�
�metrics
�non_trainable_variables
 	variables
!regularization_losses
�layers
 �layer_regularization_losses
"trainable_variables
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:( 2batch_normalization_60/gamma
):' 2batch_normalization_60/beta
2:0  (2"batch_normalization_60/moving_mean
6:4  (2&batch_normalization_60/moving_variance
 "
trackable_dict_wrapper
<
%0
&1
'2
(3"
trackable_list_wrapper
 "
trackable_list_wrapper
.
%0
&1"
trackable_list_wrapper
�
�metrics
�non_trainable_variables
*	variables
+regularization_losses
�layers
 �layer_regularization_losses
,trainable_variables
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�metrics
�non_trainable_variables
/	variables
0regularization_losses
�layers
 �layer_regularization_losses
1trainable_variables
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�metrics
�non_trainable_variables
4	variables
5regularization_losses
�layers
 �layer_regularization_losses
6trainable_variables
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
*:( 2conv2d_61/kernel
:2conv2d_61/bias
 "
trackable_dict_wrapper
.
80
91"
trackable_list_wrapper
 "
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
�
�metrics
�non_trainable_variables
;	variables
<regularization_losses
�layers
 �layer_regularization_losses
=trainable_variables
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(2batch_normalization_61/gamma
):'2batch_normalization_61/beta
2:0 (2"batch_normalization_61/moving_mean
6:4 (2&batch_normalization_61/moving_variance
 "
trackable_dict_wrapper
<
@0
A1
B2
C3"
trackable_list_wrapper
 "
trackable_list_wrapper
.
@0
A1"
trackable_list_wrapper
�
�metrics
�non_trainable_variables
E	variables
Fregularization_losses
�layers
 �layer_regularization_losses
Gtrainable_variables
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�metrics
�non_trainable_variables
J	variables
Kregularization_losses
�layers
 �layer_regularization_losses
Ltrainable_variables
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
*:(2conv2d_62/kernel
:2conv2d_62/bias
 "
trackable_dict_wrapper
.
N0
O1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
N0
O1"
trackable_list_wrapper
�
�metrics
�non_trainable_variables
Q	variables
Rregularization_losses
�layers
 �layer_regularization_losses
Strainable_variables
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(2batch_normalization_62/gamma
):'2batch_normalization_62/beta
2:0 (2"batch_normalization_62/moving_mean
6:4 (2&batch_normalization_62/moving_variance
 "
trackable_dict_wrapper
<
V0
W1
X2
Y3"
trackable_list_wrapper
 "
trackable_list_wrapper
.
V0
W1"
trackable_list_wrapper
�
�metrics
�non_trainable_variables
[	variables
\regularization_losses
�layers
 �layer_regularization_losses
]trainable_variables
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�metrics
�non_trainable_variables
`	variables
aregularization_losses
�layers
 �layer_regularization_losses
btrainable_variables
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
*:(2conv2d_63/kernel
:2conv2d_63/bias
 "
trackable_dict_wrapper
.
d0
e1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
d0
e1"
trackable_list_wrapper
�
�metrics
�non_trainable_variables
g	variables
hregularization_losses
�layers
 �layer_regularization_losses
itrainable_variables
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(2batch_normalization_63/gamma
):'2batch_normalization_63/beta
2:0 (2"batch_normalization_63/moving_mean
6:4 (2&batch_normalization_63/moving_variance
 "
trackable_dict_wrapper
<
l0
m1
n2
o3"
trackable_list_wrapper
 "
trackable_list_wrapper
.
l0
m1"
trackable_list_wrapper
�
�metrics
�non_trainable_variables
q	variables
rregularization_losses
�layers
 �layer_regularization_losses
strainable_variables
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�metrics
�non_trainable_variables
v	variables
wregularization_losses
�layers
 �layer_regularization_losses
xtrainable_variables
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
*:(2conv2d_64/kernel
:2conv2d_64/bias
 "
trackable_dict_wrapper
.
z0
{1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
z0
{1"
trackable_list_wrapper
�
�metrics
�non_trainable_variables
}	variables
~regularization_losses
�layers
 �layer_regularization_losses
trainable_variables
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(2batch_normalization_64/gamma
):'2batch_normalization_64/beta
2:0 (2"batch_normalization_64/moving_mean
6:4 (2&batch_normalization_64/moving_variance
 "
trackable_dict_wrapper
@
�0
�1
�2
�3"
trackable_list_wrapper
 "
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
�
�metrics
�non_trainable_variables
�	variables
�regularization_losses
�layers
 �layer_regularization_losses
�trainable_variables
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�metrics
�non_trainable_variables
�	variables
�regularization_losses
�layers
 �layer_regularization_losses
�trainable_variables
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
*:(2conv2d_65/kernel
:2conv2d_65/bias
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
�
�metrics
�non_trainable_variables
�	variables
�regularization_losses
�layers
 �layer_regularization_losses
�trainable_variables
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(2batch_normalization_65/gamma
):'2batch_normalization_65/beta
2:0 (2"batch_normalization_65/moving_mean
6:4 (2&batch_normalization_65/moving_variance
 "
trackable_dict_wrapper
@
�0
�1
�2
�3"
trackable_list_wrapper
 "
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
�
�metrics
�non_trainable_variables
�	variables
�regularization_losses
�layers
 �layer_regularization_losses
�trainable_variables
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�metrics
�non_trainable_variables
�	variables
�regularization_losses
�layers
 �layer_regularization_losses
�trainable_variables
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�metrics
�non_trainable_variables
�	variables
�regularization_losses
�layers
 �layer_regularization_losses
�trainable_variables
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
": 	�2dense_10/kernel
:2dense_10/bias
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
�
�metrics
�non_trainable_variables
�	variables
�regularization_losses
�layers
 �layer_regularization_losses
�trainable_variables
�layer_metrics
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
8
�0
�1
�2"
trackable_list_wrapper
z
'0
(1
B2
C3
X4
Y5
n6
o7
�8
�9
�10
�11"
trackable_list_wrapper
�
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
B0
C1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
X0
Y1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
n0
o1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�

�total

�count
�	variables
�	keras_api"�
_tf_keras_metric�{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 78}
�

�total

�count
�
_fn_kwargs
�	variables
�	keras_api"�
_tf_keras_metric�{"class_name": "MeanMetricWrapper", "name": "mse", "dtype": "float32", "config": {"name": "mse", "dtype": "float32", "fn": "mean_squared_error"}, "shared_object_id": 62}
�

�total

�count
�
_fn_kwargs
�	variables
�	keras_api"�
_tf_keras_metric�{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "binary_accuracy"}, "shared_object_id": 63}
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
�2�
H__inference_sequential_10_layer_call_and_return_conditional_losses_38628
H__inference_sequential_10_layer_call_and_return_conditional_losses_38774
H__inference_sequential_10_layer_call_and_return_conditional_losses_38298
H__inference_sequential_10_layer_call_and_return_conditional_losses_38399�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
-__inference_sequential_10_layer_call_fn_37477
-__inference_sequential_10_layer_call_fn_38855
-__inference_sequential_10_layer_call_fn_38936
-__inference_sequential_10_layer_call_fn_38197�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
 __inference__wrapped_model_36290�
���
FullArgSpec
args� 
varargsjargs
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *6�3
1�.
conv2d_60_input���������(
�2�
D__inference_conv2d_60_layer_call_and_return_conditional_losses_38947�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
)__inference_conv2d_60_layer_call_fn_38956�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
Q__inference_batch_normalization_60_layer_call_and_return_conditional_losses_38974
Q__inference_batch_normalization_60_layer_call_and_return_conditional_losses_38992
Q__inference_batch_normalization_60_layer_call_and_return_conditional_losses_39010
Q__inference_batch_normalization_60_layer_call_and_return_conditional_losses_39028�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
6__inference_batch_normalization_60_layer_call_fn_39041
6__inference_batch_normalization_60_layer_call_fn_39054
6__inference_batch_normalization_60_layer_call_fn_39067
6__inference_batch_normalization_60_layer_call_fn_39080�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
C__inference_re_lu_50_layer_call_and_return_conditional_losses_39085�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
(__inference_re_lu_50_layer_call_fn_39090�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_36422�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *@�=
;�84������������������������������������
�2�
0__inference_max_pooling2d_10_layer_call_fn_36428�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *@�=
;�84������������������������������������
�2�
D__inference_conv2d_61_layer_call_and_return_conditional_losses_39101�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
)__inference_conv2d_61_layer_call_fn_39110�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
Q__inference_batch_normalization_61_layer_call_and_return_conditional_losses_39128
Q__inference_batch_normalization_61_layer_call_and_return_conditional_losses_39146
Q__inference_batch_normalization_61_layer_call_and_return_conditional_losses_39164
Q__inference_batch_normalization_61_layer_call_and_return_conditional_losses_39182�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
6__inference_batch_normalization_61_layer_call_fn_39195
6__inference_batch_normalization_61_layer_call_fn_39208
6__inference_batch_normalization_61_layer_call_fn_39221
6__inference_batch_normalization_61_layer_call_fn_39234�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
C__inference_re_lu_51_layer_call_and_return_conditional_losses_39239�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
(__inference_re_lu_51_layer_call_fn_39244�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
D__inference_conv2d_62_layer_call_and_return_conditional_losses_39255�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
)__inference_conv2d_62_layer_call_fn_39264�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
Q__inference_batch_normalization_62_layer_call_and_return_conditional_losses_39282
Q__inference_batch_normalization_62_layer_call_and_return_conditional_losses_39300
Q__inference_batch_normalization_62_layer_call_and_return_conditional_losses_39318
Q__inference_batch_normalization_62_layer_call_and_return_conditional_losses_39336�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
6__inference_batch_normalization_62_layer_call_fn_39349
6__inference_batch_normalization_62_layer_call_fn_39362
6__inference_batch_normalization_62_layer_call_fn_39375
6__inference_batch_normalization_62_layer_call_fn_39388�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
C__inference_re_lu_52_layer_call_and_return_conditional_losses_39393�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
(__inference_re_lu_52_layer_call_fn_39398�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
D__inference_conv2d_63_layer_call_and_return_conditional_losses_39409�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
)__inference_conv2d_63_layer_call_fn_39418�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
Q__inference_batch_normalization_63_layer_call_and_return_conditional_losses_39436
Q__inference_batch_normalization_63_layer_call_and_return_conditional_losses_39454
Q__inference_batch_normalization_63_layer_call_and_return_conditional_losses_39472
Q__inference_batch_normalization_63_layer_call_and_return_conditional_losses_39490�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
6__inference_batch_normalization_63_layer_call_fn_39503
6__inference_batch_normalization_63_layer_call_fn_39516
6__inference_batch_normalization_63_layer_call_fn_39529
6__inference_batch_normalization_63_layer_call_fn_39542�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
I__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_39547�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
.__inference_leaky_re_lu_10_layer_call_fn_39552�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
D__inference_conv2d_64_layer_call_and_return_conditional_losses_39563�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
)__inference_conv2d_64_layer_call_fn_39572�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
Q__inference_batch_normalization_64_layer_call_and_return_conditional_losses_39590
Q__inference_batch_normalization_64_layer_call_and_return_conditional_losses_39608
Q__inference_batch_normalization_64_layer_call_and_return_conditional_losses_39626
Q__inference_batch_normalization_64_layer_call_and_return_conditional_losses_39644�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
6__inference_batch_normalization_64_layer_call_fn_39657
6__inference_batch_normalization_64_layer_call_fn_39670
6__inference_batch_normalization_64_layer_call_fn_39683
6__inference_batch_normalization_64_layer_call_fn_39696�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
C__inference_re_lu_53_layer_call_and_return_conditional_losses_39701�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
(__inference_re_lu_53_layer_call_fn_39706�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
D__inference_conv2d_65_layer_call_and_return_conditional_losses_39717�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
)__inference_conv2d_65_layer_call_fn_39726�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
Q__inference_batch_normalization_65_layer_call_and_return_conditional_losses_39744
Q__inference_batch_normalization_65_layer_call_and_return_conditional_losses_39762
Q__inference_batch_normalization_65_layer_call_and_return_conditional_losses_39780
Q__inference_batch_normalization_65_layer_call_and_return_conditional_losses_39798�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
6__inference_batch_normalization_65_layer_call_fn_39811
6__inference_batch_normalization_65_layer_call_fn_39824
6__inference_batch_normalization_65_layer_call_fn_39837
6__inference_batch_normalization_65_layer_call_fn_39850�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
C__inference_re_lu_54_layer_call_and_return_conditional_losses_39855�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
(__inference_re_lu_54_layer_call_fn_39860�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
E__inference_flatten_10_layer_call_and_return_conditional_losses_39866�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
*__inference_flatten_10_layer_call_fn_39871�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
C__inference_dense_10_layer_call_and_return_conditional_losses_39882�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
(__inference_dense_10_layer_call_fn_39891�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference_signature_wrapper_38482conv2d_60_input"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 �
 __inference__wrapped_model_36290�2%&'(89@ABCNOVWXYdelmnoz{������������@�=
6�3
1�.
conv2d_60_input���������(
� "3�0
.
dense_10"�
dense_10����������
Q__inference_batch_normalization_60_layer_call_and_return_conditional_losses_38974�%&'(M�J
C�@
:�7
inputs+��������������������������� 
p 
� "?�<
5�2
0+��������������������������� 
� �
Q__inference_batch_normalization_60_layer_call_and_return_conditional_losses_38992�%&'(M�J
C�@
:�7
inputs+��������������������������� 
p
� "?�<
5�2
0+��������������������������� 
� �
Q__inference_batch_normalization_60_layer_call_and_return_conditional_losses_39010r%&'(;�8
1�.
(�%
inputs���������( 
p 
� "-�*
#� 
0���������( 
� �
Q__inference_batch_normalization_60_layer_call_and_return_conditional_losses_39028r%&'(;�8
1�.
(�%
inputs���������( 
p
� "-�*
#� 
0���������( 
� �
6__inference_batch_normalization_60_layer_call_fn_39041�%&'(M�J
C�@
:�7
inputs+��������������������������� 
p 
� "2�/+��������������������������� �
6__inference_batch_normalization_60_layer_call_fn_39054�%&'(M�J
C�@
:�7
inputs+��������������������������� 
p
� "2�/+��������������������������� �
6__inference_batch_normalization_60_layer_call_fn_39067e%&'(;�8
1�.
(�%
inputs���������( 
p 
� " ����������( �
6__inference_batch_normalization_60_layer_call_fn_39080e%&'(;�8
1�.
(�%
inputs���������( 
p
� " ����������( �
Q__inference_batch_normalization_61_layer_call_and_return_conditional_losses_39128�@ABCM�J
C�@
:�7
inputs+���������������������������
p 
� "?�<
5�2
0+���������������������������
� �
Q__inference_batch_normalization_61_layer_call_and_return_conditional_losses_39146�@ABCM�J
C�@
:�7
inputs+���������������������������
p
� "?�<
5�2
0+���������������������������
� �
Q__inference_batch_normalization_61_layer_call_and_return_conditional_losses_39164r@ABC;�8
1�.
(�%
inputs���������
p 
� "-�*
#� 
0���������
� �
Q__inference_batch_normalization_61_layer_call_and_return_conditional_losses_39182r@ABC;�8
1�.
(�%
inputs���������
p
� "-�*
#� 
0���������
� �
6__inference_batch_normalization_61_layer_call_fn_39195�@ABCM�J
C�@
:�7
inputs+���������������������������
p 
� "2�/+����������������������������
6__inference_batch_normalization_61_layer_call_fn_39208�@ABCM�J
C�@
:�7
inputs+���������������������������
p
� "2�/+����������������������������
6__inference_batch_normalization_61_layer_call_fn_39221e@ABC;�8
1�.
(�%
inputs���������
p 
� " �����������
6__inference_batch_normalization_61_layer_call_fn_39234e@ABC;�8
1�.
(�%
inputs���������
p
� " �����������
Q__inference_batch_normalization_62_layer_call_and_return_conditional_losses_39282�VWXYM�J
C�@
:�7
inputs+���������������������������
p 
� "?�<
5�2
0+���������������������������
� �
Q__inference_batch_normalization_62_layer_call_and_return_conditional_losses_39300�VWXYM�J
C�@
:�7
inputs+���������������������������
p
� "?�<
5�2
0+���������������������������
� �
Q__inference_batch_normalization_62_layer_call_and_return_conditional_losses_39318rVWXY;�8
1�.
(�%
inputs���������
p 
� "-�*
#� 
0���������
� �
Q__inference_batch_normalization_62_layer_call_and_return_conditional_losses_39336rVWXY;�8
1�.
(�%
inputs���������
p
� "-�*
#� 
0���������
� �
6__inference_batch_normalization_62_layer_call_fn_39349�VWXYM�J
C�@
:�7
inputs+���������������������������
p 
� "2�/+����������������������������
6__inference_batch_normalization_62_layer_call_fn_39362�VWXYM�J
C�@
:�7
inputs+���������������������������
p
� "2�/+����������������������������
6__inference_batch_normalization_62_layer_call_fn_39375eVWXY;�8
1�.
(�%
inputs���������
p 
� " �����������
6__inference_batch_normalization_62_layer_call_fn_39388eVWXY;�8
1�.
(�%
inputs���������
p
� " �����������
Q__inference_batch_normalization_63_layer_call_and_return_conditional_losses_39436�lmnoM�J
C�@
:�7
inputs+���������������������������
p 
� "?�<
5�2
0+���������������������������
� �
Q__inference_batch_normalization_63_layer_call_and_return_conditional_losses_39454�lmnoM�J
C�@
:�7
inputs+���������������������������
p
� "?�<
5�2
0+���������������������������
� �
Q__inference_batch_normalization_63_layer_call_and_return_conditional_losses_39472rlmno;�8
1�.
(�%
inputs���������
p 
� "-�*
#� 
0���������
� �
Q__inference_batch_normalization_63_layer_call_and_return_conditional_losses_39490rlmno;�8
1�.
(�%
inputs���������
p
� "-�*
#� 
0���������
� �
6__inference_batch_normalization_63_layer_call_fn_39503�lmnoM�J
C�@
:�7
inputs+���������������������������
p 
� "2�/+����������������������������
6__inference_batch_normalization_63_layer_call_fn_39516�lmnoM�J
C�@
:�7
inputs+���������������������������
p
� "2�/+����������������������������
6__inference_batch_normalization_63_layer_call_fn_39529elmno;�8
1�.
(�%
inputs���������
p 
� " �����������
6__inference_batch_normalization_63_layer_call_fn_39542elmno;�8
1�.
(�%
inputs���������
p
� " �����������
Q__inference_batch_normalization_64_layer_call_and_return_conditional_losses_39590�����M�J
C�@
:�7
inputs+���������������������������
p 
� "?�<
5�2
0+���������������������������
� �
Q__inference_batch_normalization_64_layer_call_and_return_conditional_losses_39608�����M�J
C�@
:�7
inputs+���������������������������
p
� "?�<
5�2
0+���������������������������
� �
Q__inference_batch_normalization_64_layer_call_and_return_conditional_losses_39626v����;�8
1�.
(�%
inputs���������
p 
� "-�*
#� 
0���������
� �
Q__inference_batch_normalization_64_layer_call_and_return_conditional_losses_39644v����;�8
1�.
(�%
inputs���������
p
� "-�*
#� 
0���������
� �
6__inference_batch_normalization_64_layer_call_fn_39657�����M�J
C�@
:�7
inputs+���������������������������
p 
� "2�/+����������������������������
6__inference_batch_normalization_64_layer_call_fn_39670�����M�J
C�@
:�7
inputs+���������������������������
p
� "2�/+����������������������������
6__inference_batch_normalization_64_layer_call_fn_39683i����;�8
1�.
(�%
inputs���������
p 
� " �����������
6__inference_batch_normalization_64_layer_call_fn_39696i����;�8
1�.
(�%
inputs���������
p
� " �����������
Q__inference_batch_normalization_65_layer_call_and_return_conditional_losses_39744�����M�J
C�@
:�7
inputs+���������������������������
p 
� "?�<
5�2
0+���������������������������
� �
Q__inference_batch_normalization_65_layer_call_and_return_conditional_losses_39762�����M�J
C�@
:�7
inputs+���������������������������
p
� "?�<
5�2
0+���������������������������
� �
Q__inference_batch_normalization_65_layer_call_and_return_conditional_losses_39780v����;�8
1�.
(�%
inputs���������
p 
� "-�*
#� 
0���������
� �
Q__inference_batch_normalization_65_layer_call_and_return_conditional_losses_39798v����;�8
1�.
(�%
inputs���������
p
� "-�*
#� 
0���������
� �
6__inference_batch_normalization_65_layer_call_fn_39811�����M�J
C�@
:�7
inputs+���������������������������
p 
� "2�/+����������������������������
6__inference_batch_normalization_65_layer_call_fn_39824�����M�J
C�@
:�7
inputs+���������������������������
p
� "2�/+����������������������������
6__inference_batch_normalization_65_layer_call_fn_39837i����;�8
1�.
(�%
inputs���������
p 
� " �����������
6__inference_batch_normalization_65_layer_call_fn_39850i����;�8
1�.
(�%
inputs���������
p
� " �����������
D__inference_conv2d_60_layer_call_and_return_conditional_losses_38947l7�4
-�*
(�%
inputs���������(
� "-�*
#� 
0���������( 
� �
)__inference_conv2d_60_layer_call_fn_38956_7�4
-�*
(�%
inputs���������(
� " ����������( �
D__inference_conv2d_61_layer_call_and_return_conditional_losses_39101l897�4
-�*
(�%
inputs��������� 
� "-�*
#� 
0���������
� �
)__inference_conv2d_61_layer_call_fn_39110_897�4
-�*
(�%
inputs��������� 
� " �����������
D__inference_conv2d_62_layer_call_and_return_conditional_losses_39255lNO7�4
-�*
(�%
inputs���������
� "-�*
#� 
0���������
� �
)__inference_conv2d_62_layer_call_fn_39264_NO7�4
-�*
(�%
inputs���������
� " �����������
D__inference_conv2d_63_layer_call_and_return_conditional_losses_39409lde7�4
-�*
(�%
inputs���������
� "-�*
#� 
0���������
� �
)__inference_conv2d_63_layer_call_fn_39418_de7�4
-�*
(�%
inputs���������
� " �����������
D__inference_conv2d_64_layer_call_and_return_conditional_losses_39563lz{7�4
-�*
(�%
inputs���������
� "-�*
#� 
0���������
� �
)__inference_conv2d_64_layer_call_fn_39572_z{7�4
-�*
(�%
inputs���������
� " �����������
D__inference_conv2d_65_layer_call_and_return_conditional_losses_39717n��7�4
-�*
(�%
inputs���������
� "-�*
#� 
0���������
� �
)__inference_conv2d_65_layer_call_fn_39726a��7�4
-�*
(�%
inputs���������
� " �����������
C__inference_dense_10_layer_call_and_return_conditional_losses_39882_��0�-
&�#
!�
inputs����������
� "%�"
�
0���������
� ~
(__inference_dense_10_layer_call_fn_39891R��0�-
&�#
!�
inputs����������
� "�����������
E__inference_flatten_10_layer_call_and_return_conditional_losses_39866a7�4
-�*
(�%
inputs���������
� "&�#
�
0����������
� �
*__inference_flatten_10_layer_call_fn_39871T7�4
-�*
(�%
inputs���������
� "������������
I__inference_leaky_re_lu_10_layer_call_and_return_conditional_losses_39547h7�4
-�*
(�%
inputs���������
� "-�*
#� 
0���������
� �
.__inference_leaky_re_lu_10_layer_call_fn_39552[7�4
-�*
(�%
inputs���������
� " �����������
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_36422�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
0__inference_max_pooling2d_10_layer_call_fn_36428�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
C__inference_re_lu_50_layer_call_and_return_conditional_losses_39085h7�4
-�*
(�%
inputs���������( 
� "-�*
#� 
0���������( 
� �
(__inference_re_lu_50_layer_call_fn_39090[7�4
-�*
(�%
inputs���������( 
� " ����������( �
C__inference_re_lu_51_layer_call_and_return_conditional_losses_39239h7�4
-�*
(�%
inputs���������
� "-�*
#� 
0���������
� �
(__inference_re_lu_51_layer_call_fn_39244[7�4
-�*
(�%
inputs���������
� " �����������
C__inference_re_lu_52_layer_call_and_return_conditional_losses_39393h7�4
-�*
(�%
inputs���������
� "-�*
#� 
0���������
� �
(__inference_re_lu_52_layer_call_fn_39398[7�4
-�*
(�%
inputs���������
� " �����������
C__inference_re_lu_53_layer_call_and_return_conditional_losses_39701h7�4
-�*
(�%
inputs���������
� "-�*
#� 
0���������
� �
(__inference_re_lu_53_layer_call_fn_39706[7�4
-�*
(�%
inputs���������
� " �����������
C__inference_re_lu_54_layer_call_and_return_conditional_losses_39855h7�4
-�*
(�%
inputs���������
� "-�*
#� 
0���������
� �
(__inference_re_lu_54_layer_call_fn_39860[7�4
-�*
(�%
inputs���������
� " �����������
H__inference_sequential_10_layer_call_and_return_conditional_losses_38298�2%&'(89@ABCNOVWXYdelmnoz{������������H�E
>�;
1�.
conv2d_60_input���������(
p 

 
� "%�"
�
0���������
� �
H__inference_sequential_10_layer_call_and_return_conditional_losses_38399�2%&'(89@ABCNOVWXYdelmnoz{������������H�E
>�;
1�.
conv2d_60_input���������(
p

 
� "%�"
�
0���������
� �
H__inference_sequential_10_layer_call_and_return_conditional_losses_38628�2%&'(89@ABCNOVWXYdelmnoz{������������?�<
5�2
(�%
inputs���������(
p 

 
� "%�"
�
0���������
� �
H__inference_sequential_10_layer_call_and_return_conditional_losses_38774�2%&'(89@ABCNOVWXYdelmnoz{������������?�<
5�2
(�%
inputs���������(
p

 
� "%�"
�
0���������
� �
-__inference_sequential_10_layer_call_fn_37477�2%&'(89@ABCNOVWXYdelmnoz{������������H�E
>�;
1�.
conv2d_60_input���������(
p 

 
� "�����������
-__inference_sequential_10_layer_call_fn_38197�2%&'(89@ABCNOVWXYdelmnoz{������������H�E
>�;
1�.
conv2d_60_input���������(
p

 
� "�����������
-__inference_sequential_10_layer_call_fn_38855�2%&'(89@ABCNOVWXYdelmnoz{������������?�<
5�2
(�%
inputs���������(
p 

 
� "�����������
-__inference_sequential_10_layer_call_fn_38936�2%&'(89@ABCNOVWXYdelmnoz{������������?�<
5�2
(�%
inputs���������(
p

 
� "�����������
#__inference_signature_wrapper_38482�2%&'(89@ABCNOVWXYdelmnoz{������������S�P
� 
I�F
D
conv2d_60_input1�.
conv2d_60_input���������("3�0
.
dense_10"�
dense_10���������