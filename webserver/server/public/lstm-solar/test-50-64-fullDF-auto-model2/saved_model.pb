þ
½
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
"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718¿¢
{
dense_56/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Èd* 
shared_namedense_56/kernel
t
#dense_56/kernel/Read/ReadVariableOpReadVariableOpdense_56/kernel*
_output_shapes
:	Èd*
dtype0
r
dense_56/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*
shared_namedense_56/bias
k
!dense_56/bias/Read/ReadVariableOpReadVariableOpdense_56/bias*
_output_shapes
:d*
dtype0
z
dense_57/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d* 
shared_namedense_57/kernel
s
#dense_57/kernel/Read/ReadVariableOpReadVariableOpdense_57/kernel*
_output_shapes

:d*
dtype0
r
dense_57/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_57/bias
k
!dense_57/bias/Read/ReadVariableOpReadVariableOpdense_57/bias*
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
lstm_28/lstm_cell_28/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *,
shared_namelstm_28/lstm_cell_28/kernel

/lstm_28/lstm_cell_28/kernel/Read/ReadVariableOpReadVariableOplstm_28/lstm_cell_28/kernel*
_output_shapes
:	 *
dtype0
¨
%lstm_28/lstm_cell_28/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
È *6
shared_name'%lstm_28/lstm_cell_28/recurrent_kernel
¡
9lstm_28/lstm_cell_28/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_28/lstm_cell_28/recurrent_kernel* 
_output_shapes
:
È *
dtype0

lstm_28/lstm_cell_28/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_namelstm_28/lstm_cell_28/bias

-lstm_28/lstm_cell_28/bias/Read/ReadVariableOpReadVariableOplstm_28/lstm_cell_28/bias*
_output_shapes	
: *
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

Adam/dense_56/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Èd*'
shared_nameAdam/dense_56/kernel/m

*Adam/dense_56/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_56/kernel/m*
_output_shapes
:	Èd*
dtype0

Adam/dense_56/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*%
shared_nameAdam/dense_56/bias/m
y
(Adam/dense_56/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_56/bias/m*
_output_shapes
:d*
dtype0

Adam/dense_57/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*'
shared_nameAdam/dense_57/kernel/m

*Adam/dense_57/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_57/kernel/m*
_output_shapes

:d*
dtype0

Adam/dense_57/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_57/bias/m
y
(Adam/dense_57/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_57/bias/m*
_output_shapes
:*
dtype0
¡
"Adam/lstm_28/lstm_cell_28/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *3
shared_name$"Adam/lstm_28/lstm_cell_28/kernel/m

6Adam/lstm_28/lstm_cell_28/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_28/lstm_cell_28/kernel/m*
_output_shapes
:	 *
dtype0
¶
,Adam/lstm_28/lstm_cell_28/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
È *=
shared_name.,Adam/lstm_28/lstm_cell_28/recurrent_kernel/m
¯
@Adam/lstm_28/lstm_cell_28/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_28/lstm_cell_28/recurrent_kernel/m* 
_output_shapes
:
È *
dtype0

 Adam/lstm_28/lstm_cell_28/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" Adam/lstm_28/lstm_cell_28/bias/m

4Adam/lstm_28/lstm_cell_28/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_28/lstm_cell_28/bias/m*
_output_shapes	
: *
dtype0

Adam/dense_56/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Èd*'
shared_nameAdam/dense_56/kernel/v

*Adam/dense_56/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_56/kernel/v*
_output_shapes
:	Èd*
dtype0

Adam/dense_56/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*%
shared_nameAdam/dense_56/bias/v
y
(Adam/dense_56/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_56/bias/v*
_output_shapes
:d*
dtype0

Adam/dense_57/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*'
shared_nameAdam/dense_57/kernel/v

*Adam/dense_57/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_57/kernel/v*
_output_shapes

:d*
dtype0

Adam/dense_57/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_57/bias/v
y
(Adam/dense_57/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_57/bias/v*
_output_shapes
:*
dtype0
¡
"Adam/lstm_28/lstm_cell_28/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *3
shared_name$"Adam/lstm_28/lstm_cell_28/kernel/v

6Adam/lstm_28/lstm_cell_28/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_28/lstm_cell_28/kernel/v*
_output_shapes
:	 *
dtype0
¶
,Adam/lstm_28/lstm_cell_28/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
È *=
shared_name.,Adam/lstm_28/lstm_cell_28/recurrent_kernel/v
¯
@Adam/lstm_28/lstm_cell_28/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_28/lstm_cell_28/recurrent_kernel/v* 
_output_shapes
:
È *
dtype0

 Adam/lstm_28/lstm_cell_28/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" Adam/lstm_28/lstm_cell_28/bias/v

4Adam/lstm_28/lstm_cell_28/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_28/lstm_cell_28/bias/v*
_output_shapes	
: *
dtype0

NoOpNoOp
­)
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*è(
valueÞ(BÛ( BÔ(
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
­

$layers
%layer_metrics
&layer_regularization_losses
'non_trainable_variables
	variables
regularization_losses
(metrics
trainable_variables
 

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
¹

.layers
/layer_metrics
0layer_regularization_losses
1non_trainable_variables
	variables
regularization_losses
2metrics

3states
trainable_variables
[Y
VARIABLE_VALUEdense_56/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_56/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
­

4layers
5layer_metrics
6layer_regularization_losses
7non_trainable_variables
	variables
regularization_losses
8metrics
trainable_variables
[Y
VARIABLE_VALUEdense_57/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_57/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
­

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
WU
VARIABLE_VALUElstm_28/lstm_cell_28/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%lstm_28/lstm_cell_28/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_28/lstm_cell_28/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
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
­

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
~|
VARIABLE_VALUEAdam/dense_56/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_56/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_57/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_57/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_28/lstm_cell_28/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_28/lstm_cell_28/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_28/lstm_cell_28/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_56/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_56/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_57/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_57/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_28/lstm_cell_28/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_28/lstm_cell_28/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_28/lstm_cell_28/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_lstm_28_inputPlaceholder*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0* 
shape:ÿÿÿÿÿÿÿÿÿ
æ
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_28_inputlstm_28/lstm_cell_28/kernel%lstm_28/lstm_cell_28/recurrent_kernellstm_28/lstm_cell_28/biasdense_56/kerneldense_56/biasdense_57/kerneldense_57/bias*
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
%__inference_signature_wrapper_1281240
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ú
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_56/kernel/Read/ReadVariableOp!dense_56/bias/Read/ReadVariableOp#dense_57/kernel/Read/ReadVariableOp!dense_57/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp/lstm_28/lstm_cell_28/kernel/Read/ReadVariableOp9lstm_28/lstm_cell_28/recurrent_kernel/Read/ReadVariableOp-lstm_28/lstm_cell_28/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_56/kernel/m/Read/ReadVariableOp(Adam/dense_56/bias/m/Read/ReadVariableOp*Adam/dense_57/kernel/m/Read/ReadVariableOp(Adam/dense_57/bias/m/Read/ReadVariableOp6Adam/lstm_28/lstm_cell_28/kernel/m/Read/ReadVariableOp@Adam/lstm_28/lstm_cell_28/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_28/lstm_cell_28/bias/m/Read/ReadVariableOp*Adam/dense_56/kernel/v/Read/ReadVariableOp(Adam/dense_56/bias/v/Read/ReadVariableOp*Adam/dense_57/kernel/v/Read/ReadVariableOp(Adam/dense_57/bias/v/Read/ReadVariableOp6Adam/lstm_28/lstm_cell_28/kernel/v/Read/ReadVariableOp@Adam/lstm_28/lstm_cell_28/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_28/lstm_cell_28/bias/v/Read/ReadVariableOpConst*)
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
 __inference__traced_save_1282498
Å
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_56/kerneldense_56/biasdense_57/kerneldense_57/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_28/lstm_cell_28/kernel%lstm_28/lstm_cell_28/recurrent_kernellstm_28/lstm_cell_28/biastotalcountAdam/dense_56/kernel/mAdam/dense_56/bias/mAdam/dense_57/kernel/mAdam/dense_57/bias/m"Adam/lstm_28/lstm_cell_28/kernel/m,Adam/lstm_28/lstm_cell_28/recurrent_kernel/m Adam/lstm_28/lstm_cell_28/bias/mAdam/dense_56/kernel/vAdam/dense_56/bias/vAdam/dense_57/kernel/vAdam/dense_57/bias/v"Adam/lstm_28/lstm_cell_28/kernel/v,Adam/lstm_28/lstm_cell_28/recurrent_kernel/v Adam/lstm_28/lstm_cell_28/bias/v*(
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
#__inference__traced_restore_1282592´¦
C
Ó
while_body_1281824
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_28_matmul_readvariableop_resource_0:	 I
5while_lstm_cell_28_matmul_1_readvariableop_resource_0:
È C
4while_lstm_cell_28_biasadd_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_28_matmul_readvariableop_resource:	 G
3while_lstm_cell_28_matmul_1_readvariableop_resource:
È A
2while_lstm_cell_28_biasadd_readvariableop_resource:	 ¢)while/lstm_cell_28/BiasAdd/ReadVariableOp¢(while/lstm_cell_28/MatMul/ReadVariableOp¢*while/lstm_cell_28/MatMul_1/ReadVariableOpÃ
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
(while/lstm_cell_28/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_28_matmul_readvariableop_resource_0*
_output_shapes
:	 *
dtype02*
(while/lstm_cell_28/MatMul/ReadVariableOp×
while/lstm_cell_28/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_28/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_28/MatMulÐ
*while/lstm_cell_28/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_28_matmul_1_readvariableop_resource_0* 
_output_shapes
:
È *
dtype02,
*while/lstm_cell_28/MatMul_1/ReadVariableOpÀ
while/lstm_cell_28/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_28/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_28/MatMul_1¸
while/lstm_cell_28/addAddV2#while/lstm_cell_28/MatMul:product:0%while/lstm_cell_28/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_28/addÈ
)while/lstm_cell_28/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_28_biasadd_readvariableop_resource_0*
_output_shapes	
: *
dtype02+
)while/lstm_cell_28/BiasAdd/ReadVariableOpÅ
while/lstm_cell_28/BiasAddBiasAddwhile/lstm_cell_28/add:z:01while/lstm_cell_28/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_28/BiasAdd
"while/lstm_cell_28/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_28/split/split_dim
while/lstm_cell_28/splitSplit+while/lstm_cell_28/split/split_dim:output:0#while/lstm_cell_28/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
while/lstm_cell_28/split
while/lstm_cell_28/SigmoidSigmoid!while/lstm_cell_28/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_28/Sigmoid
while/lstm_cell_28/Sigmoid_1Sigmoid!while/lstm_cell_28/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_28/Sigmoid_1¡
while/lstm_cell_28/mulMul while/lstm_cell_28/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_28/mul
while/lstm_cell_28/ReluRelu!while/lstm_cell_28/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_28/Reluµ
while/lstm_cell_28/mul_1Mulwhile/lstm_cell_28/Sigmoid:y:0%while/lstm_cell_28/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_28/mul_1ª
while/lstm_cell_28/add_1AddV2while/lstm_cell_28/mul:z:0while/lstm_cell_28/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_28/add_1
while/lstm_cell_28/Sigmoid_2Sigmoid!while/lstm_cell_28/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_28/Sigmoid_2
while/lstm_cell_28/Relu_1Reluwhile/lstm_cell_28/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_28/Relu_1¹
while/lstm_cell_28/mul_2Mul while/lstm_cell_28/Sigmoid_2:y:0'while/lstm_cell_28/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_28/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_28/mul_2:z:0*
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
while/add_1â
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_28/BiasAdd/ReadVariableOp)^while/lstm_cell_28/MatMul/ReadVariableOp+^while/lstm_cell_28/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityõ
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_28/BiasAdd/ReadVariableOp)^while/lstm_cell_28/MatMul/ReadVariableOp+^while/lstm_cell_28/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ä
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_28/BiasAdd/ReadVariableOp)^while/lstm_cell_28/MatMul/ReadVariableOp+^while/lstm_cell_28/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_28/BiasAdd/ReadVariableOp)^while/lstm_cell_28/MatMul/ReadVariableOp+^while/lstm_cell_28/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_28/mul_2:z:0*^while/lstm_cell_28/BiasAdd/ReadVariableOp)^while/lstm_cell_28/MatMul/ReadVariableOp+^while/lstm_cell_28/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_28/add_1:z:0*^while/lstm_cell_28/BiasAdd/ReadVariableOp)^while/lstm_cell_28/MatMul/ReadVariableOp+^while/lstm_cell_28/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_28_biasadd_readvariableop_resource4while_lstm_cell_28_biasadd_readvariableop_resource_0"l
3while_lstm_cell_28_matmul_1_readvariableop_resource5while_lstm_cell_28_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_28_matmul_readvariableop_resource3while_lstm_cell_28_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : 2V
)while/lstm_cell_28/BiasAdd/ReadVariableOp)while/lstm_cell_28/BiasAdd/ReadVariableOp2T
(while/lstm_cell_28/MatMul/ReadVariableOp(while/lstm_cell_28/MatMul/ReadVariableOp2X
*while/lstm_cell_28/MatMul_1/ReadVariableOp*while/lstm_cell_28/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿÈ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ:

_output_shapes
: :

_output_shapes
: 
ð
ù
"__inference__wrapped_model_1280054
lstm_28_inputT
Asequential_28_lstm_28_lstm_cell_28_matmul_readvariableop_resource:	 W
Csequential_28_lstm_28_lstm_cell_28_matmul_1_readvariableop_resource:
È Q
Bsequential_28_lstm_28_lstm_cell_28_biasadd_readvariableop_resource:	 H
5sequential_28_dense_56_matmul_readvariableop_resource:	ÈdD
6sequential_28_dense_56_biasadd_readvariableop_resource:dG
5sequential_28_dense_57_matmul_readvariableop_resource:dD
6sequential_28_dense_57_biasadd_readvariableop_resource:
identity¢-sequential_28/dense_56/BiasAdd/ReadVariableOp¢,sequential_28/dense_56/MatMul/ReadVariableOp¢-sequential_28/dense_57/BiasAdd/ReadVariableOp¢,sequential_28/dense_57/MatMul/ReadVariableOp¢9sequential_28/lstm_28/lstm_cell_28/BiasAdd/ReadVariableOp¢8sequential_28/lstm_28/lstm_cell_28/MatMul/ReadVariableOp¢:sequential_28/lstm_28/lstm_cell_28/MatMul_1/ReadVariableOp¢sequential_28/lstm_28/whilew
sequential_28/lstm_28/ShapeShapelstm_28_input*
T0*
_output_shapes
:2
sequential_28/lstm_28/Shape 
)sequential_28/lstm_28/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_28/lstm_28/strided_slice/stack¤
+sequential_28/lstm_28/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_28/lstm_28/strided_slice/stack_1¤
+sequential_28/lstm_28/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_28/lstm_28/strided_slice/stack_2æ
#sequential_28/lstm_28/strided_sliceStridedSlice$sequential_28/lstm_28/Shape:output:02sequential_28/lstm_28/strided_slice/stack:output:04sequential_28/lstm_28/strided_slice/stack_1:output:04sequential_28/lstm_28/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential_28/lstm_28/strided_slice
!sequential_28/lstm_28/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :È2#
!sequential_28/lstm_28/zeros/mul/yÄ
sequential_28/lstm_28/zeros/mulMul,sequential_28/lstm_28/strided_slice:output:0*sequential_28/lstm_28/zeros/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential_28/lstm_28/zeros/mul
"sequential_28/lstm_28/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2$
"sequential_28/lstm_28/zeros/Less/y¿
 sequential_28/lstm_28/zeros/LessLess#sequential_28/lstm_28/zeros/mul:z:0+sequential_28/lstm_28/zeros/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential_28/lstm_28/zeros/Less
$sequential_28/lstm_28/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :È2&
$sequential_28/lstm_28/zeros/packed/1Û
"sequential_28/lstm_28/zeros/packedPack,sequential_28/lstm_28/strided_slice:output:0-sequential_28/lstm_28/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential_28/lstm_28/zeros/packed
!sequential_28/lstm_28/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential_28/lstm_28/zeros/ConstÎ
sequential_28/lstm_28/zerosFill+sequential_28/lstm_28/zeros/packed:output:0*sequential_28/lstm_28/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
sequential_28/lstm_28/zeros
#sequential_28/lstm_28/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :È2%
#sequential_28/lstm_28/zeros_1/mul/yÊ
!sequential_28/lstm_28/zeros_1/mulMul,sequential_28/lstm_28/strided_slice:output:0,sequential_28/lstm_28/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2#
!sequential_28/lstm_28/zeros_1/mul
$sequential_28/lstm_28/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2&
$sequential_28/lstm_28/zeros_1/Less/yÇ
"sequential_28/lstm_28/zeros_1/LessLess%sequential_28/lstm_28/zeros_1/mul:z:0-sequential_28/lstm_28/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2$
"sequential_28/lstm_28/zeros_1/Less
&sequential_28/lstm_28/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :È2(
&sequential_28/lstm_28/zeros_1/packed/1á
$sequential_28/lstm_28/zeros_1/packedPack,sequential_28/lstm_28/strided_slice:output:0/sequential_28/lstm_28/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2&
$sequential_28/lstm_28/zeros_1/packed
#sequential_28/lstm_28/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#sequential_28/lstm_28/zeros_1/ConstÖ
sequential_28/lstm_28/zeros_1Fill-sequential_28/lstm_28/zeros_1/packed:output:0,sequential_28/lstm_28/zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
sequential_28/lstm_28/zeros_1¡
$sequential_28/lstm_28/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential_28/lstm_28/transpose/permÃ
sequential_28/lstm_28/transpose	Transposelstm_28_input-sequential_28/lstm_28/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
sequential_28/lstm_28/transpose
sequential_28/lstm_28/Shape_1Shape#sequential_28/lstm_28/transpose:y:0*
T0*
_output_shapes
:2
sequential_28/lstm_28/Shape_1¤
+sequential_28/lstm_28/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_28/lstm_28/strided_slice_1/stack¨
-sequential_28/lstm_28/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_28/lstm_28/strided_slice_1/stack_1¨
-sequential_28/lstm_28/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_28/lstm_28/strided_slice_1/stack_2ò
%sequential_28/lstm_28/strided_slice_1StridedSlice&sequential_28/lstm_28/Shape_1:output:04sequential_28/lstm_28/strided_slice_1/stack:output:06sequential_28/lstm_28/strided_slice_1/stack_1:output:06sequential_28/lstm_28/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%sequential_28/lstm_28/strided_slice_1±
1sequential_28/lstm_28/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ23
1sequential_28/lstm_28/TensorArrayV2/element_shape
#sequential_28/lstm_28/TensorArrayV2TensorListReserve:sequential_28/lstm_28/TensorArrayV2/element_shape:output:0.sequential_28/lstm_28/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential_28/lstm_28/TensorArrayV2ë
Ksequential_28/lstm_28/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2M
Ksequential_28/lstm_28/TensorArrayUnstack/TensorListFromTensor/element_shapeÐ
=sequential_28/lstm_28/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_28/lstm_28/transpose:y:0Tsequential_28/lstm_28/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02?
=sequential_28/lstm_28/TensorArrayUnstack/TensorListFromTensor¤
+sequential_28/lstm_28/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_28/lstm_28/strided_slice_2/stack¨
-sequential_28/lstm_28/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_28/lstm_28/strided_slice_2/stack_1¨
-sequential_28/lstm_28/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_28/lstm_28/strided_slice_2/stack_2
%sequential_28/lstm_28/strided_slice_2StridedSlice#sequential_28/lstm_28/transpose:y:04sequential_28/lstm_28/strided_slice_2/stack:output:06sequential_28/lstm_28/strided_slice_2/stack_1:output:06sequential_28/lstm_28/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2'
%sequential_28/lstm_28/strided_slice_2÷
8sequential_28/lstm_28/lstm_cell_28/MatMul/ReadVariableOpReadVariableOpAsequential_28_lstm_28_lstm_cell_28_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype02:
8sequential_28/lstm_28/lstm_cell_28/MatMul/ReadVariableOp
)sequential_28/lstm_28/lstm_cell_28/MatMulMatMul.sequential_28/lstm_28/strided_slice_2:output:0@sequential_28/lstm_28/lstm_cell_28/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)sequential_28/lstm_28/lstm_cell_28/MatMulþ
:sequential_28/lstm_28/lstm_cell_28/MatMul_1/ReadVariableOpReadVariableOpCsequential_28_lstm_28_lstm_cell_28_matmul_1_readvariableop_resource* 
_output_shapes
:
È *
dtype02<
:sequential_28/lstm_28/lstm_cell_28/MatMul_1/ReadVariableOp
+sequential_28/lstm_28/lstm_cell_28/MatMul_1MatMul$sequential_28/lstm_28/zeros:output:0Bsequential_28/lstm_28/lstm_cell_28/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+sequential_28/lstm_28/lstm_cell_28/MatMul_1ø
&sequential_28/lstm_28/lstm_cell_28/addAddV23sequential_28/lstm_28/lstm_cell_28/MatMul:product:05sequential_28/lstm_28/lstm_cell_28/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2(
&sequential_28/lstm_28/lstm_cell_28/addö
9sequential_28/lstm_28/lstm_cell_28/BiasAdd/ReadVariableOpReadVariableOpBsequential_28_lstm_28_lstm_cell_28_biasadd_readvariableop_resource*
_output_shapes	
: *
dtype02;
9sequential_28/lstm_28/lstm_cell_28/BiasAdd/ReadVariableOp
*sequential_28/lstm_28/lstm_cell_28/BiasAddBiasAdd*sequential_28/lstm_28/lstm_cell_28/add:z:0Asequential_28/lstm_28/lstm_cell_28/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*sequential_28/lstm_28/lstm_cell_28/BiasAddª
2sequential_28/lstm_28/lstm_cell_28/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :24
2sequential_28/lstm_28/lstm_cell_28/split/split_dimÏ
(sequential_28/lstm_28/lstm_cell_28/splitSplit;sequential_28/lstm_28/lstm_cell_28/split/split_dim:output:03sequential_28/lstm_28/lstm_cell_28/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2*
(sequential_28/lstm_28/lstm_cell_28/splitÉ
*sequential_28/lstm_28/lstm_cell_28/SigmoidSigmoid1sequential_28/lstm_28/lstm_cell_28/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2,
*sequential_28/lstm_28/lstm_cell_28/SigmoidÍ
,sequential_28/lstm_28/lstm_cell_28/Sigmoid_1Sigmoid1sequential_28/lstm_28/lstm_cell_28/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2.
,sequential_28/lstm_28/lstm_cell_28/Sigmoid_1ä
&sequential_28/lstm_28/lstm_cell_28/mulMul0sequential_28/lstm_28/lstm_cell_28/Sigmoid_1:y:0&sequential_28/lstm_28/zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2(
&sequential_28/lstm_28/lstm_cell_28/mulÀ
'sequential_28/lstm_28/lstm_cell_28/ReluRelu1sequential_28/lstm_28/lstm_cell_28/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2)
'sequential_28/lstm_28/lstm_cell_28/Reluõ
(sequential_28/lstm_28/lstm_cell_28/mul_1Mul.sequential_28/lstm_28/lstm_cell_28/Sigmoid:y:05sequential_28/lstm_28/lstm_cell_28/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2*
(sequential_28/lstm_28/lstm_cell_28/mul_1ê
(sequential_28/lstm_28/lstm_cell_28/add_1AddV2*sequential_28/lstm_28/lstm_cell_28/mul:z:0,sequential_28/lstm_28/lstm_cell_28/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2*
(sequential_28/lstm_28/lstm_cell_28/add_1Í
,sequential_28/lstm_28/lstm_cell_28/Sigmoid_2Sigmoid1sequential_28/lstm_28/lstm_cell_28/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2.
,sequential_28/lstm_28/lstm_cell_28/Sigmoid_2¿
)sequential_28/lstm_28/lstm_cell_28/Relu_1Relu,sequential_28/lstm_28/lstm_cell_28/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2+
)sequential_28/lstm_28/lstm_cell_28/Relu_1ù
(sequential_28/lstm_28/lstm_cell_28/mul_2Mul0sequential_28/lstm_28/lstm_cell_28/Sigmoid_2:y:07sequential_28/lstm_28/lstm_cell_28/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2*
(sequential_28/lstm_28/lstm_cell_28/mul_2»
3sequential_28/lstm_28/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÈ   25
3sequential_28/lstm_28/TensorArrayV2_1/element_shape
%sequential_28/lstm_28/TensorArrayV2_1TensorListReserve<sequential_28/lstm_28/TensorArrayV2_1/element_shape:output:0.sequential_28/lstm_28/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02'
%sequential_28/lstm_28/TensorArrayV2_1z
sequential_28/lstm_28/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_28/lstm_28/time«
.sequential_28/lstm_28/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ20
.sequential_28/lstm_28/while/maximum_iterations
(sequential_28/lstm_28/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential_28/lstm_28/while/loop_counter¾
sequential_28/lstm_28/whileWhile1sequential_28/lstm_28/while/loop_counter:output:07sequential_28/lstm_28/while/maximum_iterations:output:0#sequential_28/lstm_28/time:output:0.sequential_28/lstm_28/TensorArrayV2_1:handle:0$sequential_28/lstm_28/zeros:output:0&sequential_28/lstm_28/zeros_1:output:0.sequential_28/lstm_28/strided_slice_1:output:0Msequential_28/lstm_28/TensorArrayUnstack/TensorListFromTensor:output_handle:0Asequential_28_lstm_28_lstm_cell_28_matmul_readvariableop_resourceCsequential_28_lstm_28_lstm_cell_28_matmul_1_readvariableop_resourceBsequential_28_lstm_28_lstm_cell_28_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : *%
_read_only_resource_inputs
	
*4
body,R*
(sequential_28_lstm_28_while_body_1279957*4
cond,R*
(sequential_28_lstm_28_while_cond_1279956*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : *
parallel_iterations 2
sequential_28/lstm_28/whileá
Fsequential_28/lstm_28/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÈ   2H
Fsequential_28/lstm_28/TensorArrayV2Stack/TensorListStack/element_shapeÁ
8sequential_28/lstm_28/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_28/lstm_28/while:output:3Osequential_28/lstm_28/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*
element_dtype02:
8sequential_28/lstm_28/TensorArrayV2Stack/TensorListStack­
+sequential_28/lstm_28/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2-
+sequential_28/lstm_28/strided_slice_3/stack¨
-sequential_28/lstm_28/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2/
-sequential_28/lstm_28/strided_slice_3/stack_1¨
-sequential_28/lstm_28/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_28/lstm_28/strided_slice_3/stack_2
%sequential_28/lstm_28/strided_slice_3StridedSliceAsequential_28/lstm_28/TensorArrayV2Stack/TensorListStack:tensor:04sequential_28/lstm_28/strided_slice_3/stack:output:06sequential_28/lstm_28/strided_slice_3/stack_1:output:06sequential_28/lstm_28/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*
shrink_axis_mask2'
%sequential_28/lstm_28/strided_slice_3¥
&sequential_28/lstm_28/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&sequential_28/lstm_28/transpose_1/permþ
!sequential_28/lstm_28/transpose_1	TransposeAsequential_28/lstm_28/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_28/lstm_28/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2#
!sequential_28/lstm_28/transpose_1
sequential_28/lstm_28/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_28/lstm_28/runtimeÓ
,sequential_28/dense_56/MatMul/ReadVariableOpReadVariableOp5sequential_28_dense_56_matmul_readvariableop_resource*
_output_shapes
:	Èd*
dtype02.
,sequential_28/dense_56/MatMul/ReadVariableOpà
sequential_28/dense_56/MatMulMatMul.sequential_28/lstm_28/strided_slice_3:output:04sequential_28/dense_56/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
sequential_28/dense_56/MatMulÑ
-sequential_28/dense_56/BiasAdd/ReadVariableOpReadVariableOp6sequential_28_dense_56_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02/
-sequential_28/dense_56/BiasAdd/ReadVariableOpÝ
sequential_28/dense_56/BiasAddBiasAdd'sequential_28/dense_56/MatMul:product:05sequential_28/dense_56/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2 
sequential_28/dense_56/BiasAdd
sequential_28/dense_56/ReluRelu'sequential_28/dense_56/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
sequential_28/dense_56/ReluÒ
,sequential_28/dense_57/MatMul/ReadVariableOpReadVariableOp5sequential_28_dense_57_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02.
,sequential_28/dense_57/MatMul/ReadVariableOpÛ
sequential_28/dense_57/MatMulMatMul)sequential_28/dense_56/Relu:activations:04sequential_28/dense_57/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_28/dense_57/MatMulÑ
-sequential_28/dense_57/BiasAdd/ReadVariableOpReadVariableOp6sequential_28_dense_57_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_28/dense_57/BiasAdd/ReadVariableOpÝ
sequential_28/dense_57/BiasAddBiasAdd'sequential_28/dense_57/MatMul:product:05sequential_28/dense_57/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
sequential_28/dense_57/BiasAdd
IdentityIdentity'sequential_28/dense_57/BiasAdd:output:0.^sequential_28/dense_56/BiasAdd/ReadVariableOp-^sequential_28/dense_56/MatMul/ReadVariableOp.^sequential_28/dense_57/BiasAdd/ReadVariableOp-^sequential_28/dense_57/MatMul/ReadVariableOp:^sequential_28/lstm_28/lstm_cell_28/BiasAdd/ReadVariableOp9^sequential_28/lstm_28/lstm_cell_28/MatMul/ReadVariableOp;^sequential_28/lstm_28/lstm_cell_28/MatMul_1/ReadVariableOp^sequential_28/lstm_28/while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2^
-sequential_28/dense_56/BiasAdd/ReadVariableOp-sequential_28/dense_56/BiasAdd/ReadVariableOp2\
,sequential_28/dense_56/MatMul/ReadVariableOp,sequential_28/dense_56/MatMul/ReadVariableOp2^
-sequential_28/dense_57/BiasAdd/ReadVariableOp-sequential_28/dense_57/BiasAdd/ReadVariableOp2\
,sequential_28/dense_57/MatMul/ReadVariableOp,sequential_28/dense_57/MatMul/ReadVariableOp2v
9sequential_28/lstm_28/lstm_cell_28/BiasAdd/ReadVariableOp9sequential_28/lstm_28/lstm_cell_28/BiasAdd/ReadVariableOp2t
8sequential_28/lstm_28/lstm_cell_28/MatMul/ReadVariableOp8sequential_28/lstm_28/lstm_cell_28/MatMul/ReadVariableOp2x
:sequential_28/lstm_28/lstm_cell_28/MatMul_1/ReadVariableOp:sequential_28/lstm_28/lstm_cell_28/MatMul_1/ReadVariableOp2:
sequential_28/lstm_28/whilesequential_28/lstm_28/while:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelstm_28_input
È[

D__inference_lstm_28_layer_call_and_return_conditional_losses_1281757
inputs_0>
+lstm_cell_28_matmul_readvariableop_resource:	 A
-lstm_cell_28_matmul_1_readvariableop_resource:
È ;
,lstm_cell_28_biasadd_readvariableop_resource:	 
identity¢#lstm_cell_28/BiasAdd/ReadVariableOp¢"lstm_cell_28/MatMul/ReadVariableOp¢$lstm_cell_28/MatMul_1/ReadVariableOp¢whileF
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
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :È2
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
B :è2
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
B :È2
zeros_1/packed/1
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
:ÿÿÿÿÿÿÿÿÿÈ2	
zeros_1u
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
"lstm_cell_28/MatMul/ReadVariableOpReadVariableOp+lstm_cell_28_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype02$
"lstm_cell_28/MatMul/ReadVariableOp­
lstm_cell_28/MatMulMatMulstrided_slice_2:output:0*lstm_cell_28/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_28/MatMul¼
$lstm_cell_28/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_28_matmul_1_readvariableop_resource* 
_output_shapes
:
È *
dtype02&
$lstm_cell_28/MatMul_1/ReadVariableOp©
lstm_cell_28/MatMul_1MatMulzeros:output:0,lstm_cell_28/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_28/MatMul_1 
lstm_cell_28/addAddV2lstm_cell_28/MatMul:product:0lstm_cell_28/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_28/add´
#lstm_cell_28/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_28_biasadd_readvariableop_resource*
_output_shapes	
: *
dtype02%
#lstm_cell_28/BiasAdd/ReadVariableOp­
lstm_cell_28/BiasAddBiasAddlstm_cell_28/add:z:0+lstm_cell_28/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_28/BiasAdd~
lstm_cell_28/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_28/split/split_dim÷
lstm_cell_28/splitSplit%lstm_cell_28/split/split_dim:output:0lstm_cell_28/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
lstm_cell_28/split
lstm_cell_28/SigmoidSigmoidlstm_cell_28/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_28/Sigmoid
lstm_cell_28/Sigmoid_1Sigmoidlstm_cell_28/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_28/Sigmoid_1
lstm_cell_28/mulMullstm_cell_28/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_28/mul~
lstm_cell_28/ReluRelulstm_cell_28/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_28/Relu
lstm_cell_28/mul_1Mullstm_cell_28/Sigmoid:y:0lstm_cell_28/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_28/mul_1
lstm_cell_28/add_1AddV2lstm_cell_28/mul:z:0lstm_cell_28/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_28/add_1
lstm_cell_28/Sigmoid_2Sigmoidlstm_cell_28/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_28/Sigmoid_2}
lstm_cell_28/Relu_1Relulstm_cell_28/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_28/Relu_1¡
lstm_cell_28/mul_2Mullstm_cell_28/Sigmoid_2:y:0!lstm_cell_28/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_28/mul_2
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
while/loop_counterô
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_28_matmul_readvariableop_resource-lstm_cell_28_matmul_1_readvariableop_resource,lstm_cell_28_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1281673*
condR
while_cond_1281672*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : *
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
runtimeç
IdentityIdentitystrided_slice_3:output:0$^lstm_cell_28/BiasAdd/ReadVariableOp#^lstm_cell_28/MatMul/ReadVariableOp%^lstm_cell_28/MatMul_1/ReadVariableOp^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_28/BiasAdd/ReadVariableOp#lstm_cell_28/BiasAdd/ReadVariableOp2H
"lstm_cell_28/MatMul/ReadVariableOp"lstm_cell_28/MatMul/ReadVariableOp2L
$lstm_cell_28/MatMul_1/ReadVariableOp$lstm_cell_28/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
Þ
È
while_cond_1281672
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1281672___redundant_placeholder05
1while_while_cond_1281672___redundant_placeholder15
1while_while_cond_1281672___redundant_placeholder25
1while_while_cond_1281672___redundant_placeholder3
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
B: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿÈ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ:

_output_shapes
: :

_output_shapes
:
ë
§
%__inference_signature_wrapper_1281240
lstm_28_input
unknown:	 
	unknown_0:
È 
	unknown_1:	 
	unknown_2:	Èd
	unknown_3:d
	unknown_4:d
	unknown_5:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalllstm_28_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
"__inference__wrapped_model_12800542
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
_user_specified_namelstm_28_input
½

I__inference_lstm_cell_28_layer_call_and_return_conditional_losses_1280129

inputs

states
states_11
matmul_readvariableop_resource:	 4
 matmul_1_readvariableop_resource:
È .
biasadd_readvariableop_resource:	 
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 *
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
È *
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
: *
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimÃ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
	Sigmoid_1]
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
mulW
ReluRelusplit:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
Relui
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
mul_1^
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
add_1d
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
	Sigmoid_2V
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
Relu_1m
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
mul_2©
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity­

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity_1­

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
 
_user_specified_namestates:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
 
_user_specified_namestates

Ê
J__inference_sequential_28_layer_call_and_return_conditional_losses_1281192
lstm_28_input"
lstm_28_1281174:	 #
lstm_28_1281176:
È 
lstm_28_1281178:	 #
dense_56_1281181:	Èd
dense_56_1281183:d"
dense_57_1281186:d
dense_57_1281188:
identity¢ dense_56/StatefulPartitionedCall¢ dense_57/StatefulPartitionedCall¢lstm_28/StatefulPartitionedCall­
lstm_28/StatefulPartitionedCallStatefulPartitionedCalllstm_28_inputlstm_28_1281174lstm_28_1281176lstm_28_1281178*
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
D__inference_lstm_28_layer_call_and_return_conditional_losses_12808412!
lstm_28/StatefulPartitionedCall¹
 dense_56/StatefulPartitionedCallStatefulPartitionedCall(lstm_28/StatefulPartitionedCall:output:0dense_56_1281181dense_56_1281183*
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
GPU 2J 8 *N
fIRG
E__inference_dense_56_layer_call_and_return_conditional_losses_12808602"
 dense_56/StatefulPartitionedCallº
 dense_57/StatefulPartitionedCallStatefulPartitionedCall)dense_56/StatefulPartitionedCall:output:0dense_57_1281186dense_57_1281188*
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
GPU 2J 8 *N
fIRG
E__inference_dense_57_layer_call_and_return_conditional_losses_12808762"
 dense_57/StatefulPartitionedCallå
IdentityIdentity)dense_57/StatefulPartitionedCall:output:0!^dense_56/StatefulPartitionedCall!^dense_57/StatefulPartitionedCall ^lstm_28/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2D
 dense_56/StatefulPartitionedCall dense_56/StatefulPartitionedCall2D
 dense_57/StatefulPartitionedCall dense_57/StatefulPartitionedCall2B
lstm_28/StatefulPartitionedCalllstm_28/StatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelstm_28_input

Ê
J__inference_sequential_28_layer_call_and_return_conditional_losses_1281213
lstm_28_input"
lstm_28_1281195:	 #
lstm_28_1281197:
È 
lstm_28_1281199:	 #
dense_56_1281202:	Èd
dense_56_1281204:d"
dense_57_1281207:d
dense_57_1281209:
identity¢ dense_56/StatefulPartitionedCall¢ dense_57/StatefulPartitionedCall¢lstm_28/StatefulPartitionedCall­
lstm_28/StatefulPartitionedCallStatefulPartitionedCalllstm_28_inputlstm_28_1281195lstm_28_1281197lstm_28_1281199*
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
D__inference_lstm_28_layer_call_and_return_conditional_losses_12810842!
lstm_28/StatefulPartitionedCall¹
 dense_56/StatefulPartitionedCallStatefulPartitionedCall(lstm_28/StatefulPartitionedCall:output:0dense_56_1281202dense_56_1281204*
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
GPU 2J 8 *N
fIRG
E__inference_dense_56_layer_call_and_return_conditional_losses_12808602"
 dense_56/StatefulPartitionedCallº
 dense_57/StatefulPartitionedCallStatefulPartitionedCall)dense_56/StatefulPartitionedCall:output:0dense_57_1281207dense_57_1281209*
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
GPU 2J 8 *N
fIRG
E__inference_dense_57_layer_call_and_return_conditional_losses_12808762"
 dense_57/StatefulPartitionedCallå
IdentityIdentity)dense_57/StatefulPartitionedCall:output:0!^dense_56/StatefulPartitionedCall!^dense_57/StatefulPartitionedCall ^lstm_28/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2D
 dense_56/StatefulPartitionedCall dense_56/StatefulPartitionedCall2D
 dense_57/StatefulPartitionedCall dense_57/StatefulPartitionedCall2B
lstm_28/StatefulPartitionedCalllstm_28/StatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelstm_28_input
Þ
È
while_cond_1280999
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1280999___redundant_placeholder05
1while_while_cond_1280999___redundant_placeholder15
1while_while_cond_1280999___redundant_placeholder25
1while_while_cond_1280999___redundant_placeholder3
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
B: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿÈ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ:

_output_shapes
: :

_output_shapes
:
±

÷
E__inference_dense_56_layer_call_and_return_conditional_losses_1280860

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
C
Ó
while_body_1281000
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_28_matmul_readvariableop_resource_0:	 I
5while_lstm_cell_28_matmul_1_readvariableop_resource_0:
È C
4while_lstm_cell_28_biasadd_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_28_matmul_readvariableop_resource:	 G
3while_lstm_cell_28_matmul_1_readvariableop_resource:
È A
2while_lstm_cell_28_biasadd_readvariableop_resource:	 ¢)while/lstm_cell_28/BiasAdd/ReadVariableOp¢(while/lstm_cell_28/MatMul/ReadVariableOp¢*while/lstm_cell_28/MatMul_1/ReadVariableOpÃ
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
(while/lstm_cell_28/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_28_matmul_readvariableop_resource_0*
_output_shapes
:	 *
dtype02*
(while/lstm_cell_28/MatMul/ReadVariableOp×
while/lstm_cell_28/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_28/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_28/MatMulÐ
*while/lstm_cell_28/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_28_matmul_1_readvariableop_resource_0* 
_output_shapes
:
È *
dtype02,
*while/lstm_cell_28/MatMul_1/ReadVariableOpÀ
while/lstm_cell_28/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_28/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_28/MatMul_1¸
while/lstm_cell_28/addAddV2#while/lstm_cell_28/MatMul:product:0%while/lstm_cell_28/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_28/addÈ
)while/lstm_cell_28/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_28_biasadd_readvariableop_resource_0*
_output_shapes	
: *
dtype02+
)while/lstm_cell_28/BiasAdd/ReadVariableOpÅ
while/lstm_cell_28/BiasAddBiasAddwhile/lstm_cell_28/add:z:01while/lstm_cell_28/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_28/BiasAdd
"while/lstm_cell_28/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_28/split/split_dim
while/lstm_cell_28/splitSplit+while/lstm_cell_28/split/split_dim:output:0#while/lstm_cell_28/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
while/lstm_cell_28/split
while/lstm_cell_28/SigmoidSigmoid!while/lstm_cell_28/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_28/Sigmoid
while/lstm_cell_28/Sigmoid_1Sigmoid!while/lstm_cell_28/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_28/Sigmoid_1¡
while/lstm_cell_28/mulMul while/lstm_cell_28/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_28/mul
while/lstm_cell_28/ReluRelu!while/lstm_cell_28/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_28/Reluµ
while/lstm_cell_28/mul_1Mulwhile/lstm_cell_28/Sigmoid:y:0%while/lstm_cell_28/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_28/mul_1ª
while/lstm_cell_28/add_1AddV2while/lstm_cell_28/mul:z:0while/lstm_cell_28/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_28/add_1
while/lstm_cell_28/Sigmoid_2Sigmoid!while/lstm_cell_28/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_28/Sigmoid_2
while/lstm_cell_28/Relu_1Reluwhile/lstm_cell_28/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_28/Relu_1¹
while/lstm_cell_28/mul_2Mul while/lstm_cell_28/Sigmoid_2:y:0'while/lstm_cell_28/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_28/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_28/mul_2:z:0*
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
while/add_1â
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_28/BiasAdd/ReadVariableOp)^while/lstm_cell_28/MatMul/ReadVariableOp+^while/lstm_cell_28/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityõ
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_28/BiasAdd/ReadVariableOp)^while/lstm_cell_28/MatMul/ReadVariableOp+^while/lstm_cell_28/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ä
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_28/BiasAdd/ReadVariableOp)^while/lstm_cell_28/MatMul/ReadVariableOp+^while/lstm_cell_28/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_28/BiasAdd/ReadVariableOp)^while/lstm_cell_28/MatMul/ReadVariableOp+^while/lstm_cell_28/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_28/mul_2:z:0*^while/lstm_cell_28/BiasAdd/ReadVariableOp)^while/lstm_cell_28/MatMul/ReadVariableOp+^while/lstm_cell_28/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_28/add_1:z:0*^while/lstm_cell_28/BiasAdd/ReadVariableOp)^while/lstm_cell_28/MatMul/ReadVariableOp+^while/lstm_cell_28/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_28_biasadd_readvariableop_resource4while_lstm_cell_28_biasadd_readvariableop_resource_0"l
3while_lstm_cell_28_matmul_1_readvariableop_resource5while_lstm_cell_28_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_28_matmul_readvariableop_resource3while_lstm_cell_28_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : 2V
)while/lstm_cell_28/BiasAdd/ReadVariableOp)while/lstm_cell_28/BiasAdd/ReadVariableOp2T
(while/lstm_cell_28/MatMul/ReadVariableOp(while/lstm_cell_28/MatMul/ReadVariableOp2X
*while/lstm_cell_28/MatMul_1/ReadVariableOp*while/lstm_cell_28/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿÈ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ:

_output_shapes
: :

_output_shapes
: 
Þ
È
while_cond_1281823
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1281823___redundant_placeholder05
1while_while_cond_1281823___redundant_placeholder15
1while_while_cond_1281823___redundant_placeholder25
1while_while_cond_1281823___redundant_placeholder3
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
B: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿÈ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ:

_output_shapes
: :

_output_shapes
:
O
Ó

lstm_28_while_body_1281471,
(lstm_28_while_lstm_28_while_loop_counter2
.lstm_28_while_lstm_28_while_maximum_iterations
lstm_28_while_placeholder
lstm_28_while_placeholder_1
lstm_28_while_placeholder_2
lstm_28_while_placeholder_3+
'lstm_28_while_lstm_28_strided_slice_1_0g
clstm_28_while_tensorarrayv2read_tensorlistgetitem_lstm_28_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_28_while_lstm_cell_28_matmul_readvariableop_resource_0:	 Q
=lstm_28_while_lstm_cell_28_matmul_1_readvariableop_resource_0:
È K
<lstm_28_while_lstm_cell_28_biasadd_readvariableop_resource_0:	 
lstm_28_while_identity
lstm_28_while_identity_1
lstm_28_while_identity_2
lstm_28_while_identity_3
lstm_28_while_identity_4
lstm_28_while_identity_5)
%lstm_28_while_lstm_28_strided_slice_1e
alstm_28_while_tensorarrayv2read_tensorlistgetitem_lstm_28_tensorarrayunstack_tensorlistfromtensorL
9lstm_28_while_lstm_cell_28_matmul_readvariableop_resource:	 O
;lstm_28_while_lstm_cell_28_matmul_1_readvariableop_resource:
È I
:lstm_28_while_lstm_cell_28_biasadd_readvariableop_resource:	 ¢1lstm_28/while/lstm_cell_28/BiasAdd/ReadVariableOp¢0lstm_28/while/lstm_cell_28/MatMul/ReadVariableOp¢2lstm_28/while/lstm_cell_28/MatMul_1/ReadVariableOpÓ
?lstm_28/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2A
?lstm_28/while/TensorArrayV2Read/TensorListGetItem/element_shape
1lstm_28/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_28_while_tensorarrayv2read_tensorlistgetitem_lstm_28_tensorarrayunstack_tensorlistfromtensor_0lstm_28_while_placeholderHlstm_28/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype023
1lstm_28/while/TensorArrayV2Read/TensorListGetItemá
0lstm_28/while/lstm_cell_28/MatMul/ReadVariableOpReadVariableOp;lstm_28_while_lstm_cell_28_matmul_readvariableop_resource_0*
_output_shapes
:	 *
dtype022
0lstm_28/while/lstm_cell_28/MatMul/ReadVariableOp÷
!lstm_28/while/lstm_cell_28/MatMulMatMul8lstm_28/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_28/while/lstm_cell_28/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!lstm_28/while/lstm_cell_28/MatMulè
2lstm_28/while/lstm_cell_28/MatMul_1/ReadVariableOpReadVariableOp=lstm_28_while_lstm_cell_28_matmul_1_readvariableop_resource_0* 
_output_shapes
:
È *
dtype024
2lstm_28/while/lstm_cell_28/MatMul_1/ReadVariableOpà
#lstm_28/while/lstm_cell_28/MatMul_1MatMullstm_28_while_placeholder_2:lstm_28/while/lstm_cell_28/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_28/while/lstm_cell_28/MatMul_1Ø
lstm_28/while/lstm_cell_28/addAddV2+lstm_28/while/lstm_cell_28/MatMul:product:0-lstm_28/while/lstm_cell_28/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_28/while/lstm_cell_28/addà
1lstm_28/while/lstm_cell_28/BiasAdd/ReadVariableOpReadVariableOp<lstm_28_while_lstm_cell_28_biasadd_readvariableop_resource_0*
_output_shapes	
: *
dtype023
1lstm_28/while/lstm_cell_28/BiasAdd/ReadVariableOpå
"lstm_28/while/lstm_cell_28/BiasAddBiasAdd"lstm_28/while/lstm_cell_28/add:z:09lstm_28/while/lstm_cell_28/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_28/while/lstm_cell_28/BiasAdd
*lstm_28/while/lstm_cell_28/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_28/while/lstm_cell_28/split/split_dim¯
 lstm_28/while/lstm_cell_28/splitSplit3lstm_28/while/lstm_cell_28/split/split_dim:output:0+lstm_28/while/lstm_cell_28/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2"
 lstm_28/while/lstm_cell_28/split±
"lstm_28/while/lstm_cell_28/SigmoidSigmoid)lstm_28/while/lstm_cell_28/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2$
"lstm_28/while/lstm_cell_28/Sigmoidµ
$lstm_28/while/lstm_cell_28/Sigmoid_1Sigmoid)lstm_28/while/lstm_cell_28/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2&
$lstm_28/while/lstm_cell_28/Sigmoid_1Á
lstm_28/while/lstm_cell_28/mulMul(lstm_28/while/lstm_cell_28/Sigmoid_1:y:0lstm_28_while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2 
lstm_28/while/lstm_cell_28/mul¨
lstm_28/while/lstm_cell_28/ReluRelu)lstm_28/while/lstm_cell_28/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2!
lstm_28/while/lstm_cell_28/ReluÕ
 lstm_28/while/lstm_cell_28/mul_1Mul&lstm_28/while/lstm_cell_28/Sigmoid:y:0-lstm_28/while/lstm_cell_28/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2"
 lstm_28/while/lstm_cell_28/mul_1Ê
 lstm_28/while/lstm_cell_28/add_1AddV2"lstm_28/while/lstm_cell_28/mul:z:0$lstm_28/while/lstm_cell_28/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2"
 lstm_28/while/lstm_cell_28/add_1µ
$lstm_28/while/lstm_cell_28/Sigmoid_2Sigmoid)lstm_28/while/lstm_cell_28/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2&
$lstm_28/while/lstm_cell_28/Sigmoid_2§
!lstm_28/while/lstm_cell_28/Relu_1Relu$lstm_28/while/lstm_cell_28/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2#
!lstm_28/while/lstm_cell_28/Relu_1Ù
 lstm_28/while/lstm_cell_28/mul_2Mul(lstm_28/while/lstm_cell_28/Sigmoid_2:y:0/lstm_28/while/lstm_cell_28/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2"
 lstm_28/while/lstm_cell_28/mul_2
2lstm_28/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_28_while_placeholder_1lstm_28_while_placeholder$lstm_28/while/lstm_cell_28/mul_2:z:0*
_output_shapes
: *
element_dtype024
2lstm_28/while/TensorArrayV2Write/TensorListSetIteml
lstm_28/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_28/while/add/y
lstm_28/while/addAddV2lstm_28_while_placeholderlstm_28/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_28/while/addp
lstm_28/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_28/while/add_1/y
lstm_28/while/add_1AddV2(lstm_28_while_lstm_28_while_loop_counterlstm_28/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_28/while/add_1
lstm_28/while/IdentityIdentitylstm_28/while/add_1:z:02^lstm_28/while/lstm_cell_28/BiasAdd/ReadVariableOp1^lstm_28/while/lstm_cell_28/MatMul/ReadVariableOp3^lstm_28/while/lstm_cell_28/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_28/while/Identity­
lstm_28/while/Identity_1Identity.lstm_28_while_lstm_28_while_maximum_iterations2^lstm_28/while/lstm_cell_28/BiasAdd/ReadVariableOp1^lstm_28/while/lstm_cell_28/MatMul/ReadVariableOp3^lstm_28/while/lstm_cell_28/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_28/while/Identity_1
lstm_28/while/Identity_2Identitylstm_28/while/add:z:02^lstm_28/while/lstm_cell_28/BiasAdd/ReadVariableOp1^lstm_28/while/lstm_cell_28/MatMul/ReadVariableOp3^lstm_28/while/lstm_cell_28/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_28/while/Identity_2Á
lstm_28/while/Identity_3IdentityBlstm_28/while/TensorArrayV2Write/TensorListSetItem:output_handle:02^lstm_28/while/lstm_cell_28/BiasAdd/ReadVariableOp1^lstm_28/while/lstm_cell_28/MatMul/ReadVariableOp3^lstm_28/while/lstm_cell_28/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_28/while/Identity_3µ
lstm_28/while/Identity_4Identity$lstm_28/while/lstm_cell_28/mul_2:z:02^lstm_28/while/lstm_cell_28/BiasAdd/ReadVariableOp1^lstm_28/while/lstm_cell_28/MatMul/ReadVariableOp3^lstm_28/while/lstm_cell_28/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_28/while/Identity_4µ
lstm_28/while/Identity_5Identity$lstm_28/while/lstm_cell_28/add_1:z:02^lstm_28/while/lstm_cell_28/BiasAdd/ReadVariableOp1^lstm_28/while/lstm_cell_28/MatMul/ReadVariableOp3^lstm_28/while/lstm_cell_28/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_28/while/Identity_5"9
lstm_28_while_identitylstm_28/while/Identity:output:0"=
lstm_28_while_identity_1!lstm_28/while/Identity_1:output:0"=
lstm_28_while_identity_2!lstm_28/while/Identity_2:output:0"=
lstm_28_while_identity_3!lstm_28/while/Identity_3:output:0"=
lstm_28_while_identity_4!lstm_28/while/Identity_4:output:0"=
lstm_28_while_identity_5!lstm_28/while/Identity_5:output:0"P
%lstm_28_while_lstm_28_strided_slice_1'lstm_28_while_lstm_28_strided_slice_1_0"z
:lstm_28_while_lstm_cell_28_biasadd_readvariableop_resource<lstm_28_while_lstm_cell_28_biasadd_readvariableop_resource_0"|
;lstm_28_while_lstm_cell_28_matmul_1_readvariableop_resource=lstm_28_while_lstm_cell_28_matmul_1_readvariableop_resource_0"x
9lstm_28_while_lstm_cell_28_matmul_readvariableop_resource;lstm_28_while_lstm_cell_28_matmul_readvariableop_resource_0"È
alstm_28_while_tensorarrayv2read_tensorlistgetitem_lstm_28_tensorarrayunstack_tensorlistfromtensorclstm_28_while_tensorarrayv2read_tensorlistgetitem_lstm_28_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : 2f
1lstm_28/while/lstm_cell_28/BiasAdd/ReadVariableOp1lstm_28/while/lstm_cell_28/BiasAdd/ReadVariableOp2d
0lstm_28/while/lstm_cell_28/MatMul/ReadVariableOp0lstm_28/while/lstm_cell_28/MatMul/ReadVariableOp2h
2lstm_28/while/lstm_cell_28/MatMul_1/ReadVariableOp2lstm_28/while/lstm_cell_28/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿÈ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ:

_output_shapes
: :

_output_shapes
: 
ø{
È
J__inference_sequential_28_layer_call_and_return_conditional_losses_1281404

inputsF
3lstm_28_lstm_cell_28_matmul_readvariableop_resource:	 I
5lstm_28_lstm_cell_28_matmul_1_readvariableop_resource:
È C
4lstm_28_lstm_cell_28_biasadd_readvariableop_resource:	 :
'dense_56_matmul_readvariableop_resource:	Èd6
(dense_56_biasadd_readvariableop_resource:d9
'dense_57_matmul_readvariableop_resource:d6
(dense_57_biasadd_readvariableop_resource:
identity¢dense_56/BiasAdd/ReadVariableOp¢dense_56/MatMul/ReadVariableOp¢dense_57/BiasAdd/ReadVariableOp¢dense_57/MatMul/ReadVariableOp¢+lstm_28/lstm_cell_28/BiasAdd/ReadVariableOp¢*lstm_28/lstm_cell_28/MatMul/ReadVariableOp¢,lstm_28/lstm_cell_28/MatMul_1/ReadVariableOp¢lstm_28/whileT
lstm_28/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_28/Shape
lstm_28/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_28/strided_slice/stack
lstm_28/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_28/strided_slice/stack_1
lstm_28/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_28/strided_slice/stack_2
lstm_28/strided_sliceStridedSlicelstm_28/Shape:output:0$lstm_28/strided_slice/stack:output:0&lstm_28/strided_slice/stack_1:output:0&lstm_28/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_28/strided_slicem
lstm_28/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :È2
lstm_28/zeros/mul/y
lstm_28/zeros/mulMullstm_28/strided_slice:output:0lstm_28/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_28/zeros/mulo
lstm_28/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_28/zeros/Less/y
lstm_28/zeros/LessLesslstm_28/zeros/mul:z:0lstm_28/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_28/zeros/Lesss
lstm_28/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :È2
lstm_28/zeros/packed/1£
lstm_28/zeros/packedPacklstm_28/strided_slice:output:0lstm_28/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_28/zeros/packedo
lstm_28/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_28/zeros/Const
lstm_28/zerosFilllstm_28/zeros/packed:output:0lstm_28/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_28/zerosq
lstm_28/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :È2
lstm_28/zeros_1/mul/y
lstm_28/zeros_1/mulMullstm_28/strided_slice:output:0lstm_28/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_28/zeros_1/muls
lstm_28/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_28/zeros_1/Less/y
lstm_28/zeros_1/LessLesslstm_28/zeros_1/mul:z:0lstm_28/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_28/zeros_1/Lessw
lstm_28/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :È2
lstm_28/zeros_1/packed/1©
lstm_28/zeros_1/packedPacklstm_28/strided_slice:output:0!lstm_28/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_28/zeros_1/packeds
lstm_28/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_28/zeros_1/Const
lstm_28/zeros_1Filllstm_28/zeros_1/packed:output:0lstm_28/zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_28/zeros_1
lstm_28/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_28/transpose/perm
lstm_28/transpose	Transposeinputslstm_28/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_28/transposeg
lstm_28/Shape_1Shapelstm_28/transpose:y:0*
T0*
_output_shapes
:2
lstm_28/Shape_1
lstm_28/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_28/strided_slice_1/stack
lstm_28/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_28/strided_slice_1/stack_1
lstm_28/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_28/strided_slice_1/stack_2
lstm_28/strided_slice_1StridedSlicelstm_28/Shape_1:output:0&lstm_28/strided_slice_1/stack:output:0(lstm_28/strided_slice_1/stack_1:output:0(lstm_28/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_28/strided_slice_1
#lstm_28/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2%
#lstm_28/TensorArrayV2/element_shapeÒ
lstm_28/TensorArrayV2TensorListReserve,lstm_28/TensorArrayV2/element_shape:output:0 lstm_28/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_28/TensorArrayV2Ï
=lstm_28/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2?
=lstm_28/TensorArrayUnstack/TensorListFromTensor/element_shape
/lstm_28/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_28/transpose:y:0Flstm_28/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_28/TensorArrayUnstack/TensorListFromTensor
lstm_28/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_28/strided_slice_2/stack
lstm_28/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_28/strided_slice_2/stack_1
lstm_28/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_28/strided_slice_2/stack_2¬
lstm_28/strided_slice_2StridedSlicelstm_28/transpose:y:0&lstm_28/strided_slice_2/stack:output:0(lstm_28/strided_slice_2/stack_1:output:0(lstm_28/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_28/strided_slice_2Í
*lstm_28/lstm_cell_28/MatMul/ReadVariableOpReadVariableOp3lstm_28_lstm_cell_28_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype02,
*lstm_28/lstm_cell_28/MatMul/ReadVariableOpÍ
lstm_28/lstm_cell_28/MatMulMatMul lstm_28/strided_slice_2:output:02lstm_28/lstm_cell_28/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_28/lstm_cell_28/MatMulÔ
,lstm_28/lstm_cell_28/MatMul_1/ReadVariableOpReadVariableOp5lstm_28_lstm_cell_28_matmul_1_readvariableop_resource* 
_output_shapes
:
È *
dtype02.
,lstm_28/lstm_cell_28/MatMul_1/ReadVariableOpÉ
lstm_28/lstm_cell_28/MatMul_1MatMullstm_28/zeros:output:04lstm_28/lstm_cell_28/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_28/lstm_cell_28/MatMul_1À
lstm_28/lstm_cell_28/addAddV2%lstm_28/lstm_cell_28/MatMul:product:0'lstm_28/lstm_cell_28/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_28/lstm_cell_28/addÌ
+lstm_28/lstm_cell_28/BiasAdd/ReadVariableOpReadVariableOp4lstm_28_lstm_cell_28_biasadd_readvariableop_resource*
_output_shapes	
: *
dtype02-
+lstm_28/lstm_cell_28/BiasAdd/ReadVariableOpÍ
lstm_28/lstm_cell_28/BiasAddBiasAddlstm_28/lstm_cell_28/add:z:03lstm_28/lstm_cell_28/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_28/lstm_cell_28/BiasAdd
$lstm_28/lstm_cell_28/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_28/lstm_cell_28/split/split_dim
lstm_28/lstm_cell_28/splitSplit-lstm_28/lstm_cell_28/split/split_dim:output:0%lstm_28/lstm_cell_28/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
lstm_28/lstm_cell_28/split
lstm_28/lstm_cell_28/SigmoidSigmoid#lstm_28/lstm_cell_28/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_28/lstm_cell_28/Sigmoid£
lstm_28/lstm_cell_28/Sigmoid_1Sigmoid#lstm_28/lstm_cell_28/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2 
lstm_28/lstm_cell_28/Sigmoid_1¬
lstm_28/lstm_cell_28/mulMul"lstm_28/lstm_cell_28/Sigmoid_1:y:0lstm_28/zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_28/lstm_cell_28/mul
lstm_28/lstm_cell_28/ReluRelu#lstm_28/lstm_cell_28/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_28/lstm_cell_28/Relu½
lstm_28/lstm_cell_28/mul_1Mul lstm_28/lstm_cell_28/Sigmoid:y:0'lstm_28/lstm_cell_28/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_28/lstm_cell_28/mul_1²
lstm_28/lstm_cell_28/add_1AddV2lstm_28/lstm_cell_28/mul:z:0lstm_28/lstm_cell_28/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_28/lstm_cell_28/add_1£
lstm_28/lstm_cell_28/Sigmoid_2Sigmoid#lstm_28/lstm_cell_28/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2 
lstm_28/lstm_cell_28/Sigmoid_2
lstm_28/lstm_cell_28/Relu_1Relulstm_28/lstm_cell_28/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_28/lstm_cell_28/Relu_1Á
lstm_28/lstm_cell_28/mul_2Mul"lstm_28/lstm_cell_28/Sigmoid_2:y:0)lstm_28/lstm_cell_28/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_28/lstm_cell_28/mul_2
%lstm_28/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÈ   2'
%lstm_28/TensorArrayV2_1/element_shapeØ
lstm_28/TensorArrayV2_1TensorListReserve.lstm_28/TensorArrayV2_1/element_shape:output:0 lstm_28/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_28/TensorArrayV2_1^
lstm_28/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_28/time
 lstm_28/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 lstm_28/while/maximum_iterationsz
lstm_28/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_28/while/loop_counterì
lstm_28/whileWhile#lstm_28/while/loop_counter:output:0)lstm_28/while/maximum_iterations:output:0lstm_28/time:output:0 lstm_28/TensorArrayV2_1:handle:0lstm_28/zeros:output:0lstm_28/zeros_1:output:0 lstm_28/strided_slice_1:output:0?lstm_28/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_28_lstm_cell_28_matmul_readvariableop_resource5lstm_28_lstm_cell_28_matmul_1_readvariableop_resource4lstm_28_lstm_cell_28_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : *%
_read_only_resource_inputs
	
*&
bodyR
lstm_28_while_body_1281307*&
condR
lstm_28_while_cond_1281306*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : *
parallel_iterations 2
lstm_28/whileÅ
8lstm_28/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÈ   2:
8lstm_28/TensorArrayV2Stack/TensorListStack/element_shape
*lstm_28/TensorArrayV2Stack/TensorListStackTensorListStacklstm_28/while:output:3Alstm_28/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*
element_dtype02,
*lstm_28/TensorArrayV2Stack/TensorListStack
lstm_28/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
lstm_28/strided_slice_3/stack
lstm_28/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_28/strided_slice_3/stack_1
lstm_28/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_28/strided_slice_3/stack_2Ë
lstm_28/strided_slice_3StridedSlice3lstm_28/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_28/strided_slice_3/stack:output:0(lstm_28/strided_slice_3/stack_1:output:0(lstm_28/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*
shrink_axis_mask2
lstm_28/strided_slice_3
lstm_28/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_28/transpose_1/permÆ
lstm_28/transpose_1	Transpose3lstm_28/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_28/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_28/transpose_1v
lstm_28/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_28/runtime©
dense_56/MatMul/ReadVariableOpReadVariableOp'dense_56_matmul_readvariableop_resource*
_output_shapes
:	Èd*
dtype02 
dense_56/MatMul/ReadVariableOp¨
dense_56/MatMulMatMul lstm_28/strided_slice_3:output:0&dense_56/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dense_56/MatMul§
dense_56/BiasAdd/ReadVariableOpReadVariableOp(dense_56_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02!
dense_56/BiasAdd/ReadVariableOp¥
dense_56/BiasAddBiasAdddense_56/MatMul:product:0'dense_56/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dense_56/BiasAdds
dense_56/ReluReludense_56/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dense_56/Relu¨
dense_57/MatMul/ReadVariableOpReadVariableOp'dense_57_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02 
dense_57/MatMul/ReadVariableOp£
dense_57/MatMulMatMuldense_56/Relu:activations:0&dense_57/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_57/MatMul§
dense_57/BiasAdd/ReadVariableOpReadVariableOp(dense_57_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_57/BiasAdd/ReadVariableOp¥
dense_57/BiasAddBiasAdddense_57/MatMul:product:0'dense_57/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_57/BiasAdd
IdentityIdentitydense_57/BiasAdd:output:0 ^dense_56/BiasAdd/ReadVariableOp^dense_56/MatMul/ReadVariableOp ^dense_57/BiasAdd/ReadVariableOp^dense_57/MatMul/ReadVariableOp,^lstm_28/lstm_cell_28/BiasAdd/ReadVariableOp+^lstm_28/lstm_cell_28/MatMul/ReadVariableOp-^lstm_28/lstm_cell_28/MatMul_1/ReadVariableOp^lstm_28/while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2B
dense_56/BiasAdd/ReadVariableOpdense_56/BiasAdd/ReadVariableOp2@
dense_56/MatMul/ReadVariableOpdense_56/MatMul/ReadVariableOp2B
dense_57/BiasAdd/ReadVariableOpdense_57/BiasAdd/ReadVariableOp2@
dense_57/MatMul/ReadVariableOpdense_57/MatMul/ReadVariableOp2Z
+lstm_28/lstm_cell_28/BiasAdd/ReadVariableOp+lstm_28/lstm_cell_28/BiasAdd/ReadVariableOp2X
*lstm_28/lstm_cell_28/MatMul/ReadVariableOp*lstm_28/lstm_cell_28/MatMul/ReadVariableOp2\
,lstm_28/lstm_cell_28/MatMul_1/ReadVariableOp,lstm_28/lstm_cell_28/MatMul_1/ReadVariableOp2
lstm_28/whilelstm_28/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ÇE

D__inference_lstm_28_layer_call_and_return_conditional_losses_1280212

inputs'
lstm_cell_28_1280130:	 (
lstm_cell_28_1280132:
È #
lstm_cell_28_1280134:	 
identity¢$lstm_cell_28/StatefulPartitionedCall¢whileD
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
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :È2
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
B :è2
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
B :È2
zeros_1/packed/1
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
:ÿÿÿÿÿÿÿÿÿÈ2	
zeros_1u
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
strided_slice_2¤
$lstm_cell_28/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_28_1280130lstm_cell_28_1280132lstm_cell_28_1280134*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_lstm_cell_28_layer_call_and_return_conditional_losses_12801292&
$lstm_cell_28/StatefulPartitionedCall
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
while/loop_counter¬
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_28_1280130lstm_cell_28_1280132lstm_cell_28_1280134*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1280143*
condR
while_cond_1280142*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : *
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
IdentityIdentitystrided_slice_3:output:0%^lstm_cell_28/StatefulPartitionedCall^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_28/StatefulPartitionedCall$lstm_cell_28/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ø
.__inference_lstm_cell_28_layer_call_fn_1282374

inputs
states_0
states_1
unknown:	 
	unknown_0:
È 
	unknown_1:	 
identity

identity_1

identity_2¢StatefulPartitionedCallÇ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_lstm_cell_28_layer_call_and_return_conditional_losses_12801292
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

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : 22
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
states/0:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
"
_user_specified_name
states/1
	
ª
/__inference_sequential_28_layer_call_fn_1281606

inputs
unknown:	 
	unknown_0:
È 
	unknown_1:	 
	unknown_2:	Èd
	unknown_3:d
	unknown_4:d
	unknown_5:
identity¢StatefulPartitionedCall»
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
GPU 2J 8 *S
fNRL
J__inference_sequential_28_layer_call_and_return_conditional_losses_12811352
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
½

I__inference_lstm_cell_28_layer_call_and_return_conditional_losses_1280275

inputs

states
states_11
matmul_readvariableop_resource:	 4
 matmul_1_readvariableop_resource:
È .
biasadd_readvariableop_resource:	 
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 *
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
È *
dtype02
MatMul_1/ReadVariableOpz
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
: *
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimÃ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
	Sigmoid_1]
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
mulW
ReluRelusplit:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
Relui
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
mul_1^
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
add_1d
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
	Sigmoid_2V
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
Relu_1m
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
mul_2©
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity­

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity_1­

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
 
_user_specified_namestates:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
 
_user_specified_namestates
­&
ì
while_body_1280353
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_28_1280377_0:	 0
while_lstm_cell_28_1280379_0:
È +
while_lstm_cell_28_1280381_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_28_1280377:	 .
while_lstm_cell_28_1280379:
È )
while_lstm_cell_28_1280381:	 ¢*while/lstm_cell_28/StatefulPartitionedCallÃ
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
)while/TensorArrayV2Read/TensorListGetItemè
*while/lstm_cell_28/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_28_1280377_0while_lstm_cell_28_1280379_0while_lstm_cell_28_1280381_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_lstm_cell_28_layer_call_and_return_conditional_losses_12802752,
*while/lstm_cell_28/StatefulPartitionedCall÷
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_28/StatefulPartitionedCall:output:0*
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
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_28/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_28/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_28/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2º
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_28/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3Å
while/Identity_4Identity3while/lstm_cell_28/StatefulPartitionedCall:output:1+^while/lstm_cell_28/StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_4Å
while/Identity_5Identity3while/lstm_cell_28/StatefulPartitionedCall:output:2+^while/lstm_cell_28/StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_28_1280377while_lstm_cell_28_1280377_0":
while_lstm_cell_28_1280379while_lstm_cell_28_1280379_0":
while_lstm_cell_28_1280381while_lstm_cell_28_1280381_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : 2X
*while/lstm_cell_28/StatefulPartitionedCall*while/lstm_cell_28/StatefulPartitionedCall: 
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
:ÿÿÿÿÿÿÿÿÿÈ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ:

_output_shapes
: :

_output_shapes
: 
±

÷
E__inference_dense_56_layer_call_and_return_conditional_losses_1282265

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
Ñ	
ö
E__inference_dense_57_layer_call_and_return_conditional_losses_1282284

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
Å

I__inference_lstm_cell_28_layer_call_and_return_conditional_losses_1282357

inputs
states_0
states_11
matmul_readvariableop_resource:	 4
 matmul_1_readvariableop_resource:
È .
biasadd_readvariableop_resource:	 
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 *
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
È *
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
: *
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimÃ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
	Sigmoid_1]
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
mulW
ReluRelusplit:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
Relui
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
mul_1^
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
add_1d
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
	Sigmoid_2V
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
Relu_1m
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
mul_2©
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity­

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity_1­

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
"
_user_specified_name
states/0:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
"
_user_specified_name
states/1
 

*__inference_dense_56_layer_call_fn_1282274

inputs
unknown:	Èd
	unknown_0:d
identity¢StatefulPartitionedCallõ
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
GPU 2J 8 *N
fIRG
E__inference_dense_56_layer_call_and_return_conditional_losses_12808602
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
Å

I__inference_lstm_cell_28_layer_call_and_return_conditional_losses_1282325

inputs
states_0
states_11
matmul_readvariableop_resource:	 4
 matmul_1_readvariableop_resource:
È .
biasadd_readvariableop_resource:	 
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 *
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
MatMul
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
È *
dtype02
MatMul_1/ReadVariableOp|
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
add
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
: *
dtype02
BiasAdd/ReadVariableOpy
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimÃ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
	Sigmoid_1]
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
mulW
ReluRelusplit:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
Relui
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
mul_1^
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
add_1d
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
	Sigmoid_2V
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
Relu_1m
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
mul_2©
IdentityIdentity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity­

Identity_1Identity	mul_2:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity_1­

Identity_2Identity	add_1:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
"
_user_specified_name
states/0:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
"
_user_specified_name
states/1
O
Ó

lstm_28_while_body_1281307,
(lstm_28_while_lstm_28_while_loop_counter2
.lstm_28_while_lstm_28_while_maximum_iterations
lstm_28_while_placeholder
lstm_28_while_placeholder_1
lstm_28_while_placeholder_2
lstm_28_while_placeholder_3+
'lstm_28_while_lstm_28_strided_slice_1_0g
clstm_28_while_tensorarrayv2read_tensorlistgetitem_lstm_28_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_28_while_lstm_cell_28_matmul_readvariableop_resource_0:	 Q
=lstm_28_while_lstm_cell_28_matmul_1_readvariableop_resource_0:
È K
<lstm_28_while_lstm_cell_28_biasadd_readvariableop_resource_0:	 
lstm_28_while_identity
lstm_28_while_identity_1
lstm_28_while_identity_2
lstm_28_while_identity_3
lstm_28_while_identity_4
lstm_28_while_identity_5)
%lstm_28_while_lstm_28_strided_slice_1e
alstm_28_while_tensorarrayv2read_tensorlistgetitem_lstm_28_tensorarrayunstack_tensorlistfromtensorL
9lstm_28_while_lstm_cell_28_matmul_readvariableop_resource:	 O
;lstm_28_while_lstm_cell_28_matmul_1_readvariableop_resource:
È I
:lstm_28_while_lstm_cell_28_biasadd_readvariableop_resource:	 ¢1lstm_28/while/lstm_cell_28/BiasAdd/ReadVariableOp¢0lstm_28/while/lstm_cell_28/MatMul/ReadVariableOp¢2lstm_28/while/lstm_cell_28/MatMul_1/ReadVariableOpÓ
?lstm_28/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2A
?lstm_28/while/TensorArrayV2Read/TensorListGetItem/element_shape
1lstm_28/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_28_while_tensorarrayv2read_tensorlistgetitem_lstm_28_tensorarrayunstack_tensorlistfromtensor_0lstm_28_while_placeholderHlstm_28/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype023
1lstm_28/while/TensorArrayV2Read/TensorListGetItemá
0lstm_28/while/lstm_cell_28/MatMul/ReadVariableOpReadVariableOp;lstm_28_while_lstm_cell_28_matmul_readvariableop_resource_0*
_output_shapes
:	 *
dtype022
0lstm_28/while/lstm_cell_28/MatMul/ReadVariableOp÷
!lstm_28/while/lstm_cell_28/MatMulMatMul8lstm_28/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_28/while/lstm_cell_28/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!lstm_28/while/lstm_cell_28/MatMulè
2lstm_28/while/lstm_cell_28/MatMul_1/ReadVariableOpReadVariableOp=lstm_28_while_lstm_cell_28_matmul_1_readvariableop_resource_0* 
_output_shapes
:
È *
dtype024
2lstm_28/while/lstm_cell_28/MatMul_1/ReadVariableOpà
#lstm_28/while/lstm_cell_28/MatMul_1MatMullstm_28_while_placeholder_2:lstm_28/while/lstm_cell_28/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_28/while/lstm_cell_28/MatMul_1Ø
lstm_28/while/lstm_cell_28/addAddV2+lstm_28/while/lstm_cell_28/MatMul:product:0-lstm_28/while/lstm_cell_28/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_28/while/lstm_cell_28/addà
1lstm_28/while/lstm_cell_28/BiasAdd/ReadVariableOpReadVariableOp<lstm_28_while_lstm_cell_28_biasadd_readvariableop_resource_0*
_output_shapes	
: *
dtype023
1lstm_28/while/lstm_cell_28/BiasAdd/ReadVariableOpå
"lstm_28/while/lstm_cell_28/BiasAddBiasAdd"lstm_28/while/lstm_cell_28/add:z:09lstm_28/while/lstm_cell_28/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_28/while/lstm_cell_28/BiasAdd
*lstm_28/while/lstm_cell_28/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_28/while/lstm_cell_28/split/split_dim¯
 lstm_28/while/lstm_cell_28/splitSplit3lstm_28/while/lstm_cell_28/split/split_dim:output:0+lstm_28/while/lstm_cell_28/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2"
 lstm_28/while/lstm_cell_28/split±
"lstm_28/while/lstm_cell_28/SigmoidSigmoid)lstm_28/while/lstm_cell_28/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2$
"lstm_28/while/lstm_cell_28/Sigmoidµ
$lstm_28/while/lstm_cell_28/Sigmoid_1Sigmoid)lstm_28/while/lstm_cell_28/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2&
$lstm_28/while/lstm_cell_28/Sigmoid_1Á
lstm_28/while/lstm_cell_28/mulMul(lstm_28/while/lstm_cell_28/Sigmoid_1:y:0lstm_28_while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2 
lstm_28/while/lstm_cell_28/mul¨
lstm_28/while/lstm_cell_28/ReluRelu)lstm_28/while/lstm_cell_28/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2!
lstm_28/while/lstm_cell_28/ReluÕ
 lstm_28/while/lstm_cell_28/mul_1Mul&lstm_28/while/lstm_cell_28/Sigmoid:y:0-lstm_28/while/lstm_cell_28/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2"
 lstm_28/while/lstm_cell_28/mul_1Ê
 lstm_28/while/lstm_cell_28/add_1AddV2"lstm_28/while/lstm_cell_28/mul:z:0$lstm_28/while/lstm_cell_28/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2"
 lstm_28/while/lstm_cell_28/add_1µ
$lstm_28/while/lstm_cell_28/Sigmoid_2Sigmoid)lstm_28/while/lstm_cell_28/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2&
$lstm_28/while/lstm_cell_28/Sigmoid_2§
!lstm_28/while/lstm_cell_28/Relu_1Relu$lstm_28/while/lstm_cell_28/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2#
!lstm_28/while/lstm_cell_28/Relu_1Ù
 lstm_28/while/lstm_cell_28/mul_2Mul(lstm_28/while/lstm_cell_28/Sigmoid_2:y:0/lstm_28/while/lstm_cell_28/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2"
 lstm_28/while/lstm_cell_28/mul_2
2lstm_28/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_28_while_placeholder_1lstm_28_while_placeholder$lstm_28/while/lstm_cell_28/mul_2:z:0*
_output_shapes
: *
element_dtype024
2lstm_28/while/TensorArrayV2Write/TensorListSetIteml
lstm_28/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_28/while/add/y
lstm_28/while/addAddV2lstm_28_while_placeholderlstm_28/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_28/while/addp
lstm_28/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_28/while/add_1/y
lstm_28/while/add_1AddV2(lstm_28_while_lstm_28_while_loop_counterlstm_28/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_28/while/add_1
lstm_28/while/IdentityIdentitylstm_28/while/add_1:z:02^lstm_28/while/lstm_cell_28/BiasAdd/ReadVariableOp1^lstm_28/while/lstm_cell_28/MatMul/ReadVariableOp3^lstm_28/while/lstm_cell_28/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_28/while/Identity­
lstm_28/while/Identity_1Identity.lstm_28_while_lstm_28_while_maximum_iterations2^lstm_28/while/lstm_cell_28/BiasAdd/ReadVariableOp1^lstm_28/while/lstm_cell_28/MatMul/ReadVariableOp3^lstm_28/while/lstm_cell_28/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_28/while/Identity_1
lstm_28/while/Identity_2Identitylstm_28/while/add:z:02^lstm_28/while/lstm_cell_28/BiasAdd/ReadVariableOp1^lstm_28/while/lstm_cell_28/MatMul/ReadVariableOp3^lstm_28/while/lstm_cell_28/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_28/while/Identity_2Á
lstm_28/while/Identity_3IdentityBlstm_28/while/TensorArrayV2Write/TensorListSetItem:output_handle:02^lstm_28/while/lstm_cell_28/BiasAdd/ReadVariableOp1^lstm_28/while/lstm_cell_28/MatMul/ReadVariableOp3^lstm_28/while/lstm_cell_28/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_28/while/Identity_3µ
lstm_28/while/Identity_4Identity$lstm_28/while/lstm_cell_28/mul_2:z:02^lstm_28/while/lstm_cell_28/BiasAdd/ReadVariableOp1^lstm_28/while/lstm_cell_28/MatMul/ReadVariableOp3^lstm_28/while/lstm_cell_28/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_28/while/Identity_4µ
lstm_28/while/Identity_5Identity$lstm_28/while/lstm_cell_28/add_1:z:02^lstm_28/while/lstm_cell_28/BiasAdd/ReadVariableOp1^lstm_28/while/lstm_cell_28/MatMul/ReadVariableOp3^lstm_28/while/lstm_cell_28/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_28/while/Identity_5"9
lstm_28_while_identitylstm_28/while/Identity:output:0"=
lstm_28_while_identity_1!lstm_28/while/Identity_1:output:0"=
lstm_28_while_identity_2!lstm_28/while/Identity_2:output:0"=
lstm_28_while_identity_3!lstm_28/while/Identity_3:output:0"=
lstm_28_while_identity_4!lstm_28/while/Identity_4:output:0"=
lstm_28_while_identity_5!lstm_28/while/Identity_5:output:0"P
%lstm_28_while_lstm_28_strided_slice_1'lstm_28_while_lstm_28_strided_slice_1_0"z
:lstm_28_while_lstm_cell_28_biasadd_readvariableop_resource<lstm_28_while_lstm_cell_28_biasadd_readvariableop_resource_0"|
;lstm_28_while_lstm_cell_28_matmul_1_readvariableop_resource=lstm_28_while_lstm_cell_28_matmul_1_readvariableop_resource_0"x
9lstm_28_while_lstm_cell_28_matmul_readvariableop_resource;lstm_28_while_lstm_cell_28_matmul_readvariableop_resource_0"È
alstm_28_while_tensorarrayv2read_tensorlistgetitem_lstm_28_tensorarrayunstack_tensorlistfromtensorclstm_28_while_tensorarrayv2read_tensorlistgetitem_lstm_28_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : 2f
1lstm_28/while/lstm_cell_28/BiasAdd/ReadVariableOp1lstm_28/while/lstm_cell_28/BiasAdd/ReadVariableOp2d
0lstm_28/while/lstm_cell_28/MatMul/ReadVariableOp0lstm_28/while/lstm_cell_28/MatMul/ReadVariableOp2h
2lstm_28/while/lstm_cell_28/MatMul_1/ReadVariableOp2lstm_28/while/lstm_cell_28/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿÈ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ:

_output_shapes
: :

_output_shapes
: 
[

D__inference_lstm_28_layer_call_and_return_conditional_losses_1282210

inputs>
+lstm_cell_28_matmul_readvariableop_resource:	 A
-lstm_cell_28_matmul_1_readvariableop_resource:
È ;
,lstm_cell_28_biasadd_readvariableop_resource:	 
identity¢#lstm_cell_28/BiasAdd/ReadVariableOp¢"lstm_cell_28/MatMul/ReadVariableOp¢$lstm_cell_28/MatMul_1/ReadVariableOp¢whileD
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
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :È2
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
B :è2
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
B :È2
zeros_1/packed/1
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
:ÿÿÿÿÿÿÿÿÿÈ2	
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
"lstm_cell_28/MatMul/ReadVariableOpReadVariableOp+lstm_cell_28_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype02$
"lstm_cell_28/MatMul/ReadVariableOp­
lstm_cell_28/MatMulMatMulstrided_slice_2:output:0*lstm_cell_28/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_28/MatMul¼
$lstm_cell_28/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_28_matmul_1_readvariableop_resource* 
_output_shapes
:
È *
dtype02&
$lstm_cell_28/MatMul_1/ReadVariableOp©
lstm_cell_28/MatMul_1MatMulzeros:output:0,lstm_cell_28/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_28/MatMul_1 
lstm_cell_28/addAddV2lstm_cell_28/MatMul:product:0lstm_cell_28/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_28/add´
#lstm_cell_28/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_28_biasadd_readvariableop_resource*
_output_shapes	
: *
dtype02%
#lstm_cell_28/BiasAdd/ReadVariableOp­
lstm_cell_28/BiasAddBiasAddlstm_cell_28/add:z:0+lstm_cell_28/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_28/BiasAdd~
lstm_cell_28/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_28/split/split_dim÷
lstm_cell_28/splitSplit%lstm_cell_28/split/split_dim:output:0lstm_cell_28/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
lstm_cell_28/split
lstm_cell_28/SigmoidSigmoidlstm_cell_28/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_28/Sigmoid
lstm_cell_28/Sigmoid_1Sigmoidlstm_cell_28/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_28/Sigmoid_1
lstm_cell_28/mulMullstm_cell_28/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_28/mul~
lstm_cell_28/ReluRelulstm_cell_28/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_28/Relu
lstm_cell_28/mul_1Mullstm_cell_28/Sigmoid:y:0lstm_cell_28/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_28/mul_1
lstm_cell_28/add_1AddV2lstm_cell_28/mul:z:0lstm_cell_28/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_28/add_1
lstm_cell_28/Sigmoid_2Sigmoidlstm_cell_28/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_28/Sigmoid_2}
lstm_cell_28/Relu_1Relulstm_cell_28/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_28/Relu_1¡
lstm_cell_28/mul_2Mullstm_cell_28/Sigmoid_2:y:0!lstm_cell_28/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_28/mul_2
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
while/loop_counterô
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_28_matmul_readvariableop_resource-lstm_cell_28_matmul_1_readvariableop_resource,lstm_cell_28_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1282126*
condR
while_cond_1282125*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : *
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
runtimeç
IdentityIdentitystrided_slice_3:output:0$^lstm_cell_28/BiasAdd/ReadVariableOp#^lstm_cell_28/MatMul/ReadVariableOp%^lstm_cell_28/MatMul_1/ReadVariableOp^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_28/BiasAdd/ReadVariableOp#lstm_cell_28/BiasAdd/ReadVariableOp2H
"lstm_cell_28/MatMul/ReadVariableOp"lstm_cell_28/MatMul/ReadVariableOp2L
$lstm_cell_28/MatMul_1/ReadVariableOp$lstm_cell_28/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
­&
ì
while_body_1280143
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_28_1280167_0:	 0
while_lstm_cell_28_1280169_0:
È +
while_lstm_cell_28_1280171_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_28_1280167:	 .
while_lstm_cell_28_1280169:
È )
while_lstm_cell_28_1280171:	 ¢*while/lstm_cell_28/StatefulPartitionedCallÃ
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
)while/TensorArrayV2Read/TensorListGetItemè
*while/lstm_cell_28/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_28_1280167_0while_lstm_cell_28_1280169_0while_lstm_cell_28_1280171_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_lstm_cell_28_layer_call_and_return_conditional_losses_12801292,
*while/lstm_cell_28/StatefulPartitionedCall÷
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_28/StatefulPartitionedCall:output:0*
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
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_28/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_28/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_28/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2º
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_28/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3Å
while/Identity_4Identity3while/lstm_cell_28/StatefulPartitionedCall:output:1+^while/lstm_cell_28/StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_4Å
while/Identity_5Identity3while/lstm_cell_28/StatefulPartitionedCall:output:2+^while/lstm_cell_28/StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_28_1280167while_lstm_cell_28_1280167_0":
while_lstm_cell_28_1280169while_lstm_cell_28_1280169_0":
while_lstm_cell_28_1280171while_lstm_cell_28_1280171_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : 2X
*while/lstm_cell_28/StatefulPartitionedCall*while/lstm_cell_28/StatefulPartitionedCall: 
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
:ÿÿÿÿÿÿÿÿÿÈ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ:

_output_shapes
: :

_output_shapes
: 
[

D__inference_lstm_28_layer_call_and_return_conditional_losses_1282059

inputs>
+lstm_cell_28_matmul_readvariableop_resource:	 A
-lstm_cell_28_matmul_1_readvariableop_resource:
È ;
,lstm_cell_28_biasadd_readvariableop_resource:	 
identity¢#lstm_cell_28/BiasAdd/ReadVariableOp¢"lstm_cell_28/MatMul/ReadVariableOp¢$lstm_cell_28/MatMul_1/ReadVariableOp¢whileD
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
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :È2
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
B :è2
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
B :È2
zeros_1/packed/1
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
:ÿÿÿÿÿÿÿÿÿÈ2	
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
"lstm_cell_28/MatMul/ReadVariableOpReadVariableOp+lstm_cell_28_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype02$
"lstm_cell_28/MatMul/ReadVariableOp­
lstm_cell_28/MatMulMatMulstrided_slice_2:output:0*lstm_cell_28/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_28/MatMul¼
$lstm_cell_28/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_28_matmul_1_readvariableop_resource* 
_output_shapes
:
È *
dtype02&
$lstm_cell_28/MatMul_1/ReadVariableOp©
lstm_cell_28/MatMul_1MatMulzeros:output:0,lstm_cell_28/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_28/MatMul_1 
lstm_cell_28/addAddV2lstm_cell_28/MatMul:product:0lstm_cell_28/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_28/add´
#lstm_cell_28/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_28_biasadd_readvariableop_resource*
_output_shapes	
: *
dtype02%
#lstm_cell_28/BiasAdd/ReadVariableOp­
lstm_cell_28/BiasAddBiasAddlstm_cell_28/add:z:0+lstm_cell_28/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_28/BiasAdd~
lstm_cell_28/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_28/split/split_dim÷
lstm_cell_28/splitSplit%lstm_cell_28/split/split_dim:output:0lstm_cell_28/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
lstm_cell_28/split
lstm_cell_28/SigmoidSigmoidlstm_cell_28/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_28/Sigmoid
lstm_cell_28/Sigmoid_1Sigmoidlstm_cell_28/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_28/Sigmoid_1
lstm_cell_28/mulMullstm_cell_28/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_28/mul~
lstm_cell_28/ReluRelulstm_cell_28/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_28/Relu
lstm_cell_28/mul_1Mullstm_cell_28/Sigmoid:y:0lstm_cell_28/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_28/mul_1
lstm_cell_28/add_1AddV2lstm_cell_28/mul:z:0lstm_cell_28/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_28/add_1
lstm_cell_28/Sigmoid_2Sigmoidlstm_cell_28/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_28/Sigmoid_2}
lstm_cell_28/Relu_1Relulstm_cell_28/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_28/Relu_1¡
lstm_cell_28/mul_2Mullstm_cell_28/Sigmoid_2:y:0!lstm_cell_28/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_28/mul_2
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
while/loop_counterô
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_28_matmul_readvariableop_resource-lstm_cell_28_matmul_1_readvariableop_resource,lstm_cell_28_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1281975*
condR
while_cond_1281974*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : *
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
runtimeç
IdentityIdentitystrided_slice_3:output:0$^lstm_cell_28/BiasAdd/ReadVariableOp#^lstm_cell_28/MatMul/ReadVariableOp%^lstm_cell_28/MatMul_1/ReadVariableOp^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_28/BiasAdd/ReadVariableOp#lstm_cell_28/BiasAdd/ReadVariableOp2H
"lstm_cell_28/MatMul/ReadVariableOp"lstm_cell_28/MatMul/ReadVariableOp2L
$lstm_cell_28/MatMul_1/ReadVariableOp$lstm_cell_28/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
C
Ó
while_body_1280757
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_28_matmul_readvariableop_resource_0:	 I
5while_lstm_cell_28_matmul_1_readvariableop_resource_0:
È C
4while_lstm_cell_28_biasadd_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_28_matmul_readvariableop_resource:	 G
3while_lstm_cell_28_matmul_1_readvariableop_resource:
È A
2while_lstm_cell_28_biasadd_readvariableop_resource:	 ¢)while/lstm_cell_28/BiasAdd/ReadVariableOp¢(while/lstm_cell_28/MatMul/ReadVariableOp¢*while/lstm_cell_28/MatMul_1/ReadVariableOpÃ
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
(while/lstm_cell_28/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_28_matmul_readvariableop_resource_0*
_output_shapes
:	 *
dtype02*
(while/lstm_cell_28/MatMul/ReadVariableOp×
while/lstm_cell_28/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_28/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_28/MatMulÐ
*while/lstm_cell_28/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_28_matmul_1_readvariableop_resource_0* 
_output_shapes
:
È *
dtype02,
*while/lstm_cell_28/MatMul_1/ReadVariableOpÀ
while/lstm_cell_28/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_28/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_28/MatMul_1¸
while/lstm_cell_28/addAddV2#while/lstm_cell_28/MatMul:product:0%while/lstm_cell_28/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_28/addÈ
)while/lstm_cell_28/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_28_biasadd_readvariableop_resource_0*
_output_shapes	
: *
dtype02+
)while/lstm_cell_28/BiasAdd/ReadVariableOpÅ
while/lstm_cell_28/BiasAddBiasAddwhile/lstm_cell_28/add:z:01while/lstm_cell_28/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_28/BiasAdd
"while/lstm_cell_28/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_28/split/split_dim
while/lstm_cell_28/splitSplit+while/lstm_cell_28/split/split_dim:output:0#while/lstm_cell_28/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
while/lstm_cell_28/split
while/lstm_cell_28/SigmoidSigmoid!while/lstm_cell_28/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_28/Sigmoid
while/lstm_cell_28/Sigmoid_1Sigmoid!while/lstm_cell_28/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_28/Sigmoid_1¡
while/lstm_cell_28/mulMul while/lstm_cell_28/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_28/mul
while/lstm_cell_28/ReluRelu!while/lstm_cell_28/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_28/Reluµ
while/lstm_cell_28/mul_1Mulwhile/lstm_cell_28/Sigmoid:y:0%while/lstm_cell_28/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_28/mul_1ª
while/lstm_cell_28/add_1AddV2while/lstm_cell_28/mul:z:0while/lstm_cell_28/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_28/add_1
while/lstm_cell_28/Sigmoid_2Sigmoid!while/lstm_cell_28/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_28/Sigmoid_2
while/lstm_cell_28/Relu_1Reluwhile/lstm_cell_28/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_28/Relu_1¹
while/lstm_cell_28/mul_2Mul while/lstm_cell_28/Sigmoid_2:y:0'while/lstm_cell_28/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_28/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_28/mul_2:z:0*
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
while/add_1â
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_28/BiasAdd/ReadVariableOp)^while/lstm_cell_28/MatMul/ReadVariableOp+^while/lstm_cell_28/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityõ
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_28/BiasAdd/ReadVariableOp)^while/lstm_cell_28/MatMul/ReadVariableOp+^while/lstm_cell_28/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ä
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_28/BiasAdd/ReadVariableOp)^while/lstm_cell_28/MatMul/ReadVariableOp+^while/lstm_cell_28/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_28/BiasAdd/ReadVariableOp)^while/lstm_cell_28/MatMul/ReadVariableOp+^while/lstm_cell_28/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_28/mul_2:z:0*^while/lstm_cell_28/BiasAdd/ReadVariableOp)^while/lstm_cell_28/MatMul/ReadVariableOp+^while/lstm_cell_28/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_28/add_1:z:0*^while/lstm_cell_28/BiasAdd/ReadVariableOp)^while/lstm_cell_28/MatMul/ReadVariableOp+^while/lstm_cell_28/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_28_biasadd_readvariableop_resource4while_lstm_cell_28_biasadd_readvariableop_resource_0"l
3while_lstm_cell_28_matmul_1_readvariableop_resource5while_lstm_cell_28_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_28_matmul_readvariableop_resource3while_lstm_cell_28_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : 2V
)while/lstm_cell_28/BiasAdd/ReadVariableOp)while/lstm_cell_28/BiasAdd/ReadVariableOp2T
(while/lstm_cell_28/MatMul/ReadVariableOp(while/lstm_cell_28/MatMul/ReadVariableOp2X
*while/lstm_cell_28/MatMul_1/ReadVariableOp*while/lstm_cell_28/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿÈ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ:

_output_shapes
: :

_output_shapes
: 
Õ
·
)__inference_lstm_28_layer_call_fn_1282254

inputs
unknown:	 
	unknown_0:
È 
	unknown_1:	 
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
D__inference_lstm_28_layer_call_and_return_conditional_losses_12810842
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
ñz

#__inference__traced_restore_1282592
file_prefix3
 assignvariableop_dense_56_kernel:	Èd.
 assignvariableop_1_dense_56_bias:d4
"assignvariableop_2_dense_57_kernel:d.
 assignvariableop_3_dense_57_bias:&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: A
.assignvariableop_9_lstm_28_lstm_cell_28_kernel:	 M
9assignvariableop_10_lstm_28_lstm_cell_28_recurrent_kernel:
È <
-assignvariableop_11_lstm_28_lstm_cell_28_bias:	 #
assignvariableop_12_total: #
assignvariableop_13_count: =
*assignvariableop_14_adam_dense_56_kernel_m:	Èd6
(assignvariableop_15_adam_dense_56_bias_m:d<
*assignvariableop_16_adam_dense_57_kernel_m:d6
(assignvariableop_17_adam_dense_57_bias_m:I
6assignvariableop_18_adam_lstm_28_lstm_cell_28_kernel_m:	 T
@assignvariableop_19_adam_lstm_28_lstm_cell_28_recurrent_kernel_m:
È C
4assignvariableop_20_adam_lstm_28_lstm_cell_28_bias_m:	 =
*assignvariableop_21_adam_dense_56_kernel_v:	Èd6
(assignvariableop_22_adam_dense_56_bias_v:d<
*assignvariableop_23_adam_dense_57_kernel_v:d6
(assignvariableop_24_adam_dense_57_bias_v:I
6assignvariableop_25_adam_lstm_28_lstm_cell_28_kernel_v:	 T
@assignvariableop_26_adam_lstm_28_lstm_cell_28_recurrent_kernel_v:
È C
4assignvariableop_27_adam_lstm_28_lstm_cell_28_bias_v:	 
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

Identity
AssignVariableOpAssignVariableOp assignvariableop_dense_56_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1¥
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_56_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2§
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_57_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3¥
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_57_biasIdentity_3:output:0"/device:CPU:0*
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
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_28_lstm_cell_28_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10Á
AssignVariableOp_10AssignVariableOp9assignvariableop_10_lstm_28_lstm_cell_28_recurrent_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11µ
AssignVariableOp_11AssignVariableOp-assignvariableop_11_lstm_28_lstm_cell_28_biasIdentity_11:output:0"/device:CPU:0*
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
Identity_14²
AssignVariableOp_14AssignVariableOp*assignvariableop_14_adam_dense_56_kernel_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15°
AssignVariableOp_15AssignVariableOp(assignvariableop_15_adam_dense_56_bias_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16²
AssignVariableOp_16AssignVariableOp*assignvariableop_16_adam_dense_57_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17°
AssignVariableOp_17AssignVariableOp(assignvariableop_17_adam_dense_57_bias_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18¾
AssignVariableOp_18AssignVariableOp6assignvariableop_18_adam_lstm_28_lstm_cell_28_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19È
AssignVariableOp_19AssignVariableOp@assignvariableop_19_adam_lstm_28_lstm_cell_28_recurrent_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20¼
AssignVariableOp_20AssignVariableOp4assignvariableop_20_adam_lstm_28_lstm_cell_28_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21²
AssignVariableOp_21AssignVariableOp*assignvariableop_21_adam_dense_56_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22°
AssignVariableOp_22AssignVariableOp(assignvariableop_22_adam_dense_56_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23²
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_dense_57_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24°
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_dense_57_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25¾
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_28_lstm_cell_28_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26È
AssignVariableOp_26AssignVariableOp@assignvariableop_26_adam_lstm_28_lstm_cell_28_recurrent_kernel_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27¼
AssignVariableOp_27AssignVariableOp4assignvariableop_27_adam_lstm_28_lstm_cell_28_bias_vIdentity_27:output:0"/device:CPU:0*
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
Þ
È
while_cond_1281974
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1281974___redundant_placeholder05
1while_while_cond_1281974___redundant_placeholder15
1while_while_cond_1281974___redundant_placeholder25
1while_while_cond_1281974___redundant_placeholder3
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
B: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿÈ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ:

_output_shapes
: :

_output_shapes
:
C
Ó
while_body_1281673
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_28_matmul_readvariableop_resource_0:	 I
5while_lstm_cell_28_matmul_1_readvariableop_resource_0:
È C
4while_lstm_cell_28_biasadd_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_28_matmul_readvariableop_resource:	 G
3while_lstm_cell_28_matmul_1_readvariableop_resource:
È A
2while_lstm_cell_28_biasadd_readvariableop_resource:	 ¢)while/lstm_cell_28/BiasAdd/ReadVariableOp¢(while/lstm_cell_28/MatMul/ReadVariableOp¢*while/lstm_cell_28/MatMul_1/ReadVariableOpÃ
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
(while/lstm_cell_28/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_28_matmul_readvariableop_resource_0*
_output_shapes
:	 *
dtype02*
(while/lstm_cell_28/MatMul/ReadVariableOp×
while/lstm_cell_28/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_28/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_28/MatMulÐ
*while/lstm_cell_28/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_28_matmul_1_readvariableop_resource_0* 
_output_shapes
:
È *
dtype02,
*while/lstm_cell_28/MatMul_1/ReadVariableOpÀ
while/lstm_cell_28/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_28/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_28/MatMul_1¸
while/lstm_cell_28/addAddV2#while/lstm_cell_28/MatMul:product:0%while/lstm_cell_28/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_28/addÈ
)while/lstm_cell_28/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_28_biasadd_readvariableop_resource_0*
_output_shapes	
: *
dtype02+
)while/lstm_cell_28/BiasAdd/ReadVariableOpÅ
while/lstm_cell_28/BiasAddBiasAddwhile/lstm_cell_28/add:z:01while/lstm_cell_28/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_28/BiasAdd
"while/lstm_cell_28/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_28/split/split_dim
while/lstm_cell_28/splitSplit+while/lstm_cell_28/split/split_dim:output:0#while/lstm_cell_28/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
while/lstm_cell_28/split
while/lstm_cell_28/SigmoidSigmoid!while/lstm_cell_28/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_28/Sigmoid
while/lstm_cell_28/Sigmoid_1Sigmoid!while/lstm_cell_28/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_28/Sigmoid_1¡
while/lstm_cell_28/mulMul while/lstm_cell_28/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_28/mul
while/lstm_cell_28/ReluRelu!while/lstm_cell_28/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_28/Reluµ
while/lstm_cell_28/mul_1Mulwhile/lstm_cell_28/Sigmoid:y:0%while/lstm_cell_28/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_28/mul_1ª
while/lstm_cell_28/add_1AddV2while/lstm_cell_28/mul:z:0while/lstm_cell_28/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_28/add_1
while/lstm_cell_28/Sigmoid_2Sigmoid!while/lstm_cell_28/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_28/Sigmoid_2
while/lstm_cell_28/Relu_1Reluwhile/lstm_cell_28/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_28/Relu_1¹
while/lstm_cell_28/mul_2Mul while/lstm_cell_28/Sigmoid_2:y:0'while/lstm_cell_28/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_28/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_28/mul_2:z:0*
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
while/add_1â
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_28/BiasAdd/ReadVariableOp)^while/lstm_cell_28/MatMul/ReadVariableOp+^while/lstm_cell_28/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityõ
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_28/BiasAdd/ReadVariableOp)^while/lstm_cell_28/MatMul/ReadVariableOp+^while/lstm_cell_28/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ä
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_28/BiasAdd/ReadVariableOp)^while/lstm_cell_28/MatMul/ReadVariableOp+^while/lstm_cell_28/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_28/BiasAdd/ReadVariableOp)^while/lstm_cell_28/MatMul/ReadVariableOp+^while/lstm_cell_28/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_28/mul_2:z:0*^while/lstm_cell_28/BiasAdd/ReadVariableOp)^while/lstm_cell_28/MatMul/ReadVariableOp+^while/lstm_cell_28/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_28/add_1:z:0*^while/lstm_cell_28/BiasAdd/ReadVariableOp)^while/lstm_cell_28/MatMul/ReadVariableOp+^while/lstm_cell_28/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_28_biasadd_readvariableop_resource4while_lstm_cell_28_biasadd_readvariableop_resource_0"l
3while_lstm_cell_28_matmul_1_readvariableop_resource5while_lstm_cell_28_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_28_matmul_readvariableop_resource3while_lstm_cell_28_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : 2V
)while/lstm_cell_28/BiasAdd/ReadVariableOp)while/lstm_cell_28/BiasAdd/ReadVariableOp2T
(while/lstm_cell_28/MatMul/ReadVariableOp(while/lstm_cell_28/MatMul/ReadVariableOp2X
*while/lstm_cell_28/MatMul_1/ReadVariableOp*while/lstm_cell_28/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿÈ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ:

_output_shapes
: :

_output_shapes
: 
ø{
È
J__inference_sequential_28_layer_call_and_return_conditional_losses_1281568

inputsF
3lstm_28_lstm_cell_28_matmul_readvariableop_resource:	 I
5lstm_28_lstm_cell_28_matmul_1_readvariableop_resource:
È C
4lstm_28_lstm_cell_28_biasadd_readvariableop_resource:	 :
'dense_56_matmul_readvariableop_resource:	Èd6
(dense_56_biasadd_readvariableop_resource:d9
'dense_57_matmul_readvariableop_resource:d6
(dense_57_biasadd_readvariableop_resource:
identity¢dense_56/BiasAdd/ReadVariableOp¢dense_56/MatMul/ReadVariableOp¢dense_57/BiasAdd/ReadVariableOp¢dense_57/MatMul/ReadVariableOp¢+lstm_28/lstm_cell_28/BiasAdd/ReadVariableOp¢*lstm_28/lstm_cell_28/MatMul/ReadVariableOp¢,lstm_28/lstm_cell_28/MatMul_1/ReadVariableOp¢lstm_28/whileT
lstm_28/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_28/Shape
lstm_28/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_28/strided_slice/stack
lstm_28/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_28/strided_slice/stack_1
lstm_28/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_28/strided_slice/stack_2
lstm_28/strided_sliceStridedSlicelstm_28/Shape:output:0$lstm_28/strided_slice/stack:output:0&lstm_28/strided_slice/stack_1:output:0&lstm_28/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_28/strided_slicem
lstm_28/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :È2
lstm_28/zeros/mul/y
lstm_28/zeros/mulMullstm_28/strided_slice:output:0lstm_28/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_28/zeros/mulo
lstm_28/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_28/zeros/Less/y
lstm_28/zeros/LessLesslstm_28/zeros/mul:z:0lstm_28/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_28/zeros/Lesss
lstm_28/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :È2
lstm_28/zeros/packed/1£
lstm_28/zeros/packedPacklstm_28/strided_slice:output:0lstm_28/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_28/zeros/packedo
lstm_28/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_28/zeros/Const
lstm_28/zerosFilllstm_28/zeros/packed:output:0lstm_28/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_28/zerosq
lstm_28/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :È2
lstm_28/zeros_1/mul/y
lstm_28/zeros_1/mulMullstm_28/strided_slice:output:0lstm_28/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_28/zeros_1/muls
lstm_28/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_28/zeros_1/Less/y
lstm_28/zeros_1/LessLesslstm_28/zeros_1/mul:z:0lstm_28/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_28/zeros_1/Lessw
lstm_28/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :È2
lstm_28/zeros_1/packed/1©
lstm_28/zeros_1/packedPacklstm_28/strided_slice:output:0!lstm_28/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_28/zeros_1/packeds
lstm_28/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_28/zeros_1/Const
lstm_28/zeros_1Filllstm_28/zeros_1/packed:output:0lstm_28/zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_28/zeros_1
lstm_28/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_28/transpose/perm
lstm_28/transpose	Transposeinputslstm_28/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_28/transposeg
lstm_28/Shape_1Shapelstm_28/transpose:y:0*
T0*
_output_shapes
:2
lstm_28/Shape_1
lstm_28/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_28/strided_slice_1/stack
lstm_28/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_28/strided_slice_1/stack_1
lstm_28/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_28/strided_slice_1/stack_2
lstm_28/strided_slice_1StridedSlicelstm_28/Shape_1:output:0&lstm_28/strided_slice_1/stack:output:0(lstm_28/strided_slice_1/stack_1:output:0(lstm_28/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_28/strided_slice_1
#lstm_28/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2%
#lstm_28/TensorArrayV2/element_shapeÒ
lstm_28/TensorArrayV2TensorListReserve,lstm_28/TensorArrayV2/element_shape:output:0 lstm_28/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_28/TensorArrayV2Ï
=lstm_28/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2?
=lstm_28/TensorArrayUnstack/TensorListFromTensor/element_shape
/lstm_28/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_28/transpose:y:0Flstm_28/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_28/TensorArrayUnstack/TensorListFromTensor
lstm_28/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_28/strided_slice_2/stack
lstm_28/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_28/strided_slice_2/stack_1
lstm_28/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_28/strided_slice_2/stack_2¬
lstm_28/strided_slice_2StridedSlicelstm_28/transpose:y:0&lstm_28/strided_slice_2/stack:output:0(lstm_28/strided_slice_2/stack_1:output:0(lstm_28/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_28/strided_slice_2Í
*lstm_28/lstm_cell_28/MatMul/ReadVariableOpReadVariableOp3lstm_28_lstm_cell_28_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype02,
*lstm_28/lstm_cell_28/MatMul/ReadVariableOpÍ
lstm_28/lstm_cell_28/MatMulMatMul lstm_28/strided_slice_2:output:02lstm_28/lstm_cell_28/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_28/lstm_cell_28/MatMulÔ
,lstm_28/lstm_cell_28/MatMul_1/ReadVariableOpReadVariableOp5lstm_28_lstm_cell_28_matmul_1_readvariableop_resource* 
_output_shapes
:
È *
dtype02.
,lstm_28/lstm_cell_28/MatMul_1/ReadVariableOpÉ
lstm_28/lstm_cell_28/MatMul_1MatMullstm_28/zeros:output:04lstm_28/lstm_cell_28/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_28/lstm_cell_28/MatMul_1À
lstm_28/lstm_cell_28/addAddV2%lstm_28/lstm_cell_28/MatMul:product:0'lstm_28/lstm_cell_28/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_28/lstm_cell_28/addÌ
+lstm_28/lstm_cell_28/BiasAdd/ReadVariableOpReadVariableOp4lstm_28_lstm_cell_28_biasadd_readvariableop_resource*
_output_shapes	
: *
dtype02-
+lstm_28/lstm_cell_28/BiasAdd/ReadVariableOpÍ
lstm_28/lstm_cell_28/BiasAddBiasAddlstm_28/lstm_cell_28/add:z:03lstm_28/lstm_cell_28/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_28/lstm_cell_28/BiasAdd
$lstm_28/lstm_cell_28/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_28/lstm_cell_28/split/split_dim
lstm_28/lstm_cell_28/splitSplit-lstm_28/lstm_cell_28/split/split_dim:output:0%lstm_28/lstm_cell_28/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
lstm_28/lstm_cell_28/split
lstm_28/lstm_cell_28/SigmoidSigmoid#lstm_28/lstm_cell_28/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_28/lstm_cell_28/Sigmoid£
lstm_28/lstm_cell_28/Sigmoid_1Sigmoid#lstm_28/lstm_cell_28/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2 
lstm_28/lstm_cell_28/Sigmoid_1¬
lstm_28/lstm_cell_28/mulMul"lstm_28/lstm_cell_28/Sigmoid_1:y:0lstm_28/zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_28/lstm_cell_28/mul
lstm_28/lstm_cell_28/ReluRelu#lstm_28/lstm_cell_28/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_28/lstm_cell_28/Relu½
lstm_28/lstm_cell_28/mul_1Mul lstm_28/lstm_cell_28/Sigmoid:y:0'lstm_28/lstm_cell_28/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_28/lstm_cell_28/mul_1²
lstm_28/lstm_cell_28/add_1AddV2lstm_28/lstm_cell_28/mul:z:0lstm_28/lstm_cell_28/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_28/lstm_cell_28/add_1£
lstm_28/lstm_cell_28/Sigmoid_2Sigmoid#lstm_28/lstm_cell_28/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2 
lstm_28/lstm_cell_28/Sigmoid_2
lstm_28/lstm_cell_28/Relu_1Relulstm_28/lstm_cell_28/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_28/lstm_cell_28/Relu_1Á
lstm_28/lstm_cell_28/mul_2Mul"lstm_28/lstm_cell_28/Sigmoid_2:y:0)lstm_28/lstm_cell_28/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_28/lstm_cell_28/mul_2
%lstm_28/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÈ   2'
%lstm_28/TensorArrayV2_1/element_shapeØ
lstm_28/TensorArrayV2_1TensorListReserve.lstm_28/TensorArrayV2_1/element_shape:output:0 lstm_28/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_28/TensorArrayV2_1^
lstm_28/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_28/time
 lstm_28/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 lstm_28/while/maximum_iterationsz
lstm_28/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_28/while/loop_counterì
lstm_28/whileWhile#lstm_28/while/loop_counter:output:0)lstm_28/while/maximum_iterations:output:0lstm_28/time:output:0 lstm_28/TensorArrayV2_1:handle:0lstm_28/zeros:output:0lstm_28/zeros_1:output:0 lstm_28/strided_slice_1:output:0?lstm_28/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_28_lstm_cell_28_matmul_readvariableop_resource5lstm_28_lstm_cell_28_matmul_1_readvariableop_resource4lstm_28_lstm_cell_28_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : *%
_read_only_resource_inputs
	
*&
bodyR
lstm_28_while_body_1281471*&
condR
lstm_28_while_cond_1281470*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : *
parallel_iterations 2
lstm_28/whileÅ
8lstm_28/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÈ   2:
8lstm_28/TensorArrayV2Stack/TensorListStack/element_shape
*lstm_28/TensorArrayV2Stack/TensorListStackTensorListStacklstm_28/while:output:3Alstm_28/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*
element_dtype02,
*lstm_28/TensorArrayV2Stack/TensorListStack
lstm_28/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
lstm_28/strided_slice_3/stack
lstm_28/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_28/strided_slice_3/stack_1
lstm_28/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_28/strided_slice_3/stack_2Ë
lstm_28/strided_slice_3StridedSlice3lstm_28/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_28/strided_slice_3/stack:output:0(lstm_28/strided_slice_3/stack_1:output:0(lstm_28/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*
shrink_axis_mask2
lstm_28/strided_slice_3
lstm_28/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_28/transpose_1/permÆ
lstm_28/transpose_1	Transpose3lstm_28/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_28/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_28/transpose_1v
lstm_28/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_28/runtime©
dense_56/MatMul/ReadVariableOpReadVariableOp'dense_56_matmul_readvariableop_resource*
_output_shapes
:	Èd*
dtype02 
dense_56/MatMul/ReadVariableOp¨
dense_56/MatMulMatMul lstm_28/strided_slice_3:output:0&dense_56/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dense_56/MatMul§
dense_56/BiasAdd/ReadVariableOpReadVariableOp(dense_56_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02!
dense_56/BiasAdd/ReadVariableOp¥
dense_56/BiasAddBiasAdddense_56/MatMul:product:0'dense_56/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dense_56/BiasAdds
dense_56/ReluReludense_56/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dense_56/Relu¨
dense_57/MatMul/ReadVariableOpReadVariableOp'dense_57_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02 
dense_57/MatMul/ReadVariableOp£
dense_57/MatMulMatMuldense_56/Relu:activations:0&dense_57/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_57/MatMul§
dense_57/BiasAdd/ReadVariableOpReadVariableOp(dense_57_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_57/BiasAdd/ReadVariableOp¥
dense_57/BiasAddBiasAdddense_57/MatMul:product:0'dense_57/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_57/BiasAdd
IdentityIdentitydense_57/BiasAdd:output:0 ^dense_56/BiasAdd/ReadVariableOp^dense_56/MatMul/ReadVariableOp ^dense_57/BiasAdd/ReadVariableOp^dense_57/MatMul/ReadVariableOp,^lstm_28/lstm_cell_28/BiasAdd/ReadVariableOp+^lstm_28/lstm_cell_28/MatMul/ReadVariableOp-^lstm_28/lstm_cell_28/MatMul_1/ReadVariableOp^lstm_28/while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2B
dense_56/BiasAdd/ReadVariableOpdense_56/BiasAdd/ReadVariableOp2@
dense_56/MatMul/ReadVariableOpdense_56/MatMul/ReadVariableOp2B
dense_57/BiasAdd/ReadVariableOpdense_57/BiasAdd/ReadVariableOp2@
dense_57/MatMul/ReadVariableOpdense_57/MatMul/ReadVariableOp2Z
+lstm_28/lstm_cell_28/BiasAdd/ReadVariableOp+lstm_28/lstm_cell_28/BiasAdd/ReadVariableOp2X
*lstm_28/lstm_cell_28/MatMul/ReadVariableOp*lstm_28/lstm_cell_28/MatMul/ReadVariableOp2\
,lstm_28/lstm_cell_28/MatMul_1/ReadVariableOp,lstm_28/lstm_cell_28/MatMul_1/ReadVariableOp2
lstm_28/whilelstm_28/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ÇE

D__inference_lstm_28_layer_call_and_return_conditional_losses_1280422

inputs'
lstm_cell_28_1280340:	 (
lstm_cell_28_1280342:
È #
lstm_cell_28_1280344:	 
identity¢$lstm_cell_28/StatefulPartitionedCall¢whileD
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
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :È2
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
B :è2
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
B :È2
zeros_1/packed/1
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
:ÿÿÿÿÿÿÿÿÿÈ2	
zeros_1u
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
strided_slice_2¤
$lstm_cell_28/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_28_1280340lstm_cell_28_1280342lstm_cell_28_1280344*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_lstm_cell_28_layer_call_and_return_conditional_losses_12802752&
$lstm_cell_28/StatefulPartitionedCall
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
while/loop_counter¬
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_28_1280340lstm_cell_28_1280342lstm_cell_28_1280344*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1280353*
condR
while_cond_1280352*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : *
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
IdentityIdentitystrided_slice_3:output:0%^lstm_cell_28/StatefulPartitionedCall^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_28/StatefulPartitionedCall$lstm_cell_28/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
	
±
/__inference_sequential_28_layer_call_fn_1280900
lstm_28_input
unknown:	 
	unknown_0:
È 
	unknown_1:	 
	unknown_2:	Èd
	unknown_3:d
	unknown_4:d
	unknown_5:
identity¢StatefulPartitionedCallÂ
StatefulPartitionedCallStatefulPartitionedCalllstm_28_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
GPU 2J 8 *S
fNRL
J__inference_sequential_28_layer_call_and_return_conditional_losses_12808832
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
_user_specified_namelstm_28_input
[

D__inference_lstm_28_layer_call_and_return_conditional_losses_1280841

inputs>
+lstm_cell_28_matmul_readvariableop_resource:	 A
-lstm_cell_28_matmul_1_readvariableop_resource:
È ;
,lstm_cell_28_biasadd_readvariableop_resource:	 
identity¢#lstm_cell_28/BiasAdd/ReadVariableOp¢"lstm_cell_28/MatMul/ReadVariableOp¢$lstm_cell_28/MatMul_1/ReadVariableOp¢whileD
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
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :È2
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
B :è2
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
B :È2
zeros_1/packed/1
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
:ÿÿÿÿÿÿÿÿÿÈ2	
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
"lstm_cell_28/MatMul/ReadVariableOpReadVariableOp+lstm_cell_28_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype02$
"lstm_cell_28/MatMul/ReadVariableOp­
lstm_cell_28/MatMulMatMulstrided_slice_2:output:0*lstm_cell_28/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_28/MatMul¼
$lstm_cell_28/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_28_matmul_1_readvariableop_resource* 
_output_shapes
:
È *
dtype02&
$lstm_cell_28/MatMul_1/ReadVariableOp©
lstm_cell_28/MatMul_1MatMulzeros:output:0,lstm_cell_28/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_28/MatMul_1 
lstm_cell_28/addAddV2lstm_cell_28/MatMul:product:0lstm_cell_28/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_28/add´
#lstm_cell_28/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_28_biasadd_readvariableop_resource*
_output_shapes	
: *
dtype02%
#lstm_cell_28/BiasAdd/ReadVariableOp­
lstm_cell_28/BiasAddBiasAddlstm_cell_28/add:z:0+lstm_cell_28/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_28/BiasAdd~
lstm_cell_28/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_28/split/split_dim÷
lstm_cell_28/splitSplit%lstm_cell_28/split/split_dim:output:0lstm_cell_28/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
lstm_cell_28/split
lstm_cell_28/SigmoidSigmoidlstm_cell_28/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_28/Sigmoid
lstm_cell_28/Sigmoid_1Sigmoidlstm_cell_28/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_28/Sigmoid_1
lstm_cell_28/mulMullstm_cell_28/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_28/mul~
lstm_cell_28/ReluRelulstm_cell_28/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_28/Relu
lstm_cell_28/mul_1Mullstm_cell_28/Sigmoid:y:0lstm_cell_28/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_28/mul_1
lstm_cell_28/add_1AddV2lstm_cell_28/mul:z:0lstm_cell_28/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_28/add_1
lstm_cell_28/Sigmoid_2Sigmoidlstm_cell_28/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_28/Sigmoid_2}
lstm_cell_28/Relu_1Relulstm_cell_28/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_28/Relu_1¡
lstm_cell_28/mul_2Mullstm_cell_28/Sigmoid_2:y:0!lstm_cell_28/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_28/mul_2
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
while/loop_counterô
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_28_matmul_readvariableop_resource-lstm_cell_28_matmul_1_readvariableop_resource,lstm_cell_28_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1280757*
condR
while_cond_1280756*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : *
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
runtimeç
IdentityIdentitystrided_slice_3:output:0$^lstm_cell_28/BiasAdd/ReadVariableOp#^lstm_cell_28/MatMul/ReadVariableOp%^lstm_cell_28/MatMul_1/ReadVariableOp^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_28/BiasAdd/ReadVariableOp#lstm_cell_28/BiasAdd/ReadVariableOp2H
"lstm_cell_28/MatMul/ReadVariableOp"lstm_cell_28/MatMul/ReadVariableOp2L
$lstm_cell_28/MatMul_1/ReadVariableOp$lstm_cell_28/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
í
¹
)__inference_lstm_28_layer_call_fn_1282221
inputs_0
unknown:	 
	unknown_0:
È 
	unknown_1:	 
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
D__inference_lstm_28_layer_call_and_return_conditional_losses_12802122
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
	
ª
/__inference_sequential_28_layer_call_fn_1281587

inputs
unknown:	 
	unknown_0:
È 
	unknown_1:	 
	unknown_2:	Èd
	unknown_3:d
	unknown_4:d
	unknown_5:
identity¢StatefulPartitionedCall»
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
GPU 2J 8 *S
fNRL
J__inference_sequential_28_layer_call_and_return_conditional_losses_12808832
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
í
¹
)__inference_lstm_28_layer_call_fn_1282232
inputs_0
unknown:	 
	unknown_0:
È 
	unknown_1:	 
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
D__inference_lstm_28_layer_call_and_return_conditional_losses_12804222
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
¨A
ã
 __inference__traced_save_1282498
file_prefix.
*savev2_dense_56_kernel_read_readvariableop,
(savev2_dense_56_bias_read_readvariableop.
*savev2_dense_57_kernel_read_readvariableop,
(savev2_dense_57_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop:
6savev2_lstm_28_lstm_cell_28_kernel_read_readvariableopD
@savev2_lstm_28_lstm_cell_28_recurrent_kernel_read_readvariableop8
4savev2_lstm_28_lstm_cell_28_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_56_kernel_m_read_readvariableop3
/savev2_adam_dense_56_bias_m_read_readvariableop5
1savev2_adam_dense_57_kernel_m_read_readvariableop3
/savev2_adam_dense_57_bias_m_read_readvariableopA
=savev2_adam_lstm_28_lstm_cell_28_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_28_lstm_cell_28_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_28_lstm_cell_28_bias_m_read_readvariableop5
1savev2_adam_dense_56_kernel_v_read_readvariableop3
/savev2_adam_dense_56_bias_v_read_readvariableop5
1savev2_adam_dense_57_kernel_v_read_readvariableop3
/savev2_adam_dense_57_bias_v_read_readvariableopA
=savev2_adam_lstm_28_lstm_cell_28_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_28_lstm_cell_28_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_28_lstm_cell_28_bias_v_read_readvariableop
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
SaveV2/shape_and_slicesÜ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_56_kernel_read_readvariableop(savev2_dense_56_bias_read_readvariableop*savev2_dense_57_kernel_read_readvariableop(savev2_dense_57_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop6savev2_lstm_28_lstm_cell_28_kernel_read_readvariableop@savev2_lstm_28_lstm_cell_28_recurrent_kernel_read_readvariableop4savev2_lstm_28_lstm_cell_28_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_56_kernel_m_read_readvariableop/savev2_adam_dense_56_bias_m_read_readvariableop1savev2_adam_dense_57_kernel_m_read_readvariableop/savev2_adam_dense_57_bias_m_read_readvariableop=savev2_adam_lstm_28_lstm_cell_28_kernel_m_read_readvariableopGsavev2_adam_lstm_28_lstm_cell_28_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_28_lstm_cell_28_bias_m_read_readvariableop1savev2_adam_dense_56_kernel_v_read_readvariableop/savev2_adam_dense_56_bias_v_read_readvariableop1savev2_adam_dense_57_kernel_v_read_readvariableop/savev2_adam_dense_57_bias_v_read_readvariableop=savev2_adam_lstm_28_lstm_cell_28_kernel_v_read_readvariableopGsavev2_adam_lstm_28_lstm_cell_28_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_28_lstm_cell_28_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
Ï: :	Èd:d:d:: : : : : :	 :
È : : : :	Èd:d:d::	 :
È : :	Èd:d:d::	 :
È : : 2(
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
:	 :&"
 
_output_shapes
:
È :!

_output_shapes	
: :
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
:	 :&"
 
_output_shapes
:
È :!

_output_shapes	
: :%!

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
:	 :&"
 
_output_shapes
:
È :!

_output_shapes	
: :

_output_shapes
: 
	
±
/__inference_sequential_28_layer_call_fn_1281171
lstm_28_input
unknown:	 
	unknown_0:
È 
	unknown_1:	 
	unknown_2:	Èd
	unknown_3:d
	unknown_4:d
	unknown_5:
identity¢StatefulPartitionedCallÂ
StatefulPartitionedCallStatefulPartitionedCalllstm_28_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
GPU 2J 8 *S
fNRL
J__inference_sequential_28_layer_call_and_return_conditional_losses_12811352
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
_user_specified_namelstm_28_input
Õ
·
)__inference_lstm_28_layer_call_fn_1282243

inputs
unknown:	 
	unknown_0:
È 
	unknown_1:	 
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
D__inference_lstm_28_layer_call_and_return_conditional_losses_12808412
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
ø
Ã
J__inference_sequential_28_layer_call_and_return_conditional_losses_1280883

inputs"
lstm_28_1280842:	 #
lstm_28_1280844:
È 
lstm_28_1280846:	 #
dense_56_1280861:	Èd
dense_56_1280863:d"
dense_57_1280877:d
dense_57_1280879:
identity¢ dense_56/StatefulPartitionedCall¢ dense_57/StatefulPartitionedCall¢lstm_28/StatefulPartitionedCall¦
lstm_28/StatefulPartitionedCallStatefulPartitionedCallinputslstm_28_1280842lstm_28_1280844lstm_28_1280846*
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
D__inference_lstm_28_layer_call_and_return_conditional_losses_12808412!
lstm_28/StatefulPartitionedCall¹
 dense_56/StatefulPartitionedCallStatefulPartitionedCall(lstm_28/StatefulPartitionedCall:output:0dense_56_1280861dense_56_1280863*
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
GPU 2J 8 *N
fIRG
E__inference_dense_56_layer_call_and_return_conditional_losses_12808602"
 dense_56/StatefulPartitionedCallº
 dense_57/StatefulPartitionedCallStatefulPartitionedCall)dense_56/StatefulPartitionedCall:output:0dense_57_1280877dense_57_1280879*
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
GPU 2J 8 *N
fIRG
E__inference_dense_57_layer_call_and_return_conditional_losses_12808762"
 dense_57/StatefulPartitionedCallå
IdentityIdentity)dense_57/StatefulPartitionedCall:output:0!^dense_56/StatefulPartitionedCall!^dense_57/StatefulPartitionedCall ^lstm_28/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2D
 dense_56/StatefulPartitionedCall dense_56/StatefulPartitionedCall2D
 dense_57/StatefulPartitionedCall dense_57/StatefulPartitionedCall2B
lstm_28/StatefulPartitionedCalllstm_28/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ï

è
lstm_28_while_cond_1281470,
(lstm_28_while_lstm_28_while_loop_counter2
.lstm_28_while_lstm_28_while_maximum_iterations
lstm_28_while_placeholder
lstm_28_while_placeholder_1
lstm_28_while_placeholder_2
lstm_28_while_placeholder_3.
*lstm_28_while_less_lstm_28_strided_slice_1E
Alstm_28_while_lstm_28_while_cond_1281470___redundant_placeholder0E
Alstm_28_while_lstm_28_while_cond_1281470___redundant_placeholder1E
Alstm_28_while_lstm_28_while_cond_1281470___redundant_placeholder2E
Alstm_28_while_lstm_28_while_cond_1281470___redundant_placeholder3
lstm_28_while_identity

lstm_28/while/LessLesslstm_28_while_placeholder*lstm_28_while_less_lstm_28_strided_slice_1*
T0*
_output_shapes
: 2
lstm_28/while/Lessu
lstm_28/while/IdentityIdentitylstm_28/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_28/while/Identity"9
lstm_28_while_identitylstm_28/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿÈ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ:

_output_shapes
: :

_output_shapes
:
ø
Ã
J__inference_sequential_28_layer_call_and_return_conditional_losses_1281135

inputs"
lstm_28_1281117:	 #
lstm_28_1281119:
È 
lstm_28_1281121:	 #
dense_56_1281124:	Èd
dense_56_1281126:d"
dense_57_1281129:d
dense_57_1281131:
identity¢ dense_56/StatefulPartitionedCall¢ dense_57/StatefulPartitionedCall¢lstm_28/StatefulPartitionedCall¦
lstm_28/StatefulPartitionedCallStatefulPartitionedCallinputslstm_28_1281117lstm_28_1281119lstm_28_1281121*
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
D__inference_lstm_28_layer_call_and_return_conditional_losses_12810842!
lstm_28/StatefulPartitionedCall¹
 dense_56/StatefulPartitionedCallStatefulPartitionedCall(lstm_28/StatefulPartitionedCall:output:0dense_56_1281124dense_56_1281126*
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
GPU 2J 8 *N
fIRG
E__inference_dense_56_layer_call_and_return_conditional_losses_12808602"
 dense_56/StatefulPartitionedCallº
 dense_57/StatefulPartitionedCallStatefulPartitionedCall)dense_56/StatefulPartitionedCall:output:0dense_57_1281129dense_57_1281131*
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
GPU 2J 8 *N
fIRG
E__inference_dense_57_layer_call_and_return_conditional_losses_12808762"
 dense_57/StatefulPartitionedCallå
IdentityIdentity)dense_57/StatefulPartitionedCall:output:0!^dense_56/StatefulPartitionedCall!^dense_57/StatefulPartitionedCall ^lstm_28/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2D
 dense_56/StatefulPartitionedCall dense_56/StatefulPartitionedCall2D
 dense_57/StatefulPartitionedCall dense_57/StatefulPartitionedCall2B
lstm_28/StatefulPartitionedCalllstm_28/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ø
.__inference_lstm_cell_28_layer_call_fn_1282391

inputs
states_0
states_1
unknown:	 
	unknown_0:
È 
	unknown_1:	 
identity

identity_1

identity_2¢StatefulPartitionedCallÇ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_lstm_cell_28_layer_call_and_return_conditional_losses_12802752
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

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : 22
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
states/0:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
"
_user_specified_name
states/1
Ñ	
ö
E__inference_dense_57_layer_call_and_return_conditional_losses_1280876

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
Þ
È
while_cond_1280142
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1280142___redundant_placeholder05
1while_while_cond_1280142___redundant_placeholder15
1while_while_cond_1280142___redundant_placeholder25
1while_while_cond_1280142___redundant_placeholder3
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
B: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿÈ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ:

_output_shapes
: :

_output_shapes
:
C
Ó
while_body_1281975
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_28_matmul_readvariableop_resource_0:	 I
5while_lstm_cell_28_matmul_1_readvariableop_resource_0:
È C
4while_lstm_cell_28_biasadd_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_28_matmul_readvariableop_resource:	 G
3while_lstm_cell_28_matmul_1_readvariableop_resource:
È A
2while_lstm_cell_28_biasadd_readvariableop_resource:	 ¢)while/lstm_cell_28/BiasAdd/ReadVariableOp¢(while/lstm_cell_28/MatMul/ReadVariableOp¢*while/lstm_cell_28/MatMul_1/ReadVariableOpÃ
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
(while/lstm_cell_28/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_28_matmul_readvariableop_resource_0*
_output_shapes
:	 *
dtype02*
(while/lstm_cell_28/MatMul/ReadVariableOp×
while/lstm_cell_28/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_28/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_28/MatMulÐ
*while/lstm_cell_28/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_28_matmul_1_readvariableop_resource_0* 
_output_shapes
:
È *
dtype02,
*while/lstm_cell_28/MatMul_1/ReadVariableOpÀ
while/lstm_cell_28/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_28/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_28/MatMul_1¸
while/lstm_cell_28/addAddV2#while/lstm_cell_28/MatMul:product:0%while/lstm_cell_28/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_28/addÈ
)while/lstm_cell_28/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_28_biasadd_readvariableop_resource_0*
_output_shapes	
: *
dtype02+
)while/lstm_cell_28/BiasAdd/ReadVariableOpÅ
while/lstm_cell_28/BiasAddBiasAddwhile/lstm_cell_28/add:z:01while/lstm_cell_28/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_28/BiasAdd
"while/lstm_cell_28/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_28/split/split_dim
while/lstm_cell_28/splitSplit+while/lstm_cell_28/split/split_dim:output:0#while/lstm_cell_28/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
while/lstm_cell_28/split
while/lstm_cell_28/SigmoidSigmoid!while/lstm_cell_28/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_28/Sigmoid
while/lstm_cell_28/Sigmoid_1Sigmoid!while/lstm_cell_28/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_28/Sigmoid_1¡
while/lstm_cell_28/mulMul while/lstm_cell_28/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_28/mul
while/lstm_cell_28/ReluRelu!while/lstm_cell_28/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_28/Reluµ
while/lstm_cell_28/mul_1Mulwhile/lstm_cell_28/Sigmoid:y:0%while/lstm_cell_28/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_28/mul_1ª
while/lstm_cell_28/add_1AddV2while/lstm_cell_28/mul:z:0while/lstm_cell_28/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_28/add_1
while/lstm_cell_28/Sigmoid_2Sigmoid!while/lstm_cell_28/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_28/Sigmoid_2
while/lstm_cell_28/Relu_1Reluwhile/lstm_cell_28/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_28/Relu_1¹
while/lstm_cell_28/mul_2Mul while/lstm_cell_28/Sigmoid_2:y:0'while/lstm_cell_28/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_28/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_28/mul_2:z:0*
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
while/add_1â
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_28/BiasAdd/ReadVariableOp)^while/lstm_cell_28/MatMul/ReadVariableOp+^while/lstm_cell_28/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityõ
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_28/BiasAdd/ReadVariableOp)^while/lstm_cell_28/MatMul/ReadVariableOp+^while/lstm_cell_28/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ä
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_28/BiasAdd/ReadVariableOp)^while/lstm_cell_28/MatMul/ReadVariableOp+^while/lstm_cell_28/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_28/BiasAdd/ReadVariableOp)^while/lstm_cell_28/MatMul/ReadVariableOp+^while/lstm_cell_28/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_28/mul_2:z:0*^while/lstm_cell_28/BiasAdd/ReadVariableOp)^while/lstm_cell_28/MatMul/ReadVariableOp+^while/lstm_cell_28/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_28/add_1:z:0*^while/lstm_cell_28/BiasAdd/ReadVariableOp)^while/lstm_cell_28/MatMul/ReadVariableOp+^while/lstm_cell_28/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_28_biasadd_readvariableop_resource4while_lstm_cell_28_biasadd_readvariableop_resource_0"l
3while_lstm_cell_28_matmul_1_readvariableop_resource5while_lstm_cell_28_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_28_matmul_readvariableop_resource3while_lstm_cell_28_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : 2V
)while/lstm_cell_28/BiasAdd/ReadVariableOp)while/lstm_cell_28/BiasAdd/ReadVariableOp2T
(while/lstm_cell_28/MatMul/ReadVariableOp(while/lstm_cell_28/MatMul/ReadVariableOp2X
*while/lstm_cell_28/MatMul_1/ReadVariableOp*while/lstm_cell_28/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿÈ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ:

_output_shapes
: :

_output_shapes
: 
Þ
È
while_cond_1280352
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1280352___redundant_placeholder05
1while_while_cond_1280352___redundant_placeholder15
1while_while_cond_1280352___redundant_placeholder25
1while_while_cond_1280352___redundant_placeholder3
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
B: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿÈ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ:

_output_shapes
: :

_output_shapes
:


*__inference_dense_57_layer_call_fn_1282293

inputs
unknown:d
	unknown_0:
identity¢StatefulPartitionedCallõ
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
GPU 2J 8 *N
fIRG
E__inference_dense_57_layer_call_and_return_conditional_losses_12808762
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
ô

(sequential_28_lstm_28_while_cond_1279956H
Dsequential_28_lstm_28_while_sequential_28_lstm_28_while_loop_counterN
Jsequential_28_lstm_28_while_sequential_28_lstm_28_while_maximum_iterations+
'sequential_28_lstm_28_while_placeholder-
)sequential_28_lstm_28_while_placeholder_1-
)sequential_28_lstm_28_while_placeholder_2-
)sequential_28_lstm_28_while_placeholder_3J
Fsequential_28_lstm_28_while_less_sequential_28_lstm_28_strided_slice_1a
]sequential_28_lstm_28_while_sequential_28_lstm_28_while_cond_1279956___redundant_placeholder0a
]sequential_28_lstm_28_while_sequential_28_lstm_28_while_cond_1279956___redundant_placeholder1a
]sequential_28_lstm_28_while_sequential_28_lstm_28_while_cond_1279956___redundant_placeholder2a
]sequential_28_lstm_28_while_sequential_28_lstm_28_while_cond_1279956___redundant_placeholder3(
$sequential_28_lstm_28_while_identity
Þ
 sequential_28/lstm_28/while/LessLess'sequential_28_lstm_28_while_placeholderFsequential_28_lstm_28_while_less_sequential_28_lstm_28_strided_slice_1*
T0*
_output_shapes
: 2"
 sequential_28/lstm_28/while/Less
$sequential_28/lstm_28/while/IdentityIdentity$sequential_28/lstm_28/while/Less:z:0*
T0
*
_output_shapes
: 2&
$sequential_28/lstm_28/while/Identity"U
$sequential_28_lstm_28_while_identity-sequential_28/lstm_28/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿÈ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ:

_output_shapes
: :

_output_shapes
:
Þ
È
while_cond_1280756
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1280756___redundant_placeholder05
1while_while_cond_1280756___redundant_placeholder15
1while_while_cond_1280756___redundant_placeholder25
1while_while_cond_1280756___redundant_placeholder3
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
B: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿÈ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ:

_output_shapes
: :

_output_shapes
:
È[

D__inference_lstm_28_layer_call_and_return_conditional_losses_1281908
inputs_0>
+lstm_cell_28_matmul_readvariableop_resource:	 A
-lstm_cell_28_matmul_1_readvariableop_resource:
È ;
,lstm_cell_28_biasadd_readvariableop_resource:	 
identity¢#lstm_cell_28/BiasAdd/ReadVariableOp¢"lstm_cell_28/MatMul/ReadVariableOp¢$lstm_cell_28/MatMul_1/ReadVariableOp¢whileF
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
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :È2
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
B :è2
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
B :È2
zeros_1/packed/1
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
:ÿÿÿÿÿÿÿÿÿÈ2	
zeros_1u
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
"lstm_cell_28/MatMul/ReadVariableOpReadVariableOp+lstm_cell_28_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype02$
"lstm_cell_28/MatMul/ReadVariableOp­
lstm_cell_28/MatMulMatMulstrided_slice_2:output:0*lstm_cell_28/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_28/MatMul¼
$lstm_cell_28/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_28_matmul_1_readvariableop_resource* 
_output_shapes
:
È *
dtype02&
$lstm_cell_28/MatMul_1/ReadVariableOp©
lstm_cell_28/MatMul_1MatMulzeros:output:0,lstm_cell_28/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_28/MatMul_1 
lstm_cell_28/addAddV2lstm_cell_28/MatMul:product:0lstm_cell_28/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_28/add´
#lstm_cell_28/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_28_biasadd_readvariableop_resource*
_output_shapes	
: *
dtype02%
#lstm_cell_28/BiasAdd/ReadVariableOp­
lstm_cell_28/BiasAddBiasAddlstm_cell_28/add:z:0+lstm_cell_28/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_28/BiasAdd~
lstm_cell_28/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_28/split/split_dim÷
lstm_cell_28/splitSplit%lstm_cell_28/split/split_dim:output:0lstm_cell_28/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
lstm_cell_28/split
lstm_cell_28/SigmoidSigmoidlstm_cell_28/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_28/Sigmoid
lstm_cell_28/Sigmoid_1Sigmoidlstm_cell_28/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_28/Sigmoid_1
lstm_cell_28/mulMullstm_cell_28/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_28/mul~
lstm_cell_28/ReluRelulstm_cell_28/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_28/Relu
lstm_cell_28/mul_1Mullstm_cell_28/Sigmoid:y:0lstm_cell_28/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_28/mul_1
lstm_cell_28/add_1AddV2lstm_cell_28/mul:z:0lstm_cell_28/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_28/add_1
lstm_cell_28/Sigmoid_2Sigmoidlstm_cell_28/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_28/Sigmoid_2}
lstm_cell_28/Relu_1Relulstm_cell_28/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_28/Relu_1¡
lstm_cell_28/mul_2Mullstm_cell_28/Sigmoid_2:y:0!lstm_cell_28/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_28/mul_2
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
while/loop_counterô
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_28_matmul_readvariableop_resource-lstm_cell_28_matmul_1_readvariableop_resource,lstm_cell_28_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1281824*
condR
while_cond_1281823*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : *
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
runtimeç
IdentityIdentitystrided_slice_3:output:0$^lstm_cell_28/BiasAdd/ReadVariableOp#^lstm_cell_28/MatMul/ReadVariableOp%^lstm_cell_28/MatMul_1/ReadVariableOp^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_28/BiasAdd/ReadVariableOp#lstm_cell_28/BiasAdd/ReadVariableOp2H
"lstm_cell_28/MatMul/ReadVariableOp"lstm_cell_28/MatMul/ReadVariableOp2L
$lstm_cell_28/MatMul_1/ReadVariableOp$lstm_cell_28/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
Þ
È
while_cond_1282125
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1282125___redundant_placeholder05
1while_while_cond_1282125___redundant_placeholder15
1while_while_cond_1282125___redundant_placeholder25
1while_while_cond_1282125___redundant_placeholder3
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
B: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿÈ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ:

_output_shapes
: :

_output_shapes
:
[

D__inference_lstm_28_layer_call_and_return_conditional_losses_1281084

inputs>
+lstm_cell_28_matmul_readvariableop_resource:	 A
-lstm_cell_28_matmul_1_readvariableop_resource:
È ;
,lstm_cell_28_biasadd_readvariableop_resource:	 
identity¢#lstm_cell_28/BiasAdd/ReadVariableOp¢"lstm_cell_28/MatMul/ReadVariableOp¢$lstm_cell_28/MatMul_1/ReadVariableOp¢whileD
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
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :È2
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
B :è2
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
B :È2
zeros_1/packed/1
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
:ÿÿÿÿÿÿÿÿÿÈ2	
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
"lstm_cell_28/MatMul/ReadVariableOpReadVariableOp+lstm_cell_28_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype02$
"lstm_cell_28/MatMul/ReadVariableOp­
lstm_cell_28/MatMulMatMulstrided_slice_2:output:0*lstm_cell_28/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_28/MatMul¼
$lstm_cell_28/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_28_matmul_1_readvariableop_resource* 
_output_shapes
:
È *
dtype02&
$lstm_cell_28/MatMul_1/ReadVariableOp©
lstm_cell_28/MatMul_1MatMulzeros:output:0,lstm_cell_28/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_28/MatMul_1 
lstm_cell_28/addAddV2lstm_cell_28/MatMul:product:0lstm_cell_28/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_28/add´
#lstm_cell_28/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_28_biasadd_readvariableop_resource*
_output_shapes	
: *
dtype02%
#lstm_cell_28/BiasAdd/ReadVariableOp­
lstm_cell_28/BiasAddBiasAddlstm_cell_28/add:z:0+lstm_cell_28/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_28/BiasAdd~
lstm_cell_28/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_28/split/split_dim÷
lstm_cell_28/splitSplit%lstm_cell_28/split/split_dim:output:0lstm_cell_28/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
lstm_cell_28/split
lstm_cell_28/SigmoidSigmoidlstm_cell_28/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_28/Sigmoid
lstm_cell_28/Sigmoid_1Sigmoidlstm_cell_28/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_28/Sigmoid_1
lstm_cell_28/mulMullstm_cell_28/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_28/mul~
lstm_cell_28/ReluRelulstm_cell_28/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_28/Relu
lstm_cell_28/mul_1Mullstm_cell_28/Sigmoid:y:0lstm_cell_28/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_28/mul_1
lstm_cell_28/add_1AddV2lstm_cell_28/mul:z:0lstm_cell_28/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_28/add_1
lstm_cell_28/Sigmoid_2Sigmoidlstm_cell_28/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_28/Sigmoid_2}
lstm_cell_28/Relu_1Relulstm_cell_28/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_28/Relu_1¡
lstm_cell_28/mul_2Mullstm_cell_28/Sigmoid_2:y:0!lstm_cell_28/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_28/mul_2
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
while/loop_counterô
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_28_matmul_readvariableop_resource-lstm_cell_28_matmul_1_readvariableop_resource,lstm_cell_28_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_1281000*
condR
while_cond_1280999*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : *
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
runtimeç
IdentityIdentitystrided_slice_3:output:0$^lstm_cell_28/BiasAdd/ReadVariableOp#^lstm_cell_28/MatMul/ReadVariableOp%^lstm_cell_28/MatMul_1/ReadVariableOp^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_28/BiasAdd/ReadVariableOp#lstm_cell_28/BiasAdd/ReadVariableOp2H
"lstm_cell_28/MatMul/ReadVariableOp"lstm_cell_28/MatMul/ReadVariableOp2L
$lstm_cell_28/MatMul_1/ReadVariableOp$lstm_cell_28/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ï

è
lstm_28_while_cond_1281306,
(lstm_28_while_lstm_28_while_loop_counter2
.lstm_28_while_lstm_28_while_maximum_iterations
lstm_28_while_placeholder
lstm_28_while_placeholder_1
lstm_28_while_placeholder_2
lstm_28_while_placeholder_3.
*lstm_28_while_less_lstm_28_strided_slice_1E
Alstm_28_while_lstm_28_while_cond_1281306___redundant_placeholder0E
Alstm_28_while_lstm_28_while_cond_1281306___redundant_placeholder1E
Alstm_28_while_lstm_28_while_cond_1281306___redundant_placeholder2E
Alstm_28_while_lstm_28_while_cond_1281306___redundant_placeholder3
lstm_28_while_identity

lstm_28/while/LessLesslstm_28_while_placeholder*lstm_28_while_less_lstm_28_strided_slice_1*
T0*
_output_shapes
: 2
lstm_28/while/Lessu
lstm_28/while/IdentityIdentitylstm_28/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_28/while/Identity"9
lstm_28_while_identitylstm_28/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: ::::: 
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
:ÿÿÿÿÿÿÿÿÿÈ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ:

_output_shapes
: :

_output_shapes
:
C
Ó
while_body_1282126
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_28_matmul_readvariableop_resource_0:	 I
5while_lstm_cell_28_matmul_1_readvariableop_resource_0:
È C
4while_lstm_cell_28_biasadd_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_28_matmul_readvariableop_resource:	 G
3while_lstm_cell_28_matmul_1_readvariableop_resource:
È A
2while_lstm_cell_28_biasadd_readvariableop_resource:	 ¢)while/lstm_cell_28/BiasAdd/ReadVariableOp¢(while/lstm_cell_28/MatMul/ReadVariableOp¢*while/lstm_cell_28/MatMul_1/ReadVariableOpÃ
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
(while/lstm_cell_28/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_28_matmul_readvariableop_resource_0*
_output_shapes
:	 *
dtype02*
(while/lstm_cell_28/MatMul/ReadVariableOp×
while/lstm_cell_28/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_28/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_28/MatMulÐ
*while/lstm_cell_28/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_28_matmul_1_readvariableop_resource_0* 
_output_shapes
:
È *
dtype02,
*while/lstm_cell_28/MatMul_1/ReadVariableOpÀ
while/lstm_cell_28/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_28/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_28/MatMul_1¸
while/lstm_cell_28/addAddV2#while/lstm_cell_28/MatMul:product:0%while/lstm_cell_28/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_28/addÈ
)while/lstm_cell_28/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_28_biasadd_readvariableop_resource_0*
_output_shapes	
: *
dtype02+
)while/lstm_cell_28/BiasAdd/ReadVariableOpÅ
while/lstm_cell_28/BiasAddBiasAddwhile/lstm_cell_28/add:z:01while/lstm_cell_28/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_28/BiasAdd
"while/lstm_cell_28/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_28/split/split_dim
while/lstm_cell_28/splitSplit+while/lstm_cell_28/split/split_dim:output:0#while/lstm_cell_28/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
while/lstm_cell_28/split
while/lstm_cell_28/SigmoidSigmoid!while/lstm_cell_28/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_28/Sigmoid
while/lstm_cell_28/Sigmoid_1Sigmoid!while/lstm_cell_28/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_28/Sigmoid_1¡
while/lstm_cell_28/mulMul while/lstm_cell_28/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_28/mul
while/lstm_cell_28/ReluRelu!while/lstm_cell_28/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_28/Reluµ
while/lstm_cell_28/mul_1Mulwhile/lstm_cell_28/Sigmoid:y:0%while/lstm_cell_28/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_28/mul_1ª
while/lstm_cell_28/add_1AddV2while/lstm_cell_28/mul:z:0while/lstm_cell_28/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_28/add_1
while/lstm_cell_28/Sigmoid_2Sigmoid!while/lstm_cell_28/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_28/Sigmoid_2
while/lstm_cell_28/Relu_1Reluwhile/lstm_cell_28/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_28/Relu_1¹
while/lstm_cell_28/mul_2Mul while/lstm_cell_28/Sigmoid_2:y:0'while/lstm_cell_28/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_28/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_28/mul_2:z:0*
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
while/add_1â
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_28/BiasAdd/ReadVariableOp)^while/lstm_cell_28/MatMul/ReadVariableOp+^while/lstm_cell_28/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityõ
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_28/BiasAdd/ReadVariableOp)^while/lstm_cell_28/MatMul/ReadVariableOp+^while/lstm_cell_28/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ä
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_28/BiasAdd/ReadVariableOp)^while/lstm_cell_28/MatMul/ReadVariableOp+^while/lstm_cell_28/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_28/BiasAdd/ReadVariableOp)^while/lstm_cell_28/MatMul/ReadVariableOp+^while/lstm_cell_28/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_28/mul_2:z:0*^while/lstm_cell_28/BiasAdd/ReadVariableOp)^while/lstm_cell_28/MatMul/ReadVariableOp+^while/lstm_cell_28/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_28/add_1:z:0*^while/lstm_cell_28/BiasAdd/ReadVariableOp)^while/lstm_cell_28/MatMul/ReadVariableOp+^while/lstm_cell_28/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_28_biasadd_readvariableop_resource4while_lstm_cell_28_biasadd_readvariableop_resource_0"l
3while_lstm_cell_28_matmul_1_readvariableop_resource5while_lstm_cell_28_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_28_matmul_readvariableop_resource3while_lstm_cell_28_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : 2V
)while/lstm_cell_28/BiasAdd/ReadVariableOp)while/lstm_cell_28/BiasAdd/ReadVariableOp2T
(while/lstm_cell_28/MatMul/ReadVariableOp(while/lstm_cell_28/MatMul/ReadVariableOp2X
*while/lstm_cell_28/MatMul_1/ReadVariableOp*while/lstm_cell_28/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿÈ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ:

_output_shapes
: :

_output_shapes
: 
æc

(sequential_28_lstm_28_while_body_1279957H
Dsequential_28_lstm_28_while_sequential_28_lstm_28_while_loop_counterN
Jsequential_28_lstm_28_while_sequential_28_lstm_28_while_maximum_iterations+
'sequential_28_lstm_28_while_placeholder-
)sequential_28_lstm_28_while_placeholder_1-
)sequential_28_lstm_28_while_placeholder_2-
)sequential_28_lstm_28_while_placeholder_3G
Csequential_28_lstm_28_while_sequential_28_lstm_28_strided_slice_1_0
sequential_28_lstm_28_while_tensorarrayv2read_tensorlistgetitem_sequential_28_lstm_28_tensorarrayunstack_tensorlistfromtensor_0\
Isequential_28_lstm_28_while_lstm_cell_28_matmul_readvariableop_resource_0:	 _
Ksequential_28_lstm_28_while_lstm_cell_28_matmul_1_readvariableop_resource_0:
È Y
Jsequential_28_lstm_28_while_lstm_cell_28_biasadd_readvariableop_resource_0:	 (
$sequential_28_lstm_28_while_identity*
&sequential_28_lstm_28_while_identity_1*
&sequential_28_lstm_28_while_identity_2*
&sequential_28_lstm_28_while_identity_3*
&sequential_28_lstm_28_while_identity_4*
&sequential_28_lstm_28_while_identity_5E
Asequential_28_lstm_28_while_sequential_28_lstm_28_strided_slice_1
}sequential_28_lstm_28_while_tensorarrayv2read_tensorlistgetitem_sequential_28_lstm_28_tensorarrayunstack_tensorlistfromtensorZ
Gsequential_28_lstm_28_while_lstm_cell_28_matmul_readvariableop_resource:	 ]
Isequential_28_lstm_28_while_lstm_cell_28_matmul_1_readvariableop_resource:
È W
Hsequential_28_lstm_28_while_lstm_cell_28_biasadd_readvariableop_resource:	 ¢?sequential_28/lstm_28/while/lstm_cell_28/BiasAdd/ReadVariableOp¢>sequential_28/lstm_28/while/lstm_cell_28/MatMul/ReadVariableOp¢@sequential_28/lstm_28/while/lstm_cell_28/MatMul_1/ReadVariableOpï
Msequential_28/lstm_28/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2O
Msequential_28/lstm_28/while/TensorArrayV2Read/TensorListGetItem/element_shape×
?sequential_28/lstm_28/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_28_lstm_28_while_tensorarrayv2read_tensorlistgetitem_sequential_28_lstm_28_tensorarrayunstack_tensorlistfromtensor_0'sequential_28_lstm_28_while_placeholderVsequential_28/lstm_28/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02A
?sequential_28/lstm_28/while/TensorArrayV2Read/TensorListGetItem
>sequential_28/lstm_28/while/lstm_cell_28/MatMul/ReadVariableOpReadVariableOpIsequential_28_lstm_28_while_lstm_cell_28_matmul_readvariableop_resource_0*
_output_shapes
:	 *
dtype02@
>sequential_28/lstm_28/while/lstm_cell_28/MatMul/ReadVariableOp¯
/sequential_28/lstm_28/while/lstm_cell_28/MatMulMatMulFsequential_28/lstm_28/while/TensorArrayV2Read/TensorListGetItem:item:0Fsequential_28/lstm_28/while/lstm_cell_28/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 21
/sequential_28/lstm_28/while/lstm_cell_28/MatMul
@sequential_28/lstm_28/while/lstm_cell_28/MatMul_1/ReadVariableOpReadVariableOpKsequential_28_lstm_28_while_lstm_cell_28_matmul_1_readvariableop_resource_0* 
_output_shapes
:
È *
dtype02B
@sequential_28/lstm_28/while/lstm_cell_28/MatMul_1/ReadVariableOp
1sequential_28/lstm_28/while/lstm_cell_28/MatMul_1MatMul)sequential_28_lstm_28_while_placeholder_2Hsequential_28/lstm_28/while/lstm_cell_28/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 23
1sequential_28/lstm_28/while/lstm_cell_28/MatMul_1
,sequential_28/lstm_28/while/lstm_cell_28/addAddV29sequential_28/lstm_28/while/lstm_cell_28/MatMul:product:0;sequential_28/lstm_28/while/lstm_cell_28/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2.
,sequential_28/lstm_28/while/lstm_cell_28/add
?sequential_28/lstm_28/while/lstm_cell_28/BiasAdd/ReadVariableOpReadVariableOpJsequential_28_lstm_28_while_lstm_cell_28_biasadd_readvariableop_resource_0*
_output_shapes	
: *
dtype02A
?sequential_28/lstm_28/while/lstm_cell_28/BiasAdd/ReadVariableOp
0sequential_28/lstm_28/while/lstm_cell_28/BiasAddBiasAdd0sequential_28/lstm_28/while/lstm_cell_28/add:z:0Gsequential_28/lstm_28/while/lstm_cell_28/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 22
0sequential_28/lstm_28/while/lstm_cell_28/BiasAdd¶
8sequential_28/lstm_28/while/lstm_cell_28/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2:
8sequential_28/lstm_28/while/lstm_cell_28/split/split_dimç
.sequential_28/lstm_28/while/lstm_cell_28/splitSplitAsequential_28/lstm_28/while/lstm_cell_28/split/split_dim:output:09sequential_28/lstm_28/while/lstm_cell_28/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split20
.sequential_28/lstm_28/while/lstm_cell_28/splitÛ
0sequential_28/lstm_28/while/lstm_cell_28/SigmoidSigmoid7sequential_28/lstm_28/while/lstm_cell_28/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ22
0sequential_28/lstm_28/while/lstm_cell_28/Sigmoidß
2sequential_28/lstm_28/while/lstm_cell_28/Sigmoid_1Sigmoid7sequential_28/lstm_28/while/lstm_cell_28/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ24
2sequential_28/lstm_28/while/lstm_cell_28/Sigmoid_1ù
,sequential_28/lstm_28/while/lstm_cell_28/mulMul6sequential_28/lstm_28/while/lstm_cell_28/Sigmoid_1:y:0)sequential_28_lstm_28_while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2.
,sequential_28/lstm_28/while/lstm_cell_28/mulÒ
-sequential_28/lstm_28/while/lstm_cell_28/ReluRelu7sequential_28/lstm_28/while/lstm_cell_28/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2/
-sequential_28/lstm_28/while/lstm_cell_28/Relu
.sequential_28/lstm_28/while/lstm_cell_28/mul_1Mul4sequential_28/lstm_28/while/lstm_cell_28/Sigmoid:y:0;sequential_28/lstm_28/while/lstm_cell_28/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ20
.sequential_28/lstm_28/while/lstm_cell_28/mul_1
.sequential_28/lstm_28/while/lstm_cell_28/add_1AddV20sequential_28/lstm_28/while/lstm_cell_28/mul:z:02sequential_28/lstm_28/while/lstm_cell_28/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ20
.sequential_28/lstm_28/while/lstm_cell_28/add_1ß
2sequential_28/lstm_28/while/lstm_cell_28/Sigmoid_2Sigmoid7sequential_28/lstm_28/while/lstm_cell_28/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ24
2sequential_28/lstm_28/while/lstm_cell_28/Sigmoid_2Ñ
/sequential_28/lstm_28/while/lstm_cell_28/Relu_1Relu2sequential_28/lstm_28/while/lstm_cell_28/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ21
/sequential_28/lstm_28/while/lstm_cell_28/Relu_1
.sequential_28/lstm_28/while/lstm_cell_28/mul_2Mul6sequential_28/lstm_28/while/lstm_cell_28/Sigmoid_2:y:0=sequential_28/lstm_28/while/lstm_cell_28/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ20
.sequential_28/lstm_28/while/lstm_cell_28/mul_2Î
@sequential_28/lstm_28/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_28_lstm_28_while_placeholder_1'sequential_28_lstm_28_while_placeholder2sequential_28/lstm_28/while/lstm_cell_28/mul_2:z:0*
_output_shapes
: *
element_dtype02B
@sequential_28/lstm_28/while/TensorArrayV2Write/TensorListSetItem
!sequential_28/lstm_28/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_28/lstm_28/while/add/yÁ
sequential_28/lstm_28/while/addAddV2'sequential_28_lstm_28_while_placeholder*sequential_28/lstm_28/while/add/y:output:0*
T0*
_output_shapes
: 2!
sequential_28/lstm_28/while/add
#sequential_28/lstm_28/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#sequential_28/lstm_28/while/add_1/yä
!sequential_28/lstm_28/while/add_1AddV2Dsequential_28_lstm_28_while_sequential_28_lstm_28_while_loop_counter,sequential_28/lstm_28/while/add_1/y:output:0*
T0*
_output_shapes
: 2#
!sequential_28/lstm_28/while/add_1æ
$sequential_28/lstm_28/while/IdentityIdentity%sequential_28/lstm_28/while/add_1:z:0@^sequential_28/lstm_28/while/lstm_cell_28/BiasAdd/ReadVariableOp?^sequential_28/lstm_28/while/lstm_cell_28/MatMul/ReadVariableOpA^sequential_28/lstm_28/while/lstm_cell_28/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_28/lstm_28/while/Identity
&sequential_28/lstm_28/while/Identity_1IdentityJsequential_28_lstm_28_while_sequential_28_lstm_28_while_maximum_iterations@^sequential_28/lstm_28/while/lstm_cell_28/BiasAdd/ReadVariableOp?^sequential_28/lstm_28/while/lstm_cell_28/MatMul/ReadVariableOpA^sequential_28/lstm_28/while/lstm_cell_28/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2(
&sequential_28/lstm_28/while/Identity_1è
&sequential_28/lstm_28/while/Identity_2Identity#sequential_28/lstm_28/while/add:z:0@^sequential_28/lstm_28/while/lstm_cell_28/BiasAdd/ReadVariableOp?^sequential_28/lstm_28/while/lstm_cell_28/MatMul/ReadVariableOpA^sequential_28/lstm_28/while/lstm_cell_28/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2(
&sequential_28/lstm_28/while/Identity_2
&sequential_28/lstm_28/while/Identity_3IdentityPsequential_28/lstm_28/while/TensorArrayV2Write/TensorListSetItem:output_handle:0@^sequential_28/lstm_28/while/lstm_cell_28/BiasAdd/ReadVariableOp?^sequential_28/lstm_28/while/lstm_cell_28/MatMul/ReadVariableOpA^sequential_28/lstm_28/while/lstm_cell_28/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2(
&sequential_28/lstm_28/while/Identity_3
&sequential_28/lstm_28/while/Identity_4Identity2sequential_28/lstm_28/while/lstm_cell_28/mul_2:z:0@^sequential_28/lstm_28/while/lstm_cell_28/BiasAdd/ReadVariableOp?^sequential_28/lstm_28/while/lstm_cell_28/MatMul/ReadVariableOpA^sequential_28/lstm_28/while/lstm_cell_28/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2(
&sequential_28/lstm_28/while/Identity_4
&sequential_28/lstm_28/while/Identity_5Identity2sequential_28/lstm_28/while/lstm_cell_28/add_1:z:0@^sequential_28/lstm_28/while/lstm_cell_28/BiasAdd/ReadVariableOp?^sequential_28/lstm_28/while/lstm_cell_28/MatMul/ReadVariableOpA^sequential_28/lstm_28/while/lstm_cell_28/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2(
&sequential_28/lstm_28/while/Identity_5"U
$sequential_28_lstm_28_while_identity-sequential_28/lstm_28/while/Identity:output:0"Y
&sequential_28_lstm_28_while_identity_1/sequential_28/lstm_28/while/Identity_1:output:0"Y
&sequential_28_lstm_28_while_identity_2/sequential_28/lstm_28/while/Identity_2:output:0"Y
&sequential_28_lstm_28_while_identity_3/sequential_28/lstm_28/while/Identity_3:output:0"Y
&sequential_28_lstm_28_while_identity_4/sequential_28/lstm_28/while/Identity_4:output:0"Y
&sequential_28_lstm_28_while_identity_5/sequential_28/lstm_28/while/Identity_5:output:0"
Hsequential_28_lstm_28_while_lstm_cell_28_biasadd_readvariableop_resourceJsequential_28_lstm_28_while_lstm_cell_28_biasadd_readvariableop_resource_0"
Isequential_28_lstm_28_while_lstm_cell_28_matmul_1_readvariableop_resourceKsequential_28_lstm_28_while_lstm_cell_28_matmul_1_readvariableop_resource_0"
Gsequential_28_lstm_28_while_lstm_cell_28_matmul_readvariableop_resourceIsequential_28_lstm_28_while_lstm_cell_28_matmul_readvariableop_resource_0"
Asequential_28_lstm_28_while_sequential_28_lstm_28_strided_slice_1Csequential_28_lstm_28_while_sequential_28_lstm_28_strided_slice_1_0"
}sequential_28_lstm_28_while_tensorarrayv2read_tensorlistgetitem_sequential_28_lstm_28_tensorarrayunstack_tensorlistfromtensorsequential_28_lstm_28_while_tensorarrayv2read_tensorlistgetitem_sequential_28_lstm_28_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : 2
?sequential_28/lstm_28/while/lstm_cell_28/BiasAdd/ReadVariableOp?sequential_28/lstm_28/while/lstm_cell_28/BiasAdd/ReadVariableOp2
>sequential_28/lstm_28/while/lstm_cell_28/MatMul/ReadVariableOp>sequential_28/lstm_28/while/lstm_cell_28/MatMul/ReadVariableOp2
@sequential_28/lstm_28/while/lstm_cell_28/MatMul_1/ReadVariableOp@sequential_28/lstm_28/while/lstm_cell_28/MatMul_1/ReadVariableOp: 
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
:ÿÿÿÿÿÿÿÿÿÈ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ:

_output_shapes
: :

_output_shapes
: "ÌL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*»
serving_default§
K
lstm_28_input:
serving_default_lstm_28_input:0ÿÿÿÿÿÿÿÿÿ<
dense_570
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:ªÀ
¢-
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
X_default_save_signature"â*
_tf_keras_sequentialÃ*{"name": "sequential_28", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_28", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 2]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "lstm_28_input"}}, {"class_name": "LSTM", "config": {"name": "lstm_28", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 2]}, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 200, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}, {"class_name": "Dense", "config": {"name": "dense_56", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_57", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 12, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 2]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 13}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 7, 2]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 7, 2]}, "float32", "lstm_28_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_28", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 2]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "lstm_28_input"}, "shared_object_id": 0}, {"class_name": "LSTM", "config": {"name": "lstm_28", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 2]}, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 200, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 5}, {"class_name": "Dense", "config": {"name": "dense_56", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 8}, {"class_name": "Dense", "config": {"name": "dense_57", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 11}]}}, "training_config": {"loss": "mse", "metrics": null, "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
¨

cell

state_spec
	variables
regularization_losses
trainable_variables
	keras_api
*Y&call_and_return_all_conditional_losses
Z__call__"ÿ
_tf_keras_rnn_layerá{"name": "lstm_28", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 2]}, "stateful": false, "must_restore_from_config": false, "class_name": "LSTM", "config": {"name": "lstm_28", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 2]}, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 200, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 5, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 2]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 13}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 7, 2]}}
Ò

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
*[&call_and_return_all_conditional_losses
\__call__"­
_tf_keras_layer{"name": "dense_56", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_56", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 8, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 200}}, "shared_object_id": 14}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 200]}}
Ô

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
*]&call_and_return_all_conditional_losses
^__call__"¯
_tf_keras_layer{"name": "dense_57", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_57", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 11, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 100}}, "shared_object_id": 15}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 100]}}
Õ
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
Ê

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
	
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
a__call__"Ì
_tf_keras_layer²{"name": "lstm_cell_28", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LSTMCell", "config": {"name": "lstm_cell_28", "trainable": true, "dtype": "float32", "units": 200, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 4}
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
": 	Èd2dense_56/kernel
:d2dense_56/bias
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
!:d2dense_57/kernel
:2dense_57/bias
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
.:,	 2lstm_28/lstm_cell_28/kernel
9:7
È 2%lstm_28/lstm_cell_28/recurrent_kernel
(:& 2lstm_28/lstm_cell_28/bias
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
­

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
Ô
	Dtotal
	Ecount
F	variables
G	keras_api"
_tf_keras_metric{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 16}
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
':%	Èd2Adam/dense_56/kernel/m
 :d2Adam/dense_56/bias/m
&:$d2Adam/dense_57/kernel/m
 :2Adam/dense_57/bias/m
3:1	 2"Adam/lstm_28/lstm_cell_28/kernel/m
>:<
È 2,Adam/lstm_28/lstm_cell_28/recurrent_kernel/m
-:+ 2 Adam/lstm_28/lstm_cell_28/bias/m
':%	Èd2Adam/dense_56/kernel/v
 :d2Adam/dense_56/bias/v
&:$d2Adam/dense_57/kernel/v
 :2Adam/dense_57/bias/v
3:1	 2"Adam/lstm_28/lstm_cell_28/kernel/v
>:<
È 2,Adam/lstm_28/lstm_cell_28/recurrent_kernel/v
-:+ 2 Adam/lstm_28/lstm_cell_28/bias/v
ö2ó
J__inference_sequential_28_layer_call_and_return_conditional_losses_1281404
J__inference_sequential_28_layer_call_and_return_conditional_losses_1281568
J__inference_sequential_28_layer_call_and_return_conditional_losses_1281192
J__inference_sequential_28_layer_call_and_return_conditional_losses_1281213À
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
2
/__inference_sequential_28_layer_call_fn_1280900
/__inference_sequential_28_layer_call_fn_1281587
/__inference_sequential_28_layer_call_fn_1281606
/__inference_sequential_28_layer_call_fn_1281171À
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
ê2ç
"__inference__wrapped_model_1280054À
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
lstm_28_inputÿÿÿÿÿÿÿÿÿ
ó2ð
D__inference_lstm_28_layer_call_and_return_conditional_losses_1281757
D__inference_lstm_28_layer_call_and_return_conditional_losses_1281908
D__inference_lstm_28_layer_call_and_return_conditional_losses_1282059
D__inference_lstm_28_layer_call_and_return_conditional_losses_1282210Õ
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
)__inference_lstm_28_layer_call_fn_1282221
)__inference_lstm_28_layer_call_fn_1282232
)__inference_lstm_28_layer_call_fn_1282243
)__inference_lstm_28_layer_call_fn_1282254Õ
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
ï2ì
E__inference_dense_56_layer_call_and_return_conditional_losses_1282265¢
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
Ô2Ñ
*__inference_dense_56_layer_call_fn_1282274¢
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
ï2ì
E__inference_dense_57_layer_call_and_return_conditional_losses_1282284¢
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
Ô2Ñ
*__inference_dense_57_layer_call_fn_1282293¢
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
%__inference_signature_wrapper_1281240lstm_28_input"
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
I__inference_lstm_cell_28_layer_call_and_return_conditional_losses_1282325
I__inference_lstm_cell_28_layer_call_and_return_conditional_losses_1282357¾
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
.__inference_lstm_cell_28_layer_call_fn_1282374
.__inference_lstm_cell_28_layer_call_fn_1282391¾
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
  
"__inference__wrapped_model_1280054z!"#:¢7
0¢-
+(
lstm_28_inputÿÿÿÿÿÿÿÿÿ
ª "3ª0
.
dense_57"
dense_57ÿÿÿÿÿÿÿÿÿ¦
E__inference_dense_56_layer_call_and_return_conditional_losses_1282265]0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿÈ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿd
 ~
*__inference_dense_56_layer_call_fn_1282274P0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿÈ
ª "ÿÿÿÿÿÿÿÿÿd¥
E__inference_dense_57_layer_call_and_return_conditional_losses_1282284\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿd
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 }
*__inference_dense_57_layer_call_fn_1282293O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿd
ª "ÿÿÿÿÿÿÿÿÿÆ
D__inference_lstm_28_layer_call_and_return_conditional_losses_1281757~!"#O¢L
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
D__inference_lstm_28_layer_call_and_return_conditional_losses_1281908~!"#O¢L
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
D__inference_lstm_28_layer_call_and_return_conditional_losses_1282059n!"#?¢<
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
D__inference_lstm_28_layer_call_and_return_conditional_losses_1282210n!"#?¢<
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
)__inference_lstm_28_layer_call_fn_1282221q!"#O¢L
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
)__inference_lstm_28_layer_call_fn_1282232q!"#O¢L
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
)__inference_lstm_28_layer_call_fn_1282243a!"#?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿÈ
)__inference_lstm_28_layer_call_fn_1282254a!"#?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿÈÐ
I__inference_lstm_cell_28_layer_call_and_return_conditional_losses_1282325!"#¢
x¢u
 
inputsÿÿÿÿÿÿÿÿÿ
M¢J
# 
states/0ÿÿÿÿÿÿÿÿÿÈ
# 
states/1ÿÿÿÿÿÿÿÿÿÈ
p 
ª "v¢s
l¢i

0/0ÿÿÿÿÿÿÿÿÿÈ
GD
 
0/1/0ÿÿÿÿÿÿÿÿÿÈ
 
0/1/1ÿÿÿÿÿÿÿÿÿÈ
 Ð
I__inference_lstm_cell_28_layer_call_and_return_conditional_losses_1282357!"#¢
x¢u
 
inputsÿÿÿÿÿÿÿÿÿ
M¢J
# 
states/0ÿÿÿÿÿÿÿÿÿÈ
# 
states/1ÿÿÿÿÿÿÿÿÿÈ
p
ª "v¢s
l¢i

0/0ÿÿÿÿÿÿÿÿÿÈ
GD
 
0/1/0ÿÿÿÿÿÿÿÿÿÈ
 
0/1/1ÿÿÿÿÿÿÿÿÿÈ
 ¥
.__inference_lstm_cell_28_layer_call_fn_1282374ò!"#¢
x¢u
 
inputsÿÿÿÿÿÿÿÿÿ
M¢J
# 
states/0ÿÿÿÿÿÿÿÿÿÈ
# 
states/1ÿÿÿÿÿÿÿÿÿÈ
p 
ª "f¢c

0ÿÿÿÿÿÿÿÿÿÈ
C@

1/0ÿÿÿÿÿÿÿÿÿÈ

1/1ÿÿÿÿÿÿÿÿÿÈ¥
.__inference_lstm_cell_28_layer_call_fn_1282391ò!"#¢
x¢u
 
inputsÿÿÿÿÿÿÿÿÿ
M¢J
# 
states/0ÿÿÿÿÿÿÿÿÿÈ
# 
states/1ÿÿÿÿÿÿÿÿÿÈ
p
ª "f¢c

0ÿÿÿÿÿÿÿÿÿÈ
C@

1/0ÿÿÿÿÿÿÿÿÿÈ

1/1ÿÿÿÿÿÿÿÿÿÈÂ
J__inference_sequential_28_layer_call_and_return_conditional_losses_1281192t!"#B¢?
8¢5
+(
lstm_28_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Â
J__inference_sequential_28_layer_call_and_return_conditional_losses_1281213t!"#B¢?
8¢5
+(
lstm_28_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 »
J__inference_sequential_28_layer_call_and_return_conditional_losses_1281404m!"#;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 »
J__inference_sequential_28_layer_call_and_return_conditional_losses_1281568m!"#;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
/__inference_sequential_28_layer_call_fn_1280900g!"#B¢?
8¢5
+(
lstm_28_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_28_layer_call_fn_1281171g!"#B¢?
8¢5
+(
lstm_28_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_28_layer_call_fn_1281587`!"#;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_28_layer_call_fn_1281606`!"#;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿµ
%__inference_signature_wrapper_1281240!"#K¢H
¢ 
Aª>
<
lstm_28_input+(
lstm_28_inputÿÿÿÿÿÿÿÿÿ"3ª0
.
dense_57"
dense_57ÿÿÿÿÿÿÿÿÿ