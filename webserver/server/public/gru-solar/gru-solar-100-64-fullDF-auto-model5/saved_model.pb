Í÷
Ù
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
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
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
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
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	
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
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype

SplitV

value"T
size_splits"Tlen
	split_dim
output"T*	num_split"
	num_splitint(0"	
Ttype"
Tlentype0	:
2	
¾
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
executor_typestring 
@
StaticRegexFullMatch	
input

output
"
patternstring
ö
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	

TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type
output_handle"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements

handle"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsintÿÿÿÿÿÿÿÿÿ
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 

While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718Ð
}
dense_200/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Èd*!
shared_namedense_200/kernel
v
$dense_200/kernel/Read/ReadVariableOpReadVariableOpdense_200/kernel*
_output_shapes
:	Èd*
dtype0
t
dense_200/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*
shared_namedense_200/bias
m
"dense_200/bias/Read/ReadVariableOpReadVariableOpdense_200/bias*
_output_shapes
:d*
dtype0
|
dense_201/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*!
shared_namedense_201/kernel
u
$dense_201/kernel/Read/ReadVariableOpReadVariableOpdense_201/kernel*
_output_shapes

:d*
dtype0
t
dense_201/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_201/bias
m
"dense_201/bias/Read/ReadVariableOpReadVariableOpdense_201/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0

gru_100/gru_cell_100/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ø*,
shared_namegru_100/gru_cell_100/kernel

/gru_100/gru_cell_100/kernel/Read/ReadVariableOpReadVariableOpgru_100/gru_cell_100/kernel*
_output_shapes
:	Ø*
dtype0
¨
%gru_100/gru_cell_100/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ÈØ*6
shared_name'%gru_100/gru_cell_100/recurrent_kernel
¡
9gru_100/gru_cell_100/recurrent_kernel/Read/ReadVariableOpReadVariableOp%gru_100/gru_cell_100/recurrent_kernel* 
_output_shapes
:
ÈØ*
dtype0

gru_100/gru_cell_100/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:Ø**
shared_namegru_100/gru_cell_100/bias

-gru_100/gru_cell_100/bias/Read/ReadVariableOpReadVariableOpgru_100/gru_cell_100/bias*
_output_shapes	
:Ø*
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

Adam/dense_200/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Èd*(
shared_nameAdam/dense_200/kernel/m

+Adam/dense_200/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_200/kernel/m*
_output_shapes
:	Èd*
dtype0

Adam/dense_200/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*&
shared_nameAdam/dense_200/bias/m
{
)Adam/dense_200/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_200/bias/m*
_output_shapes
:d*
dtype0

Adam/dense_201/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*(
shared_nameAdam/dense_201/kernel/m

+Adam/dense_201/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_201/kernel/m*
_output_shapes

:d*
dtype0

Adam/dense_201/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_201/bias/m
{
)Adam/dense_201/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_201/bias/m*
_output_shapes
:*
dtype0
¡
"Adam/gru_100/gru_cell_100/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ø*3
shared_name$"Adam/gru_100/gru_cell_100/kernel/m

6Adam/gru_100/gru_cell_100/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/gru_100/gru_cell_100/kernel/m*
_output_shapes
:	Ø*
dtype0
¶
,Adam/gru_100/gru_cell_100/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ÈØ*=
shared_name.,Adam/gru_100/gru_cell_100/recurrent_kernel/m
¯
@Adam/gru_100/gru_cell_100/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/gru_100/gru_cell_100/recurrent_kernel/m* 
_output_shapes
:
ÈØ*
dtype0

 Adam/gru_100/gru_cell_100/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:Ø*1
shared_name" Adam/gru_100/gru_cell_100/bias/m

4Adam/gru_100/gru_cell_100/bias/m/Read/ReadVariableOpReadVariableOp Adam/gru_100/gru_cell_100/bias/m*
_output_shapes	
:Ø*
dtype0

Adam/dense_200/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Èd*(
shared_nameAdam/dense_200/kernel/v

+Adam/dense_200/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_200/kernel/v*
_output_shapes
:	Èd*
dtype0

Adam/dense_200/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*&
shared_nameAdam/dense_200/bias/v
{
)Adam/dense_200/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_200/bias/v*
_output_shapes
:d*
dtype0

Adam/dense_201/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*(
shared_nameAdam/dense_201/kernel/v

+Adam/dense_201/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_201/kernel/v*
_output_shapes

:d*
dtype0

Adam/dense_201/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_201/bias/v
{
)Adam/dense_201/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_201/bias/v*
_output_shapes
:*
dtype0
¡
"Adam/gru_100/gru_cell_100/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ø*3
shared_name$"Adam/gru_100/gru_cell_100/kernel/v

6Adam/gru_100/gru_cell_100/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/gru_100/gru_cell_100/kernel/v*
_output_shapes
:	Ø*
dtype0
¶
,Adam/gru_100/gru_cell_100/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ÈØ*=
shared_name.,Adam/gru_100/gru_cell_100/recurrent_kernel/v
¯
@Adam/gru_100/gru_cell_100/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/gru_100/gru_cell_100/recurrent_kernel/v* 
_output_shapes
:
ÈØ*
dtype0

 Adam/gru_100/gru_cell_100/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:Ø*1
shared_name" Adam/gru_100/gru_cell_100/bias/v

4Adam/gru_100/gru_cell_100/bias/v/Read/ReadVariableOpReadVariableOp Adam/gru_100/gru_cell_100/bias/v*
_output_shapes	
:Ø*
dtype0

NoOpNoOp
¦)
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*á(
value×(BÔ( BÍ(
æ
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	optimizer
	variables
regularization_losses
trainable_variables
	keras_api
	
signatures
l

cell

state_spec
	variables
regularization_losses
trainable_variables
	keras_api
h

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
h

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
¾
iter

beta_1

beta_2
	decay
 learning_ratemGmHmImJ!mK"mL#mMvNvOvPvQ!vR"vS#vT
1
!0
"1
#2
3
4
5
6
 
1
!0
"1
#2
3
4
5
6
­
$non_trainable_variables
	variables
%layer_regularization_losses
regularization_losses
&layer_metrics
trainable_variables
'metrics

(layers
 
~

!kernel
"recurrent_kernel
#bias
)	variables
*regularization_losses
+trainable_variables
,	keras_api
 

!0
"1
#2
 

!0
"1
#2
¹

-states
.non_trainable_variables
	variables
/layer_regularization_losses
regularization_losses
0layer_metrics
trainable_variables
1metrics

2layers
\Z
VARIABLE_VALUEdense_200/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_200/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
­
3non_trainable_variables
	variables
4layer_regularization_losses
regularization_losses
5layer_metrics
trainable_variables
6metrics

7layers
\Z
VARIABLE_VALUEdense_201/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_201/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
­
8non_trainable_variables
	variables
9layer_regularization_losses
regularization_losses
:layer_metrics
trainable_variables
;metrics

<layers
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEgru_100/gru_cell_100/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%gru_100/gru_cell_100/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEgru_100/gru_cell_100/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
 
 
 

=0

0
1
2

!0
"1
#2
 

!0
"1
#2
­
>non_trainable_variables
)	variables
?layer_regularization_losses
*regularization_losses
@layer_metrics
+trainable_variables
Ametrics

Blayers
 
 
 
 
 


0
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
4
	Ctotal
	Dcount
E	variables
F	keras_api
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

C0
D1

E	variables
}
VARIABLE_VALUEAdam/dense_200/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_200/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_201/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_201/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/gru_100/gru_cell_100/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/gru_100/gru_cell_100/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/gru_100/gru_cell_100/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_200/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_200/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_201/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_201/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/gru_100/gru_cell_100/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/gru_100/gru_cell_100/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/gru_100/gru_cell_100/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_gru_100_inputPlaceholder*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0* 
shape:ÿÿÿÿÿÿÿÿÿ
ê
StatefulPartitionedCallStatefulPartitionedCallserving_default_gru_100_inputgru_100/gru_cell_100/kernelgru_100/gru_cell_100/bias%gru_100/gru_cell_100/recurrent_kerneldense_200/kerneldense_200/biasdense_201/kerneldense_201/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8 *.
f)R'
%__inference_signature_wrapper_4934611
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_200/kernel/Read/ReadVariableOp"dense_200/bias/Read/ReadVariableOp$dense_201/kernel/Read/ReadVariableOp"dense_201/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp/gru_100/gru_cell_100/kernel/Read/ReadVariableOp9gru_100/gru_cell_100/recurrent_kernel/Read/ReadVariableOp-gru_100/gru_cell_100/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_200/kernel/m/Read/ReadVariableOp)Adam/dense_200/bias/m/Read/ReadVariableOp+Adam/dense_201/kernel/m/Read/ReadVariableOp)Adam/dense_201/bias/m/Read/ReadVariableOp6Adam/gru_100/gru_cell_100/kernel/m/Read/ReadVariableOp@Adam/gru_100/gru_cell_100/recurrent_kernel/m/Read/ReadVariableOp4Adam/gru_100/gru_cell_100/bias/m/Read/ReadVariableOp+Adam/dense_200/kernel/v/Read/ReadVariableOp)Adam/dense_200/bias/v/Read/ReadVariableOp+Adam/dense_201/kernel/v/Read/ReadVariableOp)Adam/dense_201/bias/v/Read/ReadVariableOp6Adam/gru_100/gru_cell_100/kernel/v/Read/ReadVariableOp@Adam/gru_100/gru_cell_100/recurrent_kernel/v/Read/ReadVariableOp4Adam/gru_100/gru_cell_100/bias/v/Read/ReadVariableOpConst*)
Tin"
 2	*
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
GPU 2J 8 *)
f$R"
 __inference__traced_save_4936011
Ñ
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_200/kerneldense_200/biasdense_201/kerneldense_201/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rategru_100/gru_cell_100/kernel%gru_100/gru_cell_100/recurrent_kernelgru_100/gru_cell_100/biastotalcountAdam/dense_200/kernel/mAdam/dense_200/bias/mAdam/dense_201/kernel/mAdam/dense_201/bias/m"Adam/gru_100/gru_cell_100/kernel/m,Adam/gru_100/gru_cell_100/recurrent_kernel/m Adam/gru_100/gru_cell_100/bias/mAdam/dense_200/kernel/vAdam/dense_200/bias/vAdam/dense_201/kernel/vAdam/dense_201/bias/v"Adam/gru_100/gru_cell_100/kernel/v,Adam/gru_100/gru_cell_100/recurrent_kernel/v Adam/gru_100/gru_cell_100/bias/v*(
Tin!
2*
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
GPU 2J 8 *,
f'R%
#__inference__traced_restore_4936105 
¾
û
)sequential_100_gru_100_while_body_4933310J
Fsequential_100_gru_100_while_sequential_100_gru_100_while_loop_counterP
Lsequential_100_gru_100_while_sequential_100_gru_100_while_maximum_iterations,
(sequential_100_gru_100_while_placeholder.
*sequential_100_gru_100_while_placeholder_1.
*sequential_100_gru_100_while_placeholder_2I
Esequential_100_gru_100_while_sequential_100_gru_100_strided_slice_1_0
sequential_100_gru_100_while_tensorarrayv2read_tensorlistgetitem_sequential_100_gru_100_tensorarrayunstack_tensorlistfromtensor_0]
Jsequential_100_gru_100_while_gru_cell_100_matmul_readvariableop_resource_0:	ØZ
Ksequential_100_gru_100_while_gru_cell_100_biasadd_readvariableop_resource_0:	ØW
Csequential_100_gru_100_while_gru_cell_100_readvariableop_resource_0:
ÈØ)
%sequential_100_gru_100_while_identity+
'sequential_100_gru_100_while_identity_1+
'sequential_100_gru_100_while_identity_2+
'sequential_100_gru_100_while_identity_3+
'sequential_100_gru_100_while_identity_4G
Csequential_100_gru_100_while_sequential_100_gru_100_strided_slice_1
sequential_100_gru_100_while_tensorarrayv2read_tensorlistgetitem_sequential_100_gru_100_tensorarrayunstack_tensorlistfromtensor[
Hsequential_100_gru_100_while_gru_cell_100_matmul_readvariableop_resource:	ØX
Isequential_100_gru_100_while_gru_cell_100_biasadd_readvariableop_resource:	ØU
Asequential_100_gru_100_while_gru_cell_100_readvariableop_resource:
ÈØ¢@sequential_100/gru_100/while/gru_cell_100/BiasAdd/ReadVariableOp¢?sequential_100/gru_100/while/gru_cell_100/MatMul/ReadVariableOp¢8sequential_100/gru_100/while/gru_cell_100/ReadVariableOp¢:sequential_100/gru_100/while/gru_cell_100/ReadVariableOp_1ñ
Nsequential_100/gru_100/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2P
Nsequential_100/gru_100/while/TensorArrayV2Read/TensorListGetItem/element_shapeÞ
@sequential_100/gru_100/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_100_gru_100_while_tensorarrayv2read_tensorlistgetitem_sequential_100_gru_100_tensorarrayunstack_tensorlistfromtensor_0(sequential_100_gru_100_while_placeholderWsequential_100/gru_100/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02B
@sequential_100/gru_100/while/TensorArrayV2Read/TensorListGetItem
?sequential_100/gru_100/while/gru_cell_100/MatMul/ReadVariableOpReadVariableOpJsequential_100_gru_100_while_gru_cell_100_matmul_readvariableop_resource_0*
_output_shapes
:	Ø*
dtype02A
?sequential_100/gru_100/while/gru_cell_100/MatMul/ReadVariableOp³
0sequential_100/gru_100/while/gru_cell_100/MatMulMatMulGsequential_100/gru_100/while/TensorArrayV2Read/TensorListGetItem:item:0Gsequential_100/gru_100/while/gru_cell_100/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ22
0sequential_100/gru_100/while/gru_cell_100/MatMul
@sequential_100/gru_100/while/gru_cell_100/BiasAdd/ReadVariableOpReadVariableOpKsequential_100_gru_100_while_gru_cell_100_biasadd_readvariableop_resource_0*
_output_shapes	
:Ø*
dtype02B
@sequential_100/gru_100/while/gru_cell_100/BiasAdd/ReadVariableOpª
1sequential_100/gru_100/while/gru_cell_100/BiasAddBiasAdd:sequential_100/gru_100/while/gru_cell_100/MatMul:product:0Hsequential_100/gru_100/while/gru_cell_100/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ23
1sequential_100/gru_100/while/gru_cell_100/BiasAddÁ
9sequential_100/gru_100/while/gru_cell_100/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2;
9sequential_100/gru_100/while/gru_cell_100/split/split_dim×
/sequential_100/gru_100/while/gru_cell_100/splitSplitBsequential_100/gru_100/while/gru_cell_100/split/split_dim:output:0:sequential_100/gru_100/while/gru_cell_100/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split21
/sequential_100/gru_100/while/gru_cell_100/splitú
8sequential_100/gru_100/while/gru_cell_100/ReadVariableOpReadVariableOpCsequential_100_gru_100_while_gru_cell_100_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02:
8sequential_100/gru_100/while/gru_cell_100/ReadVariableOpÏ
=sequential_100/gru_100/while/gru_cell_100/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2?
=sequential_100/gru_100/while/gru_cell_100/strided_slice/stackÓ
?sequential_100/gru_100/while/gru_cell_100/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2A
?sequential_100/gru_100/while/gru_cell_100/strided_slice/stack_1Ó
?sequential_100/gru_100/while/gru_cell_100/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2A
?sequential_100/gru_100/while/gru_cell_100/strided_slice/stack_2ú
7sequential_100/gru_100/while/gru_cell_100/strided_sliceStridedSlice@sequential_100/gru_100/while/gru_cell_100/ReadVariableOp:value:0Fsequential_100/gru_100/while/gru_cell_100/strided_slice/stack:output:0Hsequential_100/gru_100/while/gru_cell_100/strided_slice/stack_1:output:0Hsequential_100/gru_100/while/gru_cell_100/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask29
7sequential_100/gru_100/while/gru_cell_100/strided_slice
2sequential_100/gru_100/while/gru_cell_100/MatMul_1MatMul*sequential_100_gru_100_while_placeholder_2@sequential_100/gru_100/while/gru_cell_100/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2sequential_100/gru_100/while/gru_cell_100/MatMul_1·
/sequential_100/gru_100/while/gru_cell_100/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ21
/sequential_100/gru_100/while/gru_cell_100/ConstÅ
;sequential_100/gru_100/while/gru_cell_100/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2=
;sequential_100/gru_100/while/gru_cell_100/split_1/split_dim£
1sequential_100/gru_100/while/gru_cell_100/split_1SplitV<sequential_100/gru_100/while/gru_cell_100/MatMul_1:product:08sequential_100/gru_100/while/gru_cell_100/Const:output:0Dsequential_100/gru_100/while/gru_cell_100/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split23
1sequential_100/gru_100/while/gru_cell_100/split_1
-sequential_100/gru_100/while/gru_cell_100/addAddV28sequential_100/gru_100/while/gru_cell_100/split:output:0:sequential_100/gru_100/while/gru_cell_100/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2/
-sequential_100/gru_100/while/gru_cell_100/add×
1sequential_100/gru_100/while/gru_cell_100/SigmoidSigmoid1sequential_100/gru_100/while/gru_cell_100/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ23
1sequential_100/gru_100/while/gru_cell_100/Sigmoid
/sequential_100/gru_100/while/gru_cell_100/add_1AddV28sequential_100/gru_100/while/gru_cell_100/split:output:1:sequential_100/gru_100/while/gru_cell_100/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ21
/sequential_100/gru_100/while/gru_cell_100/add_1Ý
3sequential_100/gru_100/while/gru_cell_100/Sigmoid_1Sigmoid3sequential_100/gru_100/while/gru_cell_100/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ25
3sequential_100/gru_100/while/gru_cell_100/Sigmoid_1ý
-sequential_100/gru_100/while/gru_cell_100/mulMul7sequential_100/gru_100/while/gru_cell_100/Sigmoid_1:y:0*sequential_100_gru_100_while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2/
-sequential_100/gru_100/while/gru_cell_100/mulþ
:sequential_100/gru_100/while/gru_cell_100/ReadVariableOp_1ReadVariableOpCsequential_100_gru_100_while_gru_cell_100_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02<
:sequential_100/gru_100/while/gru_cell_100/ReadVariableOp_1Ó
?sequential_100/gru_100/while/gru_cell_100/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2A
?sequential_100/gru_100/while/gru_cell_100/strided_slice_1/stack×
Asequential_100/gru_100/while/gru_cell_100/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2C
Asequential_100/gru_100/while/gru_cell_100/strided_slice_1/stack_1×
Asequential_100/gru_100/while/gru_cell_100/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2C
Asequential_100/gru_100/while/gru_cell_100/strided_slice_1/stack_2
9sequential_100/gru_100/while/gru_cell_100/strided_slice_1StridedSliceBsequential_100/gru_100/while/gru_cell_100/ReadVariableOp_1:value:0Hsequential_100/gru_100/while/gru_cell_100/strided_slice_1/stack:output:0Jsequential_100/gru_100/while/gru_cell_100/strided_slice_1/stack_1:output:0Jsequential_100/gru_100/while/gru_cell_100/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2;
9sequential_100/gru_100/while/gru_cell_100/strided_slice_1
2sequential_100/gru_100/while/gru_cell_100/MatMul_2MatMul1sequential_100/gru_100/while/gru_cell_100/mul:z:0Bsequential_100/gru_100/while/gru_cell_100/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ24
2sequential_100/gru_100/while/gru_cell_100/MatMul_2
/sequential_100/gru_100/while/gru_cell_100/add_2AddV28sequential_100/gru_100/while/gru_cell_100/split:output:2<sequential_100/gru_100/while/gru_cell_100/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ21
/sequential_100/gru_100/while/gru_cell_100/add_2Ð
.sequential_100/gru_100/while/gru_cell_100/ReluRelu3sequential_100/gru_100/while/gru_cell_100/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ20
.sequential_100/gru_100/while/gru_cell_100/Reluÿ
/sequential_100/gru_100/while/gru_cell_100/mul_1Mul5sequential_100/gru_100/while/gru_cell_100/Sigmoid:y:0*sequential_100_gru_100_while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ21
/sequential_100/gru_100/while/gru_cell_100/mul_1§
/sequential_100/gru_100/while/gru_cell_100/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?21
/sequential_100/gru_100/while/gru_cell_100/sub/x
-sequential_100/gru_100/while/gru_cell_100/subSub8sequential_100/gru_100/while/gru_cell_100/sub/x:output:05sequential_100/gru_100/while/gru_cell_100/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2/
-sequential_100/gru_100/while/gru_cell_100/sub
/sequential_100/gru_100/while/gru_cell_100/mul_2Mul1sequential_100/gru_100/while/gru_cell_100/sub:z:0<sequential_100/gru_100/while/gru_cell_100/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ21
/sequential_100/gru_100/while/gru_cell_100/mul_2
/sequential_100/gru_100/while/gru_cell_100/add_3AddV23sequential_100/gru_100/while/gru_cell_100/mul_1:z:03sequential_100/gru_100/while/gru_cell_100/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ21
/sequential_100/gru_100/while/gru_cell_100/add_3Ó
Asequential_100/gru_100/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_100_gru_100_while_placeholder_1(sequential_100_gru_100_while_placeholder3sequential_100/gru_100/while/gru_cell_100/add_3:z:0*
_output_shapes
: *
element_dtype02C
Asequential_100/gru_100/while/TensorArrayV2Write/TensorListSetItem
"sequential_100/gru_100/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2$
"sequential_100/gru_100/while/add/yÅ
 sequential_100/gru_100/while/addAddV2(sequential_100_gru_100_while_placeholder+sequential_100/gru_100/while/add/y:output:0*
T0*
_output_shapes
: 2"
 sequential_100/gru_100/while/add
$sequential_100/gru_100/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2&
$sequential_100/gru_100/while/add_1/yé
"sequential_100/gru_100/while/add_1AddV2Fsequential_100_gru_100_while_sequential_100_gru_100_while_loop_counter-sequential_100/gru_100/while/add_1/y:output:0*
T0*
_output_shapes
: 2$
"sequential_100/gru_100/while/add_1 
%sequential_100/gru_100/while/IdentityIdentity&sequential_100/gru_100/while/add_1:z:0A^sequential_100/gru_100/while/gru_cell_100/BiasAdd/ReadVariableOp@^sequential_100/gru_100/while/gru_cell_100/MatMul/ReadVariableOp9^sequential_100/gru_100/while/gru_cell_100/ReadVariableOp;^sequential_100/gru_100/while/gru_cell_100/ReadVariableOp_1*
T0*
_output_shapes
: 2'
%sequential_100/gru_100/while/IdentityÊ
'sequential_100/gru_100/while/Identity_1IdentityLsequential_100_gru_100_while_sequential_100_gru_100_while_maximum_iterationsA^sequential_100/gru_100/while/gru_cell_100/BiasAdd/ReadVariableOp@^sequential_100/gru_100/while/gru_cell_100/MatMul/ReadVariableOp9^sequential_100/gru_100/while/gru_cell_100/ReadVariableOp;^sequential_100/gru_100/while/gru_cell_100/ReadVariableOp_1*
T0*
_output_shapes
: 2)
'sequential_100/gru_100/while/Identity_1¢
'sequential_100/gru_100/while/Identity_2Identity$sequential_100/gru_100/while/add:z:0A^sequential_100/gru_100/while/gru_cell_100/BiasAdd/ReadVariableOp@^sequential_100/gru_100/while/gru_cell_100/MatMul/ReadVariableOp9^sequential_100/gru_100/while/gru_cell_100/ReadVariableOp;^sequential_100/gru_100/while/gru_cell_100/ReadVariableOp_1*
T0*
_output_shapes
: 2)
'sequential_100/gru_100/while/Identity_2Ï
'sequential_100/gru_100/while/Identity_3IdentityQsequential_100/gru_100/while/TensorArrayV2Write/TensorListSetItem:output_handle:0A^sequential_100/gru_100/while/gru_cell_100/BiasAdd/ReadVariableOp@^sequential_100/gru_100/while/gru_cell_100/MatMul/ReadVariableOp9^sequential_100/gru_100/while/gru_cell_100/ReadVariableOp;^sequential_100/gru_100/while/gru_cell_100/ReadVariableOp_1*
T0*
_output_shapes
: 2)
'sequential_100/gru_100/while/Identity_3Ã
'sequential_100/gru_100/while/Identity_4Identity3sequential_100/gru_100/while/gru_cell_100/add_3:z:0A^sequential_100/gru_100/while/gru_cell_100/BiasAdd/ReadVariableOp@^sequential_100/gru_100/while/gru_cell_100/MatMul/ReadVariableOp9^sequential_100/gru_100/while/gru_cell_100/ReadVariableOp;^sequential_100/gru_100/while/gru_cell_100/ReadVariableOp_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2)
'sequential_100/gru_100/while/Identity_4"
Isequential_100_gru_100_while_gru_cell_100_biasadd_readvariableop_resourceKsequential_100_gru_100_while_gru_cell_100_biasadd_readvariableop_resource_0"
Hsequential_100_gru_100_while_gru_cell_100_matmul_readvariableop_resourceJsequential_100_gru_100_while_gru_cell_100_matmul_readvariableop_resource_0"
Asequential_100_gru_100_while_gru_cell_100_readvariableop_resourceCsequential_100_gru_100_while_gru_cell_100_readvariableop_resource_0"W
%sequential_100_gru_100_while_identity.sequential_100/gru_100/while/Identity:output:0"[
'sequential_100_gru_100_while_identity_10sequential_100/gru_100/while/Identity_1:output:0"[
'sequential_100_gru_100_while_identity_20sequential_100/gru_100/while/Identity_2:output:0"[
'sequential_100_gru_100_while_identity_30sequential_100/gru_100/while/Identity_3:output:0"[
'sequential_100_gru_100_while_identity_40sequential_100/gru_100/while/Identity_4:output:0"
Csequential_100_gru_100_while_sequential_100_gru_100_strided_slice_1Esequential_100_gru_100_while_sequential_100_gru_100_strided_slice_1_0"
sequential_100_gru_100_while_tensorarrayv2read_tensorlistgetitem_sequential_100_gru_100_tensorarrayunstack_tensorlistfromtensorsequential_100_gru_100_while_tensorarrayv2read_tensorlistgetitem_sequential_100_gru_100_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿÈ: : : : : 2
@sequential_100/gru_100/while/gru_cell_100/BiasAdd/ReadVariableOp@sequential_100/gru_100/while/gru_cell_100/BiasAdd/ReadVariableOp2
?sequential_100/gru_100/while/gru_cell_100/MatMul/ReadVariableOp?sequential_100/gru_100/while/gru_cell_100/MatMul/ReadVariableOp2t
8sequential_100/gru_100/while/gru_cell_100/ReadVariableOp8sequential_100/gru_100/while/gru_cell_100/ReadVariableOp2x
:sequential_100/gru_100/while/gru_cell_100/ReadVariableOp_1:sequential_100/gru_100/while/gru_cell_100/ReadVariableOp_1: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ:

_output_shapes
: :

_output_shapes
: 
#
½
while_body_4933717
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_gru_cell_100_4933739_0:	Ø+
while_gru_cell_100_4933741_0:	Ø0
while_gru_cell_100_4933743_0:
ÈØ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_gru_cell_100_4933739:	Ø)
while_gru_cell_100_4933741:	Ø.
while_gru_cell_100_4933743:
ÈØ¢*while/gru_cell_100/StatefulPartitionedCallÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem½
*while/gru_cell_100/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_gru_cell_100_4933739_0while_gru_cell_100_4933741_0while_gru_cell_100_4933743_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_gru_cell_100_layer_call_and_return_conditional_losses_49336502,
*while/gru_cell_100/StatefulPartitionedCall÷
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/gru_cell_100/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1
while/IdentityIdentitywhile/add_1:z:0+^while/gru_cell_100/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations+^while/gru_cell_100/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:0+^while/gru_cell_100/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2º
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/gru_cell_100/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3Å
while/Identity_4Identity3while/gru_cell_100/StatefulPartitionedCall:output:1+^while/gru_cell_100/StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_4":
while_gru_cell_100_4933739while_gru_cell_100_4933739_0":
while_gru_cell_100_4933741while_gru_cell_100_4933741_0":
while_gru_cell_100_4933743while_gru_cell_100_4933743_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿÈ: : : : : 2X
*while/gru_cell_100/StatefulPartitionedCall*while/gru_cell_100/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ:

_output_shapes
: :

_output_shapes
: 

¯
while_cond_4935091
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_4935091___redundant_placeholder05
1while_while_cond_4935091___redundant_placeholder15
1while_while_cond_4935091___redundant_placeholder25
1while_while_cond_4935091___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :ÿÿÿÿÿÿÿÿÿÈ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ:

_output_shapes
: :

_output_shapes
:
ê	
Ç
gru_100_while_cond_4934685,
(gru_100_while_gru_100_while_loop_counter2
.gru_100_while_gru_100_while_maximum_iterations
gru_100_while_placeholder
gru_100_while_placeholder_1
gru_100_while_placeholder_2.
*gru_100_while_less_gru_100_strided_slice_1E
Agru_100_while_gru_100_while_cond_4934685___redundant_placeholder0E
Agru_100_while_gru_100_while_cond_4934685___redundant_placeholder1E
Agru_100_while_gru_100_while_cond_4934685___redundant_placeholder2E
Agru_100_while_gru_100_while_cond_4934685___redundant_placeholder3
gru_100_while_identity

gru_100/while/LessLessgru_100_while_placeholder*gru_100_while_less_gru_100_strided_slice_1*
T0*
_output_shapes
: 2
gru_100/while/Lessu
gru_100/while/IdentityIdentitygru_100/while/Less:z:0*
T0
*
_output_shapes
: 2
gru_100/while/Identity"9
gru_100_while_identitygru_100/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :ÿÿÿÿÿÿÿÿÿÈ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ:

_output_shapes
: :

_output_shapes
:
Y
¯
while_body_4934359
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_gru_cell_100_matmul_readvariableop_resource_0:	ØC
4while_gru_cell_100_biasadd_readvariableop_resource_0:	Ø@
,while_gru_cell_100_readvariableop_resource_0:
ÈØ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_gru_cell_100_matmul_readvariableop_resource:	ØA
2while_gru_cell_100_biasadd_readvariableop_resource:	Ø>
*while_gru_cell_100_readvariableop_resource:
ÈØ¢)while/gru_cell_100/BiasAdd/ReadVariableOp¢(while/gru_cell_100/MatMul/ReadVariableOp¢!while/gru_cell_100/ReadVariableOp¢#while/gru_cell_100/ReadVariableOp_1Ã
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÉ
(while/gru_cell_100/MatMul/ReadVariableOpReadVariableOp3while_gru_cell_100_matmul_readvariableop_resource_0*
_output_shapes
:	Ø*
dtype02*
(while/gru_cell_100/MatMul/ReadVariableOp×
while/gru_cell_100/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/gru_cell_100/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
while/gru_cell_100/MatMulÈ
)while/gru_cell_100/BiasAdd/ReadVariableOpReadVariableOp4while_gru_cell_100_biasadd_readvariableop_resource_0*
_output_shapes	
:Ø*
dtype02+
)while/gru_cell_100/BiasAdd/ReadVariableOpÎ
while/gru_cell_100/BiasAddBiasAdd#while/gru_cell_100/MatMul:product:01while/gru_cell_100/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
while/gru_cell_100/BiasAdd
"while/gru_cell_100/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2$
"while/gru_cell_100/split/split_dimû
while/gru_cell_100/splitSplit+while/gru_cell_100/split/split_dim:output:0#while/gru_cell_100/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
while/gru_cell_100/splitµ
!while/gru_cell_100/ReadVariableOpReadVariableOp,while_gru_cell_100_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02#
!while/gru_cell_100/ReadVariableOp¡
&while/gru_cell_100/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/gru_cell_100/strided_slice/stack¥
(while/gru_cell_100/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_100/strided_slice/stack_1¥
(while/gru_cell_100/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_100/strided_slice/stack_2ð
 while/gru_cell_100/strided_sliceStridedSlice)while/gru_cell_100/ReadVariableOp:value:0/while/gru_cell_100/strided_slice/stack:output:01while/gru_cell_100/strided_slice/stack_1:output:01while/gru_cell_100/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2"
 while/gru_cell_100/strided_slice·
while/gru_cell_100/MatMul_1MatMulwhile_placeholder_2)while/gru_cell_100/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_100/MatMul_1
while/gru_cell_100/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2
while/gru_cell_100/Const
$while/gru_cell_100/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2&
$while/gru_cell_100/split_1/split_dim°
while/gru_cell_100/split_1SplitV%while/gru_cell_100/MatMul_1:product:0!while/gru_cell_100/Const:output:0-while/gru_cell_100/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2
while/gru_cell_100/split_1´
while/gru_cell_100/addAddV2!while/gru_cell_100/split:output:0#while/gru_cell_100/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_100/add
while/gru_cell_100/SigmoidSigmoidwhile/gru_cell_100/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_100/Sigmoid¸
while/gru_cell_100/add_1AddV2!while/gru_cell_100/split:output:1#while/gru_cell_100/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_100/add_1
while/gru_cell_100/Sigmoid_1Sigmoidwhile/gru_cell_100/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_100/Sigmoid_1¡
while/gru_cell_100/mulMul while/gru_cell_100/Sigmoid_1:y:0while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_100/mul¹
#while/gru_cell_100/ReadVariableOp_1ReadVariableOp,while_gru_cell_100_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02%
#while/gru_cell_100/ReadVariableOp_1¥
(while/gru_cell_100/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_100/strided_slice_1/stack©
*while/gru_cell_100/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/gru_cell_100/strided_slice_1/stack_1©
*while/gru_cell_100/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/gru_cell_100/strided_slice_1/stack_2ü
"while/gru_cell_100/strided_slice_1StridedSlice+while/gru_cell_100/ReadVariableOp_1:value:01while/gru_cell_100/strided_slice_1/stack:output:03while/gru_cell_100/strided_slice_1/stack_1:output:03while/gru_cell_100/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2$
"while/gru_cell_100/strided_slice_1À
while/gru_cell_100/MatMul_2MatMulwhile/gru_cell_100/mul:z:0+while/gru_cell_100/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_100/MatMul_2º
while/gru_cell_100/add_2AddV2!while/gru_cell_100/split:output:2%while/gru_cell_100/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_100/add_2
while/gru_cell_100/ReluReluwhile/gru_cell_100/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_100/Relu£
while/gru_cell_100/mul_1Mulwhile/gru_cell_100/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_100/mul_1y
while/gru_cell_100/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
while/gru_cell_100/sub/x­
while/gru_cell_100/subSub!while/gru_cell_100/sub/x:output:0while/gru_cell_100/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_100/sub±
while/gru_cell_100/mul_2Mulwhile/gru_cell_100/sub:z:0%while/gru_cell_100/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_100/mul_2¬
while/gru_cell_100/add_3AddV2while/gru_cell_100/mul_1:z:0while/gru_cell_100/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_100/add_3à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_100/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1ÿ
while/IdentityIdentitywhile/add_1:z:0*^while/gru_cell_100/BiasAdd/ReadVariableOp)^while/gru_cell_100/MatMul/ReadVariableOp"^while/gru_cell_100/ReadVariableOp$^while/gru_cell_100/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations*^while/gru_cell_100/BiasAdd/ReadVariableOp)^while/gru_cell_100/MatMul/ReadVariableOp"^while/gru_cell_100/ReadVariableOp$^while/gru_cell_100/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:0*^while/gru_cell_100/BiasAdd/ReadVariableOp)^while/gru_cell_100/MatMul/ReadVariableOp"^while/gru_cell_100/ReadVariableOp$^while/gru_cell_100/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_2®
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/gru_cell_100/BiasAdd/ReadVariableOp)^while/gru_cell_100/MatMul/ReadVariableOp"^while/gru_cell_100/ReadVariableOp$^while/gru_cell_100/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_3¢
while/Identity_4Identitywhile/gru_cell_100/add_3:z:0*^while/gru_cell_100/BiasAdd/ReadVariableOp)^while/gru_cell_100/MatMul/ReadVariableOp"^while/gru_cell_100/ReadVariableOp$^while/gru_cell_100/ReadVariableOp_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_4"j
2while_gru_cell_100_biasadd_readvariableop_resource4while_gru_cell_100_biasadd_readvariableop_resource_0"h
1while_gru_cell_100_matmul_readvariableop_resource3while_gru_cell_100_matmul_readvariableop_resource_0"Z
*while_gru_cell_100_readvariableop_resource,while_gru_cell_100_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿÈ: : : : : 2V
)while/gru_cell_100/BiasAdd/ReadVariableOp)while/gru_cell_100/BiasAdd/ReadVariableOp2T
(while/gru_cell_100/MatMul/ReadVariableOp(while/gru_cell_100/MatMul/ReadVariableOp2F
!while/gru_cell_100/ReadVariableOp!while/gru_cell_100/ReadVariableOp2J
#while/gru_cell_100/ReadVariableOp_1#while/gru_cell_100/ReadVariableOp_1: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ:

_output_shapes
: :

_output_shapes
: 
Ô*
é
I__inference_gru_cell_100_layer_call_and_return_conditional_losses_4933500

inputs

states1
matmul_readvariableop_resource:	Ø.
biasadd_readvariableop_resource:	Ø+
readvariableop_resource:
ÈØ
identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢ReadVariableOp¢ReadVariableOp_1
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	Ø*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Ø*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2	
BiasAddm
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
split/split_dim¯
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
splitz
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2þ
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2
strided_sliceq
MatMul_1MatMulstatesstrided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_1c
ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2
Constq
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
split_1/split_dimÑ
split_1SplitVMatMul_1:product:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2	
split_1h
addAddV2split:output:0split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
addY
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2	
Sigmoidl
add_1AddV2split:output:1split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
add_1_
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
	Sigmoid_1[
mulMulSigmoid_1:y:0states*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
mul~
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack_1
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2
strided_slice_1t
MatMul_2MatMulmul:z:0strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

MatMul_2n
add_2AddV2split:output:2MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
add_2R
ReluRelu	add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
Relu]
mul_1MulSigmoid:y:0states*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
sub/xa
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
sube
mul_2Mulsub:z:0Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
mul_2`
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
add_3³
IdentityIdentity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^ReadVariableOp^ReadVariableOp_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity·

Identity_1Identity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^ReadVariableOp^ReadVariableOp_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿÈ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
 
_user_specified_namestates
ìg
§

gru_100_while_body_4934686,
(gru_100_while_gru_100_while_loop_counter2
.gru_100_while_gru_100_while_maximum_iterations
gru_100_while_placeholder
gru_100_while_placeholder_1
gru_100_while_placeholder_2+
'gru_100_while_gru_100_strided_slice_1_0g
cgru_100_while_tensorarrayv2read_tensorlistgetitem_gru_100_tensorarrayunstack_tensorlistfromtensor_0N
;gru_100_while_gru_cell_100_matmul_readvariableop_resource_0:	ØK
<gru_100_while_gru_cell_100_biasadd_readvariableop_resource_0:	ØH
4gru_100_while_gru_cell_100_readvariableop_resource_0:
ÈØ
gru_100_while_identity
gru_100_while_identity_1
gru_100_while_identity_2
gru_100_while_identity_3
gru_100_while_identity_4)
%gru_100_while_gru_100_strided_slice_1e
agru_100_while_tensorarrayv2read_tensorlistgetitem_gru_100_tensorarrayunstack_tensorlistfromtensorL
9gru_100_while_gru_cell_100_matmul_readvariableop_resource:	ØI
:gru_100_while_gru_cell_100_biasadd_readvariableop_resource:	ØF
2gru_100_while_gru_cell_100_readvariableop_resource:
ÈØ¢1gru_100/while/gru_cell_100/BiasAdd/ReadVariableOp¢0gru_100/while/gru_cell_100/MatMul/ReadVariableOp¢)gru_100/while/gru_cell_100/ReadVariableOp¢+gru_100/while/gru_cell_100/ReadVariableOp_1Ó
?gru_100/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2A
?gru_100/while/TensorArrayV2Read/TensorListGetItem/element_shape
1gru_100/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemcgru_100_while_tensorarrayv2read_tensorlistgetitem_gru_100_tensorarrayunstack_tensorlistfromtensor_0gru_100_while_placeholderHgru_100/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype023
1gru_100/while/TensorArrayV2Read/TensorListGetItemá
0gru_100/while/gru_cell_100/MatMul/ReadVariableOpReadVariableOp;gru_100_while_gru_cell_100_matmul_readvariableop_resource_0*
_output_shapes
:	Ø*
dtype022
0gru_100/while/gru_cell_100/MatMul/ReadVariableOp÷
!gru_100/while/gru_cell_100/MatMulMatMul8gru_100/while/TensorArrayV2Read/TensorListGetItem:item:08gru_100/while/gru_cell_100/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2#
!gru_100/while/gru_cell_100/MatMulà
1gru_100/while/gru_cell_100/BiasAdd/ReadVariableOpReadVariableOp<gru_100_while_gru_cell_100_biasadd_readvariableop_resource_0*
_output_shapes	
:Ø*
dtype023
1gru_100/while/gru_cell_100/BiasAdd/ReadVariableOpî
"gru_100/while/gru_cell_100/BiasAddBiasAdd+gru_100/while/gru_cell_100/MatMul:product:09gru_100/while/gru_cell_100/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2$
"gru_100/while/gru_cell_100/BiasAdd£
*gru_100/while/gru_cell_100/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2,
*gru_100/while/gru_cell_100/split/split_dim
 gru_100/while/gru_cell_100/splitSplit3gru_100/while/gru_cell_100/split/split_dim:output:0+gru_100/while/gru_cell_100/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2"
 gru_100/while/gru_cell_100/splitÍ
)gru_100/while/gru_cell_100/ReadVariableOpReadVariableOp4gru_100_while_gru_cell_100_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02+
)gru_100/while/gru_cell_100/ReadVariableOp±
.gru_100/while/gru_cell_100/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        20
.gru_100/while/gru_cell_100/strided_slice/stackµ
0gru_100/while/gru_cell_100/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      22
0gru_100/while/gru_cell_100/strided_slice/stack_1µ
0gru_100/while/gru_cell_100/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0gru_100/while/gru_cell_100/strided_slice/stack_2 
(gru_100/while/gru_cell_100/strided_sliceStridedSlice1gru_100/while/gru_cell_100/ReadVariableOp:value:07gru_100/while/gru_cell_100/strided_slice/stack:output:09gru_100/while/gru_cell_100/strided_slice/stack_1:output:09gru_100/while/gru_cell_100/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2*
(gru_100/while/gru_cell_100/strided_slice×
#gru_100/while/gru_cell_100/MatMul_1MatMulgru_100_while_placeholder_21gru_100/while/gru_cell_100/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2%
#gru_100/while/gru_cell_100/MatMul_1
 gru_100/while/gru_cell_100/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2"
 gru_100/while/gru_cell_100/Const§
,gru_100/while/gru_cell_100/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2.
,gru_100/while/gru_cell_100/split_1/split_dimØ
"gru_100/while/gru_cell_100/split_1SplitV-gru_100/while/gru_cell_100/MatMul_1:product:0)gru_100/while/gru_cell_100/Const:output:05gru_100/while/gru_cell_100/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2$
"gru_100/while/gru_cell_100/split_1Ô
gru_100/while/gru_cell_100/addAddV2)gru_100/while/gru_cell_100/split:output:0+gru_100/while/gru_cell_100/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2 
gru_100/while/gru_cell_100/addª
"gru_100/while/gru_cell_100/SigmoidSigmoid"gru_100/while/gru_cell_100/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2$
"gru_100/while/gru_cell_100/SigmoidØ
 gru_100/while/gru_cell_100/add_1AddV2)gru_100/while/gru_cell_100/split:output:1+gru_100/while/gru_cell_100/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2"
 gru_100/while/gru_cell_100/add_1°
$gru_100/while/gru_cell_100/Sigmoid_1Sigmoid$gru_100/while/gru_cell_100/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2&
$gru_100/while/gru_cell_100/Sigmoid_1Á
gru_100/while/gru_cell_100/mulMul(gru_100/while/gru_cell_100/Sigmoid_1:y:0gru_100_while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2 
gru_100/while/gru_cell_100/mulÑ
+gru_100/while/gru_cell_100/ReadVariableOp_1ReadVariableOp4gru_100_while_gru_cell_100_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02-
+gru_100/while/gru_cell_100/ReadVariableOp_1µ
0gru_100/while/gru_cell_100/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      22
0gru_100/while/gru_cell_100/strided_slice_1/stack¹
2gru_100/while/gru_cell_100/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        24
2gru_100/while/gru_cell_100/strided_slice_1/stack_1¹
2gru_100/while/gru_cell_100/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2gru_100/while/gru_cell_100/strided_slice_1/stack_2¬
*gru_100/while/gru_cell_100/strided_slice_1StridedSlice3gru_100/while/gru_cell_100/ReadVariableOp_1:value:09gru_100/while/gru_cell_100/strided_slice_1/stack:output:0;gru_100/while/gru_cell_100/strided_slice_1/stack_1:output:0;gru_100/while/gru_cell_100/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2,
*gru_100/while/gru_cell_100/strided_slice_1à
#gru_100/while/gru_cell_100/MatMul_2MatMul"gru_100/while/gru_cell_100/mul:z:03gru_100/while/gru_cell_100/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2%
#gru_100/while/gru_cell_100/MatMul_2Ú
 gru_100/while/gru_cell_100/add_2AddV2)gru_100/while/gru_cell_100/split:output:2-gru_100/while/gru_cell_100/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2"
 gru_100/while/gru_cell_100/add_2£
gru_100/while/gru_cell_100/ReluRelu$gru_100/while/gru_cell_100/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2!
gru_100/while/gru_cell_100/ReluÃ
 gru_100/while/gru_cell_100/mul_1Mul&gru_100/while/gru_cell_100/Sigmoid:y:0gru_100_while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2"
 gru_100/while/gru_cell_100/mul_1
 gru_100/while/gru_cell_100/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2"
 gru_100/while/gru_cell_100/sub/xÍ
gru_100/while/gru_cell_100/subSub)gru_100/while/gru_cell_100/sub/x:output:0&gru_100/while/gru_cell_100/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2 
gru_100/while/gru_cell_100/subÑ
 gru_100/while/gru_cell_100/mul_2Mul"gru_100/while/gru_cell_100/sub:z:0-gru_100/while/gru_cell_100/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2"
 gru_100/while/gru_cell_100/mul_2Ì
 gru_100/while/gru_cell_100/add_3AddV2$gru_100/while/gru_cell_100/mul_1:z:0$gru_100/while/gru_cell_100/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2"
 gru_100/while/gru_cell_100/add_3
2gru_100/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemgru_100_while_placeholder_1gru_100_while_placeholder$gru_100/while/gru_cell_100/add_3:z:0*
_output_shapes
: *
element_dtype024
2gru_100/while/TensorArrayV2Write/TensorListSetIteml
gru_100/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru_100/while/add/y
gru_100/while/addAddV2gru_100_while_placeholdergru_100/while/add/y:output:0*
T0*
_output_shapes
: 2
gru_100/while/addp
gru_100/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru_100/while/add_1/y
gru_100/while/add_1AddV2(gru_100_while_gru_100_while_loop_countergru_100/while/add_1/y:output:0*
T0*
_output_shapes
: 2
gru_100/while/add_1·
gru_100/while/IdentityIdentitygru_100/while/add_1:z:02^gru_100/while/gru_cell_100/BiasAdd/ReadVariableOp1^gru_100/while/gru_cell_100/MatMul/ReadVariableOp*^gru_100/while/gru_cell_100/ReadVariableOp,^gru_100/while/gru_cell_100/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_100/while/IdentityÒ
gru_100/while/Identity_1Identity.gru_100_while_gru_100_while_maximum_iterations2^gru_100/while/gru_cell_100/BiasAdd/ReadVariableOp1^gru_100/while/gru_cell_100/MatMul/ReadVariableOp*^gru_100/while/gru_cell_100/ReadVariableOp,^gru_100/while/gru_cell_100/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_100/while/Identity_1¹
gru_100/while/Identity_2Identitygru_100/while/add:z:02^gru_100/while/gru_cell_100/BiasAdd/ReadVariableOp1^gru_100/while/gru_cell_100/MatMul/ReadVariableOp*^gru_100/while/gru_cell_100/ReadVariableOp,^gru_100/while/gru_cell_100/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_100/while/Identity_2æ
gru_100/while/Identity_3IdentityBgru_100/while/TensorArrayV2Write/TensorListSetItem:output_handle:02^gru_100/while/gru_cell_100/BiasAdd/ReadVariableOp1^gru_100/while/gru_cell_100/MatMul/ReadVariableOp*^gru_100/while/gru_cell_100/ReadVariableOp,^gru_100/while/gru_cell_100/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_100/while/Identity_3Ú
gru_100/while/Identity_4Identity$gru_100/while/gru_cell_100/add_3:z:02^gru_100/while/gru_cell_100/BiasAdd/ReadVariableOp1^gru_100/while/gru_cell_100/MatMul/ReadVariableOp*^gru_100/while/gru_cell_100/ReadVariableOp,^gru_100/while/gru_cell_100/ReadVariableOp_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_100/while/Identity_4"P
%gru_100_while_gru_100_strided_slice_1'gru_100_while_gru_100_strided_slice_1_0"z
:gru_100_while_gru_cell_100_biasadd_readvariableop_resource<gru_100_while_gru_cell_100_biasadd_readvariableop_resource_0"x
9gru_100_while_gru_cell_100_matmul_readvariableop_resource;gru_100_while_gru_cell_100_matmul_readvariableop_resource_0"j
2gru_100_while_gru_cell_100_readvariableop_resource4gru_100_while_gru_cell_100_readvariableop_resource_0"9
gru_100_while_identitygru_100/while/Identity:output:0"=
gru_100_while_identity_1!gru_100/while/Identity_1:output:0"=
gru_100_while_identity_2!gru_100/while/Identity_2:output:0"=
gru_100_while_identity_3!gru_100/while/Identity_3:output:0"=
gru_100_while_identity_4!gru_100/while/Identity_4:output:0"È
agru_100_while_tensorarrayv2read_tensorlistgetitem_gru_100_tensorarrayunstack_tensorlistfromtensorcgru_100_while_tensorarrayv2read_tensorlistgetitem_gru_100_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿÈ: : : : : 2f
1gru_100/while/gru_cell_100/BiasAdd/ReadVariableOp1gru_100/while/gru_cell_100/BiasAdd/ReadVariableOp2d
0gru_100/while/gru_cell_100/MatMul/ReadVariableOp0gru_100/while/gru_cell_100/MatMul/ReadVariableOp2V
)gru_100/while/gru_cell_100/ReadVariableOp)gru_100/while/gru_cell_100/ReadVariableOp2Z
+gru_100/while/gru_cell_100/ReadVariableOp_1+gru_100/while/gru_cell_100/ReadVariableOp_1: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ:

_output_shapes
: :

_output_shapes
: 
Ôi
«
D__inference_gru_100_layer_call_and_return_conditional_losses_4934455

inputs>
+gru_cell_100_matmul_readvariableop_resource:	Ø;
,gru_cell_100_biasadd_readvariableop_resource:	Ø8
$gru_cell_100_readvariableop_resource:
ÈØ
identity¢#gru_cell_100/BiasAdd/ReadVariableOp¢"gru_cell_100/MatMul/ReadVariableOp¢gru_cell_100/ReadVariableOp¢gru_cell_100/ReadVariableOp_1¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :È2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :È2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2µ
"gru_cell_100/MatMul/ReadVariableOpReadVariableOp+gru_cell_100_matmul_readvariableop_resource*
_output_shapes
:	Ø*
dtype02$
"gru_cell_100/MatMul/ReadVariableOp­
gru_cell_100/MatMulMatMulstrided_slice_2:output:0*gru_cell_100/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_cell_100/MatMul´
#gru_cell_100/BiasAdd/ReadVariableOpReadVariableOp,gru_cell_100_biasadd_readvariableop_resource*
_output_shapes	
:Ø*
dtype02%
#gru_cell_100/BiasAdd/ReadVariableOp¶
gru_cell_100/BiasAddBiasAddgru_cell_100/MatMul:product:0+gru_cell_100/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_cell_100/BiasAdd
gru_cell_100/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
gru_cell_100/split/split_dimã
gru_cell_100/splitSplit%gru_cell_100/split/split_dim:output:0gru_cell_100/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
gru_cell_100/split¡
gru_cell_100/ReadVariableOpReadVariableOp$gru_cell_100_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02
gru_cell_100/ReadVariableOp
 gru_cell_100/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 gru_cell_100/strided_slice/stack
"gru_cell_100/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_100/strided_slice/stack_1
"gru_cell_100/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_100/strided_slice/stack_2Ì
gru_cell_100/strided_sliceStridedSlice#gru_cell_100/ReadVariableOp:value:0)gru_cell_100/strided_slice/stack:output:0+gru_cell_100/strided_slice/stack_1:output:0+gru_cell_100/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2
gru_cell_100/strided_slice 
gru_cell_100/MatMul_1MatMulzeros:output:0#gru_cell_100/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_100/MatMul_1}
gru_cell_100/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2
gru_cell_100/Const
gru_cell_100/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2 
gru_cell_100/split_1/split_dim
gru_cell_100/split_1SplitVgru_cell_100/MatMul_1:product:0gru_cell_100/Const:output:0'gru_cell_100/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2
gru_cell_100/split_1
gru_cell_100/addAddV2gru_cell_100/split:output:0gru_cell_100/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_100/add
gru_cell_100/SigmoidSigmoidgru_cell_100/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_100/Sigmoid 
gru_cell_100/add_1AddV2gru_cell_100/split:output:1gru_cell_100/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_100/add_1
gru_cell_100/Sigmoid_1Sigmoidgru_cell_100/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_100/Sigmoid_1
gru_cell_100/mulMulgru_cell_100/Sigmoid_1:y:0zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_100/mul¥
gru_cell_100/ReadVariableOp_1ReadVariableOp$gru_cell_100_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02
gru_cell_100/ReadVariableOp_1
"gru_cell_100/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_100/strided_slice_1/stack
$gru_cell_100/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$gru_cell_100/strided_slice_1/stack_1
$gru_cell_100/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$gru_cell_100/strided_slice_1/stack_2Ø
gru_cell_100/strided_slice_1StridedSlice%gru_cell_100/ReadVariableOp_1:value:0+gru_cell_100/strided_slice_1/stack:output:0-gru_cell_100/strided_slice_1/stack_1:output:0-gru_cell_100/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2
gru_cell_100/strided_slice_1¨
gru_cell_100/MatMul_2MatMulgru_cell_100/mul:z:0%gru_cell_100/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_100/MatMul_2¢
gru_cell_100/add_2AddV2gru_cell_100/split:output:2gru_cell_100/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_100/add_2y
gru_cell_100/ReluRelugru_cell_100/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_100/Relu
gru_cell_100/mul_1Mulgru_cell_100/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_100/mul_1m
gru_cell_100/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_100/sub/x
gru_cell_100/subSubgru_cell_100/sub/x:output:0gru_cell_100/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_100/sub
gru_cell_100/mul_2Mulgru_cell_100/sub:z:0gru_cell_100/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_100/mul_2
gru_cell_100/add_3AddV2gru_cell_100/mul_1:z:0gru_cell_100/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_100/add_3
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÈ   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter°
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+gru_cell_100_matmul_readvariableop_resource,gru_cell_100_biasadd_readvariableop_resource$gru_cell_100_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿÈ: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_4934359*
condR
while_cond_4934358*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿÈ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÈ   22
0TensorArrayV2Stack/TensorListStack/element_shapeé
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¦
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeþ
IdentityIdentitystrided_slice_3:output:0$^gru_cell_100/BiasAdd/ReadVariableOp#^gru_cell_100/MatMul/ReadVariableOp^gru_cell_100/ReadVariableOp^gru_cell_100/ReadVariableOp_1^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#gru_cell_100/BiasAdd/ReadVariableOp#gru_cell_100/BiasAdd/ReadVariableOp2H
"gru_cell_100/MatMul/ReadVariableOp"gru_cell_100/MatMul/ReadVariableOp2:
gru_cell_100/ReadVariableOpgru_cell_100/ReadVariableOp2>
gru_cell_100/ReadVariableOp_1gru_cell_100/ReadVariableOp_12
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
	
«
0__inference_sequential_100_layer_call_fn_4935017

inputs
unknown:	Ø
	unknown_0:	Ø
	unknown_1:
ÈØ
	unknown_2:	Èd
	unknown_3:d
	unknown_4:d
	unknown_5:
identity¢StatefulPartitionedCall¼
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_sequential_100_layer_call_and_return_conditional_losses_49345062
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
j
­
D__inference_gru_100_layer_call_and_return_conditional_losses_4935188
inputs_0>
+gru_cell_100_matmul_readvariableop_resource:	Ø;
,gru_cell_100_biasadd_readvariableop_resource:	Ø8
$gru_cell_100_readvariableop_resource:
ÈØ
identity¢#gru_cell_100/BiasAdd/ReadVariableOp¢"gru_cell_100/MatMul/ReadVariableOp¢gru_cell_100/ReadVariableOp¢gru_cell_100/ReadVariableOp_1¢whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :È2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :È2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2µ
"gru_cell_100/MatMul/ReadVariableOpReadVariableOp+gru_cell_100_matmul_readvariableop_resource*
_output_shapes
:	Ø*
dtype02$
"gru_cell_100/MatMul/ReadVariableOp­
gru_cell_100/MatMulMatMulstrided_slice_2:output:0*gru_cell_100/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_cell_100/MatMul´
#gru_cell_100/BiasAdd/ReadVariableOpReadVariableOp,gru_cell_100_biasadd_readvariableop_resource*
_output_shapes	
:Ø*
dtype02%
#gru_cell_100/BiasAdd/ReadVariableOp¶
gru_cell_100/BiasAddBiasAddgru_cell_100/MatMul:product:0+gru_cell_100/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_cell_100/BiasAdd
gru_cell_100/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
gru_cell_100/split/split_dimã
gru_cell_100/splitSplit%gru_cell_100/split/split_dim:output:0gru_cell_100/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
gru_cell_100/split¡
gru_cell_100/ReadVariableOpReadVariableOp$gru_cell_100_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02
gru_cell_100/ReadVariableOp
 gru_cell_100/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 gru_cell_100/strided_slice/stack
"gru_cell_100/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_100/strided_slice/stack_1
"gru_cell_100/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_100/strided_slice/stack_2Ì
gru_cell_100/strided_sliceStridedSlice#gru_cell_100/ReadVariableOp:value:0)gru_cell_100/strided_slice/stack:output:0+gru_cell_100/strided_slice/stack_1:output:0+gru_cell_100/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2
gru_cell_100/strided_slice 
gru_cell_100/MatMul_1MatMulzeros:output:0#gru_cell_100/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_100/MatMul_1}
gru_cell_100/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2
gru_cell_100/Const
gru_cell_100/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2 
gru_cell_100/split_1/split_dim
gru_cell_100/split_1SplitVgru_cell_100/MatMul_1:product:0gru_cell_100/Const:output:0'gru_cell_100/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2
gru_cell_100/split_1
gru_cell_100/addAddV2gru_cell_100/split:output:0gru_cell_100/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_100/add
gru_cell_100/SigmoidSigmoidgru_cell_100/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_100/Sigmoid 
gru_cell_100/add_1AddV2gru_cell_100/split:output:1gru_cell_100/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_100/add_1
gru_cell_100/Sigmoid_1Sigmoidgru_cell_100/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_100/Sigmoid_1
gru_cell_100/mulMulgru_cell_100/Sigmoid_1:y:0zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_100/mul¥
gru_cell_100/ReadVariableOp_1ReadVariableOp$gru_cell_100_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02
gru_cell_100/ReadVariableOp_1
"gru_cell_100/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_100/strided_slice_1/stack
$gru_cell_100/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$gru_cell_100/strided_slice_1/stack_1
$gru_cell_100/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$gru_cell_100/strided_slice_1/stack_2Ø
gru_cell_100/strided_slice_1StridedSlice%gru_cell_100/ReadVariableOp_1:value:0+gru_cell_100/strided_slice_1/stack:output:0-gru_cell_100/strided_slice_1/stack_1:output:0-gru_cell_100/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2
gru_cell_100/strided_slice_1¨
gru_cell_100/MatMul_2MatMulgru_cell_100/mul:z:0%gru_cell_100/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_100/MatMul_2¢
gru_cell_100/add_2AddV2gru_cell_100/split:output:2gru_cell_100/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_100/add_2y
gru_cell_100/ReluRelugru_cell_100/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_100/Relu
gru_cell_100/mul_1Mulgru_cell_100/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_100/mul_1m
gru_cell_100/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_100/sub/x
gru_cell_100/subSubgru_cell_100/sub/x:output:0gru_cell_100/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_100/sub
gru_cell_100/mul_2Mulgru_cell_100/sub:z:0gru_cell_100/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_100/mul_2
gru_cell_100/add_3AddV2gru_cell_100/mul_1:z:0gru_cell_100/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_100/add_3
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÈ   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter°
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+gru_cell_100_matmul_readvariableop_resource,gru_cell_100_biasadd_readvariableop_resource$gru_cell_100_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿÈ: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_4935092*
condR
while_cond_4935091*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿÈ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÈ   22
0TensorArrayV2Stack/TensorListStack/element_shapeò
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÈ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¯
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÈ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeþ
IdentityIdentitystrided_slice_3:output:0$^gru_cell_100/BiasAdd/ReadVariableOp#^gru_cell_100/MatMul/ReadVariableOp^gru_cell_100/ReadVariableOp^gru_cell_100/ReadVariableOp_1^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2J
#gru_cell_100/BiasAdd/ReadVariableOp#gru_cell_100/BiasAdd/ReadVariableOp2H
"gru_cell_100/MatMul/ReadVariableOp"gru_cell_100/MatMul/ReadVariableOp2:
gru_cell_100/ReadVariableOpgru_cell_100/ReadVariableOp2>
gru_cell_100/ReadVariableOp_1gru_cell_100/ReadVariableOp_12
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
¶

Ú
.__inference_gru_cell_100_layer_call_fn_4935904

inputs
states_0
unknown:	Ø
	unknown_0:	Ø
	unknown_1:
ÈØ
identity

identity_1¢StatefulPartitionedCall§
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_gru_cell_100_layer_call_and_return_conditional_losses_49336502
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿÈ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
"
_user_specified_name
states/0
Õ
·
)__inference_gru_100_layer_call_fn_4935745

inputs
unknown:	Ø
	unknown_0:	Ø
	unknown_1:
ÈØ
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_gru_100_layer_call_and_return_conditional_losses_49344552
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ï±
µ
"__inference__wrapped_model_4933419
gru_100_inputU
Bsequential_100_gru_100_gru_cell_100_matmul_readvariableop_resource:	ØR
Csequential_100_gru_100_gru_cell_100_biasadd_readvariableop_resource:	ØO
;sequential_100_gru_100_gru_cell_100_readvariableop_resource:
ÈØJ
7sequential_100_dense_200_matmul_readvariableop_resource:	ÈdF
8sequential_100_dense_200_biasadd_readvariableop_resource:dI
7sequential_100_dense_201_matmul_readvariableop_resource:dF
8sequential_100_dense_201_biasadd_readvariableop_resource:
identity¢/sequential_100/dense_200/BiasAdd/ReadVariableOp¢.sequential_100/dense_200/MatMul/ReadVariableOp¢/sequential_100/dense_201/BiasAdd/ReadVariableOp¢.sequential_100/dense_201/MatMul/ReadVariableOp¢:sequential_100/gru_100/gru_cell_100/BiasAdd/ReadVariableOp¢9sequential_100/gru_100/gru_cell_100/MatMul/ReadVariableOp¢2sequential_100/gru_100/gru_cell_100/ReadVariableOp¢4sequential_100/gru_100/gru_cell_100/ReadVariableOp_1¢sequential_100/gru_100/whiley
sequential_100/gru_100/ShapeShapegru_100_input*
T0*
_output_shapes
:2
sequential_100/gru_100/Shape¢
*sequential_100/gru_100/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_100/gru_100/strided_slice/stack¦
,sequential_100/gru_100/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_100/gru_100/strided_slice/stack_1¦
,sequential_100/gru_100/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_100/gru_100/strided_slice/stack_2ì
$sequential_100/gru_100/strided_sliceStridedSlice%sequential_100/gru_100/Shape:output:03sequential_100/gru_100/strided_slice/stack:output:05sequential_100/gru_100/strided_slice/stack_1:output:05sequential_100/gru_100/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$sequential_100/gru_100/strided_slice
"sequential_100/gru_100/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :È2$
"sequential_100/gru_100/zeros/mul/yÈ
 sequential_100/gru_100/zeros/mulMul-sequential_100/gru_100/strided_slice:output:0+sequential_100/gru_100/zeros/mul/y:output:0*
T0*
_output_shapes
: 2"
 sequential_100/gru_100/zeros/mul
#sequential_100/gru_100/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2%
#sequential_100/gru_100/zeros/Less/yÃ
!sequential_100/gru_100/zeros/LessLess$sequential_100/gru_100/zeros/mul:z:0,sequential_100/gru_100/zeros/Less/y:output:0*
T0*
_output_shapes
: 2#
!sequential_100/gru_100/zeros/Less
%sequential_100/gru_100/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :È2'
%sequential_100/gru_100/zeros/packed/1ß
#sequential_100/gru_100/zeros/packedPack-sequential_100/gru_100/strided_slice:output:0.sequential_100/gru_100/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2%
#sequential_100/gru_100/zeros/packed
"sequential_100/gru_100/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"sequential_100/gru_100/zeros/ConstÒ
sequential_100/gru_100/zerosFill,sequential_100/gru_100/zeros/packed:output:0+sequential_100/gru_100/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
sequential_100/gru_100/zeros£
%sequential_100/gru_100/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2'
%sequential_100/gru_100/transpose/permÆ
 sequential_100/gru_100/transpose	Transposegru_100_input.sequential_100/gru_100/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 sequential_100/gru_100/transpose
sequential_100/gru_100/Shape_1Shape$sequential_100/gru_100/transpose:y:0*
T0*
_output_shapes
:2 
sequential_100/gru_100/Shape_1¦
,sequential_100/gru_100/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_100/gru_100/strided_slice_1/stackª
.sequential_100/gru_100/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_100/gru_100/strided_slice_1/stack_1ª
.sequential_100/gru_100/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_100/gru_100/strided_slice_1/stack_2ø
&sequential_100/gru_100/strided_slice_1StridedSlice'sequential_100/gru_100/Shape_1:output:05sequential_100/gru_100/strided_slice_1/stack:output:07sequential_100/gru_100/strided_slice_1/stack_1:output:07sequential_100/gru_100/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&sequential_100/gru_100/strided_slice_1³
2sequential_100/gru_100/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ24
2sequential_100/gru_100/TensorArrayV2/element_shape
$sequential_100/gru_100/TensorArrayV2TensorListReserve;sequential_100/gru_100/TensorArrayV2/element_shape:output:0/sequential_100/gru_100/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02&
$sequential_100/gru_100/TensorArrayV2í
Lsequential_100/gru_100/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2N
Lsequential_100/gru_100/TensorArrayUnstack/TensorListFromTensor/element_shapeÔ
>sequential_100/gru_100/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_100/gru_100/transpose:y:0Usequential_100/gru_100/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02@
>sequential_100/gru_100/TensorArrayUnstack/TensorListFromTensor¦
,sequential_100/gru_100/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_100/gru_100/strided_slice_2/stackª
.sequential_100/gru_100/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_100/gru_100/strided_slice_2/stack_1ª
.sequential_100/gru_100/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_100/gru_100/strided_slice_2/stack_2
&sequential_100/gru_100/strided_slice_2StridedSlice$sequential_100/gru_100/transpose:y:05sequential_100/gru_100/strided_slice_2/stack:output:07sequential_100/gru_100/strided_slice_2/stack_1:output:07sequential_100/gru_100/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2(
&sequential_100/gru_100/strided_slice_2ú
9sequential_100/gru_100/gru_cell_100/MatMul/ReadVariableOpReadVariableOpBsequential_100_gru_100_gru_cell_100_matmul_readvariableop_resource*
_output_shapes
:	Ø*
dtype02;
9sequential_100/gru_100/gru_cell_100/MatMul/ReadVariableOp
*sequential_100/gru_100/gru_cell_100/MatMulMatMul/sequential_100/gru_100/strided_slice_2:output:0Asequential_100/gru_100/gru_cell_100/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2,
*sequential_100/gru_100/gru_cell_100/MatMulù
:sequential_100/gru_100/gru_cell_100/BiasAdd/ReadVariableOpReadVariableOpCsequential_100_gru_100_gru_cell_100_biasadd_readvariableop_resource*
_output_shapes	
:Ø*
dtype02<
:sequential_100/gru_100/gru_cell_100/BiasAdd/ReadVariableOp
+sequential_100/gru_100/gru_cell_100/BiasAddBiasAdd4sequential_100/gru_100/gru_cell_100/MatMul:product:0Bsequential_100/gru_100/gru_cell_100/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2-
+sequential_100/gru_100/gru_cell_100/BiasAddµ
3sequential_100/gru_100/gru_cell_100/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ25
3sequential_100/gru_100/gru_cell_100/split/split_dim¿
)sequential_100/gru_100/gru_cell_100/splitSplit<sequential_100/gru_100/gru_cell_100/split/split_dim:output:04sequential_100/gru_100/gru_cell_100/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2+
)sequential_100/gru_100/gru_cell_100/splitæ
2sequential_100/gru_100/gru_cell_100/ReadVariableOpReadVariableOp;sequential_100_gru_100_gru_cell_100_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype024
2sequential_100/gru_100/gru_cell_100/ReadVariableOpÃ
7sequential_100/gru_100/gru_cell_100/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7sequential_100/gru_100/gru_cell_100/strided_slice/stackÇ
9sequential_100/gru_100/gru_cell_100/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2;
9sequential_100/gru_100/gru_cell_100/strided_slice/stack_1Ç
9sequential_100/gru_100/gru_cell_100/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9sequential_100/gru_100/gru_cell_100/strided_slice/stack_2Ö
1sequential_100/gru_100/gru_cell_100/strided_sliceStridedSlice:sequential_100/gru_100/gru_cell_100/ReadVariableOp:value:0@sequential_100/gru_100/gru_cell_100/strided_slice/stack:output:0Bsequential_100/gru_100/gru_cell_100/strided_slice/stack_1:output:0Bsequential_100/gru_100/gru_cell_100/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask23
1sequential_100/gru_100/gru_cell_100/strided_sliceü
,sequential_100/gru_100/gru_cell_100/MatMul_1MatMul%sequential_100/gru_100/zeros:output:0:sequential_100/gru_100/gru_cell_100/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2.
,sequential_100/gru_100/gru_cell_100/MatMul_1«
)sequential_100/gru_100/gru_cell_100/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2+
)sequential_100/gru_100/gru_cell_100/Const¹
5sequential_100/gru_100/gru_cell_100/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ27
5sequential_100/gru_100/gru_cell_100/split_1/split_dim
+sequential_100/gru_100/gru_cell_100/split_1SplitV6sequential_100/gru_100/gru_cell_100/MatMul_1:product:02sequential_100/gru_100/gru_cell_100/Const:output:0>sequential_100/gru_100/gru_cell_100/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2-
+sequential_100/gru_100/gru_cell_100/split_1ø
'sequential_100/gru_100/gru_cell_100/addAddV22sequential_100/gru_100/gru_cell_100/split:output:04sequential_100/gru_100/gru_cell_100/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2)
'sequential_100/gru_100/gru_cell_100/addÅ
+sequential_100/gru_100/gru_cell_100/SigmoidSigmoid+sequential_100/gru_100/gru_cell_100/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2-
+sequential_100/gru_100/gru_cell_100/Sigmoidü
)sequential_100/gru_100/gru_cell_100/add_1AddV22sequential_100/gru_100/gru_cell_100/split:output:14sequential_100/gru_100/gru_cell_100/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2+
)sequential_100/gru_100/gru_cell_100/add_1Ë
-sequential_100/gru_100/gru_cell_100/Sigmoid_1Sigmoid-sequential_100/gru_100/gru_cell_100/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2/
-sequential_100/gru_100/gru_cell_100/Sigmoid_1æ
'sequential_100/gru_100/gru_cell_100/mulMul1sequential_100/gru_100/gru_cell_100/Sigmoid_1:y:0%sequential_100/gru_100/zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2)
'sequential_100/gru_100/gru_cell_100/mulê
4sequential_100/gru_100/gru_cell_100/ReadVariableOp_1ReadVariableOp;sequential_100_gru_100_gru_cell_100_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype026
4sequential_100/gru_100/gru_cell_100/ReadVariableOp_1Ç
9sequential_100/gru_100/gru_cell_100/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2;
9sequential_100/gru_100/gru_cell_100/strided_slice_1/stackË
;sequential_100/gru_100/gru_cell_100/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2=
;sequential_100/gru_100/gru_cell_100/strided_slice_1/stack_1Ë
;sequential_100/gru_100/gru_cell_100/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;sequential_100/gru_100/gru_cell_100/strided_slice_1/stack_2â
3sequential_100/gru_100/gru_cell_100/strided_slice_1StridedSlice<sequential_100/gru_100/gru_cell_100/ReadVariableOp_1:value:0Bsequential_100/gru_100/gru_cell_100/strided_slice_1/stack:output:0Dsequential_100/gru_100/gru_cell_100/strided_slice_1/stack_1:output:0Dsequential_100/gru_100/gru_cell_100/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask25
3sequential_100/gru_100/gru_cell_100/strided_slice_1
,sequential_100/gru_100/gru_cell_100/MatMul_2MatMul+sequential_100/gru_100/gru_cell_100/mul:z:0<sequential_100/gru_100/gru_cell_100/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2.
,sequential_100/gru_100/gru_cell_100/MatMul_2þ
)sequential_100/gru_100/gru_cell_100/add_2AddV22sequential_100/gru_100/gru_cell_100/split:output:26sequential_100/gru_100/gru_cell_100/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2+
)sequential_100/gru_100/gru_cell_100/add_2¾
(sequential_100/gru_100/gru_cell_100/ReluRelu-sequential_100/gru_100/gru_cell_100/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2*
(sequential_100/gru_100/gru_cell_100/Reluè
)sequential_100/gru_100/gru_cell_100/mul_1Mul/sequential_100/gru_100/gru_cell_100/Sigmoid:y:0%sequential_100/gru_100/zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2+
)sequential_100/gru_100/gru_cell_100/mul_1
)sequential_100/gru_100/gru_cell_100/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2+
)sequential_100/gru_100/gru_cell_100/sub/xñ
'sequential_100/gru_100/gru_cell_100/subSub2sequential_100/gru_100/gru_cell_100/sub/x:output:0/sequential_100/gru_100/gru_cell_100/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2)
'sequential_100/gru_100/gru_cell_100/subõ
)sequential_100/gru_100/gru_cell_100/mul_2Mul+sequential_100/gru_100/gru_cell_100/sub:z:06sequential_100/gru_100/gru_cell_100/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2+
)sequential_100/gru_100/gru_cell_100/mul_2ð
)sequential_100/gru_100/gru_cell_100/add_3AddV2-sequential_100/gru_100/gru_cell_100/mul_1:z:0-sequential_100/gru_100/gru_cell_100/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2+
)sequential_100/gru_100/gru_cell_100/add_3½
4sequential_100/gru_100/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÈ   26
4sequential_100/gru_100/TensorArrayV2_1/element_shape
&sequential_100/gru_100/TensorArrayV2_1TensorListReserve=sequential_100/gru_100/TensorArrayV2_1/element_shape:output:0/sequential_100/gru_100/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02(
&sequential_100/gru_100/TensorArrayV2_1|
sequential_100/gru_100/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_100/gru_100/time­
/sequential_100/gru_100/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ21
/sequential_100/gru_100/while/maximum_iterations
)sequential_100/gru_100/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2+
)sequential_100/gru_100/while/loop_counterò
sequential_100/gru_100/whileWhile2sequential_100/gru_100/while/loop_counter:output:08sequential_100/gru_100/while/maximum_iterations:output:0$sequential_100/gru_100/time:output:0/sequential_100/gru_100/TensorArrayV2_1:handle:0%sequential_100/gru_100/zeros:output:0/sequential_100/gru_100/strided_slice_1:output:0Nsequential_100/gru_100/TensorArrayUnstack/TensorListFromTensor:output_handle:0Bsequential_100_gru_100_gru_cell_100_matmul_readvariableop_resourceCsequential_100_gru_100_gru_cell_100_biasadd_readvariableop_resource;sequential_100_gru_100_gru_cell_100_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿÈ: : : : : *%
_read_only_resource_inputs
	*5
body-R+
)sequential_100_gru_100_while_body_4933310*5
cond-R+
)sequential_100_gru_100_while_cond_4933309*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿÈ: : : : : *
parallel_iterations 2
sequential_100/gru_100/whileã
Gsequential_100/gru_100/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÈ   2I
Gsequential_100/gru_100/TensorArrayV2Stack/TensorListStack/element_shapeÅ
9sequential_100/gru_100/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_100/gru_100/while:output:3Psequential_100/gru_100/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*
element_dtype02;
9sequential_100/gru_100/TensorArrayV2Stack/TensorListStack¯
,sequential_100/gru_100/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2.
,sequential_100/gru_100/strided_slice_3/stackª
.sequential_100/gru_100/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 20
.sequential_100/gru_100/strided_slice_3/stack_1ª
.sequential_100/gru_100/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_100/gru_100/strided_slice_3/stack_2¥
&sequential_100/gru_100/strided_slice_3StridedSliceBsequential_100/gru_100/TensorArrayV2Stack/TensorListStack:tensor:05sequential_100/gru_100/strided_slice_3/stack:output:07sequential_100/gru_100/strided_slice_3/stack_1:output:07sequential_100/gru_100/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*
shrink_axis_mask2(
&sequential_100/gru_100/strided_slice_3§
'sequential_100/gru_100/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2)
'sequential_100/gru_100/transpose_1/perm
"sequential_100/gru_100/transpose_1	TransposeBsequential_100/gru_100/TensorArrayV2Stack/TensorListStack:tensor:00sequential_100/gru_100/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2$
"sequential_100/gru_100/transpose_1
sequential_100/gru_100/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2 
sequential_100/gru_100/runtimeÙ
.sequential_100/dense_200/MatMul/ReadVariableOpReadVariableOp7sequential_100_dense_200_matmul_readvariableop_resource*
_output_shapes
:	Èd*
dtype020
.sequential_100/dense_200/MatMul/ReadVariableOpç
sequential_100/dense_200/MatMulMatMul/sequential_100/gru_100/strided_slice_3:output:06sequential_100/dense_200/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2!
sequential_100/dense_200/MatMul×
/sequential_100/dense_200/BiasAdd/ReadVariableOpReadVariableOp8sequential_100_dense_200_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype021
/sequential_100/dense_200/BiasAdd/ReadVariableOpå
 sequential_100/dense_200/BiasAddBiasAdd)sequential_100/dense_200/MatMul:product:07sequential_100/dense_200/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2"
 sequential_100/dense_200/BiasAdd£
sequential_100/dense_200/ReluRelu)sequential_100/dense_200/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
sequential_100/dense_200/ReluØ
.sequential_100/dense_201/MatMul/ReadVariableOpReadVariableOp7sequential_100_dense_201_matmul_readvariableop_resource*
_output_shapes

:d*
dtype020
.sequential_100/dense_201/MatMul/ReadVariableOpã
sequential_100/dense_201/MatMulMatMul+sequential_100/dense_200/Relu:activations:06sequential_100/dense_201/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
sequential_100/dense_201/MatMul×
/sequential_100/dense_201/BiasAdd/ReadVariableOpReadVariableOp8sequential_100_dense_201_biasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/sequential_100/dense_201/BiasAdd/ReadVariableOpå
 sequential_100/dense_201/BiasAddBiasAdd)sequential_100/dense_201/MatMul:product:07sequential_100/dense_201/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 sequential_100/dense_201/BiasAddÇ
IdentityIdentity)sequential_100/dense_201/BiasAdd:output:00^sequential_100/dense_200/BiasAdd/ReadVariableOp/^sequential_100/dense_200/MatMul/ReadVariableOp0^sequential_100/dense_201/BiasAdd/ReadVariableOp/^sequential_100/dense_201/MatMul/ReadVariableOp;^sequential_100/gru_100/gru_cell_100/BiasAdd/ReadVariableOp:^sequential_100/gru_100/gru_cell_100/MatMul/ReadVariableOp3^sequential_100/gru_100/gru_cell_100/ReadVariableOp5^sequential_100/gru_100/gru_cell_100/ReadVariableOp_1^sequential_100/gru_100/while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2b
/sequential_100/dense_200/BiasAdd/ReadVariableOp/sequential_100/dense_200/BiasAdd/ReadVariableOp2`
.sequential_100/dense_200/MatMul/ReadVariableOp.sequential_100/dense_200/MatMul/ReadVariableOp2b
/sequential_100/dense_201/BiasAdd/ReadVariableOp/sequential_100/dense_201/BiasAdd/ReadVariableOp2`
.sequential_100/dense_201/MatMul/ReadVariableOp.sequential_100/dense_201/MatMul/ReadVariableOp2x
:sequential_100/gru_100/gru_cell_100/BiasAdd/ReadVariableOp:sequential_100/gru_100/gru_cell_100/BiasAdd/ReadVariableOp2v
9sequential_100/gru_100/gru_cell_100/MatMul/ReadVariableOp9sequential_100/gru_100/gru_cell_100/MatMul/ReadVariableOp2h
2sequential_100/gru_100/gru_cell_100/ReadVariableOp2sequential_100/gru_100/gru_cell_100/ReadVariableOp2l
4sequential_100/gru_100/gru_cell_100/ReadVariableOp_14sequential_100/gru_100/gru_cell_100/ReadVariableOp_12<
sequential_100/gru_100/whilesequential_100/gru_100/while:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namegru_100_input
Ý=

D__inference_gru_100_layer_call_and_return_conditional_losses_4933781

inputs'
gru_cell_100_4933705:	Ø#
gru_cell_100_4933707:	Ø(
gru_cell_100_4933709:
ÈØ
identity¢$gru_cell_100/StatefulPartitionedCall¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :È2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :È2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2ü
$gru_cell_100/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0gru_cell_100_4933705gru_cell_100_4933707gru_cell_100_4933709*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_gru_cell_100_layer_call_and_return_conditional_losses_49336502&
$gru_cell_100/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÈ   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterñ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0gru_cell_100_4933705gru_cell_100_4933707gru_cell_100_4933709*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿÈ: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_4933717*
condR
while_cond_4933716*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿÈ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÈ   22
0TensorArrayV2Stack/TensorListStack/element_shapeò
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÈ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¯
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÈ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime
IdentityIdentitystrided_slice_3:output:0%^gru_cell_100/StatefulPartitionedCall^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2L
$gru_cell_100/StatefulPartitionedCall$gru_cell_100/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


+__inference_dense_201_layer_call_fn_4935784

inputs
unknown:d
	unknown_0:
identity¢StatefulPartitionedCallö
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_201_layer_call_and_return_conditional_losses_49342272
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
Þ*
ë
I__inference_gru_cell_100_layer_call_and_return_conditional_losses_4935876

inputs
states_01
matmul_readvariableop_resource:	Ø.
biasadd_readvariableop_resource:	Ø+
readvariableop_resource:
ÈØ
identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢ReadVariableOp¢ReadVariableOp_1
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	Ø*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Ø*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2	
BiasAddm
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
split/split_dim¯
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
splitz
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2þ
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2
strided_slices
MatMul_1MatMulstates_0strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_1c
ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2
Constq
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
split_1/split_dimÑ
split_1SplitVMatMul_1:product:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2	
split_1h
addAddV2split:output:0split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
addY
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2	
Sigmoidl
add_1AddV2split:output:1split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
add_1_
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
	Sigmoid_1]
mulMulSigmoid_1:y:0states_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
mul~
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack_1
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2
strided_slice_1t
MatMul_2MatMulmul:z:0strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

MatMul_2n
add_2AddV2split:output:2MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
add_2R
ReluRelu	add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
Relu_
mul_1MulSigmoid:y:0states_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
sub/xa
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
sube
mul_2Mulsub:z:0Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
mul_2`
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
add_3³
IdentityIdentity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^ReadVariableOp^ReadVariableOp_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity·

Identity_1Identity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^ReadVariableOp^ReadVariableOp_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿÈ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
"
_user_specified_name
states/0
¢

+__inference_dense_200_layer_call_fn_4935765

inputs
unknown:	Èd
	unknown_0:d
identity¢StatefulPartitionedCallö
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_200_layer_call_and_return_conditional_losses_49342112
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿÈ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
 
_user_specified_nameinputs

¯
while_cond_4935604
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_4935604___redundant_placeholder05
1while_while_cond_4935604___redundant_placeholder15
1while_while_cond_4935604___redundant_placeholder25
1while_while_cond_4935604___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :ÿÿÿÿÿÿÿÿÿÈ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ:

_output_shapes
: :

_output_shapes
:
²

ø
F__inference_dense_200_layer_call_and_return_conditional_losses_4935756

inputs1
matmul_readvariableop_resource:	Èd-
biasadd_readvariableop_resource:d
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	Èd*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿÈ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
 
_user_specified_nameinputs
	
«
0__inference_sequential_100_layer_call_fn_4934998

inputs
unknown:	Ø
	unknown_0:	Ø
	unknown_1:
ÈØ
	unknown_2:	Èd
	unknown_3:d
	unknown_4:d
	unknown_5:
identity¢StatefulPartitionedCall¼
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_sequential_100_layer_call_and_return_conditional_losses_49342342
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ý=

D__inference_gru_100_layer_call_and_return_conditional_losses_4933577

inputs'
gru_cell_100_4933501:	Ø#
gru_cell_100_4933503:	Ø(
gru_cell_100_4933505:
ÈØ
identity¢$gru_cell_100/StatefulPartitionedCall¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :È2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :È2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2ü
$gru_cell_100/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0gru_cell_100_4933501gru_cell_100_4933503gru_cell_100_4933505*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_gru_cell_100_layer_call_and_return_conditional_losses_49335002&
$gru_cell_100/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÈ   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterñ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0gru_cell_100_4933501gru_cell_100_4933503gru_cell_100_4933505*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿÈ: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_4933513*
condR
while_cond_4933512*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿÈ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÈ   22
0TensorArrayV2Stack/TensorListStack/element_shapeò
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÈ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¯
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÈ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime
IdentityIdentitystrided_slice_3:output:0%^gru_cell_100/StatefulPartitionedCall^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2L
$gru_cell_100/StatefulPartitionedCall$gru_cell_100/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ä
)sequential_100_gru_100_while_cond_4933309J
Fsequential_100_gru_100_while_sequential_100_gru_100_while_loop_counterP
Lsequential_100_gru_100_while_sequential_100_gru_100_while_maximum_iterations,
(sequential_100_gru_100_while_placeholder.
*sequential_100_gru_100_while_placeholder_1.
*sequential_100_gru_100_while_placeholder_2L
Hsequential_100_gru_100_while_less_sequential_100_gru_100_strided_slice_1c
_sequential_100_gru_100_while_sequential_100_gru_100_while_cond_4933309___redundant_placeholder0c
_sequential_100_gru_100_while_sequential_100_gru_100_while_cond_4933309___redundant_placeholder1c
_sequential_100_gru_100_while_sequential_100_gru_100_while_cond_4933309___redundant_placeholder2c
_sequential_100_gru_100_while_sequential_100_gru_100_while_cond_4933309___redundant_placeholder3)
%sequential_100_gru_100_while_identity
ã
!sequential_100/gru_100/while/LessLess(sequential_100_gru_100_while_placeholderHsequential_100_gru_100_while_less_sequential_100_gru_100_strided_slice_1*
T0*
_output_shapes
: 2#
!sequential_100/gru_100/while/Less¢
%sequential_100/gru_100/while/IdentityIdentity%sequential_100/gru_100/while/Less:z:0*
T0
*
_output_shapes
: 2'
%sequential_100/gru_100/while/Identity"W
%sequential_100_gru_100_while_identity.sequential_100/gru_100/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :ÿÿÿÿÿÿÿÿÿÈ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ:

_output_shapes
: :

_output_shapes
:
Ôi
«
D__inference_gru_100_layer_call_and_return_conditional_losses_4935530

inputs>
+gru_cell_100_matmul_readvariableop_resource:	Ø;
,gru_cell_100_biasadd_readvariableop_resource:	Ø8
$gru_cell_100_readvariableop_resource:
ÈØ
identity¢#gru_cell_100/BiasAdd/ReadVariableOp¢"gru_cell_100/MatMul/ReadVariableOp¢gru_cell_100/ReadVariableOp¢gru_cell_100/ReadVariableOp_1¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :È2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :È2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2µ
"gru_cell_100/MatMul/ReadVariableOpReadVariableOp+gru_cell_100_matmul_readvariableop_resource*
_output_shapes
:	Ø*
dtype02$
"gru_cell_100/MatMul/ReadVariableOp­
gru_cell_100/MatMulMatMulstrided_slice_2:output:0*gru_cell_100/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_cell_100/MatMul´
#gru_cell_100/BiasAdd/ReadVariableOpReadVariableOp,gru_cell_100_biasadd_readvariableop_resource*
_output_shapes	
:Ø*
dtype02%
#gru_cell_100/BiasAdd/ReadVariableOp¶
gru_cell_100/BiasAddBiasAddgru_cell_100/MatMul:product:0+gru_cell_100/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_cell_100/BiasAdd
gru_cell_100/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
gru_cell_100/split/split_dimã
gru_cell_100/splitSplit%gru_cell_100/split/split_dim:output:0gru_cell_100/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
gru_cell_100/split¡
gru_cell_100/ReadVariableOpReadVariableOp$gru_cell_100_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02
gru_cell_100/ReadVariableOp
 gru_cell_100/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 gru_cell_100/strided_slice/stack
"gru_cell_100/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_100/strided_slice/stack_1
"gru_cell_100/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_100/strided_slice/stack_2Ì
gru_cell_100/strided_sliceStridedSlice#gru_cell_100/ReadVariableOp:value:0)gru_cell_100/strided_slice/stack:output:0+gru_cell_100/strided_slice/stack_1:output:0+gru_cell_100/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2
gru_cell_100/strided_slice 
gru_cell_100/MatMul_1MatMulzeros:output:0#gru_cell_100/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_100/MatMul_1}
gru_cell_100/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2
gru_cell_100/Const
gru_cell_100/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2 
gru_cell_100/split_1/split_dim
gru_cell_100/split_1SplitVgru_cell_100/MatMul_1:product:0gru_cell_100/Const:output:0'gru_cell_100/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2
gru_cell_100/split_1
gru_cell_100/addAddV2gru_cell_100/split:output:0gru_cell_100/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_100/add
gru_cell_100/SigmoidSigmoidgru_cell_100/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_100/Sigmoid 
gru_cell_100/add_1AddV2gru_cell_100/split:output:1gru_cell_100/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_100/add_1
gru_cell_100/Sigmoid_1Sigmoidgru_cell_100/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_100/Sigmoid_1
gru_cell_100/mulMulgru_cell_100/Sigmoid_1:y:0zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_100/mul¥
gru_cell_100/ReadVariableOp_1ReadVariableOp$gru_cell_100_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02
gru_cell_100/ReadVariableOp_1
"gru_cell_100/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_100/strided_slice_1/stack
$gru_cell_100/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$gru_cell_100/strided_slice_1/stack_1
$gru_cell_100/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$gru_cell_100/strided_slice_1/stack_2Ø
gru_cell_100/strided_slice_1StridedSlice%gru_cell_100/ReadVariableOp_1:value:0+gru_cell_100/strided_slice_1/stack:output:0-gru_cell_100/strided_slice_1/stack_1:output:0-gru_cell_100/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2
gru_cell_100/strided_slice_1¨
gru_cell_100/MatMul_2MatMulgru_cell_100/mul:z:0%gru_cell_100/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_100/MatMul_2¢
gru_cell_100/add_2AddV2gru_cell_100/split:output:2gru_cell_100/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_100/add_2y
gru_cell_100/ReluRelugru_cell_100/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_100/Relu
gru_cell_100/mul_1Mulgru_cell_100/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_100/mul_1m
gru_cell_100/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_100/sub/x
gru_cell_100/subSubgru_cell_100/sub/x:output:0gru_cell_100/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_100/sub
gru_cell_100/mul_2Mulgru_cell_100/sub:z:0gru_cell_100/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_100/mul_2
gru_cell_100/add_3AddV2gru_cell_100/mul_1:z:0gru_cell_100/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_100/add_3
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÈ   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter°
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+gru_cell_100_matmul_readvariableop_resource,gru_cell_100_biasadd_readvariableop_resource$gru_cell_100_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿÈ: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_4935434*
condR
while_cond_4935433*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿÈ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÈ   22
0TensorArrayV2Stack/TensorListStack/element_shapeé
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¦
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeþ
IdentityIdentitystrided_slice_3:output:0$^gru_cell_100/BiasAdd/ReadVariableOp#^gru_cell_100/MatMul/ReadVariableOp^gru_cell_100/ReadVariableOp^gru_cell_100/ReadVariableOp_1^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#gru_cell_100/BiasAdd/ReadVariableOp#gru_cell_100/BiasAdd/ReadVariableOp2H
"gru_cell_100/MatMul/ReadVariableOp"gru_cell_100/MatMul/ReadVariableOp2:
gru_cell_100/ReadVariableOpgru_cell_100/ReadVariableOp2>
gru_cell_100/ReadVariableOp_1gru_cell_100/ReadVariableOp_12
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

¯
while_cond_4935433
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_4935433___redundant_placeholder05
1while_while_cond_4935433___redundant_placeholder15
1while_while_cond_4935433___redundant_placeholder25
1while_while_cond_4935433___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :ÿÿÿÿÿÿÿÿÿÈ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ:

_output_shapes
: :

_output_shapes
:
	
²
0__inference_sequential_100_layer_call_fn_4934251
gru_100_input
unknown:	Ø
	unknown_0:	Ø
	unknown_1:
ÈØ
	unknown_2:	Èd
	unknown_3:d
	unknown_4:d
	unknown_5:
identity¢StatefulPartitionedCallÃ
StatefulPartitionedCallStatefulPartitionedCallgru_100_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_sequential_100_layer_call_and_return_conditional_losses_49342342
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namegru_100_input

¯
while_cond_4933512
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_4933512___redundant_placeholder05
1while_while_cond_4933512___redundant_placeholder15
1while_while_cond_4933512___redundant_placeholder25
1while_while_cond_4933512___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :ÿÿÿÿÿÿÿÿÿÈ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ:

_output_shapes
: :

_output_shapes
:
Ò	
÷
F__inference_dense_201_layer_call_and_return_conditional_losses_4935775

inputs0
matmul_readvariableop_resource:d-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
{

#__inference__traced_restore_4936105
file_prefix4
!assignvariableop_dense_200_kernel:	Èd/
!assignvariableop_1_dense_200_bias:d5
#assignvariableop_2_dense_201_kernel:d/
!assignvariableop_3_dense_201_bias:&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: A
.assignvariableop_9_gru_100_gru_cell_100_kernel:	ØM
9assignvariableop_10_gru_100_gru_cell_100_recurrent_kernel:
ÈØ<
-assignvariableop_11_gru_100_gru_cell_100_bias:	Ø#
assignvariableop_12_total: #
assignvariableop_13_count: >
+assignvariableop_14_adam_dense_200_kernel_m:	Èd7
)assignvariableop_15_adam_dense_200_bias_m:d=
+assignvariableop_16_adam_dense_201_kernel_m:d7
)assignvariableop_17_adam_dense_201_bias_m:I
6assignvariableop_18_adam_gru_100_gru_cell_100_kernel_m:	ØT
@assignvariableop_19_adam_gru_100_gru_cell_100_recurrent_kernel_m:
ÈØC
4assignvariableop_20_adam_gru_100_gru_cell_100_bias_m:	Ø>
+assignvariableop_21_adam_dense_200_kernel_v:	Èd7
)assignvariableop_22_adam_dense_200_bias_v:d=
+assignvariableop_23_adam_dense_201_kernel_v:d7
)assignvariableop_24_adam_dense_201_bias_v:I
6assignvariableop_25_adam_gru_100_gru_cell_100_kernel_v:	ØT
@assignvariableop_26_adam_gru_100_gru_cell_100_recurrent_kernel_v:
ÈØC
4assignvariableop_27_adam_gru_100_gru_cell_100_bias_v:	Ø
identity_29¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_3¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9ü
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueþBûB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesÈ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*M
valueDBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices½
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapesv
t:::::::::::::::::::::::::::::*+
dtypes!
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity 
AssignVariableOpAssignVariableOp!assignvariableop_dense_200_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1¦
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_200_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2¨
AssignVariableOp_2AssignVariableOp#assignvariableop_2_dense_201_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3¦
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_201_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_4¡
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_iterIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5£
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_beta_1Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6£
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_beta_2Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7¢
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_decayIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8ª
AssignVariableOp_8AssignVariableOp%assignvariableop_8_adam_learning_rateIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9³
AssignVariableOp_9AssignVariableOp.assignvariableop_9_gru_100_gru_cell_100_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10Á
AssignVariableOp_10AssignVariableOp9assignvariableop_10_gru_100_gru_cell_100_recurrent_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11µ
AssignVariableOp_11AssignVariableOp-assignvariableop_11_gru_100_gru_cell_100_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12¡
AssignVariableOp_12AssignVariableOpassignvariableop_12_totalIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13¡
AssignVariableOp_13AssignVariableOpassignvariableop_13_countIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14³
AssignVariableOp_14AssignVariableOp+assignvariableop_14_adam_dense_200_kernel_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15±
AssignVariableOp_15AssignVariableOp)assignvariableop_15_adam_dense_200_bias_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16³
AssignVariableOp_16AssignVariableOp+assignvariableop_16_adam_dense_201_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17±
AssignVariableOp_17AssignVariableOp)assignvariableop_17_adam_dense_201_bias_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18¾
AssignVariableOp_18AssignVariableOp6assignvariableop_18_adam_gru_100_gru_cell_100_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19È
AssignVariableOp_19AssignVariableOp@assignvariableop_19_adam_gru_100_gru_cell_100_recurrent_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20¼
AssignVariableOp_20AssignVariableOp4assignvariableop_20_adam_gru_100_gru_cell_100_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21³
AssignVariableOp_21AssignVariableOp+assignvariableop_21_adam_dense_200_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22±
AssignVariableOp_22AssignVariableOp)assignvariableop_22_adam_dense_200_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23³
AssignVariableOp_23AssignVariableOp+assignvariableop_23_adam_dense_201_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24±
AssignVariableOp_24AssignVariableOp)assignvariableop_24_adam_dense_201_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25¾
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_gru_100_gru_cell_100_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26È
AssignVariableOp_26AssignVariableOp@assignvariableop_26_adam_gru_100_gru_cell_100_recurrent_kernel_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27¼
AssignVariableOp_27AssignVariableOp4assignvariableop_27_adam_gru_100_gru_cell_100_bias_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_279
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpÆ
Identity_28Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_28¹
Identity_29IdentityIdentity_28:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_29"#
identity_29Identity_29:output:0*M
_input_shapes<
:: : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_27AssignVariableOp_272(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
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
¦
Ñ
K__inference_sequential_100_layer_call_and_return_conditional_losses_4934563
gru_100_input"
gru_100_4934545:	Ø
gru_100_4934547:	Ø#
gru_100_4934549:
ÈØ$
dense_200_4934552:	Èd
dense_200_4934554:d#
dense_201_4934557:d
dense_201_4934559:
identity¢!dense_200/StatefulPartitionedCall¢!dense_201/StatefulPartitionedCall¢gru_100/StatefulPartitionedCall­
gru_100/StatefulPartitionedCallStatefulPartitionedCallgru_100_inputgru_100_4934545gru_100_4934547gru_100_4934549*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_gru_100_layer_call_and_return_conditional_losses_49341922!
gru_100/StatefulPartitionedCall¾
!dense_200/StatefulPartitionedCallStatefulPartitionedCall(gru_100/StatefulPartitionedCall:output:0dense_200_4934552dense_200_4934554*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_200_layer_call_and_return_conditional_losses_49342112#
!dense_200/StatefulPartitionedCallÀ
!dense_201/StatefulPartitionedCallStatefulPartitionedCall*dense_200/StatefulPartitionedCall:output:0dense_201_4934557dense_201_4934559*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_201_layer_call_and_return_conditional_losses_49342272#
!dense_201/StatefulPartitionedCallè
IdentityIdentity*dense_201/StatefulPartitionedCall:output:0"^dense_200/StatefulPartitionedCall"^dense_201/StatefulPartitionedCall ^gru_100/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2F
!dense_200/StatefulPartitionedCall!dense_200/StatefulPartitionedCall2F
!dense_201/StatefulPartitionedCall!dense_201/StatefulPartitionedCall2B
gru_100/StatefulPartitionedCallgru_100/StatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namegru_100_input
²

ø
F__inference_dense_200_layer_call_and_return_conditional_losses_4934211

inputs1
matmul_readvariableop_resource:	Èd-
biasadd_readvariableop_resource:d
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	Èd*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿÈ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
 
_user_specified_nameinputs
ÀA
ï
 __inference__traced_save_4936011
file_prefix/
+savev2_dense_200_kernel_read_readvariableop-
)savev2_dense_200_bias_read_readvariableop/
+savev2_dense_201_kernel_read_readvariableop-
)savev2_dense_201_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop:
6savev2_gru_100_gru_cell_100_kernel_read_readvariableopD
@savev2_gru_100_gru_cell_100_recurrent_kernel_read_readvariableop8
4savev2_gru_100_gru_cell_100_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_200_kernel_m_read_readvariableop4
0savev2_adam_dense_200_bias_m_read_readvariableop6
2savev2_adam_dense_201_kernel_m_read_readvariableop4
0savev2_adam_dense_201_bias_m_read_readvariableopA
=savev2_adam_gru_100_gru_cell_100_kernel_m_read_readvariableopK
Gsavev2_adam_gru_100_gru_cell_100_recurrent_kernel_m_read_readvariableop?
;savev2_adam_gru_100_gru_cell_100_bias_m_read_readvariableop6
2savev2_adam_dense_200_kernel_v_read_readvariableop4
0savev2_adam_dense_200_bias_v_read_readvariableop6
2savev2_adam_dense_201_kernel_v_read_readvariableop4
0savev2_adam_dense_201_bias_v_read_readvariableopA
=savev2_adam_gru_100_gru_cell_100_kernel_v_read_readvariableopK
Gsavev2_adam_gru_100_gru_cell_100_recurrent_kernel_v_read_readvariableop?
;savev2_adam_gru_100_gru_cell_100_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpoints
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
Const_1
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
ShardedFilename/shard¦
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameö
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueþBûB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesÂ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*M
valueDBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesè
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_200_kernel_read_readvariableop)savev2_dense_200_bias_read_readvariableop+savev2_dense_201_kernel_read_readvariableop)savev2_dense_201_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop6savev2_gru_100_gru_cell_100_kernel_read_readvariableop@savev2_gru_100_gru_cell_100_recurrent_kernel_read_readvariableop4savev2_gru_100_gru_cell_100_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_200_kernel_m_read_readvariableop0savev2_adam_dense_200_bias_m_read_readvariableop2savev2_adam_dense_201_kernel_m_read_readvariableop0savev2_adam_dense_201_bias_m_read_readvariableop=savev2_adam_gru_100_gru_cell_100_kernel_m_read_readvariableopGsavev2_adam_gru_100_gru_cell_100_recurrent_kernel_m_read_readvariableop;savev2_adam_gru_100_gru_cell_100_bias_m_read_readvariableop2savev2_adam_dense_200_kernel_v_read_readvariableop0savev2_adam_dense_200_bias_v_read_readvariableop2savev2_adam_dense_201_kernel_v_read_readvariableop0savev2_adam_dense_201_bias_v_read_readvariableop=savev2_adam_gru_100_gru_cell_100_kernel_v_read_readvariableopGsavev2_adam_gru_100_gru_cell_100_recurrent_kernel_v_read_readvariableop;savev2_adam_gru_100_gru_cell_100_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *+
dtypes!
2	2
SaveV2º
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes¡
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

identity_1Identity_1:output:0*ä
_input_shapesÒ
Ï: :	Èd:d:d:: : : : : :	Ø:
ÈØ:Ø: : :	Èd:d:d::	Ø:
ÈØ:Ø:	Èd:d:d::	Ø:
ÈØ:Ø: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	Èd: 

_output_shapes
:d:$ 

_output_shapes

:d: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :%
!

_output_shapes
:	Ø:&"
 
_output_shapes
:
ÈØ:!

_output_shapes	
:Ø:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	Èd: 

_output_shapes
:d:$ 

_output_shapes

:d: 

_output_shapes
::%!

_output_shapes
:	Ø:&"
 
_output_shapes
:
ÈØ:!

_output_shapes	
:Ø:%!

_output_shapes
:	Èd: 

_output_shapes
:d:$ 

_output_shapes

:d: 

_output_shapes
::%!

_output_shapes
:	Ø:&"
 
_output_shapes
:
ÈØ:!

_output_shapes	
:Ø:

_output_shapes
: 

¯
while_cond_4933716
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_4933716___redundant_placeholder05
1while_while_cond_4933716___redundant_placeholder15
1while_while_cond_4933716___redundant_placeholder25
1while_while_cond_4933716___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :ÿÿÿÿÿÿÿÿÿÈ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ:

_output_shapes
: :

_output_shapes
:
Ò	
÷
F__inference_dense_201_layer_call_and_return_conditional_losses_4934227

inputs0
matmul_readvariableop_resource:d-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
¶

Ú
.__inference_gru_cell_100_layer_call_fn_4935890

inputs
states_0
unknown:	Ø
	unknown_0:	Ø
	unknown_1:
ÈØ
identity

identity_1¢StatefulPartitionedCall§
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_gru_cell_100_layer_call_and_return_conditional_losses_49335002
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿÈ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
"
_user_specified_name
states/0
Ôi
«
D__inference_gru_100_layer_call_and_return_conditional_losses_4934192

inputs>
+gru_cell_100_matmul_readvariableop_resource:	Ø;
,gru_cell_100_biasadd_readvariableop_resource:	Ø8
$gru_cell_100_readvariableop_resource:
ÈØ
identity¢#gru_cell_100/BiasAdd/ReadVariableOp¢"gru_cell_100/MatMul/ReadVariableOp¢gru_cell_100/ReadVariableOp¢gru_cell_100/ReadVariableOp_1¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :È2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :È2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2µ
"gru_cell_100/MatMul/ReadVariableOpReadVariableOp+gru_cell_100_matmul_readvariableop_resource*
_output_shapes
:	Ø*
dtype02$
"gru_cell_100/MatMul/ReadVariableOp­
gru_cell_100/MatMulMatMulstrided_slice_2:output:0*gru_cell_100/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_cell_100/MatMul´
#gru_cell_100/BiasAdd/ReadVariableOpReadVariableOp,gru_cell_100_biasadd_readvariableop_resource*
_output_shapes	
:Ø*
dtype02%
#gru_cell_100/BiasAdd/ReadVariableOp¶
gru_cell_100/BiasAddBiasAddgru_cell_100/MatMul:product:0+gru_cell_100/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_cell_100/BiasAdd
gru_cell_100/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
gru_cell_100/split/split_dimã
gru_cell_100/splitSplit%gru_cell_100/split/split_dim:output:0gru_cell_100/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
gru_cell_100/split¡
gru_cell_100/ReadVariableOpReadVariableOp$gru_cell_100_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02
gru_cell_100/ReadVariableOp
 gru_cell_100/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 gru_cell_100/strided_slice/stack
"gru_cell_100/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_100/strided_slice/stack_1
"gru_cell_100/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_100/strided_slice/stack_2Ì
gru_cell_100/strided_sliceStridedSlice#gru_cell_100/ReadVariableOp:value:0)gru_cell_100/strided_slice/stack:output:0+gru_cell_100/strided_slice/stack_1:output:0+gru_cell_100/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2
gru_cell_100/strided_slice 
gru_cell_100/MatMul_1MatMulzeros:output:0#gru_cell_100/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_100/MatMul_1}
gru_cell_100/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2
gru_cell_100/Const
gru_cell_100/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2 
gru_cell_100/split_1/split_dim
gru_cell_100/split_1SplitVgru_cell_100/MatMul_1:product:0gru_cell_100/Const:output:0'gru_cell_100/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2
gru_cell_100/split_1
gru_cell_100/addAddV2gru_cell_100/split:output:0gru_cell_100/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_100/add
gru_cell_100/SigmoidSigmoidgru_cell_100/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_100/Sigmoid 
gru_cell_100/add_1AddV2gru_cell_100/split:output:1gru_cell_100/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_100/add_1
gru_cell_100/Sigmoid_1Sigmoidgru_cell_100/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_100/Sigmoid_1
gru_cell_100/mulMulgru_cell_100/Sigmoid_1:y:0zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_100/mul¥
gru_cell_100/ReadVariableOp_1ReadVariableOp$gru_cell_100_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02
gru_cell_100/ReadVariableOp_1
"gru_cell_100/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_100/strided_slice_1/stack
$gru_cell_100/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$gru_cell_100/strided_slice_1/stack_1
$gru_cell_100/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$gru_cell_100/strided_slice_1/stack_2Ø
gru_cell_100/strided_slice_1StridedSlice%gru_cell_100/ReadVariableOp_1:value:0+gru_cell_100/strided_slice_1/stack:output:0-gru_cell_100/strided_slice_1/stack_1:output:0-gru_cell_100/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2
gru_cell_100/strided_slice_1¨
gru_cell_100/MatMul_2MatMulgru_cell_100/mul:z:0%gru_cell_100/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_100/MatMul_2¢
gru_cell_100/add_2AddV2gru_cell_100/split:output:2gru_cell_100/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_100/add_2y
gru_cell_100/ReluRelugru_cell_100/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_100/Relu
gru_cell_100/mul_1Mulgru_cell_100/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_100/mul_1m
gru_cell_100/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_100/sub/x
gru_cell_100/subSubgru_cell_100/sub/x:output:0gru_cell_100/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_100/sub
gru_cell_100/mul_2Mulgru_cell_100/sub:z:0gru_cell_100/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_100/mul_2
gru_cell_100/add_3AddV2gru_cell_100/mul_1:z:0gru_cell_100/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_100/add_3
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÈ   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter°
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+gru_cell_100_matmul_readvariableop_resource,gru_cell_100_biasadd_readvariableop_resource$gru_cell_100_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿÈ: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_4934096*
condR
while_cond_4934095*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿÈ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÈ   22
0TensorArrayV2Stack/TensorListStack/element_shapeé
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¦
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeþ
IdentityIdentitystrided_slice_3:output:0$^gru_cell_100/BiasAdd/ReadVariableOp#^gru_cell_100/MatMul/ReadVariableOp^gru_cell_100/ReadVariableOp^gru_cell_100/ReadVariableOp_1^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#gru_cell_100/BiasAdd/ReadVariableOp#gru_cell_100/BiasAdd/ReadVariableOp2H
"gru_cell_100/MatMul/ReadVariableOp"gru_cell_100/MatMul/ReadVariableOp2:
gru_cell_100/ReadVariableOpgru_cell_100/ReadVariableOp2>
gru_cell_100/ReadVariableOp_1gru_cell_100/ReadVariableOp_12
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Õ
·
)__inference_gru_100_layer_call_fn_4935734

inputs
unknown:	Ø
	unknown_0:	Ø
	unknown_1:
ÈØ
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_gru_100_layer_call_and_return_conditional_losses_49341922
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
j
­
D__inference_gru_100_layer_call_and_return_conditional_losses_4935359
inputs_0>
+gru_cell_100_matmul_readvariableop_resource:	Ø;
,gru_cell_100_biasadd_readvariableop_resource:	Ø8
$gru_cell_100_readvariableop_resource:
ÈØ
identity¢#gru_cell_100/BiasAdd/ReadVariableOp¢"gru_cell_100/MatMul/ReadVariableOp¢gru_cell_100/ReadVariableOp¢gru_cell_100/ReadVariableOp_1¢whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :È2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :È2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2µ
"gru_cell_100/MatMul/ReadVariableOpReadVariableOp+gru_cell_100_matmul_readvariableop_resource*
_output_shapes
:	Ø*
dtype02$
"gru_cell_100/MatMul/ReadVariableOp­
gru_cell_100/MatMulMatMulstrided_slice_2:output:0*gru_cell_100/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_cell_100/MatMul´
#gru_cell_100/BiasAdd/ReadVariableOpReadVariableOp,gru_cell_100_biasadd_readvariableop_resource*
_output_shapes	
:Ø*
dtype02%
#gru_cell_100/BiasAdd/ReadVariableOp¶
gru_cell_100/BiasAddBiasAddgru_cell_100/MatMul:product:0+gru_cell_100/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_cell_100/BiasAdd
gru_cell_100/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
gru_cell_100/split/split_dimã
gru_cell_100/splitSplit%gru_cell_100/split/split_dim:output:0gru_cell_100/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
gru_cell_100/split¡
gru_cell_100/ReadVariableOpReadVariableOp$gru_cell_100_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02
gru_cell_100/ReadVariableOp
 gru_cell_100/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 gru_cell_100/strided_slice/stack
"gru_cell_100/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_100/strided_slice/stack_1
"gru_cell_100/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_100/strided_slice/stack_2Ì
gru_cell_100/strided_sliceStridedSlice#gru_cell_100/ReadVariableOp:value:0)gru_cell_100/strided_slice/stack:output:0+gru_cell_100/strided_slice/stack_1:output:0+gru_cell_100/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2
gru_cell_100/strided_slice 
gru_cell_100/MatMul_1MatMulzeros:output:0#gru_cell_100/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_100/MatMul_1}
gru_cell_100/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2
gru_cell_100/Const
gru_cell_100/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2 
gru_cell_100/split_1/split_dim
gru_cell_100/split_1SplitVgru_cell_100/MatMul_1:product:0gru_cell_100/Const:output:0'gru_cell_100/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2
gru_cell_100/split_1
gru_cell_100/addAddV2gru_cell_100/split:output:0gru_cell_100/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_100/add
gru_cell_100/SigmoidSigmoidgru_cell_100/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_100/Sigmoid 
gru_cell_100/add_1AddV2gru_cell_100/split:output:1gru_cell_100/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_100/add_1
gru_cell_100/Sigmoid_1Sigmoidgru_cell_100/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_100/Sigmoid_1
gru_cell_100/mulMulgru_cell_100/Sigmoid_1:y:0zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_100/mul¥
gru_cell_100/ReadVariableOp_1ReadVariableOp$gru_cell_100_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02
gru_cell_100/ReadVariableOp_1
"gru_cell_100/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_100/strided_slice_1/stack
$gru_cell_100/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$gru_cell_100/strided_slice_1/stack_1
$gru_cell_100/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$gru_cell_100/strided_slice_1/stack_2Ø
gru_cell_100/strided_slice_1StridedSlice%gru_cell_100/ReadVariableOp_1:value:0+gru_cell_100/strided_slice_1/stack:output:0-gru_cell_100/strided_slice_1/stack_1:output:0-gru_cell_100/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2
gru_cell_100/strided_slice_1¨
gru_cell_100/MatMul_2MatMulgru_cell_100/mul:z:0%gru_cell_100/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_100/MatMul_2¢
gru_cell_100/add_2AddV2gru_cell_100/split:output:2gru_cell_100/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_100/add_2y
gru_cell_100/ReluRelugru_cell_100/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_100/Relu
gru_cell_100/mul_1Mulgru_cell_100/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_100/mul_1m
gru_cell_100/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_100/sub/x
gru_cell_100/subSubgru_cell_100/sub/x:output:0gru_cell_100/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_100/sub
gru_cell_100/mul_2Mulgru_cell_100/sub:z:0gru_cell_100/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_100/mul_2
gru_cell_100/add_3AddV2gru_cell_100/mul_1:z:0gru_cell_100/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_100/add_3
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÈ   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter°
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+gru_cell_100_matmul_readvariableop_resource,gru_cell_100_biasadd_readvariableop_resource$gru_cell_100_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿÈ: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_4935263*
condR
while_cond_4935262*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿÈ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÈ   22
0TensorArrayV2Stack/TensorListStack/element_shapeò
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÈ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¯
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÈ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeþ
IdentityIdentitystrided_slice_3:output:0$^gru_cell_100/BiasAdd/ReadVariableOp#^gru_cell_100/MatMul/ReadVariableOp^gru_cell_100/ReadVariableOp^gru_cell_100/ReadVariableOp_1^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2J
#gru_cell_100/BiasAdd/ReadVariableOp#gru_cell_100/BiasAdd/ReadVariableOp2H
"gru_cell_100/MatMul/ReadVariableOp"gru_cell_100/MatMul/ReadVariableOp2:
gru_cell_100/ReadVariableOpgru_cell_100/ReadVariableOp2>
gru_cell_100/ReadVariableOp_1gru_cell_100/ReadVariableOp_12
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0

¯
while_cond_4935262
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_4935262___redundant_placeholder05
1while_while_cond_4935262___redundant_placeholder15
1while_while_cond_4935262___redundant_placeholder25
1while_while_cond_4935262___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :ÿÿÿÿÿÿÿÿÿÈ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ:

_output_shapes
: :

_output_shapes
:
ìg
§

gru_100_while_body_4934870,
(gru_100_while_gru_100_while_loop_counter2
.gru_100_while_gru_100_while_maximum_iterations
gru_100_while_placeholder
gru_100_while_placeholder_1
gru_100_while_placeholder_2+
'gru_100_while_gru_100_strided_slice_1_0g
cgru_100_while_tensorarrayv2read_tensorlistgetitem_gru_100_tensorarrayunstack_tensorlistfromtensor_0N
;gru_100_while_gru_cell_100_matmul_readvariableop_resource_0:	ØK
<gru_100_while_gru_cell_100_biasadd_readvariableop_resource_0:	ØH
4gru_100_while_gru_cell_100_readvariableop_resource_0:
ÈØ
gru_100_while_identity
gru_100_while_identity_1
gru_100_while_identity_2
gru_100_while_identity_3
gru_100_while_identity_4)
%gru_100_while_gru_100_strided_slice_1e
agru_100_while_tensorarrayv2read_tensorlistgetitem_gru_100_tensorarrayunstack_tensorlistfromtensorL
9gru_100_while_gru_cell_100_matmul_readvariableop_resource:	ØI
:gru_100_while_gru_cell_100_biasadd_readvariableop_resource:	ØF
2gru_100_while_gru_cell_100_readvariableop_resource:
ÈØ¢1gru_100/while/gru_cell_100/BiasAdd/ReadVariableOp¢0gru_100/while/gru_cell_100/MatMul/ReadVariableOp¢)gru_100/while/gru_cell_100/ReadVariableOp¢+gru_100/while/gru_cell_100/ReadVariableOp_1Ó
?gru_100/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2A
?gru_100/while/TensorArrayV2Read/TensorListGetItem/element_shape
1gru_100/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemcgru_100_while_tensorarrayv2read_tensorlistgetitem_gru_100_tensorarrayunstack_tensorlistfromtensor_0gru_100_while_placeholderHgru_100/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype023
1gru_100/while/TensorArrayV2Read/TensorListGetItemá
0gru_100/while/gru_cell_100/MatMul/ReadVariableOpReadVariableOp;gru_100_while_gru_cell_100_matmul_readvariableop_resource_0*
_output_shapes
:	Ø*
dtype022
0gru_100/while/gru_cell_100/MatMul/ReadVariableOp÷
!gru_100/while/gru_cell_100/MatMulMatMul8gru_100/while/TensorArrayV2Read/TensorListGetItem:item:08gru_100/while/gru_cell_100/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2#
!gru_100/while/gru_cell_100/MatMulà
1gru_100/while/gru_cell_100/BiasAdd/ReadVariableOpReadVariableOp<gru_100_while_gru_cell_100_biasadd_readvariableop_resource_0*
_output_shapes	
:Ø*
dtype023
1gru_100/while/gru_cell_100/BiasAdd/ReadVariableOpî
"gru_100/while/gru_cell_100/BiasAddBiasAdd+gru_100/while/gru_cell_100/MatMul:product:09gru_100/while/gru_cell_100/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2$
"gru_100/while/gru_cell_100/BiasAdd£
*gru_100/while/gru_cell_100/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2,
*gru_100/while/gru_cell_100/split/split_dim
 gru_100/while/gru_cell_100/splitSplit3gru_100/while/gru_cell_100/split/split_dim:output:0+gru_100/while/gru_cell_100/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2"
 gru_100/while/gru_cell_100/splitÍ
)gru_100/while/gru_cell_100/ReadVariableOpReadVariableOp4gru_100_while_gru_cell_100_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02+
)gru_100/while/gru_cell_100/ReadVariableOp±
.gru_100/while/gru_cell_100/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        20
.gru_100/while/gru_cell_100/strided_slice/stackµ
0gru_100/while/gru_cell_100/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      22
0gru_100/while/gru_cell_100/strided_slice/stack_1µ
0gru_100/while/gru_cell_100/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0gru_100/while/gru_cell_100/strided_slice/stack_2 
(gru_100/while/gru_cell_100/strided_sliceStridedSlice1gru_100/while/gru_cell_100/ReadVariableOp:value:07gru_100/while/gru_cell_100/strided_slice/stack:output:09gru_100/while/gru_cell_100/strided_slice/stack_1:output:09gru_100/while/gru_cell_100/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2*
(gru_100/while/gru_cell_100/strided_slice×
#gru_100/while/gru_cell_100/MatMul_1MatMulgru_100_while_placeholder_21gru_100/while/gru_cell_100/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2%
#gru_100/while/gru_cell_100/MatMul_1
 gru_100/while/gru_cell_100/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2"
 gru_100/while/gru_cell_100/Const§
,gru_100/while/gru_cell_100/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2.
,gru_100/while/gru_cell_100/split_1/split_dimØ
"gru_100/while/gru_cell_100/split_1SplitV-gru_100/while/gru_cell_100/MatMul_1:product:0)gru_100/while/gru_cell_100/Const:output:05gru_100/while/gru_cell_100/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2$
"gru_100/while/gru_cell_100/split_1Ô
gru_100/while/gru_cell_100/addAddV2)gru_100/while/gru_cell_100/split:output:0+gru_100/while/gru_cell_100/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2 
gru_100/while/gru_cell_100/addª
"gru_100/while/gru_cell_100/SigmoidSigmoid"gru_100/while/gru_cell_100/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2$
"gru_100/while/gru_cell_100/SigmoidØ
 gru_100/while/gru_cell_100/add_1AddV2)gru_100/while/gru_cell_100/split:output:1+gru_100/while/gru_cell_100/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2"
 gru_100/while/gru_cell_100/add_1°
$gru_100/while/gru_cell_100/Sigmoid_1Sigmoid$gru_100/while/gru_cell_100/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2&
$gru_100/while/gru_cell_100/Sigmoid_1Á
gru_100/while/gru_cell_100/mulMul(gru_100/while/gru_cell_100/Sigmoid_1:y:0gru_100_while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2 
gru_100/while/gru_cell_100/mulÑ
+gru_100/while/gru_cell_100/ReadVariableOp_1ReadVariableOp4gru_100_while_gru_cell_100_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02-
+gru_100/while/gru_cell_100/ReadVariableOp_1µ
0gru_100/while/gru_cell_100/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      22
0gru_100/while/gru_cell_100/strided_slice_1/stack¹
2gru_100/while/gru_cell_100/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        24
2gru_100/while/gru_cell_100/strided_slice_1/stack_1¹
2gru_100/while/gru_cell_100/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2gru_100/while/gru_cell_100/strided_slice_1/stack_2¬
*gru_100/while/gru_cell_100/strided_slice_1StridedSlice3gru_100/while/gru_cell_100/ReadVariableOp_1:value:09gru_100/while/gru_cell_100/strided_slice_1/stack:output:0;gru_100/while/gru_cell_100/strided_slice_1/stack_1:output:0;gru_100/while/gru_cell_100/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2,
*gru_100/while/gru_cell_100/strided_slice_1à
#gru_100/while/gru_cell_100/MatMul_2MatMul"gru_100/while/gru_cell_100/mul:z:03gru_100/while/gru_cell_100/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2%
#gru_100/while/gru_cell_100/MatMul_2Ú
 gru_100/while/gru_cell_100/add_2AddV2)gru_100/while/gru_cell_100/split:output:2-gru_100/while/gru_cell_100/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2"
 gru_100/while/gru_cell_100/add_2£
gru_100/while/gru_cell_100/ReluRelu$gru_100/while/gru_cell_100/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2!
gru_100/while/gru_cell_100/ReluÃ
 gru_100/while/gru_cell_100/mul_1Mul&gru_100/while/gru_cell_100/Sigmoid:y:0gru_100_while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2"
 gru_100/while/gru_cell_100/mul_1
 gru_100/while/gru_cell_100/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2"
 gru_100/while/gru_cell_100/sub/xÍ
gru_100/while/gru_cell_100/subSub)gru_100/while/gru_cell_100/sub/x:output:0&gru_100/while/gru_cell_100/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2 
gru_100/while/gru_cell_100/subÑ
 gru_100/while/gru_cell_100/mul_2Mul"gru_100/while/gru_cell_100/sub:z:0-gru_100/while/gru_cell_100/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2"
 gru_100/while/gru_cell_100/mul_2Ì
 gru_100/while/gru_cell_100/add_3AddV2$gru_100/while/gru_cell_100/mul_1:z:0$gru_100/while/gru_cell_100/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2"
 gru_100/while/gru_cell_100/add_3
2gru_100/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemgru_100_while_placeholder_1gru_100_while_placeholder$gru_100/while/gru_cell_100/add_3:z:0*
_output_shapes
: *
element_dtype024
2gru_100/while/TensorArrayV2Write/TensorListSetIteml
gru_100/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru_100/while/add/y
gru_100/while/addAddV2gru_100_while_placeholdergru_100/while/add/y:output:0*
T0*
_output_shapes
: 2
gru_100/while/addp
gru_100/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru_100/while/add_1/y
gru_100/while/add_1AddV2(gru_100_while_gru_100_while_loop_countergru_100/while/add_1/y:output:0*
T0*
_output_shapes
: 2
gru_100/while/add_1·
gru_100/while/IdentityIdentitygru_100/while/add_1:z:02^gru_100/while/gru_cell_100/BiasAdd/ReadVariableOp1^gru_100/while/gru_cell_100/MatMul/ReadVariableOp*^gru_100/while/gru_cell_100/ReadVariableOp,^gru_100/while/gru_cell_100/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_100/while/IdentityÒ
gru_100/while/Identity_1Identity.gru_100_while_gru_100_while_maximum_iterations2^gru_100/while/gru_cell_100/BiasAdd/ReadVariableOp1^gru_100/while/gru_cell_100/MatMul/ReadVariableOp*^gru_100/while/gru_cell_100/ReadVariableOp,^gru_100/while/gru_cell_100/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_100/while/Identity_1¹
gru_100/while/Identity_2Identitygru_100/while/add:z:02^gru_100/while/gru_cell_100/BiasAdd/ReadVariableOp1^gru_100/while/gru_cell_100/MatMul/ReadVariableOp*^gru_100/while/gru_cell_100/ReadVariableOp,^gru_100/while/gru_cell_100/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_100/while/Identity_2æ
gru_100/while/Identity_3IdentityBgru_100/while/TensorArrayV2Write/TensorListSetItem:output_handle:02^gru_100/while/gru_cell_100/BiasAdd/ReadVariableOp1^gru_100/while/gru_cell_100/MatMul/ReadVariableOp*^gru_100/while/gru_cell_100/ReadVariableOp,^gru_100/while/gru_cell_100/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_100/while/Identity_3Ú
gru_100/while/Identity_4Identity$gru_100/while/gru_cell_100/add_3:z:02^gru_100/while/gru_cell_100/BiasAdd/ReadVariableOp1^gru_100/while/gru_cell_100/MatMul/ReadVariableOp*^gru_100/while/gru_cell_100/ReadVariableOp,^gru_100/while/gru_cell_100/ReadVariableOp_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_100/while/Identity_4"P
%gru_100_while_gru_100_strided_slice_1'gru_100_while_gru_100_strided_slice_1_0"z
:gru_100_while_gru_cell_100_biasadd_readvariableop_resource<gru_100_while_gru_cell_100_biasadd_readvariableop_resource_0"x
9gru_100_while_gru_cell_100_matmul_readvariableop_resource;gru_100_while_gru_cell_100_matmul_readvariableop_resource_0"j
2gru_100_while_gru_cell_100_readvariableop_resource4gru_100_while_gru_cell_100_readvariableop_resource_0"9
gru_100_while_identitygru_100/while/Identity:output:0"=
gru_100_while_identity_1!gru_100/while/Identity_1:output:0"=
gru_100_while_identity_2!gru_100/while/Identity_2:output:0"=
gru_100_while_identity_3!gru_100/while/Identity_3:output:0"=
gru_100_while_identity_4!gru_100/while/Identity_4:output:0"È
agru_100_while_tensorarrayv2read_tensorlistgetitem_gru_100_tensorarrayunstack_tensorlistfromtensorcgru_100_while_tensorarrayv2read_tensorlistgetitem_gru_100_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿÈ: : : : : 2f
1gru_100/while/gru_cell_100/BiasAdd/ReadVariableOp1gru_100/while/gru_cell_100/BiasAdd/ReadVariableOp2d
0gru_100/while/gru_cell_100/MatMul/ReadVariableOp0gru_100/while/gru_cell_100/MatMul/ReadVariableOp2V
)gru_100/while/gru_cell_100/ReadVariableOp)gru_100/while/gru_cell_100/ReadVariableOp2Z
+gru_100/while/gru_cell_100/ReadVariableOp_1+gru_100/while/gru_cell_100/ReadVariableOp_1: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ:

_output_shapes
: :

_output_shapes
: 

¯
while_cond_4934095
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_4934095___redundant_placeholder05
1while_while_cond_4934095___redundant_placeholder15
1while_while_cond_4934095___redundant_placeholder25
1while_while_cond_4934095___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :ÿÿÿÿÿÿÿÿÿÈ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ:

_output_shapes
: :

_output_shapes
:
Â
ç
K__inference_sequential_100_layer_call_and_return_conditional_losses_4934979

inputsF
3gru_100_gru_cell_100_matmul_readvariableop_resource:	ØC
4gru_100_gru_cell_100_biasadd_readvariableop_resource:	Ø@
,gru_100_gru_cell_100_readvariableop_resource:
ÈØ;
(dense_200_matmul_readvariableop_resource:	Èd7
)dense_200_biasadd_readvariableop_resource:d:
(dense_201_matmul_readvariableop_resource:d7
)dense_201_biasadd_readvariableop_resource:
identity¢ dense_200/BiasAdd/ReadVariableOp¢dense_200/MatMul/ReadVariableOp¢ dense_201/BiasAdd/ReadVariableOp¢dense_201/MatMul/ReadVariableOp¢+gru_100/gru_cell_100/BiasAdd/ReadVariableOp¢*gru_100/gru_cell_100/MatMul/ReadVariableOp¢#gru_100/gru_cell_100/ReadVariableOp¢%gru_100/gru_cell_100/ReadVariableOp_1¢gru_100/whileT
gru_100/ShapeShapeinputs*
T0*
_output_shapes
:2
gru_100/Shape
gru_100/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_100/strided_slice/stack
gru_100/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_100/strided_slice/stack_1
gru_100/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_100/strided_slice/stack_2
gru_100/strided_sliceStridedSlicegru_100/Shape:output:0$gru_100/strided_slice/stack:output:0&gru_100/strided_slice/stack_1:output:0&gru_100/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru_100/strided_slicem
gru_100/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :È2
gru_100/zeros/mul/y
gru_100/zeros/mulMulgru_100/strided_slice:output:0gru_100/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
gru_100/zeros/mulo
gru_100/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
gru_100/zeros/Less/y
gru_100/zeros/LessLessgru_100/zeros/mul:z:0gru_100/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
gru_100/zeros/Lesss
gru_100/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :È2
gru_100/zeros/packed/1£
gru_100/zeros/packedPackgru_100/strided_slice:output:0gru_100/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
gru_100/zeros/packedo
gru_100/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_100/zeros/Const
gru_100/zerosFillgru_100/zeros/packed:output:0gru_100/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_100/zeros
gru_100/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_100/transpose/perm
gru_100/transpose	Transposeinputsgru_100/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_100/transposeg
gru_100/Shape_1Shapegru_100/transpose:y:0*
T0*
_output_shapes
:2
gru_100/Shape_1
gru_100/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_100/strided_slice_1/stack
gru_100/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
gru_100/strided_slice_1/stack_1
gru_100/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
gru_100/strided_slice_1/stack_2
gru_100/strided_slice_1StridedSlicegru_100/Shape_1:output:0&gru_100/strided_slice_1/stack:output:0(gru_100/strided_slice_1/stack_1:output:0(gru_100/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru_100/strided_slice_1
#gru_100/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2%
#gru_100/TensorArrayV2/element_shapeÒ
gru_100/TensorArrayV2TensorListReserve,gru_100/TensorArrayV2/element_shape:output:0 gru_100/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_100/TensorArrayV2Ï
=gru_100/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2?
=gru_100/TensorArrayUnstack/TensorListFromTensor/element_shape
/gru_100/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorgru_100/transpose:y:0Fgru_100/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/gru_100/TensorArrayUnstack/TensorListFromTensor
gru_100/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_100/strided_slice_2/stack
gru_100/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
gru_100/strided_slice_2/stack_1
gru_100/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
gru_100/strided_slice_2/stack_2¬
gru_100/strided_slice_2StridedSlicegru_100/transpose:y:0&gru_100/strided_slice_2/stack:output:0(gru_100/strided_slice_2/stack_1:output:0(gru_100/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
gru_100/strided_slice_2Í
*gru_100/gru_cell_100/MatMul/ReadVariableOpReadVariableOp3gru_100_gru_cell_100_matmul_readvariableop_resource*
_output_shapes
:	Ø*
dtype02,
*gru_100/gru_cell_100/MatMul/ReadVariableOpÍ
gru_100/gru_cell_100/MatMulMatMul gru_100/strided_slice_2:output:02gru_100/gru_cell_100/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_100/gru_cell_100/MatMulÌ
+gru_100/gru_cell_100/BiasAdd/ReadVariableOpReadVariableOp4gru_100_gru_cell_100_biasadd_readvariableop_resource*
_output_shapes	
:Ø*
dtype02-
+gru_100/gru_cell_100/BiasAdd/ReadVariableOpÖ
gru_100/gru_cell_100/BiasAddBiasAdd%gru_100/gru_cell_100/MatMul:product:03gru_100/gru_cell_100/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_100/gru_cell_100/BiasAdd
$gru_100/gru_cell_100/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2&
$gru_100/gru_cell_100/split/split_dim
gru_100/gru_cell_100/splitSplit-gru_100/gru_cell_100/split/split_dim:output:0%gru_100/gru_cell_100/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
gru_100/gru_cell_100/split¹
#gru_100/gru_cell_100/ReadVariableOpReadVariableOp,gru_100_gru_cell_100_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02%
#gru_100/gru_cell_100/ReadVariableOp¥
(gru_100/gru_cell_100/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(gru_100/gru_cell_100/strided_slice/stack©
*gru_100/gru_cell_100/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2,
*gru_100/gru_cell_100/strided_slice/stack_1©
*gru_100/gru_cell_100/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*gru_100/gru_cell_100/strided_slice/stack_2ü
"gru_100/gru_cell_100/strided_sliceStridedSlice+gru_100/gru_cell_100/ReadVariableOp:value:01gru_100/gru_cell_100/strided_slice/stack:output:03gru_100/gru_cell_100/strided_slice/stack_1:output:03gru_100/gru_cell_100/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2$
"gru_100/gru_cell_100/strided_sliceÀ
gru_100/gru_cell_100/MatMul_1MatMulgru_100/zeros:output:0+gru_100/gru_cell_100/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_100/gru_cell_100/MatMul_1
gru_100/gru_cell_100/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2
gru_100/gru_cell_100/Const
&gru_100/gru_cell_100/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2(
&gru_100/gru_cell_100/split_1/split_dimº
gru_100/gru_cell_100/split_1SplitV'gru_100/gru_cell_100/MatMul_1:product:0#gru_100/gru_cell_100/Const:output:0/gru_100/gru_cell_100/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2
gru_100/gru_cell_100/split_1¼
gru_100/gru_cell_100/addAddV2#gru_100/gru_cell_100/split:output:0%gru_100/gru_cell_100/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_100/gru_cell_100/add
gru_100/gru_cell_100/SigmoidSigmoidgru_100/gru_cell_100/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_100/gru_cell_100/SigmoidÀ
gru_100/gru_cell_100/add_1AddV2#gru_100/gru_cell_100/split:output:1%gru_100/gru_cell_100/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_100/gru_cell_100/add_1
gru_100/gru_cell_100/Sigmoid_1Sigmoidgru_100/gru_cell_100/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2 
gru_100/gru_cell_100/Sigmoid_1ª
gru_100/gru_cell_100/mulMul"gru_100/gru_cell_100/Sigmoid_1:y:0gru_100/zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_100/gru_cell_100/mul½
%gru_100/gru_cell_100/ReadVariableOp_1ReadVariableOp,gru_100_gru_cell_100_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02'
%gru_100/gru_cell_100/ReadVariableOp_1©
*gru_100/gru_cell_100/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2,
*gru_100/gru_cell_100/strided_slice_1/stack­
,gru_100/gru_cell_100/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2.
,gru_100/gru_cell_100/strided_slice_1/stack_1­
,gru_100/gru_cell_100/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,gru_100/gru_cell_100/strided_slice_1/stack_2
$gru_100/gru_cell_100/strided_slice_1StridedSlice-gru_100/gru_cell_100/ReadVariableOp_1:value:03gru_100/gru_cell_100/strided_slice_1/stack:output:05gru_100/gru_cell_100/strided_slice_1/stack_1:output:05gru_100/gru_cell_100/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2&
$gru_100/gru_cell_100/strided_slice_1È
gru_100/gru_cell_100/MatMul_2MatMulgru_100/gru_cell_100/mul:z:0-gru_100/gru_cell_100/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_100/gru_cell_100/MatMul_2Â
gru_100/gru_cell_100/add_2AddV2#gru_100/gru_cell_100/split:output:2'gru_100/gru_cell_100/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_100/gru_cell_100/add_2
gru_100/gru_cell_100/ReluRelugru_100/gru_cell_100/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_100/gru_cell_100/Relu¬
gru_100/gru_cell_100/mul_1Mul gru_100/gru_cell_100/Sigmoid:y:0gru_100/zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_100/gru_cell_100/mul_1}
gru_100/gru_cell_100/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_100/gru_cell_100/sub/xµ
gru_100/gru_cell_100/subSub#gru_100/gru_cell_100/sub/x:output:0 gru_100/gru_cell_100/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_100/gru_cell_100/sub¹
gru_100/gru_cell_100/mul_2Mulgru_100/gru_cell_100/sub:z:0'gru_100/gru_cell_100/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_100/gru_cell_100/mul_2´
gru_100/gru_cell_100/add_3AddV2gru_100/gru_cell_100/mul_1:z:0gru_100/gru_cell_100/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_100/gru_cell_100/add_3
%gru_100/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÈ   2'
%gru_100/TensorArrayV2_1/element_shapeØ
gru_100/TensorArrayV2_1TensorListReserve.gru_100/TensorArrayV2_1/element_shape:output:0 gru_100/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_100/TensorArrayV2_1^
gru_100/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
gru_100/time
 gru_100/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 gru_100/while/maximum_iterationsz
gru_100/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
gru_100/while/loop_counter 
gru_100/whileWhile#gru_100/while/loop_counter:output:0)gru_100/while/maximum_iterations:output:0gru_100/time:output:0 gru_100/TensorArrayV2_1:handle:0gru_100/zeros:output:0 gru_100/strided_slice_1:output:0?gru_100/TensorArrayUnstack/TensorListFromTensor:output_handle:03gru_100_gru_cell_100_matmul_readvariableop_resource4gru_100_gru_cell_100_biasadd_readvariableop_resource,gru_100_gru_cell_100_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿÈ: : : : : *%
_read_only_resource_inputs
	*&
bodyR
gru_100_while_body_4934870*&
condR
gru_100_while_cond_4934869*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿÈ: : : : : *
parallel_iterations 2
gru_100/whileÅ
8gru_100/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÈ   2:
8gru_100/TensorArrayV2Stack/TensorListStack/element_shape
*gru_100/TensorArrayV2Stack/TensorListStackTensorListStackgru_100/while:output:3Agru_100/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*
element_dtype02,
*gru_100/TensorArrayV2Stack/TensorListStack
gru_100/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
gru_100/strided_slice_3/stack
gru_100/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
gru_100/strided_slice_3/stack_1
gru_100/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
gru_100/strided_slice_3/stack_2Ë
gru_100/strided_slice_3StridedSlice3gru_100/TensorArrayV2Stack/TensorListStack:tensor:0&gru_100/strided_slice_3/stack:output:0(gru_100/strided_slice_3/stack_1:output:0(gru_100/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*
shrink_axis_mask2
gru_100/strided_slice_3
gru_100/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_100/transpose_1/permÆ
gru_100/transpose_1	Transpose3gru_100/TensorArrayV2Stack/TensorListStack:tensor:0!gru_100/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_100/transpose_1v
gru_100/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_100/runtime¬
dense_200/MatMul/ReadVariableOpReadVariableOp(dense_200_matmul_readvariableop_resource*
_output_shapes
:	Èd*
dtype02!
dense_200/MatMul/ReadVariableOp«
dense_200/MatMulMatMul gru_100/strided_slice_3:output:0'dense_200/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dense_200/MatMulª
 dense_200/BiasAdd/ReadVariableOpReadVariableOp)dense_200_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02"
 dense_200/BiasAdd/ReadVariableOp©
dense_200/BiasAddBiasAdddense_200/MatMul:product:0(dense_200/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dense_200/BiasAddv
dense_200/ReluReludense_200/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dense_200/Relu«
dense_201/MatMul/ReadVariableOpReadVariableOp(dense_201_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02!
dense_201/MatMul/ReadVariableOp§
dense_201/MatMulMatMuldense_200/Relu:activations:0'dense_201/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_201/MatMulª
 dense_201/BiasAdd/ReadVariableOpReadVariableOp)dense_201_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_201/BiasAdd/ReadVariableOp©
dense_201/BiasAddBiasAdddense_201/MatMul:product:0(dense_201/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_201/BiasAdd±
IdentityIdentitydense_201/BiasAdd:output:0!^dense_200/BiasAdd/ReadVariableOp ^dense_200/MatMul/ReadVariableOp!^dense_201/BiasAdd/ReadVariableOp ^dense_201/MatMul/ReadVariableOp,^gru_100/gru_cell_100/BiasAdd/ReadVariableOp+^gru_100/gru_cell_100/MatMul/ReadVariableOp$^gru_100/gru_cell_100/ReadVariableOp&^gru_100/gru_cell_100/ReadVariableOp_1^gru_100/while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2D
 dense_200/BiasAdd/ReadVariableOp dense_200/BiasAdd/ReadVariableOp2B
dense_200/MatMul/ReadVariableOpdense_200/MatMul/ReadVariableOp2D
 dense_201/BiasAdd/ReadVariableOp dense_201/BiasAdd/ReadVariableOp2B
dense_201/MatMul/ReadVariableOpdense_201/MatMul/ReadVariableOp2Z
+gru_100/gru_cell_100/BiasAdd/ReadVariableOp+gru_100/gru_cell_100/BiasAdd/ReadVariableOp2X
*gru_100/gru_cell_100/MatMul/ReadVariableOp*gru_100/gru_cell_100/MatMul/ReadVariableOp2J
#gru_100/gru_cell_100/ReadVariableOp#gru_100/gru_cell_100/ReadVariableOp2N
%gru_100/gru_cell_100/ReadVariableOp_1%gru_100/gru_cell_100/ReadVariableOp_12
gru_100/whilegru_100/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
í
¹
)__inference_gru_100_layer_call_fn_4935712
inputs_0
unknown:	Ø
	unknown_0:	Ø
	unknown_1:
ÈØ
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_gru_100_layer_call_and_return_conditional_losses_49335772
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
Ôi
«
D__inference_gru_100_layer_call_and_return_conditional_losses_4935701

inputs>
+gru_cell_100_matmul_readvariableop_resource:	Ø;
,gru_cell_100_biasadd_readvariableop_resource:	Ø8
$gru_cell_100_readvariableop_resource:
ÈØ
identity¢#gru_cell_100/BiasAdd/ReadVariableOp¢"gru_cell_100/MatMul/ReadVariableOp¢gru_cell_100/ReadVariableOp¢gru_cell_100/ReadVariableOp_1¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :È2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :È2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
zerosu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ü
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2µ
"gru_cell_100/MatMul/ReadVariableOpReadVariableOp+gru_cell_100_matmul_readvariableop_resource*
_output_shapes
:	Ø*
dtype02$
"gru_cell_100/MatMul/ReadVariableOp­
gru_cell_100/MatMulMatMulstrided_slice_2:output:0*gru_cell_100/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_cell_100/MatMul´
#gru_cell_100/BiasAdd/ReadVariableOpReadVariableOp,gru_cell_100_biasadd_readvariableop_resource*
_output_shapes	
:Ø*
dtype02%
#gru_cell_100/BiasAdd/ReadVariableOp¶
gru_cell_100/BiasAddBiasAddgru_cell_100/MatMul:product:0+gru_cell_100/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_cell_100/BiasAdd
gru_cell_100/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
gru_cell_100/split/split_dimã
gru_cell_100/splitSplit%gru_cell_100/split/split_dim:output:0gru_cell_100/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
gru_cell_100/split¡
gru_cell_100/ReadVariableOpReadVariableOp$gru_cell_100_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02
gru_cell_100/ReadVariableOp
 gru_cell_100/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 gru_cell_100/strided_slice/stack
"gru_cell_100/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_100/strided_slice/stack_1
"gru_cell_100/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_100/strided_slice/stack_2Ì
gru_cell_100/strided_sliceStridedSlice#gru_cell_100/ReadVariableOp:value:0)gru_cell_100/strided_slice/stack:output:0+gru_cell_100/strided_slice/stack_1:output:0+gru_cell_100/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2
gru_cell_100/strided_slice 
gru_cell_100/MatMul_1MatMulzeros:output:0#gru_cell_100/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_100/MatMul_1}
gru_cell_100/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2
gru_cell_100/Const
gru_cell_100/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2 
gru_cell_100/split_1/split_dim
gru_cell_100/split_1SplitVgru_cell_100/MatMul_1:product:0gru_cell_100/Const:output:0'gru_cell_100/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2
gru_cell_100/split_1
gru_cell_100/addAddV2gru_cell_100/split:output:0gru_cell_100/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_100/add
gru_cell_100/SigmoidSigmoidgru_cell_100/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_100/Sigmoid 
gru_cell_100/add_1AddV2gru_cell_100/split:output:1gru_cell_100/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_100/add_1
gru_cell_100/Sigmoid_1Sigmoidgru_cell_100/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_100/Sigmoid_1
gru_cell_100/mulMulgru_cell_100/Sigmoid_1:y:0zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_100/mul¥
gru_cell_100/ReadVariableOp_1ReadVariableOp$gru_cell_100_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02
gru_cell_100/ReadVariableOp_1
"gru_cell_100/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_100/strided_slice_1/stack
$gru_cell_100/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$gru_cell_100/strided_slice_1/stack_1
$gru_cell_100/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$gru_cell_100/strided_slice_1/stack_2Ø
gru_cell_100/strided_slice_1StridedSlice%gru_cell_100/ReadVariableOp_1:value:0+gru_cell_100/strided_slice_1/stack:output:0-gru_cell_100/strided_slice_1/stack_1:output:0-gru_cell_100/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2
gru_cell_100/strided_slice_1¨
gru_cell_100/MatMul_2MatMulgru_cell_100/mul:z:0%gru_cell_100/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_100/MatMul_2¢
gru_cell_100/add_2AddV2gru_cell_100/split:output:2gru_cell_100/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_100/add_2y
gru_cell_100/ReluRelugru_cell_100/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_100/Relu
gru_cell_100/mul_1Mulgru_cell_100/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_100/mul_1m
gru_cell_100/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_100/sub/x
gru_cell_100/subSubgru_cell_100/sub/x:output:0gru_cell_100/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_100/sub
gru_cell_100/mul_2Mulgru_cell_100/sub:z:0gru_cell_100/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_100/mul_2
gru_cell_100/add_3AddV2gru_cell_100/mul_1:z:0gru_cell_100/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_100/add_3
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÈ   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter°
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+gru_cell_100_matmul_readvariableop_resource,gru_cell_100_biasadd_readvariableop_resource$gru_cell_100_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿÈ: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_4935605*
condR
while_cond_4935604*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿÈ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÈ   22
0TensorArrayV2Stack/TensorListStack/element_shapeé
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¦
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtimeþ
IdentityIdentitystrided_slice_3:output:0$^gru_cell_100/BiasAdd/ReadVariableOp#^gru_cell_100/MatMul/ReadVariableOp^gru_cell_100/ReadVariableOp^gru_cell_100/ReadVariableOp_1^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#gru_cell_100/BiasAdd/ReadVariableOp#gru_cell_100/BiasAdd/ReadVariableOp2H
"gru_cell_100/MatMul/ReadVariableOp"gru_cell_100/MatMul/ReadVariableOp2:
gru_cell_100/ReadVariableOpgru_cell_100/ReadVariableOp2>
gru_cell_100/ReadVariableOp_1gru_cell_100/ReadVariableOp_12
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Y
¯
while_body_4935092
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_gru_cell_100_matmul_readvariableop_resource_0:	ØC
4while_gru_cell_100_biasadd_readvariableop_resource_0:	Ø@
,while_gru_cell_100_readvariableop_resource_0:
ÈØ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_gru_cell_100_matmul_readvariableop_resource:	ØA
2while_gru_cell_100_biasadd_readvariableop_resource:	Ø>
*while_gru_cell_100_readvariableop_resource:
ÈØ¢)while/gru_cell_100/BiasAdd/ReadVariableOp¢(while/gru_cell_100/MatMul/ReadVariableOp¢!while/gru_cell_100/ReadVariableOp¢#while/gru_cell_100/ReadVariableOp_1Ã
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÉ
(while/gru_cell_100/MatMul/ReadVariableOpReadVariableOp3while_gru_cell_100_matmul_readvariableop_resource_0*
_output_shapes
:	Ø*
dtype02*
(while/gru_cell_100/MatMul/ReadVariableOp×
while/gru_cell_100/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/gru_cell_100/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
while/gru_cell_100/MatMulÈ
)while/gru_cell_100/BiasAdd/ReadVariableOpReadVariableOp4while_gru_cell_100_biasadd_readvariableop_resource_0*
_output_shapes	
:Ø*
dtype02+
)while/gru_cell_100/BiasAdd/ReadVariableOpÎ
while/gru_cell_100/BiasAddBiasAdd#while/gru_cell_100/MatMul:product:01while/gru_cell_100/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
while/gru_cell_100/BiasAdd
"while/gru_cell_100/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2$
"while/gru_cell_100/split/split_dimû
while/gru_cell_100/splitSplit+while/gru_cell_100/split/split_dim:output:0#while/gru_cell_100/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
while/gru_cell_100/splitµ
!while/gru_cell_100/ReadVariableOpReadVariableOp,while_gru_cell_100_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02#
!while/gru_cell_100/ReadVariableOp¡
&while/gru_cell_100/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/gru_cell_100/strided_slice/stack¥
(while/gru_cell_100/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_100/strided_slice/stack_1¥
(while/gru_cell_100/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_100/strided_slice/stack_2ð
 while/gru_cell_100/strided_sliceStridedSlice)while/gru_cell_100/ReadVariableOp:value:0/while/gru_cell_100/strided_slice/stack:output:01while/gru_cell_100/strided_slice/stack_1:output:01while/gru_cell_100/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2"
 while/gru_cell_100/strided_slice·
while/gru_cell_100/MatMul_1MatMulwhile_placeholder_2)while/gru_cell_100/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_100/MatMul_1
while/gru_cell_100/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2
while/gru_cell_100/Const
$while/gru_cell_100/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2&
$while/gru_cell_100/split_1/split_dim°
while/gru_cell_100/split_1SplitV%while/gru_cell_100/MatMul_1:product:0!while/gru_cell_100/Const:output:0-while/gru_cell_100/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2
while/gru_cell_100/split_1´
while/gru_cell_100/addAddV2!while/gru_cell_100/split:output:0#while/gru_cell_100/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_100/add
while/gru_cell_100/SigmoidSigmoidwhile/gru_cell_100/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_100/Sigmoid¸
while/gru_cell_100/add_1AddV2!while/gru_cell_100/split:output:1#while/gru_cell_100/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_100/add_1
while/gru_cell_100/Sigmoid_1Sigmoidwhile/gru_cell_100/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_100/Sigmoid_1¡
while/gru_cell_100/mulMul while/gru_cell_100/Sigmoid_1:y:0while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_100/mul¹
#while/gru_cell_100/ReadVariableOp_1ReadVariableOp,while_gru_cell_100_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02%
#while/gru_cell_100/ReadVariableOp_1¥
(while/gru_cell_100/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_100/strided_slice_1/stack©
*while/gru_cell_100/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/gru_cell_100/strided_slice_1/stack_1©
*while/gru_cell_100/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/gru_cell_100/strided_slice_1/stack_2ü
"while/gru_cell_100/strided_slice_1StridedSlice+while/gru_cell_100/ReadVariableOp_1:value:01while/gru_cell_100/strided_slice_1/stack:output:03while/gru_cell_100/strided_slice_1/stack_1:output:03while/gru_cell_100/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2$
"while/gru_cell_100/strided_slice_1À
while/gru_cell_100/MatMul_2MatMulwhile/gru_cell_100/mul:z:0+while/gru_cell_100/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_100/MatMul_2º
while/gru_cell_100/add_2AddV2!while/gru_cell_100/split:output:2%while/gru_cell_100/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_100/add_2
while/gru_cell_100/ReluReluwhile/gru_cell_100/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_100/Relu£
while/gru_cell_100/mul_1Mulwhile/gru_cell_100/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_100/mul_1y
while/gru_cell_100/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
while/gru_cell_100/sub/x­
while/gru_cell_100/subSub!while/gru_cell_100/sub/x:output:0while/gru_cell_100/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_100/sub±
while/gru_cell_100/mul_2Mulwhile/gru_cell_100/sub:z:0%while/gru_cell_100/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_100/mul_2¬
while/gru_cell_100/add_3AddV2while/gru_cell_100/mul_1:z:0while/gru_cell_100/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_100/add_3à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_100/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1ÿ
while/IdentityIdentitywhile/add_1:z:0*^while/gru_cell_100/BiasAdd/ReadVariableOp)^while/gru_cell_100/MatMul/ReadVariableOp"^while/gru_cell_100/ReadVariableOp$^while/gru_cell_100/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations*^while/gru_cell_100/BiasAdd/ReadVariableOp)^while/gru_cell_100/MatMul/ReadVariableOp"^while/gru_cell_100/ReadVariableOp$^while/gru_cell_100/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:0*^while/gru_cell_100/BiasAdd/ReadVariableOp)^while/gru_cell_100/MatMul/ReadVariableOp"^while/gru_cell_100/ReadVariableOp$^while/gru_cell_100/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_2®
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/gru_cell_100/BiasAdd/ReadVariableOp)^while/gru_cell_100/MatMul/ReadVariableOp"^while/gru_cell_100/ReadVariableOp$^while/gru_cell_100/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_3¢
while/Identity_4Identitywhile/gru_cell_100/add_3:z:0*^while/gru_cell_100/BiasAdd/ReadVariableOp)^while/gru_cell_100/MatMul/ReadVariableOp"^while/gru_cell_100/ReadVariableOp$^while/gru_cell_100/ReadVariableOp_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_4"j
2while_gru_cell_100_biasadd_readvariableop_resource4while_gru_cell_100_biasadd_readvariableop_resource_0"h
1while_gru_cell_100_matmul_readvariableop_resource3while_gru_cell_100_matmul_readvariableop_resource_0"Z
*while_gru_cell_100_readvariableop_resource,while_gru_cell_100_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿÈ: : : : : 2V
)while/gru_cell_100/BiasAdd/ReadVariableOp)while/gru_cell_100/BiasAdd/ReadVariableOp2T
(while/gru_cell_100/MatMul/ReadVariableOp(while/gru_cell_100/MatMul/ReadVariableOp2F
!while/gru_cell_100/ReadVariableOp!while/gru_cell_100/ReadVariableOp2J
#while/gru_cell_100/ReadVariableOp_1#while/gru_cell_100/ReadVariableOp_1: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ:

_output_shapes
: :

_output_shapes
: 
í
¹
)__inference_gru_100_layer_call_fn_4935723
inputs_0
unknown:	Ø
	unknown_0:	Ø
	unknown_1:
ÈØ
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_gru_100_layer_call_and_return_conditional_losses_49337812
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
Ô*
é
I__inference_gru_cell_100_layer_call_and_return_conditional_losses_4933650

inputs

states1
matmul_readvariableop_resource:	Ø.
biasadd_readvariableop_resource:	Ø+
readvariableop_resource:
ÈØ
identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢ReadVariableOp¢ReadVariableOp_1
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	Ø*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Ø*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2	
BiasAddm
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
split/split_dim¯
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
splitz
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2þ
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2
strided_sliceq
MatMul_1MatMulstatesstrided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_1c
ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2
Constq
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
split_1/split_dimÑ
split_1SplitVMatMul_1:product:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2	
split_1h
addAddV2split:output:0split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
addY
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2	
Sigmoidl
add_1AddV2split:output:1split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
add_1_
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
	Sigmoid_1[
mulMulSigmoid_1:y:0states*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
mul~
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack_1
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2
strided_slice_1t
MatMul_2MatMulmul:z:0strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

MatMul_2n
add_2AddV2split:output:2MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
add_2R
ReluRelu	add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
Relu]
mul_1MulSigmoid:y:0states*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
sub/xa
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
sube
mul_2Mulsub:z:0Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
mul_2`
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
add_3³
IdentityIdentity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^ReadVariableOp^ReadVariableOp_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity·

Identity_1Identity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^ReadVariableOp^ReadVariableOp_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿÈ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
 
_user_specified_namestates
Þ*
ë
I__inference_gru_cell_100_layer_call_and_return_conditional_losses_4935830

inputs
states_01
matmul_readvariableop_resource:	Ø.
biasadd_readvariableop_resource:	Ø+
readvariableop_resource:
ÈØ
identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢ReadVariableOp¢ReadVariableOp_1
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	Ø*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Ø*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2	
BiasAddm
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
split/split_dim¯
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
splitz
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2þ
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2
strided_slices
MatMul_1MatMulstates_0strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

MatMul_1c
ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2
Constq
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
split_1/split_dimÑ
split_1SplitVMatMul_1:product:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2	
split_1h
addAddV2split:output:0split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
addY
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2	
Sigmoidl
add_1AddV2split:output:1split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
add_1_
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
	Sigmoid_1]
mulMulSigmoid_1:y:0states_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
mul~
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack_1
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2
strided_slice_1t
MatMul_2MatMulmul:z:0strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

MatMul_2n
add_2AddV2split:output:2MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
add_2R
ReluRelu	add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
Relu_
mul_1MulSigmoid:y:0states_0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
sub/xa
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
sube
mul_2Mulsub:z:0Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
mul_2`
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
add_3³
IdentityIdentity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^ReadVariableOp^ReadVariableOp_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity·

Identity_1Identity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^ReadVariableOp^ReadVariableOp_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿÈ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
"
_user_specified_name
states/0
	
²
0__inference_sequential_100_layer_call_fn_4934542
gru_100_input
unknown:	Ø
	unknown_0:	Ø
	unknown_1:
ÈØ
	unknown_2:	Èd
	unknown_3:d
	unknown_4:d
	unknown_5:
identity¢StatefulPartitionedCallÃ
StatefulPartitionedCallStatefulPartitionedCallgru_100_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_sequential_100_layer_call_and_return_conditional_losses_49345062
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namegru_100_input

¯
while_cond_4934358
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_4934358___redundant_placeholder05
1while_while_cond_4934358___redundant_placeholder15
1while_while_cond_4934358___redundant_placeholder25
1while_while_cond_4934358___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :ÿÿÿÿÿÿÿÿÿÈ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ:

_output_shapes
: :

_output_shapes
:
Â
ç
K__inference_sequential_100_layer_call_and_return_conditional_losses_4934795

inputsF
3gru_100_gru_cell_100_matmul_readvariableop_resource:	ØC
4gru_100_gru_cell_100_biasadd_readvariableop_resource:	Ø@
,gru_100_gru_cell_100_readvariableop_resource:
ÈØ;
(dense_200_matmul_readvariableop_resource:	Èd7
)dense_200_biasadd_readvariableop_resource:d:
(dense_201_matmul_readvariableop_resource:d7
)dense_201_biasadd_readvariableop_resource:
identity¢ dense_200/BiasAdd/ReadVariableOp¢dense_200/MatMul/ReadVariableOp¢ dense_201/BiasAdd/ReadVariableOp¢dense_201/MatMul/ReadVariableOp¢+gru_100/gru_cell_100/BiasAdd/ReadVariableOp¢*gru_100/gru_cell_100/MatMul/ReadVariableOp¢#gru_100/gru_cell_100/ReadVariableOp¢%gru_100/gru_cell_100/ReadVariableOp_1¢gru_100/whileT
gru_100/ShapeShapeinputs*
T0*
_output_shapes
:2
gru_100/Shape
gru_100/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_100/strided_slice/stack
gru_100/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_100/strided_slice/stack_1
gru_100/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_100/strided_slice/stack_2
gru_100/strided_sliceStridedSlicegru_100/Shape:output:0$gru_100/strided_slice/stack:output:0&gru_100/strided_slice/stack_1:output:0&gru_100/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru_100/strided_slicem
gru_100/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :È2
gru_100/zeros/mul/y
gru_100/zeros/mulMulgru_100/strided_slice:output:0gru_100/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
gru_100/zeros/mulo
gru_100/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
gru_100/zeros/Less/y
gru_100/zeros/LessLessgru_100/zeros/mul:z:0gru_100/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
gru_100/zeros/Lesss
gru_100/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :È2
gru_100/zeros/packed/1£
gru_100/zeros/packedPackgru_100/strided_slice:output:0gru_100/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
gru_100/zeros/packedo
gru_100/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_100/zeros/Const
gru_100/zerosFillgru_100/zeros/packed:output:0gru_100/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_100/zeros
gru_100/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_100/transpose/perm
gru_100/transpose	Transposeinputsgru_100/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_100/transposeg
gru_100/Shape_1Shapegru_100/transpose:y:0*
T0*
_output_shapes
:2
gru_100/Shape_1
gru_100/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_100/strided_slice_1/stack
gru_100/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
gru_100/strided_slice_1/stack_1
gru_100/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
gru_100/strided_slice_1/stack_2
gru_100/strided_slice_1StridedSlicegru_100/Shape_1:output:0&gru_100/strided_slice_1/stack:output:0(gru_100/strided_slice_1/stack_1:output:0(gru_100/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru_100/strided_slice_1
#gru_100/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2%
#gru_100/TensorArrayV2/element_shapeÒ
gru_100/TensorArrayV2TensorListReserve,gru_100/TensorArrayV2/element_shape:output:0 gru_100/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_100/TensorArrayV2Ï
=gru_100/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2?
=gru_100/TensorArrayUnstack/TensorListFromTensor/element_shape
/gru_100/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorgru_100/transpose:y:0Fgru_100/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/gru_100/TensorArrayUnstack/TensorListFromTensor
gru_100/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_100/strided_slice_2/stack
gru_100/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
gru_100/strided_slice_2/stack_1
gru_100/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
gru_100/strided_slice_2/stack_2¬
gru_100/strided_slice_2StridedSlicegru_100/transpose:y:0&gru_100/strided_slice_2/stack:output:0(gru_100/strided_slice_2/stack_1:output:0(gru_100/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
gru_100/strided_slice_2Í
*gru_100/gru_cell_100/MatMul/ReadVariableOpReadVariableOp3gru_100_gru_cell_100_matmul_readvariableop_resource*
_output_shapes
:	Ø*
dtype02,
*gru_100/gru_cell_100/MatMul/ReadVariableOpÍ
gru_100/gru_cell_100/MatMulMatMul gru_100/strided_slice_2:output:02gru_100/gru_cell_100/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_100/gru_cell_100/MatMulÌ
+gru_100/gru_cell_100/BiasAdd/ReadVariableOpReadVariableOp4gru_100_gru_cell_100_biasadd_readvariableop_resource*
_output_shapes	
:Ø*
dtype02-
+gru_100/gru_cell_100/BiasAdd/ReadVariableOpÖ
gru_100/gru_cell_100/BiasAddBiasAdd%gru_100/gru_cell_100/MatMul:product:03gru_100/gru_cell_100/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_100/gru_cell_100/BiasAdd
$gru_100/gru_cell_100/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2&
$gru_100/gru_cell_100/split/split_dim
gru_100/gru_cell_100/splitSplit-gru_100/gru_cell_100/split/split_dim:output:0%gru_100/gru_cell_100/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
gru_100/gru_cell_100/split¹
#gru_100/gru_cell_100/ReadVariableOpReadVariableOp,gru_100_gru_cell_100_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02%
#gru_100/gru_cell_100/ReadVariableOp¥
(gru_100/gru_cell_100/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(gru_100/gru_cell_100/strided_slice/stack©
*gru_100/gru_cell_100/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2,
*gru_100/gru_cell_100/strided_slice/stack_1©
*gru_100/gru_cell_100/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*gru_100/gru_cell_100/strided_slice/stack_2ü
"gru_100/gru_cell_100/strided_sliceStridedSlice+gru_100/gru_cell_100/ReadVariableOp:value:01gru_100/gru_cell_100/strided_slice/stack:output:03gru_100/gru_cell_100/strided_slice/stack_1:output:03gru_100/gru_cell_100/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2$
"gru_100/gru_cell_100/strided_sliceÀ
gru_100/gru_cell_100/MatMul_1MatMulgru_100/zeros:output:0+gru_100/gru_cell_100/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_100/gru_cell_100/MatMul_1
gru_100/gru_cell_100/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2
gru_100/gru_cell_100/Const
&gru_100/gru_cell_100/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2(
&gru_100/gru_cell_100/split_1/split_dimº
gru_100/gru_cell_100/split_1SplitV'gru_100/gru_cell_100/MatMul_1:product:0#gru_100/gru_cell_100/Const:output:0/gru_100/gru_cell_100/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2
gru_100/gru_cell_100/split_1¼
gru_100/gru_cell_100/addAddV2#gru_100/gru_cell_100/split:output:0%gru_100/gru_cell_100/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_100/gru_cell_100/add
gru_100/gru_cell_100/SigmoidSigmoidgru_100/gru_cell_100/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_100/gru_cell_100/SigmoidÀ
gru_100/gru_cell_100/add_1AddV2#gru_100/gru_cell_100/split:output:1%gru_100/gru_cell_100/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_100/gru_cell_100/add_1
gru_100/gru_cell_100/Sigmoid_1Sigmoidgru_100/gru_cell_100/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2 
gru_100/gru_cell_100/Sigmoid_1ª
gru_100/gru_cell_100/mulMul"gru_100/gru_cell_100/Sigmoid_1:y:0gru_100/zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_100/gru_cell_100/mul½
%gru_100/gru_cell_100/ReadVariableOp_1ReadVariableOp,gru_100_gru_cell_100_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02'
%gru_100/gru_cell_100/ReadVariableOp_1©
*gru_100/gru_cell_100/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2,
*gru_100/gru_cell_100/strided_slice_1/stack­
,gru_100/gru_cell_100/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2.
,gru_100/gru_cell_100/strided_slice_1/stack_1­
,gru_100/gru_cell_100/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,gru_100/gru_cell_100/strided_slice_1/stack_2
$gru_100/gru_cell_100/strided_slice_1StridedSlice-gru_100/gru_cell_100/ReadVariableOp_1:value:03gru_100/gru_cell_100/strided_slice_1/stack:output:05gru_100/gru_cell_100/strided_slice_1/stack_1:output:05gru_100/gru_cell_100/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2&
$gru_100/gru_cell_100/strided_slice_1È
gru_100/gru_cell_100/MatMul_2MatMulgru_100/gru_cell_100/mul:z:0-gru_100/gru_cell_100/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_100/gru_cell_100/MatMul_2Â
gru_100/gru_cell_100/add_2AddV2#gru_100/gru_cell_100/split:output:2'gru_100/gru_cell_100/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_100/gru_cell_100/add_2
gru_100/gru_cell_100/ReluRelugru_100/gru_cell_100/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_100/gru_cell_100/Relu¬
gru_100/gru_cell_100/mul_1Mul gru_100/gru_cell_100/Sigmoid:y:0gru_100/zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_100/gru_cell_100/mul_1}
gru_100/gru_cell_100/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_100/gru_cell_100/sub/xµ
gru_100/gru_cell_100/subSub#gru_100/gru_cell_100/sub/x:output:0 gru_100/gru_cell_100/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_100/gru_cell_100/sub¹
gru_100/gru_cell_100/mul_2Mulgru_100/gru_cell_100/sub:z:0'gru_100/gru_cell_100/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_100/gru_cell_100/mul_2´
gru_100/gru_cell_100/add_3AddV2gru_100/gru_cell_100/mul_1:z:0gru_100/gru_cell_100/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_100/gru_cell_100/add_3
%gru_100/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÈ   2'
%gru_100/TensorArrayV2_1/element_shapeØ
gru_100/TensorArrayV2_1TensorListReserve.gru_100/TensorArrayV2_1/element_shape:output:0 gru_100/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_100/TensorArrayV2_1^
gru_100/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
gru_100/time
 gru_100/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 gru_100/while/maximum_iterationsz
gru_100/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
gru_100/while/loop_counter 
gru_100/whileWhile#gru_100/while/loop_counter:output:0)gru_100/while/maximum_iterations:output:0gru_100/time:output:0 gru_100/TensorArrayV2_1:handle:0gru_100/zeros:output:0 gru_100/strided_slice_1:output:0?gru_100/TensorArrayUnstack/TensorListFromTensor:output_handle:03gru_100_gru_cell_100_matmul_readvariableop_resource4gru_100_gru_cell_100_biasadd_readvariableop_resource,gru_100_gru_cell_100_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿÈ: : : : : *%
_read_only_resource_inputs
	*&
bodyR
gru_100_while_body_4934686*&
condR
gru_100_while_cond_4934685*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿÈ: : : : : *
parallel_iterations 2
gru_100/whileÅ
8gru_100/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÈ   2:
8gru_100/TensorArrayV2Stack/TensorListStack/element_shape
*gru_100/TensorArrayV2Stack/TensorListStackTensorListStackgru_100/while:output:3Agru_100/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*
element_dtype02,
*gru_100/TensorArrayV2Stack/TensorListStack
gru_100/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
gru_100/strided_slice_3/stack
gru_100/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
gru_100/strided_slice_3/stack_1
gru_100/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
gru_100/strided_slice_3/stack_2Ë
gru_100/strided_slice_3StridedSlice3gru_100/TensorArrayV2Stack/TensorListStack:tensor:0&gru_100/strided_slice_3/stack:output:0(gru_100/strided_slice_3/stack_1:output:0(gru_100/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*
shrink_axis_mask2
gru_100/strided_slice_3
gru_100/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_100/transpose_1/permÆ
gru_100/transpose_1	Transpose3gru_100/TensorArrayV2Stack/TensorListStack:tensor:0!gru_100/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_100/transpose_1v
gru_100/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_100/runtime¬
dense_200/MatMul/ReadVariableOpReadVariableOp(dense_200_matmul_readvariableop_resource*
_output_shapes
:	Èd*
dtype02!
dense_200/MatMul/ReadVariableOp«
dense_200/MatMulMatMul gru_100/strided_slice_3:output:0'dense_200/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dense_200/MatMulª
 dense_200/BiasAdd/ReadVariableOpReadVariableOp)dense_200_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02"
 dense_200/BiasAdd/ReadVariableOp©
dense_200/BiasAddBiasAdddense_200/MatMul:product:0(dense_200/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dense_200/BiasAddv
dense_200/ReluReludense_200/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dense_200/Relu«
dense_201/MatMul/ReadVariableOpReadVariableOp(dense_201_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02!
dense_201/MatMul/ReadVariableOp§
dense_201/MatMulMatMuldense_200/Relu:activations:0'dense_201/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_201/MatMulª
 dense_201/BiasAdd/ReadVariableOpReadVariableOp)dense_201_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_201/BiasAdd/ReadVariableOp©
dense_201/BiasAddBiasAdddense_201/MatMul:product:0(dense_201/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_201/BiasAdd±
IdentityIdentitydense_201/BiasAdd:output:0!^dense_200/BiasAdd/ReadVariableOp ^dense_200/MatMul/ReadVariableOp!^dense_201/BiasAdd/ReadVariableOp ^dense_201/MatMul/ReadVariableOp,^gru_100/gru_cell_100/BiasAdd/ReadVariableOp+^gru_100/gru_cell_100/MatMul/ReadVariableOp$^gru_100/gru_cell_100/ReadVariableOp&^gru_100/gru_cell_100/ReadVariableOp_1^gru_100/while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2D
 dense_200/BiasAdd/ReadVariableOp dense_200/BiasAdd/ReadVariableOp2B
dense_200/MatMul/ReadVariableOpdense_200/MatMul/ReadVariableOp2D
 dense_201/BiasAdd/ReadVariableOp dense_201/BiasAdd/ReadVariableOp2B
dense_201/MatMul/ReadVariableOpdense_201/MatMul/ReadVariableOp2Z
+gru_100/gru_cell_100/BiasAdd/ReadVariableOp+gru_100/gru_cell_100/BiasAdd/ReadVariableOp2X
*gru_100/gru_cell_100/MatMul/ReadVariableOp*gru_100/gru_cell_100/MatMul/ReadVariableOp2J
#gru_100/gru_cell_100/ReadVariableOp#gru_100/gru_cell_100/ReadVariableOp2N
%gru_100/gru_cell_100/ReadVariableOp_1%gru_100/gru_cell_100/ReadVariableOp_12
gru_100/whilegru_100/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Y
¯
while_body_4935434
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_gru_cell_100_matmul_readvariableop_resource_0:	ØC
4while_gru_cell_100_biasadd_readvariableop_resource_0:	Ø@
,while_gru_cell_100_readvariableop_resource_0:
ÈØ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_gru_cell_100_matmul_readvariableop_resource:	ØA
2while_gru_cell_100_biasadd_readvariableop_resource:	Ø>
*while_gru_cell_100_readvariableop_resource:
ÈØ¢)while/gru_cell_100/BiasAdd/ReadVariableOp¢(while/gru_cell_100/MatMul/ReadVariableOp¢!while/gru_cell_100/ReadVariableOp¢#while/gru_cell_100/ReadVariableOp_1Ã
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÉ
(while/gru_cell_100/MatMul/ReadVariableOpReadVariableOp3while_gru_cell_100_matmul_readvariableop_resource_0*
_output_shapes
:	Ø*
dtype02*
(while/gru_cell_100/MatMul/ReadVariableOp×
while/gru_cell_100/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/gru_cell_100/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
while/gru_cell_100/MatMulÈ
)while/gru_cell_100/BiasAdd/ReadVariableOpReadVariableOp4while_gru_cell_100_biasadd_readvariableop_resource_0*
_output_shapes	
:Ø*
dtype02+
)while/gru_cell_100/BiasAdd/ReadVariableOpÎ
while/gru_cell_100/BiasAddBiasAdd#while/gru_cell_100/MatMul:product:01while/gru_cell_100/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
while/gru_cell_100/BiasAdd
"while/gru_cell_100/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2$
"while/gru_cell_100/split/split_dimû
while/gru_cell_100/splitSplit+while/gru_cell_100/split/split_dim:output:0#while/gru_cell_100/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
while/gru_cell_100/splitµ
!while/gru_cell_100/ReadVariableOpReadVariableOp,while_gru_cell_100_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02#
!while/gru_cell_100/ReadVariableOp¡
&while/gru_cell_100/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/gru_cell_100/strided_slice/stack¥
(while/gru_cell_100/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_100/strided_slice/stack_1¥
(while/gru_cell_100/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_100/strided_slice/stack_2ð
 while/gru_cell_100/strided_sliceStridedSlice)while/gru_cell_100/ReadVariableOp:value:0/while/gru_cell_100/strided_slice/stack:output:01while/gru_cell_100/strided_slice/stack_1:output:01while/gru_cell_100/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2"
 while/gru_cell_100/strided_slice·
while/gru_cell_100/MatMul_1MatMulwhile_placeholder_2)while/gru_cell_100/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_100/MatMul_1
while/gru_cell_100/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2
while/gru_cell_100/Const
$while/gru_cell_100/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2&
$while/gru_cell_100/split_1/split_dim°
while/gru_cell_100/split_1SplitV%while/gru_cell_100/MatMul_1:product:0!while/gru_cell_100/Const:output:0-while/gru_cell_100/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2
while/gru_cell_100/split_1´
while/gru_cell_100/addAddV2!while/gru_cell_100/split:output:0#while/gru_cell_100/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_100/add
while/gru_cell_100/SigmoidSigmoidwhile/gru_cell_100/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_100/Sigmoid¸
while/gru_cell_100/add_1AddV2!while/gru_cell_100/split:output:1#while/gru_cell_100/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_100/add_1
while/gru_cell_100/Sigmoid_1Sigmoidwhile/gru_cell_100/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_100/Sigmoid_1¡
while/gru_cell_100/mulMul while/gru_cell_100/Sigmoid_1:y:0while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_100/mul¹
#while/gru_cell_100/ReadVariableOp_1ReadVariableOp,while_gru_cell_100_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02%
#while/gru_cell_100/ReadVariableOp_1¥
(while/gru_cell_100/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_100/strided_slice_1/stack©
*while/gru_cell_100/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/gru_cell_100/strided_slice_1/stack_1©
*while/gru_cell_100/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/gru_cell_100/strided_slice_1/stack_2ü
"while/gru_cell_100/strided_slice_1StridedSlice+while/gru_cell_100/ReadVariableOp_1:value:01while/gru_cell_100/strided_slice_1/stack:output:03while/gru_cell_100/strided_slice_1/stack_1:output:03while/gru_cell_100/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2$
"while/gru_cell_100/strided_slice_1À
while/gru_cell_100/MatMul_2MatMulwhile/gru_cell_100/mul:z:0+while/gru_cell_100/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_100/MatMul_2º
while/gru_cell_100/add_2AddV2!while/gru_cell_100/split:output:2%while/gru_cell_100/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_100/add_2
while/gru_cell_100/ReluReluwhile/gru_cell_100/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_100/Relu£
while/gru_cell_100/mul_1Mulwhile/gru_cell_100/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_100/mul_1y
while/gru_cell_100/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
while/gru_cell_100/sub/x­
while/gru_cell_100/subSub!while/gru_cell_100/sub/x:output:0while/gru_cell_100/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_100/sub±
while/gru_cell_100/mul_2Mulwhile/gru_cell_100/sub:z:0%while/gru_cell_100/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_100/mul_2¬
while/gru_cell_100/add_3AddV2while/gru_cell_100/mul_1:z:0while/gru_cell_100/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_100/add_3à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_100/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1ÿ
while/IdentityIdentitywhile/add_1:z:0*^while/gru_cell_100/BiasAdd/ReadVariableOp)^while/gru_cell_100/MatMul/ReadVariableOp"^while/gru_cell_100/ReadVariableOp$^while/gru_cell_100/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations*^while/gru_cell_100/BiasAdd/ReadVariableOp)^while/gru_cell_100/MatMul/ReadVariableOp"^while/gru_cell_100/ReadVariableOp$^while/gru_cell_100/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:0*^while/gru_cell_100/BiasAdd/ReadVariableOp)^while/gru_cell_100/MatMul/ReadVariableOp"^while/gru_cell_100/ReadVariableOp$^while/gru_cell_100/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_2®
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/gru_cell_100/BiasAdd/ReadVariableOp)^while/gru_cell_100/MatMul/ReadVariableOp"^while/gru_cell_100/ReadVariableOp$^while/gru_cell_100/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_3¢
while/Identity_4Identitywhile/gru_cell_100/add_3:z:0*^while/gru_cell_100/BiasAdd/ReadVariableOp)^while/gru_cell_100/MatMul/ReadVariableOp"^while/gru_cell_100/ReadVariableOp$^while/gru_cell_100/ReadVariableOp_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_4"j
2while_gru_cell_100_biasadd_readvariableop_resource4while_gru_cell_100_biasadd_readvariableop_resource_0"h
1while_gru_cell_100_matmul_readvariableop_resource3while_gru_cell_100_matmul_readvariableop_resource_0"Z
*while_gru_cell_100_readvariableop_resource,while_gru_cell_100_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿÈ: : : : : 2V
)while/gru_cell_100/BiasAdd/ReadVariableOp)while/gru_cell_100/BiasAdd/ReadVariableOp2T
(while/gru_cell_100/MatMul/ReadVariableOp(while/gru_cell_100/MatMul/ReadVariableOp2F
!while/gru_cell_100/ReadVariableOp!while/gru_cell_100/ReadVariableOp2J
#while/gru_cell_100/ReadVariableOp_1#while/gru_cell_100/ReadVariableOp_1: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ:

_output_shapes
: :

_output_shapes
: 
¦
Ñ
K__inference_sequential_100_layer_call_and_return_conditional_losses_4934584
gru_100_input"
gru_100_4934566:	Ø
gru_100_4934568:	Ø#
gru_100_4934570:
ÈØ$
dense_200_4934573:	Èd
dense_200_4934575:d#
dense_201_4934578:d
dense_201_4934580:
identity¢!dense_200/StatefulPartitionedCall¢!dense_201/StatefulPartitionedCall¢gru_100/StatefulPartitionedCall­
gru_100/StatefulPartitionedCallStatefulPartitionedCallgru_100_inputgru_100_4934566gru_100_4934568gru_100_4934570*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_gru_100_layer_call_and_return_conditional_losses_49344552!
gru_100/StatefulPartitionedCall¾
!dense_200/StatefulPartitionedCallStatefulPartitionedCall(gru_100/StatefulPartitionedCall:output:0dense_200_4934573dense_200_4934575*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_200_layer_call_and_return_conditional_losses_49342112#
!dense_200/StatefulPartitionedCallÀ
!dense_201/StatefulPartitionedCallStatefulPartitionedCall*dense_200/StatefulPartitionedCall:output:0dense_201_4934578dense_201_4934580*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_201_layer_call_and_return_conditional_losses_49342272#
!dense_201/StatefulPartitionedCallè
IdentityIdentity*dense_201/StatefulPartitionedCall:output:0"^dense_200/StatefulPartitionedCall"^dense_201/StatefulPartitionedCall ^gru_100/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2F
!dense_200/StatefulPartitionedCall!dense_200/StatefulPartitionedCall2F
!dense_201/StatefulPartitionedCall!dense_201/StatefulPartitionedCall2B
gru_100/StatefulPartitionedCallgru_100/StatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namegru_100_input

Ê
K__inference_sequential_100_layer_call_and_return_conditional_losses_4934234

inputs"
gru_100_4934193:	Ø
gru_100_4934195:	Ø#
gru_100_4934197:
ÈØ$
dense_200_4934212:	Èd
dense_200_4934214:d#
dense_201_4934228:d
dense_201_4934230:
identity¢!dense_200/StatefulPartitionedCall¢!dense_201/StatefulPartitionedCall¢gru_100/StatefulPartitionedCall¦
gru_100/StatefulPartitionedCallStatefulPartitionedCallinputsgru_100_4934193gru_100_4934195gru_100_4934197*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_gru_100_layer_call_and_return_conditional_losses_49341922!
gru_100/StatefulPartitionedCall¾
!dense_200/StatefulPartitionedCallStatefulPartitionedCall(gru_100/StatefulPartitionedCall:output:0dense_200_4934212dense_200_4934214*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_200_layer_call_and_return_conditional_losses_49342112#
!dense_200/StatefulPartitionedCallÀ
!dense_201/StatefulPartitionedCallStatefulPartitionedCall*dense_200/StatefulPartitionedCall:output:0dense_201_4934228dense_201_4934230*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_201_layer_call_and_return_conditional_losses_49342272#
!dense_201/StatefulPartitionedCallè
IdentityIdentity*dense_201/StatefulPartitionedCall:output:0"^dense_200/StatefulPartitionedCall"^dense_201/StatefulPartitionedCall ^gru_100/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2F
!dense_200/StatefulPartitionedCall!dense_200/StatefulPartitionedCall2F
!dense_201/StatefulPartitionedCall!dense_201/StatefulPartitionedCall2B
gru_100/StatefulPartitionedCallgru_100/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
#
½
while_body_4933513
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_gru_cell_100_4933535_0:	Ø+
while_gru_cell_100_4933537_0:	Ø0
while_gru_cell_100_4933539_0:
ÈØ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_gru_cell_100_4933535:	Ø)
while_gru_cell_100_4933537:	Ø.
while_gru_cell_100_4933539:
ÈØ¢*while/gru_cell_100/StatefulPartitionedCallÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem½
*while/gru_cell_100/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_gru_cell_100_4933535_0while_gru_cell_100_4933537_0while_gru_cell_100_4933539_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_gru_cell_100_layer_call_and_return_conditional_losses_49335002,
*while/gru_cell_100/StatefulPartitionedCall÷
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/gru_cell_100/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1
while/IdentityIdentitywhile/add_1:z:0+^while/gru_cell_100/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations+^while/gru_cell_100/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:0+^while/gru_cell_100/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2º
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/gru_cell_100/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3Å
while/Identity_4Identity3while/gru_cell_100/StatefulPartitionedCall:output:1+^while/gru_cell_100/StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_4":
while_gru_cell_100_4933535while_gru_cell_100_4933535_0":
while_gru_cell_100_4933537while_gru_cell_100_4933537_0":
while_gru_cell_100_4933539while_gru_cell_100_4933539_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿÈ: : : : : 2X
*while/gru_cell_100/StatefulPartitionedCall*while/gru_cell_100/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ:

_output_shapes
: :

_output_shapes
: 
Y
¯
while_body_4935605
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_gru_cell_100_matmul_readvariableop_resource_0:	ØC
4while_gru_cell_100_biasadd_readvariableop_resource_0:	Ø@
,while_gru_cell_100_readvariableop_resource_0:
ÈØ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_gru_cell_100_matmul_readvariableop_resource:	ØA
2while_gru_cell_100_biasadd_readvariableop_resource:	Ø>
*while_gru_cell_100_readvariableop_resource:
ÈØ¢)while/gru_cell_100/BiasAdd/ReadVariableOp¢(while/gru_cell_100/MatMul/ReadVariableOp¢!while/gru_cell_100/ReadVariableOp¢#while/gru_cell_100/ReadVariableOp_1Ã
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÉ
(while/gru_cell_100/MatMul/ReadVariableOpReadVariableOp3while_gru_cell_100_matmul_readvariableop_resource_0*
_output_shapes
:	Ø*
dtype02*
(while/gru_cell_100/MatMul/ReadVariableOp×
while/gru_cell_100/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/gru_cell_100/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
while/gru_cell_100/MatMulÈ
)while/gru_cell_100/BiasAdd/ReadVariableOpReadVariableOp4while_gru_cell_100_biasadd_readvariableop_resource_0*
_output_shapes	
:Ø*
dtype02+
)while/gru_cell_100/BiasAdd/ReadVariableOpÎ
while/gru_cell_100/BiasAddBiasAdd#while/gru_cell_100/MatMul:product:01while/gru_cell_100/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
while/gru_cell_100/BiasAdd
"while/gru_cell_100/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2$
"while/gru_cell_100/split/split_dimû
while/gru_cell_100/splitSplit+while/gru_cell_100/split/split_dim:output:0#while/gru_cell_100/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
while/gru_cell_100/splitµ
!while/gru_cell_100/ReadVariableOpReadVariableOp,while_gru_cell_100_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02#
!while/gru_cell_100/ReadVariableOp¡
&while/gru_cell_100/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/gru_cell_100/strided_slice/stack¥
(while/gru_cell_100/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_100/strided_slice/stack_1¥
(while/gru_cell_100/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_100/strided_slice/stack_2ð
 while/gru_cell_100/strided_sliceStridedSlice)while/gru_cell_100/ReadVariableOp:value:0/while/gru_cell_100/strided_slice/stack:output:01while/gru_cell_100/strided_slice/stack_1:output:01while/gru_cell_100/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2"
 while/gru_cell_100/strided_slice·
while/gru_cell_100/MatMul_1MatMulwhile_placeholder_2)while/gru_cell_100/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_100/MatMul_1
while/gru_cell_100/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2
while/gru_cell_100/Const
$while/gru_cell_100/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2&
$while/gru_cell_100/split_1/split_dim°
while/gru_cell_100/split_1SplitV%while/gru_cell_100/MatMul_1:product:0!while/gru_cell_100/Const:output:0-while/gru_cell_100/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2
while/gru_cell_100/split_1´
while/gru_cell_100/addAddV2!while/gru_cell_100/split:output:0#while/gru_cell_100/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_100/add
while/gru_cell_100/SigmoidSigmoidwhile/gru_cell_100/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_100/Sigmoid¸
while/gru_cell_100/add_1AddV2!while/gru_cell_100/split:output:1#while/gru_cell_100/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_100/add_1
while/gru_cell_100/Sigmoid_1Sigmoidwhile/gru_cell_100/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_100/Sigmoid_1¡
while/gru_cell_100/mulMul while/gru_cell_100/Sigmoid_1:y:0while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_100/mul¹
#while/gru_cell_100/ReadVariableOp_1ReadVariableOp,while_gru_cell_100_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02%
#while/gru_cell_100/ReadVariableOp_1¥
(while/gru_cell_100/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_100/strided_slice_1/stack©
*while/gru_cell_100/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/gru_cell_100/strided_slice_1/stack_1©
*while/gru_cell_100/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/gru_cell_100/strided_slice_1/stack_2ü
"while/gru_cell_100/strided_slice_1StridedSlice+while/gru_cell_100/ReadVariableOp_1:value:01while/gru_cell_100/strided_slice_1/stack:output:03while/gru_cell_100/strided_slice_1/stack_1:output:03while/gru_cell_100/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2$
"while/gru_cell_100/strided_slice_1À
while/gru_cell_100/MatMul_2MatMulwhile/gru_cell_100/mul:z:0+while/gru_cell_100/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_100/MatMul_2º
while/gru_cell_100/add_2AddV2!while/gru_cell_100/split:output:2%while/gru_cell_100/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_100/add_2
while/gru_cell_100/ReluReluwhile/gru_cell_100/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_100/Relu£
while/gru_cell_100/mul_1Mulwhile/gru_cell_100/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_100/mul_1y
while/gru_cell_100/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
while/gru_cell_100/sub/x­
while/gru_cell_100/subSub!while/gru_cell_100/sub/x:output:0while/gru_cell_100/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_100/sub±
while/gru_cell_100/mul_2Mulwhile/gru_cell_100/sub:z:0%while/gru_cell_100/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_100/mul_2¬
while/gru_cell_100/add_3AddV2while/gru_cell_100/mul_1:z:0while/gru_cell_100/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_100/add_3à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_100/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1ÿ
while/IdentityIdentitywhile/add_1:z:0*^while/gru_cell_100/BiasAdd/ReadVariableOp)^while/gru_cell_100/MatMul/ReadVariableOp"^while/gru_cell_100/ReadVariableOp$^while/gru_cell_100/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations*^while/gru_cell_100/BiasAdd/ReadVariableOp)^while/gru_cell_100/MatMul/ReadVariableOp"^while/gru_cell_100/ReadVariableOp$^while/gru_cell_100/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:0*^while/gru_cell_100/BiasAdd/ReadVariableOp)^while/gru_cell_100/MatMul/ReadVariableOp"^while/gru_cell_100/ReadVariableOp$^while/gru_cell_100/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_2®
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/gru_cell_100/BiasAdd/ReadVariableOp)^while/gru_cell_100/MatMul/ReadVariableOp"^while/gru_cell_100/ReadVariableOp$^while/gru_cell_100/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_3¢
while/Identity_4Identitywhile/gru_cell_100/add_3:z:0*^while/gru_cell_100/BiasAdd/ReadVariableOp)^while/gru_cell_100/MatMul/ReadVariableOp"^while/gru_cell_100/ReadVariableOp$^while/gru_cell_100/ReadVariableOp_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_4"j
2while_gru_cell_100_biasadd_readvariableop_resource4while_gru_cell_100_biasadd_readvariableop_resource_0"h
1while_gru_cell_100_matmul_readvariableop_resource3while_gru_cell_100_matmul_readvariableop_resource_0"Z
*while_gru_cell_100_readvariableop_resource,while_gru_cell_100_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿÈ: : : : : 2V
)while/gru_cell_100/BiasAdd/ReadVariableOp)while/gru_cell_100/BiasAdd/ReadVariableOp2T
(while/gru_cell_100/MatMul/ReadVariableOp(while/gru_cell_100/MatMul/ReadVariableOp2F
!while/gru_cell_100/ReadVariableOp!while/gru_cell_100/ReadVariableOp2J
#while/gru_cell_100/ReadVariableOp_1#while/gru_cell_100/ReadVariableOp_1: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ:

_output_shapes
: :

_output_shapes
: 
Y
¯
while_body_4934096
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_gru_cell_100_matmul_readvariableop_resource_0:	ØC
4while_gru_cell_100_biasadd_readvariableop_resource_0:	Ø@
,while_gru_cell_100_readvariableop_resource_0:
ÈØ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_gru_cell_100_matmul_readvariableop_resource:	ØA
2while_gru_cell_100_biasadd_readvariableop_resource:	Ø>
*while_gru_cell_100_readvariableop_resource:
ÈØ¢)while/gru_cell_100/BiasAdd/ReadVariableOp¢(while/gru_cell_100/MatMul/ReadVariableOp¢!while/gru_cell_100/ReadVariableOp¢#while/gru_cell_100/ReadVariableOp_1Ã
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÉ
(while/gru_cell_100/MatMul/ReadVariableOpReadVariableOp3while_gru_cell_100_matmul_readvariableop_resource_0*
_output_shapes
:	Ø*
dtype02*
(while/gru_cell_100/MatMul/ReadVariableOp×
while/gru_cell_100/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/gru_cell_100/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
while/gru_cell_100/MatMulÈ
)while/gru_cell_100/BiasAdd/ReadVariableOpReadVariableOp4while_gru_cell_100_biasadd_readvariableop_resource_0*
_output_shapes	
:Ø*
dtype02+
)while/gru_cell_100/BiasAdd/ReadVariableOpÎ
while/gru_cell_100/BiasAddBiasAdd#while/gru_cell_100/MatMul:product:01while/gru_cell_100/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
while/gru_cell_100/BiasAdd
"while/gru_cell_100/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2$
"while/gru_cell_100/split/split_dimû
while/gru_cell_100/splitSplit+while/gru_cell_100/split/split_dim:output:0#while/gru_cell_100/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
while/gru_cell_100/splitµ
!while/gru_cell_100/ReadVariableOpReadVariableOp,while_gru_cell_100_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02#
!while/gru_cell_100/ReadVariableOp¡
&while/gru_cell_100/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/gru_cell_100/strided_slice/stack¥
(while/gru_cell_100/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_100/strided_slice/stack_1¥
(while/gru_cell_100/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_100/strided_slice/stack_2ð
 while/gru_cell_100/strided_sliceStridedSlice)while/gru_cell_100/ReadVariableOp:value:0/while/gru_cell_100/strided_slice/stack:output:01while/gru_cell_100/strided_slice/stack_1:output:01while/gru_cell_100/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2"
 while/gru_cell_100/strided_slice·
while/gru_cell_100/MatMul_1MatMulwhile_placeholder_2)while/gru_cell_100/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_100/MatMul_1
while/gru_cell_100/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2
while/gru_cell_100/Const
$while/gru_cell_100/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2&
$while/gru_cell_100/split_1/split_dim°
while/gru_cell_100/split_1SplitV%while/gru_cell_100/MatMul_1:product:0!while/gru_cell_100/Const:output:0-while/gru_cell_100/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2
while/gru_cell_100/split_1´
while/gru_cell_100/addAddV2!while/gru_cell_100/split:output:0#while/gru_cell_100/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_100/add
while/gru_cell_100/SigmoidSigmoidwhile/gru_cell_100/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_100/Sigmoid¸
while/gru_cell_100/add_1AddV2!while/gru_cell_100/split:output:1#while/gru_cell_100/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_100/add_1
while/gru_cell_100/Sigmoid_1Sigmoidwhile/gru_cell_100/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_100/Sigmoid_1¡
while/gru_cell_100/mulMul while/gru_cell_100/Sigmoid_1:y:0while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_100/mul¹
#while/gru_cell_100/ReadVariableOp_1ReadVariableOp,while_gru_cell_100_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02%
#while/gru_cell_100/ReadVariableOp_1¥
(while/gru_cell_100/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_100/strided_slice_1/stack©
*while/gru_cell_100/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/gru_cell_100/strided_slice_1/stack_1©
*while/gru_cell_100/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/gru_cell_100/strided_slice_1/stack_2ü
"while/gru_cell_100/strided_slice_1StridedSlice+while/gru_cell_100/ReadVariableOp_1:value:01while/gru_cell_100/strided_slice_1/stack:output:03while/gru_cell_100/strided_slice_1/stack_1:output:03while/gru_cell_100/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2$
"while/gru_cell_100/strided_slice_1À
while/gru_cell_100/MatMul_2MatMulwhile/gru_cell_100/mul:z:0+while/gru_cell_100/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_100/MatMul_2º
while/gru_cell_100/add_2AddV2!while/gru_cell_100/split:output:2%while/gru_cell_100/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_100/add_2
while/gru_cell_100/ReluReluwhile/gru_cell_100/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_100/Relu£
while/gru_cell_100/mul_1Mulwhile/gru_cell_100/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_100/mul_1y
while/gru_cell_100/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
while/gru_cell_100/sub/x­
while/gru_cell_100/subSub!while/gru_cell_100/sub/x:output:0while/gru_cell_100/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_100/sub±
while/gru_cell_100/mul_2Mulwhile/gru_cell_100/sub:z:0%while/gru_cell_100/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_100/mul_2¬
while/gru_cell_100/add_3AddV2while/gru_cell_100/mul_1:z:0while/gru_cell_100/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_100/add_3à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_100/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1ÿ
while/IdentityIdentitywhile/add_1:z:0*^while/gru_cell_100/BiasAdd/ReadVariableOp)^while/gru_cell_100/MatMul/ReadVariableOp"^while/gru_cell_100/ReadVariableOp$^while/gru_cell_100/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations*^while/gru_cell_100/BiasAdd/ReadVariableOp)^while/gru_cell_100/MatMul/ReadVariableOp"^while/gru_cell_100/ReadVariableOp$^while/gru_cell_100/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:0*^while/gru_cell_100/BiasAdd/ReadVariableOp)^while/gru_cell_100/MatMul/ReadVariableOp"^while/gru_cell_100/ReadVariableOp$^while/gru_cell_100/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_2®
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/gru_cell_100/BiasAdd/ReadVariableOp)^while/gru_cell_100/MatMul/ReadVariableOp"^while/gru_cell_100/ReadVariableOp$^while/gru_cell_100/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_3¢
while/Identity_4Identitywhile/gru_cell_100/add_3:z:0*^while/gru_cell_100/BiasAdd/ReadVariableOp)^while/gru_cell_100/MatMul/ReadVariableOp"^while/gru_cell_100/ReadVariableOp$^while/gru_cell_100/ReadVariableOp_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_4"j
2while_gru_cell_100_biasadd_readvariableop_resource4while_gru_cell_100_biasadd_readvariableop_resource_0"h
1while_gru_cell_100_matmul_readvariableop_resource3while_gru_cell_100_matmul_readvariableop_resource_0"Z
*while_gru_cell_100_readvariableop_resource,while_gru_cell_100_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿÈ: : : : : 2V
)while/gru_cell_100/BiasAdd/ReadVariableOp)while/gru_cell_100/BiasAdd/ReadVariableOp2T
(while/gru_cell_100/MatMul/ReadVariableOp(while/gru_cell_100/MatMul/ReadVariableOp2F
!while/gru_cell_100/ReadVariableOp!while/gru_cell_100/ReadVariableOp2J
#while/gru_cell_100/ReadVariableOp_1#while/gru_cell_100/ReadVariableOp_1: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ:

_output_shapes
: :

_output_shapes
: 
ê	
Ç
gru_100_while_cond_4934869,
(gru_100_while_gru_100_while_loop_counter2
.gru_100_while_gru_100_while_maximum_iterations
gru_100_while_placeholder
gru_100_while_placeholder_1
gru_100_while_placeholder_2.
*gru_100_while_less_gru_100_strided_slice_1E
Agru_100_while_gru_100_while_cond_4934869___redundant_placeholder0E
Agru_100_while_gru_100_while_cond_4934869___redundant_placeholder1E
Agru_100_while_gru_100_while_cond_4934869___redundant_placeholder2E
Agru_100_while_gru_100_while_cond_4934869___redundant_placeholder3
gru_100_while_identity

gru_100/while/LessLessgru_100_while_placeholder*gru_100_while_less_gru_100_strided_slice_1*
T0*
_output_shapes
: 2
gru_100/while/Lessu
gru_100/while/IdentityIdentitygru_100/while/Less:z:0*
T0
*
_output_shapes
: 2
gru_100/while/Identity"9
gru_100_while_identitygru_100/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :ÿÿÿÿÿÿÿÿÿÈ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ:

_output_shapes
: :

_output_shapes
:

Ê
K__inference_sequential_100_layer_call_and_return_conditional_losses_4934506

inputs"
gru_100_4934488:	Ø
gru_100_4934490:	Ø#
gru_100_4934492:
ÈØ$
dense_200_4934495:	Èd
dense_200_4934497:d#
dense_201_4934500:d
dense_201_4934502:
identity¢!dense_200/StatefulPartitionedCall¢!dense_201/StatefulPartitionedCall¢gru_100/StatefulPartitionedCall¦
gru_100/StatefulPartitionedCallStatefulPartitionedCallinputsgru_100_4934488gru_100_4934490gru_100_4934492*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_gru_100_layer_call_and_return_conditional_losses_49344552!
gru_100/StatefulPartitionedCall¾
!dense_200/StatefulPartitionedCallStatefulPartitionedCall(gru_100/StatefulPartitionedCall:output:0dense_200_4934495dense_200_4934497*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_200_layer_call_and_return_conditional_losses_49342112#
!dense_200/StatefulPartitionedCallÀ
!dense_201/StatefulPartitionedCallStatefulPartitionedCall*dense_200/StatefulPartitionedCall:output:0dense_201_4934500dense_201_4934502*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_201_layer_call_and_return_conditional_losses_49342272#
!dense_201/StatefulPartitionedCallè
IdentityIdentity*dense_201/StatefulPartitionedCall:output:0"^dense_200/StatefulPartitionedCall"^dense_201/StatefulPartitionedCall ^gru_100/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2F
!dense_200/StatefulPartitionedCall!dense_200/StatefulPartitionedCall2F
!dense_201/StatefulPartitionedCall!dense_201/StatefulPartitionedCall2B
gru_100/StatefulPartitionedCallgru_100/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Y
¯
while_body_4935263
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_gru_cell_100_matmul_readvariableop_resource_0:	ØC
4while_gru_cell_100_biasadd_readvariableop_resource_0:	Ø@
,while_gru_cell_100_readvariableop_resource_0:
ÈØ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_gru_cell_100_matmul_readvariableop_resource:	ØA
2while_gru_cell_100_biasadd_readvariableop_resource:	Ø>
*while_gru_cell_100_readvariableop_resource:
ÈØ¢)while/gru_cell_100/BiasAdd/ReadVariableOp¢(while/gru_cell_100/MatMul/ReadVariableOp¢!while/gru_cell_100/ReadVariableOp¢#while/gru_cell_100/ReadVariableOp_1Ã
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÉ
(while/gru_cell_100/MatMul/ReadVariableOpReadVariableOp3while_gru_cell_100_matmul_readvariableop_resource_0*
_output_shapes
:	Ø*
dtype02*
(while/gru_cell_100/MatMul/ReadVariableOp×
while/gru_cell_100/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/gru_cell_100/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
while/gru_cell_100/MatMulÈ
)while/gru_cell_100/BiasAdd/ReadVariableOpReadVariableOp4while_gru_cell_100_biasadd_readvariableop_resource_0*
_output_shapes	
:Ø*
dtype02+
)while/gru_cell_100/BiasAdd/ReadVariableOpÎ
while/gru_cell_100/BiasAddBiasAdd#while/gru_cell_100/MatMul:product:01while/gru_cell_100/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
while/gru_cell_100/BiasAdd
"while/gru_cell_100/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2$
"while/gru_cell_100/split/split_dimû
while/gru_cell_100/splitSplit+while/gru_cell_100/split/split_dim:output:0#while/gru_cell_100/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
while/gru_cell_100/splitµ
!while/gru_cell_100/ReadVariableOpReadVariableOp,while_gru_cell_100_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02#
!while/gru_cell_100/ReadVariableOp¡
&while/gru_cell_100/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/gru_cell_100/strided_slice/stack¥
(while/gru_cell_100/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_100/strided_slice/stack_1¥
(while/gru_cell_100/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_100/strided_slice/stack_2ð
 while/gru_cell_100/strided_sliceStridedSlice)while/gru_cell_100/ReadVariableOp:value:0/while/gru_cell_100/strided_slice/stack:output:01while/gru_cell_100/strided_slice/stack_1:output:01while/gru_cell_100/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2"
 while/gru_cell_100/strided_slice·
while/gru_cell_100/MatMul_1MatMulwhile_placeholder_2)while/gru_cell_100/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_100/MatMul_1
while/gru_cell_100/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2
while/gru_cell_100/Const
$while/gru_cell_100/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2&
$while/gru_cell_100/split_1/split_dim°
while/gru_cell_100/split_1SplitV%while/gru_cell_100/MatMul_1:product:0!while/gru_cell_100/Const:output:0-while/gru_cell_100/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2
while/gru_cell_100/split_1´
while/gru_cell_100/addAddV2!while/gru_cell_100/split:output:0#while/gru_cell_100/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_100/add
while/gru_cell_100/SigmoidSigmoidwhile/gru_cell_100/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_100/Sigmoid¸
while/gru_cell_100/add_1AddV2!while/gru_cell_100/split:output:1#while/gru_cell_100/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_100/add_1
while/gru_cell_100/Sigmoid_1Sigmoidwhile/gru_cell_100/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_100/Sigmoid_1¡
while/gru_cell_100/mulMul while/gru_cell_100/Sigmoid_1:y:0while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_100/mul¹
#while/gru_cell_100/ReadVariableOp_1ReadVariableOp,while_gru_cell_100_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02%
#while/gru_cell_100/ReadVariableOp_1¥
(while/gru_cell_100/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_100/strided_slice_1/stack©
*while/gru_cell_100/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/gru_cell_100/strided_slice_1/stack_1©
*while/gru_cell_100/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/gru_cell_100/strided_slice_1/stack_2ü
"while/gru_cell_100/strided_slice_1StridedSlice+while/gru_cell_100/ReadVariableOp_1:value:01while/gru_cell_100/strided_slice_1/stack:output:03while/gru_cell_100/strided_slice_1/stack_1:output:03while/gru_cell_100/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2$
"while/gru_cell_100/strided_slice_1À
while/gru_cell_100/MatMul_2MatMulwhile/gru_cell_100/mul:z:0+while/gru_cell_100/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_100/MatMul_2º
while/gru_cell_100/add_2AddV2!while/gru_cell_100/split:output:2%while/gru_cell_100/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_100/add_2
while/gru_cell_100/ReluReluwhile/gru_cell_100/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_100/Relu£
while/gru_cell_100/mul_1Mulwhile/gru_cell_100/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_100/mul_1y
while/gru_cell_100/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
while/gru_cell_100/sub/x­
while/gru_cell_100/subSub!while/gru_cell_100/sub/x:output:0while/gru_cell_100/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_100/sub±
while/gru_cell_100/mul_2Mulwhile/gru_cell_100/sub:z:0%while/gru_cell_100/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_100/mul_2¬
while/gru_cell_100/add_3AddV2while/gru_cell_100/mul_1:z:0while/gru_cell_100/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_100/add_3à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_100/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1ÿ
while/IdentityIdentitywhile/add_1:z:0*^while/gru_cell_100/BiasAdd/ReadVariableOp)^while/gru_cell_100/MatMul/ReadVariableOp"^while/gru_cell_100/ReadVariableOp$^while/gru_cell_100/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations*^while/gru_cell_100/BiasAdd/ReadVariableOp)^while/gru_cell_100/MatMul/ReadVariableOp"^while/gru_cell_100/ReadVariableOp$^while/gru_cell_100/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:0*^while/gru_cell_100/BiasAdd/ReadVariableOp)^while/gru_cell_100/MatMul/ReadVariableOp"^while/gru_cell_100/ReadVariableOp$^while/gru_cell_100/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_2®
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/gru_cell_100/BiasAdd/ReadVariableOp)^while/gru_cell_100/MatMul/ReadVariableOp"^while/gru_cell_100/ReadVariableOp$^while/gru_cell_100/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_3¢
while/Identity_4Identitywhile/gru_cell_100/add_3:z:0*^while/gru_cell_100/BiasAdd/ReadVariableOp)^while/gru_cell_100/MatMul/ReadVariableOp"^while/gru_cell_100/ReadVariableOp$^while/gru_cell_100/ReadVariableOp_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_4"j
2while_gru_cell_100_biasadd_readvariableop_resource4while_gru_cell_100_biasadd_readvariableop_resource_0"h
1while_gru_cell_100_matmul_readvariableop_resource3while_gru_cell_100_matmul_readvariableop_resource_0"Z
*while_gru_cell_100_readvariableop_resource,while_gru_cell_100_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿÈ: : : : : 2V
)while/gru_cell_100/BiasAdd/ReadVariableOp)while/gru_cell_100/BiasAdd/ReadVariableOp2T
(while/gru_cell_100/MatMul/ReadVariableOp(while/gru_cell_100/MatMul/ReadVariableOp2F
!while/gru_cell_100/ReadVariableOp!while/gru_cell_100/ReadVariableOp2J
#while/gru_cell_100/ReadVariableOp_1#while/gru_cell_100/ReadVariableOp_1: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ:

_output_shapes
: :

_output_shapes
: 
ë
§
%__inference_signature_wrapper_4934611
gru_100_input
unknown:	Ø
	unknown_0:	Ø
	unknown_1:
ÈØ
	unknown_2:	Èd
	unknown_3:d
	unknown_4:d
	unknown_5:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallgru_100_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference__wrapped_model_49334192
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namegru_100_input"ÌL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*¼
serving_default¨
K
gru_100_input:
serving_default_gru_100_input:0ÿÿÿÿÿÿÿÿÿ=
	dense_2010
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:û½
-
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	optimizer
	variables
regularization_losses
trainable_variables
	keras_api
	
signatures
U_default_save_signature
*V&call_and_return_all_conditional_losses
W__call__"ß*
_tf_keras_sequentialÀ*{"name": "sequential_100", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_100", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 2]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "gru_100_input"}}, {"class_name": "GRU", "config": {"name": "gru_100", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 2]}, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 200, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2, "reset_after": false}}, {"class_name": "Dense", "config": {"name": "dense_200", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_201", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 12, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 2]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 13}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 7, 2]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 7, 2]}, "float32", "gru_100_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_100", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 2]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "gru_100_input"}, "shared_object_id": 0}, {"class_name": "GRU", "config": {"name": "gru_100", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 2]}, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 200, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2, "reset_after": false}, "shared_object_id": 5}, {"class_name": "Dense", "config": {"name": "dense_200", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 8}, {"class_name": "Dense", "config": {"name": "dense_201", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 11}]}}, "training_config": {"loss": "mse", "metrics": null, "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
£

cell

state_spec
	variables
regularization_losses
trainable_variables
	keras_api
*X&call_and_return_all_conditional_losses
Y__call__"ú
_tf_keras_rnn_layerÜ{"name": "gru_100", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 2]}, "stateful": false, "must_restore_from_config": false, "class_name": "GRU", "config": {"name": "gru_100", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 2]}, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 200, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2, "reset_after": false}, "shared_object_id": 5, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 2]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 13}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 7, 2]}}
Ô

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
*Z&call_and_return_all_conditional_losses
[__call__"¯
_tf_keras_layer{"name": "dense_200", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_200", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 8, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 200}}, "shared_object_id": 14}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 200]}}
Ö

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
*\&call_and_return_all_conditional_losses
]__call__"±
_tf_keras_layer{"name": "dense_201", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_201", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 11, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 100}}, "shared_object_id": 15}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 100]}}
Õ
iter

beta_1

beta_2
	decay
 learning_ratemGmHmImJ!mK"mL#mMvNvOvPvQ!vR"vS#vT"
oss_optimizer
Q
!0
"1
#2
3
4
5
6"
trackable_list_wrapper
 "
trackable_list_wrapper
Q
!0
"1
#2
3
4
5
6"
trackable_list_wrapper
Ê
$non_trainable_variables
	variables
%layer_regularization_losses
regularization_losses
&layer_metrics
trainable_variables
'metrics

(layers
W__call__
U_default_save_signature
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses"
_generic_user_object
,
^serving_default"
signature_map
	

!kernel
"recurrent_kernel
#bias
)	variables
*regularization_losses
+trainable_variables
,	keras_api
*_&call_and_return_all_conditional_losses
`__call__"Ç
_tf_keras_layer­{"name": "gru_cell_100", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "GRUCell", "config": {"name": "gru_cell_100", "trainable": true, "dtype": "float32", "units": 200, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2, "reset_after": false}, "shared_object_id": 4}
 "
trackable_list_wrapper
5
!0
"1
#2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
!0
"1
#2"
trackable_list_wrapper
¹

-states
.non_trainable_variables
	variables
/layer_regularization_losses
regularization_losses
0layer_metrics
trainable_variables
1metrics

2layers
Y__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses"
_generic_user_object
#:!	Èd2dense_200/kernel
:d2dense_200/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
­
3non_trainable_variables
	variables
4layer_regularization_losses
regularization_losses
5layer_metrics
trainable_variables
6metrics

7layers
[__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses"
_generic_user_object
": d2dense_201/kernel
:2dense_201/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
­
8non_trainable_variables
	variables
9layer_regularization_losses
regularization_losses
:layer_metrics
trainable_variables
;metrics

<layers
]__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
.:,	Ø2gru_100/gru_cell_100/kernel
9:7
ÈØ2%gru_100/gru_cell_100/recurrent_kernel
(:&Ø2gru_100/gru_cell_100/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
'
=0"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
5
!0
"1
#2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
!0
"1
#2"
trackable_list_wrapper
­
>non_trainable_variables
)	variables
?layer_regularization_losses
*regularization_losses
@layer_metrics
+trainable_variables
Ametrics

Blayers
`__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses"
_generic_user_object
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
'

0"
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
Ô
	Ctotal
	Dcount
E	variables
F	keras_api"
_tf_keras_metric{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 16}
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
:  (2total
:  (2count
.
C0
D1"
trackable_list_wrapper
-
E	variables"
_generic_user_object
(:&	Èd2Adam/dense_200/kernel/m
!:d2Adam/dense_200/bias/m
':%d2Adam/dense_201/kernel/m
!:2Adam/dense_201/bias/m
3:1	Ø2"Adam/gru_100/gru_cell_100/kernel/m
>:<
ÈØ2,Adam/gru_100/gru_cell_100/recurrent_kernel/m
-:+Ø2 Adam/gru_100/gru_cell_100/bias/m
(:&	Èd2Adam/dense_200/kernel/v
!:d2Adam/dense_200/bias/v
':%d2Adam/dense_201/kernel/v
!:2Adam/dense_201/bias/v
3:1	Ø2"Adam/gru_100/gru_cell_100/kernel/v
>:<
ÈØ2,Adam/gru_100/gru_cell_100/recurrent_kernel/v
-:+Ø2 Adam/gru_100/gru_cell_100/bias/v
ê2ç
"__inference__wrapped_model_4933419À
²
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *0¢-
+(
gru_100_inputÿÿÿÿÿÿÿÿÿ
ú2÷
K__inference_sequential_100_layer_call_and_return_conditional_losses_4934795
K__inference_sequential_100_layer_call_and_return_conditional_losses_4934979
K__inference_sequential_100_layer_call_and_return_conditional_losses_4934563
K__inference_sequential_100_layer_call_and_return_conditional_losses_4934584À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
2
0__inference_sequential_100_layer_call_fn_4934251
0__inference_sequential_100_layer_call_fn_4934998
0__inference_sequential_100_layer_call_fn_4935017
0__inference_sequential_100_layer_call_fn_4934542À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ó2ð
D__inference_gru_100_layer_call_and_return_conditional_losses_4935188
D__inference_gru_100_layer_call_and_return_conditional_losses_4935359
D__inference_gru_100_layer_call_and_return_conditional_losses_4935530
D__inference_gru_100_layer_call_and_return_conditional_losses_4935701Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
2
)__inference_gru_100_layer_call_fn_4935712
)__inference_gru_100_layer_call_fn_4935723
)__inference_gru_100_layer_call_fn_4935734
)__inference_gru_100_layer_call_fn_4935745Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ð2í
F__inference_dense_200_layer_call_and_return_conditional_losses_4935756¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Õ2Ò
+__inference_dense_200_layer_call_fn_4935765¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ð2í
F__inference_dense_201_layer_call_and_return_conditional_losses_4935775¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Õ2Ò
+__inference_dense_201_layer_call_fn_4935784¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ÒBÏ
%__inference_signature_wrapper_4934611gru_100_input"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ú2×
I__inference_gru_cell_100_layer_call_and_return_conditional_losses_4935830
I__inference_gru_cell_100_layer_call_and_return_conditional_losses_4935876¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
¤2¡
.__inference_gru_cell_100_layer_call_fn_4935890
.__inference_gru_cell_100_layer_call_fn_4935904¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 ¢
"__inference__wrapped_model_4933419|!#":¢7
0¢-
+(
gru_100_inputÿÿÿÿÿÿÿÿÿ
ª "5ª2
0
	dense_201# 
	dense_201ÿÿÿÿÿÿÿÿÿ§
F__inference_dense_200_layer_call_and_return_conditional_losses_4935756]0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿÈ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿd
 
+__inference_dense_200_layer_call_fn_4935765P0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿÈ
ª "ÿÿÿÿÿÿÿÿÿd¦
F__inference_dense_201_layer_call_and_return_conditional_losses_4935775\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿd
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ~
+__inference_dense_201_layer_call_fn_4935784O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿd
ª "ÿÿÿÿÿÿÿÿÿÆ
D__inference_gru_100_layer_call_and_return_conditional_losses_4935188~!#"O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿÈ
 Æ
D__inference_gru_100_layer_call_and_return_conditional_losses_4935359~!#"O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿÈ
 ¶
D__inference_gru_100_layer_call_and_return_conditional_losses_4935530n!#"?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿÈ
 ¶
D__inference_gru_100_layer_call_and_return_conditional_losses_4935701n!#"?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿÈ
 
)__inference_gru_100_layer_call_fn_4935712q!#"O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿÈ
)__inference_gru_100_layer_call_fn_4935723q!#"O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿÈ
)__inference_gru_100_layer_call_fn_4935734a!#"?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿÈ
)__inference_gru_100_layer_call_fn_4935745a!#"?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿÈ
I__inference_gru_cell_100_layer_call_and_return_conditional_losses_4935830º!#"]¢Z
S¢P
 
inputsÿÿÿÿÿÿÿÿÿ
(¢%
# 
states/0ÿÿÿÿÿÿÿÿÿÈ
p 
ª "T¢Q
J¢G

0/0ÿÿÿÿÿÿÿÿÿÈ
%"
 
0/1/0ÿÿÿÿÿÿÿÿÿÈ
 
I__inference_gru_cell_100_layer_call_and_return_conditional_losses_4935876º!#"]¢Z
S¢P
 
inputsÿÿÿÿÿÿÿÿÿ
(¢%
# 
states/0ÿÿÿÿÿÿÿÿÿÈ
p
ª "T¢Q
J¢G

0/0ÿÿÿÿÿÿÿÿÿÈ
%"
 
0/1/0ÿÿÿÿÿÿÿÿÿÈ
 ß
.__inference_gru_cell_100_layer_call_fn_4935890¬!#"]¢Z
S¢P
 
inputsÿÿÿÿÿÿÿÿÿ
(¢%
# 
states/0ÿÿÿÿÿÿÿÿÿÈ
p 
ª "F¢C

0ÿÿÿÿÿÿÿÿÿÈ
# 

1/0ÿÿÿÿÿÿÿÿÿÈß
.__inference_gru_cell_100_layer_call_fn_4935904¬!#"]¢Z
S¢P
 
inputsÿÿÿÿÿÿÿÿÿ
(¢%
# 
states/0ÿÿÿÿÿÿÿÿÿÈ
p
ª "F¢C

0ÿÿÿÿÿÿÿÿÿÈ
# 

1/0ÿÿÿÿÿÿÿÿÿÈÃ
K__inference_sequential_100_layer_call_and_return_conditional_losses_4934563t!#"B¢?
8¢5
+(
gru_100_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Ã
K__inference_sequential_100_layer_call_and_return_conditional_losses_4934584t!#"B¢?
8¢5
+(
gru_100_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¼
K__inference_sequential_100_layer_call_and_return_conditional_losses_4934795m!#";¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¼
K__inference_sequential_100_layer_call_and_return_conditional_losses_4934979m!#";¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
0__inference_sequential_100_layer_call_fn_4934251g!#"B¢?
8¢5
+(
gru_100_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
0__inference_sequential_100_layer_call_fn_4934542g!#"B¢?
8¢5
+(
gru_100_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
0__inference_sequential_100_layer_call_fn_4934998`!#";¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
0__inference_sequential_100_layer_call_fn_4935017`!#";¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ·
%__inference_signature_wrapper_4934611!#"K¢H
¢ 
Aª>
<
gru_100_input+(
gru_100_inputÿÿÿÿÿÿÿÿÿ"5ª2
0
	dense_201# 
	dense_201ÿÿÿÿÿÿÿÿÿ