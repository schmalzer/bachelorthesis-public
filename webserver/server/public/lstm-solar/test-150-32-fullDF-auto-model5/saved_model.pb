??
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
?"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718??
}
dense_204/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?d*!
shared_namedense_204/kernel
v
$dense_204/kernel/Read/ReadVariableOpReadVariableOpdense_204/kernel*
_output_shapes
:	?d*
dtype0
t
dense_204/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*
shared_namedense_204/bias
m
"dense_204/bias/Read/ReadVariableOpReadVariableOpdense_204/bias*
_output_shapes
:d*
dtype0
|
dense_205/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*!
shared_namedense_205/kernel
u
$dense_205/kernel/Read/ReadVariableOpReadVariableOpdense_205/kernel*
_output_shapes

:d*
dtype0
t
dense_205/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_205/bias
m
"dense_205/bias/Read/ReadVariableOpReadVariableOpdense_205/bias*
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
lstm_102/lstm_cell_102/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*.
shared_namelstm_102/lstm_cell_102/kernel
?
1lstm_102/lstm_cell_102/kernel/Read/ReadVariableOpReadVariableOplstm_102/lstm_cell_102/kernel*
_output_shapes
:	?*
dtype0
?
'lstm_102/lstm_cell_102/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*8
shared_name)'lstm_102/lstm_cell_102/recurrent_kernel
?
;lstm_102/lstm_cell_102/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_102/lstm_cell_102/recurrent_kernel* 
_output_shapes
:
??*
dtype0
?
lstm_102/lstm_cell_102/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_namelstm_102/lstm_cell_102/bias
?
/lstm_102/lstm_cell_102/bias/Read/ReadVariableOpReadVariableOplstm_102/lstm_cell_102/bias*
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
Adam/dense_204/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?d*(
shared_nameAdam/dense_204/kernel/m
?
+Adam/dense_204/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_204/kernel/m*
_output_shapes
:	?d*
dtype0
?
Adam/dense_204/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*&
shared_nameAdam/dense_204/bias/m
{
)Adam/dense_204/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_204/bias/m*
_output_shapes
:d*
dtype0
?
Adam/dense_205/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*(
shared_nameAdam/dense_205/kernel/m
?
+Adam/dense_205/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_205/kernel/m*
_output_shapes

:d*
dtype0
?
Adam/dense_205/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_205/bias/m
{
)Adam/dense_205/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_205/bias/m*
_output_shapes
:*
dtype0
?
$Adam/lstm_102/lstm_cell_102/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_102/lstm_cell_102/kernel/m
?
8Adam/lstm_102/lstm_cell_102/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_102/lstm_cell_102/kernel/m*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_102/lstm_cell_102/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*?
shared_name0.Adam/lstm_102/lstm_cell_102/recurrent_kernel/m
?
BAdam/lstm_102/lstm_cell_102/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_102/lstm_cell_102/recurrent_kernel/m* 
_output_shapes
:
??*
dtype0
?
"Adam/lstm_102/lstm_cell_102/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_102/lstm_cell_102/bias/m
?
6Adam/lstm_102/lstm_cell_102/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_102/lstm_cell_102/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_204/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?d*(
shared_nameAdam/dense_204/kernel/v
?
+Adam/dense_204/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_204/kernel/v*
_output_shapes
:	?d*
dtype0
?
Adam/dense_204/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*&
shared_nameAdam/dense_204/bias/v
{
)Adam/dense_204/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_204/bias/v*
_output_shapes
:d*
dtype0
?
Adam/dense_205/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*(
shared_nameAdam/dense_205/kernel/v
?
+Adam/dense_205/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_205/kernel/v*
_output_shapes

:d*
dtype0
?
Adam/dense_205/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_205/bias/v
{
)Adam/dense_205/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_205/bias/v*
_output_shapes
:*
dtype0
?
$Adam/lstm_102/lstm_cell_102/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*5
shared_name&$Adam/lstm_102/lstm_cell_102/kernel/v
?
8Adam/lstm_102/lstm_cell_102/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_102/lstm_cell_102/kernel/v*
_output_shapes
:	?*
dtype0
?
.Adam/lstm_102/lstm_cell_102/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*?
shared_name0.Adam/lstm_102/lstm_cell_102/recurrent_kernel/v
?
BAdam/lstm_102/lstm_cell_102/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_102/lstm_cell_102/recurrent_kernel/v* 
_output_shapes
:
??*
dtype0
?
"Adam/lstm_102/lstm_cell_102/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*3
shared_name$"Adam/lstm_102/lstm_cell_102/bias/v
?
6Adam/lstm_102/lstm_cell_102/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_102/lstm_cell_102/bias/v*
_output_shapes	
:?*
dtype0

NoOpNoOp
?)
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?)
value?(B?( B?(
?
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

$layers
%layer_metrics
&layer_regularization_losses
'non_trainable_variables
	variables
regularization_losses
(metrics
trainable_variables
 
?
)
state_size

!kernel
"recurrent_kernel
#bias
*	variables
+regularization_losses
,trainable_variables
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

.layers
/layer_metrics
0layer_regularization_losses
1non_trainable_variables
	variables
regularization_losses
2metrics

3states
trainable_variables
\Z
VARIABLE_VALUEdense_204/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_204/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?

4layers
5layer_metrics
6layer_regularization_losses
7non_trainable_variables
	variables
regularization_losses
8metrics
trainable_variables
\Z
VARIABLE_VALUEdense_205/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_205/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?

9layers
:layer_metrics
;layer_regularization_losses
<non_trainable_variables
	variables
regularization_losses
=metrics
trainable_variables
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
YW
VARIABLE_VALUElstm_102/lstm_cell_102/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'lstm_102/lstm_cell_102/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUElstm_102/lstm_cell_102/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE

0
1
2
 
 
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

?layers
@layer_metrics
Alayer_regularization_losses
Bnon_trainable_variables
*	variables
+regularization_losses
Cmetrics
,trainable_variables
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
}
VARIABLE_VALUEAdam/dense_204/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_204/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_205/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_205/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_102/lstm_cell_102/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_102/lstm_cell_102/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_102/lstm_cell_102/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_204/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_204/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_205/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_205/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE$Adam/lstm_102/lstm_cell_102/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/lstm_102/lstm_cell_102/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_102/lstm_cell_102/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_lstm_102_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_102_inputlstm_102/lstm_cell_102/kernel'lstm_102/lstm_cell_102/recurrent_kernellstm_102/lstm_cell_102/biasdense_204/kerneldense_204/biasdense_205/kerneldense_205/bias*
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
GPU 2J 8? *.
f)R'
%__inference_signature_wrapper_5094370
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_204/kernel/Read/ReadVariableOp"dense_204/bias/Read/ReadVariableOp$dense_205/kernel/Read/ReadVariableOp"dense_205/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_102/lstm_cell_102/kernel/Read/ReadVariableOp;lstm_102/lstm_cell_102/recurrent_kernel/Read/ReadVariableOp/lstm_102/lstm_cell_102/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_204/kernel/m/Read/ReadVariableOp)Adam/dense_204/bias/m/Read/ReadVariableOp+Adam/dense_205/kernel/m/Read/ReadVariableOp)Adam/dense_205/bias/m/Read/ReadVariableOp8Adam/lstm_102/lstm_cell_102/kernel/m/Read/ReadVariableOpBAdam/lstm_102/lstm_cell_102/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_102/lstm_cell_102/bias/m/Read/ReadVariableOp+Adam/dense_204/kernel/v/Read/ReadVariableOp)Adam/dense_204/bias/v/Read/ReadVariableOp+Adam/dense_205/kernel/v/Read/ReadVariableOp)Adam/dense_205/bias/v/Read/ReadVariableOp8Adam/lstm_102/lstm_cell_102/kernel/v/Read/ReadVariableOpBAdam/lstm_102/lstm_cell_102/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_102/lstm_cell_102/bias/v/Read/ReadVariableOpConst*)
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
GPU 2J 8? *)
f$R"
 __inference__traced_save_5095628
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_204/kerneldense_204/biasdense_205/kerneldense_205/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_102/lstm_cell_102/kernel'lstm_102/lstm_cell_102/recurrent_kernellstm_102/lstm_cell_102/biastotalcountAdam/dense_204/kernel/mAdam/dense_204/bias/mAdam/dense_205/kernel/mAdam/dense_205/bias/m$Adam/lstm_102/lstm_cell_102/kernel/m.Adam/lstm_102/lstm_cell_102/recurrent_kernel/m"Adam/lstm_102/lstm_cell_102/bias/mAdam/dense_204/kernel/vAdam/dense_204/bias/vAdam/dense_205/kernel/vAdam/dense_205/bias/v$Adam/lstm_102/lstm_cell_102/kernel/v.Adam/lstm_102/lstm_cell_102/recurrent_kernel/v"Adam/lstm_102/lstm_cell_102/bias/v*(
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
GPU 2J 8? *,
f'R%
#__inference__traced_restore_5095722??
?g
?
*sequential_102_lstm_102_while_body_5093087L
Hsequential_102_lstm_102_while_sequential_102_lstm_102_while_loop_counterR
Nsequential_102_lstm_102_while_sequential_102_lstm_102_while_maximum_iterations-
)sequential_102_lstm_102_while_placeholder/
+sequential_102_lstm_102_while_placeholder_1/
+sequential_102_lstm_102_while_placeholder_2/
+sequential_102_lstm_102_while_placeholder_3K
Gsequential_102_lstm_102_while_sequential_102_lstm_102_strided_slice_1_0?
?sequential_102_lstm_102_while_tensorarrayv2read_tensorlistgetitem_sequential_102_lstm_102_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_102_lstm_102_while_lstm_cell_102_matmul_readvariableop_resource_0:	?b
Nsequential_102_lstm_102_while_lstm_cell_102_matmul_1_readvariableop_resource_0:
??\
Msequential_102_lstm_102_while_lstm_cell_102_biasadd_readvariableop_resource_0:	?*
&sequential_102_lstm_102_while_identity,
(sequential_102_lstm_102_while_identity_1,
(sequential_102_lstm_102_while_identity_2,
(sequential_102_lstm_102_while_identity_3,
(sequential_102_lstm_102_while_identity_4,
(sequential_102_lstm_102_while_identity_5I
Esequential_102_lstm_102_while_sequential_102_lstm_102_strided_slice_1?
?sequential_102_lstm_102_while_tensorarrayv2read_tensorlistgetitem_sequential_102_lstm_102_tensorarrayunstack_tensorlistfromtensor]
Jsequential_102_lstm_102_while_lstm_cell_102_matmul_readvariableop_resource:	?`
Lsequential_102_lstm_102_while_lstm_cell_102_matmul_1_readvariableop_resource:
??Z
Ksequential_102_lstm_102_while_lstm_cell_102_biasadd_readvariableop_resource:	???Bsequential_102/lstm_102/while/lstm_cell_102/BiasAdd/ReadVariableOp?Asequential_102/lstm_102/while/lstm_cell_102/MatMul/ReadVariableOp?Csequential_102/lstm_102/while/lstm_cell_102/MatMul_1/ReadVariableOp?
Osequential_102/lstm_102/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2Q
Osequential_102/lstm_102/while/TensorArrayV2Read/TensorListGetItem/element_shape?
Asequential_102/lstm_102/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_102_lstm_102_while_tensorarrayv2read_tensorlistgetitem_sequential_102_lstm_102_tensorarrayunstack_tensorlistfromtensor_0)sequential_102_lstm_102_while_placeholderXsequential_102/lstm_102/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02C
Asequential_102/lstm_102/while/TensorArrayV2Read/TensorListGetItem?
Asequential_102/lstm_102/while/lstm_cell_102/MatMul/ReadVariableOpReadVariableOpLsequential_102_lstm_102_while_lstm_cell_102_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02C
Asequential_102/lstm_102/while/lstm_cell_102/MatMul/ReadVariableOp?
2sequential_102/lstm_102/while/lstm_cell_102/MatMulMatMulHsequential_102/lstm_102/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_102/lstm_102/while/lstm_cell_102/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????24
2sequential_102/lstm_102/while/lstm_cell_102/MatMul?
Csequential_102/lstm_102/while/lstm_cell_102/MatMul_1/ReadVariableOpReadVariableOpNsequential_102_lstm_102_while_lstm_cell_102_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02E
Csequential_102/lstm_102/while/lstm_cell_102/MatMul_1/ReadVariableOp?
4sequential_102/lstm_102/while/lstm_cell_102/MatMul_1MatMul+sequential_102_lstm_102_while_placeholder_2Ksequential_102/lstm_102/while/lstm_cell_102/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????26
4sequential_102/lstm_102/while/lstm_cell_102/MatMul_1?
/sequential_102/lstm_102/while/lstm_cell_102/addAddV2<sequential_102/lstm_102/while/lstm_cell_102/MatMul:product:0>sequential_102/lstm_102/while/lstm_cell_102/MatMul_1:product:0*
T0*(
_output_shapes
:??????????21
/sequential_102/lstm_102/while/lstm_cell_102/add?
Bsequential_102/lstm_102/while/lstm_cell_102/BiasAdd/ReadVariableOpReadVariableOpMsequential_102_lstm_102_while_lstm_cell_102_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02D
Bsequential_102/lstm_102/while/lstm_cell_102/BiasAdd/ReadVariableOp?
3sequential_102/lstm_102/while/lstm_cell_102/BiasAddBiasAdd3sequential_102/lstm_102/while/lstm_cell_102/add:z:0Jsequential_102/lstm_102/while/lstm_cell_102/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????25
3sequential_102/lstm_102/while/lstm_cell_102/BiasAdd?
;sequential_102/lstm_102/while/lstm_cell_102/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2=
;sequential_102/lstm_102/while/lstm_cell_102/split/split_dim?
1sequential_102/lstm_102/while/lstm_cell_102/splitSplitDsequential_102/lstm_102/while/lstm_cell_102/split/split_dim:output:0<sequential_102/lstm_102/while/lstm_cell_102/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split23
1sequential_102/lstm_102/while/lstm_cell_102/split?
3sequential_102/lstm_102/while/lstm_cell_102/SigmoidSigmoid:sequential_102/lstm_102/while/lstm_cell_102/split:output:0*
T0*(
_output_shapes
:??????????25
3sequential_102/lstm_102/while/lstm_cell_102/Sigmoid?
5sequential_102/lstm_102/while/lstm_cell_102/Sigmoid_1Sigmoid:sequential_102/lstm_102/while/lstm_cell_102/split:output:1*
T0*(
_output_shapes
:??????????27
5sequential_102/lstm_102/while/lstm_cell_102/Sigmoid_1?
/sequential_102/lstm_102/while/lstm_cell_102/mulMul9sequential_102/lstm_102/while/lstm_cell_102/Sigmoid_1:y:0+sequential_102_lstm_102_while_placeholder_3*
T0*(
_output_shapes
:??????????21
/sequential_102/lstm_102/while/lstm_cell_102/mul?
0sequential_102/lstm_102/while/lstm_cell_102/ReluRelu:sequential_102/lstm_102/while/lstm_cell_102/split:output:2*
T0*(
_output_shapes
:??????????22
0sequential_102/lstm_102/while/lstm_cell_102/Relu?
1sequential_102/lstm_102/while/lstm_cell_102/mul_1Mul7sequential_102/lstm_102/while/lstm_cell_102/Sigmoid:y:0>sequential_102/lstm_102/while/lstm_cell_102/Relu:activations:0*
T0*(
_output_shapes
:??????????23
1sequential_102/lstm_102/while/lstm_cell_102/mul_1?
1sequential_102/lstm_102/while/lstm_cell_102/add_1AddV23sequential_102/lstm_102/while/lstm_cell_102/mul:z:05sequential_102/lstm_102/while/lstm_cell_102/mul_1:z:0*
T0*(
_output_shapes
:??????????23
1sequential_102/lstm_102/while/lstm_cell_102/add_1?
5sequential_102/lstm_102/while/lstm_cell_102/Sigmoid_2Sigmoid:sequential_102/lstm_102/while/lstm_cell_102/split:output:3*
T0*(
_output_shapes
:??????????27
5sequential_102/lstm_102/while/lstm_cell_102/Sigmoid_2?
2sequential_102/lstm_102/while/lstm_cell_102/Relu_1Relu5sequential_102/lstm_102/while/lstm_cell_102/add_1:z:0*
T0*(
_output_shapes
:??????????24
2sequential_102/lstm_102/while/lstm_cell_102/Relu_1?
1sequential_102/lstm_102/while/lstm_cell_102/mul_2Mul9sequential_102/lstm_102/while/lstm_cell_102/Sigmoid_2:y:0@sequential_102/lstm_102/while/lstm_cell_102/Relu_1:activations:0*
T0*(
_output_shapes
:??????????23
1sequential_102/lstm_102/while/lstm_cell_102/mul_2?
Bsequential_102/lstm_102/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_102_lstm_102_while_placeholder_1)sequential_102_lstm_102_while_placeholder5sequential_102/lstm_102/while/lstm_cell_102/mul_2:z:0*
_output_shapes
: *
element_dtype02D
Bsequential_102/lstm_102/while/TensorArrayV2Write/TensorListSetItem?
#sequential_102/lstm_102/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#sequential_102/lstm_102/while/add/y?
!sequential_102/lstm_102/while/addAddV2)sequential_102_lstm_102_while_placeholder,sequential_102/lstm_102/while/add/y:output:0*
T0*
_output_shapes
: 2#
!sequential_102/lstm_102/while/add?
%sequential_102/lstm_102/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2'
%sequential_102/lstm_102/while/add_1/y?
#sequential_102/lstm_102/while/add_1AddV2Hsequential_102_lstm_102_while_sequential_102_lstm_102_while_loop_counter.sequential_102/lstm_102/while/add_1/y:output:0*
T0*
_output_shapes
: 2%
#sequential_102/lstm_102/while/add_1?
&sequential_102/lstm_102/while/IdentityIdentity'sequential_102/lstm_102/while/add_1:z:0C^sequential_102/lstm_102/while/lstm_cell_102/BiasAdd/ReadVariableOpB^sequential_102/lstm_102/while/lstm_cell_102/MatMul/ReadVariableOpD^sequential_102/lstm_102/while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2(
&sequential_102/lstm_102/while/Identity?
(sequential_102/lstm_102/while/Identity_1IdentityNsequential_102_lstm_102_while_sequential_102_lstm_102_while_maximum_iterationsC^sequential_102/lstm_102/while/lstm_cell_102/BiasAdd/ReadVariableOpB^sequential_102/lstm_102/while/lstm_cell_102/MatMul/ReadVariableOpD^sequential_102/lstm_102/while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2*
(sequential_102/lstm_102/while/Identity_1?
(sequential_102/lstm_102/while/Identity_2Identity%sequential_102/lstm_102/while/add:z:0C^sequential_102/lstm_102/while/lstm_cell_102/BiasAdd/ReadVariableOpB^sequential_102/lstm_102/while/lstm_cell_102/MatMul/ReadVariableOpD^sequential_102/lstm_102/while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2*
(sequential_102/lstm_102/while/Identity_2?
(sequential_102/lstm_102/while/Identity_3IdentityRsequential_102/lstm_102/while/TensorArrayV2Write/TensorListSetItem:output_handle:0C^sequential_102/lstm_102/while/lstm_cell_102/BiasAdd/ReadVariableOpB^sequential_102/lstm_102/while/lstm_cell_102/MatMul/ReadVariableOpD^sequential_102/lstm_102/while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2*
(sequential_102/lstm_102/while/Identity_3?
(sequential_102/lstm_102/while/Identity_4Identity5sequential_102/lstm_102/while/lstm_cell_102/mul_2:z:0C^sequential_102/lstm_102/while/lstm_cell_102/BiasAdd/ReadVariableOpB^sequential_102/lstm_102/while/lstm_cell_102/MatMul/ReadVariableOpD^sequential_102/lstm_102/while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2*
(sequential_102/lstm_102/while/Identity_4?
(sequential_102/lstm_102/while/Identity_5Identity5sequential_102/lstm_102/while/lstm_cell_102/add_1:z:0C^sequential_102/lstm_102/while/lstm_cell_102/BiasAdd/ReadVariableOpB^sequential_102/lstm_102/while/lstm_cell_102/MatMul/ReadVariableOpD^sequential_102/lstm_102/while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2*
(sequential_102/lstm_102/while/Identity_5"Y
&sequential_102_lstm_102_while_identity/sequential_102/lstm_102/while/Identity:output:0"]
(sequential_102_lstm_102_while_identity_11sequential_102/lstm_102/while/Identity_1:output:0"]
(sequential_102_lstm_102_while_identity_21sequential_102/lstm_102/while/Identity_2:output:0"]
(sequential_102_lstm_102_while_identity_31sequential_102/lstm_102/while/Identity_3:output:0"]
(sequential_102_lstm_102_while_identity_41sequential_102/lstm_102/while/Identity_4:output:0"]
(sequential_102_lstm_102_while_identity_51sequential_102/lstm_102/while/Identity_5:output:0"?
Ksequential_102_lstm_102_while_lstm_cell_102_biasadd_readvariableop_resourceMsequential_102_lstm_102_while_lstm_cell_102_biasadd_readvariableop_resource_0"?
Lsequential_102_lstm_102_while_lstm_cell_102_matmul_1_readvariableop_resourceNsequential_102_lstm_102_while_lstm_cell_102_matmul_1_readvariableop_resource_0"?
Jsequential_102_lstm_102_while_lstm_cell_102_matmul_readvariableop_resourceLsequential_102_lstm_102_while_lstm_cell_102_matmul_readvariableop_resource_0"?
Esequential_102_lstm_102_while_sequential_102_lstm_102_strided_slice_1Gsequential_102_lstm_102_while_sequential_102_lstm_102_strided_slice_1_0"?
?sequential_102_lstm_102_while_tensorarrayv2read_tensorlistgetitem_sequential_102_lstm_102_tensorarrayunstack_tensorlistfromtensor?sequential_102_lstm_102_while_tensorarrayv2read_tensorlistgetitem_sequential_102_lstm_102_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2?
Bsequential_102/lstm_102/while/lstm_cell_102/BiasAdd/ReadVariableOpBsequential_102/lstm_102/while/lstm_cell_102/BiasAdd/ReadVariableOp2?
Asequential_102/lstm_102/while/lstm_cell_102/MatMul/ReadVariableOpAsequential_102/lstm_102/while/lstm_cell_102/MatMul/ReadVariableOp2?
Csequential_102/lstm_102/while/lstm_cell_102/MatMul_1/ReadVariableOpCsequential_102/lstm_102/while/lstm_cell_102/MatMul_1/ReadVariableOp: 
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
while_cond_5095255
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5095255___redundant_placeholder05
1while_while_cond_5095255___redundant_placeholder15
1while_while_cond_5095255___redundant_placeholder25
1while_while_cond_5095255___redundant_placeholder3
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
?&
?
while_body_5093483
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_102_5093507_0:	?1
while_lstm_cell_102_5093509_0:
??,
while_lstm_cell_102_5093511_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_102_5093507:	?/
while_lstm_cell_102_5093509:
??*
while_lstm_cell_102_5093511:	???+while/lstm_cell_102/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
+while/lstm_cell_102/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_102_5093507_0while_lstm_cell_102_5093509_0while_lstm_cell_102_5093511_0*
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
GPU 2J 8? *S
fNRL
J__inference_lstm_cell_102_layer_call_and_return_conditional_losses_50934052-
+while/lstm_cell_102/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_102/StatefulPartitionedCall:output:0*
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
while/IdentityIdentitywhile/add_1:z:0,^while/lstm_cell_102/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations,^while/lstm_cell_102/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0,^while/lstm_cell_102/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0,^while/lstm_cell_102/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity4while/lstm_cell_102/StatefulPartitionedCall:output:1,^while/lstm_cell_102/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identity4while/lstm_cell_102/StatefulPartitionedCall:output:2,^while/lstm_cell_102/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_102_5093507while_lstm_cell_102_5093507_0"<
while_lstm_cell_102_5093509while_lstm_cell_102_5093509_0"<
while_lstm_cell_102_5093511while_lstm_cell_102_5093511_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2Z
+while/lstm_cell_102/StatefulPartitionedCall+while/lstm_cell_102/StatefulPartitionedCall: 
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
?[
?
E__inference_lstm_102_layer_call_and_return_conditional_losses_5094214

inputs?
,lstm_cell_102_matmul_readvariableop_resource:	?B
.lstm_cell_102_matmul_1_readvariableop_resource:
??<
-lstm_cell_102_biasadd_readvariableop_resource:	?
identity??$lstm_cell_102/BiasAdd/ReadVariableOp?#lstm_cell_102/MatMul/ReadVariableOp?%lstm_cell_102/MatMul_1/ReadVariableOp?whileD
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
:?????????2
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
valueB"????   27
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
:?????????*
shrink_axis_mask2
strided_slice_2?
#lstm_cell_102/MatMul/ReadVariableOpReadVariableOp,lstm_cell_102_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02%
#lstm_cell_102/MatMul/ReadVariableOp?
lstm_cell_102/MatMulMatMulstrided_slice_2:output:0+lstm_cell_102/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/MatMul?
%lstm_cell_102/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_102_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02'
%lstm_cell_102/MatMul_1/ReadVariableOp?
lstm_cell_102/MatMul_1MatMulzeros:output:0-lstm_cell_102/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/MatMul_1?
lstm_cell_102/addAddV2lstm_cell_102/MatMul:product:0 lstm_cell_102/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/add?
$lstm_cell_102/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_102_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$lstm_cell_102/BiasAdd/ReadVariableOp?
lstm_cell_102/BiasAddBiasAddlstm_cell_102/add:z:0,lstm_cell_102/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/BiasAdd?
lstm_cell_102/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_102/split/split_dim?
lstm_cell_102/splitSplit&lstm_cell_102/split/split_dim:output:0lstm_cell_102/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell_102/split?
lstm_cell_102/SigmoidSigmoidlstm_cell_102/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/Sigmoid?
lstm_cell_102/Sigmoid_1Sigmoidlstm_cell_102/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_102/Sigmoid_1?
lstm_cell_102/mulMullstm_cell_102/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/mul?
lstm_cell_102/ReluRelulstm_cell_102/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell_102/Relu?
lstm_cell_102/mul_1Mullstm_cell_102/Sigmoid:y:0 lstm_cell_102/Relu:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/mul_1?
lstm_cell_102/add_1AddV2lstm_cell_102/mul:z:0lstm_cell_102/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/add_1?
lstm_cell_102/Sigmoid_2Sigmoidlstm_cell_102/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_102/Sigmoid_2?
lstm_cell_102/Relu_1Relulstm_cell_102/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/Relu_1?
lstm_cell_102/mul_2Mullstm_cell_102/Sigmoid_2:y:0"lstm_cell_102/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/mul_2?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_102_matmul_readvariableop_resource.lstm_cell_102_matmul_1_readvariableop_resource-lstm_cell_102_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_5094130*
condR
while_cond_5094129*M
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
IdentityIdentitystrided_slice_3:output:0%^lstm_cell_102/BiasAdd/ReadVariableOp$^lstm_cell_102/MatMul/ReadVariableOp&^lstm_cell_102/MatMul_1/ReadVariableOp^while*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_102/BiasAdd/ReadVariableOp$lstm_cell_102/BiasAdd/ReadVariableOp2J
#lstm_cell_102/MatMul/ReadVariableOp#lstm_cell_102/MatMul/ReadVariableOp2N
%lstm_cell_102/MatMul_1/ReadVariableOp%lstm_cell_102/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_lstm_102_layer_call_fn_5095351
inputs_0
unknown:	?
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
GPU 2J 8? *N
fIRG
E__inference_lstm_102_layer_call_and_return_conditional_losses_50933422
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
K__inference_sequential_102_layer_call_and_return_conditional_losses_5094013

inputs#
lstm_102_5093972:	?$
lstm_102_5093974:
??
lstm_102_5093976:	?$
dense_204_5093991:	?d
dense_204_5093993:d#
dense_205_5094007:d
dense_205_5094009:
identity??!dense_204/StatefulPartitionedCall?!dense_205/StatefulPartitionedCall? lstm_102/StatefulPartitionedCall?
 lstm_102/StatefulPartitionedCallStatefulPartitionedCallinputslstm_102_5093972lstm_102_5093974lstm_102_5093976*
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
GPU 2J 8? *N
fIRG
E__inference_lstm_102_layer_call_and_return_conditional_losses_50939712"
 lstm_102/StatefulPartitionedCall?
!dense_204/StatefulPartitionedCallStatefulPartitionedCall)lstm_102/StatefulPartitionedCall:output:0dense_204_5093991dense_204_5093993*
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
GPU 2J 8? *O
fJRH
F__inference_dense_204_layer_call_and_return_conditional_losses_50939902#
!dense_204/StatefulPartitionedCall?
!dense_205/StatefulPartitionedCallStatefulPartitionedCall*dense_204/StatefulPartitionedCall:output:0dense_205_5094007dense_205_5094009*
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
GPU 2J 8? *O
fJRH
F__inference_dense_205_layer_call_and_return_conditional_losses_50940062#
!dense_205/StatefulPartitionedCall?
IdentityIdentity*dense_205/StatefulPartitionedCall:output:0"^dense_204/StatefulPartitionedCall"^dense_205/StatefulPartitionedCall!^lstm_102/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2F
!dense_204/StatefulPartitionedCall!dense_204/StatefulPartitionedCall2F
!dense_205/StatefulPartitionedCall!dense_205/StatefulPartitionedCall2D
 lstm_102/StatefulPartitionedCall lstm_102/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
%__inference_signature_wrapper_5094370
lstm_102_input
unknown:	?
	unknown_0:
??
	unknown_1:	?
	unknown_2:	?d
	unknown_3:d
	unknown_4:d
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllstm_102_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
GPU 2J 8? *+
f&R$
"__inference__wrapped_model_50931842
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_102_input
?

?
F__inference_dense_204_layer_call_and_return_conditional_losses_5093990

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
?A
?
 __inference__traced_save_5095628
file_prefix/
+savev2_dense_204_kernel_read_readvariableop-
)savev2_dense_204_bias_read_readvariableop/
+savev2_dense_205_kernel_read_readvariableop-
)savev2_dense_205_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_102_lstm_cell_102_kernel_read_readvariableopF
Bsavev2_lstm_102_lstm_cell_102_recurrent_kernel_read_readvariableop:
6savev2_lstm_102_lstm_cell_102_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_204_kernel_m_read_readvariableop4
0savev2_adam_dense_204_bias_m_read_readvariableop6
2savev2_adam_dense_205_kernel_m_read_readvariableop4
0savev2_adam_dense_205_bias_m_read_readvariableopC
?savev2_adam_lstm_102_lstm_cell_102_kernel_m_read_readvariableopM
Isavev2_adam_lstm_102_lstm_cell_102_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_102_lstm_cell_102_bias_m_read_readvariableop6
2savev2_adam_dense_204_kernel_v_read_readvariableop4
0savev2_adam_dense_204_bias_v_read_readvariableop6
2savev2_adam_dense_205_kernel_v_read_readvariableop4
0savev2_adam_dense_205_bias_v_read_readvariableopC
?savev2_adam_lstm_102_lstm_cell_102_kernel_v_read_readvariableopM
Isavev2_adam_lstm_102_lstm_cell_102_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_102_lstm_cell_102_bias_v_read_readvariableop
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
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*M
valueDBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_204_kernel_read_readvariableop)savev2_dense_204_bias_read_readvariableop+savev2_dense_205_kernel_read_readvariableop)savev2_dense_205_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_102_lstm_cell_102_kernel_read_readvariableopBsavev2_lstm_102_lstm_cell_102_recurrent_kernel_read_readvariableop6savev2_lstm_102_lstm_cell_102_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_204_kernel_m_read_readvariableop0savev2_adam_dense_204_bias_m_read_readvariableop2savev2_adam_dense_205_kernel_m_read_readvariableop0savev2_adam_dense_205_bias_m_read_readvariableop?savev2_adam_lstm_102_lstm_cell_102_kernel_m_read_readvariableopIsavev2_adam_lstm_102_lstm_cell_102_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_102_lstm_cell_102_bias_m_read_readvariableop2savev2_adam_dense_204_kernel_v_read_readvariableop0savev2_adam_dense_204_bias_v_read_readvariableop2savev2_adam_dense_205_kernel_v_read_readvariableop0savev2_adam_dense_205_bias_v_read_readvariableop?savev2_adam_lstm_102_lstm_cell_102_kernel_v_read_readvariableopIsavev2_adam_lstm_102_lstm_cell_102_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_102_lstm_cell_102_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?: :	?d:d:d:: : : : : :	?:
??:?: : :	?d:d:d::	?:
??:?:	?d:d:d::	?:
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
:	?:&"
 
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
:	?:&"
 
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
:	?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:

_output_shapes
: 
?
?
while_cond_5093272
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5093272___redundant_placeholder05
1while_while_cond_5093272___redundant_placeholder15
1while_while_cond_5093272___redundant_placeholder25
1while_while_cond_5093272___redundant_placeholder3
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
*__inference_lstm_102_layer_call_fn_5095373

inputs
unknown:	?
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
GPU 2J 8? *N
fIRG
E__inference_lstm_102_layer_call_and_return_conditional_losses_50939712
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?\
?
E__inference_lstm_102_layer_call_and_return_conditional_losses_5094887
inputs_0?
,lstm_cell_102_matmul_readvariableop_resource:	?B
.lstm_cell_102_matmul_1_readvariableop_resource:
??<
-lstm_cell_102_biasadd_readvariableop_resource:	?
identity??$lstm_cell_102/BiasAdd/ReadVariableOp?#lstm_cell_102/MatMul/ReadVariableOp?%lstm_cell_102/MatMul_1/ReadVariableOp?whileF
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
 :??????????????????2
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
valueB"????   27
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
:?????????*
shrink_axis_mask2
strided_slice_2?
#lstm_cell_102/MatMul/ReadVariableOpReadVariableOp,lstm_cell_102_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02%
#lstm_cell_102/MatMul/ReadVariableOp?
lstm_cell_102/MatMulMatMulstrided_slice_2:output:0+lstm_cell_102/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/MatMul?
%lstm_cell_102/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_102_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02'
%lstm_cell_102/MatMul_1/ReadVariableOp?
lstm_cell_102/MatMul_1MatMulzeros:output:0-lstm_cell_102/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/MatMul_1?
lstm_cell_102/addAddV2lstm_cell_102/MatMul:product:0 lstm_cell_102/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/add?
$lstm_cell_102/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_102_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$lstm_cell_102/BiasAdd/ReadVariableOp?
lstm_cell_102/BiasAddBiasAddlstm_cell_102/add:z:0,lstm_cell_102/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/BiasAdd?
lstm_cell_102/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_102/split/split_dim?
lstm_cell_102/splitSplit&lstm_cell_102/split/split_dim:output:0lstm_cell_102/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell_102/split?
lstm_cell_102/SigmoidSigmoidlstm_cell_102/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/Sigmoid?
lstm_cell_102/Sigmoid_1Sigmoidlstm_cell_102/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_102/Sigmoid_1?
lstm_cell_102/mulMullstm_cell_102/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/mul?
lstm_cell_102/ReluRelulstm_cell_102/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell_102/Relu?
lstm_cell_102/mul_1Mullstm_cell_102/Sigmoid:y:0 lstm_cell_102/Relu:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/mul_1?
lstm_cell_102/add_1AddV2lstm_cell_102/mul:z:0lstm_cell_102/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/add_1?
lstm_cell_102/Sigmoid_2Sigmoidlstm_cell_102/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_102/Sigmoid_2?
lstm_cell_102/Relu_1Relulstm_cell_102/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/Relu_1?
lstm_cell_102/mul_2Mullstm_cell_102/Sigmoid_2:y:0"lstm_cell_102/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/mul_2?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_102_matmul_readvariableop_resource.lstm_cell_102_matmul_1_readvariableop_resource-lstm_cell_102_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_5094803*
condR
while_cond_5094802*M
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
IdentityIdentitystrided_slice_3:output:0%^lstm_cell_102/BiasAdd/ReadVariableOp$^lstm_cell_102/MatMul/ReadVariableOp&^lstm_cell_102/MatMul_1/ReadVariableOp^while*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_102/BiasAdd/ReadVariableOp$lstm_cell_102/BiasAdd/ReadVariableOp2J
#lstm_cell_102/MatMul/ReadVariableOp#lstm_cell_102/MatMul/ReadVariableOp2N
%lstm_cell_102/MatMul_1/ReadVariableOp%lstm_cell_102/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?D
?
while_body_5094803
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_102_matmul_readvariableop_resource_0:	?J
6while_lstm_cell_102_matmul_1_readvariableop_resource_0:
??D
5while_lstm_cell_102_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_102_matmul_readvariableop_resource:	?H
4while_lstm_cell_102_matmul_1_readvariableop_resource:
??B
3while_lstm_cell_102_biasadd_readvariableop_resource:	???*while/lstm_cell_102/BiasAdd/ReadVariableOp?)while/lstm_cell_102/MatMul/ReadVariableOp?+while/lstm_cell_102/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
)while/lstm_cell_102/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_102_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02+
)while/lstm_cell_102/MatMul/ReadVariableOp?
while/lstm_cell_102/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_102/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/MatMul?
+while/lstm_cell_102/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_102_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02-
+while/lstm_cell_102/MatMul_1/ReadVariableOp?
while/lstm_cell_102/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_102/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/MatMul_1?
while/lstm_cell_102/addAddV2$while/lstm_cell_102/MatMul:product:0&while/lstm_cell_102/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/add?
*while/lstm_cell_102/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_102_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02,
*while/lstm_cell_102/BiasAdd/ReadVariableOp?
while/lstm_cell_102/BiasAddBiasAddwhile/lstm_cell_102/add:z:02while/lstm_cell_102/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/BiasAdd?
#while/lstm_cell_102/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_102/split/split_dim?
while/lstm_cell_102/splitSplit,while/lstm_cell_102/split/split_dim:output:0$while/lstm_cell_102/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell_102/split?
while/lstm_cell_102/SigmoidSigmoid"while/lstm_cell_102/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/Sigmoid?
while/lstm_cell_102/Sigmoid_1Sigmoid"while/lstm_cell_102/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/Sigmoid_1?
while/lstm_cell_102/mulMul!while/lstm_cell_102/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/mul?
while/lstm_cell_102/ReluRelu"while/lstm_cell_102/split:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/Relu?
while/lstm_cell_102/mul_1Mulwhile/lstm_cell_102/Sigmoid:y:0&while/lstm_cell_102/Relu:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/mul_1?
while/lstm_cell_102/add_1AddV2while/lstm_cell_102/mul:z:0while/lstm_cell_102/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/add_1?
while/lstm_cell_102/Sigmoid_2Sigmoid"while/lstm_cell_102/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/Sigmoid_2?
while/lstm_cell_102/Relu_1Reluwhile/lstm_cell_102/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/Relu_1?
while/lstm_cell_102/mul_2Mul!while/lstm_cell_102/Sigmoid_2:y:0(while/lstm_cell_102/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_102/mul_2:z:0*
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
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_102/mul_2:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_102/add_1:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_102_biasadd_readvariableop_resource5while_lstm_cell_102_biasadd_readvariableop_resource_0"n
4while_lstm_cell_102_matmul_1_readvariableop_resource6while_lstm_cell_102_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_102_matmul_readvariableop_resource4while_lstm_cell_102_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2X
*while/lstm_cell_102/BiasAdd/ReadVariableOp*while/lstm_cell_102/BiasAdd/ReadVariableOp2V
)while/lstm_cell_102/MatMul/ReadVariableOp)while/lstm_cell_102/MatMul/ReadVariableOp2Z
+while/lstm_cell_102/MatMul_1/ReadVariableOp+while/lstm_cell_102/MatMul_1/ReadVariableOp: 
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
while_cond_5094953
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5094953___redundant_placeholder05
1while_while_cond_5094953___redundant_placeholder15
1while_while_cond_5094953___redundant_placeholder25
1while_while_cond_5094953___redundant_placeholder3
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
?D
?
while_body_5095256
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_102_matmul_readvariableop_resource_0:	?J
6while_lstm_cell_102_matmul_1_readvariableop_resource_0:
??D
5while_lstm_cell_102_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_102_matmul_readvariableop_resource:	?H
4while_lstm_cell_102_matmul_1_readvariableop_resource:
??B
3while_lstm_cell_102_biasadd_readvariableop_resource:	???*while/lstm_cell_102/BiasAdd/ReadVariableOp?)while/lstm_cell_102/MatMul/ReadVariableOp?+while/lstm_cell_102/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
)while/lstm_cell_102/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_102_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02+
)while/lstm_cell_102/MatMul/ReadVariableOp?
while/lstm_cell_102/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_102/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/MatMul?
+while/lstm_cell_102/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_102_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02-
+while/lstm_cell_102/MatMul_1/ReadVariableOp?
while/lstm_cell_102/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_102/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/MatMul_1?
while/lstm_cell_102/addAddV2$while/lstm_cell_102/MatMul:product:0&while/lstm_cell_102/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/add?
*while/lstm_cell_102/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_102_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02,
*while/lstm_cell_102/BiasAdd/ReadVariableOp?
while/lstm_cell_102/BiasAddBiasAddwhile/lstm_cell_102/add:z:02while/lstm_cell_102/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/BiasAdd?
#while/lstm_cell_102/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_102/split/split_dim?
while/lstm_cell_102/splitSplit,while/lstm_cell_102/split/split_dim:output:0$while/lstm_cell_102/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell_102/split?
while/lstm_cell_102/SigmoidSigmoid"while/lstm_cell_102/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/Sigmoid?
while/lstm_cell_102/Sigmoid_1Sigmoid"while/lstm_cell_102/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/Sigmoid_1?
while/lstm_cell_102/mulMul!while/lstm_cell_102/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/mul?
while/lstm_cell_102/ReluRelu"while/lstm_cell_102/split:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/Relu?
while/lstm_cell_102/mul_1Mulwhile/lstm_cell_102/Sigmoid:y:0&while/lstm_cell_102/Relu:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/mul_1?
while/lstm_cell_102/add_1AddV2while/lstm_cell_102/mul:z:0while/lstm_cell_102/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/add_1?
while/lstm_cell_102/Sigmoid_2Sigmoid"while/lstm_cell_102/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/Sigmoid_2?
while/lstm_cell_102/Relu_1Reluwhile/lstm_cell_102/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/Relu_1?
while/lstm_cell_102/mul_2Mul!while/lstm_cell_102/Sigmoid_2:y:0(while/lstm_cell_102/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_102/mul_2:z:0*
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
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_102/mul_2:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_102/add_1:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_102_biasadd_readvariableop_resource5while_lstm_cell_102_biasadd_readvariableop_resource_0"n
4while_lstm_cell_102_matmul_1_readvariableop_resource6while_lstm_cell_102_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_102_matmul_readvariableop_resource4while_lstm_cell_102_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2X
*while/lstm_cell_102/BiasAdd/ReadVariableOp*while/lstm_cell_102/BiasAdd/ReadVariableOp2V
)while/lstm_cell_102/MatMul/ReadVariableOp)while/lstm_cell_102/MatMul/ReadVariableOp2Z
+while/lstm_cell_102/MatMul_1/ReadVariableOp+while/lstm_cell_102/MatMul_1/ReadVariableOp: 
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
F__inference_dense_205_layer_call_and_return_conditional_losses_5094006

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
?
?
K__inference_sequential_102_layer_call_and_return_conditional_losses_5094343
lstm_102_input#
lstm_102_5094325:	?$
lstm_102_5094327:
??
lstm_102_5094329:	?$
dense_204_5094332:	?d
dense_204_5094334:d#
dense_205_5094337:d
dense_205_5094339:
identity??!dense_204/StatefulPartitionedCall?!dense_205/StatefulPartitionedCall? lstm_102/StatefulPartitionedCall?
 lstm_102/StatefulPartitionedCallStatefulPartitionedCalllstm_102_inputlstm_102_5094325lstm_102_5094327lstm_102_5094329*
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
GPU 2J 8? *N
fIRG
E__inference_lstm_102_layer_call_and_return_conditional_losses_50942142"
 lstm_102/StatefulPartitionedCall?
!dense_204/StatefulPartitionedCallStatefulPartitionedCall)lstm_102/StatefulPartitionedCall:output:0dense_204_5094332dense_204_5094334*
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
GPU 2J 8? *O
fJRH
F__inference_dense_204_layer_call_and_return_conditional_losses_50939902#
!dense_204/StatefulPartitionedCall?
!dense_205/StatefulPartitionedCallStatefulPartitionedCall*dense_204/StatefulPartitionedCall:output:0dense_205_5094337dense_205_5094339*
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
GPU 2J 8? *O
fJRH
F__inference_dense_205_layer_call_and_return_conditional_losses_50940062#
!dense_205/StatefulPartitionedCall?
IdentityIdentity*dense_205/StatefulPartitionedCall:output:0"^dense_204/StatefulPartitionedCall"^dense_205/StatefulPartitionedCall!^lstm_102/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2F
!dense_204/StatefulPartitionedCall!dense_204/StatefulPartitionedCall2F
!dense_205/StatefulPartitionedCall!dense_205/StatefulPartitionedCall2D
 lstm_102/StatefulPartitionedCall lstm_102/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_102_input
?&
?
while_body_5093273
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_102_5093297_0:	?1
while_lstm_cell_102_5093299_0:
??,
while_lstm_cell_102_5093301_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_102_5093297:	?/
while_lstm_cell_102_5093299:
??*
while_lstm_cell_102_5093301:	???+while/lstm_cell_102/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
+while/lstm_cell_102/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_102_5093297_0while_lstm_cell_102_5093299_0while_lstm_cell_102_5093301_0*
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
GPU 2J 8? *S
fNRL
J__inference_lstm_cell_102_layer_call_and_return_conditional_losses_50932592-
+while/lstm_cell_102/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_102/StatefulPartitionedCall:output:0*
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
while/IdentityIdentitywhile/add_1:z:0,^while/lstm_cell_102/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations,^while/lstm_cell_102/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0,^while/lstm_cell_102/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0,^while/lstm_cell_102/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity4while/lstm_cell_102/StatefulPartitionedCall:output:1,^while/lstm_cell_102/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identity4while/lstm_cell_102/StatefulPartitionedCall:output:2,^while/lstm_cell_102/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_102_5093297while_lstm_cell_102_5093297_0"<
while_lstm_cell_102_5093299while_lstm_cell_102_5093299_0"<
while_lstm_cell_102_5093301while_lstm_cell_102_5093301_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2Z
+while/lstm_cell_102/StatefulPartitionedCall+while/lstm_cell_102/StatefulPartitionedCall: 
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
?
0__inference_sequential_102_layer_call_fn_5094030
lstm_102_input
unknown:	?
	unknown_0:
??
	unknown_1:	?
	unknown_2:	?d
	unknown_3:d
	unknown_4:d
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllstm_102_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
GPU 2J 8? *T
fORM
K__inference_sequential_102_layer_call_and_return_conditional_losses_50940132
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_102_input
?
?
while_cond_5093482
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5093482___redundant_placeholder05
1while_while_cond_5093482___redundant_placeholder15
1while_while_cond_5093482___redundant_placeholder25
1while_while_cond_5093482___redundant_placeholder3
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
F__inference_dense_204_layer_call_and_return_conditional_losses_5095395

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
?Q
?

lstm_102_while_body_5094437.
*lstm_102_while_lstm_102_while_loop_counter4
0lstm_102_while_lstm_102_while_maximum_iterations
lstm_102_while_placeholder 
lstm_102_while_placeholder_1 
lstm_102_while_placeholder_2 
lstm_102_while_placeholder_3-
)lstm_102_while_lstm_102_strided_slice_1_0i
elstm_102_while_tensorarrayv2read_tensorlistgetitem_lstm_102_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_102_while_lstm_cell_102_matmul_readvariableop_resource_0:	?S
?lstm_102_while_lstm_cell_102_matmul_1_readvariableop_resource_0:
??M
>lstm_102_while_lstm_cell_102_biasadd_readvariableop_resource_0:	?
lstm_102_while_identity
lstm_102_while_identity_1
lstm_102_while_identity_2
lstm_102_while_identity_3
lstm_102_while_identity_4
lstm_102_while_identity_5+
'lstm_102_while_lstm_102_strided_slice_1g
clstm_102_while_tensorarrayv2read_tensorlistgetitem_lstm_102_tensorarrayunstack_tensorlistfromtensorN
;lstm_102_while_lstm_cell_102_matmul_readvariableop_resource:	?Q
=lstm_102_while_lstm_cell_102_matmul_1_readvariableop_resource:
??K
<lstm_102_while_lstm_cell_102_biasadd_readvariableop_resource:	???3lstm_102/while/lstm_cell_102/BiasAdd/ReadVariableOp?2lstm_102/while/lstm_cell_102/MatMul/ReadVariableOp?4lstm_102/while/lstm_cell_102/MatMul_1/ReadVariableOp?
@lstm_102/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2B
@lstm_102/while/TensorArrayV2Read/TensorListGetItem/element_shape?
2lstm_102/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_102_while_tensorarrayv2read_tensorlistgetitem_lstm_102_tensorarrayunstack_tensorlistfromtensor_0lstm_102_while_placeholderIlstm_102/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype024
2lstm_102/while/TensorArrayV2Read/TensorListGetItem?
2lstm_102/while/lstm_cell_102/MatMul/ReadVariableOpReadVariableOp=lstm_102_while_lstm_cell_102_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype024
2lstm_102/while/lstm_cell_102/MatMul/ReadVariableOp?
#lstm_102/while/lstm_cell_102/MatMulMatMul9lstm_102/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_102/while/lstm_cell_102/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2%
#lstm_102/while/lstm_cell_102/MatMul?
4lstm_102/while/lstm_cell_102/MatMul_1/ReadVariableOpReadVariableOp?lstm_102_while_lstm_cell_102_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype026
4lstm_102/while/lstm_cell_102/MatMul_1/ReadVariableOp?
%lstm_102/while/lstm_cell_102/MatMul_1MatMullstm_102_while_placeholder_2<lstm_102/while/lstm_cell_102/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2'
%lstm_102/while/lstm_cell_102/MatMul_1?
 lstm_102/while/lstm_cell_102/addAddV2-lstm_102/while/lstm_cell_102/MatMul:product:0/lstm_102/while/lstm_cell_102/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2"
 lstm_102/while/lstm_cell_102/add?
3lstm_102/while/lstm_cell_102/BiasAdd/ReadVariableOpReadVariableOp>lstm_102_while_lstm_cell_102_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype025
3lstm_102/while/lstm_cell_102/BiasAdd/ReadVariableOp?
$lstm_102/while/lstm_cell_102/BiasAddBiasAdd$lstm_102/while/lstm_cell_102/add:z:0;lstm_102/while/lstm_cell_102/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2&
$lstm_102/while/lstm_cell_102/BiasAdd?
,lstm_102/while/lstm_cell_102/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2.
,lstm_102/while/lstm_cell_102/split/split_dim?
"lstm_102/while/lstm_cell_102/splitSplit5lstm_102/while/lstm_cell_102/split/split_dim:output:0-lstm_102/while/lstm_cell_102/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2$
"lstm_102/while/lstm_cell_102/split?
$lstm_102/while/lstm_cell_102/SigmoidSigmoid+lstm_102/while/lstm_cell_102/split:output:0*
T0*(
_output_shapes
:??????????2&
$lstm_102/while/lstm_cell_102/Sigmoid?
&lstm_102/while/lstm_cell_102/Sigmoid_1Sigmoid+lstm_102/while/lstm_cell_102/split:output:1*
T0*(
_output_shapes
:??????????2(
&lstm_102/while/lstm_cell_102/Sigmoid_1?
 lstm_102/while/lstm_cell_102/mulMul*lstm_102/while/lstm_cell_102/Sigmoid_1:y:0lstm_102_while_placeholder_3*
T0*(
_output_shapes
:??????????2"
 lstm_102/while/lstm_cell_102/mul?
!lstm_102/while/lstm_cell_102/ReluRelu+lstm_102/while/lstm_cell_102/split:output:2*
T0*(
_output_shapes
:??????????2#
!lstm_102/while/lstm_cell_102/Relu?
"lstm_102/while/lstm_cell_102/mul_1Mul(lstm_102/while/lstm_cell_102/Sigmoid:y:0/lstm_102/while/lstm_cell_102/Relu:activations:0*
T0*(
_output_shapes
:??????????2$
"lstm_102/while/lstm_cell_102/mul_1?
"lstm_102/while/lstm_cell_102/add_1AddV2$lstm_102/while/lstm_cell_102/mul:z:0&lstm_102/while/lstm_cell_102/mul_1:z:0*
T0*(
_output_shapes
:??????????2$
"lstm_102/while/lstm_cell_102/add_1?
&lstm_102/while/lstm_cell_102/Sigmoid_2Sigmoid+lstm_102/while/lstm_cell_102/split:output:3*
T0*(
_output_shapes
:??????????2(
&lstm_102/while/lstm_cell_102/Sigmoid_2?
#lstm_102/while/lstm_cell_102/Relu_1Relu&lstm_102/while/lstm_cell_102/add_1:z:0*
T0*(
_output_shapes
:??????????2%
#lstm_102/while/lstm_cell_102/Relu_1?
"lstm_102/while/lstm_cell_102/mul_2Mul*lstm_102/while/lstm_cell_102/Sigmoid_2:y:01lstm_102/while/lstm_cell_102/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2$
"lstm_102/while/lstm_cell_102/mul_2?
3lstm_102/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_102_while_placeholder_1lstm_102_while_placeholder&lstm_102/while/lstm_cell_102/mul_2:z:0*
_output_shapes
: *
element_dtype025
3lstm_102/while/TensorArrayV2Write/TensorListSetItemn
lstm_102/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_102/while/add/y?
lstm_102/while/addAddV2lstm_102_while_placeholderlstm_102/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_102/while/addr
lstm_102/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_102/while/add_1/y?
lstm_102/while/add_1AddV2*lstm_102_while_lstm_102_while_loop_counterlstm_102/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_102/while/add_1?
lstm_102/while/IdentityIdentitylstm_102/while/add_1:z:04^lstm_102/while/lstm_cell_102/BiasAdd/ReadVariableOp3^lstm_102/while/lstm_cell_102/MatMul/ReadVariableOp5^lstm_102/while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_102/while/Identity?
lstm_102/while/Identity_1Identity0lstm_102_while_lstm_102_while_maximum_iterations4^lstm_102/while/lstm_cell_102/BiasAdd/ReadVariableOp3^lstm_102/while/lstm_cell_102/MatMul/ReadVariableOp5^lstm_102/while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_102/while/Identity_1?
lstm_102/while/Identity_2Identitylstm_102/while/add:z:04^lstm_102/while/lstm_cell_102/BiasAdd/ReadVariableOp3^lstm_102/while/lstm_cell_102/MatMul/ReadVariableOp5^lstm_102/while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_102/while/Identity_2?
lstm_102/while/Identity_3IdentityClstm_102/while/TensorArrayV2Write/TensorListSetItem:output_handle:04^lstm_102/while/lstm_cell_102/BiasAdd/ReadVariableOp3^lstm_102/while/lstm_cell_102/MatMul/ReadVariableOp5^lstm_102/while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_102/while/Identity_3?
lstm_102/while/Identity_4Identity&lstm_102/while/lstm_cell_102/mul_2:z:04^lstm_102/while/lstm_cell_102/BiasAdd/ReadVariableOp3^lstm_102/while/lstm_cell_102/MatMul/ReadVariableOp5^lstm_102/while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
lstm_102/while/Identity_4?
lstm_102/while/Identity_5Identity&lstm_102/while/lstm_cell_102/add_1:z:04^lstm_102/while/lstm_cell_102/BiasAdd/ReadVariableOp3^lstm_102/while/lstm_cell_102/MatMul/ReadVariableOp5^lstm_102/while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
lstm_102/while/Identity_5";
lstm_102_while_identity lstm_102/while/Identity:output:0"?
lstm_102_while_identity_1"lstm_102/while/Identity_1:output:0"?
lstm_102_while_identity_2"lstm_102/while/Identity_2:output:0"?
lstm_102_while_identity_3"lstm_102/while/Identity_3:output:0"?
lstm_102_while_identity_4"lstm_102/while/Identity_4:output:0"?
lstm_102_while_identity_5"lstm_102/while/Identity_5:output:0"T
'lstm_102_while_lstm_102_strided_slice_1)lstm_102_while_lstm_102_strided_slice_1_0"~
<lstm_102_while_lstm_cell_102_biasadd_readvariableop_resource>lstm_102_while_lstm_cell_102_biasadd_readvariableop_resource_0"?
=lstm_102_while_lstm_cell_102_matmul_1_readvariableop_resource?lstm_102_while_lstm_cell_102_matmul_1_readvariableop_resource_0"|
;lstm_102_while_lstm_cell_102_matmul_readvariableop_resource=lstm_102_while_lstm_cell_102_matmul_readvariableop_resource_0"?
clstm_102_while_tensorarrayv2read_tensorlistgetitem_lstm_102_tensorarrayunstack_tensorlistfromtensorelstm_102_while_tensorarrayv2read_tensorlistgetitem_lstm_102_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2j
3lstm_102/while/lstm_cell_102/BiasAdd/ReadVariableOp3lstm_102/while/lstm_cell_102/BiasAdd/ReadVariableOp2h
2lstm_102/while/lstm_cell_102/MatMul/ReadVariableOp2lstm_102/while/lstm_cell_102/MatMul/ReadVariableOp2l
4lstm_102/while/lstm_cell_102/MatMul_1/ReadVariableOp4lstm_102/while/lstm_cell_102/MatMul_1/ReadVariableOp: 
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
?
J__inference_lstm_cell_102_layer_call_and_return_conditional_losses_5095487

inputs
states_0
states_11
matmul_readvariableop_resource:	?4
 matmul_1_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
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
A:?????????:??????????:??????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
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
?
/__inference_lstm_cell_102_layer_call_fn_5095504

inputs
states_0
states_1
unknown:	?
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
GPU 2J 8? *S
fNRL
J__inference_lstm_cell_102_layer_call_and_return_conditional_losses_50932592
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
A:?????????:??????????:??????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
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
?D
?
while_body_5095105
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_102_matmul_readvariableop_resource_0:	?J
6while_lstm_cell_102_matmul_1_readvariableop_resource_0:
??D
5while_lstm_cell_102_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_102_matmul_readvariableop_resource:	?H
4while_lstm_cell_102_matmul_1_readvariableop_resource:
??B
3while_lstm_cell_102_biasadd_readvariableop_resource:	???*while/lstm_cell_102/BiasAdd/ReadVariableOp?)while/lstm_cell_102/MatMul/ReadVariableOp?+while/lstm_cell_102/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
)while/lstm_cell_102/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_102_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02+
)while/lstm_cell_102/MatMul/ReadVariableOp?
while/lstm_cell_102/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_102/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/MatMul?
+while/lstm_cell_102/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_102_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02-
+while/lstm_cell_102/MatMul_1/ReadVariableOp?
while/lstm_cell_102/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_102/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/MatMul_1?
while/lstm_cell_102/addAddV2$while/lstm_cell_102/MatMul:product:0&while/lstm_cell_102/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/add?
*while/lstm_cell_102/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_102_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02,
*while/lstm_cell_102/BiasAdd/ReadVariableOp?
while/lstm_cell_102/BiasAddBiasAddwhile/lstm_cell_102/add:z:02while/lstm_cell_102/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/BiasAdd?
#while/lstm_cell_102/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_102/split/split_dim?
while/lstm_cell_102/splitSplit,while/lstm_cell_102/split/split_dim:output:0$while/lstm_cell_102/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell_102/split?
while/lstm_cell_102/SigmoidSigmoid"while/lstm_cell_102/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/Sigmoid?
while/lstm_cell_102/Sigmoid_1Sigmoid"while/lstm_cell_102/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/Sigmoid_1?
while/lstm_cell_102/mulMul!while/lstm_cell_102/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/mul?
while/lstm_cell_102/ReluRelu"while/lstm_cell_102/split:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/Relu?
while/lstm_cell_102/mul_1Mulwhile/lstm_cell_102/Sigmoid:y:0&while/lstm_cell_102/Relu:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/mul_1?
while/lstm_cell_102/add_1AddV2while/lstm_cell_102/mul:z:0while/lstm_cell_102/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/add_1?
while/lstm_cell_102/Sigmoid_2Sigmoid"while/lstm_cell_102/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/Sigmoid_2?
while/lstm_cell_102/Relu_1Reluwhile/lstm_cell_102/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/Relu_1?
while/lstm_cell_102/mul_2Mul!while/lstm_cell_102/Sigmoid_2:y:0(while/lstm_cell_102/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_102/mul_2:z:0*
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
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_102/mul_2:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_102/add_1:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_102_biasadd_readvariableop_resource5while_lstm_cell_102_biasadd_readvariableop_resource_0"n
4while_lstm_cell_102_matmul_1_readvariableop_resource6while_lstm_cell_102_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_102_matmul_readvariableop_resource4while_lstm_cell_102_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2X
*while/lstm_cell_102/BiasAdd/ReadVariableOp*while/lstm_cell_102/BiasAdd/ReadVariableOp2V
)while/lstm_cell_102/MatMul/ReadVariableOp)while/lstm_cell_102/MatMul/ReadVariableOp2Z
+while/lstm_cell_102/MatMul_1/ReadVariableOp+while/lstm_cell_102/MatMul_1/ReadVariableOp: 
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
?[
?
E__inference_lstm_102_layer_call_and_return_conditional_losses_5093971

inputs?
,lstm_cell_102_matmul_readvariableop_resource:	?B
.lstm_cell_102_matmul_1_readvariableop_resource:
??<
-lstm_cell_102_biasadd_readvariableop_resource:	?
identity??$lstm_cell_102/BiasAdd/ReadVariableOp?#lstm_cell_102/MatMul/ReadVariableOp?%lstm_cell_102/MatMul_1/ReadVariableOp?whileD
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
:?????????2
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
valueB"????   27
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
:?????????*
shrink_axis_mask2
strided_slice_2?
#lstm_cell_102/MatMul/ReadVariableOpReadVariableOp,lstm_cell_102_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02%
#lstm_cell_102/MatMul/ReadVariableOp?
lstm_cell_102/MatMulMatMulstrided_slice_2:output:0+lstm_cell_102/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/MatMul?
%lstm_cell_102/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_102_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02'
%lstm_cell_102/MatMul_1/ReadVariableOp?
lstm_cell_102/MatMul_1MatMulzeros:output:0-lstm_cell_102/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/MatMul_1?
lstm_cell_102/addAddV2lstm_cell_102/MatMul:product:0 lstm_cell_102/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/add?
$lstm_cell_102/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_102_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$lstm_cell_102/BiasAdd/ReadVariableOp?
lstm_cell_102/BiasAddBiasAddlstm_cell_102/add:z:0,lstm_cell_102/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/BiasAdd?
lstm_cell_102/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_102/split/split_dim?
lstm_cell_102/splitSplit&lstm_cell_102/split/split_dim:output:0lstm_cell_102/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell_102/split?
lstm_cell_102/SigmoidSigmoidlstm_cell_102/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/Sigmoid?
lstm_cell_102/Sigmoid_1Sigmoidlstm_cell_102/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_102/Sigmoid_1?
lstm_cell_102/mulMullstm_cell_102/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/mul?
lstm_cell_102/ReluRelulstm_cell_102/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell_102/Relu?
lstm_cell_102/mul_1Mullstm_cell_102/Sigmoid:y:0 lstm_cell_102/Relu:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/mul_1?
lstm_cell_102/add_1AddV2lstm_cell_102/mul:z:0lstm_cell_102/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/add_1?
lstm_cell_102/Sigmoid_2Sigmoidlstm_cell_102/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_102/Sigmoid_2?
lstm_cell_102/Relu_1Relulstm_cell_102/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/Relu_1?
lstm_cell_102/mul_2Mullstm_cell_102/Sigmoid_2:y:0"lstm_cell_102/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/mul_2?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_102_matmul_readvariableop_resource.lstm_cell_102_matmul_1_readvariableop_resource-lstm_cell_102_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_5093887*
condR
while_cond_5093886*M
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
IdentityIdentitystrided_slice_3:output:0%^lstm_cell_102/BiasAdd/ReadVariableOp$^lstm_cell_102/MatMul/ReadVariableOp&^lstm_cell_102/MatMul_1/ReadVariableOp^while*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_102/BiasAdd/ReadVariableOp$lstm_cell_102/BiasAdd/ReadVariableOp2J
#lstm_cell_102/MatMul/ReadVariableOp#lstm_cell_102/MatMul/ReadVariableOp2N
%lstm_cell_102/MatMul_1/ReadVariableOp%lstm_cell_102/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?E
?
E__inference_lstm_102_layer_call_and_return_conditional_losses_5093552

inputs(
lstm_cell_102_5093470:	?)
lstm_cell_102_5093472:
??$
lstm_cell_102_5093474:	?
identity??%lstm_cell_102/StatefulPartitionedCall?whileD
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
 :??????????????????2
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
valueB"????   27
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
:?????????*
shrink_axis_mask2
strided_slice_2?
%lstm_cell_102/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_102_5093470lstm_cell_102_5093472lstm_cell_102_5093474*
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
GPU 2J 8? *S
fNRL
J__inference_lstm_cell_102_layer_call_and_return_conditional_losses_50934052'
%lstm_cell_102/StatefulPartitionedCall?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_102_5093470lstm_cell_102_5093472lstm_cell_102_5093474*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_5093483*
condR
while_cond_5093482*M
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
IdentityIdentitystrided_slice_3:output:0&^lstm_cell_102/StatefulPartitionedCall^while*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_102/StatefulPartitionedCall%lstm_cell_102/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?

?
lstm_102_while_cond_5094600.
*lstm_102_while_lstm_102_while_loop_counter4
0lstm_102_while_lstm_102_while_maximum_iterations
lstm_102_while_placeholder 
lstm_102_while_placeholder_1 
lstm_102_while_placeholder_2 
lstm_102_while_placeholder_30
,lstm_102_while_less_lstm_102_strided_slice_1G
Clstm_102_while_lstm_102_while_cond_5094600___redundant_placeholder0G
Clstm_102_while_lstm_102_while_cond_5094600___redundant_placeholder1G
Clstm_102_while_lstm_102_while_cond_5094600___redundant_placeholder2G
Clstm_102_while_lstm_102_while_cond_5094600___redundant_placeholder3
lstm_102_while_identity
?
lstm_102/while/LessLesslstm_102_while_placeholder,lstm_102_while_less_lstm_102_strided_slice_1*
T0*
_output_shapes
: 2
lstm_102/while/Lessx
lstm_102/while/IdentityIdentitylstm_102/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_102/while/Identity";
lstm_102_while_identity lstm_102/while/Identity:output:0*(
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
?~
?
K__inference_sequential_102_layer_call_and_return_conditional_losses_5094534

inputsH
5lstm_102_lstm_cell_102_matmul_readvariableop_resource:	?K
7lstm_102_lstm_cell_102_matmul_1_readvariableop_resource:
??E
6lstm_102_lstm_cell_102_biasadd_readvariableop_resource:	?;
(dense_204_matmul_readvariableop_resource:	?d7
)dense_204_biasadd_readvariableop_resource:d:
(dense_205_matmul_readvariableop_resource:d7
)dense_205_biasadd_readvariableop_resource:
identity?? dense_204/BiasAdd/ReadVariableOp?dense_204/MatMul/ReadVariableOp? dense_205/BiasAdd/ReadVariableOp?dense_205/MatMul/ReadVariableOp?-lstm_102/lstm_cell_102/BiasAdd/ReadVariableOp?,lstm_102/lstm_cell_102/MatMul/ReadVariableOp?.lstm_102/lstm_cell_102/MatMul_1/ReadVariableOp?lstm_102/whileV
lstm_102/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_102/Shape?
lstm_102/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_102/strided_slice/stack?
lstm_102/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_102/strided_slice/stack_1?
lstm_102/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_102/strided_slice/stack_2?
lstm_102/strided_sliceStridedSlicelstm_102/Shape:output:0%lstm_102/strided_slice/stack:output:0'lstm_102/strided_slice/stack_1:output:0'lstm_102/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_102/strided_sliceo
lstm_102/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_102/zeros/mul/y?
lstm_102/zeros/mulMullstm_102/strided_slice:output:0lstm_102/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_102/zeros/mulq
lstm_102/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_102/zeros/Less/y?
lstm_102/zeros/LessLesslstm_102/zeros/mul:z:0lstm_102/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_102/zeros/Lessu
lstm_102/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
lstm_102/zeros/packed/1?
lstm_102/zeros/packedPacklstm_102/strided_slice:output:0 lstm_102/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_102/zeros/packedq
lstm_102/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_102/zeros/Const?
lstm_102/zerosFilllstm_102/zeros/packed:output:0lstm_102/zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_102/zeross
lstm_102/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_102/zeros_1/mul/y?
lstm_102/zeros_1/mulMullstm_102/strided_slice:output:0lstm_102/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_102/zeros_1/mulu
lstm_102/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_102/zeros_1/Less/y?
lstm_102/zeros_1/LessLesslstm_102/zeros_1/mul:z:0 lstm_102/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_102/zeros_1/Lessy
lstm_102/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
lstm_102/zeros_1/packed/1?
lstm_102/zeros_1/packedPacklstm_102/strided_slice:output:0"lstm_102/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_102/zeros_1/packedu
lstm_102/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_102/zeros_1/Const?
lstm_102/zeros_1Fill lstm_102/zeros_1/packed:output:0lstm_102/zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_102/zeros_1?
lstm_102/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_102/transpose/perm?
lstm_102/transpose	Transposeinputs lstm_102/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2
lstm_102/transposej
lstm_102/Shape_1Shapelstm_102/transpose:y:0*
T0*
_output_shapes
:2
lstm_102/Shape_1?
lstm_102/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_102/strided_slice_1/stack?
 lstm_102/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_102/strided_slice_1/stack_1?
 lstm_102/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_102/strided_slice_1/stack_2?
lstm_102/strided_slice_1StridedSlicelstm_102/Shape_1:output:0'lstm_102/strided_slice_1/stack:output:0)lstm_102/strided_slice_1/stack_1:output:0)lstm_102/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_102/strided_slice_1?
$lstm_102/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2&
$lstm_102/TensorArrayV2/element_shape?
lstm_102/TensorArrayV2TensorListReserve-lstm_102/TensorArrayV2/element_shape:output:0!lstm_102/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_102/TensorArrayV2?
>lstm_102/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2@
>lstm_102/TensorArrayUnstack/TensorListFromTensor/element_shape?
0lstm_102/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_102/transpose:y:0Glstm_102/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type022
0lstm_102/TensorArrayUnstack/TensorListFromTensor?
lstm_102/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_102/strided_slice_2/stack?
 lstm_102/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_102/strided_slice_2/stack_1?
 lstm_102/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_102/strided_slice_2/stack_2?
lstm_102/strided_slice_2StridedSlicelstm_102/transpose:y:0'lstm_102/strided_slice_2/stack:output:0)lstm_102/strided_slice_2/stack_1:output:0)lstm_102/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
lstm_102/strided_slice_2?
,lstm_102/lstm_cell_102/MatMul/ReadVariableOpReadVariableOp5lstm_102_lstm_cell_102_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02.
,lstm_102/lstm_cell_102/MatMul/ReadVariableOp?
lstm_102/lstm_cell_102/MatMulMatMul!lstm_102/strided_slice_2:output:04lstm_102/lstm_cell_102/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_102/lstm_cell_102/MatMul?
.lstm_102/lstm_cell_102/MatMul_1/ReadVariableOpReadVariableOp7lstm_102_lstm_cell_102_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype020
.lstm_102/lstm_cell_102/MatMul_1/ReadVariableOp?
lstm_102/lstm_cell_102/MatMul_1MatMullstm_102/zeros:output:06lstm_102/lstm_cell_102/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2!
lstm_102/lstm_cell_102/MatMul_1?
lstm_102/lstm_cell_102/addAddV2'lstm_102/lstm_cell_102/MatMul:product:0)lstm_102/lstm_cell_102/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_102/lstm_cell_102/add?
-lstm_102/lstm_cell_102/BiasAdd/ReadVariableOpReadVariableOp6lstm_102_lstm_cell_102_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-lstm_102/lstm_cell_102/BiasAdd/ReadVariableOp?
lstm_102/lstm_cell_102/BiasAddBiasAddlstm_102/lstm_cell_102/add:z:05lstm_102/lstm_cell_102/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
lstm_102/lstm_cell_102/BiasAdd?
&lstm_102/lstm_cell_102/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2(
&lstm_102/lstm_cell_102/split/split_dim?
lstm_102/lstm_cell_102/splitSplit/lstm_102/lstm_cell_102/split/split_dim:output:0'lstm_102/lstm_cell_102/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_102/lstm_cell_102/split?
lstm_102/lstm_cell_102/SigmoidSigmoid%lstm_102/lstm_cell_102/split:output:0*
T0*(
_output_shapes
:??????????2 
lstm_102/lstm_cell_102/Sigmoid?
 lstm_102/lstm_cell_102/Sigmoid_1Sigmoid%lstm_102/lstm_cell_102/split:output:1*
T0*(
_output_shapes
:??????????2"
 lstm_102/lstm_cell_102/Sigmoid_1?
lstm_102/lstm_cell_102/mulMul$lstm_102/lstm_cell_102/Sigmoid_1:y:0lstm_102/zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_102/lstm_cell_102/mul?
lstm_102/lstm_cell_102/ReluRelu%lstm_102/lstm_cell_102/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_102/lstm_cell_102/Relu?
lstm_102/lstm_cell_102/mul_1Mul"lstm_102/lstm_cell_102/Sigmoid:y:0)lstm_102/lstm_cell_102/Relu:activations:0*
T0*(
_output_shapes
:??????????2
lstm_102/lstm_cell_102/mul_1?
lstm_102/lstm_cell_102/add_1AddV2lstm_102/lstm_cell_102/mul:z:0 lstm_102/lstm_cell_102/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_102/lstm_cell_102/add_1?
 lstm_102/lstm_cell_102/Sigmoid_2Sigmoid%lstm_102/lstm_cell_102/split:output:3*
T0*(
_output_shapes
:??????????2"
 lstm_102/lstm_cell_102/Sigmoid_2?
lstm_102/lstm_cell_102/Relu_1Relu lstm_102/lstm_cell_102/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_102/lstm_cell_102/Relu_1?
lstm_102/lstm_cell_102/mul_2Mul$lstm_102/lstm_cell_102/Sigmoid_2:y:0+lstm_102/lstm_cell_102/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
lstm_102/lstm_cell_102/mul_2?
&lstm_102/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2(
&lstm_102/TensorArrayV2_1/element_shape?
lstm_102/TensorArrayV2_1TensorListReserve/lstm_102/TensorArrayV2_1/element_shape:output:0!lstm_102/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_102/TensorArrayV2_1`
lstm_102/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_102/time?
!lstm_102/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2#
!lstm_102/while/maximum_iterations|
lstm_102/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_102/while/loop_counter?
lstm_102/whileWhile$lstm_102/while/loop_counter:output:0*lstm_102/while/maximum_iterations:output:0lstm_102/time:output:0!lstm_102/TensorArrayV2_1:handle:0lstm_102/zeros:output:0lstm_102/zeros_1:output:0!lstm_102/strided_slice_1:output:0@lstm_102/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_102_lstm_cell_102_matmul_readvariableop_resource7lstm_102_lstm_cell_102_matmul_1_readvariableop_resource6lstm_102_lstm_cell_102_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*'
bodyR
lstm_102_while_body_5094437*'
condR
lstm_102_while_cond_5094436*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
lstm_102/while?
9lstm_102/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2;
9lstm_102/TensorArrayV2Stack/TensorListStack/element_shape?
+lstm_102/TensorArrayV2Stack/TensorListStackTensorListStacklstm_102/while:output:3Blstm_102/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02-
+lstm_102/TensorArrayV2Stack/TensorListStack?
lstm_102/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2 
lstm_102/strided_slice_3/stack?
 lstm_102/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2"
 lstm_102/strided_slice_3/stack_1?
 lstm_102/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_102/strided_slice_3/stack_2?
lstm_102/strided_slice_3StridedSlice4lstm_102/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_102/strided_slice_3/stack:output:0)lstm_102/strided_slice_3/stack_1:output:0)lstm_102/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
lstm_102/strided_slice_3?
lstm_102/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_102/transpose_1/perm?
lstm_102/transpose_1	Transpose4lstm_102/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_102/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
lstm_102/transpose_1x
lstm_102/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_102/runtime?
dense_204/MatMul/ReadVariableOpReadVariableOp(dense_204_matmul_readvariableop_resource*
_output_shapes
:	?d*
dtype02!
dense_204/MatMul/ReadVariableOp?
dense_204/MatMulMatMul!lstm_102/strided_slice_3:output:0'dense_204/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_204/MatMul?
 dense_204/BiasAdd/ReadVariableOpReadVariableOp)dense_204_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02"
 dense_204/BiasAdd/ReadVariableOp?
dense_204/BiasAddBiasAdddense_204/MatMul:product:0(dense_204/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_204/BiasAddv
dense_204/ReluReludense_204/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
dense_204/Relu?
dense_205/MatMul/ReadVariableOpReadVariableOp(dense_205_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02!
dense_205/MatMul/ReadVariableOp?
dense_205/MatMulMatMuldense_204/Relu:activations:0'dense_205/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_205/MatMul?
 dense_205/BiasAdd/ReadVariableOpReadVariableOp)dense_205_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_205/BiasAdd/ReadVariableOp?
dense_205/BiasAddBiasAdddense_205/MatMul:product:0(dense_205/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_205/BiasAdd?
IdentityIdentitydense_205/BiasAdd:output:0!^dense_204/BiasAdd/ReadVariableOp ^dense_204/MatMul/ReadVariableOp!^dense_205/BiasAdd/ReadVariableOp ^dense_205/MatMul/ReadVariableOp.^lstm_102/lstm_cell_102/BiasAdd/ReadVariableOp-^lstm_102/lstm_cell_102/MatMul/ReadVariableOp/^lstm_102/lstm_cell_102/MatMul_1/ReadVariableOp^lstm_102/while*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2D
 dense_204/BiasAdd/ReadVariableOp dense_204/BiasAdd/ReadVariableOp2B
dense_204/MatMul/ReadVariableOpdense_204/MatMul/ReadVariableOp2D
 dense_205/BiasAdd/ReadVariableOp dense_205/BiasAdd/ReadVariableOp2B
dense_205/MatMul/ReadVariableOpdense_205/MatMul/ReadVariableOp2^
-lstm_102/lstm_cell_102/BiasAdd/ReadVariableOp-lstm_102/lstm_cell_102/BiasAdd/ReadVariableOp2\
,lstm_102/lstm_cell_102/MatMul/ReadVariableOp,lstm_102/lstm_cell_102/MatMul/ReadVariableOp2`
.lstm_102/lstm_cell_102/MatMul_1/ReadVariableOp.lstm_102/lstm_cell_102/MatMul_1/ReadVariableOp2 
lstm_102/whilelstm_102/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_5095104
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5095104___redundant_placeholder05
1while_while_cond_5095104___redundant_placeholder15
1while_while_cond_5095104___redundant_placeholder25
1while_while_cond_5095104___redundant_placeholder3
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
?D
?
while_body_5094954
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_102_matmul_readvariableop_resource_0:	?J
6while_lstm_cell_102_matmul_1_readvariableop_resource_0:
??D
5while_lstm_cell_102_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_102_matmul_readvariableop_resource:	?H
4while_lstm_cell_102_matmul_1_readvariableop_resource:
??B
3while_lstm_cell_102_biasadd_readvariableop_resource:	???*while/lstm_cell_102/BiasAdd/ReadVariableOp?)while/lstm_cell_102/MatMul/ReadVariableOp?+while/lstm_cell_102/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
)while/lstm_cell_102/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_102_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02+
)while/lstm_cell_102/MatMul/ReadVariableOp?
while/lstm_cell_102/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_102/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/MatMul?
+while/lstm_cell_102/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_102_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02-
+while/lstm_cell_102/MatMul_1/ReadVariableOp?
while/lstm_cell_102/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_102/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/MatMul_1?
while/lstm_cell_102/addAddV2$while/lstm_cell_102/MatMul:product:0&while/lstm_cell_102/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/add?
*while/lstm_cell_102/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_102_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02,
*while/lstm_cell_102/BiasAdd/ReadVariableOp?
while/lstm_cell_102/BiasAddBiasAddwhile/lstm_cell_102/add:z:02while/lstm_cell_102/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/BiasAdd?
#while/lstm_cell_102/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_102/split/split_dim?
while/lstm_cell_102/splitSplit,while/lstm_cell_102/split/split_dim:output:0$while/lstm_cell_102/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell_102/split?
while/lstm_cell_102/SigmoidSigmoid"while/lstm_cell_102/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/Sigmoid?
while/lstm_cell_102/Sigmoid_1Sigmoid"while/lstm_cell_102/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/Sigmoid_1?
while/lstm_cell_102/mulMul!while/lstm_cell_102/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/mul?
while/lstm_cell_102/ReluRelu"while/lstm_cell_102/split:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/Relu?
while/lstm_cell_102/mul_1Mulwhile/lstm_cell_102/Sigmoid:y:0&while/lstm_cell_102/Relu:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/mul_1?
while/lstm_cell_102/add_1AddV2while/lstm_cell_102/mul:z:0while/lstm_cell_102/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/add_1?
while/lstm_cell_102/Sigmoid_2Sigmoid"while/lstm_cell_102/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/Sigmoid_2?
while/lstm_cell_102/Relu_1Reluwhile/lstm_cell_102/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/Relu_1?
while/lstm_cell_102/mul_2Mul!while/lstm_cell_102/Sigmoid_2:y:0(while/lstm_cell_102/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_102/mul_2:z:0*
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
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_102/mul_2:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_102/add_1:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_102_biasadd_readvariableop_resource5while_lstm_cell_102_biasadd_readvariableop_resource_0"n
4while_lstm_cell_102_matmul_1_readvariableop_resource6while_lstm_cell_102_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_102_matmul_readvariableop_resource4while_lstm_cell_102_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2X
*while/lstm_cell_102/BiasAdd/ReadVariableOp*while/lstm_cell_102/BiasAdd/ReadVariableOp2V
)while/lstm_cell_102/MatMul/ReadVariableOp)while/lstm_cell_102/MatMul/ReadVariableOp2Z
+while/lstm_cell_102/MatMul_1/ReadVariableOp+while/lstm_cell_102/MatMul_1/ReadVariableOp: 
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
?[
?
E__inference_lstm_102_layer_call_and_return_conditional_losses_5095189

inputs?
,lstm_cell_102_matmul_readvariableop_resource:	?B
.lstm_cell_102_matmul_1_readvariableop_resource:
??<
-lstm_cell_102_biasadd_readvariableop_resource:	?
identity??$lstm_cell_102/BiasAdd/ReadVariableOp?#lstm_cell_102/MatMul/ReadVariableOp?%lstm_cell_102/MatMul_1/ReadVariableOp?whileD
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
:?????????2
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
valueB"????   27
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
:?????????*
shrink_axis_mask2
strided_slice_2?
#lstm_cell_102/MatMul/ReadVariableOpReadVariableOp,lstm_cell_102_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02%
#lstm_cell_102/MatMul/ReadVariableOp?
lstm_cell_102/MatMulMatMulstrided_slice_2:output:0+lstm_cell_102/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/MatMul?
%lstm_cell_102/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_102_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02'
%lstm_cell_102/MatMul_1/ReadVariableOp?
lstm_cell_102/MatMul_1MatMulzeros:output:0-lstm_cell_102/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/MatMul_1?
lstm_cell_102/addAddV2lstm_cell_102/MatMul:product:0 lstm_cell_102/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/add?
$lstm_cell_102/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_102_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$lstm_cell_102/BiasAdd/ReadVariableOp?
lstm_cell_102/BiasAddBiasAddlstm_cell_102/add:z:0,lstm_cell_102/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/BiasAdd?
lstm_cell_102/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_102/split/split_dim?
lstm_cell_102/splitSplit&lstm_cell_102/split/split_dim:output:0lstm_cell_102/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell_102/split?
lstm_cell_102/SigmoidSigmoidlstm_cell_102/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/Sigmoid?
lstm_cell_102/Sigmoid_1Sigmoidlstm_cell_102/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_102/Sigmoid_1?
lstm_cell_102/mulMullstm_cell_102/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/mul?
lstm_cell_102/ReluRelulstm_cell_102/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell_102/Relu?
lstm_cell_102/mul_1Mullstm_cell_102/Sigmoid:y:0 lstm_cell_102/Relu:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/mul_1?
lstm_cell_102/add_1AddV2lstm_cell_102/mul:z:0lstm_cell_102/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/add_1?
lstm_cell_102/Sigmoid_2Sigmoidlstm_cell_102/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_102/Sigmoid_2?
lstm_cell_102/Relu_1Relulstm_cell_102/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/Relu_1?
lstm_cell_102/mul_2Mullstm_cell_102/Sigmoid_2:y:0"lstm_cell_102/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/mul_2?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_102_matmul_readvariableop_resource.lstm_cell_102_matmul_1_readvariableop_resource-lstm_cell_102_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_5095105*
condR
while_cond_5095104*M
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
IdentityIdentitystrided_slice_3:output:0%^lstm_cell_102/BiasAdd/ReadVariableOp$^lstm_cell_102/MatMul/ReadVariableOp&^lstm_cell_102/MatMul_1/ReadVariableOp^while*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_102/BiasAdd/ReadVariableOp$lstm_cell_102/BiasAdd/ReadVariableOp2J
#lstm_cell_102/MatMul/ReadVariableOp#lstm_cell_102/MatMul/ReadVariableOp2N
%lstm_cell_102/MatMul_1/ReadVariableOp%lstm_cell_102/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_5094802
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5094802___redundant_placeholder05
1while_while_cond_5094802___redundant_placeholder15
1while_while_cond_5094802___redundant_placeholder25
1while_while_cond_5094802___redundant_placeholder3
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
?Q
?

lstm_102_while_body_5094601.
*lstm_102_while_lstm_102_while_loop_counter4
0lstm_102_while_lstm_102_while_maximum_iterations
lstm_102_while_placeholder 
lstm_102_while_placeholder_1 
lstm_102_while_placeholder_2 
lstm_102_while_placeholder_3-
)lstm_102_while_lstm_102_strided_slice_1_0i
elstm_102_while_tensorarrayv2read_tensorlistgetitem_lstm_102_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_102_while_lstm_cell_102_matmul_readvariableop_resource_0:	?S
?lstm_102_while_lstm_cell_102_matmul_1_readvariableop_resource_0:
??M
>lstm_102_while_lstm_cell_102_biasadd_readvariableop_resource_0:	?
lstm_102_while_identity
lstm_102_while_identity_1
lstm_102_while_identity_2
lstm_102_while_identity_3
lstm_102_while_identity_4
lstm_102_while_identity_5+
'lstm_102_while_lstm_102_strided_slice_1g
clstm_102_while_tensorarrayv2read_tensorlistgetitem_lstm_102_tensorarrayunstack_tensorlistfromtensorN
;lstm_102_while_lstm_cell_102_matmul_readvariableop_resource:	?Q
=lstm_102_while_lstm_cell_102_matmul_1_readvariableop_resource:
??K
<lstm_102_while_lstm_cell_102_biasadd_readvariableop_resource:	???3lstm_102/while/lstm_cell_102/BiasAdd/ReadVariableOp?2lstm_102/while/lstm_cell_102/MatMul/ReadVariableOp?4lstm_102/while/lstm_cell_102/MatMul_1/ReadVariableOp?
@lstm_102/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2B
@lstm_102/while/TensorArrayV2Read/TensorListGetItem/element_shape?
2lstm_102/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_102_while_tensorarrayv2read_tensorlistgetitem_lstm_102_tensorarrayunstack_tensorlistfromtensor_0lstm_102_while_placeholderIlstm_102/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype024
2lstm_102/while/TensorArrayV2Read/TensorListGetItem?
2lstm_102/while/lstm_cell_102/MatMul/ReadVariableOpReadVariableOp=lstm_102_while_lstm_cell_102_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype024
2lstm_102/while/lstm_cell_102/MatMul/ReadVariableOp?
#lstm_102/while/lstm_cell_102/MatMulMatMul9lstm_102/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_102/while/lstm_cell_102/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2%
#lstm_102/while/lstm_cell_102/MatMul?
4lstm_102/while/lstm_cell_102/MatMul_1/ReadVariableOpReadVariableOp?lstm_102_while_lstm_cell_102_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype026
4lstm_102/while/lstm_cell_102/MatMul_1/ReadVariableOp?
%lstm_102/while/lstm_cell_102/MatMul_1MatMullstm_102_while_placeholder_2<lstm_102/while/lstm_cell_102/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2'
%lstm_102/while/lstm_cell_102/MatMul_1?
 lstm_102/while/lstm_cell_102/addAddV2-lstm_102/while/lstm_cell_102/MatMul:product:0/lstm_102/while/lstm_cell_102/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2"
 lstm_102/while/lstm_cell_102/add?
3lstm_102/while/lstm_cell_102/BiasAdd/ReadVariableOpReadVariableOp>lstm_102_while_lstm_cell_102_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype025
3lstm_102/while/lstm_cell_102/BiasAdd/ReadVariableOp?
$lstm_102/while/lstm_cell_102/BiasAddBiasAdd$lstm_102/while/lstm_cell_102/add:z:0;lstm_102/while/lstm_cell_102/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2&
$lstm_102/while/lstm_cell_102/BiasAdd?
,lstm_102/while/lstm_cell_102/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2.
,lstm_102/while/lstm_cell_102/split/split_dim?
"lstm_102/while/lstm_cell_102/splitSplit5lstm_102/while/lstm_cell_102/split/split_dim:output:0-lstm_102/while/lstm_cell_102/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2$
"lstm_102/while/lstm_cell_102/split?
$lstm_102/while/lstm_cell_102/SigmoidSigmoid+lstm_102/while/lstm_cell_102/split:output:0*
T0*(
_output_shapes
:??????????2&
$lstm_102/while/lstm_cell_102/Sigmoid?
&lstm_102/while/lstm_cell_102/Sigmoid_1Sigmoid+lstm_102/while/lstm_cell_102/split:output:1*
T0*(
_output_shapes
:??????????2(
&lstm_102/while/lstm_cell_102/Sigmoid_1?
 lstm_102/while/lstm_cell_102/mulMul*lstm_102/while/lstm_cell_102/Sigmoid_1:y:0lstm_102_while_placeholder_3*
T0*(
_output_shapes
:??????????2"
 lstm_102/while/lstm_cell_102/mul?
!lstm_102/while/lstm_cell_102/ReluRelu+lstm_102/while/lstm_cell_102/split:output:2*
T0*(
_output_shapes
:??????????2#
!lstm_102/while/lstm_cell_102/Relu?
"lstm_102/while/lstm_cell_102/mul_1Mul(lstm_102/while/lstm_cell_102/Sigmoid:y:0/lstm_102/while/lstm_cell_102/Relu:activations:0*
T0*(
_output_shapes
:??????????2$
"lstm_102/while/lstm_cell_102/mul_1?
"lstm_102/while/lstm_cell_102/add_1AddV2$lstm_102/while/lstm_cell_102/mul:z:0&lstm_102/while/lstm_cell_102/mul_1:z:0*
T0*(
_output_shapes
:??????????2$
"lstm_102/while/lstm_cell_102/add_1?
&lstm_102/while/lstm_cell_102/Sigmoid_2Sigmoid+lstm_102/while/lstm_cell_102/split:output:3*
T0*(
_output_shapes
:??????????2(
&lstm_102/while/lstm_cell_102/Sigmoid_2?
#lstm_102/while/lstm_cell_102/Relu_1Relu&lstm_102/while/lstm_cell_102/add_1:z:0*
T0*(
_output_shapes
:??????????2%
#lstm_102/while/lstm_cell_102/Relu_1?
"lstm_102/while/lstm_cell_102/mul_2Mul*lstm_102/while/lstm_cell_102/Sigmoid_2:y:01lstm_102/while/lstm_cell_102/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2$
"lstm_102/while/lstm_cell_102/mul_2?
3lstm_102/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_102_while_placeholder_1lstm_102_while_placeholder&lstm_102/while/lstm_cell_102/mul_2:z:0*
_output_shapes
: *
element_dtype025
3lstm_102/while/TensorArrayV2Write/TensorListSetItemn
lstm_102/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_102/while/add/y?
lstm_102/while/addAddV2lstm_102_while_placeholderlstm_102/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_102/while/addr
lstm_102/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_102/while/add_1/y?
lstm_102/while/add_1AddV2*lstm_102_while_lstm_102_while_loop_counterlstm_102/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_102/while/add_1?
lstm_102/while/IdentityIdentitylstm_102/while/add_1:z:04^lstm_102/while/lstm_cell_102/BiasAdd/ReadVariableOp3^lstm_102/while/lstm_cell_102/MatMul/ReadVariableOp5^lstm_102/while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_102/while/Identity?
lstm_102/while/Identity_1Identity0lstm_102_while_lstm_102_while_maximum_iterations4^lstm_102/while/lstm_cell_102/BiasAdd/ReadVariableOp3^lstm_102/while/lstm_cell_102/MatMul/ReadVariableOp5^lstm_102/while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_102/while/Identity_1?
lstm_102/while/Identity_2Identitylstm_102/while/add:z:04^lstm_102/while/lstm_cell_102/BiasAdd/ReadVariableOp3^lstm_102/while/lstm_cell_102/MatMul/ReadVariableOp5^lstm_102/while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_102/while/Identity_2?
lstm_102/while/Identity_3IdentityClstm_102/while/TensorArrayV2Write/TensorListSetItem:output_handle:04^lstm_102/while/lstm_cell_102/BiasAdd/ReadVariableOp3^lstm_102/while/lstm_cell_102/MatMul/ReadVariableOp5^lstm_102/while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_102/while/Identity_3?
lstm_102/while/Identity_4Identity&lstm_102/while/lstm_cell_102/mul_2:z:04^lstm_102/while/lstm_cell_102/BiasAdd/ReadVariableOp3^lstm_102/while/lstm_cell_102/MatMul/ReadVariableOp5^lstm_102/while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
lstm_102/while/Identity_4?
lstm_102/while/Identity_5Identity&lstm_102/while/lstm_cell_102/add_1:z:04^lstm_102/while/lstm_cell_102/BiasAdd/ReadVariableOp3^lstm_102/while/lstm_cell_102/MatMul/ReadVariableOp5^lstm_102/while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
lstm_102/while/Identity_5";
lstm_102_while_identity lstm_102/while/Identity:output:0"?
lstm_102_while_identity_1"lstm_102/while/Identity_1:output:0"?
lstm_102_while_identity_2"lstm_102/while/Identity_2:output:0"?
lstm_102_while_identity_3"lstm_102/while/Identity_3:output:0"?
lstm_102_while_identity_4"lstm_102/while/Identity_4:output:0"?
lstm_102_while_identity_5"lstm_102/while/Identity_5:output:0"T
'lstm_102_while_lstm_102_strided_slice_1)lstm_102_while_lstm_102_strided_slice_1_0"~
<lstm_102_while_lstm_cell_102_biasadd_readvariableop_resource>lstm_102_while_lstm_cell_102_biasadd_readvariableop_resource_0"?
=lstm_102_while_lstm_cell_102_matmul_1_readvariableop_resource?lstm_102_while_lstm_cell_102_matmul_1_readvariableop_resource_0"|
;lstm_102_while_lstm_cell_102_matmul_readvariableop_resource=lstm_102_while_lstm_cell_102_matmul_readvariableop_resource_0"?
clstm_102_while_tensorarrayv2read_tensorlistgetitem_lstm_102_tensorarrayunstack_tensorlistfromtensorelstm_102_while_tensorarrayv2read_tensorlistgetitem_lstm_102_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2j
3lstm_102/while/lstm_cell_102/BiasAdd/ReadVariableOp3lstm_102/while/lstm_cell_102/BiasAdd/ReadVariableOp2h
2lstm_102/while/lstm_cell_102/MatMul/ReadVariableOp2lstm_102/while/lstm_cell_102/MatMul/ReadVariableOp2l
4lstm_102/while/lstm_cell_102/MatMul_1/ReadVariableOp4lstm_102/while/lstm_cell_102/MatMul_1/ReadVariableOp: 
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
F__inference_dense_205_layer_call_and_return_conditional_losses_5095414

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
?	
?
0__inference_sequential_102_layer_call_fn_5094717

inputs
unknown:	?
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
GPU 2J 8? *T
fORM
K__inference_sequential_102_layer_call_and_return_conditional_losses_50940132
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
0__inference_sequential_102_layer_call_fn_5094736

inputs
unknown:	?
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
GPU 2J 8? *T
fORM
K__inference_sequential_102_layer_call_and_return_conditional_losses_50942652
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_102_layer_call_and_return_conditional_losses_5093405

inputs

states
states_11
matmul_readvariableop_resource:	?4
 matmul_1_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
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
A:?????????:??????????:??????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_namestates:PL
(
_output_shapes
:??????????
 
_user_specified_namestates
?
?
*__inference_lstm_102_layer_call_fn_5095362
inputs_0
unknown:	?
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
GPU 2J 8? *N
fIRG
E__inference_lstm_102_layer_call_and_return_conditional_losses_50935522
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?D
?
while_body_5094130
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_102_matmul_readvariableop_resource_0:	?J
6while_lstm_cell_102_matmul_1_readvariableop_resource_0:
??D
5while_lstm_cell_102_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_102_matmul_readvariableop_resource:	?H
4while_lstm_cell_102_matmul_1_readvariableop_resource:
??B
3while_lstm_cell_102_biasadd_readvariableop_resource:	???*while/lstm_cell_102/BiasAdd/ReadVariableOp?)while/lstm_cell_102/MatMul/ReadVariableOp?+while/lstm_cell_102/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
)while/lstm_cell_102/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_102_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02+
)while/lstm_cell_102/MatMul/ReadVariableOp?
while/lstm_cell_102/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_102/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/MatMul?
+while/lstm_cell_102/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_102_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02-
+while/lstm_cell_102/MatMul_1/ReadVariableOp?
while/lstm_cell_102/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_102/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/MatMul_1?
while/lstm_cell_102/addAddV2$while/lstm_cell_102/MatMul:product:0&while/lstm_cell_102/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/add?
*while/lstm_cell_102/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_102_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02,
*while/lstm_cell_102/BiasAdd/ReadVariableOp?
while/lstm_cell_102/BiasAddBiasAddwhile/lstm_cell_102/add:z:02while/lstm_cell_102/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/BiasAdd?
#while/lstm_cell_102/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_102/split/split_dim?
while/lstm_cell_102/splitSplit,while/lstm_cell_102/split/split_dim:output:0$while/lstm_cell_102/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell_102/split?
while/lstm_cell_102/SigmoidSigmoid"while/lstm_cell_102/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/Sigmoid?
while/lstm_cell_102/Sigmoid_1Sigmoid"while/lstm_cell_102/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/Sigmoid_1?
while/lstm_cell_102/mulMul!while/lstm_cell_102/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/mul?
while/lstm_cell_102/ReluRelu"while/lstm_cell_102/split:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/Relu?
while/lstm_cell_102/mul_1Mulwhile/lstm_cell_102/Sigmoid:y:0&while/lstm_cell_102/Relu:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/mul_1?
while/lstm_cell_102/add_1AddV2while/lstm_cell_102/mul:z:0while/lstm_cell_102/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/add_1?
while/lstm_cell_102/Sigmoid_2Sigmoid"while/lstm_cell_102/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/Sigmoid_2?
while/lstm_cell_102/Relu_1Reluwhile/lstm_cell_102/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/Relu_1?
while/lstm_cell_102/mul_2Mul!while/lstm_cell_102/Sigmoid_2:y:0(while/lstm_cell_102/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_102/mul_2:z:0*
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
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_102/mul_2:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_102/add_1:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_102_biasadd_readvariableop_resource5while_lstm_cell_102_biasadd_readvariableop_resource_0"n
4while_lstm_cell_102_matmul_1_readvariableop_resource6while_lstm_cell_102_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_102_matmul_readvariableop_resource4while_lstm_cell_102_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2X
*while/lstm_cell_102/BiasAdd/ReadVariableOp*while/lstm_cell_102/BiasAdd/ReadVariableOp2V
)while/lstm_cell_102/MatMul/ReadVariableOp)while/lstm_cell_102/MatMul/ReadVariableOp2Z
+while/lstm_cell_102/MatMul_1/ReadVariableOp+while/lstm_cell_102/MatMul_1/ReadVariableOp: 
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
?
?
*sequential_102_lstm_102_while_cond_5093086L
Hsequential_102_lstm_102_while_sequential_102_lstm_102_while_loop_counterR
Nsequential_102_lstm_102_while_sequential_102_lstm_102_while_maximum_iterations-
)sequential_102_lstm_102_while_placeholder/
+sequential_102_lstm_102_while_placeholder_1/
+sequential_102_lstm_102_while_placeholder_2/
+sequential_102_lstm_102_while_placeholder_3N
Jsequential_102_lstm_102_while_less_sequential_102_lstm_102_strided_slice_1e
asequential_102_lstm_102_while_sequential_102_lstm_102_while_cond_5093086___redundant_placeholder0e
asequential_102_lstm_102_while_sequential_102_lstm_102_while_cond_5093086___redundant_placeholder1e
asequential_102_lstm_102_while_sequential_102_lstm_102_while_cond_5093086___redundant_placeholder2e
asequential_102_lstm_102_while_sequential_102_lstm_102_while_cond_5093086___redundant_placeholder3*
&sequential_102_lstm_102_while_identity
?
"sequential_102/lstm_102/while/LessLess)sequential_102_lstm_102_while_placeholderJsequential_102_lstm_102_while_less_sequential_102_lstm_102_strided_slice_1*
T0*
_output_shapes
: 2$
"sequential_102/lstm_102/while/Less?
&sequential_102/lstm_102/while/IdentityIdentity&sequential_102/lstm_102/while/Less:z:0*
T0
*
_output_shapes
: 2(
&sequential_102/lstm_102/while/Identity"Y
&sequential_102_lstm_102_while_identity/sequential_102/lstm_102/while/Identity:output:0*(
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
?D
?
while_body_5093887
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_102_matmul_readvariableop_resource_0:	?J
6while_lstm_cell_102_matmul_1_readvariableop_resource_0:
??D
5while_lstm_cell_102_biasadd_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_102_matmul_readvariableop_resource:	?H
4while_lstm_cell_102_matmul_1_readvariableop_resource:
??B
3while_lstm_cell_102_biasadd_readvariableop_resource:	???*while/lstm_cell_102/BiasAdd/ReadVariableOp?)while/lstm_cell_102/MatMul/ReadVariableOp?+while/lstm_cell_102/MatMul_1/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
)while/lstm_cell_102/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_102_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02+
)while/lstm_cell_102/MatMul/ReadVariableOp?
while/lstm_cell_102/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_102/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/MatMul?
+while/lstm_cell_102/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_102_matmul_1_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02-
+while/lstm_cell_102/MatMul_1/ReadVariableOp?
while/lstm_cell_102/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_102/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/MatMul_1?
while/lstm_cell_102/addAddV2$while/lstm_cell_102/MatMul:product:0&while/lstm_cell_102/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/add?
*while/lstm_cell_102/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_102_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02,
*while/lstm_cell_102/BiasAdd/ReadVariableOp?
while/lstm_cell_102/BiasAddBiasAddwhile/lstm_cell_102/add:z:02while/lstm_cell_102/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/BiasAdd?
#while/lstm_cell_102/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_102/split/split_dim?
while/lstm_cell_102/splitSplit,while/lstm_cell_102/split/split_dim:output:0$while/lstm_cell_102/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
while/lstm_cell_102/split?
while/lstm_cell_102/SigmoidSigmoid"while/lstm_cell_102/split:output:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/Sigmoid?
while/lstm_cell_102/Sigmoid_1Sigmoid"while/lstm_cell_102/split:output:1*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/Sigmoid_1?
while/lstm_cell_102/mulMul!while/lstm_cell_102/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/mul?
while/lstm_cell_102/ReluRelu"while/lstm_cell_102/split:output:2*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/Relu?
while/lstm_cell_102/mul_1Mulwhile/lstm_cell_102/Sigmoid:y:0&while/lstm_cell_102/Relu:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/mul_1?
while/lstm_cell_102/add_1AddV2while/lstm_cell_102/mul:z:0while/lstm_cell_102/mul_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/add_1?
while/lstm_cell_102/Sigmoid_2Sigmoid"while/lstm_cell_102/split:output:3*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/Sigmoid_2?
while/lstm_cell_102/Relu_1Reluwhile/lstm_cell_102/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/Relu_1?
while/lstm_cell_102/mul_2Mul!while/lstm_cell_102/Sigmoid_2:y:0(while/lstm_cell_102/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
while/lstm_cell_102/mul_2?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_102/mul_2:z:0*
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
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/lstm_cell_102/mul_2:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_4?
while/Identity_5Identitywhile/lstm_cell_102/add_1:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:??????????2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_102_biasadd_readvariableop_resource5while_lstm_cell_102_biasadd_readvariableop_resource_0"n
4while_lstm_cell_102_matmul_1_readvariableop_resource6while_lstm_cell_102_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_102_matmul_readvariableop_resource4while_lstm_cell_102_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :??????????:??????????: : : : : 2X
*while/lstm_cell_102/BiasAdd/ReadVariableOp*while/lstm_cell_102/BiasAdd/ReadVariableOp2V
)while/lstm_cell_102/MatMul/ReadVariableOp)while/lstm_cell_102/MatMul/ReadVariableOp2Z
+while/lstm_cell_102/MatMul_1/ReadVariableOp+while/lstm_cell_102/MatMul_1/ReadVariableOp: 
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
/__inference_lstm_cell_102_layer_call_fn_5095521

inputs
states_0
states_1
unknown:	?
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
GPU 2J 8? *S
fNRL
J__inference_lstm_cell_102_layer_call_and_return_conditional_losses_50934052
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
A:?????????:??????????:??????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
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
?
?
K__inference_sequential_102_layer_call_and_return_conditional_losses_5094265

inputs#
lstm_102_5094247:	?$
lstm_102_5094249:
??
lstm_102_5094251:	?$
dense_204_5094254:	?d
dense_204_5094256:d#
dense_205_5094259:d
dense_205_5094261:
identity??!dense_204/StatefulPartitionedCall?!dense_205/StatefulPartitionedCall? lstm_102/StatefulPartitionedCall?
 lstm_102/StatefulPartitionedCallStatefulPartitionedCallinputslstm_102_5094247lstm_102_5094249lstm_102_5094251*
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
GPU 2J 8? *N
fIRG
E__inference_lstm_102_layer_call_and_return_conditional_losses_50942142"
 lstm_102/StatefulPartitionedCall?
!dense_204/StatefulPartitionedCallStatefulPartitionedCall)lstm_102/StatefulPartitionedCall:output:0dense_204_5094254dense_204_5094256*
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
GPU 2J 8? *O
fJRH
F__inference_dense_204_layer_call_and_return_conditional_losses_50939902#
!dense_204/StatefulPartitionedCall?
!dense_205/StatefulPartitionedCallStatefulPartitionedCall*dense_204/StatefulPartitionedCall:output:0dense_205_5094259dense_205_5094261*
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
GPU 2J 8? *O
fJRH
F__inference_dense_205_layer_call_and_return_conditional_losses_50940062#
!dense_205/StatefulPartitionedCall?
IdentityIdentity*dense_205/StatefulPartitionedCall:output:0"^dense_204/StatefulPartitionedCall"^dense_205/StatefulPartitionedCall!^lstm_102/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2F
!dense_204/StatefulPartitionedCall!dense_204/StatefulPartitionedCall2F
!dense_205/StatefulPartitionedCall!dense_205/StatefulPartitionedCall2D
 lstm_102/StatefulPartitionedCall lstm_102/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
K__inference_sequential_102_layer_call_and_return_conditional_losses_5094322
lstm_102_input#
lstm_102_5094304:	?$
lstm_102_5094306:
??
lstm_102_5094308:	?$
dense_204_5094311:	?d
dense_204_5094313:d#
dense_205_5094316:d
dense_205_5094318:
identity??!dense_204/StatefulPartitionedCall?!dense_205/StatefulPartitionedCall? lstm_102/StatefulPartitionedCall?
 lstm_102/StatefulPartitionedCallStatefulPartitionedCalllstm_102_inputlstm_102_5094304lstm_102_5094306lstm_102_5094308*
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
GPU 2J 8? *N
fIRG
E__inference_lstm_102_layer_call_and_return_conditional_losses_50939712"
 lstm_102/StatefulPartitionedCall?
!dense_204/StatefulPartitionedCallStatefulPartitionedCall)lstm_102/StatefulPartitionedCall:output:0dense_204_5094311dense_204_5094313*
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
GPU 2J 8? *O
fJRH
F__inference_dense_204_layer_call_and_return_conditional_losses_50939902#
!dense_204/StatefulPartitionedCall?
!dense_205/StatefulPartitionedCallStatefulPartitionedCall*dense_204/StatefulPartitionedCall:output:0dense_205_5094316dense_205_5094318*
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
GPU 2J 8? *O
fJRH
F__inference_dense_205_layer_call_and_return_conditional_losses_50940062#
!dense_205/StatefulPartitionedCall?
IdentityIdentity*dense_205/StatefulPartitionedCall:output:0"^dense_204/StatefulPartitionedCall"^dense_205/StatefulPartitionedCall!^lstm_102/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2F
!dense_204/StatefulPartitionedCall!dense_204/StatefulPartitionedCall2F
!dense_205/StatefulPartitionedCall!dense_205/StatefulPartitionedCall2D
 lstm_102/StatefulPartitionedCall lstm_102/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_102_input
?[
?
E__inference_lstm_102_layer_call_and_return_conditional_losses_5095340

inputs?
,lstm_cell_102_matmul_readvariableop_resource:	?B
.lstm_cell_102_matmul_1_readvariableop_resource:
??<
-lstm_cell_102_biasadd_readvariableop_resource:	?
identity??$lstm_cell_102/BiasAdd/ReadVariableOp?#lstm_cell_102/MatMul/ReadVariableOp?%lstm_cell_102/MatMul_1/ReadVariableOp?whileD
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
:?????????2
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
valueB"????   27
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
:?????????*
shrink_axis_mask2
strided_slice_2?
#lstm_cell_102/MatMul/ReadVariableOpReadVariableOp,lstm_cell_102_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02%
#lstm_cell_102/MatMul/ReadVariableOp?
lstm_cell_102/MatMulMatMulstrided_slice_2:output:0+lstm_cell_102/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/MatMul?
%lstm_cell_102/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_102_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02'
%lstm_cell_102/MatMul_1/ReadVariableOp?
lstm_cell_102/MatMul_1MatMulzeros:output:0-lstm_cell_102/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/MatMul_1?
lstm_cell_102/addAddV2lstm_cell_102/MatMul:product:0 lstm_cell_102/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/add?
$lstm_cell_102/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_102_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$lstm_cell_102/BiasAdd/ReadVariableOp?
lstm_cell_102/BiasAddBiasAddlstm_cell_102/add:z:0,lstm_cell_102/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/BiasAdd?
lstm_cell_102/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_102/split/split_dim?
lstm_cell_102/splitSplit&lstm_cell_102/split/split_dim:output:0lstm_cell_102/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell_102/split?
lstm_cell_102/SigmoidSigmoidlstm_cell_102/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/Sigmoid?
lstm_cell_102/Sigmoid_1Sigmoidlstm_cell_102/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_102/Sigmoid_1?
lstm_cell_102/mulMullstm_cell_102/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/mul?
lstm_cell_102/ReluRelulstm_cell_102/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell_102/Relu?
lstm_cell_102/mul_1Mullstm_cell_102/Sigmoid:y:0 lstm_cell_102/Relu:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/mul_1?
lstm_cell_102/add_1AddV2lstm_cell_102/mul:z:0lstm_cell_102/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/add_1?
lstm_cell_102/Sigmoid_2Sigmoidlstm_cell_102/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_102/Sigmoid_2?
lstm_cell_102/Relu_1Relulstm_cell_102/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/Relu_1?
lstm_cell_102/mul_2Mullstm_cell_102/Sigmoid_2:y:0"lstm_cell_102/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/mul_2?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_102_matmul_readvariableop_resource.lstm_cell_102_matmul_1_readvariableop_resource-lstm_cell_102_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_5095256*
condR
while_cond_5095255*M
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
IdentityIdentitystrided_slice_3:output:0%^lstm_cell_102/BiasAdd/ReadVariableOp$^lstm_cell_102/MatMul/ReadVariableOp&^lstm_cell_102/MatMul_1/ReadVariableOp^while*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2L
$lstm_cell_102/BiasAdd/ReadVariableOp$lstm_cell_102/BiasAdd/ReadVariableOp2J
#lstm_cell_102/MatMul/ReadVariableOp#lstm_cell_102/MatMul/ReadVariableOp2N
%lstm_cell_102/MatMul_1/ReadVariableOp%lstm_cell_102/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_5093886
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5093886___redundant_placeholder05
1while_while_cond_5093886___redundant_placeholder15
1while_while_cond_5093886___redundant_placeholder25
1while_while_cond_5093886___redundant_placeholder3
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
+__inference_dense_204_layer_call_fn_5095404

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
GPU 2J 8? *O
fJRH
F__inference_dense_204_layer_call_and_return_conditional_losses_50939902
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
 
_user_specified_nameinputs
??
?
"__inference__wrapped_model_5093184
lstm_102_inputW
Dsequential_102_lstm_102_lstm_cell_102_matmul_readvariableop_resource:	?Z
Fsequential_102_lstm_102_lstm_cell_102_matmul_1_readvariableop_resource:
??T
Esequential_102_lstm_102_lstm_cell_102_biasadd_readvariableop_resource:	?J
7sequential_102_dense_204_matmul_readvariableop_resource:	?dF
8sequential_102_dense_204_biasadd_readvariableop_resource:dI
7sequential_102_dense_205_matmul_readvariableop_resource:dF
8sequential_102_dense_205_biasadd_readvariableop_resource:
identity??/sequential_102/dense_204/BiasAdd/ReadVariableOp?.sequential_102/dense_204/MatMul/ReadVariableOp?/sequential_102/dense_205/BiasAdd/ReadVariableOp?.sequential_102/dense_205/MatMul/ReadVariableOp?<sequential_102/lstm_102/lstm_cell_102/BiasAdd/ReadVariableOp?;sequential_102/lstm_102/lstm_cell_102/MatMul/ReadVariableOp?=sequential_102/lstm_102/lstm_cell_102/MatMul_1/ReadVariableOp?sequential_102/lstm_102/while|
sequential_102/lstm_102/ShapeShapelstm_102_input*
T0*
_output_shapes
:2
sequential_102/lstm_102/Shape?
+sequential_102/lstm_102/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_102/lstm_102/strided_slice/stack?
-sequential_102/lstm_102/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_102/lstm_102/strided_slice/stack_1?
-sequential_102/lstm_102/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_102/lstm_102/strided_slice/stack_2?
%sequential_102/lstm_102/strided_sliceStridedSlice&sequential_102/lstm_102/Shape:output:04sequential_102/lstm_102/strided_slice/stack:output:06sequential_102/lstm_102/strided_slice/stack_1:output:06sequential_102/lstm_102/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%sequential_102/lstm_102/strided_slice?
#sequential_102/lstm_102/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2%
#sequential_102/lstm_102/zeros/mul/y?
!sequential_102/lstm_102/zeros/mulMul.sequential_102/lstm_102/strided_slice:output:0,sequential_102/lstm_102/zeros/mul/y:output:0*
T0*
_output_shapes
: 2#
!sequential_102/lstm_102/zeros/mul?
$sequential_102/lstm_102/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2&
$sequential_102/lstm_102/zeros/Less/y?
"sequential_102/lstm_102/zeros/LessLess%sequential_102/lstm_102/zeros/mul:z:0-sequential_102/lstm_102/zeros/Less/y:output:0*
T0*
_output_shapes
: 2$
"sequential_102/lstm_102/zeros/Less?
&sequential_102/lstm_102/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2(
&sequential_102/lstm_102/zeros/packed/1?
$sequential_102/lstm_102/zeros/packedPack.sequential_102/lstm_102/strided_slice:output:0/sequential_102/lstm_102/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2&
$sequential_102/lstm_102/zeros/packed?
#sequential_102/lstm_102/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#sequential_102/lstm_102/zeros/Const?
sequential_102/lstm_102/zerosFill-sequential_102/lstm_102/zeros/packed:output:0,sequential_102/lstm_102/zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
sequential_102/lstm_102/zeros?
%sequential_102/lstm_102/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2'
%sequential_102/lstm_102/zeros_1/mul/y?
#sequential_102/lstm_102/zeros_1/mulMul.sequential_102/lstm_102/strided_slice:output:0.sequential_102/lstm_102/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2%
#sequential_102/lstm_102/zeros_1/mul?
&sequential_102/lstm_102/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2(
&sequential_102/lstm_102/zeros_1/Less/y?
$sequential_102/lstm_102/zeros_1/LessLess'sequential_102/lstm_102/zeros_1/mul:z:0/sequential_102/lstm_102/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2&
$sequential_102/lstm_102/zeros_1/Less?
(sequential_102/lstm_102/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2*
(sequential_102/lstm_102/zeros_1/packed/1?
&sequential_102/lstm_102/zeros_1/packedPack.sequential_102/lstm_102/strided_slice:output:01sequential_102/lstm_102/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2(
&sequential_102/lstm_102/zeros_1/packed?
%sequential_102/lstm_102/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%sequential_102/lstm_102/zeros_1/Const?
sequential_102/lstm_102/zeros_1Fill/sequential_102/lstm_102/zeros_1/packed:output:0.sequential_102/lstm_102/zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2!
sequential_102/lstm_102/zeros_1?
&sequential_102/lstm_102/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&sequential_102/lstm_102/transpose/perm?
!sequential_102/lstm_102/transpose	Transposelstm_102_input/sequential_102/lstm_102/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2#
!sequential_102/lstm_102/transpose?
sequential_102/lstm_102/Shape_1Shape%sequential_102/lstm_102/transpose:y:0*
T0*
_output_shapes
:2!
sequential_102/lstm_102/Shape_1?
-sequential_102/lstm_102/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-sequential_102/lstm_102/strided_slice_1/stack?
/sequential_102/lstm_102/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/sequential_102/lstm_102/strided_slice_1/stack_1?
/sequential_102/lstm_102/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/sequential_102/lstm_102/strided_slice_1/stack_2?
'sequential_102/lstm_102/strided_slice_1StridedSlice(sequential_102/lstm_102/Shape_1:output:06sequential_102/lstm_102/strided_slice_1/stack:output:08sequential_102/lstm_102/strided_slice_1/stack_1:output:08sequential_102/lstm_102/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'sequential_102/lstm_102/strided_slice_1?
3sequential_102/lstm_102/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????25
3sequential_102/lstm_102/TensorArrayV2/element_shape?
%sequential_102/lstm_102/TensorArrayV2TensorListReserve<sequential_102/lstm_102/TensorArrayV2/element_shape:output:00sequential_102/lstm_102/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02'
%sequential_102/lstm_102/TensorArrayV2?
Msequential_102/lstm_102/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2O
Msequential_102/lstm_102/TensorArrayUnstack/TensorListFromTensor/element_shape?
?sequential_102/lstm_102/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_102/lstm_102/transpose:y:0Vsequential_102/lstm_102/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02A
?sequential_102/lstm_102/TensorArrayUnstack/TensorListFromTensor?
-sequential_102/lstm_102/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-sequential_102/lstm_102/strided_slice_2/stack?
/sequential_102/lstm_102/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/sequential_102/lstm_102/strided_slice_2/stack_1?
/sequential_102/lstm_102/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/sequential_102/lstm_102/strided_slice_2/stack_2?
'sequential_102/lstm_102/strided_slice_2StridedSlice%sequential_102/lstm_102/transpose:y:06sequential_102/lstm_102/strided_slice_2/stack:output:08sequential_102/lstm_102/strided_slice_2/stack_1:output:08sequential_102/lstm_102/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2)
'sequential_102/lstm_102/strided_slice_2?
;sequential_102/lstm_102/lstm_cell_102/MatMul/ReadVariableOpReadVariableOpDsequential_102_lstm_102_lstm_cell_102_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02=
;sequential_102/lstm_102/lstm_cell_102/MatMul/ReadVariableOp?
,sequential_102/lstm_102/lstm_cell_102/MatMulMatMul0sequential_102/lstm_102/strided_slice_2:output:0Csequential_102/lstm_102/lstm_cell_102/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2.
,sequential_102/lstm_102/lstm_cell_102/MatMul?
=sequential_102/lstm_102/lstm_cell_102/MatMul_1/ReadVariableOpReadVariableOpFsequential_102_lstm_102_lstm_cell_102_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02?
=sequential_102/lstm_102/lstm_cell_102/MatMul_1/ReadVariableOp?
.sequential_102/lstm_102/lstm_cell_102/MatMul_1MatMul&sequential_102/lstm_102/zeros:output:0Esequential_102/lstm_102/lstm_cell_102/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????20
.sequential_102/lstm_102/lstm_cell_102/MatMul_1?
)sequential_102/lstm_102/lstm_cell_102/addAddV26sequential_102/lstm_102/lstm_cell_102/MatMul:product:08sequential_102/lstm_102/lstm_cell_102/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2+
)sequential_102/lstm_102/lstm_cell_102/add?
<sequential_102/lstm_102/lstm_cell_102/BiasAdd/ReadVariableOpReadVariableOpEsequential_102_lstm_102_lstm_cell_102_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02>
<sequential_102/lstm_102/lstm_cell_102/BiasAdd/ReadVariableOp?
-sequential_102/lstm_102/lstm_cell_102/BiasAddBiasAdd-sequential_102/lstm_102/lstm_cell_102/add:z:0Dsequential_102/lstm_102/lstm_cell_102/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2/
-sequential_102/lstm_102/lstm_cell_102/BiasAdd?
5sequential_102/lstm_102/lstm_cell_102/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :27
5sequential_102/lstm_102/lstm_cell_102/split/split_dim?
+sequential_102/lstm_102/lstm_cell_102/splitSplit>sequential_102/lstm_102/lstm_cell_102/split/split_dim:output:06sequential_102/lstm_102/lstm_cell_102/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2-
+sequential_102/lstm_102/lstm_cell_102/split?
-sequential_102/lstm_102/lstm_cell_102/SigmoidSigmoid4sequential_102/lstm_102/lstm_cell_102/split:output:0*
T0*(
_output_shapes
:??????????2/
-sequential_102/lstm_102/lstm_cell_102/Sigmoid?
/sequential_102/lstm_102/lstm_cell_102/Sigmoid_1Sigmoid4sequential_102/lstm_102/lstm_cell_102/split:output:1*
T0*(
_output_shapes
:??????????21
/sequential_102/lstm_102/lstm_cell_102/Sigmoid_1?
)sequential_102/lstm_102/lstm_cell_102/mulMul3sequential_102/lstm_102/lstm_cell_102/Sigmoid_1:y:0(sequential_102/lstm_102/zeros_1:output:0*
T0*(
_output_shapes
:??????????2+
)sequential_102/lstm_102/lstm_cell_102/mul?
*sequential_102/lstm_102/lstm_cell_102/ReluRelu4sequential_102/lstm_102/lstm_cell_102/split:output:2*
T0*(
_output_shapes
:??????????2,
*sequential_102/lstm_102/lstm_cell_102/Relu?
+sequential_102/lstm_102/lstm_cell_102/mul_1Mul1sequential_102/lstm_102/lstm_cell_102/Sigmoid:y:08sequential_102/lstm_102/lstm_cell_102/Relu:activations:0*
T0*(
_output_shapes
:??????????2-
+sequential_102/lstm_102/lstm_cell_102/mul_1?
+sequential_102/lstm_102/lstm_cell_102/add_1AddV2-sequential_102/lstm_102/lstm_cell_102/mul:z:0/sequential_102/lstm_102/lstm_cell_102/mul_1:z:0*
T0*(
_output_shapes
:??????????2-
+sequential_102/lstm_102/lstm_cell_102/add_1?
/sequential_102/lstm_102/lstm_cell_102/Sigmoid_2Sigmoid4sequential_102/lstm_102/lstm_cell_102/split:output:3*
T0*(
_output_shapes
:??????????21
/sequential_102/lstm_102/lstm_cell_102/Sigmoid_2?
,sequential_102/lstm_102/lstm_cell_102/Relu_1Relu/sequential_102/lstm_102/lstm_cell_102/add_1:z:0*
T0*(
_output_shapes
:??????????2.
,sequential_102/lstm_102/lstm_cell_102/Relu_1?
+sequential_102/lstm_102/lstm_cell_102/mul_2Mul3sequential_102/lstm_102/lstm_cell_102/Sigmoid_2:y:0:sequential_102/lstm_102/lstm_cell_102/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2-
+sequential_102/lstm_102/lstm_cell_102/mul_2?
5sequential_102/lstm_102/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   27
5sequential_102/lstm_102/TensorArrayV2_1/element_shape?
'sequential_102/lstm_102/TensorArrayV2_1TensorListReserve>sequential_102/lstm_102/TensorArrayV2_1/element_shape:output:00sequential_102/lstm_102/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'sequential_102/lstm_102/TensorArrayV2_1~
sequential_102/lstm_102/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_102/lstm_102/time?
0sequential_102/lstm_102/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????22
0sequential_102/lstm_102/while/maximum_iterations?
*sequential_102/lstm_102/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2,
*sequential_102/lstm_102/while/loop_counter?
sequential_102/lstm_102/whileWhile3sequential_102/lstm_102/while/loop_counter:output:09sequential_102/lstm_102/while/maximum_iterations:output:0%sequential_102/lstm_102/time:output:00sequential_102/lstm_102/TensorArrayV2_1:handle:0&sequential_102/lstm_102/zeros:output:0(sequential_102/lstm_102/zeros_1:output:00sequential_102/lstm_102/strided_slice_1:output:0Osequential_102/lstm_102/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_102_lstm_102_lstm_cell_102_matmul_readvariableop_resourceFsequential_102_lstm_102_lstm_cell_102_matmul_1_readvariableop_resourceEsequential_102_lstm_102_lstm_cell_102_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*6
body.R,
*sequential_102_lstm_102_while_body_5093087*6
cond.R,
*sequential_102_lstm_102_while_cond_5093086*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
sequential_102/lstm_102/while?
Hsequential_102/lstm_102/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2J
Hsequential_102/lstm_102/TensorArrayV2Stack/TensorListStack/element_shape?
:sequential_102/lstm_102/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_102/lstm_102/while:output:3Qsequential_102/lstm_102/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02<
:sequential_102/lstm_102/TensorArrayV2Stack/TensorListStack?
-sequential_102/lstm_102/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2/
-sequential_102/lstm_102/strided_slice_3/stack?
/sequential_102/lstm_102/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 21
/sequential_102/lstm_102/strided_slice_3/stack_1?
/sequential_102/lstm_102/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/sequential_102/lstm_102/strided_slice_3/stack_2?
'sequential_102/lstm_102/strided_slice_3StridedSliceCsequential_102/lstm_102/TensorArrayV2Stack/TensorListStack:tensor:06sequential_102/lstm_102/strided_slice_3/stack:output:08sequential_102/lstm_102/strided_slice_3/stack_1:output:08sequential_102/lstm_102/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2)
'sequential_102/lstm_102/strided_slice_3?
(sequential_102/lstm_102/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2*
(sequential_102/lstm_102/transpose_1/perm?
#sequential_102/lstm_102/transpose_1	TransposeCsequential_102/lstm_102/TensorArrayV2Stack/TensorListStack:tensor:01sequential_102/lstm_102/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2%
#sequential_102/lstm_102/transpose_1?
sequential_102/lstm_102/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2!
sequential_102/lstm_102/runtime?
.sequential_102/dense_204/MatMul/ReadVariableOpReadVariableOp7sequential_102_dense_204_matmul_readvariableop_resource*
_output_shapes
:	?d*
dtype020
.sequential_102/dense_204/MatMul/ReadVariableOp?
sequential_102/dense_204/MatMulMatMul0sequential_102/lstm_102/strided_slice_3:output:06sequential_102/dense_204/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2!
sequential_102/dense_204/MatMul?
/sequential_102/dense_204/BiasAdd/ReadVariableOpReadVariableOp8sequential_102_dense_204_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype021
/sequential_102/dense_204/BiasAdd/ReadVariableOp?
 sequential_102/dense_204/BiasAddBiasAdd)sequential_102/dense_204/MatMul:product:07sequential_102/dense_204/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2"
 sequential_102/dense_204/BiasAdd?
sequential_102/dense_204/ReluRelu)sequential_102/dense_204/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
sequential_102/dense_204/Relu?
.sequential_102/dense_205/MatMul/ReadVariableOpReadVariableOp7sequential_102_dense_205_matmul_readvariableop_resource*
_output_shapes

:d*
dtype020
.sequential_102/dense_205/MatMul/ReadVariableOp?
sequential_102/dense_205/MatMulMatMul+sequential_102/dense_204/Relu:activations:06sequential_102/dense_205/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2!
sequential_102/dense_205/MatMul?
/sequential_102/dense_205/BiasAdd/ReadVariableOpReadVariableOp8sequential_102_dense_205_biasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/sequential_102/dense_205/BiasAdd/ReadVariableOp?
 sequential_102/dense_205/BiasAddBiasAdd)sequential_102/dense_205/MatMul:product:07sequential_102/dense_205/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2"
 sequential_102/dense_205/BiasAdd?
IdentityIdentity)sequential_102/dense_205/BiasAdd:output:00^sequential_102/dense_204/BiasAdd/ReadVariableOp/^sequential_102/dense_204/MatMul/ReadVariableOp0^sequential_102/dense_205/BiasAdd/ReadVariableOp/^sequential_102/dense_205/MatMul/ReadVariableOp=^sequential_102/lstm_102/lstm_cell_102/BiasAdd/ReadVariableOp<^sequential_102/lstm_102/lstm_cell_102/MatMul/ReadVariableOp>^sequential_102/lstm_102/lstm_cell_102/MatMul_1/ReadVariableOp^sequential_102/lstm_102/while*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2b
/sequential_102/dense_204/BiasAdd/ReadVariableOp/sequential_102/dense_204/BiasAdd/ReadVariableOp2`
.sequential_102/dense_204/MatMul/ReadVariableOp.sequential_102/dense_204/MatMul/ReadVariableOp2b
/sequential_102/dense_205/BiasAdd/ReadVariableOp/sequential_102/dense_205/BiasAdd/ReadVariableOp2`
.sequential_102/dense_205/MatMul/ReadVariableOp.sequential_102/dense_205/MatMul/ReadVariableOp2|
<sequential_102/lstm_102/lstm_cell_102/BiasAdd/ReadVariableOp<sequential_102/lstm_102/lstm_cell_102/BiasAdd/ReadVariableOp2z
;sequential_102/lstm_102/lstm_cell_102/MatMul/ReadVariableOp;sequential_102/lstm_102/lstm_cell_102/MatMul/ReadVariableOp2~
=sequential_102/lstm_102/lstm_cell_102/MatMul_1/ReadVariableOp=sequential_102/lstm_102/lstm_cell_102/MatMul_1/ReadVariableOp2>
sequential_102/lstm_102/whilesequential_102/lstm_102/while:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_102_input
?
?
+__inference_dense_205_layer_call_fn_5095423

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
GPU 2J 8? *O
fJRH
F__inference_dense_205_layer_call_and_return_conditional_losses_50940062
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
?~
?
K__inference_sequential_102_layer_call_and_return_conditional_losses_5094698

inputsH
5lstm_102_lstm_cell_102_matmul_readvariableop_resource:	?K
7lstm_102_lstm_cell_102_matmul_1_readvariableop_resource:
??E
6lstm_102_lstm_cell_102_biasadd_readvariableop_resource:	?;
(dense_204_matmul_readvariableop_resource:	?d7
)dense_204_biasadd_readvariableop_resource:d:
(dense_205_matmul_readvariableop_resource:d7
)dense_205_biasadd_readvariableop_resource:
identity?? dense_204/BiasAdd/ReadVariableOp?dense_204/MatMul/ReadVariableOp? dense_205/BiasAdd/ReadVariableOp?dense_205/MatMul/ReadVariableOp?-lstm_102/lstm_cell_102/BiasAdd/ReadVariableOp?,lstm_102/lstm_cell_102/MatMul/ReadVariableOp?.lstm_102/lstm_cell_102/MatMul_1/ReadVariableOp?lstm_102/whileV
lstm_102/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_102/Shape?
lstm_102/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_102/strided_slice/stack?
lstm_102/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_102/strided_slice/stack_1?
lstm_102/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_102/strided_slice/stack_2?
lstm_102/strided_sliceStridedSlicelstm_102/Shape:output:0%lstm_102/strided_slice/stack:output:0'lstm_102/strided_slice/stack_1:output:0'lstm_102/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_102/strided_sliceo
lstm_102/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_102/zeros/mul/y?
lstm_102/zeros/mulMullstm_102/strided_slice:output:0lstm_102/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_102/zeros/mulq
lstm_102/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_102/zeros/Less/y?
lstm_102/zeros/LessLesslstm_102/zeros/mul:z:0lstm_102/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_102/zeros/Lessu
lstm_102/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
lstm_102/zeros/packed/1?
lstm_102/zeros/packedPacklstm_102/strided_slice:output:0 lstm_102/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_102/zeros/packedq
lstm_102/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_102/zeros/Const?
lstm_102/zerosFilllstm_102/zeros/packed:output:0lstm_102/zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_102/zeross
lstm_102/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_102/zeros_1/mul/y?
lstm_102/zeros_1/mulMullstm_102/strided_slice:output:0lstm_102/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_102/zeros_1/mulu
lstm_102/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
lstm_102/zeros_1/Less/y?
lstm_102/zeros_1/LessLesslstm_102/zeros_1/mul:z:0 lstm_102/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_102/zeros_1/Lessy
lstm_102/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
lstm_102/zeros_1/packed/1?
lstm_102/zeros_1/packedPacklstm_102/strided_slice:output:0"lstm_102/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_102/zeros_1/packedu
lstm_102/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_102/zeros_1/Const?
lstm_102/zeros_1Fill lstm_102/zeros_1/packed:output:0lstm_102/zeros_1/Const:output:0*
T0*(
_output_shapes
:??????????2
lstm_102/zeros_1?
lstm_102/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_102/transpose/perm?
lstm_102/transpose	Transposeinputs lstm_102/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2
lstm_102/transposej
lstm_102/Shape_1Shapelstm_102/transpose:y:0*
T0*
_output_shapes
:2
lstm_102/Shape_1?
lstm_102/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_102/strided_slice_1/stack?
 lstm_102/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_102/strided_slice_1/stack_1?
 lstm_102/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_102/strided_slice_1/stack_2?
lstm_102/strided_slice_1StridedSlicelstm_102/Shape_1:output:0'lstm_102/strided_slice_1/stack:output:0)lstm_102/strided_slice_1/stack_1:output:0)lstm_102/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_102/strided_slice_1?
$lstm_102/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2&
$lstm_102/TensorArrayV2/element_shape?
lstm_102/TensorArrayV2TensorListReserve-lstm_102/TensorArrayV2/element_shape:output:0!lstm_102/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_102/TensorArrayV2?
>lstm_102/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2@
>lstm_102/TensorArrayUnstack/TensorListFromTensor/element_shape?
0lstm_102/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_102/transpose:y:0Glstm_102/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type022
0lstm_102/TensorArrayUnstack/TensorListFromTensor?
lstm_102/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_102/strided_slice_2/stack?
 lstm_102/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_102/strided_slice_2/stack_1?
 lstm_102/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_102/strided_slice_2/stack_2?
lstm_102/strided_slice_2StridedSlicelstm_102/transpose:y:0'lstm_102/strided_slice_2/stack:output:0)lstm_102/strided_slice_2/stack_1:output:0)lstm_102/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
lstm_102/strided_slice_2?
,lstm_102/lstm_cell_102/MatMul/ReadVariableOpReadVariableOp5lstm_102_lstm_cell_102_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02.
,lstm_102/lstm_cell_102/MatMul/ReadVariableOp?
lstm_102/lstm_cell_102/MatMulMatMul!lstm_102/strided_slice_2:output:04lstm_102/lstm_cell_102/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_102/lstm_cell_102/MatMul?
.lstm_102/lstm_cell_102/MatMul_1/ReadVariableOpReadVariableOp7lstm_102_lstm_cell_102_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype020
.lstm_102/lstm_cell_102/MatMul_1/ReadVariableOp?
lstm_102/lstm_cell_102/MatMul_1MatMullstm_102/zeros:output:06lstm_102/lstm_cell_102/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2!
lstm_102/lstm_cell_102/MatMul_1?
lstm_102/lstm_cell_102/addAddV2'lstm_102/lstm_cell_102/MatMul:product:0)lstm_102/lstm_cell_102/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_102/lstm_cell_102/add?
-lstm_102/lstm_cell_102/BiasAdd/ReadVariableOpReadVariableOp6lstm_102_lstm_cell_102_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-lstm_102/lstm_cell_102/BiasAdd/ReadVariableOp?
lstm_102/lstm_cell_102/BiasAddBiasAddlstm_102/lstm_cell_102/add:z:05lstm_102/lstm_cell_102/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
lstm_102/lstm_cell_102/BiasAdd?
&lstm_102/lstm_cell_102/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2(
&lstm_102/lstm_cell_102/split/split_dim?
lstm_102/lstm_cell_102/splitSplit/lstm_102/lstm_cell_102/split/split_dim:output:0'lstm_102/lstm_cell_102/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_102/lstm_cell_102/split?
lstm_102/lstm_cell_102/SigmoidSigmoid%lstm_102/lstm_cell_102/split:output:0*
T0*(
_output_shapes
:??????????2 
lstm_102/lstm_cell_102/Sigmoid?
 lstm_102/lstm_cell_102/Sigmoid_1Sigmoid%lstm_102/lstm_cell_102/split:output:1*
T0*(
_output_shapes
:??????????2"
 lstm_102/lstm_cell_102/Sigmoid_1?
lstm_102/lstm_cell_102/mulMul$lstm_102/lstm_cell_102/Sigmoid_1:y:0lstm_102/zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_102/lstm_cell_102/mul?
lstm_102/lstm_cell_102/ReluRelu%lstm_102/lstm_cell_102/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_102/lstm_cell_102/Relu?
lstm_102/lstm_cell_102/mul_1Mul"lstm_102/lstm_cell_102/Sigmoid:y:0)lstm_102/lstm_cell_102/Relu:activations:0*
T0*(
_output_shapes
:??????????2
lstm_102/lstm_cell_102/mul_1?
lstm_102/lstm_cell_102/add_1AddV2lstm_102/lstm_cell_102/mul:z:0 lstm_102/lstm_cell_102/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_102/lstm_cell_102/add_1?
 lstm_102/lstm_cell_102/Sigmoid_2Sigmoid%lstm_102/lstm_cell_102/split:output:3*
T0*(
_output_shapes
:??????????2"
 lstm_102/lstm_cell_102/Sigmoid_2?
lstm_102/lstm_cell_102/Relu_1Relu lstm_102/lstm_cell_102/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_102/lstm_cell_102/Relu_1?
lstm_102/lstm_cell_102/mul_2Mul$lstm_102/lstm_cell_102/Sigmoid_2:y:0+lstm_102/lstm_cell_102/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
lstm_102/lstm_cell_102/mul_2?
&lstm_102/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2(
&lstm_102/TensorArrayV2_1/element_shape?
lstm_102/TensorArrayV2_1TensorListReserve/lstm_102/TensorArrayV2_1/element_shape:output:0!lstm_102/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_102/TensorArrayV2_1`
lstm_102/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_102/time?
!lstm_102/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2#
!lstm_102/while/maximum_iterations|
lstm_102/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_102/while/loop_counter?
lstm_102/whileWhile$lstm_102/while/loop_counter:output:0*lstm_102/while/maximum_iterations:output:0lstm_102/time:output:0!lstm_102/TensorArrayV2_1:handle:0lstm_102/zeros:output:0lstm_102/zeros_1:output:0!lstm_102/strided_slice_1:output:0@lstm_102/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_102_lstm_cell_102_matmul_readvariableop_resource7lstm_102_lstm_cell_102_matmul_1_readvariableop_resource6lstm_102_lstm_cell_102_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*'
bodyR
lstm_102_while_body_5094601*'
condR
lstm_102_while_cond_5094600*M
output_shapes<
:: : : : :??????????:??????????: : : : : *
parallel_iterations 2
lstm_102/while?
9lstm_102/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2;
9lstm_102/TensorArrayV2Stack/TensorListStack/element_shape?
+lstm_102/TensorArrayV2Stack/TensorListStackTensorListStacklstm_102/while:output:3Blstm_102/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02-
+lstm_102/TensorArrayV2Stack/TensorListStack?
lstm_102/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2 
lstm_102/strided_slice_3/stack?
 lstm_102/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2"
 lstm_102/strided_slice_3/stack_1?
 lstm_102/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_102/strided_slice_3/stack_2?
lstm_102/strided_slice_3StridedSlice4lstm_102/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_102/strided_slice_3/stack:output:0)lstm_102/strided_slice_3/stack_1:output:0)lstm_102/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
lstm_102/strided_slice_3?
lstm_102/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_102/transpose_1/perm?
lstm_102/transpose_1	Transpose4lstm_102/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_102/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
lstm_102/transpose_1x
lstm_102/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_102/runtime?
dense_204/MatMul/ReadVariableOpReadVariableOp(dense_204_matmul_readvariableop_resource*
_output_shapes
:	?d*
dtype02!
dense_204/MatMul/ReadVariableOp?
dense_204/MatMulMatMul!lstm_102/strided_slice_3:output:0'dense_204/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_204/MatMul?
 dense_204/BiasAdd/ReadVariableOpReadVariableOp)dense_204_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02"
 dense_204/BiasAdd/ReadVariableOp?
dense_204/BiasAddBiasAdddense_204/MatMul:product:0(dense_204/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_204/BiasAddv
dense_204/ReluReludense_204/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
dense_204/Relu?
dense_205/MatMul/ReadVariableOpReadVariableOp(dense_205_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02!
dense_205/MatMul/ReadVariableOp?
dense_205/MatMulMatMuldense_204/Relu:activations:0'dense_205/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_205/MatMul?
 dense_205/BiasAdd/ReadVariableOpReadVariableOp)dense_205_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_205/BiasAdd/ReadVariableOp?
dense_205/BiasAddBiasAdddense_205/MatMul:product:0(dense_205/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_205/BiasAdd?
IdentityIdentitydense_205/BiasAdd:output:0!^dense_204/BiasAdd/ReadVariableOp ^dense_204/MatMul/ReadVariableOp!^dense_205/BiasAdd/ReadVariableOp ^dense_205/MatMul/ReadVariableOp.^lstm_102/lstm_cell_102/BiasAdd/ReadVariableOp-^lstm_102/lstm_cell_102/MatMul/ReadVariableOp/^lstm_102/lstm_cell_102/MatMul_1/ReadVariableOp^lstm_102/while*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2D
 dense_204/BiasAdd/ReadVariableOp dense_204/BiasAdd/ReadVariableOp2B
dense_204/MatMul/ReadVariableOpdense_204/MatMul/ReadVariableOp2D
 dense_205/BiasAdd/ReadVariableOp dense_205/BiasAdd/ReadVariableOp2B
dense_205/MatMul/ReadVariableOpdense_205/MatMul/ReadVariableOp2^
-lstm_102/lstm_cell_102/BiasAdd/ReadVariableOp-lstm_102/lstm_cell_102/BiasAdd/ReadVariableOp2\
,lstm_102/lstm_cell_102/MatMul/ReadVariableOp,lstm_102/lstm_cell_102/MatMul/ReadVariableOp2`
.lstm_102/lstm_cell_102/MatMul_1/ReadVariableOp.lstm_102/lstm_cell_102/MatMul_1/ReadVariableOp2 
lstm_102/whilelstm_102/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
0__inference_sequential_102_layer_call_fn_5094301
lstm_102_input
unknown:	?
	unknown_0:
??
	unknown_1:	?
	unknown_2:	?d
	unknown_3:d
	unknown_4:d
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalllstm_102_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
GPU 2J 8? *T
fORM
K__inference_sequential_102_layer_call_and_return_conditional_losses_50942652
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:?????????
(
_user_specified_namelstm_102_input
?
?
while_cond_5094129
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5094129___redundant_placeholder05
1while_while_cond_5094129___redundant_placeholder15
1while_while_cond_5094129___redundant_placeholder25
1while_while_cond_5094129___redundant_placeholder3
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

?
lstm_102_while_cond_5094436.
*lstm_102_while_lstm_102_while_loop_counter4
0lstm_102_while_lstm_102_while_maximum_iterations
lstm_102_while_placeholder 
lstm_102_while_placeholder_1 
lstm_102_while_placeholder_2 
lstm_102_while_placeholder_30
,lstm_102_while_less_lstm_102_strided_slice_1G
Clstm_102_while_lstm_102_while_cond_5094436___redundant_placeholder0G
Clstm_102_while_lstm_102_while_cond_5094436___redundant_placeholder1G
Clstm_102_while_lstm_102_while_cond_5094436___redundant_placeholder2G
Clstm_102_while_lstm_102_while_cond_5094436___redundant_placeholder3
lstm_102_while_identity
?
lstm_102/while/LessLesslstm_102_while_placeholder,lstm_102_while_less_lstm_102_strided_slice_1*
T0*
_output_shapes
: 2
lstm_102/while/Lessx
lstm_102/while/IdentityIdentitylstm_102/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_102/while/Identity";
lstm_102_while_identity lstm_102/while/Identity:output:0*(
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
*__inference_lstm_102_layer_call_fn_5095384

inputs
unknown:	?
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
GPU 2J 8? *N
fIRG
E__inference_lstm_102_layer_call_and_return_conditional_losses_50942142
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?\
?
E__inference_lstm_102_layer_call_and_return_conditional_losses_5095038
inputs_0?
,lstm_cell_102_matmul_readvariableop_resource:	?B
.lstm_cell_102_matmul_1_readvariableop_resource:
??<
-lstm_cell_102_biasadd_readvariableop_resource:	?
identity??$lstm_cell_102/BiasAdd/ReadVariableOp?#lstm_cell_102/MatMul/ReadVariableOp?%lstm_cell_102/MatMul_1/ReadVariableOp?whileF
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
 :??????????????????2
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
valueB"????   27
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
:?????????*
shrink_axis_mask2
strided_slice_2?
#lstm_cell_102/MatMul/ReadVariableOpReadVariableOp,lstm_cell_102_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02%
#lstm_cell_102/MatMul/ReadVariableOp?
lstm_cell_102/MatMulMatMulstrided_slice_2:output:0+lstm_cell_102/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/MatMul?
%lstm_cell_102/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_102_matmul_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02'
%lstm_cell_102/MatMul_1/ReadVariableOp?
lstm_cell_102/MatMul_1MatMulzeros:output:0-lstm_cell_102/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/MatMul_1?
lstm_cell_102/addAddV2lstm_cell_102/MatMul:product:0 lstm_cell_102/MatMul_1:product:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/add?
$lstm_cell_102/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_102_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$lstm_cell_102/BiasAdd/ReadVariableOp?
lstm_cell_102/BiasAddBiasAddlstm_cell_102/add:z:0,lstm_cell_102/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/BiasAdd?
lstm_cell_102/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_102/split/split_dim?
lstm_cell_102/splitSplit&lstm_cell_102/split/split_dim:output:0lstm_cell_102/BiasAdd:output:0*
T0*d
_output_shapesR
P:??????????:??????????:??????????:??????????*
	num_split2
lstm_cell_102/split?
lstm_cell_102/SigmoidSigmoidlstm_cell_102/split:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/Sigmoid?
lstm_cell_102/Sigmoid_1Sigmoidlstm_cell_102/split:output:1*
T0*(
_output_shapes
:??????????2
lstm_cell_102/Sigmoid_1?
lstm_cell_102/mulMullstm_cell_102/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/mul?
lstm_cell_102/ReluRelulstm_cell_102/split:output:2*
T0*(
_output_shapes
:??????????2
lstm_cell_102/Relu?
lstm_cell_102/mul_1Mullstm_cell_102/Sigmoid:y:0 lstm_cell_102/Relu:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/mul_1?
lstm_cell_102/add_1AddV2lstm_cell_102/mul:z:0lstm_cell_102/mul_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/add_1?
lstm_cell_102/Sigmoid_2Sigmoidlstm_cell_102/split:output:3*
T0*(
_output_shapes
:??????????2
lstm_cell_102/Sigmoid_2?
lstm_cell_102/Relu_1Relulstm_cell_102/add_1:z:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/Relu_1?
lstm_cell_102/mul_2Mullstm_cell_102/Sigmoid_2:y:0"lstm_cell_102/Relu_1:activations:0*
T0*(
_output_shapes
:??????????2
lstm_cell_102/mul_2?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_102_matmul_readvariableop_resource.lstm_cell_102_matmul_1_readvariableop_resource-lstm_cell_102_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_5094954*
condR
while_cond_5094953*M
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
IdentityIdentitystrided_slice_3:output:0%^lstm_cell_102/BiasAdd/ReadVariableOp$^lstm_cell_102/MatMul/ReadVariableOp&^lstm_cell_102/MatMul_1/ReadVariableOp^while*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$lstm_cell_102/BiasAdd/ReadVariableOp$lstm_cell_102/BiasAdd/ReadVariableOp2J
#lstm_cell_102/MatMul/ReadVariableOp#lstm_cell_102/MatMul/ReadVariableOp2N
%lstm_cell_102/MatMul_1/ReadVariableOp%lstm_cell_102/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?{
?
#__inference__traced_restore_5095722
file_prefix4
!assignvariableop_dense_204_kernel:	?d/
!assignvariableop_1_dense_204_bias:d5
#assignvariableop_2_dense_205_kernel:d/
!assignvariableop_3_dense_205_bias:&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: C
0assignvariableop_9_lstm_102_lstm_cell_102_kernel:	?O
;assignvariableop_10_lstm_102_lstm_cell_102_recurrent_kernel:
??>
/assignvariableop_11_lstm_102_lstm_cell_102_bias:	?#
assignvariableop_12_total: #
assignvariableop_13_count: >
+assignvariableop_14_adam_dense_204_kernel_m:	?d7
)assignvariableop_15_adam_dense_204_bias_m:d=
+assignvariableop_16_adam_dense_205_kernel_m:d7
)assignvariableop_17_adam_dense_205_bias_m:K
8assignvariableop_18_adam_lstm_102_lstm_cell_102_kernel_m:	?V
Bassignvariableop_19_adam_lstm_102_lstm_cell_102_recurrent_kernel_m:
??E
6assignvariableop_20_adam_lstm_102_lstm_cell_102_bias_m:	?>
+assignvariableop_21_adam_dense_204_kernel_v:	?d7
)assignvariableop_22_adam_dense_204_bias_v:d=
+assignvariableop_23_adam_dense_205_kernel_v:d7
)assignvariableop_24_adam_dense_205_bias_v:K
8assignvariableop_25_adam_lstm_102_lstm_cell_102_kernel_v:	?V
Bassignvariableop_26_adam_lstm_102_lstm_cell_102_recurrent_kernel_v:
??E
6assignvariableop_27_adam_lstm_102_lstm_cell_102_bias_v:	?
identity_29??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_204_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_204_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp#assignvariableop_2_dense_205_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_205_biasIdentity_3:output:0"/device:CPU:0*
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
AssignVariableOp_9AssignVariableOp0assignvariableop_9_lstm_102_lstm_cell_102_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp;assignvariableop_10_lstm_102_lstm_cell_102_recurrent_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp/assignvariableop_11_lstm_102_lstm_cell_102_biasIdentity_11:output:0"/device:CPU:0*
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
AssignVariableOp_14AssignVariableOp+assignvariableop_14_adam_dense_204_kernel_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp)assignvariableop_15_adam_dense_204_bias_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp+assignvariableop_16_adam_dense_205_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp)assignvariableop_17_adam_dense_205_bias_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp8assignvariableop_18_adam_lstm_102_lstm_cell_102_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOpBassignvariableop_19_adam_lstm_102_lstm_cell_102_recurrent_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp6assignvariableop_20_adam_lstm_102_lstm_cell_102_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp+assignvariableop_21_adam_dense_204_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp)assignvariableop_22_adam_dense_204_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp+assignvariableop_23_adam_dense_205_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp)assignvariableop_24_adam_dense_205_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp8assignvariableop_25_adam_lstm_102_lstm_cell_102_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOpBassignvariableop_26_adam_lstm_102_lstm_cell_102_recurrent_kernel_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp6assignvariableop_27_adam_lstm_102_lstm_cell_102_bias_vIdentity_27:output:0"/device:CPU:0*
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
?
J__inference_lstm_cell_102_layer_call_and_return_conditional_losses_5095455

inputs
states_0
states_11
matmul_readvariableop_resource:	?4
 matmul_1_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
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
A:?????????:??????????:??????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
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
E__inference_lstm_102_layer_call_and_return_conditional_losses_5093342

inputs(
lstm_cell_102_5093260:	?)
lstm_cell_102_5093262:
??$
lstm_cell_102_5093264:	?
identity??%lstm_cell_102/StatefulPartitionedCall?whileD
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
 :??????????????????2
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
valueB"????   27
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
:?????????*
shrink_axis_mask2
strided_slice_2?
%lstm_cell_102/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_102_5093260lstm_cell_102_5093262lstm_cell_102_5093264*
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
GPU 2J 8? *S
fNRL
J__inference_lstm_cell_102_layer_call_and_return_conditional_losses_50932592'
%lstm_cell_102/StatefulPartitionedCall?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_102_5093260lstm_cell_102_5093262lstm_cell_102_5093264*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :??????????:??????????: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_5093273*
condR
while_cond_5093272*M
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
IdentityIdentitystrided_slice_3:output:0&^lstm_cell_102/StatefulPartitionedCall^while*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2N
%lstm_cell_102/StatefulPartitionedCall%lstm_cell_102/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
J__inference_lstm_cell_102_layer_call_and_return_conditional_losses_5093259

inputs

states
states_11
matmul_readvariableop_resource:	?4
 matmul_1_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity

identity_1

identity_2??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?MatMul_1/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
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
A:?????????:??????????:??????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_namestates:PL
(
_output_shapes
:??????????
 
_user_specified_namestates"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
M
lstm_102_input;
 serving_default_lstm_102_input:0?????????=
	dense_2050
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?-
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
*V&call_and_return_all_conditional_losses
W__call__
X_default_save_signature"?*
_tf_keras_sequential?*{"name": "sequential_102", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_102", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 2]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "lstm_102_input"}}, {"class_name": "LSTM", "config": {"name": "lstm_102", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 2]}, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 200, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}, {"class_name": "Dense", "config": {"name": "dense_204", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_205", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 12, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 2]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 13}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 7, 2]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 7, 2]}, "float32", "lstm_102_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_102", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 2]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "lstm_102_input"}, "shared_object_id": 0}, {"class_name": "LSTM", "config": {"name": "lstm_102", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 2]}, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 200, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 5}, {"class_name": "Dense", "config": {"name": "dense_204", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 8}, {"class_name": "Dense", "config": {"name": "dense_205", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 11}]}}, "training_config": {"loss": "mse", "metrics": null, "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?

cell

state_spec
	variables
regularization_losses
trainable_variables
	keras_api
*Y&call_and_return_all_conditional_losses
Z__call__"?
_tf_keras_rnn_layer?{"name": "lstm_102", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 2]}, "stateful": false, "must_restore_from_config": false, "class_name": "LSTM", "config": {"name": "lstm_102", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 2]}, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 200, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 5, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 2]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 13}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 7, 2]}}
?

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
*[&call_and_return_all_conditional_losses
\__call__"?
_tf_keras_layer?{"name": "dense_204", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_204", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 8, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 200}}, "shared_object_id": 14}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 200]}}
?

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
*]&call_and_return_all_conditional_losses
^__call__"?
_tf_keras_layer?{"name": "dense_205", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_205", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 11, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 100}}, "shared_object_id": 15}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 100]}}
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

$layers
%layer_metrics
&layer_regularization_losses
'non_trainable_variables
	variables
regularization_losses
(metrics
trainable_variables
W__call__
X_default_save_signature
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses"
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
*	variables
+regularization_losses
,trainable_variables
-	keras_api
*`&call_and_return_all_conditional_losses
a__call__"?
_tf_keras_layer?{"name": "lstm_cell_102", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LSTMCell", "config": {"name": "lstm_cell_102", "trainable": true, "dtype": "float32", "units": 200, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 4}
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

.layers
/layer_metrics
0layer_regularization_losses
1non_trainable_variables
	variables
regularization_losses
2metrics

3states
trainable_variables
Z__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses"
_generic_user_object
#:!	?d2dense_204/kernel
:d2dense_204/bias
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

4layers
5layer_metrics
6layer_regularization_losses
7non_trainable_variables
	variables
regularization_losses
8metrics
trainable_variables
\__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses"
_generic_user_object
": d2dense_205/kernel
:2dense_205/bias
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

9layers
:layer_metrics
;layer_regularization_losses
<non_trainable_variables
	variables
regularization_losses
=metrics
trainable_variables
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
0:.	?2lstm_102/lstm_cell_102/kernel
;:9
??2'lstm_102/lstm_cell_102/recurrent_kernel
*:(?2lstm_102/lstm_cell_102/bias
5
0
1
2"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
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

?layers
@layer_metrics
Alayer_regularization_losses
Bnon_trainable_variables
*	variables
+regularization_losses
Cmetrics
,trainable_variables
a__call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses"
_generic_user_object
'

0"
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
(:&	?d2Adam/dense_204/kernel/m
!:d2Adam/dense_204/bias/m
':%d2Adam/dense_205/kernel/m
!:2Adam/dense_205/bias/m
5:3	?2$Adam/lstm_102/lstm_cell_102/kernel/m
@:>
??2.Adam/lstm_102/lstm_cell_102/recurrent_kernel/m
/:-?2"Adam/lstm_102/lstm_cell_102/bias/m
(:&	?d2Adam/dense_204/kernel/v
!:d2Adam/dense_204/bias/v
':%d2Adam/dense_205/kernel/v
!:2Adam/dense_205/bias/v
5:3	?2$Adam/lstm_102/lstm_cell_102/kernel/v
@:>
??2.Adam/lstm_102/lstm_cell_102/recurrent_kernel/v
/:-?2"Adam/lstm_102/lstm_cell_102/bias/v
?2?
K__inference_sequential_102_layer_call_and_return_conditional_losses_5094534
K__inference_sequential_102_layer_call_and_return_conditional_losses_5094698
K__inference_sequential_102_layer_call_and_return_conditional_losses_5094322
K__inference_sequential_102_layer_call_and_return_conditional_losses_5094343?
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
0__inference_sequential_102_layer_call_fn_5094030
0__inference_sequential_102_layer_call_fn_5094717
0__inference_sequential_102_layer_call_fn_5094736
0__inference_sequential_102_layer_call_fn_5094301?
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
?2?
"__inference__wrapped_model_5093184?
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
annotations? *1?.
,?)
lstm_102_input?????????
?2?
E__inference_lstm_102_layer_call_and_return_conditional_losses_5094887
E__inference_lstm_102_layer_call_and_return_conditional_losses_5095038
E__inference_lstm_102_layer_call_and_return_conditional_losses_5095189
E__inference_lstm_102_layer_call_and_return_conditional_losses_5095340?
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
*__inference_lstm_102_layer_call_fn_5095351
*__inference_lstm_102_layer_call_fn_5095362
*__inference_lstm_102_layer_call_fn_5095373
*__inference_lstm_102_layer_call_fn_5095384?
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
F__inference_dense_204_layer_call_and_return_conditional_losses_5095395?
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
+__inference_dense_204_layer_call_fn_5095404?
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
F__inference_dense_205_layer_call_and_return_conditional_losses_5095414?
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
+__inference_dense_205_layer_call_fn_5095423?
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
%__inference_signature_wrapper_5094370lstm_102_input"?
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
J__inference_lstm_cell_102_layer_call_and_return_conditional_losses_5095455
J__inference_lstm_cell_102_layer_call_and_return_conditional_losses_5095487?
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
/__inference_lstm_cell_102_layer_call_fn_5095504
/__inference_lstm_cell_102_layer_call_fn_5095521?
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
"__inference__wrapped_model_5093184}!"#;?8
1?.
,?)
lstm_102_input?????????
? "5?2
0
	dense_205#? 
	dense_205??????????
F__inference_dense_204_layer_call_and_return_conditional_losses_5095395]0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????d
? 
+__inference_dense_204_layer_call_fn_5095404P0?-
&?#
!?
inputs??????????
? "??????????d?
F__inference_dense_205_layer_call_and_return_conditional_losses_5095414\/?,
%?"
 ?
inputs?????????d
? "%?"
?
0?????????
? ~
+__inference_dense_205_layer_call_fn_5095423O/?,
%?"
 ?
inputs?????????d
? "???????????
E__inference_lstm_102_layer_call_and_return_conditional_losses_5094887~!"#O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p 

 
? "&?#
?
0??????????
? ?
E__inference_lstm_102_layer_call_and_return_conditional_losses_5095038~!"#O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p

 
? "&?#
?
0??????????
? ?
E__inference_lstm_102_layer_call_and_return_conditional_losses_5095189n!"#??<
5?2
$?!
inputs?????????

 
p 

 
? "&?#
?
0??????????
? ?
E__inference_lstm_102_layer_call_and_return_conditional_losses_5095340n!"#??<
5?2
$?!
inputs?????????

 
p

 
? "&?#
?
0??????????
? ?
*__inference_lstm_102_layer_call_fn_5095351q!"#O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p 

 
? "????????????
*__inference_lstm_102_layer_call_fn_5095362q!"#O?L
E?B
4?1
/?,
inputs/0??????????????????

 
p

 
? "????????????
*__inference_lstm_102_layer_call_fn_5095373a!"#??<
5?2
$?!
inputs?????????

 
p 

 
? "????????????
*__inference_lstm_102_layer_call_fn_5095384a!"#??<
5?2
$?!
inputs?????????

 
p

 
? "????????????
J__inference_lstm_cell_102_layer_call_and_return_conditional_losses_5095455?!"#??
x?u
 ?
inputs?????????
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
J__inference_lstm_cell_102_layer_call_and_return_conditional_losses_5095487?!"#??
x?u
 ?
inputs?????????
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
/__inference_lstm_cell_102_layer_call_fn_5095504?!"#??
x?u
 ?
inputs?????????
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
/__inference_lstm_cell_102_layer_call_fn_5095521?!"#??
x?u
 ?
inputs?????????
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
K__inference_sequential_102_layer_call_and_return_conditional_losses_5094322u!"#C?@
9?6
,?)
lstm_102_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_102_layer_call_and_return_conditional_losses_5094343u!"#C?@
9?6
,?)
lstm_102_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_102_layer_call_and_return_conditional_losses_5094534m!"#;?8
1?.
$?!
inputs?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_102_layer_call_and_return_conditional_losses_5094698m!"#;?8
1?.
$?!
inputs?????????
p

 
? "%?"
?
0?????????
? ?
0__inference_sequential_102_layer_call_fn_5094030h!"#C?@
9?6
,?)
lstm_102_input?????????
p 

 
? "???????????
0__inference_sequential_102_layer_call_fn_5094301h!"#C?@
9?6
,?)
lstm_102_input?????????
p

 
? "???????????
0__inference_sequential_102_layer_call_fn_5094717`!"#;?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_102_layer_call_fn_5094736`!"#;?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_5094370?!"#M?J
? 
C?@
>
lstm_102_input,?)
lstm_102_input?????????"5?2
0
	dense_205#? 
	dense_205?????????