??
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
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
delete_old_dirsbool(?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?
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
dtypetype?
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
?
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
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
?
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
?
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type
output_handle"
element_dtypetype"

shape_typetype:
2	
?
TensorListReserve
element_shape"
shape_type
num_elements

handle"
element_dtypetype"

shape_typetype:
2	
?
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint?????????
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?
?
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
?"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718Ϣ
{
dense_30/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?d* 
shared_namedense_30/kernel
t
#dense_30/kernel/Read/ReadVariableOpReadVariableOpdense_30/kernel*
_output_shapes
:	?d*
dtype0
r
dense_30/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*
shared_namedense_30/bias
k
!dense_30/bias/Read/ReadVariableOpReadVariableOpdense_30/bias*
_output_shapes
:d*
dtype0
z
dense_31/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d* 
shared_namedense_31/kernel
s
#dense_31/kernel/Read/ReadVariableOpReadVariableOpdense_31/kernel*
_output_shapes

:d*
dtype0
r
dense_31/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_31/bias
k
!dense_31/bias/Read/ReadVariableOpReadVariableOpdense_31/bias*
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
?
lstm_15/lstm_cell_15/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*,
shared_namelstm_15/lstm_cell_15/kernel
?
/lstm_15/lstm_cell_15/kernel/Read/ReadVariableOpReadVariableOplstm_15/lstm_cell_15/kernel*
_output_shapes
:	?*
dtype0
?
%lstm_15/lstm_cell_15/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*6
shared_name'%lstm_15/lstm_cell_15/recurrent_kernel
?
9lstm_15/lstm_cell_15/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_15/lstm_cell_15/recurrent_kernel* 
_output_shapes
:
??*
dtype0
?
lstm_15/lstm_cell_15/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?**
shared_namelstm_15/lstm_cell_15/bias
?
-lstm_15/lstm_cell_15/bias/Read/ReadVariableOpReadVariableOplstm_15/lstm_cell_15/bias*
_output_shapes	
:?*
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
?
Adam/dense_30/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?d*'
shared_nameAdam/dense_30/kernel/m
?
*Adam/dense_30/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_30/kernel/m*
_output_shapes
:	?d*
dtype0
?
Adam/dense_30/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*%
shared_nameAdam/dense_30/bias/m
y
(Adam/dense_30/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_30/bias/m*
_output_shapes
:d*
dtype0
?
Adam/dense_31/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*'
shared_nameAdam/dense_31/kernel/m
?
*Adam/dense_31/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_31/kernel/m*
_output_shapes

:d*
dtype0
?
Adam/dense_31/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_31/bias/m
y
(Adam/dense_31/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_31/bias/m*
_output_shapes
:*
dtype0
?
"Adam/lstm_15/lstm_cell_15/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*3
shared_name$"Adam/lstm_15/lstm_cell_15/kernel/m
?
6Adam/lstm_15/lstm_cell_15/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_15/lstm_cell_15/kernel/m*
_output_shapes
:	?*
dtype0
?
,Adam/lstm_15/lstm_cell_15/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*=
shared_name.,Adam/lstm_15/lstm_cell_15/recurrent_kernel/m
?
@Adam/lstm_15/lstm_cell_15/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_15/lstm_cell_15/recurrent_kernel/m* 
_output_shapes
:
??*
dtype0
?
 Adam/lstm_15/lstm_cell_15/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*1
shared_name" Adam/lstm_15/lstm_cell_15/bias/m
?
4Adam/lstm_15/lstm_cell_15/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_15/lstm_cell_15/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_30/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?d*'
shared_nameAdam/dense_30/kernel/v
?
*Adam/dense_30/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_30/kernel/v*
_output_shapes
:	?d*
dtype0
?
Adam/dense_30/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*%
shared_nameAdam/dense_30/bias/v
y
(Adam/dense_30/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_30/bias/v*
_output_shapes
:d*
dtype0
?
Adam/dense_31/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*'
shared_nameAdam/dense_31/kernel/v
?
*Adam/dense_31/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_31/kernel/v*
_output_shapes

:d*
dtype0
?
Adam/dense_31/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_31/bias/v
y
(Adam/dense_31/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_31/bias/v*
_output_shapes
:*
dtype0
?
"Adam/lstm_15/lstm_cell_15/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*3
shared_name$"Adam/lstm_15/lstm_cell_15/kernel/v
?
6Adam/lstm_15/lstm_cell_15/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_15/lstm_cell_15/kernel/v*
_output_shapes
:	?*
dtype0
?
,Adam/lstm_15/lstm_cell_15/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*=
shared_name.,Adam/lstm_15/lstm_cell_15/recurrent_kernel/v
?
@Adam/lstm_15/lstm_cell_15/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_15/lstm_cell_15/recurrent_kernel/v* 
_output_shapes
:
??*
dtype0
?
 Adam/lstm_15/lstm_cell_15/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*1
shared_name" Adam/lstm_15/lstm_cell_15/bias/v
?
4Adam/lstm_15/lstm_cell_15/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_15/lstm_cell_15/bias/v*
_output_shapes	
:?*
dtype0

NoOpNoOp
?*
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?)
value?)B?) B?)
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	optimizer
trainable_variables
regularization_losses
	variables
	keras_api
	
signatures
l

cell

state_spec
trainable_variables
regularization_losses
	variables
	keras_api
h

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
h

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
?
iter

beta_1

beta_2
	decay
 learning_ratemHmImJmK!mL"mM#mNvOvPvQvR!vS"vT#vU
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
?
trainable_variables
$non_trainable_variables
regularization_losses
%layer_metrics

&layers
'layer_regularization_losses
(metrics
	variables
 
?
)
state_size

!kernel
"recurrent_kernel
#bias
*trainable_variables
+regularization_losses
,	variables
-	keras_api
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
?
trainable_variables

.states
/non_trainable_variables
regularization_losses
0layer_metrics

1layers
2layer_regularization_losses
3metrics
	variables
[Y
VARIABLE_VALUEdense_30/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_30/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?
trainable_variables
4non_trainable_variables
regularization_losses
5layer_metrics

6layers
7layer_regularization_losses
8metrics
	variables
[Y
VARIABLE_VALUEdense_31/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_31/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?
trainable_variables
9non_trainable_variables
regularization_losses
:layer_metrics

;layers
<layer_regularization_losses
=metrics
	variables
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
a_
VARIABLE_VALUElstm_15/lstm_cell_15/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE%lstm_15/lstm_cell_15/recurrent_kernel0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUElstm_15/lstm_cell_15/bias0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
 
 

0
1
2
 

>0
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
?
*trainable_variables
?non_trainable_variables
+regularization_losses
@layer_metrics

Alayers
Blayer_regularization_losses
Cmetrics
,	variables
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
 
 
4
	Dtotal
	Ecount
F	variables
G	keras_api
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
D0
E1

F	variables
~|
VARIABLE_VALUEAdam/dense_30/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_30/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_31/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_31/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/lstm_15/lstm_cell_15/kernel/mLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/lstm_15/lstm_cell_15/recurrent_kernel/mLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adam/lstm_15/lstm_cell_15/bias/mLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_30/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_30/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_31/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_31/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/lstm_15/lstm_cell_15/kernel/vLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/lstm_15/lstm_cell_15/recurrent_kernel/vLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adam/lstm_15/lstm_cell_15/bias/vLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_15_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_15_inputlstm_15/lstm_cell_15/kernel%lstm_15/lstm_cell_15/recurrent_kernellstm_15/lstm_cell_15/biasdense_30/kerneldense_30/biasdense_31/kerneldense_31/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference_signature_wrapper_648866
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_30/kernel/Read/ReadVariableOp!dense_30/bias/Read/ReadVariableOp#dense_31/kernel/Read/ReadVariableOp!dense_31/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp/lstm_15/lstm_cell_15/kernel/Read/ReadVariableOp9lstm_15/lstm_cell_15/recurrent_kernel/Read/ReadVariableOp-lstm_15/lstm_cell_15/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_30/kernel/m/Read/ReadVariableOp(Adam/dense_30/bias/m/Read/ReadVariableOp*Adam/dense_31/kernel/m/Read/ReadVariableOp(Adam/dense_31/bias/m/Read/ReadVariableOp6Adam/lstm_15/lstm_cell_15/kernel/m/Read/ReadVariableOp@Adam/lstm_15/lstm_cell_15/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_15/lstm_cell_15/bias/m/Read/ReadVariableOp*Adam/dense_30/kernel/v/Read/ReadVariableOp(Adam/dense_30/bias/v/Read/ReadVariableOp*Adam/dense_31/kernel/v/Read/ReadVariableOp(Adam/dense_31/bias/v/Read/ReadVariableOp6Adam/lstm_15/lstm_cell_15/kernel/v/Read/ReadVariableOp@Adam/lstm_15/lstm_cell_15/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_15/lstm_cell_15/bias/v/Read/ReadVariableOpConst*)
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
GPU 2J 8? *(
f#R!
__inference__traced_save_650124
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_30/kerneldense_30/biasdense_31/kerneldense_31/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_15/lstm_cell_15/kernel%lstm_15/lstm_cell_15/recurrent_kernellstm_15/lstm_cell_15/biastotalcountAdam/dense_30/kernel/mAdam/dense_30/bias/mAdam/dense_31/kernel/mAdam/dense_31/bias/m"Adam/lstm_15/lstm_cell_15/kernel/m,Adam/lstm_15/lstm_cell_15/recurrent_kernel/m Adam/lstm_15/lstm_cell_15/bias/mAdam/dense_30/kernel/vAdam/dense_30/bias/vAdam/dense_31/kernel/vAdam/dense_31/bias/v"Adam/lstm_15/lstm_cell_15/kernel/v,Adam/lstm_15/lstm_cell_15/recurrent_kernel/v Adam/lstm_15/lstm_cell_15/bias/v*(
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
GPU 2J 8? *+
f&R$
"__inference__traced_restore_650218??
?B
?
__inference__traced_save_650124
file_prefix.
*savev2_dense_30_kernel_read_readvariableop,
(savev2_dense_30_bias_read_readvariableop.
*savev2_dense_31_kernel_read_readvariableop,
(savev2_dense_31_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop:
6savev2_lstm_15_lstm_cell_15_kernel_read_readvariableopD
@savev2_lstm_15_lstm_cell_15_recurrent_kernel_read_readvariableop8
4savev2_lstm_15_lstm_cell_15_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_30_kernel_m_read_readvariableop3
/savev2_adam_dense_30_bias_m_read_readvariableop5
1savev2_adam_dense_31_kernel_m_read_readvariableop3
/savev2_adam_dense_31_bias_m_read_readvariableopA
=savev2_adam_lstm_15_lstm_cell_15_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_15_lstm_cell_15_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_15_lstm_cell_15_bias_m_read_readvariableop5
1savev2_adam_dense_30_kernel_v_read_readvariableop3
/savev2_adam_dense_30_bias_v_read_readvariableop5
1savev2_adam_dense_31_kernel_v_read_readvariableop3
/savev2_adam_dense_31_bias_v_read_readvariableopA
=savev2_adam_lstm_15_lstm_cell_15_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_15_lstm_cell_15_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_15_lstm_cell_15_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
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
Const_1?
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
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*M
valueDBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_30_kernel_read_readvariableop(savev2_dense_30_bias_read_readvariableop*savev2_dense_31_kernel_read_readvariableop(savev2_dense_31_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop6savev2_lstm_15_lstm_cell_15_kernel_read_readvariableop@savev2_lstm_15_lstm_cell_15_recurrent_kernel_read_readvariableop4savev2_lstm_15_lstm_cell_15_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_30_kernel_m_read_readvariableop/savev2_adam_dense_30_bias_m_read_readvariableop1savev2_adam_dense_31_kernel_m_read_readvariableop/savev2_adam_dense_31_bias_m_read_readvariableop=savev2_adam_lstm_15_lstm_cell_15_kernel_m_read_readvariableopGsavev2_adam_lstm_15_lstm_cell_15_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_15_lstm_cell_15_bias_m_read_readvariableop1savev2_adam_dense_30_kernel_v_read_readvariableop/savev2_adam_dense_30_bias_v_read_readvariableop1savev2_adam_dense_31_kernel_v_read_readvariableop/savev2_adam_dense_31_bias_v_read_readvariableop=savev2_adam_lstm_15_lstm_cell_15_kernel_v_read_readvariableopGsavev2_adam_lstm_15_lstm_cell_15_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_15_lstm_cell_15_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *+
dtypes!
2	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
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

identity_1Identity_1:output:0*?
_input_shapes?
?: :	?d:d:d:: : : : : :	?:
??:?: : :	?d:d:d::	?:
??:?:	?d:d:d::	?:
??:?: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	?d: 
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
:	?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?d: 

_output_shapes
:d:$ 

_output_shapes

:d: 

_output_shapes
::%!

_output_shapes
:	?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?d: 

_output_shapes
:d:$ 

_output_shapes

:d: 

_output_shapes
::%!

_output_shapes
:	?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:

_output_shapes
: 
?
?
I__inference_sequential_15_layer_call_and_return_conditional_losses_648761

inputs!
lstm_15_648743:	?"
lstm_15_648745:
??
lstm_15_648747:	?"
dense_30_648750:	?d
dense_30_648752:d!
dense_31_648755:d
dense_31_648757:
identity?? dense_30/StatefulPartitionedCall? dense_31/StatefulPartitionedCall?lstm_15/StatefulPartitionedCall?
lstm_15/StatefulPartitionedCallStatefulPartitionedCallinputslstm_15_648743lstm_15_648745lstm_15_648747*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_15_layer_call_and_return_conditional_losses_6487102!
lstm_15/StatefulPartitionedCall?
 dense_30/StatefulPartitionedCallStatefulPartitionedCall(lstm_15/StatefulPartitionedCall:output:0dense_30_648750dense_30_648752*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_30_layer_call_and_return_conditional_losses_6484862"
 dense_30/StatefulPartitionedCall?
 dense_31/StatefulPartitionedCallStatefulPartitionedCall)dense_30/StatefulPartitionedCall:output:0dense_31_648755dense_31_648757*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_31_layer_call_and_return_conditional_losses_6485022"
 dense_31/StatefulPartitionedCall?
IdentityIdentity)dense_31/StatefulPartitionedCall:output:0!^dense_30/StatefulPartitionedCall!^dense_31/StatefulPartitionedCall ^lstm_15/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2D
 dense_30/StatefulPartitionedCall dense_30/StatefulPartitionedCall2D
 dense_31/StatefulPartitionedCall dense_31/StatefulPartitionedCall2B
lstm_15/StatefulPartitionedCalllstm_15/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_647978
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_647978___redundant_placeholder04
0while_while_cond_647978___redundant_placeholder14
0while_while_cond_647978___redundant_placeholder24
0while_while_cond_647978___redundant_placeholder3
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
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?	
?
D__inference_dense_31_layer_call_and_return_conditional_losses_648502

inputs0
matmul_readvariableop_resource:d-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?C
?
while_body_649450
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_15_matmul_readvariableop_resource_0:	?I
5while_lstm_cell_15_matmul_1_readvariableop_resource_0:
??C
4while_lstm_cell_15_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_15_matmul_readvariableop_resource:	?G
3while_lstm_cell_15_matmul_1_readvariableop_resource:
??A
2while_lstm_cell_15_biasadd_readvariableop_resource:	???)while/lstm_cell_15/BiasAdd/ReadVariableOp?(while/lstm_cell_15/MatMul/ReadVariableOp?*while/lstm_cell_15/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/lstm_cell_15/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_15_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02*
(while/lstm_cell_15/MatMul/ReadVariableOp?
while/lstm_cell_15/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_15/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/MatMul?
*while/lstm_cell_15/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_15_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02,
*while/lstm_cell_15/MatMul_1/ReadVariableOp?
while/lstm_cell_15/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/MatMul_1?
while/lstm_cell_15/addAddV2#while/lstm_cell_15/MatMul:product:0%while/lstm_cell_15/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/add?
)while/lstm_cell_15/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_15_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_15/BiasAdd/ReadVariableOp?
while/lstm_cell_15/BiasAddBiasAddwhile/lstm_cell_15/add:z:01while/lstm_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/BiasAdd?
"while/lstm_cell_15/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_15/split/split_dim?
while/lstm_cell_15/splitSplit+while/lstm_cell_15/split/split_dim:output:0#while/lstm_cell_15/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell_15/split?
while/lstm_cell_15/SigmoidSigmoid!while/lstm_cell_15/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/Sigmoid?
while/lstm_cell_15/Sigmoid_1Sigmoid!while/lstm_cell_15/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/Sigmoid_1?
while/lstm_cell_15/mulMul while/lstm_cell_15/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/mul?
while/lstm_cell_15/ReluRelu!while/lstm_cell_15/split:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/Relu?
while/lstm_cell_15/mul_1Mulwhile/lstm_cell_15/Sigmoid:y:0%while/lstm_cell_15/Relu:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/mul_1?
while/lstm_cell_15/add_1AddV2while/lstm_cell_15/mul:z:0while/lstm_cell_15/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/add_1?
while/lstm_cell_15/Sigmoid_2Sigmoid!while/lstm_cell_15/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/Sigmoid_2?
while/lstm_cell_15/Relu_1Reluwhile/lstm_cell_15/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/Relu_1?
while/lstm_cell_15/mul_2Mul while/lstm_cell_15/Sigmoid_2:y:0'while/lstm_cell_15/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_15/mul_2:z:0*
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
while/add_1?
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_15/BiasAdd/ReadVariableOp)^while/lstm_cell_15/MatMul/ReadVariableOp+^while/lstm_cell_15/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_15/BiasAdd/ReadVariableOp)^while/lstm_cell_15/MatMul/ReadVariableOp+^while/lstm_cell_15/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_15/BiasAdd/ReadVariableOp)^while/lstm_cell_15/MatMul/ReadVariableOp+^while/lstm_cell_15/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_15/BiasAdd/ReadVariableOp)^while/lstm_cell_15/MatMul/ReadVariableOp+^while/lstm_cell_15/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_15/mul_2:z:0*^while/lstm_cell_15/BiasAdd/ReadVariableOp)^while/lstm_cell_15/MatMul/ReadVariableOp+^while/lstm_cell_15/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_15/add_1:z:0*^while/lstm_cell_15/BiasAdd/ReadVariableOp)^while/lstm_cell_15/MatMul/ReadVariableOp+^while/lstm_cell_15/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_15_biasadd_readvariableop_resource4while_lstm_cell_15_biasadd_readvariableop_resource_0"l
3while_lstm_cell_15_matmul_1_readvariableop_resource5while_lstm_cell_15_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_15_matmul_readvariableop_resource3while_lstm_cell_15_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2V
)while/lstm_cell_15/BiasAdd/ReadVariableOp)while/lstm_cell_15/BiasAdd/ReadVariableOp2T
(while/lstm_cell_15/MatMul/ReadVariableOp(while/lstm_cell_15/MatMul/ReadVariableOp2X
*while/lstm_cell_15/MatMul_1/ReadVariableOp*while/lstm_cell_15/MatMul_1/ReadVariableOp: 
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_649298
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_649298___redundant_placeholder04
0while_while_cond_649298___redundant_placeholder14
0while_while_cond_649298___redundant_placeholder24
0while_while_cond_649298___redundant_placeholder3
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
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
H__inference_lstm_cell_15_layer_call_and_return_conditional_losses_647901

inputs

states
states_11
matmul_readvariableop_resource:	?4
 matmul_1_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:??????????2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:??????????2
	Sigmoid_1]
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:??????????2
mulW
ReluRelusplit:output:2*
T0*(
_output_shapes
:??????????2
Relui
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:??????????2
mul_1^
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:??????????2
add_1d
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:??????????2
	Sigmoid_2V
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:??????????2
Relu_1m
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
mul_2?
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity?

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_1?

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:?????????:??????????:??????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_namestates:PL
(
_output_shapes
:??????????
 
_user_specified_namestates
?

?
lstm_15_while_cond_648932,
(lstm_15_while_lstm_15_while_loop_counter2
.lstm_15_while_lstm_15_while_maximum_iterations
lstm_15_while_placeholder
lstm_15_while_placeholder_1
lstm_15_while_placeholder_2
lstm_15_while_placeholder_3.
*lstm_15_while_less_lstm_15_strided_slice_1D
@lstm_15_while_lstm_15_while_cond_648932___redundant_placeholder0D
@lstm_15_while_lstm_15_while_cond_648932___redundant_placeholder1D
@lstm_15_while_lstm_15_while_cond_648932___redundant_placeholder2D
@lstm_15_while_lstm_15_while_cond_648932___redundant_placeholder3
lstm_15_while_identity
?
lstm_15/while/LessLesslstm_15_while_placeholder*lstm_15_while_less_lstm_15_strided_slice_1*
T0*
_output_shapes
: 2
lstm_15/while/Lessu
lstm_15/while/IdentityIdentitylstm_15/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_15/while/Identity"9
lstm_15_while_identitylstm_15/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?[
?
C__inference_lstm_15_layer_call_and_return_conditional_losses_648710

inputs>
+lstm_cell_15_matmul_readvariableop_resource:	?A
-lstm_cell_15_matmul_1_readvariableop_resource:
??;
,lstm_cell_15_biasadd_readvariableop_resource:	?
identity??#lstm_cell_15/BiasAdd/ReadVariableOp?"lstm_cell_15/MatMul/ReadVariableOp?$lstm_cell_15/MatMul_1/ReadVariableOp?whileD
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
strided_slice/stack_2?
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
B :?2
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
B :?2
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
B :?2
zeros/packed/1?
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
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????2
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
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
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
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
"lstm_cell_15/MatMul/ReadVariableOpReadVariableOp+lstm_cell_15_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02$
"lstm_cell_15/MatMul/ReadVariableOp?
lstm_cell_15/MatMulMatMulstrided_slice_2:output:0*lstm_cell_15/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_15/MatMul?
$lstm_cell_15/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_15_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02&
$lstm_cell_15/MatMul_1/ReadVariableOp?
lstm_cell_15/MatMul_1MatMulzeros:output:0,lstm_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_15/MatMul_1?
lstm_cell_15/addAddV2lstm_cell_15/MatMul:product:0lstm_cell_15/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_15/add?
#lstm_cell_15/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_15_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_15/BiasAdd/ReadVariableOp?
lstm_cell_15/BiasAddBiasAddlstm_cell_15/add:z:0+lstm_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_15/BiasAdd~
lstm_cell_15/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_15/split/split_dim?
lstm_cell_15/splitSplit%lstm_cell_15/split/split_dim:output:0lstm_cell_15/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell_15/split?
lstm_cell_15/SigmoidSigmoidlstm_cell_15/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_15/Sigmoid?
lstm_cell_15/Sigmoid_1Sigmoidlstm_cell_15/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_15/Sigmoid_1?
lstm_cell_15/mulMullstm_cell_15/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_15/mul~
lstm_cell_15/ReluRelulstm_cell_15/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell_15/Relu?
lstm_cell_15/mul_1Mullstm_cell_15/Sigmoid:y:0lstm_cell_15/Relu:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_15/mul_1?
lstm_cell_15/add_1AddV2lstm_cell_15/mul:z:0lstm_cell_15/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_15/add_1?
lstm_cell_15/Sigmoid_2Sigmoidlstm_cell_15/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_15/Sigmoid_2}
lstm_cell_15/Relu_1Relulstm_cell_15/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_15/Relu_1?
lstm_cell_15/mul_2Mullstm_cell_15/Sigmoid_2:y:0!lstm_cell_15/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_15/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
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
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_15_matmul_readvariableop_resource-lstm_cell_15_matmul_1_readvariableop_resource,lstm_cell_15_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_648626*
condR
while_cond_648625*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
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
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0$^lstm_cell_15/BiasAdd/ReadVariableOp#^lstm_cell_15/MatMul/ReadVariableOp%^lstm_cell_15/MatMul_1/ReadVariableOp^while*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2J
#lstm_cell_15/BiasAdd/ReadVariableOp#lstm_cell_15/BiasAdd/ReadVariableOp2H
"lstm_cell_15/MatMul/ReadVariableOp"lstm_cell_15/MatMul/ReadVariableOp2L
$lstm_cell_15/MatMul_1/ReadVariableOp$lstm_cell_15/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
D__inference_dense_31_layer_call_and_return_conditional_losses_649910

inputs0
matmul_readvariableop_resource:d-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?c
?
'sequential_15_lstm_15_while_body_647583H
Dsequential_15_lstm_15_while_sequential_15_lstm_15_while_loop_counterN
Jsequential_15_lstm_15_while_sequential_15_lstm_15_while_maximum_iterations+
'sequential_15_lstm_15_while_placeholder-
)sequential_15_lstm_15_while_placeholder_1-
)sequential_15_lstm_15_while_placeholder_2-
)sequential_15_lstm_15_while_placeholder_3G
Csequential_15_lstm_15_while_sequential_15_lstm_15_strided_slice_1_0?
sequential_15_lstm_15_while_tensorarrayv2read_tensorlistgetitem_sequential_15_lstm_15_tensorarrayunstack_tensorlistfromtensor_0\
Isequential_15_lstm_15_while_lstm_cell_15_matmul_readvariableop_resource_0:	?_
Ksequential_15_lstm_15_while_lstm_cell_15_matmul_1_readvariableop_resource_0:
??Y
Jsequential_15_lstm_15_while_lstm_cell_15_biasadd_readvariableop_resource_0:	?(
$sequential_15_lstm_15_while_identity*
&sequential_15_lstm_15_while_identity_1*
&sequential_15_lstm_15_while_identity_2*
&sequential_15_lstm_15_while_identity_3*
&sequential_15_lstm_15_while_identity_4*
&sequential_15_lstm_15_while_identity_5E
Asequential_15_lstm_15_while_sequential_15_lstm_15_strided_slice_1?
}sequential_15_lstm_15_while_tensorarrayv2read_tensorlistgetitem_sequential_15_lstm_15_tensorarrayunstack_tensorlistfromtensorZ
Gsequential_15_lstm_15_while_lstm_cell_15_matmul_readvariableop_resource:	?]
Isequential_15_lstm_15_while_lstm_cell_15_matmul_1_readvariableop_resource:
??W
Hsequential_15_lstm_15_while_lstm_cell_15_biasadd_readvariableop_resource:	????sequential_15/lstm_15/while/lstm_cell_15/BiasAdd/ReadVariableOp?>sequential_15/lstm_15/while/lstm_cell_15/MatMul/ReadVariableOp?@sequential_15/lstm_15/while/lstm_cell_15/MatMul_1/ReadVariableOp?
Msequential_15/lstm_15/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2O
Msequential_15/lstm_15/while/TensorArrayV2Read/TensorListGetItem/element_shape?
?sequential_15/lstm_15/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_15_lstm_15_while_tensorarrayv2read_tensorlistgetitem_sequential_15_lstm_15_tensorarrayunstack_tensorlistfromtensor_0'sequential_15_lstm_15_while_placeholderVsequential_15/lstm_15/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02A
?sequential_15/lstm_15/while/TensorArrayV2Read/TensorListGetItem?
>sequential_15/lstm_15/while/lstm_cell_15/MatMul/ReadVariableOpReadVariableOpIsequential_15_lstm_15_while_lstm_cell_15_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02@
>sequential_15/lstm_15/while/lstm_cell_15/MatMul/ReadVariableOp?
/sequential_15/lstm_15/while/lstm_cell_15/MatMulMatMulFsequential_15/lstm_15/while/TensorArrayV2Read/TensorListGetItem:item:0Fsequential_15/lstm_15/while/lstm_cell_15/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????21
/sequential_15/lstm_15/while/lstm_cell_15/MatMul?
@sequential_15/lstm_15/while/lstm_cell_15/MatMul_1/ReadVariableOpReadVariableOpKsequential_15_lstm_15_while_lstm_cell_15_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02B
@sequential_15/lstm_15/while/lstm_cell_15/MatMul_1/ReadVariableOp?
1sequential_15/lstm_15/while/lstm_cell_15/MatMul_1MatMul)sequential_15_lstm_15_while_placeholder_2Hsequential_15/lstm_15/while/lstm_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????23
1sequential_15/lstm_15/while/lstm_cell_15/MatMul_1?
,sequential_15/lstm_15/while/lstm_cell_15/addAddV29sequential_15/lstm_15/while/lstm_cell_15/MatMul:product:0;sequential_15/lstm_15/while/lstm_cell_15/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2.
,sequential_15/lstm_15/while/lstm_cell_15/add?
?sequential_15/lstm_15/while/lstm_cell_15/BiasAdd/ReadVariableOpReadVariableOpJsequential_15_lstm_15_while_lstm_cell_15_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02A
?sequential_15/lstm_15/while/lstm_cell_15/BiasAdd/ReadVariableOp?
0sequential_15/lstm_15/while/lstm_cell_15/BiasAddBiasAdd0sequential_15/lstm_15/while/lstm_cell_15/add:z:0Gsequential_15/lstm_15/while/lstm_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????22
0sequential_15/lstm_15/while/lstm_cell_15/BiasAdd?
8sequential_15/lstm_15/while/lstm_cell_15/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2:
8sequential_15/lstm_15/while/lstm_cell_15/split/split_dim?
.sequential_15/lstm_15/while/lstm_cell_15/splitSplitAsequential_15/lstm_15/while/lstm_cell_15/split/split_dim:output:09sequential_15/lstm_15/while/lstm_cell_15/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split20
.sequential_15/lstm_15/while/lstm_cell_15/split?
0sequential_15/lstm_15/while/lstm_cell_15/SigmoidSigmoid7sequential_15/lstm_15/while/lstm_cell_15/split:output:0*
T0*(
_output_shapes
:??????????22
0sequential_15/lstm_15/while/lstm_cell_15/Sigmoid?
2sequential_15/lstm_15/while/lstm_cell_15/Sigmoid_1Sigmoid7sequential_15/lstm_15/while/lstm_cell_15/split:output:1*
T0*(
_output_shapes
:??????????24
2sequential_15/lstm_15/while/lstm_cell_15/Sigmoid_1?
,sequential_15/lstm_15/while/lstm_cell_15/mulMul6sequential_15/lstm_15/while/lstm_cell_15/Sigmoid_1:y:0)sequential_15_lstm_15_while_placeholder_3*
T0*(
_output_shapes
:??????????2.
,sequential_15/lstm_15/while/lstm_cell_15/mul?
-sequential_15/lstm_15/while/lstm_cell_15/ReluRelu7sequential_15/lstm_15/while/lstm_cell_15/split:output:2*
T0*(
_output_shapes
:??????????2/
-sequential_15/lstm_15/while/lstm_cell_15/Relu?
.sequential_15/lstm_15/while/lstm_cell_15/mul_1Mul4sequential_15/lstm_15/while/lstm_cell_15/Sigmoid:y:0;sequential_15/lstm_15/while/lstm_cell_15/Relu:activations:0*
T0*(
_output_shapes
:??????????20
.sequential_15/lstm_15/while/lstm_cell_15/mul_1?
.sequential_15/lstm_15/while/lstm_cell_15/add_1AddV20sequential_15/lstm_15/while/lstm_cell_15/mul:z:02sequential_15/lstm_15/while/lstm_cell_15/mul_1:z:0*
T0*(
_output_shapes
:??????????20
.sequential_15/lstm_15/while/lstm_cell_15/add_1?
2sequential_15/lstm_15/while/lstm_cell_15/Sigmoid_2Sigmoid7sequential_15/lstm_15/while/lstm_cell_15/split:output:3*
T0*(
_output_shapes
:??????????24
2sequential_15/lstm_15/while/lstm_cell_15/Sigmoid_2?
/sequential_15/lstm_15/while/lstm_cell_15/Relu_1Relu2sequential_15/lstm_15/while/lstm_cell_15/add_1:z:0*
T0*(
_output_shapes
:??????????21
/sequential_15/lstm_15/while/lstm_cell_15/Relu_1?
.sequential_15/lstm_15/while/lstm_cell_15/mul_2Mul6sequential_15/lstm_15/while/lstm_cell_15/Sigmoid_2:y:0=sequential_15/lstm_15/while/lstm_cell_15/Relu_1:activations:0*
T0*(
_output_shapes
:??????????20
.sequential_15/lstm_15/while/lstm_cell_15/mul_2?
@sequential_15/lstm_15/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_15_lstm_15_while_placeholder_1'sequential_15_lstm_15_while_placeholder2sequential_15/lstm_15/while/lstm_cell_15/mul_2:z:0*
_output_shapes
: *
element_dtype02B
@sequential_15/lstm_15/while/TensorArrayV2Write/TensorListSetItem?
!sequential_15/lstm_15/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_15/lstm_15/while/add/y?
sequential_15/lstm_15/while/addAddV2'sequential_15_lstm_15_while_placeholder*sequential_15/lstm_15/while/add/y:output:0*
T0*
_output_shapes
: 2!
sequential_15/lstm_15/while/add?
#sequential_15/lstm_15/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#sequential_15/lstm_15/while/add_1/y?
!sequential_15/lstm_15/while/add_1AddV2Dsequential_15_lstm_15_while_sequential_15_lstm_15_while_loop_counter,sequential_15/lstm_15/while/add_1/y:output:0*
T0*
_output_shapes
: 2#
!sequential_15/lstm_15/while/add_1?
$sequential_15/lstm_15/while/IdentityIdentity%sequential_15/lstm_15/while/add_1:z:0@^sequential_15/lstm_15/while/lstm_cell_15/BiasAdd/ReadVariableOp?^sequential_15/lstm_15/while/lstm_cell_15/MatMul/ReadVariableOpA^sequential_15/lstm_15/while/lstm_cell_15/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_15/lstm_15/while/Identity?
&sequential_15/lstm_15/while/Identity_1IdentityJsequential_15_lstm_15_while_sequential_15_lstm_15_while_maximum_iterations@^sequential_15/lstm_15/while/lstm_cell_15/BiasAdd/ReadVariableOp?^sequential_15/lstm_15/while/lstm_cell_15/MatMul/ReadVariableOpA^sequential_15/lstm_15/while/lstm_cell_15/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2(
&sequential_15/lstm_15/while/Identity_1?
&sequential_15/lstm_15/while/Identity_2Identity#sequential_15/lstm_15/while/add:z:0@^sequential_15/lstm_15/while/lstm_cell_15/BiasAdd/ReadVariableOp?^sequential_15/lstm_15/while/lstm_cell_15/MatMul/ReadVariableOpA^sequential_15/lstm_15/while/lstm_cell_15/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2(
&sequential_15/lstm_15/while/Identity_2?
&sequential_15/lstm_15/while/Identity_3IdentityPsequential_15/lstm_15/while/TensorArrayV2Write/TensorListSetItem:output_handle:0@^sequential_15/lstm_15/while/lstm_cell_15/BiasAdd/ReadVariableOp?^sequential_15/lstm_15/while/lstm_cell_15/MatMul/ReadVariableOpA^sequential_15/lstm_15/while/lstm_cell_15/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2(
&sequential_15/lstm_15/while/Identity_3?
&sequential_15/lstm_15/while/Identity_4Identity2sequential_15/lstm_15/while/lstm_cell_15/mul_2:z:0@^sequential_15/lstm_15/while/lstm_cell_15/BiasAdd/ReadVariableOp?^sequential_15/lstm_15/while/lstm_cell_15/MatMul/ReadVariableOpA^sequential_15/lstm_15/while/lstm_cell_15/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2(
&sequential_15/lstm_15/while/Identity_4?
&sequential_15/lstm_15/while/Identity_5Identity2sequential_15/lstm_15/while/lstm_cell_15/add_1:z:0@^sequential_15/lstm_15/while/lstm_cell_15/BiasAdd/ReadVariableOp?^sequential_15/lstm_15/while/lstm_cell_15/MatMul/ReadVariableOpA^sequential_15/lstm_15/while/lstm_cell_15/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2(
&sequential_15/lstm_15/while/Identity_5"U
$sequential_15_lstm_15_while_identity-sequential_15/lstm_15/while/Identity:output:0"Y
&sequential_15_lstm_15_while_identity_1/sequential_15/lstm_15/while/Identity_1:output:0"Y
&sequential_15_lstm_15_while_identity_2/sequential_15/lstm_15/while/Identity_2:output:0"Y
&sequential_15_lstm_15_while_identity_3/sequential_15/lstm_15/while/Identity_3:output:0"Y
&sequential_15_lstm_15_while_identity_4/sequential_15/lstm_15/while/Identity_4:output:0"Y
&sequential_15_lstm_15_while_identity_5/sequential_15/lstm_15/while/Identity_5:output:0"?
Hsequential_15_lstm_15_while_lstm_cell_15_biasadd_readvariableop_resourceJsequential_15_lstm_15_while_lstm_cell_15_biasadd_readvariableop_resource_0"?
Isequential_15_lstm_15_while_lstm_cell_15_matmul_1_readvariableop_resourceKsequential_15_lstm_15_while_lstm_cell_15_matmul_1_readvariableop_resource_0"?
Gsequential_15_lstm_15_while_lstm_cell_15_matmul_readvariableop_resourceIsequential_15_lstm_15_while_lstm_cell_15_matmul_readvariableop_resource_0"?
Asequential_15_lstm_15_while_sequential_15_lstm_15_strided_slice_1Csequential_15_lstm_15_while_sequential_15_lstm_15_strided_slice_1_0"?
}sequential_15_lstm_15_while_tensorarrayv2read_tensorlistgetitem_sequential_15_lstm_15_tensorarrayunstack_tensorlistfromtensorsequential_15_lstm_15_while_tensorarrayv2read_tensorlistgetitem_sequential_15_lstm_15_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2?
?sequential_15/lstm_15/while/lstm_cell_15/BiasAdd/ReadVariableOp?sequential_15/lstm_15/while/lstm_cell_15/BiasAdd/ReadVariableOp2?
>sequential_15/lstm_15/while/lstm_cell_15/MatMul/ReadVariableOp>sequential_15/lstm_15/while/lstm_cell_15/MatMul/ReadVariableOp2?
@sequential_15/lstm_15/while/lstm_cell_15/MatMul_1/ReadVariableOp@sequential_15/lstm_15/while/lstm_cell_15/MatMul_1/ReadVariableOp: 
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_649600
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_649600___redundant_placeholder04
0while_while_cond_649600___redundant_placeholder14
0while_while_cond_649600___redundant_placeholder24
0while_while_cond_649600___redundant_placeholder3
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
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?C
?
while_body_648383
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_15_matmul_readvariableop_resource_0:	?I
5while_lstm_cell_15_matmul_1_readvariableop_resource_0:
??C
4while_lstm_cell_15_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_15_matmul_readvariableop_resource:	?G
3while_lstm_cell_15_matmul_1_readvariableop_resource:
??A
2while_lstm_cell_15_biasadd_readvariableop_resource:	???)while/lstm_cell_15/BiasAdd/ReadVariableOp?(while/lstm_cell_15/MatMul/ReadVariableOp?*while/lstm_cell_15/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/lstm_cell_15/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_15_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02*
(while/lstm_cell_15/MatMul/ReadVariableOp?
while/lstm_cell_15/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_15/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/MatMul?
*while/lstm_cell_15/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_15_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02,
*while/lstm_cell_15/MatMul_1/ReadVariableOp?
while/lstm_cell_15/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/MatMul_1?
while/lstm_cell_15/addAddV2#while/lstm_cell_15/MatMul:product:0%while/lstm_cell_15/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/add?
)while/lstm_cell_15/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_15_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_15/BiasAdd/ReadVariableOp?
while/lstm_cell_15/BiasAddBiasAddwhile/lstm_cell_15/add:z:01while/lstm_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/BiasAdd?
"while/lstm_cell_15/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_15/split/split_dim?
while/lstm_cell_15/splitSplit+while/lstm_cell_15/split/split_dim:output:0#while/lstm_cell_15/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell_15/split?
while/lstm_cell_15/SigmoidSigmoid!while/lstm_cell_15/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/Sigmoid?
while/lstm_cell_15/Sigmoid_1Sigmoid!while/lstm_cell_15/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/Sigmoid_1?
while/lstm_cell_15/mulMul while/lstm_cell_15/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/mul?
while/lstm_cell_15/ReluRelu!while/lstm_cell_15/split:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/Relu?
while/lstm_cell_15/mul_1Mulwhile/lstm_cell_15/Sigmoid:y:0%while/lstm_cell_15/Relu:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/mul_1?
while/lstm_cell_15/add_1AddV2while/lstm_cell_15/mul:z:0while/lstm_cell_15/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/add_1?
while/lstm_cell_15/Sigmoid_2Sigmoid!while/lstm_cell_15/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/Sigmoid_2?
while/lstm_cell_15/Relu_1Reluwhile/lstm_cell_15/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/Relu_1?
while/lstm_cell_15/mul_2Mul while/lstm_cell_15/Sigmoid_2:y:0'while/lstm_cell_15/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_15/mul_2:z:0*
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
while/add_1?
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_15/BiasAdd/ReadVariableOp)^while/lstm_cell_15/MatMul/ReadVariableOp+^while/lstm_cell_15/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_15/BiasAdd/ReadVariableOp)^while/lstm_cell_15/MatMul/ReadVariableOp+^while/lstm_cell_15/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_15/BiasAdd/ReadVariableOp)^while/lstm_cell_15/MatMul/ReadVariableOp+^while/lstm_cell_15/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_15/BiasAdd/ReadVariableOp)^while/lstm_cell_15/MatMul/ReadVariableOp+^while/lstm_cell_15/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_15/mul_2:z:0*^while/lstm_cell_15/BiasAdd/ReadVariableOp)^while/lstm_cell_15/MatMul/ReadVariableOp+^while/lstm_cell_15/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_15/add_1:z:0*^while/lstm_cell_15/BiasAdd/ReadVariableOp)^while/lstm_cell_15/MatMul/ReadVariableOp+^while/lstm_cell_15/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_15_biasadd_readvariableop_resource4while_lstm_cell_15_biasadd_readvariableop_resource_0"l
3while_lstm_cell_15_matmul_1_readvariableop_resource5while_lstm_cell_15_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_15_matmul_readvariableop_resource3while_lstm_cell_15_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2V
)while/lstm_cell_15/BiasAdd/ReadVariableOp)while/lstm_cell_15/BiasAdd/ReadVariableOp2T
(while/lstm_cell_15/MatMul/ReadVariableOp(while/lstm_cell_15/MatMul/ReadVariableOp2X
*while/lstm_cell_15/MatMul_1/ReadVariableOp*while/lstm_cell_15/MatMul_1/ReadVariableOp: 
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?C
?
while_body_649299
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_15_matmul_readvariableop_resource_0:	?I
5while_lstm_cell_15_matmul_1_readvariableop_resource_0:
??C
4while_lstm_cell_15_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_15_matmul_readvariableop_resource:	?G
3while_lstm_cell_15_matmul_1_readvariableop_resource:
??A
2while_lstm_cell_15_biasadd_readvariableop_resource:	???)while/lstm_cell_15/BiasAdd/ReadVariableOp?(while/lstm_cell_15/MatMul/ReadVariableOp?*while/lstm_cell_15/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/lstm_cell_15/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_15_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02*
(while/lstm_cell_15/MatMul/ReadVariableOp?
while/lstm_cell_15/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_15/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/MatMul?
*while/lstm_cell_15/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_15_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02,
*while/lstm_cell_15/MatMul_1/ReadVariableOp?
while/lstm_cell_15/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/MatMul_1?
while/lstm_cell_15/addAddV2#while/lstm_cell_15/MatMul:product:0%while/lstm_cell_15/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/add?
)while/lstm_cell_15/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_15_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_15/BiasAdd/ReadVariableOp?
while/lstm_cell_15/BiasAddBiasAddwhile/lstm_cell_15/add:z:01while/lstm_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/BiasAdd?
"while/lstm_cell_15/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_15/split/split_dim?
while/lstm_cell_15/splitSplit+while/lstm_cell_15/split/split_dim:output:0#while/lstm_cell_15/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell_15/split?
while/lstm_cell_15/SigmoidSigmoid!while/lstm_cell_15/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/Sigmoid?
while/lstm_cell_15/Sigmoid_1Sigmoid!while/lstm_cell_15/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/Sigmoid_1?
while/lstm_cell_15/mulMul while/lstm_cell_15/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/mul?
while/lstm_cell_15/ReluRelu!while/lstm_cell_15/split:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/Relu?
while/lstm_cell_15/mul_1Mulwhile/lstm_cell_15/Sigmoid:y:0%while/lstm_cell_15/Relu:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/mul_1?
while/lstm_cell_15/add_1AddV2while/lstm_cell_15/mul:z:0while/lstm_cell_15/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/add_1?
while/lstm_cell_15/Sigmoid_2Sigmoid!while/lstm_cell_15/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/Sigmoid_2?
while/lstm_cell_15/Relu_1Reluwhile/lstm_cell_15/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/Relu_1?
while/lstm_cell_15/mul_2Mul while/lstm_cell_15/Sigmoid_2:y:0'while/lstm_cell_15/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_15/mul_2:z:0*
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
while/add_1?
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_15/BiasAdd/ReadVariableOp)^while/lstm_cell_15/MatMul/ReadVariableOp+^while/lstm_cell_15/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_15/BiasAdd/ReadVariableOp)^while/lstm_cell_15/MatMul/ReadVariableOp+^while/lstm_cell_15/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_15/BiasAdd/ReadVariableOp)^while/lstm_cell_15/MatMul/ReadVariableOp+^while/lstm_cell_15/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_15/BiasAdd/ReadVariableOp)^while/lstm_cell_15/MatMul/ReadVariableOp+^while/lstm_cell_15/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_15/mul_2:z:0*^while/lstm_cell_15/BiasAdd/ReadVariableOp)^while/lstm_cell_15/MatMul/ReadVariableOp+^while/lstm_cell_15/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_15/add_1:z:0*^while/lstm_cell_15/BiasAdd/ReadVariableOp)^while/lstm_cell_15/MatMul/ReadVariableOp+^while/lstm_cell_15/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_15_biasadd_readvariableop_resource4while_lstm_cell_15_biasadd_readvariableop_resource_0"l
3while_lstm_cell_15_matmul_1_readvariableop_resource5while_lstm_cell_15_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_15_matmul_readvariableop_resource3while_lstm_cell_15_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2V
)while/lstm_cell_15/BiasAdd/ReadVariableOp)while/lstm_cell_15/BiasAdd/ReadVariableOp2T
(while/lstm_cell_15/MatMul/ReadVariableOp(while/lstm_cell_15/MatMul/ReadVariableOp2X
*while/lstm_cell_15/MatMul_1/ReadVariableOp*while/lstm_cell_15/MatMul_1/ReadVariableOp: 
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?E
?
C__inference_lstm_15_layer_call_and_return_conditional_losses_647838

inputs&
lstm_cell_15_647756:	?'
lstm_cell_15_647758:
??"
lstm_cell_15_647760:	?
identity??$lstm_cell_15/StatefulPartitionedCall?whileD
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
strided_slice/stack_2?
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
B :?2
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
B :?2
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
B :?2
zeros/packed/1?
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
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
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
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
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
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
$lstm_cell_15/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_15_647756lstm_cell_15_647758lstm_cell_15_647760*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_15_layer_call_and_return_conditional_losses_6477552&
$lstm_cell_15/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
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
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_15_647756lstm_cell_15_647758lstm_cell_15_647760*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_647769*
condR
while_cond_647768*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
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
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0%^lstm_cell_15/StatefulPartitionedCall^while*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_15/StatefulPartitionedCall$lstm_cell_15/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
I__inference_sequential_15_layer_call_and_return_conditional_losses_648839
lstm_15_input!
lstm_15_648821:	?"
lstm_15_648823:
??
lstm_15_648825:	?"
dense_30_648828:	?d
dense_30_648830:d!
dense_31_648833:d
dense_31_648835:
identity?? dense_30/StatefulPartitionedCall? dense_31/StatefulPartitionedCall?lstm_15/StatefulPartitionedCall?
lstm_15/StatefulPartitionedCallStatefulPartitionedCalllstm_15_inputlstm_15_648821lstm_15_648823lstm_15_648825*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_15_layer_call_and_return_conditional_losses_6487102!
lstm_15/StatefulPartitionedCall?
 dense_30/StatefulPartitionedCallStatefulPartitionedCall(lstm_15/StatefulPartitionedCall:output:0dense_30_648828dense_30_648830*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_30_layer_call_and_return_conditional_losses_6484862"
 dense_30/StatefulPartitionedCall?
 dense_31/StatefulPartitionedCallStatefulPartitionedCall)dense_30/StatefulPartitionedCall:output:0dense_31_648833dense_31_648835*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_31_layer_call_and_return_conditional_losses_6485022"
 dense_31/StatefulPartitionedCall?
IdentityIdentity)dense_31/StatefulPartitionedCall:output:0!^dense_30/StatefulPartitionedCall!^dense_31/StatefulPartitionedCall ^lstm_15/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2D
 dense_30/StatefulPartitionedCall dense_30/StatefulPartitionedCall2D
 dense_31/StatefulPartitionedCall dense_31/StatefulPartitionedCall2B
lstm_15/StatefulPartitionedCalllstm_15/StatefulPartitionedCall:Z V
+
_output_shapes
:?????????
'
_user_specified_namelstm_15_input
?	
?
.__inference_sequential_15_layer_call_fn_649232

inputs
unknown:	?
	unknown_0:
??
	unknown_1:	?
	unknown_2:	?d
	unknown_3:d
	unknown_4:d
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_15_layer_call_and_return_conditional_losses_6487612
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?&
?
while_body_647769
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_15_647793_0:	?/
while_lstm_cell_15_647795_0:
??*
while_lstm_cell_15_647797_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_15_647793:	?-
while_lstm_cell_15_647795:
??(
while_lstm_cell_15_647797:	???*while/lstm_cell_15/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
*while/lstm_cell_15/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_15_647793_0while_lstm_cell_15_647795_0while_lstm_cell_15_647797_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_15_layer_call_and_return_conditional_losses_6477552,
*while/lstm_cell_15/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_15/StatefulPartitionedCall:output:0*
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
while/add_1?
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_15/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_15/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_15/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_15/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity3while/lstm_cell_15/StatefulPartitionedCall:output:1+^while/lstm_cell_15/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identity3while/lstm_cell_15/StatefulPartitionedCall:output:2+^while/lstm_cell_15/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_15_647793while_lstm_cell_15_647793_0"8
while_lstm_cell_15_647795while_lstm_cell_15_647795_0"8
while_lstm_cell_15_647797while_lstm_cell_15_647797_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2X
*while/lstm_cell_15/StatefulPartitionedCall*while/lstm_cell_15/StatefulPartitionedCall: 
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
)__inference_dense_31_layer_call_fn_649919

inputs
unknown:d
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_31_layer_call_and_return_conditional_losses_6485022
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?[
?
C__inference_lstm_15_layer_call_and_return_conditional_losses_649383
inputs_0>
+lstm_cell_15_matmul_readvariableop_resource:	?A
-lstm_cell_15_matmul_1_readvariableop_resource:
??;
,lstm_cell_15_biasadd_readvariableop_resource:	?
identity??#lstm_cell_15/BiasAdd/ReadVariableOp?"lstm_cell_15/MatMul/ReadVariableOp?$lstm_cell_15/MatMul_1/ReadVariableOp?whileF
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
strided_slice/stack_2?
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
B :?2
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
B :?2
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
B :?2
zeros/packed/1?
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
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
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
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
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
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
"lstm_cell_15/MatMul/ReadVariableOpReadVariableOp+lstm_cell_15_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02$
"lstm_cell_15/MatMul/ReadVariableOp?
lstm_cell_15/MatMulMatMulstrided_slice_2:output:0*lstm_cell_15/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_15/MatMul?
$lstm_cell_15/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_15_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02&
$lstm_cell_15/MatMul_1/ReadVariableOp?
lstm_cell_15/MatMul_1MatMulzeros:output:0,lstm_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_15/MatMul_1?
lstm_cell_15/addAddV2lstm_cell_15/MatMul:product:0lstm_cell_15/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_15/add?
#lstm_cell_15/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_15_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_15/BiasAdd/ReadVariableOp?
lstm_cell_15/BiasAddBiasAddlstm_cell_15/add:z:0+lstm_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_15/BiasAdd~
lstm_cell_15/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_15/split/split_dim?
lstm_cell_15/splitSplit%lstm_cell_15/split/split_dim:output:0lstm_cell_15/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell_15/split?
lstm_cell_15/SigmoidSigmoidlstm_cell_15/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_15/Sigmoid?
lstm_cell_15/Sigmoid_1Sigmoidlstm_cell_15/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_15/Sigmoid_1?
lstm_cell_15/mulMullstm_cell_15/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_15/mul~
lstm_cell_15/ReluRelulstm_cell_15/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell_15/Relu?
lstm_cell_15/mul_1Mullstm_cell_15/Sigmoid:y:0lstm_cell_15/Relu:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_15/mul_1?
lstm_cell_15/add_1AddV2lstm_cell_15/mul:z:0lstm_cell_15/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_15/add_1?
lstm_cell_15/Sigmoid_2Sigmoidlstm_cell_15/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_15/Sigmoid_2}
lstm_cell_15/Relu_1Relulstm_cell_15/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_15/Relu_1?
lstm_cell_15/mul_2Mullstm_cell_15/Sigmoid_2:y:0!lstm_cell_15/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_15/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
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
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_15_matmul_readvariableop_resource-lstm_cell_15_matmul_1_readvariableop_resource,lstm_cell_15_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_649299*
condR
while_cond_649298*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
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
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0$^lstm_cell_15/BiasAdd/ReadVariableOp#^lstm_cell_15/MatMul/ReadVariableOp%^lstm_cell_15/MatMul_1/ReadVariableOp^while*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2J
#lstm_cell_15/BiasAdd/ReadVariableOp#lstm_cell_15/BiasAdd/ReadVariableOp2H
"lstm_cell_15/MatMul/ReadVariableOp"lstm_cell_15/MatMul/ReadVariableOp2L
$lstm_cell_15/MatMul_1/ReadVariableOp$lstm_cell_15/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?C
?
while_body_649601
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_15_matmul_readvariableop_resource_0:	?I
5while_lstm_cell_15_matmul_1_readvariableop_resource_0:
??C
4while_lstm_cell_15_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_15_matmul_readvariableop_resource:	?G
3while_lstm_cell_15_matmul_1_readvariableop_resource:
??A
2while_lstm_cell_15_biasadd_readvariableop_resource:	???)while/lstm_cell_15/BiasAdd/ReadVariableOp?(while/lstm_cell_15/MatMul/ReadVariableOp?*while/lstm_cell_15/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/lstm_cell_15/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_15_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02*
(while/lstm_cell_15/MatMul/ReadVariableOp?
while/lstm_cell_15/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_15/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/MatMul?
*while/lstm_cell_15/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_15_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02,
*while/lstm_cell_15/MatMul_1/ReadVariableOp?
while/lstm_cell_15/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/MatMul_1?
while/lstm_cell_15/addAddV2#while/lstm_cell_15/MatMul:product:0%while/lstm_cell_15/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/add?
)while/lstm_cell_15/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_15_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_15/BiasAdd/ReadVariableOp?
while/lstm_cell_15/BiasAddBiasAddwhile/lstm_cell_15/add:z:01while/lstm_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/BiasAdd?
"while/lstm_cell_15/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_15/split/split_dim?
while/lstm_cell_15/splitSplit+while/lstm_cell_15/split/split_dim:output:0#while/lstm_cell_15/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell_15/split?
while/lstm_cell_15/SigmoidSigmoid!while/lstm_cell_15/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/Sigmoid?
while/lstm_cell_15/Sigmoid_1Sigmoid!while/lstm_cell_15/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/Sigmoid_1?
while/lstm_cell_15/mulMul while/lstm_cell_15/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/mul?
while/lstm_cell_15/ReluRelu!while/lstm_cell_15/split:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/Relu?
while/lstm_cell_15/mul_1Mulwhile/lstm_cell_15/Sigmoid:y:0%while/lstm_cell_15/Relu:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/mul_1?
while/lstm_cell_15/add_1AddV2while/lstm_cell_15/mul:z:0while/lstm_cell_15/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/add_1?
while/lstm_cell_15/Sigmoid_2Sigmoid!while/lstm_cell_15/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/Sigmoid_2?
while/lstm_cell_15/Relu_1Reluwhile/lstm_cell_15/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/Relu_1?
while/lstm_cell_15/mul_2Mul while/lstm_cell_15/Sigmoid_2:y:0'while/lstm_cell_15/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_15/mul_2:z:0*
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
while/add_1?
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_15/BiasAdd/ReadVariableOp)^while/lstm_cell_15/MatMul/ReadVariableOp+^while/lstm_cell_15/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_15/BiasAdd/ReadVariableOp)^while/lstm_cell_15/MatMul/ReadVariableOp+^while/lstm_cell_15/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_15/BiasAdd/ReadVariableOp)^while/lstm_cell_15/MatMul/ReadVariableOp+^while/lstm_cell_15/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_15/BiasAdd/ReadVariableOp)^while/lstm_cell_15/MatMul/ReadVariableOp+^while/lstm_cell_15/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_15/mul_2:z:0*^while/lstm_cell_15/BiasAdd/ReadVariableOp)^while/lstm_cell_15/MatMul/ReadVariableOp+^while/lstm_cell_15/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_15/add_1:z:0*^while/lstm_cell_15/BiasAdd/ReadVariableOp)^while/lstm_cell_15/MatMul/ReadVariableOp+^while/lstm_cell_15/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_15_biasadd_readvariableop_resource4while_lstm_cell_15_biasadd_readvariableop_resource_0"l
3while_lstm_cell_15_matmul_1_readvariableop_resource5while_lstm_cell_15_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_15_matmul_readvariableop_resource3while_lstm_cell_15_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2V
)while/lstm_cell_15/BiasAdd/ReadVariableOp)while/lstm_cell_15/BiasAdd/ReadVariableOp2T
(while/lstm_cell_15/MatMul/ReadVariableOp(while/lstm_cell_15/MatMul/ReadVariableOp2X
*while/lstm_cell_15/MatMul_1/ReadVariableOp*while/lstm_cell_15/MatMul_1/ReadVariableOp: 
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
-__inference_lstm_cell_15_layer_call_fn_650000

inputs
states_0
states_1
unknown:	?
	unknown_0:
??
	unknown_1:	?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_15_layer_call_and_return_conditional_losses_6477552
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:?????????:??????????:??????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/1
?
?
H__inference_lstm_cell_15_layer_call_and_return_conditional_losses_649951

inputs
states_0
states_11
matmul_readvariableop_resource:	?4
 matmul_1_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:??????????2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:??????????2
	Sigmoid_1]
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:??????????2
mulW
ReluRelusplit:output:2*
T0*(
_output_shapes
:??????????2
Relui
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:??????????2
mul_1^
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:??????????2
add_1d
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:??????????2
	Sigmoid_2V
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:??????????2
Relu_1m
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
mul_2?
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity?

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_1?

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:?????????:??????????:??????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/1
?[
?
C__inference_lstm_15_layer_call_and_return_conditional_losses_649836

inputs>
+lstm_cell_15_matmul_readvariableop_resource:	?A
-lstm_cell_15_matmul_1_readvariableop_resource:
??;
,lstm_cell_15_biasadd_readvariableop_resource:	?
identity??#lstm_cell_15/BiasAdd/ReadVariableOp?"lstm_cell_15/MatMul/ReadVariableOp?$lstm_cell_15/MatMul_1/ReadVariableOp?whileD
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
strided_slice/stack_2?
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
B :?2
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
B :?2
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
B :?2
zeros/packed/1?
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
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????2
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
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
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
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
"lstm_cell_15/MatMul/ReadVariableOpReadVariableOp+lstm_cell_15_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02$
"lstm_cell_15/MatMul/ReadVariableOp?
lstm_cell_15/MatMulMatMulstrided_slice_2:output:0*lstm_cell_15/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_15/MatMul?
$lstm_cell_15/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_15_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02&
$lstm_cell_15/MatMul_1/ReadVariableOp?
lstm_cell_15/MatMul_1MatMulzeros:output:0,lstm_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_15/MatMul_1?
lstm_cell_15/addAddV2lstm_cell_15/MatMul:product:0lstm_cell_15/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_15/add?
#lstm_cell_15/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_15_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_15/BiasAdd/ReadVariableOp?
lstm_cell_15/BiasAddBiasAddlstm_cell_15/add:z:0+lstm_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_15/BiasAdd~
lstm_cell_15/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_15/split/split_dim?
lstm_cell_15/splitSplit%lstm_cell_15/split/split_dim:output:0lstm_cell_15/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell_15/split?
lstm_cell_15/SigmoidSigmoidlstm_cell_15/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_15/Sigmoid?
lstm_cell_15/Sigmoid_1Sigmoidlstm_cell_15/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_15/Sigmoid_1?
lstm_cell_15/mulMullstm_cell_15/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_15/mul~
lstm_cell_15/ReluRelulstm_cell_15/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell_15/Relu?
lstm_cell_15/mul_1Mullstm_cell_15/Sigmoid:y:0lstm_cell_15/Relu:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_15/mul_1?
lstm_cell_15/add_1AddV2lstm_cell_15/mul:z:0lstm_cell_15/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_15/add_1?
lstm_cell_15/Sigmoid_2Sigmoidlstm_cell_15/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_15/Sigmoid_2}
lstm_cell_15/Relu_1Relulstm_cell_15/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_15/Relu_1?
lstm_cell_15/mul_2Mullstm_cell_15/Sigmoid_2:y:0!lstm_cell_15/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_15/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
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
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_15_matmul_readvariableop_resource-lstm_cell_15_matmul_1_readvariableop_resource,lstm_cell_15_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_649752*
condR
while_cond_649751*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
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
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0$^lstm_cell_15/BiasAdd/ReadVariableOp#^lstm_cell_15/MatMul/ReadVariableOp%^lstm_cell_15/MatMul_1/ReadVariableOp^while*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2J
#lstm_cell_15/BiasAdd/ReadVariableOp#lstm_cell_15/BiasAdd/ReadVariableOp2H
"lstm_cell_15/MatMul/ReadVariableOp"lstm_cell_15/MatMul/ReadVariableOp2L
$lstm_cell_15/MatMul_1/ReadVariableOp$lstm_cell_15/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?C
?
while_body_649752
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_15_matmul_readvariableop_resource_0:	?I
5while_lstm_cell_15_matmul_1_readvariableop_resource_0:
??C
4while_lstm_cell_15_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_15_matmul_readvariableop_resource:	?G
3while_lstm_cell_15_matmul_1_readvariableop_resource:
??A
2while_lstm_cell_15_biasadd_readvariableop_resource:	???)while/lstm_cell_15/BiasAdd/ReadVariableOp?(while/lstm_cell_15/MatMul/ReadVariableOp?*while/lstm_cell_15/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/lstm_cell_15/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_15_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02*
(while/lstm_cell_15/MatMul/ReadVariableOp?
while/lstm_cell_15/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_15/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/MatMul?
*while/lstm_cell_15/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_15_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02,
*while/lstm_cell_15/MatMul_1/ReadVariableOp?
while/lstm_cell_15/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/MatMul_1?
while/lstm_cell_15/addAddV2#while/lstm_cell_15/MatMul:product:0%while/lstm_cell_15/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/add?
)while/lstm_cell_15/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_15_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_15/BiasAdd/ReadVariableOp?
while/lstm_cell_15/BiasAddBiasAddwhile/lstm_cell_15/add:z:01while/lstm_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/BiasAdd?
"while/lstm_cell_15/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_15/split/split_dim?
while/lstm_cell_15/splitSplit+while/lstm_cell_15/split/split_dim:output:0#while/lstm_cell_15/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell_15/split?
while/lstm_cell_15/SigmoidSigmoid!while/lstm_cell_15/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/Sigmoid?
while/lstm_cell_15/Sigmoid_1Sigmoid!while/lstm_cell_15/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/Sigmoid_1?
while/lstm_cell_15/mulMul while/lstm_cell_15/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/mul?
while/lstm_cell_15/ReluRelu!while/lstm_cell_15/split:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/Relu?
while/lstm_cell_15/mul_1Mulwhile/lstm_cell_15/Sigmoid:y:0%while/lstm_cell_15/Relu:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/mul_1?
while/lstm_cell_15/add_1AddV2while/lstm_cell_15/mul:z:0while/lstm_cell_15/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/add_1?
while/lstm_cell_15/Sigmoid_2Sigmoid!while/lstm_cell_15/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/Sigmoid_2?
while/lstm_cell_15/Relu_1Reluwhile/lstm_cell_15/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/Relu_1?
while/lstm_cell_15/mul_2Mul while/lstm_cell_15/Sigmoid_2:y:0'while/lstm_cell_15/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_15/mul_2:z:0*
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
while/add_1?
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_15/BiasAdd/ReadVariableOp)^while/lstm_cell_15/MatMul/ReadVariableOp+^while/lstm_cell_15/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_15/BiasAdd/ReadVariableOp)^while/lstm_cell_15/MatMul/ReadVariableOp+^while/lstm_cell_15/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_15/BiasAdd/ReadVariableOp)^while/lstm_cell_15/MatMul/ReadVariableOp+^while/lstm_cell_15/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_15/BiasAdd/ReadVariableOp)^while/lstm_cell_15/MatMul/ReadVariableOp+^while/lstm_cell_15/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_15/mul_2:z:0*^while/lstm_cell_15/BiasAdd/ReadVariableOp)^while/lstm_cell_15/MatMul/ReadVariableOp+^while/lstm_cell_15/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_15/add_1:z:0*^while/lstm_cell_15/BiasAdd/ReadVariableOp)^while/lstm_cell_15/MatMul/ReadVariableOp+^while/lstm_cell_15/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_15_biasadd_readvariableop_resource4while_lstm_cell_15_biasadd_readvariableop_resource_0"l
3while_lstm_cell_15_matmul_1_readvariableop_resource5while_lstm_cell_15_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_15_matmul_readvariableop_resource3while_lstm_cell_15_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2V
)while/lstm_cell_15/BiasAdd/ReadVariableOp)while/lstm_cell_15/BiasAdd/ReadVariableOp2T
(while/lstm_cell_15/MatMul/ReadVariableOp(while/lstm_cell_15/MatMul/ReadVariableOp2X
*while/lstm_cell_15/MatMul_1/ReadVariableOp*while/lstm_cell_15/MatMul_1/ReadVariableOp: 
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?{
?
I__inference_sequential_15_layer_call_and_return_conditional_losses_649030

inputsF
3lstm_15_lstm_cell_15_matmul_readvariableop_resource:	?I
5lstm_15_lstm_cell_15_matmul_1_readvariableop_resource:
??C
4lstm_15_lstm_cell_15_biasadd_readvariableop_resource:	?:
'dense_30_matmul_readvariableop_resource:	?d6
(dense_30_biasadd_readvariableop_resource:d9
'dense_31_matmul_readvariableop_resource:d6
(dense_31_biasadd_readvariableop_resource:
identity??dense_30/BiasAdd/ReadVariableOp?dense_30/MatMul/ReadVariableOp?dense_31/BiasAdd/ReadVariableOp?dense_31/MatMul/ReadVariableOp?+lstm_15/lstm_cell_15/BiasAdd/ReadVariableOp?*lstm_15/lstm_cell_15/MatMul/ReadVariableOp?,lstm_15/lstm_cell_15/MatMul_1/ReadVariableOp?lstm_15/whileT
lstm_15/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_15/Shape?
lstm_15/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_15/strided_slice/stack?
lstm_15/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_15/strided_slice/stack_1?
lstm_15/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_15/strided_slice/stack_2?
lstm_15/strided_sliceStridedSlicelstm_15/Shape:output:0$lstm_15/strided_slice/stack:output:0&lstm_15/strided_slice/stack_1:output:0&lstm_15/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_15/strided_slicem
lstm_15/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_15/zeros/mul/y?
lstm_15/zeros/mulMullstm_15/strided_slice:output:0lstm_15/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_15/zeros/mulo
lstm_15/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_15/zeros/Less/y?
lstm_15/zeros/LessLesslstm_15/zeros/mul:z:0lstm_15/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_15/zeros/Lesss
lstm_15/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
lstm_15/zeros/packed/1?
lstm_15/zeros/packedPacklstm_15/strided_slice:output:0lstm_15/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_15/zeros/packedo
lstm_15/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_15/zeros/Const?
lstm_15/zerosFilllstm_15/zeros/packed:output:0lstm_15/zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_15/zerosq
lstm_15/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_15/zeros_1/mul/y?
lstm_15/zeros_1/mulMullstm_15/strided_slice:output:0lstm_15/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_15/zeros_1/muls
lstm_15/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_15/zeros_1/Less/y?
lstm_15/zeros_1/LessLesslstm_15/zeros_1/mul:z:0lstm_15/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_15/zeros_1/Lessw
lstm_15/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
lstm_15/zeros_1/packed/1?
lstm_15/zeros_1/packedPacklstm_15/strided_slice:output:0!lstm_15/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_15/zeros_1/packeds
lstm_15/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_15/zeros_1/Const?
lstm_15/zeros_1Filllstm_15/zeros_1/packed:output:0lstm_15/zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_15/zeros_1?
lstm_15/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_15/transpose/perm?
lstm_15/transpose	Transposeinputslstm_15/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2
lstm_15/transposeg
lstm_15/Shape_1Shapelstm_15/transpose:y:0*
T0*
_output_shapes
:2
lstm_15/Shape_1?
lstm_15/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_15/strided_slice_1/stack?
lstm_15/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_15/strided_slice_1/stack_1?
lstm_15/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_15/strided_slice_1/stack_2?
lstm_15/strided_slice_1StridedSlicelstm_15/Shape_1:output:0&lstm_15/strided_slice_1/stack:output:0(lstm_15/strided_slice_1/stack_1:output:0(lstm_15/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_15/strided_slice_1?
#lstm_15/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2%
#lstm_15/TensorArrayV2/element_shape?
lstm_15/TensorArrayV2TensorListReserve,lstm_15/TensorArrayV2/element_shape:output:0 lstm_15/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_15/TensorArrayV2?
=lstm_15/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2?
=lstm_15/TensorArrayUnstack/TensorListFromTensor/element_shape?
/lstm_15/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_15/transpose:y:0Flstm_15/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_15/TensorArrayUnstack/TensorListFromTensor?
lstm_15/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_15/strided_slice_2/stack?
lstm_15/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_15/strided_slice_2/stack_1?
lstm_15/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_15/strided_slice_2/stack_2?
lstm_15/strided_slice_2StridedSlicelstm_15/transpose:y:0&lstm_15/strided_slice_2/stack:output:0(lstm_15/strided_slice_2/stack_1:output:0(lstm_15/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
lstm_15/strided_slice_2?
*lstm_15/lstm_cell_15/MatMul/ReadVariableOpReadVariableOp3lstm_15_lstm_cell_15_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02,
*lstm_15/lstm_cell_15/MatMul/ReadVariableOp?
lstm_15/lstm_cell_15/MatMulMatMul lstm_15/strided_slice_2:output:02lstm_15/lstm_cell_15/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_15/lstm_cell_15/MatMul?
,lstm_15/lstm_cell_15/MatMul_1/ReadVariableOpReadVariableOp5lstm_15_lstm_cell_15_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02.
,lstm_15/lstm_cell_15/MatMul_1/ReadVariableOp?
lstm_15/lstm_cell_15/MatMul_1MatMullstm_15/zeros:output:04lstm_15/lstm_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_15/lstm_cell_15/MatMul_1?
lstm_15/lstm_cell_15/addAddV2%lstm_15/lstm_cell_15/MatMul:product:0'lstm_15/lstm_cell_15/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_15/lstm_cell_15/add?
+lstm_15/lstm_cell_15/BiasAdd/ReadVariableOpReadVariableOp4lstm_15_lstm_cell_15_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+lstm_15/lstm_cell_15/BiasAdd/ReadVariableOp?
lstm_15/lstm_cell_15/BiasAddBiasAddlstm_15/lstm_cell_15/add:z:03lstm_15/lstm_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_15/lstm_cell_15/BiasAdd?
$lstm_15/lstm_cell_15/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_15/lstm_cell_15/split/split_dim?
lstm_15/lstm_cell_15/splitSplit-lstm_15/lstm_cell_15/split/split_dim:output:0%lstm_15/lstm_cell_15/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_15/lstm_cell_15/split?
lstm_15/lstm_cell_15/SigmoidSigmoid#lstm_15/lstm_cell_15/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_15/lstm_cell_15/Sigmoid?
lstm_15/lstm_cell_15/Sigmoid_1Sigmoid#lstm_15/lstm_cell_15/split:output:1*
T0*(
_output_shapes
:??????????2 
lstm_15/lstm_cell_15/Sigmoid_1?
lstm_15/lstm_cell_15/mulMul"lstm_15/lstm_cell_15/Sigmoid_1:y:0lstm_15/zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_15/lstm_cell_15/mul?
lstm_15/lstm_cell_15/ReluRelu#lstm_15/lstm_cell_15/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_15/lstm_cell_15/Relu?
lstm_15/lstm_cell_15/mul_1Mul lstm_15/lstm_cell_15/Sigmoid:y:0'lstm_15/lstm_cell_15/Relu:activations:0*
T0*(
_output_shapes
:??????????2
lstm_15/lstm_cell_15/mul_1?
lstm_15/lstm_cell_15/add_1AddV2lstm_15/lstm_cell_15/mul:z:0lstm_15/lstm_cell_15/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_15/lstm_cell_15/add_1?
lstm_15/lstm_cell_15/Sigmoid_2Sigmoid#lstm_15/lstm_cell_15/split:output:3*
T0*(
_output_shapes
:??????????2 
lstm_15/lstm_cell_15/Sigmoid_2?
lstm_15/lstm_cell_15/Relu_1Relulstm_15/lstm_cell_15/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_15/lstm_cell_15/Relu_1?
lstm_15/lstm_cell_15/mul_2Mul"lstm_15/lstm_cell_15/Sigmoid_2:y:0)lstm_15/lstm_cell_15/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
lstm_15/lstm_cell_15/mul_2?
%lstm_15/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2'
%lstm_15/TensorArrayV2_1/element_shape?
lstm_15/TensorArrayV2_1TensorListReserve.lstm_15/TensorArrayV2_1/element_shape:output:0 lstm_15/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_15/TensorArrayV2_1^
lstm_15/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_15/time?
 lstm_15/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 lstm_15/while/maximum_iterationsz
lstm_15/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_15/while/loop_counter?
lstm_15/whileWhile#lstm_15/while/loop_counter:output:0)lstm_15/while/maximum_iterations:output:0lstm_15/time:output:0 lstm_15/TensorArrayV2_1:handle:0lstm_15/zeros:output:0lstm_15/zeros_1:output:0 lstm_15/strided_slice_1:output:0?lstm_15/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_15_lstm_cell_15_matmul_readvariableop_resource5lstm_15_lstm_cell_15_matmul_1_readvariableop_resource4lstm_15_lstm_cell_15_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*%
bodyR
lstm_15_while_body_648933*%
condR
lstm_15_while_cond_648932*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
lstm_15/while?
8lstm_15/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2:
8lstm_15/TensorArrayV2Stack/TensorListStack/element_shape?
*lstm_15/TensorArrayV2Stack/TensorListStackTensorListStacklstm_15/while:output:3Alstm_15/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02,
*lstm_15/TensorArrayV2Stack/TensorListStack?
lstm_15/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm_15/strided_slice_3/stack?
lstm_15/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_15/strided_slice_3/stack_1?
lstm_15/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_15/strided_slice_3/stack_2?
lstm_15/strided_slice_3StridedSlice3lstm_15/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_15/strided_slice_3/stack:output:0(lstm_15/strided_slice_3/stack_1:output:0(lstm_15/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
lstm_15/strided_slice_3?
lstm_15/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_15/transpose_1/perm?
lstm_15/transpose_1	Transpose3lstm_15/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_15/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
lstm_15/transpose_1v
lstm_15/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_15/runtime?
dense_30/MatMul/ReadVariableOpReadVariableOp'dense_30_matmul_readvariableop_resource*
_output_shapes
:	?d*
dtype02 
dense_30/MatMul/ReadVariableOp?
dense_30/MatMulMatMul lstm_15/strided_slice_3:output:0&dense_30/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_30/MatMul?
dense_30/BiasAdd/ReadVariableOpReadVariableOp(dense_30_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02!
dense_30/BiasAdd/ReadVariableOp?
dense_30/BiasAddBiasAdddense_30/MatMul:product:0'dense_30/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_30/BiasAdds
dense_30/ReluReludense_30/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
dense_30/Relu?
dense_31/MatMul/ReadVariableOpReadVariableOp'dense_31_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02 
dense_31/MatMul/ReadVariableOp?
dense_31/MatMulMatMuldense_30/Relu:activations:0&dense_31/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_31/MatMul?
dense_31/BiasAdd/ReadVariableOpReadVariableOp(dense_31_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_31/BiasAdd/ReadVariableOp?
dense_31/BiasAddBiasAdddense_31/MatMul:product:0'dense_31/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_31/BiasAdd?
IdentityIdentitydense_31/BiasAdd:output:0 ^dense_30/BiasAdd/ReadVariableOp^dense_30/MatMul/ReadVariableOp ^dense_31/BiasAdd/ReadVariableOp^dense_31/MatMul/ReadVariableOp,^lstm_15/lstm_cell_15/BiasAdd/ReadVariableOp+^lstm_15/lstm_cell_15/MatMul/ReadVariableOp-^lstm_15/lstm_cell_15/MatMul_1/ReadVariableOp^lstm_15/while*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2B
dense_30/BiasAdd/ReadVariableOpdense_30/BiasAdd/ReadVariableOp2@
dense_30/MatMul/ReadVariableOpdense_30/MatMul/ReadVariableOp2B
dense_31/BiasAdd/ReadVariableOpdense_31/BiasAdd/ReadVariableOp2@
dense_31/MatMul/ReadVariableOpdense_31/MatMul/ReadVariableOp2Z
+lstm_15/lstm_cell_15/BiasAdd/ReadVariableOp+lstm_15/lstm_cell_15/BiasAdd/ReadVariableOp2X
*lstm_15/lstm_cell_15/MatMul/ReadVariableOp*lstm_15/lstm_cell_15/MatMul/ReadVariableOp2\
,lstm_15/lstm_cell_15/MatMul_1/ReadVariableOp,lstm_15/lstm_cell_15/MatMul_1/ReadVariableOp2
lstm_15/whilelstm_15/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
H__inference_lstm_cell_15_layer_call_and_return_conditional_losses_649983

inputs
states_0
states_11
matmul_readvariableop_resource:	?4
 matmul_1_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:??????????2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:??????????2
	Sigmoid_1]
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:??????????2
mulW
ReluRelusplit:output:2*
T0*(
_output_shapes
:??????????2
Relui
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:??????????2
mul_1^
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:??????????2
add_1d
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:??????????2
	Sigmoid_2V
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:??????????2
Relu_1m
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
mul_2?
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity?

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_1?

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:?????????:??????????:??????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/1
?{
?
I__inference_sequential_15_layer_call_and_return_conditional_losses_649194

inputsF
3lstm_15_lstm_cell_15_matmul_readvariableop_resource:	?I
5lstm_15_lstm_cell_15_matmul_1_readvariableop_resource:
??C
4lstm_15_lstm_cell_15_biasadd_readvariableop_resource:	?:
'dense_30_matmul_readvariableop_resource:	?d6
(dense_30_biasadd_readvariableop_resource:d9
'dense_31_matmul_readvariableop_resource:d6
(dense_31_biasadd_readvariableop_resource:
identity??dense_30/BiasAdd/ReadVariableOp?dense_30/MatMul/ReadVariableOp?dense_31/BiasAdd/ReadVariableOp?dense_31/MatMul/ReadVariableOp?+lstm_15/lstm_cell_15/BiasAdd/ReadVariableOp?*lstm_15/lstm_cell_15/MatMul/ReadVariableOp?,lstm_15/lstm_cell_15/MatMul_1/ReadVariableOp?lstm_15/whileT
lstm_15/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_15/Shape?
lstm_15/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_15/strided_slice/stack?
lstm_15/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_15/strided_slice/stack_1?
lstm_15/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_15/strided_slice/stack_2?
lstm_15/strided_sliceStridedSlicelstm_15/Shape:output:0$lstm_15/strided_slice/stack:output:0&lstm_15/strided_slice/stack_1:output:0&lstm_15/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_15/strided_slicem
lstm_15/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_15/zeros/mul/y?
lstm_15/zeros/mulMullstm_15/strided_slice:output:0lstm_15/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_15/zeros/mulo
lstm_15/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_15/zeros/Less/y?
lstm_15/zeros/LessLesslstm_15/zeros/mul:z:0lstm_15/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_15/zeros/Lesss
lstm_15/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
lstm_15/zeros/packed/1?
lstm_15/zeros/packedPacklstm_15/strided_slice:output:0lstm_15/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_15/zeros/packedo
lstm_15/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_15/zeros/Const?
lstm_15/zerosFilllstm_15/zeros/packed:output:0lstm_15/zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_15/zerosq
lstm_15/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_15/zeros_1/mul/y?
lstm_15/zeros_1/mulMullstm_15/strided_slice:output:0lstm_15/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_15/zeros_1/muls
lstm_15/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_15/zeros_1/Less/y?
lstm_15/zeros_1/LessLesslstm_15/zeros_1/mul:z:0lstm_15/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_15/zeros_1/Lessw
lstm_15/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
lstm_15/zeros_1/packed/1?
lstm_15/zeros_1/packedPacklstm_15/strided_slice:output:0!lstm_15/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_15/zeros_1/packeds
lstm_15/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_15/zeros_1/Const?
lstm_15/zeros_1Filllstm_15/zeros_1/packed:output:0lstm_15/zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_15/zeros_1?
lstm_15/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_15/transpose/perm?
lstm_15/transpose	Transposeinputslstm_15/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2
lstm_15/transposeg
lstm_15/Shape_1Shapelstm_15/transpose:y:0*
T0*
_output_shapes
:2
lstm_15/Shape_1?
lstm_15/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_15/strided_slice_1/stack?
lstm_15/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_15/strided_slice_1/stack_1?
lstm_15/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_15/strided_slice_1/stack_2?
lstm_15/strided_slice_1StridedSlicelstm_15/Shape_1:output:0&lstm_15/strided_slice_1/stack:output:0(lstm_15/strided_slice_1/stack_1:output:0(lstm_15/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_15/strided_slice_1?
#lstm_15/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2%
#lstm_15/TensorArrayV2/element_shape?
lstm_15/TensorArrayV2TensorListReserve,lstm_15/TensorArrayV2/element_shape:output:0 lstm_15/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_15/TensorArrayV2?
=lstm_15/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2?
=lstm_15/TensorArrayUnstack/TensorListFromTensor/element_shape?
/lstm_15/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_15/transpose:y:0Flstm_15/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_15/TensorArrayUnstack/TensorListFromTensor?
lstm_15/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_15/strided_slice_2/stack?
lstm_15/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_15/strided_slice_2/stack_1?
lstm_15/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_15/strided_slice_2/stack_2?
lstm_15/strided_slice_2StridedSlicelstm_15/transpose:y:0&lstm_15/strided_slice_2/stack:output:0(lstm_15/strided_slice_2/stack_1:output:0(lstm_15/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
lstm_15/strided_slice_2?
*lstm_15/lstm_cell_15/MatMul/ReadVariableOpReadVariableOp3lstm_15_lstm_cell_15_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02,
*lstm_15/lstm_cell_15/MatMul/ReadVariableOp?
lstm_15/lstm_cell_15/MatMulMatMul lstm_15/strided_slice_2:output:02lstm_15/lstm_cell_15/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_15/lstm_cell_15/MatMul?
,lstm_15/lstm_cell_15/MatMul_1/ReadVariableOpReadVariableOp5lstm_15_lstm_cell_15_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02.
,lstm_15/lstm_cell_15/MatMul_1/ReadVariableOp?
lstm_15/lstm_cell_15/MatMul_1MatMullstm_15/zeros:output:04lstm_15/lstm_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_15/lstm_cell_15/MatMul_1?
lstm_15/lstm_cell_15/addAddV2%lstm_15/lstm_cell_15/MatMul:product:0'lstm_15/lstm_cell_15/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_15/lstm_cell_15/add?
+lstm_15/lstm_cell_15/BiasAdd/ReadVariableOpReadVariableOp4lstm_15_lstm_cell_15_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+lstm_15/lstm_cell_15/BiasAdd/ReadVariableOp?
lstm_15/lstm_cell_15/BiasAddBiasAddlstm_15/lstm_cell_15/add:z:03lstm_15/lstm_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_15/lstm_cell_15/BiasAdd?
$lstm_15/lstm_cell_15/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_15/lstm_cell_15/split/split_dim?
lstm_15/lstm_cell_15/splitSplit-lstm_15/lstm_cell_15/split/split_dim:output:0%lstm_15/lstm_cell_15/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_15/lstm_cell_15/split?
lstm_15/lstm_cell_15/SigmoidSigmoid#lstm_15/lstm_cell_15/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_15/lstm_cell_15/Sigmoid?
lstm_15/lstm_cell_15/Sigmoid_1Sigmoid#lstm_15/lstm_cell_15/split:output:1*
T0*(
_output_shapes
:??????????2 
lstm_15/lstm_cell_15/Sigmoid_1?
lstm_15/lstm_cell_15/mulMul"lstm_15/lstm_cell_15/Sigmoid_1:y:0lstm_15/zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_15/lstm_cell_15/mul?
lstm_15/lstm_cell_15/ReluRelu#lstm_15/lstm_cell_15/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_15/lstm_cell_15/Relu?
lstm_15/lstm_cell_15/mul_1Mul lstm_15/lstm_cell_15/Sigmoid:y:0'lstm_15/lstm_cell_15/Relu:activations:0*
T0*(
_output_shapes
:??????????2
lstm_15/lstm_cell_15/mul_1?
lstm_15/lstm_cell_15/add_1AddV2lstm_15/lstm_cell_15/mul:z:0lstm_15/lstm_cell_15/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_15/lstm_cell_15/add_1?
lstm_15/lstm_cell_15/Sigmoid_2Sigmoid#lstm_15/lstm_cell_15/split:output:3*
T0*(
_output_shapes
:??????????2 
lstm_15/lstm_cell_15/Sigmoid_2?
lstm_15/lstm_cell_15/Relu_1Relulstm_15/lstm_cell_15/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_15/lstm_cell_15/Relu_1?
lstm_15/lstm_cell_15/mul_2Mul"lstm_15/lstm_cell_15/Sigmoid_2:y:0)lstm_15/lstm_cell_15/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
lstm_15/lstm_cell_15/mul_2?
%lstm_15/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2'
%lstm_15/TensorArrayV2_1/element_shape?
lstm_15/TensorArrayV2_1TensorListReserve.lstm_15/TensorArrayV2_1/element_shape:output:0 lstm_15/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_15/TensorArrayV2_1^
lstm_15/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_15/time?
 lstm_15/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 lstm_15/while/maximum_iterationsz
lstm_15/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_15/while/loop_counter?
lstm_15/whileWhile#lstm_15/while/loop_counter:output:0)lstm_15/while/maximum_iterations:output:0lstm_15/time:output:0 lstm_15/TensorArrayV2_1:handle:0lstm_15/zeros:output:0lstm_15/zeros_1:output:0 lstm_15/strided_slice_1:output:0?lstm_15/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_15_lstm_cell_15_matmul_readvariableop_resource5lstm_15_lstm_cell_15_matmul_1_readvariableop_resource4lstm_15_lstm_cell_15_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*%
bodyR
lstm_15_while_body_649097*%
condR
lstm_15_while_cond_649096*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
lstm_15/while?
8lstm_15/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2:
8lstm_15/TensorArrayV2Stack/TensorListStack/element_shape?
*lstm_15/TensorArrayV2Stack/TensorListStackTensorListStacklstm_15/while:output:3Alstm_15/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02,
*lstm_15/TensorArrayV2Stack/TensorListStack?
lstm_15/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
lstm_15/strided_slice_3/stack?
lstm_15/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_15/strided_slice_3/stack_1?
lstm_15/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_15/strided_slice_3/stack_2?
lstm_15/strided_slice_3StridedSlice3lstm_15/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_15/strided_slice_3/stack:output:0(lstm_15/strided_slice_3/stack_1:output:0(lstm_15/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
lstm_15/strided_slice_3?
lstm_15/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_15/transpose_1/perm?
lstm_15/transpose_1	Transpose3lstm_15/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_15/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
lstm_15/transpose_1v
lstm_15/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_15/runtime?
dense_30/MatMul/ReadVariableOpReadVariableOp'dense_30_matmul_readvariableop_resource*
_output_shapes
:	?d*
dtype02 
dense_30/MatMul/ReadVariableOp?
dense_30/MatMulMatMul lstm_15/strided_slice_3:output:0&dense_30/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_30/MatMul?
dense_30/BiasAdd/ReadVariableOpReadVariableOp(dense_30_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02!
dense_30/BiasAdd/ReadVariableOp?
dense_30/BiasAddBiasAdddense_30/MatMul:product:0'dense_30/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_30/BiasAdds
dense_30/ReluReludense_30/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
dense_30/Relu?
dense_31/MatMul/ReadVariableOpReadVariableOp'dense_31_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02 
dense_31/MatMul/ReadVariableOp?
dense_31/MatMulMatMuldense_30/Relu:activations:0&dense_31/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_31/MatMul?
dense_31/BiasAdd/ReadVariableOpReadVariableOp(dense_31_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_31/BiasAdd/ReadVariableOp?
dense_31/BiasAddBiasAdddense_31/MatMul:product:0'dense_31/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_31/BiasAdd?
IdentityIdentitydense_31/BiasAdd:output:0 ^dense_30/BiasAdd/ReadVariableOp^dense_30/MatMul/ReadVariableOp ^dense_31/BiasAdd/ReadVariableOp^dense_31/MatMul/ReadVariableOp,^lstm_15/lstm_cell_15/BiasAdd/ReadVariableOp+^lstm_15/lstm_cell_15/MatMul/ReadVariableOp-^lstm_15/lstm_cell_15/MatMul_1/ReadVariableOp^lstm_15/while*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2B
dense_30/BiasAdd/ReadVariableOpdense_30/BiasAdd/ReadVariableOp2@
dense_30/MatMul/ReadVariableOpdense_30/MatMul/ReadVariableOp2B
dense_31/BiasAdd/ReadVariableOpdense_31/BiasAdd/ReadVariableOp2@
dense_31/MatMul/ReadVariableOpdense_31/MatMul/ReadVariableOp2Z
+lstm_15/lstm_cell_15/BiasAdd/ReadVariableOp+lstm_15/lstm_cell_15/BiasAdd/ReadVariableOp2X
*lstm_15/lstm_cell_15/MatMul/ReadVariableOp*lstm_15/lstm_cell_15/MatMul/ReadVariableOp2\
,lstm_15/lstm_cell_15/MatMul_1/ReadVariableOp,lstm_15/lstm_cell_15/MatMul_1/ReadVariableOp2
lstm_15/whilelstm_15/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?C
?
while_body_648626
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_15_matmul_readvariableop_resource_0:	?I
5while_lstm_cell_15_matmul_1_readvariableop_resource_0:
??C
4while_lstm_cell_15_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_15_matmul_readvariableop_resource:	?G
3while_lstm_cell_15_matmul_1_readvariableop_resource:
??A
2while_lstm_cell_15_biasadd_readvariableop_resource:	???)while/lstm_cell_15/BiasAdd/ReadVariableOp?(while/lstm_cell_15/MatMul/ReadVariableOp?*while/lstm_cell_15/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
(while/lstm_cell_15/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_15_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02*
(while/lstm_cell_15/MatMul/ReadVariableOp?
while/lstm_cell_15/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_15/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/MatMul?
*while/lstm_cell_15/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_15_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02,
*while/lstm_cell_15/MatMul_1/ReadVariableOp?
while/lstm_cell_15/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/MatMul_1?
while/lstm_cell_15/addAddV2#while/lstm_cell_15/MatMul:product:0%while/lstm_cell_15/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/add?
)while/lstm_cell_15/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_15_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/lstm_cell_15/BiasAdd/ReadVariableOp?
while/lstm_cell_15/BiasAddBiasAddwhile/lstm_cell_15/add:z:01while/lstm_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/BiasAdd?
"while/lstm_cell_15/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_15/split/split_dim?
while/lstm_cell_15/splitSplit+while/lstm_cell_15/split/split_dim:output:0#while/lstm_cell_15/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell_15/split?
while/lstm_cell_15/SigmoidSigmoid!while/lstm_cell_15/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/Sigmoid?
while/lstm_cell_15/Sigmoid_1Sigmoid!while/lstm_cell_15/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/Sigmoid_1?
while/lstm_cell_15/mulMul while/lstm_cell_15/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/mul?
while/lstm_cell_15/ReluRelu!while/lstm_cell_15/split:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/Relu?
while/lstm_cell_15/mul_1Mulwhile/lstm_cell_15/Sigmoid:y:0%while/lstm_cell_15/Relu:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/mul_1?
while/lstm_cell_15/add_1AddV2while/lstm_cell_15/mul:z:0while/lstm_cell_15/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/add_1?
while/lstm_cell_15/Sigmoid_2Sigmoid!while/lstm_cell_15/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/Sigmoid_2?
while/lstm_cell_15/Relu_1Reluwhile/lstm_cell_15/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/Relu_1?
while/lstm_cell_15/mul_2Mul while/lstm_cell_15/Sigmoid_2:y:0'while/lstm_cell_15/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_15/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_15/mul_2:z:0*
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
while/add_1?
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_15/BiasAdd/ReadVariableOp)^while/lstm_cell_15/MatMul/ReadVariableOp+^while/lstm_cell_15/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_15/BiasAdd/ReadVariableOp)^while/lstm_cell_15/MatMul/ReadVariableOp+^while/lstm_cell_15/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_15/BiasAdd/ReadVariableOp)^while/lstm_cell_15/MatMul/ReadVariableOp+^while/lstm_cell_15/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_15/BiasAdd/ReadVariableOp)^while/lstm_cell_15/MatMul/ReadVariableOp+^while/lstm_cell_15/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_15/mul_2:z:0*^while/lstm_cell_15/BiasAdd/ReadVariableOp)^while/lstm_cell_15/MatMul/ReadVariableOp+^while/lstm_cell_15/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_15/add_1:z:0*^while/lstm_cell_15/BiasAdd/ReadVariableOp)^while/lstm_cell_15/MatMul/ReadVariableOp+^while/lstm_cell_15/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_15_biasadd_readvariableop_resource4while_lstm_cell_15_biasadd_readvariableop_resource_0"l
3while_lstm_cell_15_matmul_1_readvariableop_resource5while_lstm_cell_15_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_15_matmul_readvariableop_resource3while_lstm_cell_15_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2V
)while/lstm_cell_15/BiasAdd/ReadVariableOp)while/lstm_cell_15/BiasAdd/ReadVariableOp2T
(while/lstm_cell_15/MatMul/ReadVariableOp(while/lstm_cell_15/MatMul/ReadVariableOp2X
*while/lstm_cell_15/MatMul_1/ReadVariableOp*while/lstm_cell_15/MatMul_1/ReadVariableOp: 
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?&
?
while_body_647979
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_15_648003_0:	?/
while_lstm_cell_15_648005_0:
??*
while_lstm_cell_15_648007_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_15_648003:	?-
while_lstm_cell_15_648005:
??(
while_lstm_cell_15_648007:	???*while/lstm_cell_15/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
*while/lstm_cell_15/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_15_648003_0while_lstm_cell_15_648005_0while_lstm_cell_15_648007_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_15_layer_call_and_return_conditional_losses_6479012,
*while/lstm_cell_15/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_15/StatefulPartitionedCall:output:0*
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
while/add_1?
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_15/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_15/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_15/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_15/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity3while/lstm_cell_15/StatefulPartitionedCall:output:1+^while/lstm_cell_15/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identity3while/lstm_cell_15/StatefulPartitionedCall:output:2+^while/lstm_cell_15/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_15_648003while_lstm_cell_15_648003_0"8
while_lstm_cell_15_648005while_lstm_cell_15_648005_0"8
while_lstm_cell_15_648007while_lstm_cell_15_648007_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2X
*while/lstm_cell_15/StatefulPartitionedCall*while/lstm_cell_15/StatefulPartitionedCall: 
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
$__inference_signature_wrapper_648866
lstm_15_input
unknown:	?
	unknown_0:
??
	unknown_1:	?
	unknown_2:	?d
	unknown_3:d
	unknown_4:d
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllstm_15_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__wrapped_model_6476802
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:?????????
'
_user_specified_namelstm_15_input
?[
?
C__inference_lstm_15_layer_call_and_return_conditional_losses_649534
inputs_0>
+lstm_cell_15_matmul_readvariableop_resource:	?A
-lstm_cell_15_matmul_1_readvariableop_resource:
??;
,lstm_cell_15_biasadd_readvariableop_resource:	?
identity??#lstm_cell_15/BiasAdd/ReadVariableOp?"lstm_cell_15/MatMul/ReadVariableOp?$lstm_cell_15/MatMul_1/ReadVariableOp?whileF
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
strided_slice/stack_2?
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
B :?2
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
B :?2
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
B :?2
zeros/packed/1?
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
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
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
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
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
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
"lstm_cell_15/MatMul/ReadVariableOpReadVariableOp+lstm_cell_15_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02$
"lstm_cell_15/MatMul/ReadVariableOp?
lstm_cell_15/MatMulMatMulstrided_slice_2:output:0*lstm_cell_15/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_15/MatMul?
$lstm_cell_15/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_15_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02&
$lstm_cell_15/MatMul_1/ReadVariableOp?
lstm_cell_15/MatMul_1MatMulzeros:output:0,lstm_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_15/MatMul_1?
lstm_cell_15/addAddV2lstm_cell_15/MatMul:product:0lstm_cell_15/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_15/add?
#lstm_cell_15/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_15_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_15/BiasAdd/ReadVariableOp?
lstm_cell_15/BiasAddBiasAddlstm_cell_15/add:z:0+lstm_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_15/BiasAdd~
lstm_cell_15/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_15/split/split_dim?
lstm_cell_15/splitSplit%lstm_cell_15/split/split_dim:output:0lstm_cell_15/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell_15/split?
lstm_cell_15/SigmoidSigmoidlstm_cell_15/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_15/Sigmoid?
lstm_cell_15/Sigmoid_1Sigmoidlstm_cell_15/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_15/Sigmoid_1?
lstm_cell_15/mulMullstm_cell_15/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_15/mul~
lstm_cell_15/ReluRelulstm_cell_15/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell_15/Relu?
lstm_cell_15/mul_1Mullstm_cell_15/Sigmoid:y:0lstm_cell_15/Relu:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_15/mul_1?
lstm_cell_15/add_1AddV2lstm_cell_15/mul:z:0lstm_cell_15/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_15/add_1?
lstm_cell_15/Sigmoid_2Sigmoidlstm_cell_15/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_15/Sigmoid_2}
lstm_cell_15/Relu_1Relulstm_cell_15/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_15/Relu_1?
lstm_cell_15/mul_2Mullstm_cell_15/Sigmoid_2:y:0!lstm_cell_15/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_15/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
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
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_15_matmul_readvariableop_resource-lstm_cell_15_matmul_1_readvariableop_resource,lstm_cell_15_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_649450*
condR
while_cond_649449*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
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
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0$^lstm_cell_15/BiasAdd/ReadVariableOp#^lstm_cell_15/MatMul/ReadVariableOp%^lstm_cell_15/MatMul_1/ReadVariableOp^while*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2J
#lstm_cell_15/BiasAdd/ReadVariableOp#lstm_cell_15/BiasAdd/ReadVariableOp2H
"lstm_cell_15/MatMul/ReadVariableOp"lstm_cell_15/MatMul/ReadVariableOp2L
$lstm_cell_15/MatMul_1/ReadVariableOp$lstm_cell_15/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
I__inference_sequential_15_layer_call_and_return_conditional_losses_648509

inputs!
lstm_15_648468:	?"
lstm_15_648470:
??
lstm_15_648472:	?"
dense_30_648487:	?d
dense_30_648489:d!
dense_31_648503:d
dense_31_648505:
identity?? dense_30/StatefulPartitionedCall? dense_31/StatefulPartitionedCall?lstm_15/StatefulPartitionedCall?
lstm_15/StatefulPartitionedCallStatefulPartitionedCallinputslstm_15_648468lstm_15_648470lstm_15_648472*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_15_layer_call_and_return_conditional_losses_6484672!
lstm_15/StatefulPartitionedCall?
 dense_30/StatefulPartitionedCallStatefulPartitionedCall(lstm_15/StatefulPartitionedCall:output:0dense_30_648487dense_30_648489*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_30_layer_call_and_return_conditional_losses_6484862"
 dense_30/StatefulPartitionedCall?
 dense_31/StatefulPartitionedCallStatefulPartitionedCall)dense_30/StatefulPartitionedCall:output:0dense_31_648503dense_31_648505*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_31_layer_call_and_return_conditional_losses_6485022"
 dense_31/StatefulPartitionedCall?
IdentityIdentity)dense_31/StatefulPartitionedCall:output:0!^dense_30/StatefulPartitionedCall!^dense_31/StatefulPartitionedCall ^lstm_15/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2D
 dense_30/StatefulPartitionedCall dense_30/StatefulPartitionedCall2D
 dense_31/StatefulPartitionedCall dense_31/StatefulPartitionedCall2B
lstm_15/StatefulPartitionedCalllstm_15/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
.__inference_sequential_15_layer_call_fn_649213

inputs
unknown:	?
	unknown_0:
??
	unknown_1:	?
	unknown_2:	?d
	unknown_3:d
	unknown_4:d
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_15_layer_call_and_return_conditional_losses_6485092
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_649449
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_649449___redundant_placeholder04
0while_while_cond_649449___redundant_placeholder14
0while_while_cond_649449___redundant_placeholder24
0while_while_cond_649449___redundant_placeholder3
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
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
(__inference_lstm_15_layer_call_fn_649880

inputs
unknown:	?
	unknown_0:
??
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_15_layer_call_and_return_conditional_losses_6487102
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_649751
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_649751___redundant_placeholder04
0while_while_cond_649751___redundant_placeholder14
0while_while_cond_649751___redundant_placeholder24
0while_while_cond_649751___redundant_placeholder3
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
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
I__inference_sequential_15_layer_call_and_return_conditional_losses_648818
lstm_15_input!
lstm_15_648800:	?"
lstm_15_648802:
??
lstm_15_648804:	?"
dense_30_648807:	?d
dense_30_648809:d!
dense_31_648812:d
dense_31_648814:
identity?? dense_30/StatefulPartitionedCall? dense_31/StatefulPartitionedCall?lstm_15/StatefulPartitionedCall?
lstm_15/StatefulPartitionedCallStatefulPartitionedCalllstm_15_inputlstm_15_648800lstm_15_648802lstm_15_648804*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_15_layer_call_and_return_conditional_losses_6484672!
lstm_15/StatefulPartitionedCall?
 dense_30/StatefulPartitionedCallStatefulPartitionedCall(lstm_15/StatefulPartitionedCall:output:0dense_30_648807dense_30_648809*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_30_layer_call_and_return_conditional_losses_6484862"
 dense_30/StatefulPartitionedCall?
 dense_31/StatefulPartitionedCallStatefulPartitionedCall)dense_30/StatefulPartitionedCall:output:0dense_31_648812dense_31_648814*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_31_layer_call_and_return_conditional_losses_6485022"
 dense_31/StatefulPartitionedCall?
IdentityIdentity)dense_31/StatefulPartitionedCall:output:0!^dense_30/StatefulPartitionedCall!^dense_31/StatefulPartitionedCall ^lstm_15/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2D
 dense_30/StatefulPartitionedCall dense_30/StatefulPartitionedCall2D
 dense_31/StatefulPartitionedCall dense_31/StatefulPartitionedCall2B
lstm_15/StatefulPartitionedCalllstm_15/StatefulPartitionedCall:Z V
+
_output_shapes
:?????????
'
_user_specified_namelstm_15_input
?

?
lstm_15_while_cond_649096,
(lstm_15_while_lstm_15_while_loop_counter2
.lstm_15_while_lstm_15_while_maximum_iterations
lstm_15_while_placeholder
lstm_15_while_placeholder_1
lstm_15_while_placeholder_2
lstm_15_while_placeholder_3.
*lstm_15_while_less_lstm_15_strided_slice_1D
@lstm_15_while_lstm_15_while_cond_649096___redundant_placeholder0D
@lstm_15_while_lstm_15_while_cond_649096___redundant_placeholder1D
@lstm_15_while_lstm_15_while_cond_649096___redundant_placeholder2D
@lstm_15_while_lstm_15_while_cond_649096___redundant_placeholder3
lstm_15_while_identity
?
lstm_15/while/LessLesslstm_15_while_placeholder*lstm_15_while_less_lstm_15_strided_slice_1*
T0*
_output_shapes
: 2
lstm_15/while/Lessu
lstm_15/while/IdentityIdentitylstm_15/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_15/while/Identity"9
lstm_15_while_identitylstm_15/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?[
?
C__inference_lstm_15_layer_call_and_return_conditional_losses_648467

inputs>
+lstm_cell_15_matmul_readvariableop_resource:	?A
-lstm_cell_15_matmul_1_readvariableop_resource:
??;
,lstm_cell_15_biasadd_readvariableop_resource:	?
identity??#lstm_cell_15/BiasAdd/ReadVariableOp?"lstm_cell_15/MatMul/ReadVariableOp?$lstm_cell_15/MatMul_1/ReadVariableOp?whileD
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
strided_slice/stack_2?
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
B :?2
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
B :?2
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
B :?2
zeros/packed/1?
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
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????2
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
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
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
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
"lstm_cell_15/MatMul/ReadVariableOpReadVariableOp+lstm_cell_15_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02$
"lstm_cell_15/MatMul/ReadVariableOp?
lstm_cell_15/MatMulMatMulstrided_slice_2:output:0*lstm_cell_15/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_15/MatMul?
$lstm_cell_15/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_15_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02&
$lstm_cell_15/MatMul_1/ReadVariableOp?
lstm_cell_15/MatMul_1MatMulzeros:output:0,lstm_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_15/MatMul_1?
lstm_cell_15/addAddV2lstm_cell_15/MatMul:product:0lstm_cell_15/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_15/add?
#lstm_cell_15/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_15_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_15/BiasAdd/ReadVariableOp?
lstm_cell_15/BiasAddBiasAddlstm_cell_15/add:z:0+lstm_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_15/BiasAdd~
lstm_cell_15/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_15/split/split_dim?
lstm_cell_15/splitSplit%lstm_cell_15/split/split_dim:output:0lstm_cell_15/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell_15/split?
lstm_cell_15/SigmoidSigmoidlstm_cell_15/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_15/Sigmoid?
lstm_cell_15/Sigmoid_1Sigmoidlstm_cell_15/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_15/Sigmoid_1?
lstm_cell_15/mulMullstm_cell_15/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_15/mul~
lstm_cell_15/ReluRelulstm_cell_15/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell_15/Relu?
lstm_cell_15/mul_1Mullstm_cell_15/Sigmoid:y:0lstm_cell_15/Relu:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_15/mul_1?
lstm_cell_15/add_1AddV2lstm_cell_15/mul:z:0lstm_cell_15/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_15/add_1?
lstm_cell_15/Sigmoid_2Sigmoidlstm_cell_15/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_15/Sigmoid_2}
lstm_cell_15/Relu_1Relulstm_cell_15/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_15/Relu_1?
lstm_cell_15/mul_2Mullstm_cell_15/Sigmoid_2:y:0!lstm_cell_15/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_15/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
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
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_15_matmul_readvariableop_resource-lstm_cell_15_matmul_1_readvariableop_resource,lstm_cell_15_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_648383*
condR
while_cond_648382*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
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
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0$^lstm_cell_15/BiasAdd/ReadVariableOp#^lstm_cell_15/MatMul/ReadVariableOp%^lstm_cell_15/MatMul_1/ReadVariableOp^while*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2J
#lstm_cell_15/BiasAdd/ReadVariableOp#lstm_cell_15/BiasAdd/ReadVariableOp2H
"lstm_cell_15/MatMul/ReadVariableOp"lstm_cell_15/MatMul/ReadVariableOp2L
$lstm_cell_15/MatMul_1/ReadVariableOp$lstm_cell_15/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?O
?

lstm_15_while_body_648933,
(lstm_15_while_lstm_15_while_loop_counter2
.lstm_15_while_lstm_15_while_maximum_iterations
lstm_15_while_placeholder
lstm_15_while_placeholder_1
lstm_15_while_placeholder_2
lstm_15_while_placeholder_3+
'lstm_15_while_lstm_15_strided_slice_1_0g
clstm_15_while_tensorarrayv2read_tensorlistgetitem_lstm_15_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_15_while_lstm_cell_15_matmul_readvariableop_resource_0:	?Q
=lstm_15_while_lstm_cell_15_matmul_1_readvariableop_resource_0:
??K
<lstm_15_while_lstm_cell_15_biasadd_readvariableop_resource_0:	?
lstm_15_while_identity
lstm_15_while_identity_1
lstm_15_while_identity_2
lstm_15_while_identity_3
lstm_15_while_identity_4
lstm_15_while_identity_5)
%lstm_15_while_lstm_15_strided_slice_1e
alstm_15_while_tensorarrayv2read_tensorlistgetitem_lstm_15_tensorarrayunstack_tensorlistfromtensorL
9lstm_15_while_lstm_cell_15_matmul_readvariableop_resource:	?O
;lstm_15_while_lstm_cell_15_matmul_1_readvariableop_resource:
??I
:lstm_15_while_lstm_cell_15_biasadd_readvariableop_resource:	???1lstm_15/while/lstm_cell_15/BiasAdd/ReadVariableOp?0lstm_15/while/lstm_cell_15/MatMul/ReadVariableOp?2lstm_15/while/lstm_cell_15/MatMul_1/ReadVariableOp?
?lstm_15/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2A
?lstm_15/while/TensorArrayV2Read/TensorListGetItem/element_shape?
1lstm_15/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_15_while_tensorarrayv2read_tensorlistgetitem_lstm_15_tensorarrayunstack_tensorlistfromtensor_0lstm_15_while_placeholderHlstm_15/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype023
1lstm_15/while/TensorArrayV2Read/TensorListGetItem?
0lstm_15/while/lstm_cell_15/MatMul/ReadVariableOpReadVariableOp;lstm_15_while_lstm_cell_15_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype022
0lstm_15/while/lstm_cell_15/MatMul/ReadVariableOp?
!lstm_15/while/lstm_cell_15/MatMulMatMul8lstm_15/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_15/while/lstm_cell_15/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2#
!lstm_15/while/lstm_cell_15/MatMul?
2lstm_15/while/lstm_cell_15/MatMul_1/ReadVariableOpReadVariableOp=lstm_15_while_lstm_cell_15_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype024
2lstm_15/while/lstm_cell_15/MatMul_1/ReadVariableOp?
#lstm_15/while/lstm_cell_15/MatMul_1MatMullstm_15_while_placeholder_2:lstm_15/while/lstm_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2%
#lstm_15/while/lstm_cell_15/MatMul_1?
lstm_15/while/lstm_cell_15/addAddV2+lstm_15/while/lstm_cell_15/MatMul:product:0-lstm_15/while/lstm_cell_15/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2 
lstm_15/while/lstm_cell_15/add?
1lstm_15/while/lstm_cell_15/BiasAdd/ReadVariableOpReadVariableOp<lstm_15_while_lstm_cell_15_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype023
1lstm_15/while/lstm_cell_15/BiasAdd/ReadVariableOp?
"lstm_15/while/lstm_cell_15/BiasAddBiasAdd"lstm_15/while/lstm_cell_15/add:z:09lstm_15/while/lstm_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2$
"lstm_15/while/lstm_cell_15/BiasAdd?
*lstm_15/while/lstm_cell_15/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_15/while/lstm_cell_15/split/split_dim?
 lstm_15/while/lstm_cell_15/splitSplit3lstm_15/while/lstm_cell_15/split/split_dim:output:0+lstm_15/while/lstm_cell_15/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2"
 lstm_15/while/lstm_cell_15/split?
"lstm_15/while/lstm_cell_15/SigmoidSigmoid)lstm_15/while/lstm_cell_15/split:output:0*
T0*(
_output_shapes
:??????????2$
"lstm_15/while/lstm_cell_15/Sigmoid?
$lstm_15/while/lstm_cell_15/Sigmoid_1Sigmoid)lstm_15/while/lstm_cell_15/split:output:1*
T0*(
_output_shapes
:??????????2&
$lstm_15/while/lstm_cell_15/Sigmoid_1?
lstm_15/while/lstm_cell_15/mulMul(lstm_15/while/lstm_cell_15/Sigmoid_1:y:0lstm_15_while_placeholder_3*
T0*(
_output_shapes
:??????????2 
lstm_15/while/lstm_cell_15/mul?
lstm_15/while/lstm_cell_15/ReluRelu)lstm_15/while/lstm_cell_15/split:output:2*
T0*(
_output_shapes
:??????????2!
lstm_15/while/lstm_cell_15/Relu?
 lstm_15/while/lstm_cell_15/mul_1Mul&lstm_15/while/lstm_cell_15/Sigmoid:y:0-lstm_15/while/lstm_cell_15/Relu:activations:0*
T0*(
_output_shapes
:??????????2"
 lstm_15/while/lstm_cell_15/mul_1?
 lstm_15/while/lstm_cell_15/add_1AddV2"lstm_15/while/lstm_cell_15/mul:z:0$lstm_15/while/lstm_cell_15/mul_1:z:0*
T0*(
_output_shapes
:??????????2"
 lstm_15/while/lstm_cell_15/add_1?
$lstm_15/while/lstm_cell_15/Sigmoid_2Sigmoid)lstm_15/while/lstm_cell_15/split:output:3*
T0*(
_output_shapes
:??????????2&
$lstm_15/while/lstm_cell_15/Sigmoid_2?
!lstm_15/while/lstm_cell_15/Relu_1Relu$lstm_15/while/lstm_cell_15/add_1:z:0*
T0*(
_output_shapes
:??????????2#
!lstm_15/while/lstm_cell_15/Relu_1?
 lstm_15/while/lstm_cell_15/mul_2Mul(lstm_15/while/lstm_cell_15/Sigmoid_2:y:0/lstm_15/while/lstm_cell_15/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2"
 lstm_15/while/lstm_cell_15/mul_2?
2lstm_15/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_15_while_placeholder_1lstm_15_while_placeholder$lstm_15/while/lstm_cell_15/mul_2:z:0*
_output_shapes
: *
element_dtype024
2lstm_15/while/TensorArrayV2Write/TensorListSetIteml
lstm_15/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_15/while/add/y?
lstm_15/while/addAddV2lstm_15_while_placeholderlstm_15/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_15/while/addp
lstm_15/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_15/while/add_1/y?
lstm_15/while/add_1AddV2(lstm_15_while_lstm_15_while_loop_counterlstm_15/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_15/while/add_1?
lstm_15/while/IdentityIdentitylstm_15/while/add_1:z:02^lstm_15/while/lstm_cell_15/BiasAdd/ReadVariableOp1^lstm_15/while/lstm_cell_15/MatMul/ReadVariableOp3^lstm_15/while/lstm_cell_15/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_15/while/Identity?
lstm_15/while/Identity_1Identity.lstm_15_while_lstm_15_while_maximum_iterations2^lstm_15/while/lstm_cell_15/BiasAdd/ReadVariableOp1^lstm_15/while/lstm_cell_15/MatMul/ReadVariableOp3^lstm_15/while/lstm_cell_15/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_15/while/Identity_1?
lstm_15/while/Identity_2Identitylstm_15/while/add:z:02^lstm_15/while/lstm_cell_15/BiasAdd/ReadVariableOp1^lstm_15/while/lstm_cell_15/MatMul/ReadVariableOp3^lstm_15/while/lstm_cell_15/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_15/while/Identity_2?
lstm_15/while/Identity_3IdentityBlstm_15/while/TensorArrayV2Write/TensorListSetItem:output_handle:02^lstm_15/while/lstm_cell_15/BiasAdd/ReadVariableOp1^lstm_15/while/lstm_cell_15/MatMul/ReadVariableOp3^lstm_15/while/lstm_cell_15/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_15/while/Identity_3?
lstm_15/while/Identity_4Identity$lstm_15/while/lstm_cell_15/mul_2:z:02^lstm_15/while/lstm_cell_15/BiasAdd/ReadVariableOp1^lstm_15/while/lstm_cell_15/MatMul/ReadVariableOp3^lstm_15/while/lstm_cell_15/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
lstm_15/while/Identity_4?
lstm_15/while/Identity_5Identity$lstm_15/while/lstm_cell_15/add_1:z:02^lstm_15/while/lstm_cell_15/BiasAdd/ReadVariableOp1^lstm_15/while/lstm_cell_15/MatMul/ReadVariableOp3^lstm_15/while/lstm_cell_15/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
lstm_15/while/Identity_5"9
lstm_15_while_identitylstm_15/while/Identity:output:0"=
lstm_15_while_identity_1!lstm_15/while/Identity_1:output:0"=
lstm_15_while_identity_2!lstm_15/while/Identity_2:output:0"=
lstm_15_while_identity_3!lstm_15/while/Identity_3:output:0"=
lstm_15_while_identity_4!lstm_15/while/Identity_4:output:0"=
lstm_15_while_identity_5!lstm_15/while/Identity_5:output:0"P
%lstm_15_while_lstm_15_strided_slice_1'lstm_15_while_lstm_15_strided_slice_1_0"z
:lstm_15_while_lstm_cell_15_biasadd_readvariableop_resource<lstm_15_while_lstm_cell_15_biasadd_readvariableop_resource_0"|
;lstm_15_while_lstm_cell_15_matmul_1_readvariableop_resource=lstm_15_while_lstm_cell_15_matmul_1_readvariableop_resource_0"x
9lstm_15_while_lstm_cell_15_matmul_readvariableop_resource;lstm_15_while_lstm_cell_15_matmul_readvariableop_resource_0"?
alstm_15_while_tensorarrayv2read_tensorlistgetitem_lstm_15_tensorarrayunstack_tensorlistfromtensorclstm_15_while_tensorarrayv2read_tensorlistgetitem_lstm_15_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2f
1lstm_15/while/lstm_cell_15/BiasAdd/ReadVariableOp1lstm_15/while/lstm_cell_15/BiasAdd/ReadVariableOp2d
0lstm_15/while/lstm_cell_15/MatMul/ReadVariableOp0lstm_15/while/lstm_cell_15/MatMul/ReadVariableOp2h
2lstm_15/while/lstm_cell_15/MatMul_1/ReadVariableOp2lstm_15/while/lstm_cell_15/MatMul_1/ReadVariableOp: 
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
'sequential_15_lstm_15_while_cond_647582H
Dsequential_15_lstm_15_while_sequential_15_lstm_15_while_loop_counterN
Jsequential_15_lstm_15_while_sequential_15_lstm_15_while_maximum_iterations+
'sequential_15_lstm_15_while_placeholder-
)sequential_15_lstm_15_while_placeholder_1-
)sequential_15_lstm_15_while_placeholder_2-
)sequential_15_lstm_15_while_placeholder_3J
Fsequential_15_lstm_15_while_less_sequential_15_lstm_15_strided_slice_1`
\sequential_15_lstm_15_while_sequential_15_lstm_15_while_cond_647582___redundant_placeholder0`
\sequential_15_lstm_15_while_sequential_15_lstm_15_while_cond_647582___redundant_placeholder1`
\sequential_15_lstm_15_while_sequential_15_lstm_15_while_cond_647582___redundant_placeholder2`
\sequential_15_lstm_15_while_sequential_15_lstm_15_while_cond_647582___redundant_placeholder3(
$sequential_15_lstm_15_while_identity
?
 sequential_15/lstm_15/while/LessLess'sequential_15_lstm_15_while_placeholderFsequential_15_lstm_15_while_less_sequential_15_lstm_15_strided_slice_1*
T0*
_output_shapes
: 2"
 sequential_15/lstm_15/while/Less?
$sequential_15/lstm_15/while/IdentityIdentity$sequential_15/lstm_15/while/Less:z:0*
T0
*
_output_shapes
: 2&
$sequential_15/lstm_15/while/Identity"U
$sequential_15_lstm_15_while_identity-sequential_15/lstm_15/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?[
?
C__inference_lstm_15_layer_call_and_return_conditional_losses_649685

inputs>
+lstm_cell_15_matmul_readvariableop_resource:	?A
-lstm_cell_15_matmul_1_readvariableop_resource:
??;
,lstm_cell_15_biasadd_readvariableop_resource:	?
identity??#lstm_cell_15/BiasAdd/ReadVariableOp?"lstm_cell_15/MatMul/ReadVariableOp?$lstm_cell_15/MatMul_1/ReadVariableOp?whileD
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
strided_slice/stack_2?
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
B :?2
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
B :?2
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
B :?2
zeros/packed/1?
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
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permz
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:?????????2
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
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
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
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
"lstm_cell_15/MatMul/ReadVariableOpReadVariableOp+lstm_cell_15_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02$
"lstm_cell_15/MatMul/ReadVariableOp?
lstm_cell_15/MatMulMatMulstrided_slice_2:output:0*lstm_cell_15/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_15/MatMul?
$lstm_cell_15/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_15_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02&
$lstm_cell_15/MatMul_1/ReadVariableOp?
lstm_cell_15/MatMul_1MatMulzeros:output:0,lstm_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_15/MatMul_1?
lstm_cell_15/addAddV2lstm_cell_15/MatMul:product:0lstm_cell_15/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_15/add?
#lstm_cell_15/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_15_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#lstm_cell_15/BiasAdd/ReadVariableOp?
lstm_cell_15/BiasAddBiasAddlstm_cell_15/add:z:0+lstm_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_15/BiasAdd~
lstm_cell_15/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_15/split/split_dim?
lstm_cell_15/splitSplit%lstm_cell_15/split/split_dim:output:0lstm_cell_15/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell_15/split?
lstm_cell_15/SigmoidSigmoidlstm_cell_15/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_15/Sigmoid?
lstm_cell_15/Sigmoid_1Sigmoidlstm_cell_15/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_15/Sigmoid_1?
lstm_cell_15/mulMullstm_cell_15/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_15/mul~
lstm_cell_15/ReluRelulstm_cell_15/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell_15/Relu?
lstm_cell_15/mul_1Mullstm_cell_15/Sigmoid:y:0lstm_cell_15/Relu:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_15/mul_1?
lstm_cell_15/add_1AddV2lstm_cell_15/mul:z:0lstm_cell_15/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_15/add_1?
lstm_cell_15/Sigmoid_2Sigmoidlstm_cell_15/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_15/Sigmoid_2}
lstm_cell_15/Relu_1Relulstm_cell_15/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_15/Relu_1?
lstm_cell_15/mul_2Mullstm_cell_15/Sigmoid_2:y:0!lstm_cell_15/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_15/mul_2?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
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
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_15_matmul_readvariableop_resource-lstm_cell_15_matmul_1_readvariableop_resource,lstm_cell_15_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_649601*
condR
while_cond_649600*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
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
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0$^lstm_cell_15/BiasAdd/ReadVariableOp#^lstm_cell_15/MatMul/ReadVariableOp%^lstm_cell_15/MatMul_1/ReadVariableOp^while*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2J
#lstm_cell_15/BiasAdd/ReadVariableOp#lstm_cell_15/BiasAdd/ReadVariableOp2H
"lstm_cell_15/MatMul/ReadVariableOp"lstm_cell_15/MatMul/ReadVariableOp2L
$lstm_cell_15/MatMul_1/ReadVariableOp$lstm_cell_15/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
H__inference_lstm_cell_15_layer_call_and_return_conditional_losses_647755

inputs

states
states_11
matmul_readvariableop_resource:	?4
 matmul_1_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
add?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:??????????2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:??????????2
	Sigmoid_1]
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:??????????2
mulW
ReluRelusplit:output:2*
T0*(
_output_shapes
:??????????2
Relui
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:??????????2
mul_1^
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:??????????2
add_1d
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:??????????2
	Sigmoid_2V
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:??????????2
Relu_1m
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
mul_2?
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity?

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_1?

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:?????????:??????????:??????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_namestates:PL
(
_output_shapes
:??????????
 
_user_specified_namestates
?
?
-__inference_lstm_cell_15_layer_call_fn_650017

inputs
states_0
states_1
unknown:	?
	unknown_0:
??
	unknown_1:	?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_15_layer_call_and_return_conditional_losses_6479012
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:?????????:??????????:??????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/1
?E
?
C__inference_lstm_15_layer_call_and_return_conditional_losses_648048

inputs&
lstm_cell_15_647966:	?'
lstm_cell_15_647968:
??"
lstm_cell_15_647970:	?
identity??$lstm_cell_15/StatefulPartitionedCall?whileD
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
strided_slice/stack_2?
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
B :?2
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
B :?2
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
B :?2
zeros/packed/1?
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
:??????????2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros_1/packed/1?
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :??????????????????2
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
strided_slice_1/stack_2?
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
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
strided_slice_2/stack_2?
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
strided_slice_2?
$lstm_cell_15/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_15_647966lstm_cell_15_647968lstm_cell_15_647970*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:??????????:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_lstm_cell_15_layer_call_and_return_conditional_losses_6479012&
$lstm_cell_15/StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
TensorArrayV2_1/element_shape?
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
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_15_647966lstm_cell_15_647968lstm_cell_15_647970*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_647979*
condR
while_cond_647978*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
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
strided_slice_3/stack_2?
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime?
IdentityIdentitystrided_slice_3:output:0%^lstm_cell_15/StatefulPartitionedCall^while*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_15/StatefulPartitionedCall$lstm_cell_15/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?{
?
"__inference__traced_restore_650218
file_prefix3
 assignvariableop_dense_30_kernel:	?d.
 assignvariableop_1_dense_30_bias:d4
"assignvariableop_2_dense_31_kernel:d.
 assignvariableop_3_dense_31_bias:&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: A
.assignvariableop_9_lstm_15_lstm_cell_15_kernel:	?M
9assignvariableop_10_lstm_15_lstm_cell_15_recurrent_kernel:
??<
-assignvariableop_11_lstm_15_lstm_cell_15_bias:	?#
assignvariableop_12_total: #
assignvariableop_13_count: =
*assignvariableop_14_adam_dense_30_kernel_m:	?d6
(assignvariableop_15_adam_dense_30_bias_m:d<
*assignvariableop_16_adam_dense_31_kernel_m:d6
(assignvariableop_17_adam_dense_31_bias_m:I
6assignvariableop_18_adam_lstm_15_lstm_cell_15_kernel_m:	?T
@assignvariableop_19_adam_lstm_15_lstm_cell_15_recurrent_kernel_m:
??C
4assignvariableop_20_adam_lstm_15_lstm_cell_15_bias_m:	?=
*assignvariableop_21_adam_dense_30_kernel_v:	?d6
(assignvariableop_22_adam_dense_30_bias_v:d<
*assignvariableop_23_adam_dense_31_kernel_v:d6
(assignvariableop_24_adam_dense_31_bias_v:I
6assignvariableop_25_adam_lstm_15_lstm_cell_15_kernel_v:	?T
@assignvariableop_26_adam_lstm_15_lstm_cell_15_recurrent_kernel_v:
??C
4assignvariableop_27_adam_lstm_15_lstm_cell_15_bias_v:	?
identity_29??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*M
valueDBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapesv
t:::::::::::::::::::::::::::::*+
dtypes!
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp assignvariableop_dense_30_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_30_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_31_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_31_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_iterIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_beta_1Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_beta_2Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_decayIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp%assignvariableop_8_adam_learning_rateIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_15_lstm_cell_15_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp9assignvariableop_10_lstm_15_lstm_cell_15_recurrent_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp-assignvariableop_11_lstm_15_lstm_cell_15_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOpassignvariableop_12_totalIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpassignvariableop_13_countIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp*assignvariableop_14_adam_dense_30_kernel_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp(assignvariableop_15_adam_dense_30_bias_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp*assignvariableop_16_adam_dense_31_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp(assignvariableop_17_adam_dense_31_bias_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp6assignvariableop_18_adam_lstm_15_lstm_cell_15_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp@assignvariableop_19_adam_lstm_15_lstm_cell_15_recurrent_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp4assignvariableop_20_adam_lstm_15_lstm_cell_15_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp*assignvariableop_21_adam_dense_30_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp(assignvariableop_22_adam_dense_30_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_dense_31_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_dense_31_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_15_lstm_cell_15_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp@assignvariableop_26_adam_lstm_15_lstm_cell_15_recurrent_kernel_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp4assignvariableop_27_adam_lstm_15_lstm_cell_15_bias_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_279
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_28Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_28?
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
?

?
D__inference_dense_30_layer_call_and_return_conditional_losses_649891

inputs1
matmul_readvariableop_resource:	?d-
biasadd_readvariableop_resource:d
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?d*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
D__inference_dense_30_layer_call_and_return_conditional_losses_648486

inputs1
matmul_readvariableop_resource:	?d-
biasadd_readvariableop_resource:d
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?d*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
.__inference_sequential_15_layer_call_fn_648526
lstm_15_input
unknown:	?
	unknown_0:
??
	unknown_1:	?
	unknown_2:	?d
	unknown_3:d
	unknown_4:d
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllstm_15_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_15_layer_call_and_return_conditional_losses_6485092
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:?????????
'
_user_specified_namelstm_15_input
?
?
while_cond_647768
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_647768___redundant_placeholder04
0while_while_cond_647768___redundant_placeholder14
0while_while_cond_647768___redundant_placeholder24
0while_while_cond_647768___redundant_placeholder3
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
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
(__inference_lstm_15_layer_call_fn_649858
inputs_0
unknown:	?
	unknown_0:
??
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_15_layer_call_and_return_conditional_losses_6480482
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
(__inference_lstm_15_layer_call_fn_649869

inputs
unknown:	?
	unknown_0:
??
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_15_layer_call_and_return_conditional_losses_6484672
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
.__inference_sequential_15_layer_call_fn_648797
lstm_15_input
unknown:	?
	unknown_0:
??
	unknown_1:	?
	unknown_2:	?d
	unknown_3:d
	unknown_4:d
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllstm_15_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_15_layer_call_and_return_conditional_losses_6487612
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:?????????
'
_user_specified_namelstm_15_input
?
?
while_cond_648625
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_648625___redundant_placeholder04
0while_while_cond_648625___redundant_placeholder14
0while_while_cond_648625___redundant_placeholder24
0while_while_cond_648625___redundant_placeholder3
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
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?O
?

lstm_15_while_body_649097,
(lstm_15_while_lstm_15_while_loop_counter2
.lstm_15_while_lstm_15_while_maximum_iterations
lstm_15_while_placeholder
lstm_15_while_placeholder_1
lstm_15_while_placeholder_2
lstm_15_while_placeholder_3+
'lstm_15_while_lstm_15_strided_slice_1_0g
clstm_15_while_tensorarrayv2read_tensorlistgetitem_lstm_15_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_15_while_lstm_cell_15_matmul_readvariableop_resource_0:	?Q
=lstm_15_while_lstm_cell_15_matmul_1_readvariableop_resource_0:
??K
<lstm_15_while_lstm_cell_15_biasadd_readvariableop_resource_0:	?
lstm_15_while_identity
lstm_15_while_identity_1
lstm_15_while_identity_2
lstm_15_while_identity_3
lstm_15_while_identity_4
lstm_15_while_identity_5)
%lstm_15_while_lstm_15_strided_slice_1e
alstm_15_while_tensorarrayv2read_tensorlistgetitem_lstm_15_tensorarrayunstack_tensorlistfromtensorL
9lstm_15_while_lstm_cell_15_matmul_readvariableop_resource:	?O
;lstm_15_while_lstm_cell_15_matmul_1_readvariableop_resource:
??I
:lstm_15_while_lstm_cell_15_biasadd_readvariableop_resource:	???1lstm_15/while/lstm_cell_15/BiasAdd/ReadVariableOp?0lstm_15/while/lstm_cell_15/MatMul/ReadVariableOp?2lstm_15/while/lstm_cell_15/MatMul_1/ReadVariableOp?
?lstm_15/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2A
?lstm_15/while/TensorArrayV2Read/TensorListGetItem/element_shape?
1lstm_15/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_15_while_tensorarrayv2read_tensorlistgetitem_lstm_15_tensorarrayunstack_tensorlistfromtensor_0lstm_15_while_placeholderHlstm_15/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype023
1lstm_15/while/TensorArrayV2Read/TensorListGetItem?
0lstm_15/while/lstm_cell_15/MatMul/ReadVariableOpReadVariableOp;lstm_15_while_lstm_cell_15_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype022
0lstm_15/while/lstm_cell_15/MatMul/ReadVariableOp?
!lstm_15/while/lstm_cell_15/MatMulMatMul8lstm_15/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_15/while/lstm_cell_15/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2#
!lstm_15/while/lstm_cell_15/MatMul?
2lstm_15/while/lstm_cell_15/MatMul_1/ReadVariableOpReadVariableOp=lstm_15_while_lstm_cell_15_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype024
2lstm_15/while/lstm_cell_15/MatMul_1/ReadVariableOp?
#lstm_15/while/lstm_cell_15/MatMul_1MatMullstm_15_while_placeholder_2:lstm_15/while/lstm_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2%
#lstm_15/while/lstm_cell_15/MatMul_1?
lstm_15/while/lstm_cell_15/addAddV2+lstm_15/while/lstm_cell_15/MatMul:product:0-lstm_15/while/lstm_cell_15/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2 
lstm_15/while/lstm_cell_15/add?
1lstm_15/while/lstm_cell_15/BiasAdd/ReadVariableOpReadVariableOp<lstm_15_while_lstm_cell_15_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype023
1lstm_15/while/lstm_cell_15/BiasAdd/ReadVariableOp?
"lstm_15/while/lstm_cell_15/BiasAddBiasAdd"lstm_15/while/lstm_cell_15/add:z:09lstm_15/while/lstm_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2$
"lstm_15/while/lstm_cell_15/BiasAdd?
*lstm_15/while/lstm_cell_15/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_15/while/lstm_cell_15/split/split_dim?
 lstm_15/while/lstm_cell_15/splitSplit3lstm_15/while/lstm_cell_15/split/split_dim:output:0+lstm_15/while/lstm_cell_15/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2"
 lstm_15/while/lstm_cell_15/split?
"lstm_15/while/lstm_cell_15/SigmoidSigmoid)lstm_15/while/lstm_cell_15/split:output:0*
T0*(
_output_shapes
:??????????2$
"lstm_15/while/lstm_cell_15/Sigmoid?
$lstm_15/while/lstm_cell_15/Sigmoid_1Sigmoid)lstm_15/while/lstm_cell_15/split:output:1*
T0*(
_output_shapes
:??????????2&
$lstm_15/while/lstm_cell_15/Sigmoid_1?
lstm_15/while/lstm_cell_15/mulMul(lstm_15/while/lstm_cell_15/Sigmoid_1:y:0lstm_15_while_placeholder_3*
T0*(
_output_shapes
:??????????2 
lstm_15/while/lstm_cell_15/mul?
lstm_15/while/lstm_cell_15/ReluRelu)lstm_15/while/lstm_cell_15/split:output:2*
T0*(
_output_shapes
:??????????2!
lstm_15/while/lstm_cell_15/Relu?
 lstm_15/while/lstm_cell_15/mul_1Mul&lstm_15/while/lstm_cell_15/Sigmoid:y:0-lstm_15/while/lstm_cell_15/Relu:activations:0*
T0*(
_output_shapes
:??????????2"
 lstm_15/while/lstm_cell_15/mul_1?
 lstm_15/while/lstm_cell_15/add_1AddV2"lstm_15/while/lstm_cell_15/mul:z:0$lstm_15/while/lstm_cell_15/mul_1:z:0*
T0*(
_output_shapes
:??????????2"
 lstm_15/while/lstm_cell_15/add_1?
$lstm_15/while/lstm_cell_15/Sigmoid_2Sigmoid)lstm_15/while/lstm_cell_15/split:output:3*
T0*(
_output_shapes
:??????????2&
$lstm_15/while/lstm_cell_15/Sigmoid_2?
!lstm_15/while/lstm_cell_15/Relu_1Relu$lstm_15/while/lstm_cell_15/add_1:z:0*
T0*(
_output_shapes
:??????????2#
!lstm_15/while/lstm_cell_15/Relu_1?
 lstm_15/while/lstm_cell_15/mul_2Mul(lstm_15/while/lstm_cell_15/Sigmoid_2:y:0/lstm_15/while/lstm_cell_15/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2"
 lstm_15/while/lstm_cell_15/mul_2?
2lstm_15/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_15_while_placeholder_1lstm_15_while_placeholder$lstm_15/while/lstm_cell_15/mul_2:z:0*
_output_shapes
: *
element_dtype024
2lstm_15/while/TensorArrayV2Write/TensorListSetIteml
lstm_15/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_15/while/add/y?
lstm_15/while/addAddV2lstm_15_while_placeholderlstm_15/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_15/while/addp
lstm_15/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_15/while/add_1/y?
lstm_15/while/add_1AddV2(lstm_15_while_lstm_15_while_loop_counterlstm_15/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_15/while/add_1?
lstm_15/while/IdentityIdentitylstm_15/while/add_1:z:02^lstm_15/while/lstm_cell_15/BiasAdd/ReadVariableOp1^lstm_15/while/lstm_cell_15/MatMul/ReadVariableOp3^lstm_15/while/lstm_cell_15/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_15/while/Identity?
lstm_15/while/Identity_1Identity.lstm_15_while_lstm_15_while_maximum_iterations2^lstm_15/while/lstm_cell_15/BiasAdd/ReadVariableOp1^lstm_15/while/lstm_cell_15/MatMul/ReadVariableOp3^lstm_15/while/lstm_cell_15/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_15/while/Identity_1?
lstm_15/while/Identity_2Identitylstm_15/while/add:z:02^lstm_15/while/lstm_cell_15/BiasAdd/ReadVariableOp1^lstm_15/while/lstm_cell_15/MatMul/ReadVariableOp3^lstm_15/while/lstm_cell_15/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_15/while/Identity_2?
lstm_15/while/Identity_3IdentityBlstm_15/while/TensorArrayV2Write/TensorListSetItem:output_handle:02^lstm_15/while/lstm_cell_15/BiasAdd/ReadVariableOp1^lstm_15/while/lstm_cell_15/MatMul/ReadVariableOp3^lstm_15/while/lstm_cell_15/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_15/while/Identity_3?
lstm_15/while/Identity_4Identity$lstm_15/while/lstm_cell_15/mul_2:z:02^lstm_15/while/lstm_cell_15/BiasAdd/ReadVariableOp1^lstm_15/while/lstm_cell_15/MatMul/ReadVariableOp3^lstm_15/while/lstm_cell_15/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
lstm_15/while/Identity_4?
lstm_15/while/Identity_5Identity$lstm_15/while/lstm_cell_15/add_1:z:02^lstm_15/while/lstm_cell_15/BiasAdd/ReadVariableOp1^lstm_15/while/lstm_cell_15/MatMul/ReadVariableOp3^lstm_15/while/lstm_cell_15/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
lstm_15/while/Identity_5"9
lstm_15_while_identitylstm_15/while/Identity:output:0"=
lstm_15_while_identity_1!lstm_15/while/Identity_1:output:0"=
lstm_15_while_identity_2!lstm_15/while/Identity_2:output:0"=
lstm_15_while_identity_3!lstm_15/while/Identity_3:output:0"=
lstm_15_while_identity_4!lstm_15/while/Identity_4:output:0"=
lstm_15_while_identity_5!lstm_15/while/Identity_5:output:0"P
%lstm_15_while_lstm_15_strided_slice_1'lstm_15_while_lstm_15_strided_slice_1_0"z
:lstm_15_while_lstm_cell_15_biasadd_readvariableop_resource<lstm_15_while_lstm_cell_15_biasadd_readvariableop_resource_0"|
;lstm_15_while_lstm_cell_15_matmul_1_readvariableop_resource=lstm_15_while_lstm_cell_15_matmul_1_readvariableop_resource_0"x
9lstm_15_while_lstm_cell_15_matmul_readvariableop_resource;lstm_15_while_lstm_cell_15_matmul_readvariableop_resource_0"?
alstm_15_while_tensorarrayv2read_tensorlistgetitem_lstm_15_tensorarrayunstack_tensorlistfromtensorclstm_15_while_tensorarrayv2read_tensorlistgetitem_lstm_15_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2f
1lstm_15/while/lstm_cell_15/BiasAdd/ReadVariableOp1lstm_15/while/lstm_cell_15/BiasAdd/ReadVariableOp2d
0lstm_15/while/lstm_cell_15/MatMul/ReadVariableOp0lstm_15/while/lstm_cell_15/MatMul/ReadVariableOp2h
2lstm_15/while/lstm_cell_15/MatMul_1/ReadVariableOp2lstm_15/while/lstm_cell_15/MatMul_1/ReadVariableOp: 
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: 
??
?
!__inference__wrapped_model_647680
lstm_15_inputT
Asequential_15_lstm_15_lstm_cell_15_matmul_readvariableop_resource:	?W
Csequential_15_lstm_15_lstm_cell_15_matmul_1_readvariableop_resource:
??Q
Bsequential_15_lstm_15_lstm_cell_15_biasadd_readvariableop_resource:	?H
5sequential_15_dense_30_matmul_readvariableop_resource:	?dD
6sequential_15_dense_30_biasadd_readvariableop_resource:dG
5sequential_15_dense_31_matmul_readvariableop_resource:dD
6sequential_15_dense_31_biasadd_readvariableop_resource:
identity??-sequential_15/dense_30/BiasAdd/ReadVariableOp?,sequential_15/dense_30/MatMul/ReadVariableOp?-sequential_15/dense_31/BiasAdd/ReadVariableOp?,sequential_15/dense_31/MatMul/ReadVariableOp?9sequential_15/lstm_15/lstm_cell_15/BiasAdd/ReadVariableOp?8sequential_15/lstm_15/lstm_cell_15/MatMul/ReadVariableOp?:sequential_15/lstm_15/lstm_cell_15/MatMul_1/ReadVariableOp?sequential_15/lstm_15/whilew
sequential_15/lstm_15/ShapeShapelstm_15_input*
T0*
_output_shapes
:2
sequential_15/lstm_15/Shape?
)sequential_15/lstm_15/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_15/lstm_15/strided_slice/stack?
+sequential_15/lstm_15/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_15/lstm_15/strided_slice/stack_1?
+sequential_15/lstm_15/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_15/lstm_15/strided_slice/stack_2?
#sequential_15/lstm_15/strided_sliceStridedSlice$sequential_15/lstm_15/Shape:output:02sequential_15/lstm_15/strided_slice/stack:output:04sequential_15/lstm_15/strided_slice/stack_1:output:04sequential_15/lstm_15/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential_15/lstm_15/strided_slice?
!sequential_15/lstm_15/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2#
!sequential_15/lstm_15/zeros/mul/y?
sequential_15/lstm_15/zeros/mulMul,sequential_15/lstm_15/strided_slice:output:0*sequential_15/lstm_15/zeros/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential_15/lstm_15/zeros/mul?
"sequential_15/lstm_15/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2$
"sequential_15/lstm_15/zeros/Less/y?
 sequential_15/lstm_15/zeros/LessLess#sequential_15/lstm_15/zeros/mul:z:0+sequential_15/lstm_15/zeros/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential_15/lstm_15/zeros/Less?
$sequential_15/lstm_15/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2&
$sequential_15/lstm_15/zeros/packed/1?
"sequential_15/lstm_15/zeros/packedPack,sequential_15/lstm_15/strided_slice:output:0-sequential_15/lstm_15/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential_15/lstm_15/zeros/packed?
!sequential_15/lstm_15/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential_15/lstm_15/zeros/Const?
sequential_15/lstm_15/zerosFill+sequential_15/lstm_15/zeros/packed:output:0*sequential_15/lstm_15/zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
sequential_15/lstm_15/zeros?
#sequential_15/lstm_15/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2%
#sequential_15/lstm_15/zeros_1/mul/y?
!sequential_15/lstm_15/zeros_1/mulMul,sequential_15/lstm_15/strided_slice:output:0,sequential_15/lstm_15/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2#
!sequential_15/lstm_15/zeros_1/mul?
$sequential_15/lstm_15/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2&
$sequential_15/lstm_15/zeros_1/Less/y?
"sequential_15/lstm_15/zeros_1/LessLess%sequential_15/lstm_15/zeros_1/mul:z:0-sequential_15/lstm_15/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2$
"sequential_15/lstm_15/zeros_1/Less?
&sequential_15/lstm_15/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2(
&sequential_15/lstm_15/zeros_1/packed/1?
$sequential_15/lstm_15/zeros_1/packedPack,sequential_15/lstm_15/strided_slice:output:0/sequential_15/lstm_15/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2&
$sequential_15/lstm_15/zeros_1/packed?
#sequential_15/lstm_15/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#sequential_15/lstm_15/zeros_1/Const?
sequential_15/lstm_15/zeros_1Fill-sequential_15/lstm_15/zeros_1/packed:output:0,sequential_15/lstm_15/zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2
sequential_15/lstm_15/zeros_1?
$sequential_15/lstm_15/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential_15/lstm_15/transpose/perm?
sequential_15/lstm_15/transpose	Transposelstm_15_input-sequential_15/lstm_15/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2!
sequential_15/lstm_15/transpose?
sequential_15/lstm_15/Shape_1Shape#sequential_15/lstm_15/transpose:y:0*
T0*
_output_shapes
:2
sequential_15/lstm_15/Shape_1?
+sequential_15/lstm_15/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_15/lstm_15/strided_slice_1/stack?
-sequential_15/lstm_15/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_15/lstm_15/strided_slice_1/stack_1?
-sequential_15/lstm_15/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_15/lstm_15/strided_slice_1/stack_2?
%sequential_15/lstm_15/strided_slice_1StridedSlice&sequential_15/lstm_15/Shape_1:output:04sequential_15/lstm_15/strided_slice_1/stack:output:06sequential_15/lstm_15/strided_slice_1/stack_1:output:06sequential_15/lstm_15/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%sequential_15/lstm_15/strided_slice_1?
1sequential_15/lstm_15/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????23
1sequential_15/lstm_15/TensorArrayV2/element_shape?
#sequential_15/lstm_15/TensorArrayV2TensorListReserve:sequential_15/lstm_15/TensorArrayV2/element_shape:output:0.sequential_15/lstm_15/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential_15/lstm_15/TensorArrayV2?
Ksequential_15/lstm_15/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2M
Ksequential_15/lstm_15/TensorArrayUnstack/TensorListFromTensor/element_shape?
=sequential_15/lstm_15/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_15/lstm_15/transpose:y:0Tsequential_15/lstm_15/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02?
=sequential_15/lstm_15/TensorArrayUnstack/TensorListFromTensor?
+sequential_15/lstm_15/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_15/lstm_15/strided_slice_2/stack?
-sequential_15/lstm_15/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_15/lstm_15/strided_slice_2/stack_1?
-sequential_15/lstm_15/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_15/lstm_15/strided_slice_2/stack_2?
%sequential_15/lstm_15/strided_slice_2StridedSlice#sequential_15/lstm_15/transpose:y:04sequential_15/lstm_15/strided_slice_2/stack:output:06sequential_15/lstm_15/strided_slice_2/stack_1:output:06sequential_15/lstm_15/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2'
%sequential_15/lstm_15/strided_slice_2?
8sequential_15/lstm_15/lstm_cell_15/MatMul/ReadVariableOpReadVariableOpAsequential_15_lstm_15_lstm_cell_15_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02:
8sequential_15/lstm_15/lstm_cell_15/MatMul/ReadVariableOp?
)sequential_15/lstm_15/lstm_cell_15/MatMulMatMul.sequential_15/lstm_15/strided_slice_2:output:0@sequential_15/lstm_15/lstm_cell_15/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2+
)sequential_15/lstm_15/lstm_cell_15/MatMul?
:sequential_15/lstm_15/lstm_cell_15/MatMul_1/ReadVariableOpReadVariableOpCsequential_15_lstm_15_lstm_cell_15_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02<
:sequential_15/lstm_15/lstm_cell_15/MatMul_1/ReadVariableOp?
+sequential_15/lstm_15/lstm_cell_15/MatMul_1MatMul$sequential_15/lstm_15/zeros:output:0Bsequential_15/lstm_15/lstm_cell_15/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2-
+sequential_15/lstm_15/lstm_cell_15/MatMul_1?
&sequential_15/lstm_15/lstm_cell_15/addAddV23sequential_15/lstm_15/lstm_cell_15/MatMul:product:05sequential_15/lstm_15/lstm_cell_15/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2(
&sequential_15/lstm_15/lstm_cell_15/add?
9sequential_15/lstm_15/lstm_cell_15/BiasAdd/ReadVariableOpReadVariableOpBsequential_15_lstm_15_lstm_cell_15_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02;
9sequential_15/lstm_15/lstm_cell_15/BiasAdd/ReadVariableOp?
*sequential_15/lstm_15/lstm_cell_15/BiasAddBiasAdd*sequential_15/lstm_15/lstm_cell_15/add:z:0Asequential_15/lstm_15/lstm_cell_15/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2,
*sequential_15/lstm_15/lstm_cell_15/BiasAdd?
2sequential_15/lstm_15/lstm_cell_15/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :24
2sequential_15/lstm_15/lstm_cell_15/split/split_dim?
(sequential_15/lstm_15/lstm_cell_15/splitSplit;sequential_15/lstm_15/lstm_cell_15/split/split_dim:output:03sequential_15/lstm_15/lstm_cell_15/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2*
(sequential_15/lstm_15/lstm_cell_15/split?
*sequential_15/lstm_15/lstm_cell_15/SigmoidSigmoid1sequential_15/lstm_15/lstm_cell_15/split:output:0*
T0*(
_output_shapes
:??????????2,
*sequential_15/lstm_15/lstm_cell_15/Sigmoid?
,sequential_15/lstm_15/lstm_cell_15/Sigmoid_1Sigmoid1sequential_15/lstm_15/lstm_cell_15/split:output:1*
T0*(
_output_shapes
:??????????2.
,sequential_15/lstm_15/lstm_cell_15/Sigmoid_1?
&sequential_15/lstm_15/lstm_cell_15/mulMul0sequential_15/lstm_15/lstm_cell_15/Sigmoid_1:y:0&sequential_15/lstm_15/zeros_1:output:0*
T0*(
_output_shapes
:??????????2(
&sequential_15/lstm_15/lstm_cell_15/mul?
'sequential_15/lstm_15/lstm_cell_15/ReluRelu1sequential_15/lstm_15/lstm_cell_15/split:output:2*
T0*(
_output_shapes
:??????????2)
'sequential_15/lstm_15/lstm_cell_15/Relu?
(sequential_15/lstm_15/lstm_cell_15/mul_1Mul.sequential_15/lstm_15/lstm_cell_15/Sigmoid:y:05sequential_15/lstm_15/lstm_cell_15/Relu:activations:0*
T0*(
_output_shapes
:??????????2*
(sequential_15/lstm_15/lstm_cell_15/mul_1?
(sequential_15/lstm_15/lstm_cell_15/add_1AddV2*sequential_15/lstm_15/lstm_cell_15/mul:z:0,sequential_15/lstm_15/lstm_cell_15/mul_1:z:0*
T0*(
_output_shapes
:??????????2*
(sequential_15/lstm_15/lstm_cell_15/add_1?
,sequential_15/lstm_15/lstm_cell_15/Sigmoid_2Sigmoid1sequential_15/lstm_15/lstm_cell_15/split:output:3*
T0*(
_output_shapes
:??????????2.
,sequential_15/lstm_15/lstm_cell_15/Sigmoid_2?
)sequential_15/lstm_15/lstm_cell_15/Relu_1Relu,sequential_15/lstm_15/lstm_cell_15/add_1:z:0*
T0*(
_output_shapes
:??????????2+
)sequential_15/lstm_15/lstm_cell_15/Relu_1?
(sequential_15/lstm_15/lstm_cell_15/mul_2Mul0sequential_15/lstm_15/lstm_cell_15/Sigmoid_2:y:07sequential_15/lstm_15/lstm_cell_15/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2*
(sequential_15/lstm_15/lstm_cell_15/mul_2?
3sequential_15/lstm_15/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   25
3sequential_15/lstm_15/TensorArrayV2_1/element_shape?
%sequential_15/lstm_15/TensorArrayV2_1TensorListReserve<sequential_15/lstm_15/TensorArrayV2_1/element_shape:output:0.sequential_15/lstm_15/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02'
%sequential_15/lstm_15/TensorArrayV2_1z
sequential_15/lstm_15/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_15/lstm_15/time?
.sequential_15/lstm_15/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????20
.sequential_15/lstm_15/while/maximum_iterations?
(sequential_15/lstm_15/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential_15/lstm_15/while/loop_counter?
sequential_15/lstm_15/whileWhile1sequential_15/lstm_15/while/loop_counter:output:07sequential_15/lstm_15/while/maximum_iterations:output:0#sequential_15/lstm_15/time:output:0.sequential_15/lstm_15/TensorArrayV2_1:handle:0$sequential_15/lstm_15/zeros:output:0&sequential_15/lstm_15/zeros_1:output:0.sequential_15/lstm_15/strided_slice_1:output:0Msequential_15/lstm_15/TensorArrayUnstack/TensorListFromTensor:output_handle:0Asequential_15_lstm_15_lstm_cell_15_matmul_readvariableop_resourceCsequential_15_lstm_15_lstm_cell_15_matmul_1_readvariableop_resourceBsequential_15_lstm_15_lstm_cell_15_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*3
body+R)
'sequential_15_lstm_15_while_body_647583*3
cond+R)
'sequential_15_lstm_15_while_cond_647582*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
sequential_15/lstm_15/while?
Fsequential_15/lstm_15/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2H
Fsequential_15/lstm_15/TensorArrayV2Stack/TensorListStack/element_shape?
8sequential_15/lstm_15/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_15/lstm_15/while:output:3Osequential_15/lstm_15/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02:
8sequential_15/lstm_15/TensorArrayV2Stack/TensorListStack?
+sequential_15/lstm_15/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2-
+sequential_15/lstm_15/strided_slice_3/stack?
-sequential_15/lstm_15/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2/
-sequential_15/lstm_15/strided_slice_3/stack_1?
-sequential_15/lstm_15/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_15/lstm_15/strided_slice_3/stack_2?
%sequential_15/lstm_15/strided_slice_3StridedSliceAsequential_15/lstm_15/TensorArrayV2Stack/TensorListStack:tensor:04sequential_15/lstm_15/strided_slice_3/stack:output:06sequential_15/lstm_15/strided_slice_3/stack_1:output:06sequential_15/lstm_15/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2'
%sequential_15/lstm_15/strided_slice_3?
&sequential_15/lstm_15/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&sequential_15/lstm_15/transpose_1/perm?
!sequential_15/lstm_15/transpose_1	TransposeAsequential_15/lstm_15/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_15/lstm_15/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2#
!sequential_15/lstm_15/transpose_1?
sequential_15/lstm_15/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_15/lstm_15/runtime?
,sequential_15/dense_30/MatMul/ReadVariableOpReadVariableOp5sequential_15_dense_30_matmul_readvariableop_resource*
_output_shapes
:	?d*
dtype02.
,sequential_15/dense_30/MatMul/ReadVariableOp?
sequential_15/dense_30/MatMulMatMul.sequential_15/lstm_15/strided_slice_3:output:04sequential_15/dense_30/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
sequential_15/dense_30/MatMul?
-sequential_15/dense_30/BiasAdd/ReadVariableOpReadVariableOp6sequential_15_dense_30_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02/
-sequential_15/dense_30/BiasAdd/ReadVariableOp?
sequential_15/dense_30/BiasAddBiasAdd'sequential_15/dense_30/MatMul:product:05sequential_15/dense_30/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2 
sequential_15/dense_30/BiasAdd?
sequential_15/dense_30/ReluRelu'sequential_15/dense_30/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
sequential_15/dense_30/Relu?
,sequential_15/dense_31/MatMul/ReadVariableOpReadVariableOp5sequential_15_dense_31_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02.
,sequential_15/dense_31/MatMul/ReadVariableOp?
sequential_15/dense_31/MatMulMatMul)sequential_15/dense_30/Relu:activations:04sequential_15/dense_31/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_15/dense_31/MatMul?
-sequential_15/dense_31/BiasAdd/ReadVariableOpReadVariableOp6sequential_15_dense_31_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_15/dense_31/BiasAdd/ReadVariableOp?
sequential_15/dense_31/BiasAddBiasAdd'sequential_15/dense_31/MatMul:product:05sequential_15/dense_31/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2 
sequential_15/dense_31/BiasAdd?
IdentityIdentity'sequential_15/dense_31/BiasAdd:output:0.^sequential_15/dense_30/BiasAdd/ReadVariableOp-^sequential_15/dense_30/MatMul/ReadVariableOp.^sequential_15/dense_31/BiasAdd/ReadVariableOp-^sequential_15/dense_31/MatMul/ReadVariableOp:^sequential_15/lstm_15/lstm_cell_15/BiasAdd/ReadVariableOp9^sequential_15/lstm_15/lstm_cell_15/MatMul/ReadVariableOp;^sequential_15/lstm_15/lstm_cell_15/MatMul_1/ReadVariableOp^sequential_15/lstm_15/while*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2^
-sequential_15/dense_30/BiasAdd/ReadVariableOp-sequential_15/dense_30/BiasAdd/ReadVariableOp2\
,sequential_15/dense_30/MatMul/ReadVariableOp,sequential_15/dense_30/MatMul/ReadVariableOp2^
-sequential_15/dense_31/BiasAdd/ReadVariableOp-sequential_15/dense_31/BiasAdd/ReadVariableOp2\
,sequential_15/dense_31/MatMul/ReadVariableOp,sequential_15/dense_31/MatMul/ReadVariableOp2v
9sequential_15/lstm_15/lstm_cell_15/BiasAdd/ReadVariableOp9sequential_15/lstm_15/lstm_cell_15/BiasAdd/ReadVariableOp2t
8sequential_15/lstm_15/lstm_cell_15/MatMul/ReadVariableOp8sequential_15/lstm_15/lstm_cell_15/MatMul/ReadVariableOp2x
:sequential_15/lstm_15/lstm_cell_15/MatMul_1/ReadVariableOp:sequential_15/lstm_15/lstm_cell_15/MatMul_1/ReadVariableOp2:
sequential_15/lstm_15/whilesequential_15/lstm_15/while:Z V
+
_output_shapes
:?????????
'
_user_specified_namelstm_15_input
?
?
(__inference_lstm_15_layer_call_fn_649847
inputs_0
unknown:	?
	unknown_0:
??
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_lstm_15_layer_call_and_return_conditional_losses_6478382
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_648382
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_648382___redundant_placeholder04
0while_while_cond_648382___redundant_placeholder14
0while_while_cond_648382___redundant_placeholder24
0while_while_cond_648382___redundant_placeholder3
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
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :??????????:??????????: ::::: 
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
:??????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
)__inference_dense_30_layer_call_fn_649900

inputs
unknown:	?d
	unknown_0:d
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_30_layer_call_and_return_conditional_losses_6484862
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
K
lstm_15_input:
serving_default_lstm_15_input:0?????????<
dense_310
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?-
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	optimizer
trainable_variables
regularization_losses
	variables
	keras_api
	
signatures
V_default_save_signature
*W&call_and_return_all_conditional_losses
X__call__"?*
_tf_keras_sequential?*{"name": "sequential_15", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_15", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "lstm_15_input"}}, {"class_name": "LSTM", "config": {"name": "lstm_15", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 1]}, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 200, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}, {"class_name": "Dense", "config": {"name": "dense_30", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_31", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 12, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 1]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 13}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 7, 1]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 7, 1]}, "float32", "lstm_15_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_15", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "lstm_15_input"}, "shared_object_id": 0}, {"class_name": "LSTM", "config": {"name": "lstm_15", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 1]}, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 200, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 5}, {"class_name": "Dense", "config": {"name": "dense_30", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 8}, {"class_name": "Dense", "config": {"name": "dense_31", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 11}]}}, "training_config": {"loss": "mse", "metrics": null, "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?

cell

state_spec
trainable_variables
regularization_losses
	variables
	keras_api
*Y&call_and_return_all_conditional_losses
Z__call__"?
_tf_keras_rnn_layer?{"name": "lstm_15", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 1]}, "stateful": false, "must_restore_from_config": false, "class_name": "LSTM", "config": {"name": "lstm_15", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 1]}, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 200, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 5, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 1]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 13}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 7, 1]}}
?

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
*[&call_and_return_all_conditional_losses
\__call__"?
_tf_keras_layer?{"name": "dense_30", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_30", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 8, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 200}}, "shared_object_id": 14}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 200]}}
?

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
*]&call_and_return_all_conditional_losses
^__call__"?
_tf_keras_layer?{"name": "dense_31", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_31", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 11, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 100}}, "shared_object_id": 15}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 100]}}
?
iter

beta_1

beta_2
	decay
 learning_ratemHmImJmK!mL"mM#mNvOvPvQvR!vS"vT#vU"
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
?
trainable_variables
$non_trainable_variables
regularization_losses
%layer_metrics

&layers
'layer_regularization_losses
(metrics
	variables
X__call__
V_default_save_signature
*W&call_and_return_all_conditional_losses
&W"call_and_return_conditional_losses"
_generic_user_object
,
_serving_default"
signature_map
?	
)
state_size

!kernel
"recurrent_kernel
#bias
*trainable_variables
+regularization_losses
,	variables
-	keras_api
*`&call_and_return_all_conditional_losses
a__call__"?
_tf_keras_layer?{"name": "lstm_cell_15", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LSTMCell", "config": {"name": "lstm_cell_15", "trainable": true, "dtype": "float32", "units": 200, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 4}
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
?
trainable_variables

.states
/non_trainable_variables
regularization_losses
0layer_metrics

1layers
2layer_regularization_losses
3metrics
	variables
Z__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses"
_generic_user_object
": 	?d2dense_30/kernel
:d2dense_30/bias
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
?
trainable_variables
4non_trainable_variables
regularization_losses
5layer_metrics

6layers
7layer_regularization_losses
8metrics
	variables
\__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses"
_generic_user_object
!:d2dense_31/kernel
:2dense_31/bias
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
?
trainable_variables
9non_trainable_variables
regularization_losses
:layer_metrics

;layers
<layer_regularization_losses
=metrics
	variables
^__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
.:,	?2lstm_15/lstm_cell_15/kernel
9:7
??2%lstm_15/lstm_cell_15/recurrent_kernel
(:&?2lstm_15/lstm_cell_15/bias
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
'
>0"
trackable_list_wrapper
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
?
*trainable_variables
?non_trainable_variables
+regularization_losses
@layer_metrics

Alayers
Blayer_regularization_losses
Cmetrics
,	variables
a__call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
'

0"
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
?
	Dtotal
	Ecount
F	variables
G	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 16}
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
:  (2total
:  (2count
.
D0
E1"
trackable_list_wrapper
-
F	variables"
_generic_user_object
':%	?d2Adam/dense_30/kernel/m
 :d2Adam/dense_30/bias/m
&:$d2Adam/dense_31/kernel/m
 :2Adam/dense_31/bias/m
3:1	?2"Adam/lstm_15/lstm_cell_15/kernel/m
>:<
??2,Adam/lstm_15/lstm_cell_15/recurrent_kernel/m
-:+?2 Adam/lstm_15/lstm_cell_15/bias/m
':%	?d2Adam/dense_30/kernel/v
 :d2Adam/dense_30/bias/v
&:$d2Adam/dense_31/kernel/v
 :2Adam/dense_31/bias/v
3:1	?2"Adam/lstm_15/lstm_cell_15/kernel/v
>:<
??2,Adam/lstm_15/lstm_cell_15/recurrent_kernel/v
-:+?2 Adam/lstm_15/lstm_cell_15/bias/v
?2?
!__inference__wrapped_model_647680?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *0?-
+?(
lstm_15_input?????????
?2?
I__inference_sequential_15_layer_call_and_return_conditional_losses_649030
I__inference_sequential_15_layer_call_and_return_conditional_losses_649194
I__inference_sequential_15_layer_call_and_return_conditional_losses_648818
I__inference_sequential_15_layer_call_and_return_conditional_losses_648839?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
.__inference_sequential_15_layer_call_fn_648526
.__inference_sequential_15_layer_call_fn_649213
.__inference_sequential_15_layer_call_fn_649232
.__inference_sequential_15_layer_call_fn_648797?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
C__inference_lstm_15_layer_call_and_return_conditional_losses_649383
C__inference_lstm_15_layer_call_and_return_conditional_losses_649534
C__inference_lstm_15_layer_call_and_return_conditional_losses_649685
C__inference_lstm_15_layer_call_and_return_conditional_losses_649836?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
(__inference_lstm_15_layer_call_fn_649847
(__inference_lstm_15_layer_call_fn_649858
(__inference_lstm_15_layer_call_fn_649869
(__inference_lstm_15_layer_call_fn_649880?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_dense_30_layer_call_and_return_conditional_losses_649891?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_dense_30_layer_call_fn_649900?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_dense_31_layer_call_and_return_conditional_losses_649910?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_dense_31_layer_call_fn_649919?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
$__inference_signature_wrapper_648866lstm_15_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
H__inference_lstm_cell_15_layer_call_and_return_conditional_losses_649951
H__inference_lstm_cell_15_layer_call_and_return_conditional_losses_649983?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
-__inference_lstm_cell_15_layer_call_fn_650000
-__inference_lstm_cell_15_layer_call_fn_650017?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 ?
!__inference__wrapped_model_647680z!"#:?7
0?-
+?(
lstm_15_input?????????
? "3?0
.
dense_31"?
dense_31??????????
D__inference_dense_30_layer_call_and_return_conditional_losses_649891]0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????d
? }
)__inference_dense_30_layer_call_fn_649900P0?-
&?#
!?
inputs??????????
? "??????????d?
D__inference_dense_31_layer_call_and_return_conditional_losses_649910\/?,
%?"
 ?
inputs?????????d
? "%?"
?
0?????????
? |
)__inference_dense_31_layer_call_fn_649919O/?,
%?"
 ?
inputs?????????d
? "???????????
C__inference_lstm_15_layer_call_and_return_conditional_losses_649383~!"#O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p 

 
? "&?#
?
0??????????
? ?
C__inference_lstm_15_layer_call_and_return_conditional_losses_649534~!"#O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p

 
? "&?#
?
0??????????
? ?
C__inference_lstm_15_layer_call_and_return_conditional_losses_649685n!"#??<
5?2
$?!
inputs?????????

 
p 

 
? "&?#
?
0??????????
? ?
C__inference_lstm_15_layer_call_and_return_conditional_losses_649836n!"#??<
5?2
$?!
inputs?????????

 
p

 
? "&?#
?
0??????????
? ?
(__inference_lstm_15_layer_call_fn_649847q!"#O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p 

 
? "????????????
(__inference_lstm_15_layer_call_fn_649858q!"#O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p

 
? "????????????
(__inference_lstm_15_layer_call_fn_649869a!"#??<
5?2
$?!
inputs?????????

 
p 

 
? "????????????
(__inference_lstm_15_layer_call_fn_649880a!"#??<
5?2
$?!
inputs?????????

 
p

 
? "????????????
H__inference_lstm_cell_15_layer_call_and_return_conditional_losses_649951?!"#??
x?u
 ?
inputs?????????
M?J
#? 
states/0??????????
#? 
states/1??????????
p 
? "v?s
l?i
?
0/0??????????
G?D
 ?
0/1/0??????????
 ?
0/1/1??????????
? ?
H__inference_lstm_cell_15_layer_call_and_return_conditional_losses_649983?!"#??
x?u
 ?
inputs?????????
M?J
#? 
states/0??????????
#? 
states/1??????????
p
? "v?s
l?i
?
0/0??????????
G?D
 ?
0/1/0??????????
 ?
0/1/1??????????
? ?
-__inference_lstm_cell_15_layer_call_fn_650000?!"#??
x?u
 ?
inputs?????????
M?J
#? 
states/0??????????
#? 
states/1??????????
p 
? "f?c
?
0??????????
C?@
?
1/0??????????
?
1/1???????????
-__inference_lstm_cell_15_layer_call_fn_650017?!"#??
x?u
 ?
inputs?????????
M?J
#? 
states/0??????????
#? 
states/1??????????
p
? "f?c
?
0??????????
C?@
?
1/0??????????
?
1/1???????????
I__inference_sequential_15_layer_call_and_return_conditional_losses_648818t!"#B??
8?5
+?(
lstm_15_input?????????
p 

 
? "%?"
?
0?????????
? ?
I__inference_sequential_15_layer_call_and_return_conditional_losses_648839t!"#B??
8?5
+?(
lstm_15_input?????????
p

 
? "%?"
?
0?????????
? ?
I__inference_sequential_15_layer_call_and_return_conditional_losses_649030m!"#;?8
1?.
$?!
inputs?????????
p 

 
? "%?"
?
0?????????
? ?
I__inference_sequential_15_layer_call_and_return_conditional_losses_649194m!"#;?8
1?.
$?!
inputs?????????
p

 
? "%?"
?
0?????????
? ?
.__inference_sequential_15_layer_call_fn_648526g!"#B??
8?5
+?(
lstm_15_input?????????
p 

 
? "???????????
.__inference_sequential_15_layer_call_fn_648797g!"#B??
8?5
+?(
lstm_15_input?????????
p

 
? "???????????
.__inference_sequential_15_layer_call_fn_649213`!"#;?8
1?.
$?!
inputs?????????
p 

 
? "???????????
.__inference_sequential_15_layer_call_fn_649232`!"#;?8
1?.
$?!
inputs?????????
p

 
? "???????????
$__inference_signature_wrapper_648866?!"#K?H
? 
A?>
<
lstm_15_input+?(
lstm_15_input?????????"3?0
.
dense_31"?
dense_31?????????