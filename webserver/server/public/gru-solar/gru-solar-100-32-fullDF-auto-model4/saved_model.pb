??
??
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
SplitV

value"T
size_splits"Tlen
	split_dim
output"T*	num_split"
	num_splitint(0"	
Ttype"
Tlentype0	:
2	
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
<
Sub
x"T
y"T
z"T"
Ttype:
2	
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
?"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718??
}
dense_156/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?d*!
shared_namedense_156/kernel
v
$dense_156/kernel/Read/ReadVariableOpReadVariableOpdense_156/kernel*
_output_shapes
:	?d*
dtype0
t
dense_156/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*
shared_namedense_156/bias
m
"dense_156/bias/Read/ReadVariableOpReadVariableOpdense_156/bias*
_output_shapes
:d*
dtype0
|
dense_157/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*!
shared_namedense_157/kernel
u
$dense_157/kernel/Read/ReadVariableOpReadVariableOpdense_157/kernel*
_output_shapes

:d*
dtype0
t
dense_157/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_157/bias
m
"dense_157/bias/Read/ReadVariableOpReadVariableOpdense_157/bias*
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
gru_78/gru_cell_78/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?**
shared_namegru_78/gru_cell_78/kernel
?
-gru_78/gru_cell_78/kernel/Read/ReadVariableOpReadVariableOpgru_78/gru_cell_78/kernel*
_output_shapes
:	?*
dtype0
?
#gru_78/gru_cell_78/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*4
shared_name%#gru_78/gru_cell_78/recurrent_kernel
?
7gru_78/gru_cell_78/recurrent_kernel/Read/ReadVariableOpReadVariableOp#gru_78/gru_cell_78/recurrent_kernel* 
_output_shapes
:
??*
dtype0
?
gru_78/gru_cell_78/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*(
shared_namegru_78/gru_cell_78/bias
?
+gru_78/gru_cell_78/bias/Read/ReadVariableOpReadVariableOpgru_78/gru_cell_78/bias*
_output_shapes	
:?*
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
Adam/dense_156/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?d*(
shared_nameAdam/dense_156/kernel/m
?
+Adam/dense_156/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_156/kernel/m*
_output_shapes
:	?d*
dtype0
?
Adam/dense_156/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*&
shared_nameAdam/dense_156/bias/m
{
)Adam/dense_156/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_156/bias/m*
_output_shapes
:d*
dtype0
?
Adam/dense_157/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*(
shared_nameAdam/dense_157/kernel/m
?
+Adam/dense_157/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_157/kernel/m*
_output_shapes

:d*
dtype0
?
Adam/dense_157/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_157/bias/m
{
)Adam/dense_157/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_157/bias/m*
_output_shapes
:*
dtype0
?
 Adam/gru_78/gru_cell_78/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*1
shared_name" Adam/gru_78/gru_cell_78/kernel/m
?
4Adam/gru_78/gru_cell_78/kernel/m/Read/ReadVariableOpReadVariableOp Adam/gru_78/gru_cell_78/kernel/m*
_output_shapes
:	?*
dtype0
?
*Adam/gru_78/gru_cell_78/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*;
shared_name,*Adam/gru_78/gru_cell_78/recurrent_kernel/m
?
>Adam/gru_78/gru_cell_78/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp*Adam/gru_78/gru_cell_78/recurrent_kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/gru_78/gru_cell_78/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*/
shared_name Adam/gru_78/gru_cell_78/bias/m
?
2Adam/gru_78/gru_cell_78/bias/m/Read/ReadVariableOpReadVariableOpAdam/gru_78/gru_cell_78/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_156/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?d*(
shared_nameAdam/dense_156/kernel/v
?
+Adam/dense_156/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_156/kernel/v*
_output_shapes
:	?d*
dtype0
?
Adam/dense_156/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*&
shared_nameAdam/dense_156/bias/v
{
)Adam/dense_156/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_156/bias/v*
_output_shapes
:d*
dtype0
?
Adam/dense_157/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*(
shared_nameAdam/dense_157/kernel/v
?
+Adam/dense_157/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_157/kernel/v*
_output_shapes

:d*
dtype0
?
Adam/dense_157/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_157/bias/v
{
)Adam/dense_157/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_157/bias/v*
_output_shapes
:*
dtype0
?
 Adam/gru_78/gru_cell_78/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*1
shared_name" Adam/gru_78/gru_cell_78/kernel/v
?
4Adam/gru_78/gru_cell_78/kernel/v/Read/ReadVariableOpReadVariableOp Adam/gru_78/gru_cell_78/kernel/v*
_output_shapes
:	?*
dtype0
?
*Adam/gru_78/gru_cell_78/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*;
shared_name,*Adam/gru_78/gru_cell_78/recurrent_kernel/v
?
>Adam/gru_78/gru_cell_78/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp*Adam/gru_78/gru_cell_78/recurrent_kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/gru_78/gru_cell_78/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*/
shared_name Adam/gru_78/gru_cell_78/bias/v
?
2Adam/gru_78/gru_cell_78/bias/v/Read/ReadVariableOpReadVariableOpAdam/gru_78/gru_cell_78/bias/v*
_output_shapes	
:?*
dtype0

NoOpNoOp
?)
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?(
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
?
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
?

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
VARIABLE_VALUEdense_156/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_156/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?
3non_trainable_variables
	variables
4layer_regularization_losses
regularization_losses
5layer_metrics
trainable_variables
6metrics

7layers
\Z
VARIABLE_VALUEdense_157/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_157/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?
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
US
VARIABLE_VALUEgru_78/gru_cell_78/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUE#gru_78/gru_cell_78/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEgru_78/gru_cell_78/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
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
?
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
VARIABLE_VALUEAdam/dense_156/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_156/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_157/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_157/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/gru_78/gru_cell_78/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE*Adam/gru_78/gru_cell_78/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/gru_78/gru_cell_78/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_156/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_156/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_157/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_157/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/gru_78/gru_cell_78/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE*Adam/gru_78/gru_cell_78/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/gru_78/gru_cell_78/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_gru_78_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_gru_78_inputgru_78/gru_cell_78/kernelgru_78/gru_cell_78/bias#gru_78/gru_cell_78/recurrent_kerneldense_156/kerneldense_156/biasdense_157/kerneldense_157/bias*
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
%__inference_signature_wrapper_3819445
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_156/kernel/Read/ReadVariableOp"dense_156/bias/Read/ReadVariableOp$dense_157/kernel/Read/ReadVariableOp"dense_157/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp-gru_78/gru_cell_78/kernel/Read/ReadVariableOp7gru_78/gru_cell_78/recurrent_kernel/Read/ReadVariableOp+gru_78/gru_cell_78/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_156/kernel/m/Read/ReadVariableOp)Adam/dense_156/bias/m/Read/ReadVariableOp+Adam/dense_157/kernel/m/Read/ReadVariableOp)Adam/dense_157/bias/m/Read/ReadVariableOp4Adam/gru_78/gru_cell_78/kernel/m/Read/ReadVariableOp>Adam/gru_78/gru_cell_78/recurrent_kernel/m/Read/ReadVariableOp2Adam/gru_78/gru_cell_78/bias/m/Read/ReadVariableOp+Adam/dense_156/kernel/v/Read/ReadVariableOp)Adam/dense_156/bias/v/Read/ReadVariableOp+Adam/dense_157/kernel/v/Read/ReadVariableOp)Adam/dense_157/bias/v/Read/ReadVariableOp4Adam/gru_78/gru_cell_78/kernel/v/Read/ReadVariableOp>Adam/gru_78/gru_cell_78/recurrent_kernel/v/Read/ReadVariableOp2Adam/gru_78/gru_cell_78/bias/v/Read/ReadVariableOpConst*)
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
 __inference__traced_save_3820845
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_156/kerneldense_156/biasdense_157/kerneldense_157/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rategru_78/gru_cell_78/kernel#gru_78/gru_cell_78/recurrent_kernelgru_78/gru_cell_78/biastotalcountAdam/dense_156/kernel/mAdam/dense_156/bias/mAdam/dense_157/kernel/mAdam/dense_157/bias/m Adam/gru_78/gru_cell_78/kernel/m*Adam/gru_78/gru_cell_78/recurrent_kernel/mAdam/gru_78/gru_cell_78/bias/mAdam/dense_156/kernel/vAdam/dense_156/bias/vAdam/dense_157/kernel/vAdam/dense_157/bias/v Adam/gru_78/gru_cell_78/kernel/v*Adam/gru_78/gru_cell_78/recurrent_kernel/vAdam/gru_78/gru_cell_78/bias/v*(
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
#__inference__traced_restore_3820939??
?W
?
while_body_3818930
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_gru_cell_78_matmul_readvariableop_resource_0:	?B
3while_gru_cell_78_biasadd_readvariableop_resource_0:	??
+while_gru_cell_78_readvariableop_resource_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_gru_cell_78_matmul_readvariableop_resource:	?@
1while_gru_cell_78_biasadd_readvariableop_resource:	?=
)while_gru_cell_78_readvariableop_resource:
????(while/gru_cell_78/BiasAdd/ReadVariableOp?'while/gru_cell_78/MatMul/ReadVariableOp? while/gru_cell_78/ReadVariableOp?"while/gru_cell_78/ReadVariableOp_1?
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
'while/gru_cell_78/MatMul/ReadVariableOpReadVariableOp2while_gru_cell_78_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02)
'while/gru_cell_78/MatMul/ReadVariableOp?
while/gru_cell_78/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/gru_cell_78/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/MatMul?
(while/gru_cell_78/BiasAdd/ReadVariableOpReadVariableOp3while_gru_cell_78_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/gru_cell_78/BiasAdd/ReadVariableOp?
while/gru_cell_78/BiasAddBiasAdd"while/gru_cell_78/MatMul:product:00while/gru_cell_78/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/BiasAdd?
!while/gru_cell_78/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2#
!while/gru_cell_78/split/split_dim?
while/gru_cell_78/splitSplit*while/gru_cell_78/split/split_dim:output:0"while/gru_cell_78/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
while/gru_cell_78/split?
 while/gru_cell_78/ReadVariableOpReadVariableOp+while_gru_cell_78_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02"
 while/gru_cell_78/ReadVariableOp?
%while/gru_cell_78/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/gru_cell_78/strided_slice/stack?
'while/gru_cell_78/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2)
'while/gru_cell_78/strided_slice/stack_1?
'while/gru_cell_78/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/gru_cell_78/strided_slice/stack_2?
while/gru_cell_78/strided_sliceStridedSlice(while/gru_cell_78/ReadVariableOp:value:0.while/gru_cell_78/strided_slice/stack:output:00while/gru_cell_78/strided_slice/stack_1:output:00while/gru_cell_78/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2!
while/gru_cell_78/strided_slice?
while/gru_cell_78/MatMul_1MatMulwhile_placeholder_2(while/gru_cell_78/strided_slice:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/MatMul_1?
while/gru_cell_78/ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2
while/gru_cell_78/Const?
#while/gru_cell_78/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2%
#while/gru_cell_78/split_1/split_dim?
while/gru_cell_78/split_1SplitV$while/gru_cell_78/MatMul_1:product:0 while/gru_cell_78/Const:output:0,while/gru_cell_78/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:??????????:??????????:????????? *
	num_split2
while/gru_cell_78/split_1?
while/gru_cell_78/addAddV2 while/gru_cell_78/split:output:0"while/gru_cell_78/split_1:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/add?
while/gru_cell_78/SigmoidSigmoidwhile/gru_cell_78/add:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/Sigmoid?
while/gru_cell_78/add_1AddV2 while/gru_cell_78/split:output:1"while/gru_cell_78/split_1:output:1*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/add_1?
while/gru_cell_78/Sigmoid_1Sigmoidwhile/gru_cell_78/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/Sigmoid_1?
while/gru_cell_78/mulMulwhile/gru_cell_78/Sigmoid_1:y:0while_placeholder_2*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/mul?
"while/gru_cell_78/ReadVariableOp_1ReadVariableOp+while_gru_cell_78_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02$
"while/gru_cell_78/ReadVariableOp_1?
'while/gru_cell_78/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2)
'while/gru_cell_78/strided_slice_1/stack?
)while/gru_cell_78/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/gru_cell_78/strided_slice_1/stack_1?
)while/gru_cell_78/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/gru_cell_78/strided_slice_1/stack_2?
!while/gru_cell_78/strided_slice_1StridedSlice*while/gru_cell_78/ReadVariableOp_1:value:00while/gru_cell_78/strided_slice_1/stack:output:02while/gru_cell_78/strided_slice_1/stack_1:output:02while/gru_cell_78/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2#
!while/gru_cell_78/strided_slice_1?
while/gru_cell_78/MatMul_2MatMulwhile/gru_cell_78/mul:z:0*while/gru_cell_78/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/MatMul_2?
while/gru_cell_78/add_2AddV2 while/gru_cell_78/split:output:2$while/gru_cell_78/MatMul_2:product:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/add_2?
while/gru_cell_78/ReluReluwhile/gru_cell_78/add_2:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/Relu?
while/gru_cell_78/mul_1Mulwhile/gru_cell_78/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/mul_1w
while/gru_cell_78/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/gru_cell_78/sub/x?
while/gru_cell_78/subSub while/gru_cell_78/sub/x:output:0while/gru_cell_78/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/sub?
while/gru_cell_78/mul_2Mulwhile/gru_cell_78/sub:z:0$while/gru_cell_78/Relu:activations:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/mul_2?
while/gru_cell_78/add_3AddV2while/gru_cell_78/mul_1:z:0while/gru_cell_78/mul_2:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/add_3?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_78/add_3:z:0*
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
while/IdentityIdentitywhile/add_1:z:0)^while/gru_cell_78/BiasAdd/ReadVariableOp(^while/gru_cell_78/MatMul/ReadVariableOp!^while/gru_cell_78/ReadVariableOp#^while/gru_cell_78/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations)^while/gru_cell_78/BiasAdd/ReadVariableOp(^while/gru_cell_78/MatMul/ReadVariableOp!^while/gru_cell_78/ReadVariableOp#^while/gru_cell_78/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0)^while/gru_cell_78/BiasAdd/ReadVariableOp(^while/gru_cell_78/MatMul/ReadVariableOp!^while/gru_cell_78/ReadVariableOp#^while/gru_cell_78/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/gru_cell_78/BiasAdd/ReadVariableOp(^while/gru_cell_78/MatMul/ReadVariableOp!^while/gru_cell_78/ReadVariableOp#^while/gru_cell_78/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/gru_cell_78/add_3:z:0)^while/gru_cell_78/BiasAdd/ReadVariableOp(^while/gru_cell_78/MatMul/ReadVariableOp!^while/gru_cell_78/ReadVariableOp#^while/gru_cell_78/ReadVariableOp_1*
T0*(
_output_shapes
:??????????2
while/Identity_4"h
1while_gru_cell_78_biasadd_readvariableop_resource3while_gru_cell_78_biasadd_readvariableop_resource_0"f
0while_gru_cell_78_matmul_readvariableop_resource2while_gru_cell_78_matmul_readvariableop_resource_0"X
)while_gru_cell_78_readvariableop_resource+while_gru_cell_78_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2T
(while/gru_cell_78/BiasAdd/ReadVariableOp(while/gru_cell_78/BiasAdd/ReadVariableOp2R
'while/gru_cell_78/MatMul/ReadVariableOp'while/gru_cell_78/MatMul/ReadVariableOp2D
 while/gru_cell_78/ReadVariableOp while/gru_cell_78/ReadVariableOp2H
"while/gru_cell_78/ReadVariableOp_1"while/gru_cell_78/ReadVariableOp_1: 
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
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_3820438
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_3820438___redundant_placeholder05
1while_while_cond_3820438___redundant_placeholder15
1while_while_cond_3820438___redundant_placeholder25
1while_while_cond_3820438___redundant_placeholder3
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
.: : : : :??????????: ::::: 
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
:??????????:

_output_shapes
: :

_output_shapes
:
?

?
F__inference_dense_156_layer_call_and_return_conditional_losses_3819045

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
?
?
while_cond_3819192
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_3819192___redundant_placeholder05
1while_while_cond_3819192___redundant_placeholder15
1while_while_cond_3819192___redundant_placeholder25
1while_while_cond_3819192___redundant_placeholder3
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
.: : : : :??????????: ::::: 
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
:??????????:

_output_shapes
: :

_output_shapes
:
??
?
J__inference_sequential_78_layer_call_and_return_conditional_losses_3819813

inputsD
1gru_78_gru_cell_78_matmul_readvariableop_resource:	?A
2gru_78_gru_cell_78_biasadd_readvariableop_resource:	?>
*gru_78_gru_cell_78_readvariableop_resource:
??;
(dense_156_matmul_readvariableop_resource:	?d7
)dense_156_biasadd_readvariableop_resource:d:
(dense_157_matmul_readvariableop_resource:d7
)dense_157_biasadd_readvariableop_resource:
identity?? dense_156/BiasAdd/ReadVariableOp?dense_156/MatMul/ReadVariableOp? dense_157/BiasAdd/ReadVariableOp?dense_157/MatMul/ReadVariableOp?)gru_78/gru_cell_78/BiasAdd/ReadVariableOp?(gru_78/gru_cell_78/MatMul/ReadVariableOp?!gru_78/gru_cell_78/ReadVariableOp?#gru_78/gru_cell_78/ReadVariableOp_1?gru_78/whileR
gru_78/ShapeShapeinputs*
T0*
_output_shapes
:2
gru_78/Shape?
gru_78/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_78/strided_slice/stack?
gru_78/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_78/strided_slice/stack_1?
gru_78/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_78/strided_slice/stack_2?
gru_78/strided_sliceStridedSlicegru_78/Shape:output:0#gru_78/strided_slice/stack:output:0%gru_78/strided_slice/stack_1:output:0%gru_78/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru_78/strided_slicek
gru_78/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
gru_78/zeros/mul/y?
gru_78/zeros/mulMulgru_78/strided_slice:output:0gru_78/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
gru_78/zeros/mulm
gru_78/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
gru_78/zeros/Less/y?
gru_78/zeros/LessLessgru_78/zeros/mul:z:0gru_78/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
gru_78/zeros/Lessq
gru_78/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
gru_78/zeros/packed/1?
gru_78/zeros/packedPackgru_78/strided_slice:output:0gru_78/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
gru_78/zeros/packedm
gru_78/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_78/zeros/Const?
gru_78/zerosFillgru_78/zeros/packed:output:0gru_78/zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
gru_78/zeros?
gru_78/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_78/transpose/perm?
gru_78/transpose	Transposeinputsgru_78/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2
gru_78/transposed
gru_78/Shape_1Shapegru_78/transpose:y:0*
T0*
_output_shapes
:2
gru_78/Shape_1?
gru_78/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_78/strided_slice_1/stack?
gru_78/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
gru_78/strided_slice_1/stack_1?
gru_78/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
gru_78/strided_slice_1/stack_2?
gru_78/strided_slice_1StridedSlicegru_78/Shape_1:output:0%gru_78/strided_slice_1/stack:output:0'gru_78/strided_slice_1/stack_1:output:0'gru_78/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru_78/strided_slice_1?
"gru_78/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"gru_78/TensorArrayV2/element_shape?
gru_78/TensorArrayV2TensorListReserve+gru_78/TensorArrayV2/element_shape:output:0gru_78/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_78/TensorArrayV2?
<gru_78/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2>
<gru_78/TensorArrayUnstack/TensorListFromTensor/element_shape?
.gru_78/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorgru_78/transpose:y:0Egru_78/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.gru_78/TensorArrayUnstack/TensorListFromTensor?
gru_78/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_78/strided_slice_2/stack?
gru_78/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
gru_78/strided_slice_2/stack_1?
gru_78/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
gru_78/strided_slice_2/stack_2?
gru_78/strided_slice_2StridedSlicegru_78/transpose:y:0%gru_78/strided_slice_2/stack:output:0'gru_78/strided_slice_2/stack_1:output:0'gru_78/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
gru_78/strided_slice_2?
(gru_78/gru_cell_78/MatMul/ReadVariableOpReadVariableOp1gru_78_gru_cell_78_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02*
(gru_78/gru_cell_78/MatMul/ReadVariableOp?
gru_78/gru_cell_78/MatMulMatMulgru_78/strided_slice_2:output:00gru_78/gru_cell_78/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_78/gru_cell_78/MatMul?
)gru_78/gru_cell_78/BiasAdd/ReadVariableOpReadVariableOp2gru_78_gru_cell_78_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)gru_78/gru_cell_78/BiasAdd/ReadVariableOp?
gru_78/gru_cell_78/BiasAddBiasAdd#gru_78/gru_cell_78/MatMul:product:01gru_78/gru_cell_78/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_78/gru_cell_78/BiasAdd?
"gru_78/gru_cell_78/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"gru_78/gru_cell_78/split/split_dim?
gru_78/gru_cell_78/splitSplit+gru_78/gru_cell_78/split/split_dim:output:0#gru_78/gru_cell_78/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
gru_78/gru_cell_78/split?
!gru_78/gru_cell_78/ReadVariableOpReadVariableOp*gru_78_gru_cell_78_readvariableop_resource* 
_output_shapes
:
??*
dtype02#
!gru_78/gru_cell_78/ReadVariableOp?
&gru_78/gru_cell_78/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&gru_78/gru_cell_78/strided_slice/stack?
(gru_78/gru_cell_78/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2*
(gru_78/gru_cell_78/strided_slice/stack_1?
(gru_78/gru_cell_78/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(gru_78/gru_cell_78/strided_slice/stack_2?
 gru_78/gru_cell_78/strided_sliceStridedSlice)gru_78/gru_cell_78/ReadVariableOp:value:0/gru_78/gru_cell_78/strided_slice/stack:output:01gru_78/gru_cell_78/strided_slice/stack_1:output:01gru_78/gru_cell_78/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2"
 gru_78/gru_cell_78/strided_slice?
gru_78/gru_cell_78/MatMul_1MatMulgru_78/zeros:output:0)gru_78/gru_cell_78/strided_slice:output:0*
T0*(
_output_shapes
:??????????2
gru_78/gru_cell_78/MatMul_1?
gru_78/gru_cell_78/ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2
gru_78/gru_cell_78/Const?
$gru_78/gru_cell_78/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2&
$gru_78/gru_cell_78/split_1/split_dim?
gru_78/gru_cell_78/split_1SplitV%gru_78/gru_cell_78/MatMul_1:product:0!gru_78/gru_cell_78/Const:output:0-gru_78/gru_cell_78/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:??????????:??????????:????????? *
	num_split2
gru_78/gru_cell_78/split_1?
gru_78/gru_cell_78/addAddV2!gru_78/gru_cell_78/split:output:0#gru_78/gru_cell_78/split_1:output:0*
T0*(
_output_shapes
:??????????2
gru_78/gru_cell_78/add?
gru_78/gru_cell_78/SigmoidSigmoidgru_78/gru_cell_78/add:z:0*
T0*(
_output_shapes
:??????????2
gru_78/gru_cell_78/Sigmoid?
gru_78/gru_cell_78/add_1AddV2!gru_78/gru_cell_78/split:output:1#gru_78/gru_cell_78/split_1:output:1*
T0*(
_output_shapes
:??????????2
gru_78/gru_cell_78/add_1?
gru_78/gru_cell_78/Sigmoid_1Sigmoidgru_78/gru_cell_78/add_1:z:0*
T0*(
_output_shapes
:??????????2
gru_78/gru_cell_78/Sigmoid_1?
gru_78/gru_cell_78/mulMul gru_78/gru_cell_78/Sigmoid_1:y:0gru_78/zeros:output:0*
T0*(
_output_shapes
:??????????2
gru_78/gru_cell_78/mul?
#gru_78/gru_cell_78/ReadVariableOp_1ReadVariableOp*gru_78_gru_cell_78_readvariableop_resource* 
_output_shapes
:
??*
dtype02%
#gru_78/gru_cell_78/ReadVariableOp_1?
(gru_78/gru_cell_78/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2*
(gru_78/gru_cell_78/strided_slice_1/stack?
*gru_78/gru_cell_78/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*gru_78/gru_cell_78/strided_slice_1/stack_1?
*gru_78/gru_cell_78/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*gru_78/gru_cell_78/strided_slice_1/stack_2?
"gru_78/gru_cell_78/strided_slice_1StridedSlice+gru_78/gru_cell_78/ReadVariableOp_1:value:01gru_78/gru_cell_78/strided_slice_1/stack:output:03gru_78/gru_cell_78/strided_slice_1/stack_1:output:03gru_78/gru_cell_78/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2$
"gru_78/gru_cell_78/strided_slice_1?
gru_78/gru_cell_78/MatMul_2MatMulgru_78/gru_cell_78/mul:z:0+gru_78/gru_cell_78/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2
gru_78/gru_cell_78/MatMul_2?
gru_78/gru_cell_78/add_2AddV2!gru_78/gru_cell_78/split:output:2%gru_78/gru_cell_78/MatMul_2:product:0*
T0*(
_output_shapes
:??????????2
gru_78/gru_cell_78/add_2?
gru_78/gru_cell_78/ReluRelugru_78/gru_cell_78/add_2:z:0*
T0*(
_output_shapes
:??????????2
gru_78/gru_cell_78/Relu?
gru_78/gru_cell_78/mul_1Mulgru_78/gru_cell_78/Sigmoid:y:0gru_78/zeros:output:0*
T0*(
_output_shapes
:??????????2
gru_78/gru_cell_78/mul_1y
gru_78/gru_cell_78/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_78/gru_cell_78/sub/x?
gru_78/gru_cell_78/subSub!gru_78/gru_cell_78/sub/x:output:0gru_78/gru_cell_78/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
gru_78/gru_cell_78/sub?
gru_78/gru_cell_78/mul_2Mulgru_78/gru_cell_78/sub:z:0%gru_78/gru_cell_78/Relu:activations:0*
T0*(
_output_shapes
:??????????2
gru_78/gru_cell_78/mul_2?
gru_78/gru_cell_78/add_3AddV2gru_78/gru_cell_78/mul_1:z:0gru_78/gru_cell_78/mul_2:z:0*
T0*(
_output_shapes
:??????????2
gru_78/gru_cell_78/add_3?
$gru_78/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2&
$gru_78/TensorArrayV2_1/element_shape?
gru_78/TensorArrayV2_1TensorListReserve-gru_78/TensorArrayV2_1/element_shape:output:0gru_78/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_78/TensorArrayV2_1\
gru_78/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
gru_78/time?
gru_78/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2!
gru_78/while/maximum_iterationsx
gru_78/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
gru_78/while/loop_counter?
gru_78/whileWhile"gru_78/while/loop_counter:output:0(gru_78/while/maximum_iterations:output:0gru_78/time:output:0gru_78/TensorArrayV2_1:handle:0gru_78/zeros:output:0gru_78/strided_slice_1:output:0>gru_78/TensorArrayUnstack/TensorListFromTensor:output_handle:01gru_78_gru_cell_78_matmul_readvariableop_resource2gru_78_gru_cell_78_biasadd_readvariableop_resource*gru_78_gru_cell_78_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*%
bodyR
gru_78_while_body_3819704*%
condR
gru_78_while_cond_3819703*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations 2
gru_78/while?
7gru_78/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   29
7gru_78/TensorArrayV2Stack/TensorListStack/element_shape?
)gru_78/TensorArrayV2Stack/TensorListStackTensorListStackgru_78/while:output:3@gru_78/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02+
)gru_78/TensorArrayV2Stack/TensorListStack?
gru_78/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
gru_78/strided_slice_3/stack?
gru_78/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
gru_78/strided_slice_3/stack_1?
gru_78/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
gru_78/strided_slice_3/stack_2?
gru_78/strided_slice_3StridedSlice2gru_78/TensorArrayV2Stack/TensorListStack:tensor:0%gru_78/strided_slice_3/stack:output:0'gru_78/strided_slice_3/stack_1:output:0'gru_78/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
gru_78/strided_slice_3?
gru_78/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_78/transpose_1/perm?
gru_78/transpose_1	Transpose2gru_78/TensorArrayV2Stack/TensorListStack:tensor:0 gru_78/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
gru_78/transpose_1t
gru_78/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_78/runtime?
dense_156/MatMul/ReadVariableOpReadVariableOp(dense_156_matmul_readvariableop_resource*
_output_shapes
:	?d*
dtype02!
dense_156/MatMul/ReadVariableOp?
dense_156/MatMulMatMulgru_78/strided_slice_3:output:0'dense_156/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_156/MatMul?
 dense_156/BiasAdd/ReadVariableOpReadVariableOp)dense_156_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02"
 dense_156/BiasAdd/ReadVariableOp?
dense_156/BiasAddBiasAdddense_156/MatMul:product:0(dense_156/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_156/BiasAddv
dense_156/ReluReludense_156/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
dense_156/Relu?
dense_157/MatMul/ReadVariableOpReadVariableOp(dense_157_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02!
dense_157/MatMul/ReadVariableOp?
dense_157/MatMulMatMuldense_156/Relu:activations:0'dense_157/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_157/MatMul?
 dense_157/BiasAdd/ReadVariableOpReadVariableOp)dense_157_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_157/BiasAdd/ReadVariableOp?
dense_157/BiasAddBiasAdddense_157/MatMul:product:0(dense_157/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_157/BiasAdd?
IdentityIdentitydense_157/BiasAdd:output:0!^dense_156/BiasAdd/ReadVariableOp ^dense_156/MatMul/ReadVariableOp!^dense_157/BiasAdd/ReadVariableOp ^dense_157/MatMul/ReadVariableOp*^gru_78/gru_cell_78/BiasAdd/ReadVariableOp)^gru_78/gru_cell_78/MatMul/ReadVariableOp"^gru_78/gru_cell_78/ReadVariableOp$^gru_78/gru_cell_78/ReadVariableOp_1^gru_78/while*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2D
 dense_156/BiasAdd/ReadVariableOp dense_156/BiasAdd/ReadVariableOp2B
dense_156/MatMul/ReadVariableOpdense_156/MatMul/ReadVariableOp2D
 dense_157/BiasAdd/ReadVariableOp dense_157/BiasAdd/ReadVariableOp2B
dense_157/MatMul/ReadVariableOpdense_157/MatMul/ReadVariableOp2V
)gru_78/gru_cell_78/BiasAdd/ReadVariableOp)gru_78/gru_cell_78/BiasAdd/ReadVariableOp2T
(gru_78/gru_cell_78/MatMul/ReadVariableOp(gru_78/gru_cell_78/MatMul/ReadVariableOp2F
!gru_78/gru_cell_78/ReadVariableOp!gru_78/gru_cell_78/ReadVariableOp2J
#gru_78/gru_cell_78/ReadVariableOp_1#gru_78/gru_cell_78/ReadVariableOp_12
gru_78/whilegru_78/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
'sequential_78_gru_78_while_cond_3818143F
Bsequential_78_gru_78_while_sequential_78_gru_78_while_loop_counterL
Hsequential_78_gru_78_while_sequential_78_gru_78_while_maximum_iterations*
&sequential_78_gru_78_while_placeholder,
(sequential_78_gru_78_while_placeholder_1,
(sequential_78_gru_78_while_placeholder_2H
Dsequential_78_gru_78_while_less_sequential_78_gru_78_strided_slice_1_
[sequential_78_gru_78_while_sequential_78_gru_78_while_cond_3818143___redundant_placeholder0_
[sequential_78_gru_78_while_sequential_78_gru_78_while_cond_3818143___redundant_placeholder1_
[sequential_78_gru_78_while_sequential_78_gru_78_while_cond_3818143___redundant_placeholder2_
[sequential_78_gru_78_while_sequential_78_gru_78_while_cond_3818143___redundant_placeholder3'
#sequential_78_gru_78_while_identity
?
sequential_78/gru_78/while/LessLess&sequential_78_gru_78_while_placeholderDsequential_78_gru_78_while_less_sequential_78_gru_78_strided_slice_1*
T0*
_output_shapes
: 2!
sequential_78/gru_78/while/Less?
#sequential_78/gru_78/while/IdentityIdentity#sequential_78/gru_78/while/Less:z:0*
T0
*
_output_shapes
: 2%
#sequential_78/gru_78/while/Identity"S
#sequential_78_gru_78_while_identity,sequential_78/gru_78/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 
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
:??????????:

_output_shapes
: :

_output_shapes
:
?*
?
H__inference_gru_cell_78_layer_call_and_return_conditional_losses_3820664

inputs
states_01
matmul_readvariableop_resource:	?.
biasadd_readvariableop_resource:	?+
readvariableop_resource:
??
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?ReadVariableOp?ReadVariableOp_1?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddm
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
splitz
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
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
valueB"    ?  2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2?
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_slices
MatMul_1MatMulstates_0strided_slice:output:0*
T0*(
_output_shapes
:??????????2

MatMul_1c
ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2
Constq
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
split_1/split_dim?
split_1SplitVMatMul_1:product:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:??????????:??????????:????????? *
	num_split2	
split_1h
addAddV2split:output:0split_1:output:0*
T0*(
_output_shapes
:??????????2
addY
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:??????????2	
Sigmoidl
add_1AddV2split:output:1split_1:output:1*
T0*(
_output_shapes
:??????????2
add_1_
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:??????????2
	Sigmoid_1]
mulMulSigmoid_1:y:0states_0*
T0*(
_output_shapes
:??????????2
mul~
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2
strided_slice_1/stack?
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack_1?
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2?
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_slice_1t
MatMul_2MatMulmul:z:0strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2

MatMul_2n
add_2AddV2split:output:2MatMul_2:product:0*
T0*(
_output_shapes
:??????????2
add_2R
ReluRelu	add_2:z:0*
T0*(
_output_shapes
:??????????2
Relu_
mul_1MulSigmoid:y:0states_0*
T0*(
_output_shapes
:??????????2
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
sub/xa
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
sube
mul_2Mulsub:z:0Relu:activations:0*
T0*(
_output_shapes
:??????????2
mul_2`
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*(
_output_shapes
:??????????2
add_3?
IdentityIdentity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^ReadVariableOp^ReadVariableOp_1*
T0*(
_output_shapes
:??????????2

Identity?

Identity_1Identity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^ReadVariableOp^ReadVariableOp_1*
T0*(
_output_shapes
:??????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????:??????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0
?	
?
gru_78_while_cond_3819519*
&gru_78_while_gru_78_while_loop_counter0
,gru_78_while_gru_78_while_maximum_iterations
gru_78_while_placeholder
gru_78_while_placeholder_1
gru_78_while_placeholder_2,
(gru_78_while_less_gru_78_strided_slice_1C
?gru_78_while_gru_78_while_cond_3819519___redundant_placeholder0C
?gru_78_while_gru_78_while_cond_3819519___redundant_placeholder1C
?gru_78_while_gru_78_while_cond_3819519___redundant_placeholder2C
?gru_78_while_gru_78_while_cond_3819519___redundant_placeholder3
gru_78_while_identity
?
gru_78/while/LessLessgru_78_while_placeholder(gru_78_while_less_gru_78_strided_slice_1*
T0*
_output_shapes
: 2
gru_78/while/Lessr
gru_78/while/IdentityIdentitygru_78/while/Less:z:0*
T0
*
_output_shapes
: 2
gru_78/while/Identity"7
gru_78_while_identitygru_78/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 
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
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
J__inference_sequential_78_layer_call_and_return_conditional_losses_3819340

inputs!
gru_78_3819322:	?
gru_78_3819324:	?"
gru_78_3819326:
??$
dense_156_3819329:	?d
dense_156_3819331:d#
dense_157_3819334:d
dense_157_3819336:
identity??!dense_156/StatefulPartitionedCall?!dense_157/StatefulPartitionedCall?gru_78/StatefulPartitionedCall?
gru_78/StatefulPartitionedCallStatefulPartitionedCallinputsgru_78_3819322gru_78_3819324gru_78_3819326*
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
C__inference_gru_78_layer_call_and_return_conditional_losses_38192892 
gru_78/StatefulPartitionedCall?
!dense_156/StatefulPartitionedCallStatefulPartitionedCall'gru_78/StatefulPartitionedCall:output:0dense_156_3819329dense_156_3819331*
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
F__inference_dense_156_layer_call_and_return_conditional_losses_38190452#
!dense_156/StatefulPartitionedCall?
!dense_157/StatefulPartitionedCallStatefulPartitionedCall*dense_156/StatefulPartitionedCall:output:0dense_157_3819334dense_157_3819336*
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
F__inference_dense_157_layer_call_and_return_conditional_losses_38190612#
!dense_157/StatefulPartitionedCall?
IdentityIdentity*dense_157/StatefulPartitionedCall:output:0"^dense_156/StatefulPartitionedCall"^dense_157/StatefulPartitionedCall^gru_78/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2F
!dense_156/StatefulPartitionedCall!dense_156/StatefulPartitionedCall2F
!dense_157/StatefulPartitionedCall!dense_157/StatefulPartitionedCall2@
gru_78/StatefulPartitionedCallgru_78/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?"
?
while_body_3818347
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_gru_cell_78_3818369_0:	?*
while_gru_cell_78_3818371_0:	?/
while_gru_cell_78_3818373_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_gru_cell_78_3818369:	?(
while_gru_cell_78_3818371:	?-
while_gru_cell_78_3818373:
????)while/gru_cell_78/StatefulPartitionedCall?
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
)while/gru_cell_78/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_gru_cell_78_3818369_0while_gru_cell_78_3818371_0while_gru_cell_78_3818373_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_gru_cell_78_layer_call_and_return_conditional_losses_38183342+
)while/gru_cell_78/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/gru_cell_78/StatefulPartitionedCall:output:0*
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
while/IdentityIdentitywhile/add_1:z:0*^while/gru_cell_78/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations*^while/gru_cell_78/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0*^while/gru_cell_78/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/gru_cell_78/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity2while/gru_cell_78/StatefulPartitionedCall:output:1*^while/gru_cell_78/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
while/Identity_4"8
while_gru_cell_78_3818369while_gru_cell_78_3818369_0"8
while_gru_cell_78_3818371while_gru_cell_78_3818371_0"8
while_gru_cell_78_3818373while_gru_cell_78_3818373_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2V
)while/gru_cell_78/StatefulPartitionedCall)while/gru_cell_78/StatefulPartitionedCall: 
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
:??????????:

_output_shapes
: :

_output_shapes
: 
?h
?
C__inference_gru_78_layer_call_and_return_conditional_losses_3820364

inputs=
*gru_cell_78_matmul_readvariableop_resource:	?:
+gru_cell_78_biasadd_readvariableop_resource:	?7
#gru_cell_78_readvariableop_resource:
??
identity??"gru_cell_78/BiasAdd/ReadVariableOp?!gru_cell_78/MatMul/ReadVariableOp?gru_cell_78/ReadVariableOp?gru_cell_78/ReadVariableOp_1?whileD
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
!gru_cell_78/MatMul/ReadVariableOpReadVariableOp*gru_cell_78_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!gru_cell_78/MatMul/ReadVariableOp?
gru_cell_78/MatMulMatMulstrided_slice_2:output:0)gru_cell_78/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/MatMul?
"gru_cell_78/BiasAdd/ReadVariableOpReadVariableOp+gru_cell_78_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"gru_cell_78/BiasAdd/ReadVariableOp?
gru_cell_78/BiasAddBiasAddgru_cell_78/MatMul:product:0*gru_cell_78/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/BiasAdd?
gru_cell_78/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_78/split/split_dim?
gru_cell_78/splitSplit$gru_cell_78/split/split_dim:output:0gru_cell_78/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
gru_cell_78/split?
gru_cell_78/ReadVariableOpReadVariableOp#gru_cell_78_readvariableop_resource* 
_output_shapes
:
??*
dtype02
gru_cell_78/ReadVariableOp?
gru_cell_78/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
gru_cell_78/strided_slice/stack?
!gru_cell_78/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2#
!gru_cell_78/strided_slice/stack_1?
!gru_cell_78/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!gru_cell_78/strided_slice/stack_2?
gru_cell_78/strided_sliceStridedSlice"gru_cell_78/ReadVariableOp:value:0(gru_cell_78/strided_slice/stack:output:0*gru_cell_78/strided_slice/stack_1:output:0*gru_cell_78/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
gru_cell_78/strided_slice?
gru_cell_78/MatMul_1MatMulzeros:output:0"gru_cell_78/strided_slice:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/MatMul_1{
gru_cell_78/ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2
gru_cell_78/Const?
gru_cell_78/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_78/split_1/split_dim?
gru_cell_78/split_1SplitVgru_cell_78/MatMul_1:product:0gru_cell_78/Const:output:0&gru_cell_78/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:??????????:??????????:????????? *
	num_split2
gru_cell_78/split_1?
gru_cell_78/addAddV2gru_cell_78/split:output:0gru_cell_78/split_1:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/add}
gru_cell_78/SigmoidSigmoidgru_cell_78/add:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/Sigmoid?
gru_cell_78/add_1AddV2gru_cell_78/split:output:1gru_cell_78/split_1:output:1*
T0*(
_output_shapes
:??????????2
gru_cell_78/add_1?
gru_cell_78/Sigmoid_1Sigmoidgru_cell_78/add_1:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/Sigmoid_1?
gru_cell_78/mulMulgru_cell_78/Sigmoid_1:y:0zeros:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/mul?
gru_cell_78/ReadVariableOp_1ReadVariableOp#gru_cell_78_readvariableop_resource* 
_output_shapes
:
??*
dtype02
gru_cell_78/ReadVariableOp_1?
!gru_cell_78/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2#
!gru_cell_78/strided_slice_1/stack?
#gru_cell_78/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#gru_cell_78/strided_slice_1/stack_1?
#gru_cell_78/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gru_cell_78/strided_slice_1/stack_2?
gru_cell_78/strided_slice_1StridedSlice$gru_cell_78/ReadVariableOp_1:value:0*gru_cell_78/strided_slice_1/stack:output:0,gru_cell_78/strided_slice_1/stack_1:output:0,gru_cell_78/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
gru_cell_78/strided_slice_1?
gru_cell_78/MatMul_2MatMulgru_cell_78/mul:z:0$gru_cell_78/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/MatMul_2?
gru_cell_78/add_2AddV2gru_cell_78/split:output:2gru_cell_78/MatMul_2:product:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/add_2v
gru_cell_78/ReluRelugru_cell_78/add_2:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/Relu?
gru_cell_78/mul_1Mulgru_cell_78/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/mul_1k
gru_cell_78/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_cell_78/sub/x?
gru_cell_78/subSubgru_cell_78/sub/x:output:0gru_cell_78/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/sub?
gru_cell_78/mul_2Mulgru_cell_78/sub:z:0gru_cell_78/Relu:activations:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/mul_2?
gru_cell_78/add_3AddV2gru_cell_78/mul_1:z:0gru_cell_78/mul_2:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/add_3?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*gru_cell_78_matmul_readvariableop_resource+gru_cell_78_biasadd_readvariableop_resource#gru_cell_78_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_3820268*
condR
while_cond_3820267*9
output_shapes(
&: : : : :??????????: : : : : *
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
IdentityIdentitystrided_slice_3:output:0#^gru_cell_78/BiasAdd/ReadVariableOp"^gru_cell_78/MatMul/ReadVariableOp^gru_cell_78/ReadVariableOp^gru_cell_78/ReadVariableOp_1^while*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2H
"gru_cell_78/BiasAdd/ReadVariableOp"gru_cell_78/BiasAdd/ReadVariableOp2F
!gru_cell_78/MatMul/ReadVariableOp!gru_cell_78/MatMul/ReadVariableOp28
gru_cell_78/ReadVariableOpgru_cell_78/ReadVariableOp2<
gru_cell_78/ReadVariableOp_1gru_cell_78/ReadVariableOp_12
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_3818550
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_3818550___redundant_placeholder05
1while_while_cond_3818550___redundant_placeholder15
1while_while_cond_3818550___redundant_placeholder25
1while_while_cond_3818550___redundant_placeholder3
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
.: : : : :??????????: ::::: 
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
:??????????:

_output_shapes
: :

_output_shapes
:
?*
?
H__inference_gru_cell_78_layer_call_and_return_conditional_losses_3818334

inputs

states1
matmul_readvariableop_resource:	?.
biasadd_readvariableop_resource:	?+
readvariableop_resource:
??
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?ReadVariableOp?ReadVariableOp_1?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddm
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
splitz
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
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
valueB"    ?  2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2?
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_sliceq
MatMul_1MatMulstatesstrided_slice:output:0*
T0*(
_output_shapes
:??????????2

MatMul_1c
ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2
Constq
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
split_1/split_dim?
split_1SplitVMatMul_1:product:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:??????????:??????????:????????? *
	num_split2	
split_1h
addAddV2split:output:0split_1:output:0*
T0*(
_output_shapes
:??????????2
addY
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:??????????2	
Sigmoidl
add_1AddV2split:output:1split_1:output:1*
T0*(
_output_shapes
:??????????2
add_1_
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:??????????2
	Sigmoid_1[
mulMulSigmoid_1:y:0states*
T0*(
_output_shapes
:??????????2
mul~
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2
strided_slice_1/stack?
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack_1?
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2?
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_slice_1t
MatMul_2MatMulmul:z:0strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2

MatMul_2n
add_2AddV2split:output:2MatMul_2:product:0*
T0*(
_output_shapes
:??????????2
add_2R
ReluRelu	add_2:z:0*
T0*(
_output_shapes
:??????????2
Relu]
mul_1MulSigmoid:y:0states*
T0*(
_output_shapes
:??????????2
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
sub/xa
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
sube
mul_2Mulsub:z:0Relu:activations:0*
T0*(
_output_shapes
:??????????2
mul_2`
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*(
_output_shapes
:??????????2
add_3?
IdentityIdentity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^ReadVariableOp^ReadVariableOp_1*
T0*(
_output_shapes
:??????????2

Identity?

Identity_1Identity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^ReadVariableOp^ReadVariableOp_1*
T0*(
_output_shapes
:??????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????:??????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_namestates
?W
?
while_body_3820439
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_gru_cell_78_matmul_readvariableop_resource_0:	?B
3while_gru_cell_78_biasadd_readvariableop_resource_0:	??
+while_gru_cell_78_readvariableop_resource_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_gru_cell_78_matmul_readvariableop_resource:	?@
1while_gru_cell_78_biasadd_readvariableop_resource:	?=
)while_gru_cell_78_readvariableop_resource:
????(while/gru_cell_78/BiasAdd/ReadVariableOp?'while/gru_cell_78/MatMul/ReadVariableOp? while/gru_cell_78/ReadVariableOp?"while/gru_cell_78/ReadVariableOp_1?
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
'while/gru_cell_78/MatMul/ReadVariableOpReadVariableOp2while_gru_cell_78_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02)
'while/gru_cell_78/MatMul/ReadVariableOp?
while/gru_cell_78/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/gru_cell_78/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/MatMul?
(while/gru_cell_78/BiasAdd/ReadVariableOpReadVariableOp3while_gru_cell_78_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/gru_cell_78/BiasAdd/ReadVariableOp?
while/gru_cell_78/BiasAddBiasAdd"while/gru_cell_78/MatMul:product:00while/gru_cell_78/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/BiasAdd?
!while/gru_cell_78/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2#
!while/gru_cell_78/split/split_dim?
while/gru_cell_78/splitSplit*while/gru_cell_78/split/split_dim:output:0"while/gru_cell_78/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
while/gru_cell_78/split?
 while/gru_cell_78/ReadVariableOpReadVariableOp+while_gru_cell_78_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02"
 while/gru_cell_78/ReadVariableOp?
%while/gru_cell_78/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/gru_cell_78/strided_slice/stack?
'while/gru_cell_78/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2)
'while/gru_cell_78/strided_slice/stack_1?
'while/gru_cell_78/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/gru_cell_78/strided_slice/stack_2?
while/gru_cell_78/strided_sliceStridedSlice(while/gru_cell_78/ReadVariableOp:value:0.while/gru_cell_78/strided_slice/stack:output:00while/gru_cell_78/strided_slice/stack_1:output:00while/gru_cell_78/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2!
while/gru_cell_78/strided_slice?
while/gru_cell_78/MatMul_1MatMulwhile_placeholder_2(while/gru_cell_78/strided_slice:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/MatMul_1?
while/gru_cell_78/ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2
while/gru_cell_78/Const?
#while/gru_cell_78/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2%
#while/gru_cell_78/split_1/split_dim?
while/gru_cell_78/split_1SplitV$while/gru_cell_78/MatMul_1:product:0 while/gru_cell_78/Const:output:0,while/gru_cell_78/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:??????????:??????????:????????? *
	num_split2
while/gru_cell_78/split_1?
while/gru_cell_78/addAddV2 while/gru_cell_78/split:output:0"while/gru_cell_78/split_1:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/add?
while/gru_cell_78/SigmoidSigmoidwhile/gru_cell_78/add:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/Sigmoid?
while/gru_cell_78/add_1AddV2 while/gru_cell_78/split:output:1"while/gru_cell_78/split_1:output:1*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/add_1?
while/gru_cell_78/Sigmoid_1Sigmoidwhile/gru_cell_78/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/Sigmoid_1?
while/gru_cell_78/mulMulwhile/gru_cell_78/Sigmoid_1:y:0while_placeholder_2*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/mul?
"while/gru_cell_78/ReadVariableOp_1ReadVariableOp+while_gru_cell_78_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02$
"while/gru_cell_78/ReadVariableOp_1?
'while/gru_cell_78/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2)
'while/gru_cell_78/strided_slice_1/stack?
)while/gru_cell_78/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/gru_cell_78/strided_slice_1/stack_1?
)while/gru_cell_78/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/gru_cell_78/strided_slice_1/stack_2?
!while/gru_cell_78/strided_slice_1StridedSlice*while/gru_cell_78/ReadVariableOp_1:value:00while/gru_cell_78/strided_slice_1/stack:output:02while/gru_cell_78/strided_slice_1/stack_1:output:02while/gru_cell_78/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2#
!while/gru_cell_78/strided_slice_1?
while/gru_cell_78/MatMul_2MatMulwhile/gru_cell_78/mul:z:0*while/gru_cell_78/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/MatMul_2?
while/gru_cell_78/add_2AddV2 while/gru_cell_78/split:output:2$while/gru_cell_78/MatMul_2:product:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/add_2?
while/gru_cell_78/ReluReluwhile/gru_cell_78/add_2:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/Relu?
while/gru_cell_78/mul_1Mulwhile/gru_cell_78/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/mul_1w
while/gru_cell_78/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/gru_cell_78/sub/x?
while/gru_cell_78/subSub while/gru_cell_78/sub/x:output:0while/gru_cell_78/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/sub?
while/gru_cell_78/mul_2Mulwhile/gru_cell_78/sub:z:0$while/gru_cell_78/Relu:activations:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/mul_2?
while/gru_cell_78/add_3AddV2while/gru_cell_78/mul_1:z:0while/gru_cell_78/mul_2:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/add_3?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_78/add_3:z:0*
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
while/IdentityIdentitywhile/add_1:z:0)^while/gru_cell_78/BiasAdd/ReadVariableOp(^while/gru_cell_78/MatMul/ReadVariableOp!^while/gru_cell_78/ReadVariableOp#^while/gru_cell_78/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations)^while/gru_cell_78/BiasAdd/ReadVariableOp(^while/gru_cell_78/MatMul/ReadVariableOp!^while/gru_cell_78/ReadVariableOp#^while/gru_cell_78/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0)^while/gru_cell_78/BiasAdd/ReadVariableOp(^while/gru_cell_78/MatMul/ReadVariableOp!^while/gru_cell_78/ReadVariableOp#^while/gru_cell_78/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/gru_cell_78/BiasAdd/ReadVariableOp(^while/gru_cell_78/MatMul/ReadVariableOp!^while/gru_cell_78/ReadVariableOp#^while/gru_cell_78/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/gru_cell_78/add_3:z:0)^while/gru_cell_78/BiasAdd/ReadVariableOp(^while/gru_cell_78/MatMul/ReadVariableOp!^while/gru_cell_78/ReadVariableOp#^while/gru_cell_78/ReadVariableOp_1*
T0*(
_output_shapes
:??????????2
while/Identity_4"h
1while_gru_cell_78_biasadd_readvariableop_resource3while_gru_cell_78_biasadd_readvariableop_resource_0"f
0while_gru_cell_78_matmul_readvariableop_resource2while_gru_cell_78_matmul_readvariableop_resource_0"X
)while_gru_cell_78_readvariableop_resource+while_gru_cell_78_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2T
(while/gru_cell_78/BiasAdd/ReadVariableOp(while/gru_cell_78/BiasAdd/ReadVariableOp2R
'while/gru_cell_78/MatMul/ReadVariableOp'while/gru_cell_78/MatMul/ReadVariableOp2D
 while/gru_cell_78/ReadVariableOp while/gru_cell_78/ReadVariableOp2H
"while/gru_cell_78/ReadVariableOp_1"while/gru_cell_78/ReadVariableOp_1: 
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
:??????????:

_output_shapes
: :

_output_shapes
: 
?i
?
C__inference_gru_78_layer_call_and_return_conditional_losses_3820193
inputs_0=
*gru_cell_78_matmul_readvariableop_resource:	?:
+gru_cell_78_biasadd_readvariableop_resource:	?7
#gru_cell_78_readvariableop_resource:
??
identity??"gru_cell_78/BiasAdd/ReadVariableOp?!gru_cell_78/MatMul/ReadVariableOp?gru_cell_78/ReadVariableOp?gru_cell_78/ReadVariableOp_1?whileF
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
zerosu
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
!gru_cell_78/MatMul/ReadVariableOpReadVariableOp*gru_cell_78_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!gru_cell_78/MatMul/ReadVariableOp?
gru_cell_78/MatMulMatMulstrided_slice_2:output:0)gru_cell_78/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/MatMul?
"gru_cell_78/BiasAdd/ReadVariableOpReadVariableOp+gru_cell_78_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"gru_cell_78/BiasAdd/ReadVariableOp?
gru_cell_78/BiasAddBiasAddgru_cell_78/MatMul:product:0*gru_cell_78/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/BiasAdd?
gru_cell_78/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_78/split/split_dim?
gru_cell_78/splitSplit$gru_cell_78/split/split_dim:output:0gru_cell_78/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
gru_cell_78/split?
gru_cell_78/ReadVariableOpReadVariableOp#gru_cell_78_readvariableop_resource* 
_output_shapes
:
??*
dtype02
gru_cell_78/ReadVariableOp?
gru_cell_78/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
gru_cell_78/strided_slice/stack?
!gru_cell_78/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2#
!gru_cell_78/strided_slice/stack_1?
!gru_cell_78/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!gru_cell_78/strided_slice/stack_2?
gru_cell_78/strided_sliceStridedSlice"gru_cell_78/ReadVariableOp:value:0(gru_cell_78/strided_slice/stack:output:0*gru_cell_78/strided_slice/stack_1:output:0*gru_cell_78/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
gru_cell_78/strided_slice?
gru_cell_78/MatMul_1MatMulzeros:output:0"gru_cell_78/strided_slice:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/MatMul_1{
gru_cell_78/ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2
gru_cell_78/Const?
gru_cell_78/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_78/split_1/split_dim?
gru_cell_78/split_1SplitVgru_cell_78/MatMul_1:product:0gru_cell_78/Const:output:0&gru_cell_78/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:??????????:??????????:????????? *
	num_split2
gru_cell_78/split_1?
gru_cell_78/addAddV2gru_cell_78/split:output:0gru_cell_78/split_1:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/add}
gru_cell_78/SigmoidSigmoidgru_cell_78/add:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/Sigmoid?
gru_cell_78/add_1AddV2gru_cell_78/split:output:1gru_cell_78/split_1:output:1*
T0*(
_output_shapes
:??????????2
gru_cell_78/add_1?
gru_cell_78/Sigmoid_1Sigmoidgru_cell_78/add_1:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/Sigmoid_1?
gru_cell_78/mulMulgru_cell_78/Sigmoid_1:y:0zeros:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/mul?
gru_cell_78/ReadVariableOp_1ReadVariableOp#gru_cell_78_readvariableop_resource* 
_output_shapes
:
??*
dtype02
gru_cell_78/ReadVariableOp_1?
!gru_cell_78/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2#
!gru_cell_78/strided_slice_1/stack?
#gru_cell_78/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#gru_cell_78/strided_slice_1/stack_1?
#gru_cell_78/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gru_cell_78/strided_slice_1/stack_2?
gru_cell_78/strided_slice_1StridedSlice$gru_cell_78/ReadVariableOp_1:value:0*gru_cell_78/strided_slice_1/stack:output:0,gru_cell_78/strided_slice_1/stack_1:output:0,gru_cell_78/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
gru_cell_78/strided_slice_1?
gru_cell_78/MatMul_2MatMulgru_cell_78/mul:z:0$gru_cell_78/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/MatMul_2?
gru_cell_78/add_2AddV2gru_cell_78/split:output:2gru_cell_78/MatMul_2:product:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/add_2v
gru_cell_78/ReluRelugru_cell_78/add_2:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/Relu?
gru_cell_78/mul_1Mulgru_cell_78/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/mul_1k
gru_cell_78/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_cell_78/sub/x?
gru_cell_78/subSubgru_cell_78/sub/x:output:0gru_cell_78/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/sub?
gru_cell_78/mul_2Mulgru_cell_78/sub:z:0gru_cell_78/Relu:activations:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/mul_2?
gru_cell_78/add_3AddV2gru_cell_78/mul_1:z:0gru_cell_78/mul_2:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/add_3?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*gru_cell_78_matmul_readvariableop_resource+gru_cell_78_biasadd_readvariableop_resource#gru_cell_78_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_3820097*
condR
while_cond_3820096*9
output_shapes(
&: : : : :??????????: : : : : *
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
IdentityIdentitystrided_slice_3:output:0#^gru_cell_78/BiasAdd/ReadVariableOp"^gru_cell_78/MatMul/ReadVariableOp^gru_cell_78/ReadVariableOp^gru_cell_78/ReadVariableOp_1^while*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2H
"gru_cell_78/BiasAdd/ReadVariableOp"gru_cell_78/BiasAdd/ReadVariableOp2F
!gru_cell_78/MatMul/ReadVariableOp!gru_cell_78/MatMul/ReadVariableOp28
gru_cell_78/ReadVariableOpgru_cell_78/ReadVariableOp2<
gru_cell_78/ReadVariableOp_1gru_cell_78/ReadVariableOp_12
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?W
?
while_body_3819193
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_gru_cell_78_matmul_readvariableop_resource_0:	?B
3while_gru_cell_78_biasadd_readvariableop_resource_0:	??
+while_gru_cell_78_readvariableop_resource_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_gru_cell_78_matmul_readvariableop_resource:	?@
1while_gru_cell_78_biasadd_readvariableop_resource:	?=
)while_gru_cell_78_readvariableop_resource:
????(while/gru_cell_78/BiasAdd/ReadVariableOp?'while/gru_cell_78/MatMul/ReadVariableOp? while/gru_cell_78/ReadVariableOp?"while/gru_cell_78/ReadVariableOp_1?
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
'while/gru_cell_78/MatMul/ReadVariableOpReadVariableOp2while_gru_cell_78_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02)
'while/gru_cell_78/MatMul/ReadVariableOp?
while/gru_cell_78/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/gru_cell_78/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/MatMul?
(while/gru_cell_78/BiasAdd/ReadVariableOpReadVariableOp3while_gru_cell_78_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/gru_cell_78/BiasAdd/ReadVariableOp?
while/gru_cell_78/BiasAddBiasAdd"while/gru_cell_78/MatMul:product:00while/gru_cell_78/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/BiasAdd?
!while/gru_cell_78/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2#
!while/gru_cell_78/split/split_dim?
while/gru_cell_78/splitSplit*while/gru_cell_78/split/split_dim:output:0"while/gru_cell_78/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
while/gru_cell_78/split?
 while/gru_cell_78/ReadVariableOpReadVariableOp+while_gru_cell_78_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02"
 while/gru_cell_78/ReadVariableOp?
%while/gru_cell_78/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/gru_cell_78/strided_slice/stack?
'while/gru_cell_78/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2)
'while/gru_cell_78/strided_slice/stack_1?
'while/gru_cell_78/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/gru_cell_78/strided_slice/stack_2?
while/gru_cell_78/strided_sliceStridedSlice(while/gru_cell_78/ReadVariableOp:value:0.while/gru_cell_78/strided_slice/stack:output:00while/gru_cell_78/strided_slice/stack_1:output:00while/gru_cell_78/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2!
while/gru_cell_78/strided_slice?
while/gru_cell_78/MatMul_1MatMulwhile_placeholder_2(while/gru_cell_78/strided_slice:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/MatMul_1?
while/gru_cell_78/ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2
while/gru_cell_78/Const?
#while/gru_cell_78/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2%
#while/gru_cell_78/split_1/split_dim?
while/gru_cell_78/split_1SplitV$while/gru_cell_78/MatMul_1:product:0 while/gru_cell_78/Const:output:0,while/gru_cell_78/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:??????????:??????????:????????? *
	num_split2
while/gru_cell_78/split_1?
while/gru_cell_78/addAddV2 while/gru_cell_78/split:output:0"while/gru_cell_78/split_1:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/add?
while/gru_cell_78/SigmoidSigmoidwhile/gru_cell_78/add:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/Sigmoid?
while/gru_cell_78/add_1AddV2 while/gru_cell_78/split:output:1"while/gru_cell_78/split_1:output:1*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/add_1?
while/gru_cell_78/Sigmoid_1Sigmoidwhile/gru_cell_78/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/Sigmoid_1?
while/gru_cell_78/mulMulwhile/gru_cell_78/Sigmoid_1:y:0while_placeholder_2*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/mul?
"while/gru_cell_78/ReadVariableOp_1ReadVariableOp+while_gru_cell_78_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02$
"while/gru_cell_78/ReadVariableOp_1?
'while/gru_cell_78/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2)
'while/gru_cell_78/strided_slice_1/stack?
)while/gru_cell_78/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/gru_cell_78/strided_slice_1/stack_1?
)while/gru_cell_78/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/gru_cell_78/strided_slice_1/stack_2?
!while/gru_cell_78/strided_slice_1StridedSlice*while/gru_cell_78/ReadVariableOp_1:value:00while/gru_cell_78/strided_slice_1/stack:output:02while/gru_cell_78/strided_slice_1/stack_1:output:02while/gru_cell_78/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2#
!while/gru_cell_78/strided_slice_1?
while/gru_cell_78/MatMul_2MatMulwhile/gru_cell_78/mul:z:0*while/gru_cell_78/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/MatMul_2?
while/gru_cell_78/add_2AddV2 while/gru_cell_78/split:output:2$while/gru_cell_78/MatMul_2:product:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/add_2?
while/gru_cell_78/ReluReluwhile/gru_cell_78/add_2:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/Relu?
while/gru_cell_78/mul_1Mulwhile/gru_cell_78/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/mul_1w
while/gru_cell_78/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/gru_cell_78/sub/x?
while/gru_cell_78/subSub while/gru_cell_78/sub/x:output:0while/gru_cell_78/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/sub?
while/gru_cell_78/mul_2Mulwhile/gru_cell_78/sub:z:0$while/gru_cell_78/Relu:activations:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/mul_2?
while/gru_cell_78/add_3AddV2while/gru_cell_78/mul_1:z:0while/gru_cell_78/mul_2:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/add_3?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_78/add_3:z:0*
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
while/IdentityIdentitywhile/add_1:z:0)^while/gru_cell_78/BiasAdd/ReadVariableOp(^while/gru_cell_78/MatMul/ReadVariableOp!^while/gru_cell_78/ReadVariableOp#^while/gru_cell_78/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations)^while/gru_cell_78/BiasAdd/ReadVariableOp(^while/gru_cell_78/MatMul/ReadVariableOp!^while/gru_cell_78/ReadVariableOp#^while/gru_cell_78/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0)^while/gru_cell_78/BiasAdd/ReadVariableOp(^while/gru_cell_78/MatMul/ReadVariableOp!^while/gru_cell_78/ReadVariableOp#^while/gru_cell_78/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/gru_cell_78/BiasAdd/ReadVariableOp(^while/gru_cell_78/MatMul/ReadVariableOp!^while/gru_cell_78/ReadVariableOp#^while/gru_cell_78/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/gru_cell_78/add_3:z:0)^while/gru_cell_78/BiasAdd/ReadVariableOp(^while/gru_cell_78/MatMul/ReadVariableOp!^while/gru_cell_78/ReadVariableOp#^while/gru_cell_78/ReadVariableOp_1*
T0*(
_output_shapes
:??????????2
while/Identity_4"h
1while_gru_cell_78_biasadd_readvariableop_resource3while_gru_cell_78_biasadd_readvariableop_resource_0"f
0while_gru_cell_78_matmul_readvariableop_resource2while_gru_cell_78_matmul_readvariableop_resource_0"X
)while_gru_cell_78_readvariableop_resource+while_gru_cell_78_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2T
(while/gru_cell_78/BiasAdd/ReadVariableOp(while/gru_cell_78/BiasAdd/ReadVariableOp2R
'while/gru_cell_78/MatMul/ReadVariableOp'while/gru_cell_78/MatMul/ReadVariableOp2D
 while/gru_cell_78/ReadVariableOp while/gru_cell_78/ReadVariableOp2H
"while/gru_cell_78/ReadVariableOp_1"while/gru_cell_78/ReadVariableOp_1: 
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
:??????????:

_output_shapes
: :

_output_shapes
: 
?	
?
F__inference_dense_157_layer_call_and_return_conditional_losses_3820609

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
?
?
while_cond_3820096
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_3820096___redundant_placeholder05
1while_while_cond_3820096___redundant_placeholder15
1while_while_cond_3820096___redundant_placeholder25
1while_while_cond_3820096___redundant_placeholder3
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
.: : : : :??????????: ::::: 
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
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
+__inference_dense_157_layer_call_fn_3820618

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
F__inference_dense_157_layer_call_and_return_conditional_losses_38190612
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
?	
?
/__inference_sequential_78_layer_call_fn_3819085
gru_78_input
unknown:	?
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?d
	unknown_3:d
	unknown_4:d
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallgru_78_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
GPU 2J 8? *S
fNRL
J__inference_sequential_78_layer_call_and_return_conditional_losses_38190682
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
StatefulPartitionedCallStatefulPartitionedCall:Y U
+
_output_shapes
:?????????
&
_user_specified_namegru_78_input
?
?
(__inference_gru_78_layer_call_fn_3820546
inputs_0
unknown:	?
	unknown_0:	?
	unknown_1:
??
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
C__inference_gru_78_layer_call_and_return_conditional_losses_38184112
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
?h
?
C__inference_gru_78_layer_call_and_return_conditional_losses_3820535

inputs=
*gru_cell_78_matmul_readvariableop_resource:	?:
+gru_cell_78_biasadd_readvariableop_resource:	?7
#gru_cell_78_readvariableop_resource:
??
identity??"gru_cell_78/BiasAdd/ReadVariableOp?!gru_cell_78/MatMul/ReadVariableOp?gru_cell_78/ReadVariableOp?gru_cell_78/ReadVariableOp_1?whileD
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
!gru_cell_78/MatMul/ReadVariableOpReadVariableOp*gru_cell_78_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!gru_cell_78/MatMul/ReadVariableOp?
gru_cell_78/MatMulMatMulstrided_slice_2:output:0)gru_cell_78/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/MatMul?
"gru_cell_78/BiasAdd/ReadVariableOpReadVariableOp+gru_cell_78_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"gru_cell_78/BiasAdd/ReadVariableOp?
gru_cell_78/BiasAddBiasAddgru_cell_78/MatMul:product:0*gru_cell_78/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/BiasAdd?
gru_cell_78/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_78/split/split_dim?
gru_cell_78/splitSplit$gru_cell_78/split/split_dim:output:0gru_cell_78/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
gru_cell_78/split?
gru_cell_78/ReadVariableOpReadVariableOp#gru_cell_78_readvariableop_resource* 
_output_shapes
:
??*
dtype02
gru_cell_78/ReadVariableOp?
gru_cell_78/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
gru_cell_78/strided_slice/stack?
!gru_cell_78/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2#
!gru_cell_78/strided_slice/stack_1?
!gru_cell_78/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!gru_cell_78/strided_slice/stack_2?
gru_cell_78/strided_sliceStridedSlice"gru_cell_78/ReadVariableOp:value:0(gru_cell_78/strided_slice/stack:output:0*gru_cell_78/strided_slice/stack_1:output:0*gru_cell_78/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
gru_cell_78/strided_slice?
gru_cell_78/MatMul_1MatMulzeros:output:0"gru_cell_78/strided_slice:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/MatMul_1{
gru_cell_78/ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2
gru_cell_78/Const?
gru_cell_78/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_78/split_1/split_dim?
gru_cell_78/split_1SplitVgru_cell_78/MatMul_1:product:0gru_cell_78/Const:output:0&gru_cell_78/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:??????????:??????????:????????? *
	num_split2
gru_cell_78/split_1?
gru_cell_78/addAddV2gru_cell_78/split:output:0gru_cell_78/split_1:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/add}
gru_cell_78/SigmoidSigmoidgru_cell_78/add:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/Sigmoid?
gru_cell_78/add_1AddV2gru_cell_78/split:output:1gru_cell_78/split_1:output:1*
T0*(
_output_shapes
:??????????2
gru_cell_78/add_1?
gru_cell_78/Sigmoid_1Sigmoidgru_cell_78/add_1:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/Sigmoid_1?
gru_cell_78/mulMulgru_cell_78/Sigmoid_1:y:0zeros:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/mul?
gru_cell_78/ReadVariableOp_1ReadVariableOp#gru_cell_78_readvariableop_resource* 
_output_shapes
:
??*
dtype02
gru_cell_78/ReadVariableOp_1?
!gru_cell_78/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2#
!gru_cell_78/strided_slice_1/stack?
#gru_cell_78/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#gru_cell_78/strided_slice_1/stack_1?
#gru_cell_78/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gru_cell_78/strided_slice_1/stack_2?
gru_cell_78/strided_slice_1StridedSlice$gru_cell_78/ReadVariableOp_1:value:0*gru_cell_78/strided_slice_1/stack:output:0,gru_cell_78/strided_slice_1/stack_1:output:0,gru_cell_78/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
gru_cell_78/strided_slice_1?
gru_cell_78/MatMul_2MatMulgru_cell_78/mul:z:0$gru_cell_78/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/MatMul_2?
gru_cell_78/add_2AddV2gru_cell_78/split:output:2gru_cell_78/MatMul_2:product:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/add_2v
gru_cell_78/ReluRelugru_cell_78/add_2:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/Relu?
gru_cell_78/mul_1Mulgru_cell_78/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/mul_1k
gru_cell_78/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_cell_78/sub/x?
gru_cell_78/subSubgru_cell_78/sub/x:output:0gru_cell_78/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/sub?
gru_cell_78/mul_2Mulgru_cell_78/sub:z:0gru_cell_78/Relu:activations:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/mul_2?
gru_cell_78/add_3AddV2gru_cell_78/mul_1:z:0gru_cell_78/mul_2:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/add_3?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*gru_cell_78_matmul_readvariableop_resource+gru_cell_78_biasadd_readvariableop_resource#gru_cell_78_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_3820439*
condR
while_cond_3820438*9
output_shapes(
&: : : : :??????????: : : : : *
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
IdentityIdentitystrided_slice_3:output:0#^gru_cell_78/BiasAdd/ReadVariableOp"^gru_cell_78/MatMul/ReadVariableOp^gru_cell_78/ReadVariableOp^gru_cell_78/ReadVariableOp_1^while*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2H
"gru_cell_78/BiasAdd/ReadVariableOp"gru_cell_78/BiasAdd/ReadVariableOp2F
!gru_cell_78/MatMul/ReadVariableOp!gru_cell_78/MatMul/ReadVariableOp28
gru_cell_78/ReadVariableOpgru_cell_78/ReadVariableOp2<
gru_cell_78/ReadVariableOp_1gru_cell_78/ReadVariableOp_12
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
F__inference_dense_157_layer_call_and_return_conditional_losses_3819061

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
?
?
%__inference_signature_wrapper_3819445
gru_78_input
unknown:	?
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?d
	unknown_3:d
	unknown_4:d
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallgru_78_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
"__inference__wrapped_model_38182532
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
StatefulPartitionedCallStatefulPartitionedCall:Y U
+
_output_shapes
:?????????
&
_user_specified_namegru_78_input
?
?
(__inference_gru_78_layer_call_fn_3820557
inputs_0
unknown:	?
	unknown_0:	?
	unknown_1:
??
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
C__inference_gru_78_layer_call_and_return_conditional_losses_38186152
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
?
?
while_cond_3819925
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_3819925___redundant_placeholder05
1while_while_cond_3819925___redundant_placeholder15
1while_while_cond_3819925___redundant_placeholder25
1while_while_cond_3819925___redundant_placeholder3
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
.: : : : :??????????: ::::: 
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
:??????????:

_output_shapes
: :

_output_shapes
:
?W
?
while_body_3820097
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_gru_cell_78_matmul_readvariableop_resource_0:	?B
3while_gru_cell_78_biasadd_readvariableop_resource_0:	??
+while_gru_cell_78_readvariableop_resource_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_gru_cell_78_matmul_readvariableop_resource:	?@
1while_gru_cell_78_biasadd_readvariableop_resource:	?=
)while_gru_cell_78_readvariableop_resource:
????(while/gru_cell_78/BiasAdd/ReadVariableOp?'while/gru_cell_78/MatMul/ReadVariableOp? while/gru_cell_78/ReadVariableOp?"while/gru_cell_78/ReadVariableOp_1?
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
'while/gru_cell_78/MatMul/ReadVariableOpReadVariableOp2while_gru_cell_78_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02)
'while/gru_cell_78/MatMul/ReadVariableOp?
while/gru_cell_78/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/gru_cell_78/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/MatMul?
(while/gru_cell_78/BiasAdd/ReadVariableOpReadVariableOp3while_gru_cell_78_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/gru_cell_78/BiasAdd/ReadVariableOp?
while/gru_cell_78/BiasAddBiasAdd"while/gru_cell_78/MatMul:product:00while/gru_cell_78/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/BiasAdd?
!while/gru_cell_78/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2#
!while/gru_cell_78/split/split_dim?
while/gru_cell_78/splitSplit*while/gru_cell_78/split/split_dim:output:0"while/gru_cell_78/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
while/gru_cell_78/split?
 while/gru_cell_78/ReadVariableOpReadVariableOp+while_gru_cell_78_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02"
 while/gru_cell_78/ReadVariableOp?
%while/gru_cell_78/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/gru_cell_78/strided_slice/stack?
'while/gru_cell_78/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2)
'while/gru_cell_78/strided_slice/stack_1?
'while/gru_cell_78/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/gru_cell_78/strided_slice/stack_2?
while/gru_cell_78/strided_sliceStridedSlice(while/gru_cell_78/ReadVariableOp:value:0.while/gru_cell_78/strided_slice/stack:output:00while/gru_cell_78/strided_slice/stack_1:output:00while/gru_cell_78/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2!
while/gru_cell_78/strided_slice?
while/gru_cell_78/MatMul_1MatMulwhile_placeholder_2(while/gru_cell_78/strided_slice:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/MatMul_1?
while/gru_cell_78/ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2
while/gru_cell_78/Const?
#while/gru_cell_78/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2%
#while/gru_cell_78/split_1/split_dim?
while/gru_cell_78/split_1SplitV$while/gru_cell_78/MatMul_1:product:0 while/gru_cell_78/Const:output:0,while/gru_cell_78/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:??????????:??????????:????????? *
	num_split2
while/gru_cell_78/split_1?
while/gru_cell_78/addAddV2 while/gru_cell_78/split:output:0"while/gru_cell_78/split_1:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/add?
while/gru_cell_78/SigmoidSigmoidwhile/gru_cell_78/add:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/Sigmoid?
while/gru_cell_78/add_1AddV2 while/gru_cell_78/split:output:1"while/gru_cell_78/split_1:output:1*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/add_1?
while/gru_cell_78/Sigmoid_1Sigmoidwhile/gru_cell_78/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/Sigmoid_1?
while/gru_cell_78/mulMulwhile/gru_cell_78/Sigmoid_1:y:0while_placeholder_2*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/mul?
"while/gru_cell_78/ReadVariableOp_1ReadVariableOp+while_gru_cell_78_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02$
"while/gru_cell_78/ReadVariableOp_1?
'while/gru_cell_78/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2)
'while/gru_cell_78/strided_slice_1/stack?
)while/gru_cell_78/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/gru_cell_78/strided_slice_1/stack_1?
)while/gru_cell_78/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/gru_cell_78/strided_slice_1/stack_2?
!while/gru_cell_78/strided_slice_1StridedSlice*while/gru_cell_78/ReadVariableOp_1:value:00while/gru_cell_78/strided_slice_1/stack:output:02while/gru_cell_78/strided_slice_1/stack_1:output:02while/gru_cell_78/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2#
!while/gru_cell_78/strided_slice_1?
while/gru_cell_78/MatMul_2MatMulwhile/gru_cell_78/mul:z:0*while/gru_cell_78/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/MatMul_2?
while/gru_cell_78/add_2AddV2 while/gru_cell_78/split:output:2$while/gru_cell_78/MatMul_2:product:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/add_2?
while/gru_cell_78/ReluReluwhile/gru_cell_78/add_2:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/Relu?
while/gru_cell_78/mul_1Mulwhile/gru_cell_78/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/mul_1w
while/gru_cell_78/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/gru_cell_78/sub/x?
while/gru_cell_78/subSub while/gru_cell_78/sub/x:output:0while/gru_cell_78/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/sub?
while/gru_cell_78/mul_2Mulwhile/gru_cell_78/sub:z:0$while/gru_cell_78/Relu:activations:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/mul_2?
while/gru_cell_78/add_3AddV2while/gru_cell_78/mul_1:z:0while/gru_cell_78/mul_2:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/add_3?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_78/add_3:z:0*
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
while/IdentityIdentitywhile/add_1:z:0)^while/gru_cell_78/BiasAdd/ReadVariableOp(^while/gru_cell_78/MatMul/ReadVariableOp!^while/gru_cell_78/ReadVariableOp#^while/gru_cell_78/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations)^while/gru_cell_78/BiasAdd/ReadVariableOp(^while/gru_cell_78/MatMul/ReadVariableOp!^while/gru_cell_78/ReadVariableOp#^while/gru_cell_78/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0)^while/gru_cell_78/BiasAdd/ReadVariableOp(^while/gru_cell_78/MatMul/ReadVariableOp!^while/gru_cell_78/ReadVariableOp#^while/gru_cell_78/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/gru_cell_78/BiasAdd/ReadVariableOp(^while/gru_cell_78/MatMul/ReadVariableOp!^while/gru_cell_78/ReadVariableOp#^while/gru_cell_78/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/gru_cell_78/add_3:z:0)^while/gru_cell_78/BiasAdd/ReadVariableOp(^while/gru_cell_78/MatMul/ReadVariableOp!^while/gru_cell_78/ReadVariableOp#^while/gru_cell_78/ReadVariableOp_1*
T0*(
_output_shapes
:??????????2
while/Identity_4"h
1while_gru_cell_78_biasadd_readvariableop_resource3while_gru_cell_78_biasadd_readvariableop_resource_0"f
0while_gru_cell_78_matmul_readvariableop_resource2while_gru_cell_78_matmul_readvariableop_resource_0"X
)while_gru_cell_78_readvariableop_resource+while_gru_cell_78_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2T
(while/gru_cell_78/BiasAdd/ReadVariableOp(while/gru_cell_78/BiasAdd/ReadVariableOp2R
'while/gru_cell_78/MatMul/ReadVariableOp'while/gru_cell_78/MatMul/ReadVariableOp2D
 while/gru_cell_78/ReadVariableOp while/gru_cell_78/ReadVariableOp2H
"while/gru_cell_78/ReadVariableOp_1"while/gru_cell_78/ReadVariableOp_1: 
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
:??????????:

_output_shapes
: :

_output_shapes
: 
?A
?
 __inference__traced_save_3820845
file_prefix/
+savev2_dense_156_kernel_read_readvariableop-
)savev2_dense_156_bias_read_readvariableop/
+savev2_dense_157_kernel_read_readvariableop-
)savev2_dense_157_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop8
4savev2_gru_78_gru_cell_78_kernel_read_readvariableopB
>savev2_gru_78_gru_cell_78_recurrent_kernel_read_readvariableop6
2savev2_gru_78_gru_cell_78_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_156_kernel_m_read_readvariableop4
0savev2_adam_dense_156_bias_m_read_readvariableop6
2savev2_adam_dense_157_kernel_m_read_readvariableop4
0savev2_adam_dense_157_bias_m_read_readvariableop?
;savev2_adam_gru_78_gru_cell_78_kernel_m_read_readvariableopI
Esavev2_adam_gru_78_gru_cell_78_recurrent_kernel_m_read_readvariableop=
9savev2_adam_gru_78_gru_cell_78_bias_m_read_readvariableop6
2savev2_adam_dense_156_kernel_v_read_readvariableop4
0savev2_adam_dense_156_bias_v_read_readvariableop6
2savev2_adam_dense_157_kernel_v_read_readvariableop4
0savev2_adam_dense_157_bias_v_read_readvariableop?
;savev2_adam_gru_78_gru_cell_78_kernel_v_read_readvariableopI
Esavev2_adam_gru_78_gru_cell_78_recurrent_kernel_v_read_readvariableop=
9savev2_adam_gru_78_gru_cell_78_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_156_kernel_read_readvariableop)savev2_dense_156_bias_read_readvariableop+savev2_dense_157_kernel_read_readvariableop)savev2_dense_157_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop4savev2_gru_78_gru_cell_78_kernel_read_readvariableop>savev2_gru_78_gru_cell_78_recurrent_kernel_read_readvariableop2savev2_gru_78_gru_cell_78_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_156_kernel_m_read_readvariableop0savev2_adam_dense_156_bias_m_read_readvariableop2savev2_adam_dense_157_kernel_m_read_readvariableop0savev2_adam_dense_157_bias_m_read_readvariableop;savev2_adam_gru_78_gru_cell_78_kernel_m_read_readvariableopEsavev2_adam_gru_78_gru_cell_78_recurrent_kernel_m_read_readvariableop9savev2_adam_gru_78_gru_cell_78_bias_m_read_readvariableop2savev2_adam_dense_156_kernel_v_read_readvariableop0savev2_adam_dense_156_bias_v_read_readvariableop2savev2_adam_dense_157_kernel_v_read_readvariableop0savev2_adam_dense_157_bias_v_read_readvariableop;savev2_adam_gru_78_gru_cell_78_kernel_v_read_readvariableopEsavev2_adam_gru_78_gru_cell_78_recurrent_kernel_v_read_readvariableop9savev2_adam_gru_78_gru_cell_78_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?: :	?d:d:d:: : : : : :	?:
??:?: : :	?d:d:d::	?:
??:?:	?d:d:d::	?:
??:?: 2(
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
:	?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:
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
:	?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

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
:	?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:

_output_shapes
: 
?d
?	
gru_78_while_body_3819520*
&gru_78_while_gru_78_while_loop_counter0
,gru_78_while_gru_78_while_maximum_iterations
gru_78_while_placeholder
gru_78_while_placeholder_1
gru_78_while_placeholder_2)
%gru_78_while_gru_78_strided_slice_1_0e
agru_78_while_tensorarrayv2read_tensorlistgetitem_gru_78_tensorarrayunstack_tensorlistfromtensor_0L
9gru_78_while_gru_cell_78_matmul_readvariableop_resource_0:	?I
:gru_78_while_gru_cell_78_biasadd_readvariableop_resource_0:	?F
2gru_78_while_gru_cell_78_readvariableop_resource_0:
??
gru_78_while_identity
gru_78_while_identity_1
gru_78_while_identity_2
gru_78_while_identity_3
gru_78_while_identity_4'
#gru_78_while_gru_78_strided_slice_1c
_gru_78_while_tensorarrayv2read_tensorlistgetitem_gru_78_tensorarrayunstack_tensorlistfromtensorJ
7gru_78_while_gru_cell_78_matmul_readvariableop_resource:	?G
8gru_78_while_gru_cell_78_biasadd_readvariableop_resource:	?D
0gru_78_while_gru_cell_78_readvariableop_resource:
????/gru_78/while/gru_cell_78/BiasAdd/ReadVariableOp?.gru_78/while/gru_cell_78/MatMul/ReadVariableOp?'gru_78/while/gru_cell_78/ReadVariableOp?)gru_78/while/gru_cell_78/ReadVariableOp_1?
>gru_78/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2@
>gru_78/while/TensorArrayV2Read/TensorListGetItem/element_shape?
0gru_78/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemagru_78_while_tensorarrayv2read_tensorlistgetitem_gru_78_tensorarrayunstack_tensorlistfromtensor_0gru_78_while_placeholderGgru_78/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype022
0gru_78/while/TensorArrayV2Read/TensorListGetItem?
.gru_78/while/gru_cell_78/MatMul/ReadVariableOpReadVariableOp9gru_78_while_gru_cell_78_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype020
.gru_78/while/gru_cell_78/MatMul/ReadVariableOp?
gru_78/while/gru_cell_78/MatMulMatMul7gru_78/while/TensorArrayV2Read/TensorListGetItem:item:06gru_78/while/gru_cell_78/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2!
gru_78/while/gru_cell_78/MatMul?
/gru_78/while/gru_cell_78/BiasAdd/ReadVariableOpReadVariableOp:gru_78_while_gru_cell_78_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype021
/gru_78/while/gru_cell_78/BiasAdd/ReadVariableOp?
 gru_78/while/gru_cell_78/BiasAddBiasAdd)gru_78/while/gru_cell_78/MatMul:product:07gru_78/while/gru_cell_78/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2"
 gru_78/while/gru_cell_78/BiasAdd?
(gru_78/while/gru_cell_78/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2*
(gru_78/while/gru_cell_78/split/split_dim?
gru_78/while/gru_cell_78/splitSplit1gru_78/while/gru_cell_78/split/split_dim:output:0)gru_78/while/gru_cell_78/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2 
gru_78/while/gru_cell_78/split?
'gru_78/while/gru_cell_78/ReadVariableOpReadVariableOp2gru_78_while_gru_cell_78_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02)
'gru_78/while/gru_cell_78/ReadVariableOp?
,gru_78/while/gru_cell_78/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2.
,gru_78/while/gru_cell_78/strided_slice/stack?
.gru_78/while/gru_cell_78/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  20
.gru_78/while/gru_cell_78/strided_slice/stack_1?
.gru_78/while/gru_cell_78/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.gru_78/while/gru_cell_78/strided_slice/stack_2?
&gru_78/while/gru_cell_78/strided_sliceStridedSlice/gru_78/while/gru_cell_78/ReadVariableOp:value:05gru_78/while/gru_cell_78/strided_slice/stack:output:07gru_78/while/gru_cell_78/strided_slice/stack_1:output:07gru_78/while/gru_cell_78/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2(
&gru_78/while/gru_cell_78/strided_slice?
!gru_78/while/gru_cell_78/MatMul_1MatMulgru_78_while_placeholder_2/gru_78/while/gru_cell_78/strided_slice:output:0*
T0*(
_output_shapes
:??????????2#
!gru_78/while/gru_cell_78/MatMul_1?
gru_78/while/gru_cell_78/ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2 
gru_78/while/gru_cell_78/Const?
*gru_78/while/gru_cell_78/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2,
*gru_78/while/gru_cell_78/split_1/split_dim?
 gru_78/while/gru_cell_78/split_1SplitV+gru_78/while/gru_cell_78/MatMul_1:product:0'gru_78/while/gru_cell_78/Const:output:03gru_78/while/gru_cell_78/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:??????????:??????????:????????? *
	num_split2"
 gru_78/while/gru_cell_78/split_1?
gru_78/while/gru_cell_78/addAddV2'gru_78/while/gru_cell_78/split:output:0)gru_78/while/gru_cell_78/split_1:output:0*
T0*(
_output_shapes
:??????????2
gru_78/while/gru_cell_78/add?
 gru_78/while/gru_cell_78/SigmoidSigmoid gru_78/while/gru_cell_78/add:z:0*
T0*(
_output_shapes
:??????????2"
 gru_78/while/gru_cell_78/Sigmoid?
gru_78/while/gru_cell_78/add_1AddV2'gru_78/while/gru_cell_78/split:output:1)gru_78/while/gru_cell_78/split_1:output:1*
T0*(
_output_shapes
:??????????2 
gru_78/while/gru_cell_78/add_1?
"gru_78/while/gru_cell_78/Sigmoid_1Sigmoid"gru_78/while/gru_cell_78/add_1:z:0*
T0*(
_output_shapes
:??????????2$
"gru_78/while/gru_cell_78/Sigmoid_1?
gru_78/while/gru_cell_78/mulMul&gru_78/while/gru_cell_78/Sigmoid_1:y:0gru_78_while_placeholder_2*
T0*(
_output_shapes
:??????????2
gru_78/while/gru_cell_78/mul?
)gru_78/while/gru_cell_78/ReadVariableOp_1ReadVariableOp2gru_78_while_gru_cell_78_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02+
)gru_78/while/gru_cell_78/ReadVariableOp_1?
.gru_78/while/gru_cell_78/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  20
.gru_78/while/gru_cell_78/strided_slice_1/stack?
0gru_78/while/gru_cell_78/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        22
0gru_78/while/gru_cell_78/strided_slice_1/stack_1?
0gru_78/while/gru_cell_78/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0gru_78/while/gru_cell_78/strided_slice_1/stack_2?
(gru_78/while/gru_cell_78/strided_slice_1StridedSlice1gru_78/while/gru_cell_78/ReadVariableOp_1:value:07gru_78/while/gru_cell_78/strided_slice_1/stack:output:09gru_78/while/gru_cell_78/strided_slice_1/stack_1:output:09gru_78/while/gru_cell_78/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2*
(gru_78/while/gru_cell_78/strided_slice_1?
!gru_78/while/gru_cell_78/MatMul_2MatMul gru_78/while/gru_cell_78/mul:z:01gru_78/while/gru_cell_78/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2#
!gru_78/while/gru_cell_78/MatMul_2?
gru_78/while/gru_cell_78/add_2AddV2'gru_78/while/gru_cell_78/split:output:2+gru_78/while/gru_cell_78/MatMul_2:product:0*
T0*(
_output_shapes
:??????????2 
gru_78/while/gru_cell_78/add_2?
gru_78/while/gru_cell_78/ReluRelu"gru_78/while/gru_cell_78/add_2:z:0*
T0*(
_output_shapes
:??????????2
gru_78/while/gru_cell_78/Relu?
gru_78/while/gru_cell_78/mul_1Mul$gru_78/while/gru_cell_78/Sigmoid:y:0gru_78_while_placeholder_2*
T0*(
_output_shapes
:??????????2 
gru_78/while/gru_cell_78/mul_1?
gru_78/while/gru_cell_78/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2 
gru_78/while/gru_cell_78/sub/x?
gru_78/while/gru_cell_78/subSub'gru_78/while/gru_cell_78/sub/x:output:0$gru_78/while/gru_cell_78/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
gru_78/while/gru_cell_78/sub?
gru_78/while/gru_cell_78/mul_2Mul gru_78/while/gru_cell_78/sub:z:0+gru_78/while/gru_cell_78/Relu:activations:0*
T0*(
_output_shapes
:??????????2 
gru_78/while/gru_cell_78/mul_2?
gru_78/while/gru_cell_78/add_3AddV2"gru_78/while/gru_cell_78/mul_1:z:0"gru_78/while/gru_cell_78/mul_2:z:0*
T0*(
_output_shapes
:??????????2 
gru_78/while/gru_cell_78/add_3?
1gru_78/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemgru_78_while_placeholder_1gru_78_while_placeholder"gru_78/while/gru_cell_78/add_3:z:0*
_output_shapes
: *
element_dtype023
1gru_78/while/TensorArrayV2Write/TensorListSetItemj
gru_78/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru_78/while/add/y?
gru_78/while/addAddV2gru_78_while_placeholdergru_78/while/add/y:output:0*
T0*
_output_shapes
: 2
gru_78/while/addn
gru_78/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru_78/while/add_1/y?
gru_78/while/add_1AddV2&gru_78_while_gru_78_while_loop_countergru_78/while/add_1/y:output:0*
T0*
_output_shapes
: 2
gru_78/while/add_1?
gru_78/while/IdentityIdentitygru_78/while/add_1:z:00^gru_78/while/gru_cell_78/BiasAdd/ReadVariableOp/^gru_78/while/gru_cell_78/MatMul/ReadVariableOp(^gru_78/while/gru_cell_78/ReadVariableOp*^gru_78/while/gru_cell_78/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_78/while/Identity?
gru_78/while/Identity_1Identity,gru_78_while_gru_78_while_maximum_iterations0^gru_78/while/gru_cell_78/BiasAdd/ReadVariableOp/^gru_78/while/gru_cell_78/MatMul/ReadVariableOp(^gru_78/while/gru_cell_78/ReadVariableOp*^gru_78/while/gru_cell_78/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_78/while/Identity_1?
gru_78/while/Identity_2Identitygru_78/while/add:z:00^gru_78/while/gru_cell_78/BiasAdd/ReadVariableOp/^gru_78/while/gru_cell_78/MatMul/ReadVariableOp(^gru_78/while/gru_cell_78/ReadVariableOp*^gru_78/while/gru_cell_78/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_78/while/Identity_2?
gru_78/while/Identity_3IdentityAgru_78/while/TensorArrayV2Write/TensorListSetItem:output_handle:00^gru_78/while/gru_cell_78/BiasAdd/ReadVariableOp/^gru_78/while/gru_cell_78/MatMul/ReadVariableOp(^gru_78/while/gru_cell_78/ReadVariableOp*^gru_78/while/gru_cell_78/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_78/while/Identity_3?
gru_78/while/Identity_4Identity"gru_78/while/gru_cell_78/add_3:z:00^gru_78/while/gru_cell_78/BiasAdd/ReadVariableOp/^gru_78/while/gru_cell_78/MatMul/ReadVariableOp(^gru_78/while/gru_cell_78/ReadVariableOp*^gru_78/while/gru_cell_78/ReadVariableOp_1*
T0*(
_output_shapes
:??????????2
gru_78/while/Identity_4"L
#gru_78_while_gru_78_strided_slice_1%gru_78_while_gru_78_strided_slice_1_0"v
8gru_78_while_gru_cell_78_biasadd_readvariableop_resource:gru_78_while_gru_cell_78_biasadd_readvariableop_resource_0"t
7gru_78_while_gru_cell_78_matmul_readvariableop_resource9gru_78_while_gru_cell_78_matmul_readvariableop_resource_0"f
0gru_78_while_gru_cell_78_readvariableop_resource2gru_78_while_gru_cell_78_readvariableop_resource_0"7
gru_78_while_identitygru_78/while/Identity:output:0";
gru_78_while_identity_1 gru_78/while/Identity_1:output:0";
gru_78_while_identity_2 gru_78/while/Identity_2:output:0";
gru_78_while_identity_3 gru_78/while/Identity_3:output:0";
gru_78_while_identity_4 gru_78/while/Identity_4:output:0"?
_gru_78_while_tensorarrayv2read_tensorlistgetitem_gru_78_tensorarrayunstack_tensorlistfromtensoragru_78_while_tensorarrayv2read_tensorlistgetitem_gru_78_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2b
/gru_78/while/gru_cell_78/BiasAdd/ReadVariableOp/gru_78/while/gru_cell_78/BiasAdd/ReadVariableOp2`
.gru_78/while/gru_cell_78/MatMul/ReadVariableOp.gru_78/while/gru_cell_78/MatMul/ReadVariableOp2R
'gru_78/while/gru_cell_78/ReadVariableOp'gru_78/while/gru_cell_78/ReadVariableOp2V
)gru_78/while/gru_cell_78/ReadVariableOp_1)gru_78/while/gru_cell_78/ReadVariableOp_1: 
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
:??????????:

_output_shapes
: :

_output_shapes
: 
?W
?
while_body_3819926
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_gru_cell_78_matmul_readvariableop_resource_0:	?B
3while_gru_cell_78_biasadd_readvariableop_resource_0:	??
+while_gru_cell_78_readvariableop_resource_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_gru_cell_78_matmul_readvariableop_resource:	?@
1while_gru_cell_78_biasadd_readvariableop_resource:	?=
)while_gru_cell_78_readvariableop_resource:
????(while/gru_cell_78/BiasAdd/ReadVariableOp?'while/gru_cell_78/MatMul/ReadVariableOp? while/gru_cell_78/ReadVariableOp?"while/gru_cell_78/ReadVariableOp_1?
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
'while/gru_cell_78/MatMul/ReadVariableOpReadVariableOp2while_gru_cell_78_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02)
'while/gru_cell_78/MatMul/ReadVariableOp?
while/gru_cell_78/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/gru_cell_78/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/MatMul?
(while/gru_cell_78/BiasAdd/ReadVariableOpReadVariableOp3while_gru_cell_78_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/gru_cell_78/BiasAdd/ReadVariableOp?
while/gru_cell_78/BiasAddBiasAdd"while/gru_cell_78/MatMul:product:00while/gru_cell_78/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/BiasAdd?
!while/gru_cell_78/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2#
!while/gru_cell_78/split/split_dim?
while/gru_cell_78/splitSplit*while/gru_cell_78/split/split_dim:output:0"while/gru_cell_78/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
while/gru_cell_78/split?
 while/gru_cell_78/ReadVariableOpReadVariableOp+while_gru_cell_78_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02"
 while/gru_cell_78/ReadVariableOp?
%while/gru_cell_78/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/gru_cell_78/strided_slice/stack?
'while/gru_cell_78/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2)
'while/gru_cell_78/strided_slice/stack_1?
'while/gru_cell_78/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/gru_cell_78/strided_slice/stack_2?
while/gru_cell_78/strided_sliceStridedSlice(while/gru_cell_78/ReadVariableOp:value:0.while/gru_cell_78/strided_slice/stack:output:00while/gru_cell_78/strided_slice/stack_1:output:00while/gru_cell_78/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2!
while/gru_cell_78/strided_slice?
while/gru_cell_78/MatMul_1MatMulwhile_placeholder_2(while/gru_cell_78/strided_slice:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/MatMul_1?
while/gru_cell_78/ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2
while/gru_cell_78/Const?
#while/gru_cell_78/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2%
#while/gru_cell_78/split_1/split_dim?
while/gru_cell_78/split_1SplitV$while/gru_cell_78/MatMul_1:product:0 while/gru_cell_78/Const:output:0,while/gru_cell_78/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:??????????:??????????:????????? *
	num_split2
while/gru_cell_78/split_1?
while/gru_cell_78/addAddV2 while/gru_cell_78/split:output:0"while/gru_cell_78/split_1:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/add?
while/gru_cell_78/SigmoidSigmoidwhile/gru_cell_78/add:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/Sigmoid?
while/gru_cell_78/add_1AddV2 while/gru_cell_78/split:output:1"while/gru_cell_78/split_1:output:1*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/add_1?
while/gru_cell_78/Sigmoid_1Sigmoidwhile/gru_cell_78/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/Sigmoid_1?
while/gru_cell_78/mulMulwhile/gru_cell_78/Sigmoid_1:y:0while_placeholder_2*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/mul?
"while/gru_cell_78/ReadVariableOp_1ReadVariableOp+while_gru_cell_78_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02$
"while/gru_cell_78/ReadVariableOp_1?
'while/gru_cell_78/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2)
'while/gru_cell_78/strided_slice_1/stack?
)while/gru_cell_78/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/gru_cell_78/strided_slice_1/stack_1?
)while/gru_cell_78/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/gru_cell_78/strided_slice_1/stack_2?
!while/gru_cell_78/strided_slice_1StridedSlice*while/gru_cell_78/ReadVariableOp_1:value:00while/gru_cell_78/strided_slice_1/stack:output:02while/gru_cell_78/strided_slice_1/stack_1:output:02while/gru_cell_78/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2#
!while/gru_cell_78/strided_slice_1?
while/gru_cell_78/MatMul_2MatMulwhile/gru_cell_78/mul:z:0*while/gru_cell_78/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/MatMul_2?
while/gru_cell_78/add_2AddV2 while/gru_cell_78/split:output:2$while/gru_cell_78/MatMul_2:product:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/add_2?
while/gru_cell_78/ReluReluwhile/gru_cell_78/add_2:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/Relu?
while/gru_cell_78/mul_1Mulwhile/gru_cell_78/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/mul_1w
while/gru_cell_78/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/gru_cell_78/sub/x?
while/gru_cell_78/subSub while/gru_cell_78/sub/x:output:0while/gru_cell_78/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/sub?
while/gru_cell_78/mul_2Mulwhile/gru_cell_78/sub:z:0$while/gru_cell_78/Relu:activations:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/mul_2?
while/gru_cell_78/add_3AddV2while/gru_cell_78/mul_1:z:0while/gru_cell_78/mul_2:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/add_3?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_78/add_3:z:0*
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
while/IdentityIdentitywhile/add_1:z:0)^while/gru_cell_78/BiasAdd/ReadVariableOp(^while/gru_cell_78/MatMul/ReadVariableOp!^while/gru_cell_78/ReadVariableOp#^while/gru_cell_78/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations)^while/gru_cell_78/BiasAdd/ReadVariableOp(^while/gru_cell_78/MatMul/ReadVariableOp!^while/gru_cell_78/ReadVariableOp#^while/gru_cell_78/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0)^while/gru_cell_78/BiasAdd/ReadVariableOp(^while/gru_cell_78/MatMul/ReadVariableOp!^while/gru_cell_78/ReadVariableOp#^while/gru_cell_78/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/gru_cell_78/BiasAdd/ReadVariableOp(^while/gru_cell_78/MatMul/ReadVariableOp!^while/gru_cell_78/ReadVariableOp#^while/gru_cell_78/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/gru_cell_78/add_3:z:0)^while/gru_cell_78/BiasAdd/ReadVariableOp(^while/gru_cell_78/MatMul/ReadVariableOp!^while/gru_cell_78/ReadVariableOp#^while/gru_cell_78/ReadVariableOp_1*
T0*(
_output_shapes
:??????????2
while/Identity_4"h
1while_gru_cell_78_biasadd_readvariableop_resource3while_gru_cell_78_biasadd_readvariableop_resource_0"f
0while_gru_cell_78_matmul_readvariableop_resource2while_gru_cell_78_matmul_readvariableop_resource_0"X
)while_gru_cell_78_readvariableop_resource+while_gru_cell_78_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2T
(while/gru_cell_78/BiasAdd/ReadVariableOp(while/gru_cell_78/BiasAdd/ReadVariableOp2R
'while/gru_cell_78/MatMul/ReadVariableOp'while/gru_cell_78/MatMul/ReadVariableOp2D
 while/gru_cell_78/ReadVariableOp while/gru_cell_78/ReadVariableOp2H
"while/gru_cell_78/ReadVariableOp_1"while/gru_cell_78/ReadVariableOp_1: 
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
:??????????:

_output_shapes
: :

_output_shapes
: 
?h
?
C__inference_gru_78_layer_call_and_return_conditional_losses_3819026

inputs=
*gru_cell_78_matmul_readvariableop_resource:	?:
+gru_cell_78_biasadd_readvariableop_resource:	?7
#gru_cell_78_readvariableop_resource:
??
identity??"gru_cell_78/BiasAdd/ReadVariableOp?!gru_cell_78/MatMul/ReadVariableOp?gru_cell_78/ReadVariableOp?gru_cell_78/ReadVariableOp_1?whileD
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
!gru_cell_78/MatMul/ReadVariableOpReadVariableOp*gru_cell_78_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!gru_cell_78/MatMul/ReadVariableOp?
gru_cell_78/MatMulMatMulstrided_slice_2:output:0)gru_cell_78/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/MatMul?
"gru_cell_78/BiasAdd/ReadVariableOpReadVariableOp+gru_cell_78_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"gru_cell_78/BiasAdd/ReadVariableOp?
gru_cell_78/BiasAddBiasAddgru_cell_78/MatMul:product:0*gru_cell_78/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/BiasAdd?
gru_cell_78/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_78/split/split_dim?
gru_cell_78/splitSplit$gru_cell_78/split/split_dim:output:0gru_cell_78/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
gru_cell_78/split?
gru_cell_78/ReadVariableOpReadVariableOp#gru_cell_78_readvariableop_resource* 
_output_shapes
:
??*
dtype02
gru_cell_78/ReadVariableOp?
gru_cell_78/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
gru_cell_78/strided_slice/stack?
!gru_cell_78/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2#
!gru_cell_78/strided_slice/stack_1?
!gru_cell_78/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!gru_cell_78/strided_slice/stack_2?
gru_cell_78/strided_sliceStridedSlice"gru_cell_78/ReadVariableOp:value:0(gru_cell_78/strided_slice/stack:output:0*gru_cell_78/strided_slice/stack_1:output:0*gru_cell_78/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
gru_cell_78/strided_slice?
gru_cell_78/MatMul_1MatMulzeros:output:0"gru_cell_78/strided_slice:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/MatMul_1{
gru_cell_78/ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2
gru_cell_78/Const?
gru_cell_78/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_78/split_1/split_dim?
gru_cell_78/split_1SplitVgru_cell_78/MatMul_1:product:0gru_cell_78/Const:output:0&gru_cell_78/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:??????????:??????????:????????? *
	num_split2
gru_cell_78/split_1?
gru_cell_78/addAddV2gru_cell_78/split:output:0gru_cell_78/split_1:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/add}
gru_cell_78/SigmoidSigmoidgru_cell_78/add:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/Sigmoid?
gru_cell_78/add_1AddV2gru_cell_78/split:output:1gru_cell_78/split_1:output:1*
T0*(
_output_shapes
:??????????2
gru_cell_78/add_1?
gru_cell_78/Sigmoid_1Sigmoidgru_cell_78/add_1:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/Sigmoid_1?
gru_cell_78/mulMulgru_cell_78/Sigmoid_1:y:0zeros:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/mul?
gru_cell_78/ReadVariableOp_1ReadVariableOp#gru_cell_78_readvariableop_resource* 
_output_shapes
:
??*
dtype02
gru_cell_78/ReadVariableOp_1?
!gru_cell_78/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2#
!gru_cell_78/strided_slice_1/stack?
#gru_cell_78/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#gru_cell_78/strided_slice_1/stack_1?
#gru_cell_78/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gru_cell_78/strided_slice_1/stack_2?
gru_cell_78/strided_slice_1StridedSlice$gru_cell_78/ReadVariableOp_1:value:0*gru_cell_78/strided_slice_1/stack:output:0,gru_cell_78/strided_slice_1/stack_1:output:0,gru_cell_78/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
gru_cell_78/strided_slice_1?
gru_cell_78/MatMul_2MatMulgru_cell_78/mul:z:0$gru_cell_78/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/MatMul_2?
gru_cell_78/add_2AddV2gru_cell_78/split:output:2gru_cell_78/MatMul_2:product:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/add_2v
gru_cell_78/ReluRelugru_cell_78/add_2:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/Relu?
gru_cell_78/mul_1Mulgru_cell_78/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/mul_1k
gru_cell_78/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_cell_78/sub/x?
gru_cell_78/subSubgru_cell_78/sub/x:output:0gru_cell_78/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/sub?
gru_cell_78/mul_2Mulgru_cell_78/sub:z:0gru_cell_78/Relu:activations:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/mul_2?
gru_cell_78/add_3AddV2gru_cell_78/mul_1:z:0gru_cell_78/mul_2:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/add_3?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*gru_cell_78_matmul_readvariableop_resource+gru_cell_78_biasadd_readvariableop_resource#gru_cell_78_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_3818930*
condR
while_cond_3818929*9
output_shapes(
&: : : : :??????????: : : : : *
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
IdentityIdentitystrided_slice_3:output:0#^gru_cell_78/BiasAdd/ReadVariableOp"^gru_cell_78/MatMul/ReadVariableOp^gru_cell_78/ReadVariableOp^gru_cell_78/ReadVariableOp_1^while*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2H
"gru_cell_78/BiasAdd/ReadVariableOp"gru_cell_78/BiasAdd/ReadVariableOp2F
!gru_cell_78/MatMul/ReadVariableOp!gru_cell_78/MatMul/ReadVariableOp28
gru_cell_78/ReadVariableOpgru_cell_78/ReadVariableOp2<
gru_cell_78/ReadVariableOp_1gru_cell_78/ReadVariableOp_12
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?W
?
while_body_3820268
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_gru_cell_78_matmul_readvariableop_resource_0:	?B
3while_gru_cell_78_biasadd_readvariableop_resource_0:	??
+while_gru_cell_78_readvariableop_resource_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_gru_cell_78_matmul_readvariableop_resource:	?@
1while_gru_cell_78_biasadd_readvariableop_resource:	?=
)while_gru_cell_78_readvariableop_resource:
????(while/gru_cell_78/BiasAdd/ReadVariableOp?'while/gru_cell_78/MatMul/ReadVariableOp? while/gru_cell_78/ReadVariableOp?"while/gru_cell_78/ReadVariableOp_1?
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
'while/gru_cell_78/MatMul/ReadVariableOpReadVariableOp2while_gru_cell_78_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02)
'while/gru_cell_78/MatMul/ReadVariableOp?
while/gru_cell_78/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/gru_cell_78/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/MatMul?
(while/gru_cell_78/BiasAdd/ReadVariableOpReadVariableOp3while_gru_cell_78_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/gru_cell_78/BiasAdd/ReadVariableOp?
while/gru_cell_78/BiasAddBiasAdd"while/gru_cell_78/MatMul:product:00while/gru_cell_78/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/BiasAdd?
!while/gru_cell_78/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2#
!while/gru_cell_78/split/split_dim?
while/gru_cell_78/splitSplit*while/gru_cell_78/split/split_dim:output:0"while/gru_cell_78/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
while/gru_cell_78/split?
 while/gru_cell_78/ReadVariableOpReadVariableOp+while_gru_cell_78_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02"
 while/gru_cell_78/ReadVariableOp?
%while/gru_cell_78/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/gru_cell_78/strided_slice/stack?
'while/gru_cell_78/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2)
'while/gru_cell_78/strided_slice/stack_1?
'while/gru_cell_78/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/gru_cell_78/strided_slice/stack_2?
while/gru_cell_78/strided_sliceStridedSlice(while/gru_cell_78/ReadVariableOp:value:0.while/gru_cell_78/strided_slice/stack:output:00while/gru_cell_78/strided_slice/stack_1:output:00while/gru_cell_78/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2!
while/gru_cell_78/strided_slice?
while/gru_cell_78/MatMul_1MatMulwhile_placeholder_2(while/gru_cell_78/strided_slice:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/MatMul_1?
while/gru_cell_78/ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2
while/gru_cell_78/Const?
#while/gru_cell_78/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2%
#while/gru_cell_78/split_1/split_dim?
while/gru_cell_78/split_1SplitV$while/gru_cell_78/MatMul_1:product:0 while/gru_cell_78/Const:output:0,while/gru_cell_78/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:??????????:??????????:????????? *
	num_split2
while/gru_cell_78/split_1?
while/gru_cell_78/addAddV2 while/gru_cell_78/split:output:0"while/gru_cell_78/split_1:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/add?
while/gru_cell_78/SigmoidSigmoidwhile/gru_cell_78/add:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/Sigmoid?
while/gru_cell_78/add_1AddV2 while/gru_cell_78/split:output:1"while/gru_cell_78/split_1:output:1*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/add_1?
while/gru_cell_78/Sigmoid_1Sigmoidwhile/gru_cell_78/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/Sigmoid_1?
while/gru_cell_78/mulMulwhile/gru_cell_78/Sigmoid_1:y:0while_placeholder_2*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/mul?
"while/gru_cell_78/ReadVariableOp_1ReadVariableOp+while_gru_cell_78_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02$
"while/gru_cell_78/ReadVariableOp_1?
'while/gru_cell_78/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2)
'while/gru_cell_78/strided_slice_1/stack?
)while/gru_cell_78/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/gru_cell_78/strided_slice_1/stack_1?
)while/gru_cell_78/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/gru_cell_78/strided_slice_1/stack_2?
!while/gru_cell_78/strided_slice_1StridedSlice*while/gru_cell_78/ReadVariableOp_1:value:00while/gru_cell_78/strided_slice_1/stack:output:02while/gru_cell_78/strided_slice_1/stack_1:output:02while/gru_cell_78/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2#
!while/gru_cell_78/strided_slice_1?
while/gru_cell_78/MatMul_2MatMulwhile/gru_cell_78/mul:z:0*while/gru_cell_78/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/MatMul_2?
while/gru_cell_78/add_2AddV2 while/gru_cell_78/split:output:2$while/gru_cell_78/MatMul_2:product:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/add_2?
while/gru_cell_78/ReluReluwhile/gru_cell_78/add_2:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/Relu?
while/gru_cell_78/mul_1Mulwhile/gru_cell_78/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/mul_1w
while/gru_cell_78/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/gru_cell_78/sub/x?
while/gru_cell_78/subSub while/gru_cell_78/sub/x:output:0while/gru_cell_78/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/sub?
while/gru_cell_78/mul_2Mulwhile/gru_cell_78/sub:z:0$while/gru_cell_78/Relu:activations:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/mul_2?
while/gru_cell_78/add_3AddV2while/gru_cell_78/mul_1:z:0while/gru_cell_78/mul_2:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_78/add_3?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_78/add_3:z:0*
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
while/IdentityIdentitywhile/add_1:z:0)^while/gru_cell_78/BiasAdd/ReadVariableOp(^while/gru_cell_78/MatMul/ReadVariableOp!^while/gru_cell_78/ReadVariableOp#^while/gru_cell_78/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations)^while/gru_cell_78/BiasAdd/ReadVariableOp(^while/gru_cell_78/MatMul/ReadVariableOp!^while/gru_cell_78/ReadVariableOp#^while/gru_cell_78/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0)^while/gru_cell_78/BiasAdd/ReadVariableOp(^while/gru_cell_78/MatMul/ReadVariableOp!^while/gru_cell_78/ReadVariableOp#^while/gru_cell_78/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/gru_cell_78/BiasAdd/ReadVariableOp(^while/gru_cell_78/MatMul/ReadVariableOp!^while/gru_cell_78/ReadVariableOp#^while/gru_cell_78/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/gru_cell_78/add_3:z:0)^while/gru_cell_78/BiasAdd/ReadVariableOp(^while/gru_cell_78/MatMul/ReadVariableOp!^while/gru_cell_78/ReadVariableOp#^while/gru_cell_78/ReadVariableOp_1*
T0*(
_output_shapes
:??????????2
while/Identity_4"h
1while_gru_cell_78_biasadd_readvariableop_resource3while_gru_cell_78_biasadd_readvariableop_resource_0"f
0while_gru_cell_78_matmul_readvariableop_resource2while_gru_cell_78_matmul_readvariableop_resource_0"X
)while_gru_cell_78_readvariableop_resource+while_gru_cell_78_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2T
(while/gru_cell_78/BiasAdd/ReadVariableOp(while/gru_cell_78/BiasAdd/ReadVariableOp2R
'while/gru_cell_78/MatMul/ReadVariableOp'while/gru_cell_78/MatMul/ReadVariableOp2D
 while/gru_cell_78/ReadVariableOp while/gru_cell_78/ReadVariableOp2H
"while/gru_cell_78/ReadVariableOp_1"while/gru_cell_78/ReadVariableOp_1: 
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
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
(__inference_gru_78_layer_call_fn_3820568

inputs
unknown:	?
	unknown_0:	?
	unknown_1:
??
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
C__inference_gru_78_layer_call_and_return_conditional_losses_38190262
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
?	
?
/__inference_sequential_78_layer_call_fn_3819832

inputs
unknown:	?
	unknown_0:	?
	unknown_1:
??
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
GPU 2J 8? *S
fNRL
J__inference_sequential_78_layer_call_and_return_conditional_losses_38190682
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
?"
?
while_body_3818551
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_gru_cell_78_3818573_0:	?*
while_gru_cell_78_3818575_0:	?/
while_gru_cell_78_3818577_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_gru_cell_78_3818573:	?(
while_gru_cell_78_3818575:	?-
while_gru_cell_78_3818577:
????)while/gru_cell_78/StatefulPartitionedCall?
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
)while/gru_cell_78/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_gru_cell_78_3818573_0while_gru_cell_78_3818575_0while_gru_cell_78_3818577_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_gru_cell_78_layer_call_and_return_conditional_losses_38184842+
)while/gru_cell_78/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/gru_cell_78/StatefulPartitionedCall:output:0*
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
while/IdentityIdentitywhile/add_1:z:0*^while/gru_cell_78/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations*^while/gru_cell_78/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0*^while/gru_cell_78/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/gru_cell_78/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity2while/gru_cell_78/StatefulPartitionedCall:output:1*^while/gru_cell_78/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
while/Identity_4"8
while_gru_cell_78_3818573while_gru_cell_78_3818573_0"8
while_gru_cell_78_3818575while_gru_cell_78_3818575_0"8
while_gru_cell_78_3818577while_gru_cell_78_3818577_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2V
)while/gru_cell_78/StatefulPartitionedCall)while/gru_cell_78/StatefulPartitionedCall: 
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
:??????????:

_output_shapes
: :

_output_shapes
: 
?i
?
C__inference_gru_78_layer_call_and_return_conditional_losses_3820022
inputs_0=
*gru_cell_78_matmul_readvariableop_resource:	?:
+gru_cell_78_biasadd_readvariableop_resource:	?7
#gru_cell_78_readvariableop_resource:
??
identity??"gru_cell_78/BiasAdd/ReadVariableOp?!gru_cell_78/MatMul/ReadVariableOp?gru_cell_78/ReadVariableOp?gru_cell_78/ReadVariableOp_1?whileF
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
zerosu
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
!gru_cell_78/MatMul/ReadVariableOpReadVariableOp*gru_cell_78_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!gru_cell_78/MatMul/ReadVariableOp?
gru_cell_78/MatMulMatMulstrided_slice_2:output:0)gru_cell_78/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/MatMul?
"gru_cell_78/BiasAdd/ReadVariableOpReadVariableOp+gru_cell_78_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"gru_cell_78/BiasAdd/ReadVariableOp?
gru_cell_78/BiasAddBiasAddgru_cell_78/MatMul:product:0*gru_cell_78/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/BiasAdd?
gru_cell_78/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_78/split/split_dim?
gru_cell_78/splitSplit$gru_cell_78/split/split_dim:output:0gru_cell_78/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
gru_cell_78/split?
gru_cell_78/ReadVariableOpReadVariableOp#gru_cell_78_readvariableop_resource* 
_output_shapes
:
??*
dtype02
gru_cell_78/ReadVariableOp?
gru_cell_78/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
gru_cell_78/strided_slice/stack?
!gru_cell_78/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2#
!gru_cell_78/strided_slice/stack_1?
!gru_cell_78/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!gru_cell_78/strided_slice/stack_2?
gru_cell_78/strided_sliceStridedSlice"gru_cell_78/ReadVariableOp:value:0(gru_cell_78/strided_slice/stack:output:0*gru_cell_78/strided_slice/stack_1:output:0*gru_cell_78/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
gru_cell_78/strided_slice?
gru_cell_78/MatMul_1MatMulzeros:output:0"gru_cell_78/strided_slice:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/MatMul_1{
gru_cell_78/ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2
gru_cell_78/Const?
gru_cell_78/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_78/split_1/split_dim?
gru_cell_78/split_1SplitVgru_cell_78/MatMul_1:product:0gru_cell_78/Const:output:0&gru_cell_78/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:??????????:??????????:????????? *
	num_split2
gru_cell_78/split_1?
gru_cell_78/addAddV2gru_cell_78/split:output:0gru_cell_78/split_1:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/add}
gru_cell_78/SigmoidSigmoidgru_cell_78/add:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/Sigmoid?
gru_cell_78/add_1AddV2gru_cell_78/split:output:1gru_cell_78/split_1:output:1*
T0*(
_output_shapes
:??????????2
gru_cell_78/add_1?
gru_cell_78/Sigmoid_1Sigmoidgru_cell_78/add_1:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/Sigmoid_1?
gru_cell_78/mulMulgru_cell_78/Sigmoid_1:y:0zeros:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/mul?
gru_cell_78/ReadVariableOp_1ReadVariableOp#gru_cell_78_readvariableop_resource* 
_output_shapes
:
??*
dtype02
gru_cell_78/ReadVariableOp_1?
!gru_cell_78/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2#
!gru_cell_78/strided_slice_1/stack?
#gru_cell_78/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#gru_cell_78/strided_slice_1/stack_1?
#gru_cell_78/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gru_cell_78/strided_slice_1/stack_2?
gru_cell_78/strided_slice_1StridedSlice$gru_cell_78/ReadVariableOp_1:value:0*gru_cell_78/strided_slice_1/stack:output:0,gru_cell_78/strided_slice_1/stack_1:output:0,gru_cell_78/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
gru_cell_78/strided_slice_1?
gru_cell_78/MatMul_2MatMulgru_cell_78/mul:z:0$gru_cell_78/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/MatMul_2?
gru_cell_78/add_2AddV2gru_cell_78/split:output:2gru_cell_78/MatMul_2:product:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/add_2v
gru_cell_78/ReluRelugru_cell_78/add_2:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/Relu?
gru_cell_78/mul_1Mulgru_cell_78/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/mul_1k
gru_cell_78/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_cell_78/sub/x?
gru_cell_78/subSubgru_cell_78/sub/x:output:0gru_cell_78/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/sub?
gru_cell_78/mul_2Mulgru_cell_78/sub:z:0gru_cell_78/Relu:activations:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/mul_2?
gru_cell_78/add_3AddV2gru_cell_78/mul_1:z:0gru_cell_78/mul_2:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/add_3?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*gru_cell_78_matmul_readvariableop_resource+gru_cell_78_biasadd_readvariableop_resource#gru_cell_78_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_3819926*
condR
while_cond_3819925*9
output_shapes(
&: : : : :??????????: : : : : *
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
IdentityIdentitystrided_slice_3:output:0#^gru_cell_78/BiasAdd/ReadVariableOp"^gru_cell_78/MatMul/ReadVariableOp^gru_cell_78/ReadVariableOp^gru_cell_78/ReadVariableOp_1^while*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2H
"gru_cell_78/BiasAdd/ReadVariableOp"gru_cell_78/BiasAdd/ReadVariableOp2F
!gru_cell_78/MatMul/ReadVariableOp!gru_cell_78/MatMul/ReadVariableOp28
gru_cell_78/ReadVariableOpgru_cell_78/ReadVariableOp2<
gru_cell_78/ReadVariableOp_1gru_cell_78/ReadVariableOp_12
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?	
?
gru_78_while_cond_3819703*
&gru_78_while_gru_78_while_loop_counter0
,gru_78_while_gru_78_while_maximum_iterations
gru_78_while_placeholder
gru_78_while_placeholder_1
gru_78_while_placeholder_2,
(gru_78_while_less_gru_78_strided_slice_1C
?gru_78_while_gru_78_while_cond_3819703___redundant_placeholder0C
?gru_78_while_gru_78_while_cond_3819703___redundant_placeholder1C
?gru_78_while_gru_78_while_cond_3819703___redundant_placeholder2C
?gru_78_while_gru_78_while_cond_3819703___redundant_placeholder3
gru_78_while_identity
?
gru_78/while/LessLessgru_78_while_placeholder(gru_78_while_less_gru_78_strided_slice_1*
T0*
_output_shapes
: 2
gru_78/while/Lessr
gru_78/while/IdentityIdentitygru_78/while/Less:z:0*
T0
*
_output_shapes
: 2
gru_78/while/Identity"7
gru_78_while_identitygru_78/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :??????????: ::::: 
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
:??????????:

_output_shapes
: :

_output_shapes
:
?
?
J__inference_sequential_78_layer_call_and_return_conditional_losses_3819418
gru_78_input!
gru_78_3819400:	?
gru_78_3819402:	?"
gru_78_3819404:
??$
dense_156_3819407:	?d
dense_156_3819409:d#
dense_157_3819412:d
dense_157_3819414:
identity??!dense_156/StatefulPartitionedCall?!dense_157/StatefulPartitionedCall?gru_78/StatefulPartitionedCall?
gru_78/StatefulPartitionedCallStatefulPartitionedCallgru_78_inputgru_78_3819400gru_78_3819402gru_78_3819404*
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
C__inference_gru_78_layer_call_and_return_conditional_losses_38192892 
gru_78/StatefulPartitionedCall?
!dense_156/StatefulPartitionedCallStatefulPartitionedCall'gru_78/StatefulPartitionedCall:output:0dense_156_3819407dense_156_3819409*
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
F__inference_dense_156_layer_call_and_return_conditional_losses_38190452#
!dense_156/StatefulPartitionedCall?
!dense_157/StatefulPartitionedCallStatefulPartitionedCall*dense_156/StatefulPartitionedCall:output:0dense_157_3819412dense_157_3819414*
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
F__inference_dense_157_layer_call_and_return_conditional_losses_38190612#
!dense_157/StatefulPartitionedCall?
IdentityIdentity*dense_157/StatefulPartitionedCall:output:0"^dense_156/StatefulPartitionedCall"^dense_157/StatefulPartitionedCall^gru_78/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2F
!dense_156/StatefulPartitionedCall!dense_156/StatefulPartitionedCall2F
!dense_157/StatefulPartitionedCall!dense_157/StatefulPartitionedCall2@
gru_78/StatefulPartitionedCallgru_78/StatefulPartitionedCall:Y U
+
_output_shapes
:?????????
&
_user_specified_namegru_78_input
?
?
J__inference_sequential_78_layer_call_and_return_conditional_losses_3819068

inputs!
gru_78_3819027:	?
gru_78_3819029:	?"
gru_78_3819031:
??$
dense_156_3819046:	?d
dense_156_3819048:d#
dense_157_3819062:d
dense_157_3819064:
identity??!dense_156/StatefulPartitionedCall?!dense_157/StatefulPartitionedCall?gru_78/StatefulPartitionedCall?
gru_78/StatefulPartitionedCallStatefulPartitionedCallinputsgru_78_3819027gru_78_3819029gru_78_3819031*
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
C__inference_gru_78_layer_call_and_return_conditional_losses_38190262 
gru_78/StatefulPartitionedCall?
!dense_156/StatefulPartitionedCallStatefulPartitionedCall'gru_78/StatefulPartitionedCall:output:0dense_156_3819046dense_156_3819048*
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
F__inference_dense_156_layer_call_and_return_conditional_losses_38190452#
!dense_156/StatefulPartitionedCall?
!dense_157/StatefulPartitionedCallStatefulPartitionedCall*dense_156/StatefulPartitionedCall:output:0dense_157_3819062dense_157_3819064*
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
F__inference_dense_157_layer_call_and_return_conditional_losses_38190612#
!dense_157/StatefulPartitionedCall?
IdentityIdentity*dense_157/StatefulPartitionedCall:output:0"^dense_156/StatefulPartitionedCall"^dense_157/StatefulPartitionedCall^gru_78/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2F
!dense_156/StatefulPartitionedCall!dense_156/StatefulPartitionedCall2F
!dense_157/StatefulPartitionedCall!dense_157/StatefulPartitionedCall2@
gru_78/StatefulPartitionedCallgru_78/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?*
?
H__inference_gru_cell_78_layer_call_and_return_conditional_losses_3820710

inputs
states_01
matmul_readvariableop_resource:	?.
biasadd_readvariableop_resource:	?+
readvariableop_resource:
??
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?ReadVariableOp?ReadVariableOp_1?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddm
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
splitz
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
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
valueB"    ?  2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2?
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_slices
MatMul_1MatMulstates_0strided_slice:output:0*
T0*(
_output_shapes
:??????????2

MatMul_1c
ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2
Constq
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
split_1/split_dim?
split_1SplitVMatMul_1:product:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:??????????:??????????:????????? *
	num_split2	
split_1h
addAddV2split:output:0split_1:output:0*
T0*(
_output_shapes
:??????????2
addY
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:??????????2	
Sigmoidl
add_1AddV2split:output:1split_1:output:1*
T0*(
_output_shapes
:??????????2
add_1_
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:??????????2
	Sigmoid_1]
mulMulSigmoid_1:y:0states_0*
T0*(
_output_shapes
:??????????2
mul~
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2
strided_slice_1/stack?
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack_1?
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2?
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_slice_1t
MatMul_2MatMulmul:z:0strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2

MatMul_2n
add_2AddV2split:output:2MatMul_2:product:0*
T0*(
_output_shapes
:??????????2
add_2R
ReluRelu	add_2:z:0*
T0*(
_output_shapes
:??????????2
Relu_
mul_1MulSigmoid:y:0states_0*
T0*(
_output_shapes
:??????????2
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
sub/xa
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
sube
mul_2Mulsub:z:0Relu:activations:0*
T0*(
_output_shapes
:??????????2
mul_2`
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*(
_output_shapes
:??????????2
add_3?
IdentityIdentity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^ReadVariableOp^ReadVariableOp_1*
T0*(
_output_shapes
:??????????2

Identity?

Identity_1Identity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^ReadVariableOp^ReadVariableOp_1*
T0*(
_output_shapes
:??????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????:??????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0
??
?
"__inference__wrapped_model_3818253
gru_78_inputR
?sequential_78_gru_78_gru_cell_78_matmul_readvariableop_resource:	?O
@sequential_78_gru_78_gru_cell_78_biasadd_readvariableop_resource:	?L
8sequential_78_gru_78_gru_cell_78_readvariableop_resource:
??I
6sequential_78_dense_156_matmul_readvariableop_resource:	?dE
7sequential_78_dense_156_biasadd_readvariableop_resource:dH
6sequential_78_dense_157_matmul_readvariableop_resource:dE
7sequential_78_dense_157_biasadd_readvariableop_resource:
identity??.sequential_78/dense_156/BiasAdd/ReadVariableOp?-sequential_78/dense_156/MatMul/ReadVariableOp?.sequential_78/dense_157/BiasAdd/ReadVariableOp?-sequential_78/dense_157/MatMul/ReadVariableOp?7sequential_78/gru_78/gru_cell_78/BiasAdd/ReadVariableOp?6sequential_78/gru_78/gru_cell_78/MatMul/ReadVariableOp?/sequential_78/gru_78/gru_cell_78/ReadVariableOp?1sequential_78/gru_78/gru_cell_78/ReadVariableOp_1?sequential_78/gru_78/whilet
sequential_78/gru_78/ShapeShapegru_78_input*
T0*
_output_shapes
:2
sequential_78/gru_78/Shape?
(sequential_78/gru_78/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(sequential_78/gru_78/strided_slice/stack?
*sequential_78/gru_78/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_78/gru_78/strided_slice/stack_1?
*sequential_78/gru_78/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_78/gru_78/strided_slice/stack_2?
"sequential_78/gru_78/strided_sliceStridedSlice#sequential_78/gru_78/Shape:output:01sequential_78/gru_78/strided_slice/stack:output:03sequential_78/gru_78/strided_slice/stack_1:output:03sequential_78/gru_78/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"sequential_78/gru_78/strided_slice?
 sequential_78/gru_78/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2"
 sequential_78/gru_78/zeros/mul/y?
sequential_78/gru_78/zeros/mulMul+sequential_78/gru_78/strided_slice:output:0)sequential_78/gru_78/zeros/mul/y:output:0*
T0*
_output_shapes
: 2 
sequential_78/gru_78/zeros/mul?
!sequential_78/gru_78/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2#
!sequential_78/gru_78/zeros/Less/y?
sequential_78/gru_78/zeros/LessLess"sequential_78/gru_78/zeros/mul:z:0*sequential_78/gru_78/zeros/Less/y:output:0*
T0*
_output_shapes
: 2!
sequential_78/gru_78/zeros/Less?
#sequential_78/gru_78/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2%
#sequential_78/gru_78/zeros/packed/1?
!sequential_78/gru_78/zeros/packedPack+sequential_78/gru_78/strided_slice:output:0,sequential_78/gru_78/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2#
!sequential_78/gru_78/zeros/packed?
 sequential_78/gru_78/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2"
 sequential_78/gru_78/zeros/Const?
sequential_78/gru_78/zerosFill*sequential_78/gru_78/zeros/packed:output:0)sequential_78/gru_78/zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
sequential_78/gru_78/zeros?
#sequential_78/gru_78/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2%
#sequential_78/gru_78/transpose/perm?
sequential_78/gru_78/transpose	Transposegru_78_input,sequential_78/gru_78/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2 
sequential_78/gru_78/transpose?
sequential_78/gru_78/Shape_1Shape"sequential_78/gru_78/transpose:y:0*
T0*
_output_shapes
:2
sequential_78/gru_78/Shape_1?
*sequential_78/gru_78/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_78/gru_78/strided_slice_1/stack?
,sequential_78/gru_78/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_78/gru_78/strided_slice_1/stack_1?
,sequential_78/gru_78/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_78/gru_78/strided_slice_1/stack_2?
$sequential_78/gru_78/strided_slice_1StridedSlice%sequential_78/gru_78/Shape_1:output:03sequential_78/gru_78/strided_slice_1/stack:output:05sequential_78/gru_78/strided_slice_1/stack_1:output:05sequential_78/gru_78/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$sequential_78/gru_78/strided_slice_1?
0sequential_78/gru_78/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????22
0sequential_78/gru_78/TensorArrayV2/element_shape?
"sequential_78/gru_78/TensorArrayV2TensorListReserve9sequential_78/gru_78/TensorArrayV2/element_shape:output:0-sequential_78/gru_78/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02$
"sequential_78/gru_78/TensorArrayV2?
Jsequential_78/gru_78/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2L
Jsequential_78/gru_78/TensorArrayUnstack/TensorListFromTensor/element_shape?
<sequential_78/gru_78/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"sequential_78/gru_78/transpose:y:0Ssequential_78/gru_78/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02>
<sequential_78/gru_78/TensorArrayUnstack/TensorListFromTensor?
*sequential_78/gru_78/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_78/gru_78/strided_slice_2/stack?
,sequential_78/gru_78/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_78/gru_78/strided_slice_2/stack_1?
,sequential_78/gru_78/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_78/gru_78/strided_slice_2/stack_2?
$sequential_78/gru_78/strided_slice_2StridedSlice"sequential_78/gru_78/transpose:y:03sequential_78/gru_78/strided_slice_2/stack:output:05sequential_78/gru_78/strided_slice_2/stack_1:output:05sequential_78/gru_78/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2&
$sequential_78/gru_78/strided_slice_2?
6sequential_78/gru_78/gru_cell_78/MatMul/ReadVariableOpReadVariableOp?sequential_78_gru_78_gru_cell_78_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype028
6sequential_78/gru_78/gru_cell_78/MatMul/ReadVariableOp?
'sequential_78/gru_78/gru_cell_78/MatMulMatMul-sequential_78/gru_78/strided_slice_2:output:0>sequential_78/gru_78/gru_cell_78/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2)
'sequential_78/gru_78/gru_cell_78/MatMul?
7sequential_78/gru_78/gru_cell_78/BiasAdd/ReadVariableOpReadVariableOp@sequential_78_gru_78_gru_cell_78_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype029
7sequential_78/gru_78/gru_cell_78/BiasAdd/ReadVariableOp?
(sequential_78/gru_78/gru_cell_78/BiasAddBiasAdd1sequential_78/gru_78/gru_cell_78/MatMul:product:0?sequential_78/gru_78/gru_cell_78/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2*
(sequential_78/gru_78/gru_cell_78/BiasAdd?
0sequential_78/gru_78/gru_cell_78/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????22
0sequential_78/gru_78/gru_cell_78/split/split_dim?
&sequential_78/gru_78/gru_cell_78/splitSplit9sequential_78/gru_78/gru_cell_78/split/split_dim:output:01sequential_78/gru_78/gru_cell_78/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2(
&sequential_78/gru_78/gru_cell_78/split?
/sequential_78/gru_78/gru_cell_78/ReadVariableOpReadVariableOp8sequential_78_gru_78_gru_cell_78_readvariableop_resource* 
_output_shapes
:
??*
dtype021
/sequential_78/gru_78/gru_cell_78/ReadVariableOp?
4sequential_78/gru_78/gru_cell_78/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        26
4sequential_78/gru_78/gru_cell_78/strided_slice/stack?
6sequential_78/gru_78/gru_cell_78/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  28
6sequential_78/gru_78/gru_cell_78/strided_slice/stack_1?
6sequential_78/gru_78/gru_cell_78/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      28
6sequential_78/gru_78/gru_cell_78/strided_slice/stack_2?
.sequential_78/gru_78/gru_cell_78/strided_sliceStridedSlice7sequential_78/gru_78/gru_cell_78/ReadVariableOp:value:0=sequential_78/gru_78/gru_cell_78/strided_slice/stack:output:0?sequential_78/gru_78/gru_cell_78/strided_slice/stack_1:output:0?sequential_78/gru_78/gru_cell_78/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask20
.sequential_78/gru_78/gru_cell_78/strided_slice?
)sequential_78/gru_78/gru_cell_78/MatMul_1MatMul#sequential_78/gru_78/zeros:output:07sequential_78/gru_78/gru_cell_78/strided_slice:output:0*
T0*(
_output_shapes
:??????????2+
)sequential_78/gru_78/gru_cell_78/MatMul_1?
&sequential_78/gru_78/gru_cell_78/ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2(
&sequential_78/gru_78/gru_cell_78/Const?
2sequential_78/gru_78/gru_cell_78/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????24
2sequential_78/gru_78/gru_cell_78/split_1/split_dim?
(sequential_78/gru_78/gru_cell_78/split_1SplitV3sequential_78/gru_78/gru_cell_78/MatMul_1:product:0/sequential_78/gru_78/gru_cell_78/Const:output:0;sequential_78/gru_78/gru_cell_78/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:??????????:??????????:????????? *
	num_split2*
(sequential_78/gru_78/gru_cell_78/split_1?
$sequential_78/gru_78/gru_cell_78/addAddV2/sequential_78/gru_78/gru_cell_78/split:output:01sequential_78/gru_78/gru_cell_78/split_1:output:0*
T0*(
_output_shapes
:??????????2&
$sequential_78/gru_78/gru_cell_78/add?
(sequential_78/gru_78/gru_cell_78/SigmoidSigmoid(sequential_78/gru_78/gru_cell_78/add:z:0*
T0*(
_output_shapes
:??????????2*
(sequential_78/gru_78/gru_cell_78/Sigmoid?
&sequential_78/gru_78/gru_cell_78/add_1AddV2/sequential_78/gru_78/gru_cell_78/split:output:11sequential_78/gru_78/gru_cell_78/split_1:output:1*
T0*(
_output_shapes
:??????????2(
&sequential_78/gru_78/gru_cell_78/add_1?
*sequential_78/gru_78/gru_cell_78/Sigmoid_1Sigmoid*sequential_78/gru_78/gru_cell_78/add_1:z:0*
T0*(
_output_shapes
:??????????2,
*sequential_78/gru_78/gru_cell_78/Sigmoid_1?
$sequential_78/gru_78/gru_cell_78/mulMul.sequential_78/gru_78/gru_cell_78/Sigmoid_1:y:0#sequential_78/gru_78/zeros:output:0*
T0*(
_output_shapes
:??????????2&
$sequential_78/gru_78/gru_cell_78/mul?
1sequential_78/gru_78/gru_cell_78/ReadVariableOp_1ReadVariableOp8sequential_78_gru_78_gru_cell_78_readvariableop_resource* 
_output_shapes
:
??*
dtype023
1sequential_78/gru_78/gru_cell_78/ReadVariableOp_1?
6sequential_78/gru_78/gru_cell_78/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  28
6sequential_78/gru_78/gru_cell_78/strided_slice_1/stack?
8sequential_78/gru_78/gru_cell_78/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2:
8sequential_78/gru_78/gru_cell_78/strided_slice_1/stack_1?
8sequential_78/gru_78/gru_cell_78/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2:
8sequential_78/gru_78/gru_cell_78/strided_slice_1/stack_2?
0sequential_78/gru_78/gru_cell_78/strided_slice_1StridedSlice9sequential_78/gru_78/gru_cell_78/ReadVariableOp_1:value:0?sequential_78/gru_78/gru_cell_78/strided_slice_1/stack:output:0Asequential_78/gru_78/gru_cell_78/strided_slice_1/stack_1:output:0Asequential_78/gru_78/gru_cell_78/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask22
0sequential_78/gru_78/gru_cell_78/strided_slice_1?
)sequential_78/gru_78/gru_cell_78/MatMul_2MatMul(sequential_78/gru_78/gru_cell_78/mul:z:09sequential_78/gru_78/gru_cell_78/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2+
)sequential_78/gru_78/gru_cell_78/MatMul_2?
&sequential_78/gru_78/gru_cell_78/add_2AddV2/sequential_78/gru_78/gru_cell_78/split:output:23sequential_78/gru_78/gru_cell_78/MatMul_2:product:0*
T0*(
_output_shapes
:??????????2(
&sequential_78/gru_78/gru_cell_78/add_2?
%sequential_78/gru_78/gru_cell_78/ReluRelu*sequential_78/gru_78/gru_cell_78/add_2:z:0*
T0*(
_output_shapes
:??????????2'
%sequential_78/gru_78/gru_cell_78/Relu?
&sequential_78/gru_78/gru_cell_78/mul_1Mul,sequential_78/gru_78/gru_cell_78/Sigmoid:y:0#sequential_78/gru_78/zeros:output:0*
T0*(
_output_shapes
:??????????2(
&sequential_78/gru_78/gru_cell_78/mul_1?
&sequential_78/gru_78/gru_cell_78/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2(
&sequential_78/gru_78/gru_cell_78/sub/x?
$sequential_78/gru_78/gru_cell_78/subSub/sequential_78/gru_78/gru_cell_78/sub/x:output:0,sequential_78/gru_78/gru_cell_78/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2&
$sequential_78/gru_78/gru_cell_78/sub?
&sequential_78/gru_78/gru_cell_78/mul_2Mul(sequential_78/gru_78/gru_cell_78/sub:z:03sequential_78/gru_78/gru_cell_78/Relu:activations:0*
T0*(
_output_shapes
:??????????2(
&sequential_78/gru_78/gru_cell_78/mul_2?
&sequential_78/gru_78/gru_cell_78/add_3AddV2*sequential_78/gru_78/gru_cell_78/mul_1:z:0*sequential_78/gru_78/gru_cell_78/mul_2:z:0*
T0*(
_output_shapes
:??????????2(
&sequential_78/gru_78/gru_cell_78/add_3?
2sequential_78/gru_78/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   24
2sequential_78/gru_78/TensorArrayV2_1/element_shape?
$sequential_78/gru_78/TensorArrayV2_1TensorListReserve;sequential_78/gru_78/TensorArrayV2_1/element_shape:output:0-sequential_78/gru_78/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02&
$sequential_78/gru_78/TensorArrayV2_1x
sequential_78/gru_78/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_78/gru_78/time?
-sequential_78/gru_78/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2/
-sequential_78/gru_78/while/maximum_iterations?
'sequential_78/gru_78/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2)
'sequential_78/gru_78/while/loop_counter?
sequential_78/gru_78/whileWhile0sequential_78/gru_78/while/loop_counter:output:06sequential_78/gru_78/while/maximum_iterations:output:0"sequential_78/gru_78/time:output:0-sequential_78/gru_78/TensorArrayV2_1:handle:0#sequential_78/gru_78/zeros:output:0-sequential_78/gru_78/strided_slice_1:output:0Lsequential_78/gru_78/TensorArrayUnstack/TensorListFromTensor:output_handle:0?sequential_78_gru_78_gru_cell_78_matmul_readvariableop_resource@sequential_78_gru_78_gru_cell_78_biasadd_readvariableop_resource8sequential_78_gru_78_gru_cell_78_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*3
body+R)
'sequential_78_gru_78_while_body_3818144*3
cond+R)
'sequential_78_gru_78_while_cond_3818143*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations 2
sequential_78/gru_78/while?
Esequential_78/gru_78/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2G
Esequential_78/gru_78/TensorArrayV2Stack/TensorListStack/element_shape?
7sequential_78/gru_78/TensorArrayV2Stack/TensorListStackTensorListStack#sequential_78/gru_78/while:output:3Nsequential_78/gru_78/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype029
7sequential_78/gru_78/TensorArrayV2Stack/TensorListStack?
*sequential_78/gru_78/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2,
*sequential_78/gru_78/strided_slice_3/stack?
,sequential_78/gru_78/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_78/gru_78/strided_slice_3/stack_1?
,sequential_78/gru_78/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_78/gru_78/strided_slice_3/stack_2?
$sequential_78/gru_78/strided_slice_3StridedSlice@sequential_78/gru_78/TensorArrayV2Stack/TensorListStack:tensor:03sequential_78/gru_78/strided_slice_3/stack:output:05sequential_78/gru_78/strided_slice_3/stack_1:output:05sequential_78/gru_78/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2&
$sequential_78/gru_78/strided_slice_3?
%sequential_78/gru_78/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2'
%sequential_78/gru_78/transpose_1/perm?
 sequential_78/gru_78/transpose_1	Transpose@sequential_78/gru_78/TensorArrayV2Stack/TensorListStack:tensor:0.sequential_78/gru_78/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2"
 sequential_78/gru_78/transpose_1?
sequential_78/gru_78/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_78/gru_78/runtime?
-sequential_78/dense_156/MatMul/ReadVariableOpReadVariableOp6sequential_78_dense_156_matmul_readvariableop_resource*
_output_shapes
:	?d*
dtype02/
-sequential_78/dense_156/MatMul/ReadVariableOp?
sequential_78/dense_156/MatMulMatMul-sequential_78/gru_78/strided_slice_3:output:05sequential_78/dense_156/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2 
sequential_78/dense_156/MatMul?
.sequential_78/dense_156/BiasAdd/ReadVariableOpReadVariableOp7sequential_78_dense_156_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype020
.sequential_78/dense_156/BiasAdd/ReadVariableOp?
sequential_78/dense_156/BiasAddBiasAdd(sequential_78/dense_156/MatMul:product:06sequential_78/dense_156/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2!
sequential_78/dense_156/BiasAdd?
sequential_78/dense_156/ReluRelu(sequential_78/dense_156/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
sequential_78/dense_156/Relu?
-sequential_78/dense_157/MatMul/ReadVariableOpReadVariableOp6sequential_78_dense_157_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02/
-sequential_78/dense_157/MatMul/ReadVariableOp?
sequential_78/dense_157/MatMulMatMul*sequential_78/dense_156/Relu:activations:05sequential_78/dense_157/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2 
sequential_78/dense_157/MatMul?
.sequential_78/dense_157/BiasAdd/ReadVariableOpReadVariableOp7sequential_78_dense_157_biasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.sequential_78/dense_157/BiasAdd/ReadVariableOp?
sequential_78/dense_157/BiasAddBiasAdd(sequential_78/dense_157/MatMul:product:06sequential_78/dense_157/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2!
sequential_78/dense_157/BiasAdd?
IdentityIdentity(sequential_78/dense_157/BiasAdd:output:0/^sequential_78/dense_156/BiasAdd/ReadVariableOp.^sequential_78/dense_156/MatMul/ReadVariableOp/^sequential_78/dense_157/BiasAdd/ReadVariableOp.^sequential_78/dense_157/MatMul/ReadVariableOp8^sequential_78/gru_78/gru_cell_78/BiasAdd/ReadVariableOp7^sequential_78/gru_78/gru_cell_78/MatMul/ReadVariableOp0^sequential_78/gru_78/gru_cell_78/ReadVariableOp2^sequential_78/gru_78/gru_cell_78/ReadVariableOp_1^sequential_78/gru_78/while*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2`
.sequential_78/dense_156/BiasAdd/ReadVariableOp.sequential_78/dense_156/BiasAdd/ReadVariableOp2^
-sequential_78/dense_156/MatMul/ReadVariableOp-sequential_78/dense_156/MatMul/ReadVariableOp2`
.sequential_78/dense_157/BiasAdd/ReadVariableOp.sequential_78/dense_157/BiasAdd/ReadVariableOp2^
-sequential_78/dense_157/MatMul/ReadVariableOp-sequential_78/dense_157/MatMul/ReadVariableOp2r
7sequential_78/gru_78/gru_cell_78/BiasAdd/ReadVariableOp7sequential_78/gru_78/gru_cell_78/BiasAdd/ReadVariableOp2p
6sequential_78/gru_78/gru_cell_78/MatMul/ReadVariableOp6sequential_78/gru_78/gru_cell_78/MatMul/ReadVariableOp2b
/sequential_78/gru_78/gru_cell_78/ReadVariableOp/sequential_78/gru_78/gru_cell_78/ReadVariableOp2f
1sequential_78/gru_78/gru_cell_78/ReadVariableOp_11sequential_78/gru_78/gru_cell_78/ReadVariableOp_128
sequential_78/gru_78/whilesequential_78/gru_78/while:Y U
+
_output_shapes
:?????????
&
_user_specified_namegru_78_input
?
?
while_cond_3818346
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_3818346___redundant_placeholder05
1while_while_cond_3818346___redundant_placeholder15
1while_while_cond_3818346___redundant_placeholder25
1while_while_cond_3818346___redundant_placeholder3
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
.: : : : :??????????: ::::: 
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
:??????????:

_output_shapes
: :

_output_shapes
:
?*
?
H__inference_gru_cell_78_layer_call_and_return_conditional_losses_3818484

inputs

states1
matmul_readvariableop_resource:	?.
biasadd_readvariableop_resource:	?+
readvariableop_resource:
??
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?ReadVariableOp?ReadVariableOp_1?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddm
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
splitz
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
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
valueB"    ?  2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2?
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_sliceq
MatMul_1MatMulstatesstrided_slice:output:0*
T0*(
_output_shapes
:??????????2

MatMul_1c
ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2
Constq
split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
split_1/split_dim?
split_1SplitVMatMul_1:product:0Const:output:0split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:??????????:??????????:????????? *
	num_split2	
split_1h
addAddV2split:output:0split_1:output:0*
T0*(
_output_shapes
:??????????2
addY
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:??????????2	
Sigmoidl
add_1AddV2split:output:1split_1:output:1*
T0*(
_output_shapes
:??????????2
add_1_
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:??????????2
	Sigmoid_1[
mulMulSigmoid_1:y:0states*
T0*(
_output_shapes
:??????????2
mul~
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
??*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2
strided_slice_1/stack?
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_1/stack_1?
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2?
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
strided_slice_1t
MatMul_2MatMulmul:z:0strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2

MatMul_2n
add_2AddV2split:output:2MatMul_2:product:0*
T0*(
_output_shapes
:??????????2
add_2R
ReluRelu	add_2:z:0*
T0*(
_output_shapes
:??????????2
Relu]
mul_1MulSigmoid:y:0states*
T0*(
_output_shapes
:??????????2
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
sub/xa
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
sube
mul_2Mulsub:z:0Relu:activations:0*
T0*(
_output_shapes
:??????????2
mul_2`
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*(
_output_shapes
:??????????2
add_3?
IdentityIdentity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^ReadVariableOp^ReadVariableOp_1*
T0*(
_output_shapes
:??????????2

Identity?

Identity_1Identity	add_3:z:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^ReadVariableOp^ReadVariableOp_1*
T0*(
_output_shapes
:??????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????:??????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_namestates
?

?
F__inference_dense_156_layer_call_and_return_conditional_losses_3820590

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
??
?
J__inference_sequential_78_layer_call_and_return_conditional_losses_3819629

inputsD
1gru_78_gru_cell_78_matmul_readvariableop_resource:	?A
2gru_78_gru_cell_78_biasadd_readvariableop_resource:	?>
*gru_78_gru_cell_78_readvariableop_resource:
??;
(dense_156_matmul_readvariableop_resource:	?d7
)dense_156_biasadd_readvariableop_resource:d:
(dense_157_matmul_readvariableop_resource:d7
)dense_157_biasadd_readvariableop_resource:
identity?? dense_156/BiasAdd/ReadVariableOp?dense_156/MatMul/ReadVariableOp? dense_157/BiasAdd/ReadVariableOp?dense_157/MatMul/ReadVariableOp?)gru_78/gru_cell_78/BiasAdd/ReadVariableOp?(gru_78/gru_cell_78/MatMul/ReadVariableOp?!gru_78/gru_cell_78/ReadVariableOp?#gru_78/gru_cell_78/ReadVariableOp_1?gru_78/whileR
gru_78/ShapeShapeinputs*
T0*
_output_shapes
:2
gru_78/Shape?
gru_78/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_78/strided_slice/stack?
gru_78/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_78/strided_slice/stack_1?
gru_78/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_78/strided_slice/stack_2?
gru_78/strided_sliceStridedSlicegru_78/Shape:output:0#gru_78/strided_slice/stack:output:0%gru_78/strided_slice/stack_1:output:0%gru_78/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru_78/strided_slicek
gru_78/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
gru_78/zeros/mul/y?
gru_78/zeros/mulMulgru_78/strided_slice:output:0gru_78/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
gru_78/zeros/mulm
gru_78/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
gru_78/zeros/Less/y?
gru_78/zeros/LessLessgru_78/zeros/mul:z:0gru_78/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
gru_78/zeros/Lessq
gru_78/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
gru_78/zeros/packed/1?
gru_78/zeros/packedPackgru_78/strided_slice:output:0gru_78/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
gru_78/zeros/packedm
gru_78/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_78/zeros/Const?
gru_78/zerosFillgru_78/zeros/packed:output:0gru_78/zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
gru_78/zeros?
gru_78/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_78/transpose/perm?
gru_78/transpose	Transposeinputsgru_78/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2
gru_78/transposed
gru_78/Shape_1Shapegru_78/transpose:y:0*
T0*
_output_shapes
:2
gru_78/Shape_1?
gru_78/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_78/strided_slice_1/stack?
gru_78/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
gru_78/strided_slice_1/stack_1?
gru_78/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
gru_78/strided_slice_1/stack_2?
gru_78/strided_slice_1StridedSlicegru_78/Shape_1:output:0%gru_78/strided_slice_1/stack:output:0'gru_78/strided_slice_1/stack_1:output:0'gru_78/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru_78/strided_slice_1?
"gru_78/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"gru_78/TensorArrayV2/element_shape?
gru_78/TensorArrayV2TensorListReserve+gru_78/TensorArrayV2/element_shape:output:0gru_78/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_78/TensorArrayV2?
<gru_78/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2>
<gru_78/TensorArrayUnstack/TensorListFromTensor/element_shape?
.gru_78/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorgru_78/transpose:y:0Egru_78/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.gru_78/TensorArrayUnstack/TensorListFromTensor?
gru_78/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_78/strided_slice_2/stack?
gru_78/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
gru_78/strided_slice_2/stack_1?
gru_78/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
gru_78/strided_slice_2/stack_2?
gru_78/strided_slice_2StridedSlicegru_78/transpose:y:0%gru_78/strided_slice_2/stack:output:0'gru_78/strided_slice_2/stack_1:output:0'gru_78/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
gru_78/strided_slice_2?
(gru_78/gru_cell_78/MatMul/ReadVariableOpReadVariableOp1gru_78_gru_cell_78_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02*
(gru_78/gru_cell_78/MatMul/ReadVariableOp?
gru_78/gru_cell_78/MatMulMatMulgru_78/strided_slice_2:output:00gru_78/gru_cell_78/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_78/gru_cell_78/MatMul?
)gru_78/gru_cell_78/BiasAdd/ReadVariableOpReadVariableOp2gru_78_gru_cell_78_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)gru_78/gru_cell_78/BiasAdd/ReadVariableOp?
gru_78/gru_cell_78/BiasAddBiasAdd#gru_78/gru_cell_78/MatMul:product:01gru_78/gru_cell_78/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_78/gru_cell_78/BiasAdd?
"gru_78/gru_cell_78/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"gru_78/gru_cell_78/split/split_dim?
gru_78/gru_cell_78/splitSplit+gru_78/gru_cell_78/split/split_dim:output:0#gru_78/gru_cell_78/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
gru_78/gru_cell_78/split?
!gru_78/gru_cell_78/ReadVariableOpReadVariableOp*gru_78_gru_cell_78_readvariableop_resource* 
_output_shapes
:
??*
dtype02#
!gru_78/gru_cell_78/ReadVariableOp?
&gru_78/gru_cell_78/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&gru_78/gru_cell_78/strided_slice/stack?
(gru_78/gru_cell_78/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2*
(gru_78/gru_cell_78/strided_slice/stack_1?
(gru_78/gru_cell_78/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(gru_78/gru_cell_78/strided_slice/stack_2?
 gru_78/gru_cell_78/strided_sliceStridedSlice)gru_78/gru_cell_78/ReadVariableOp:value:0/gru_78/gru_cell_78/strided_slice/stack:output:01gru_78/gru_cell_78/strided_slice/stack_1:output:01gru_78/gru_cell_78/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2"
 gru_78/gru_cell_78/strided_slice?
gru_78/gru_cell_78/MatMul_1MatMulgru_78/zeros:output:0)gru_78/gru_cell_78/strided_slice:output:0*
T0*(
_output_shapes
:??????????2
gru_78/gru_cell_78/MatMul_1?
gru_78/gru_cell_78/ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2
gru_78/gru_cell_78/Const?
$gru_78/gru_cell_78/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2&
$gru_78/gru_cell_78/split_1/split_dim?
gru_78/gru_cell_78/split_1SplitV%gru_78/gru_cell_78/MatMul_1:product:0!gru_78/gru_cell_78/Const:output:0-gru_78/gru_cell_78/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:??????????:??????????:????????? *
	num_split2
gru_78/gru_cell_78/split_1?
gru_78/gru_cell_78/addAddV2!gru_78/gru_cell_78/split:output:0#gru_78/gru_cell_78/split_1:output:0*
T0*(
_output_shapes
:??????????2
gru_78/gru_cell_78/add?
gru_78/gru_cell_78/SigmoidSigmoidgru_78/gru_cell_78/add:z:0*
T0*(
_output_shapes
:??????????2
gru_78/gru_cell_78/Sigmoid?
gru_78/gru_cell_78/add_1AddV2!gru_78/gru_cell_78/split:output:1#gru_78/gru_cell_78/split_1:output:1*
T0*(
_output_shapes
:??????????2
gru_78/gru_cell_78/add_1?
gru_78/gru_cell_78/Sigmoid_1Sigmoidgru_78/gru_cell_78/add_1:z:0*
T0*(
_output_shapes
:??????????2
gru_78/gru_cell_78/Sigmoid_1?
gru_78/gru_cell_78/mulMul gru_78/gru_cell_78/Sigmoid_1:y:0gru_78/zeros:output:0*
T0*(
_output_shapes
:??????????2
gru_78/gru_cell_78/mul?
#gru_78/gru_cell_78/ReadVariableOp_1ReadVariableOp*gru_78_gru_cell_78_readvariableop_resource* 
_output_shapes
:
??*
dtype02%
#gru_78/gru_cell_78/ReadVariableOp_1?
(gru_78/gru_cell_78/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2*
(gru_78/gru_cell_78/strided_slice_1/stack?
*gru_78/gru_cell_78/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*gru_78/gru_cell_78/strided_slice_1/stack_1?
*gru_78/gru_cell_78/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*gru_78/gru_cell_78/strided_slice_1/stack_2?
"gru_78/gru_cell_78/strided_slice_1StridedSlice+gru_78/gru_cell_78/ReadVariableOp_1:value:01gru_78/gru_cell_78/strided_slice_1/stack:output:03gru_78/gru_cell_78/strided_slice_1/stack_1:output:03gru_78/gru_cell_78/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2$
"gru_78/gru_cell_78/strided_slice_1?
gru_78/gru_cell_78/MatMul_2MatMulgru_78/gru_cell_78/mul:z:0+gru_78/gru_cell_78/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2
gru_78/gru_cell_78/MatMul_2?
gru_78/gru_cell_78/add_2AddV2!gru_78/gru_cell_78/split:output:2%gru_78/gru_cell_78/MatMul_2:product:0*
T0*(
_output_shapes
:??????????2
gru_78/gru_cell_78/add_2?
gru_78/gru_cell_78/ReluRelugru_78/gru_cell_78/add_2:z:0*
T0*(
_output_shapes
:??????????2
gru_78/gru_cell_78/Relu?
gru_78/gru_cell_78/mul_1Mulgru_78/gru_cell_78/Sigmoid:y:0gru_78/zeros:output:0*
T0*(
_output_shapes
:??????????2
gru_78/gru_cell_78/mul_1y
gru_78/gru_cell_78/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_78/gru_cell_78/sub/x?
gru_78/gru_cell_78/subSub!gru_78/gru_cell_78/sub/x:output:0gru_78/gru_cell_78/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
gru_78/gru_cell_78/sub?
gru_78/gru_cell_78/mul_2Mulgru_78/gru_cell_78/sub:z:0%gru_78/gru_cell_78/Relu:activations:0*
T0*(
_output_shapes
:??????????2
gru_78/gru_cell_78/mul_2?
gru_78/gru_cell_78/add_3AddV2gru_78/gru_cell_78/mul_1:z:0gru_78/gru_cell_78/mul_2:z:0*
T0*(
_output_shapes
:??????????2
gru_78/gru_cell_78/add_3?
$gru_78/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2&
$gru_78/TensorArrayV2_1/element_shape?
gru_78/TensorArrayV2_1TensorListReserve-gru_78/TensorArrayV2_1/element_shape:output:0gru_78/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_78/TensorArrayV2_1\
gru_78/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
gru_78/time?
gru_78/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2!
gru_78/while/maximum_iterationsx
gru_78/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
gru_78/while/loop_counter?
gru_78/whileWhile"gru_78/while/loop_counter:output:0(gru_78/while/maximum_iterations:output:0gru_78/time:output:0gru_78/TensorArrayV2_1:handle:0gru_78/zeros:output:0gru_78/strided_slice_1:output:0>gru_78/TensorArrayUnstack/TensorListFromTensor:output_handle:01gru_78_gru_cell_78_matmul_readvariableop_resource2gru_78_gru_cell_78_biasadd_readvariableop_resource*gru_78_gru_cell_78_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*%
bodyR
gru_78_while_body_3819520*%
condR
gru_78_while_cond_3819519*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations 2
gru_78/while?
7gru_78/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   29
7gru_78/TensorArrayV2Stack/TensorListStack/element_shape?
)gru_78/TensorArrayV2Stack/TensorListStackTensorListStackgru_78/while:output:3@gru_78/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02+
)gru_78/TensorArrayV2Stack/TensorListStack?
gru_78/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
gru_78/strided_slice_3/stack?
gru_78/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
gru_78/strided_slice_3/stack_1?
gru_78/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
gru_78/strided_slice_3/stack_2?
gru_78/strided_slice_3StridedSlice2gru_78/TensorArrayV2Stack/TensorListStack:tensor:0%gru_78/strided_slice_3/stack:output:0'gru_78/strided_slice_3/stack_1:output:0'gru_78/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
gru_78/strided_slice_3?
gru_78/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_78/transpose_1/perm?
gru_78/transpose_1	Transpose2gru_78/TensorArrayV2Stack/TensorListStack:tensor:0 gru_78/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
gru_78/transpose_1t
gru_78/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_78/runtime?
dense_156/MatMul/ReadVariableOpReadVariableOp(dense_156_matmul_readvariableop_resource*
_output_shapes
:	?d*
dtype02!
dense_156/MatMul/ReadVariableOp?
dense_156/MatMulMatMulgru_78/strided_slice_3:output:0'dense_156/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_156/MatMul?
 dense_156/BiasAdd/ReadVariableOpReadVariableOp)dense_156_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02"
 dense_156/BiasAdd/ReadVariableOp?
dense_156/BiasAddBiasAdddense_156/MatMul:product:0(dense_156/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_156/BiasAddv
dense_156/ReluReludense_156/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
dense_156/Relu?
dense_157/MatMul/ReadVariableOpReadVariableOp(dense_157_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02!
dense_157/MatMul/ReadVariableOp?
dense_157/MatMulMatMuldense_156/Relu:activations:0'dense_157/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_157/MatMul?
 dense_157/BiasAdd/ReadVariableOpReadVariableOp)dense_157_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_157/BiasAdd/ReadVariableOp?
dense_157/BiasAddBiasAdddense_157/MatMul:product:0(dense_157/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_157/BiasAdd?
IdentityIdentitydense_157/BiasAdd:output:0!^dense_156/BiasAdd/ReadVariableOp ^dense_156/MatMul/ReadVariableOp!^dense_157/BiasAdd/ReadVariableOp ^dense_157/MatMul/ReadVariableOp*^gru_78/gru_cell_78/BiasAdd/ReadVariableOp)^gru_78/gru_cell_78/MatMul/ReadVariableOp"^gru_78/gru_cell_78/ReadVariableOp$^gru_78/gru_cell_78/ReadVariableOp_1^gru_78/while*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2D
 dense_156/BiasAdd/ReadVariableOp dense_156/BiasAdd/ReadVariableOp2B
dense_156/MatMul/ReadVariableOpdense_156/MatMul/ReadVariableOp2D
 dense_157/BiasAdd/ReadVariableOp dense_157/BiasAdd/ReadVariableOp2B
dense_157/MatMul/ReadVariableOpdense_157/MatMul/ReadVariableOp2V
)gru_78/gru_cell_78/BiasAdd/ReadVariableOp)gru_78/gru_cell_78/BiasAdd/ReadVariableOp2T
(gru_78/gru_cell_78/MatMul/ReadVariableOp(gru_78/gru_cell_78/MatMul/ReadVariableOp2F
!gru_78/gru_cell_78/ReadVariableOp!gru_78/gru_cell_78/ReadVariableOp2J
#gru_78/gru_cell_78/ReadVariableOp_1#gru_78/gru_cell_78/ReadVariableOp_12
gru_78/whilegru_78/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?h
?
C__inference_gru_78_layer_call_and_return_conditional_losses_3819289

inputs=
*gru_cell_78_matmul_readvariableop_resource:	?:
+gru_cell_78_biasadd_readvariableop_resource:	?7
#gru_cell_78_readvariableop_resource:
??
identity??"gru_cell_78/BiasAdd/ReadVariableOp?!gru_cell_78/MatMul/ReadVariableOp?gru_cell_78/ReadVariableOp?gru_cell_78/ReadVariableOp_1?whileD
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
!gru_cell_78/MatMul/ReadVariableOpReadVariableOp*gru_cell_78_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!gru_cell_78/MatMul/ReadVariableOp?
gru_cell_78/MatMulMatMulstrided_slice_2:output:0)gru_cell_78/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/MatMul?
"gru_cell_78/BiasAdd/ReadVariableOpReadVariableOp+gru_cell_78_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"gru_cell_78/BiasAdd/ReadVariableOp?
gru_cell_78/BiasAddBiasAddgru_cell_78/MatMul:product:0*gru_cell_78/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/BiasAdd?
gru_cell_78/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_78/split/split_dim?
gru_cell_78/splitSplit$gru_cell_78/split/split_dim:output:0gru_cell_78/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
gru_cell_78/split?
gru_cell_78/ReadVariableOpReadVariableOp#gru_cell_78_readvariableop_resource* 
_output_shapes
:
??*
dtype02
gru_cell_78/ReadVariableOp?
gru_cell_78/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
gru_cell_78/strided_slice/stack?
!gru_cell_78/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2#
!gru_cell_78/strided_slice/stack_1?
!gru_cell_78/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!gru_cell_78/strided_slice/stack_2?
gru_cell_78/strided_sliceStridedSlice"gru_cell_78/ReadVariableOp:value:0(gru_cell_78/strided_slice/stack:output:0*gru_cell_78/strided_slice/stack_1:output:0*gru_cell_78/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
gru_cell_78/strided_slice?
gru_cell_78/MatMul_1MatMulzeros:output:0"gru_cell_78/strided_slice:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/MatMul_1{
gru_cell_78/ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2
gru_cell_78/Const?
gru_cell_78/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_78/split_1/split_dim?
gru_cell_78/split_1SplitVgru_cell_78/MatMul_1:product:0gru_cell_78/Const:output:0&gru_cell_78/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:??????????:??????????:????????? *
	num_split2
gru_cell_78/split_1?
gru_cell_78/addAddV2gru_cell_78/split:output:0gru_cell_78/split_1:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/add}
gru_cell_78/SigmoidSigmoidgru_cell_78/add:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/Sigmoid?
gru_cell_78/add_1AddV2gru_cell_78/split:output:1gru_cell_78/split_1:output:1*
T0*(
_output_shapes
:??????????2
gru_cell_78/add_1?
gru_cell_78/Sigmoid_1Sigmoidgru_cell_78/add_1:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/Sigmoid_1?
gru_cell_78/mulMulgru_cell_78/Sigmoid_1:y:0zeros:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/mul?
gru_cell_78/ReadVariableOp_1ReadVariableOp#gru_cell_78_readvariableop_resource* 
_output_shapes
:
??*
dtype02
gru_cell_78/ReadVariableOp_1?
!gru_cell_78/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2#
!gru_cell_78/strided_slice_1/stack?
#gru_cell_78/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#gru_cell_78/strided_slice_1/stack_1?
#gru_cell_78/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gru_cell_78/strided_slice_1/stack_2?
gru_cell_78/strided_slice_1StridedSlice$gru_cell_78/ReadVariableOp_1:value:0*gru_cell_78/strided_slice_1/stack:output:0,gru_cell_78/strided_slice_1/stack_1:output:0,gru_cell_78/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
gru_cell_78/strided_slice_1?
gru_cell_78/MatMul_2MatMulgru_cell_78/mul:z:0$gru_cell_78/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/MatMul_2?
gru_cell_78/add_2AddV2gru_cell_78/split:output:2gru_cell_78/MatMul_2:product:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/add_2v
gru_cell_78/ReluRelugru_cell_78/add_2:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/Relu?
gru_cell_78/mul_1Mulgru_cell_78/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/mul_1k
gru_cell_78/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_cell_78/sub/x?
gru_cell_78/subSubgru_cell_78/sub/x:output:0gru_cell_78/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/sub?
gru_cell_78/mul_2Mulgru_cell_78/sub:z:0gru_cell_78/Relu:activations:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/mul_2?
gru_cell_78/add_3AddV2gru_cell_78/mul_1:z:0gru_cell_78/mul_2:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_78/add_3?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*gru_cell_78_matmul_readvariableop_resource+gru_cell_78_biasadd_readvariableop_resource#gru_cell_78_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_3819193*
condR
while_cond_3819192*9
output_shapes(
&: : : : :??????????: : : : : *
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
IdentityIdentitystrided_slice_3:output:0#^gru_cell_78/BiasAdd/ReadVariableOp"^gru_cell_78/MatMul/ReadVariableOp^gru_cell_78/ReadVariableOp^gru_cell_78/ReadVariableOp_1^while*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2H
"gru_cell_78/BiasAdd/ReadVariableOp"gru_cell_78/BiasAdd/ReadVariableOp2F
!gru_cell_78/MatMul/ReadVariableOp!gru_cell_78/MatMul/ReadVariableOp28
gru_cell_78/ReadVariableOpgru_cell_78/ReadVariableOp2<
gru_cell_78/ReadVariableOp_1gru_cell_78/ReadVariableOp_12
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?d
?	
gru_78_while_body_3819704*
&gru_78_while_gru_78_while_loop_counter0
,gru_78_while_gru_78_while_maximum_iterations
gru_78_while_placeholder
gru_78_while_placeholder_1
gru_78_while_placeholder_2)
%gru_78_while_gru_78_strided_slice_1_0e
agru_78_while_tensorarrayv2read_tensorlistgetitem_gru_78_tensorarrayunstack_tensorlistfromtensor_0L
9gru_78_while_gru_cell_78_matmul_readvariableop_resource_0:	?I
:gru_78_while_gru_cell_78_biasadd_readvariableop_resource_0:	?F
2gru_78_while_gru_cell_78_readvariableop_resource_0:
??
gru_78_while_identity
gru_78_while_identity_1
gru_78_while_identity_2
gru_78_while_identity_3
gru_78_while_identity_4'
#gru_78_while_gru_78_strided_slice_1c
_gru_78_while_tensorarrayv2read_tensorlistgetitem_gru_78_tensorarrayunstack_tensorlistfromtensorJ
7gru_78_while_gru_cell_78_matmul_readvariableop_resource:	?G
8gru_78_while_gru_cell_78_biasadd_readvariableop_resource:	?D
0gru_78_while_gru_cell_78_readvariableop_resource:
????/gru_78/while/gru_cell_78/BiasAdd/ReadVariableOp?.gru_78/while/gru_cell_78/MatMul/ReadVariableOp?'gru_78/while/gru_cell_78/ReadVariableOp?)gru_78/while/gru_cell_78/ReadVariableOp_1?
>gru_78/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2@
>gru_78/while/TensorArrayV2Read/TensorListGetItem/element_shape?
0gru_78/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemagru_78_while_tensorarrayv2read_tensorlistgetitem_gru_78_tensorarrayunstack_tensorlistfromtensor_0gru_78_while_placeholderGgru_78/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype022
0gru_78/while/TensorArrayV2Read/TensorListGetItem?
.gru_78/while/gru_cell_78/MatMul/ReadVariableOpReadVariableOp9gru_78_while_gru_cell_78_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype020
.gru_78/while/gru_cell_78/MatMul/ReadVariableOp?
gru_78/while/gru_cell_78/MatMulMatMul7gru_78/while/TensorArrayV2Read/TensorListGetItem:item:06gru_78/while/gru_cell_78/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2!
gru_78/while/gru_cell_78/MatMul?
/gru_78/while/gru_cell_78/BiasAdd/ReadVariableOpReadVariableOp:gru_78_while_gru_cell_78_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype021
/gru_78/while/gru_cell_78/BiasAdd/ReadVariableOp?
 gru_78/while/gru_cell_78/BiasAddBiasAdd)gru_78/while/gru_cell_78/MatMul:product:07gru_78/while/gru_cell_78/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2"
 gru_78/while/gru_cell_78/BiasAdd?
(gru_78/while/gru_cell_78/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2*
(gru_78/while/gru_cell_78/split/split_dim?
gru_78/while/gru_cell_78/splitSplit1gru_78/while/gru_cell_78/split/split_dim:output:0)gru_78/while/gru_cell_78/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2 
gru_78/while/gru_cell_78/split?
'gru_78/while/gru_cell_78/ReadVariableOpReadVariableOp2gru_78_while_gru_cell_78_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02)
'gru_78/while/gru_cell_78/ReadVariableOp?
,gru_78/while/gru_cell_78/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2.
,gru_78/while/gru_cell_78/strided_slice/stack?
.gru_78/while/gru_cell_78/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  20
.gru_78/while/gru_cell_78/strided_slice/stack_1?
.gru_78/while/gru_cell_78/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.gru_78/while/gru_cell_78/strided_slice/stack_2?
&gru_78/while/gru_cell_78/strided_sliceStridedSlice/gru_78/while/gru_cell_78/ReadVariableOp:value:05gru_78/while/gru_cell_78/strided_slice/stack:output:07gru_78/while/gru_cell_78/strided_slice/stack_1:output:07gru_78/while/gru_cell_78/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2(
&gru_78/while/gru_cell_78/strided_slice?
!gru_78/while/gru_cell_78/MatMul_1MatMulgru_78_while_placeholder_2/gru_78/while/gru_cell_78/strided_slice:output:0*
T0*(
_output_shapes
:??????????2#
!gru_78/while/gru_cell_78/MatMul_1?
gru_78/while/gru_cell_78/ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2 
gru_78/while/gru_cell_78/Const?
*gru_78/while/gru_cell_78/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2,
*gru_78/while/gru_cell_78/split_1/split_dim?
 gru_78/while/gru_cell_78/split_1SplitV+gru_78/while/gru_cell_78/MatMul_1:product:0'gru_78/while/gru_cell_78/Const:output:03gru_78/while/gru_cell_78/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:??????????:??????????:????????? *
	num_split2"
 gru_78/while/gru_cell_78/split_1?
gru_78/while/gru_cell_78/addAddV2'gru_78/while/gru_cell_78/split:output:0)gru_78/while/gru_cell_78/split_1:output:0*
T0*(
_output_shapes
:??????????2
gru_78/while/gru_cell_78/add?
 gru_78/while/gru_cell_78/SigmoidSigmoid gru_78/while/gru_cell_78/add:z:0*
T0*(
_output_shapes
:??????????2"
 gru_78/while/gru_cell_78/Sigmoid?
gru_78/while/gru_cell_78/add_1AddV2'gru_78/while/gru_cell_78/split:output:1)gru_78/while/gru_cell_78/split_1:output:1*
T0*(
_output_shapes
:??????????2 
gru_78/while/gru_cell_78/add_1?
"gru_78/while/gru_cell_78/Sigmoid_1Sigmoid"gru_78/while/gru_cell_78/add_1:z:0*
T0*(
_output_shapes
:??????????2$
"gru_78/while/gru_cell_78/Sigmoid_1?
gru_78/while/gru_cell_78/mulMul&gru_78/while/gru_cell_78/Sigmoid_1:y:0gru_78_while_placeholder_2*
T0*(
_output_shapes
:??????????2
gru_78/while/gru_cell_78/mul?
)gru_78/while/gru_cell_78/ReadVariableOp_1ReadVariableOp2gru_78_while_gru_cell_78_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02+
)gru_78/while/gru_cell_78/ReadVariableOp_1?
.gru_78/while/gru_cell_78/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  20
.gru_78/while/gru_cell_78/strided_slice_1/stack?
0gru_78/while/gru_cell_78/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        22
0gru_78/while/gru_cell_78/strided_slice_1/stack_1?
0gru_78/while/gru_cell_78/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0gru_78/while/gru_cell_78/strided_slice_1/stack_2?
(gru_78/while/gru_cell_78/strided_slice_1StridedSlice1gru_78/while/gru_cell_78/ReadVariableOp_1:value:07gru_78/while/gru_cell_78/strided_slice_1/stack:output:09gru_78/while/gru_cell_78/strided_slice_1/stack_1:output:09gru_78/while/gru_cell_78/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2*
(gru_78/while/gru_cell_78/strided_slice_1?
!gru_78/while/gru_cell_78/MatMul_2MatMul gru_78/while/gru_cell_78/mul:z:01gru_78/while/gru_cell_78/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2#
!gru_78/while/gru_cell_78/MatMul_2?
gru_78/while/gru_cell_78/add_2AddV2'gru_78/while/gru_cell_78/split:output:2+gru_78/while/gru_cell_78/MatMul_2:product:0*
T0*(
_output_shapes
:??????????2 
gru_78/while/gru_cell_78/add_2?
gru_78/while/gru_cell_78/ReluRelu"gru_78/while/gru_cell_78/add_2:z:0*
T0*(
_output_shapes
:??????????2
gru_78/while/gru_cell_78/Relu?
gru_78/while/gru_cell_78/mul_1Mul$gru_78/while/gru_cell_78/Sigmoid:y:0gru_78_while_placeholder_2*
T0*(
_output_shapes
:??????????2 
gru_78/while/gru_cell_78/mul_1?
gru_78/while/gru_cell_78/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2 
gru_78/while/gru_cell_78/sub/x?
gru_78/while/gru_cell_78/subSub'gru_78/while/gru_cell_78/sub/x:output:0$gru_78/while/gru_cell_78/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
gru_78/while/gru_cell_78/sub?
gru_78/while/gru_cell_78/mul_2Mul gru_78/while/gru_cell_78/sub:z:0+gru_78/while/gru_cell_78/Relu:activations:0*
T0*(
_output_shapes
:??????????2 
gru_78/while/gru_cell_78/mul_2?
gru_78/while/gru_cell_78/add_3AddV2"gru_78/while/gru_cell_78/mul_1:z:0"gru_78/while/gru_cell_78/mul_2:z:0*
T0*(
_output_shapes
:??????????2 
gru_78/while/gru_cell_78/add_3?
1gru_78/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemgru_78_while_placeholder_1gru_78_while_placeholder"gru_78/while/gru_cell_78/add_3:z:0*
_output_shapes
: *
element_dtype023
1gru_78/while/TensorArrayV2Write/TensorListSetItemj
gru_78/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru_78/while/add/y?
gru_78/while/addAddV2gru_78_while_placeholdergru_78/while/add/y:output:0*
T0*
_output_shapes
: 2
gru_78/while/addn
gru_78/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru_78/while/add_1/y?
gru_78/while/add_1AddV2&gru_78_while_gru_78_while_loop_countergru_78/while/add_1/y:output:0*
T0*
_output_shapes
: 2
gru_78/while/add_1?
gru_78/while/IdentityIdentitygru_78/while/add_1:z:00^gru_78/while/gru_cell_78/BiasAdd/ReadVariableOp/^gru_78/while/gru_cell_78/MatMul/ReadVariableOp(^gru_78/while/gru_cell_78/ReadVariableOp*^gru_78/while/gru_cell_78/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_78/while/Identity?
gru_78/while/Identity_1Identity,gru_78_while_gru_78_while_maximum_iterations0^gru_78/while/gru_cell_78/BiasAdd/ReadVariableOp/^gru_78/while/gru_cell_78/MatMul/ReadVariableOp(^gru_78/while/gru_cell_78/ReadVariableOp*^gru_78/while/gru_cell_78/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_78/while/Identity_1?
gru_78/while/Identity_2Identitygru_78/while/add:z:00^gru_78/while/gru_cell_78/BiasAdd/ReadVariableOp/^gru_78/while/gru_cell_78/MatMul/ReadVariableOp(^gru_78/while/gru_cell_78/ReadVariableOp*^gru_78/while/gru_cell_78/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_78/while/Identity_2?
gru_78/while/Identity_3IdentityAgru_78/while/TensorArrayV2Write/TensorListSetItem:output_handle:00^gru_78/while/gru_cell_78/BiasAdd/ReadVariableOp/^gru_78/while/gru_cell_78/MatMul/ReadVariableOp(^gru_78/while/gru_cell_78/ReadVariableOp*^gru_78/while/gru_cell_78/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_78/while/Identity_3?
gru_78/while/Identity_4Identity"gru_78/while/gru_cell_78/add_3:z:00^gru_78/while/gru_cell_78/BiasAdd/ReadVariableOp/^gru_78/while/gru_cell_78/MatMul/ReadVariableOp(^gru_78/while/gru_cell_78/ReadVariableOp*^gru_78/while/gru_cell_78/ReadVariableOp_1*
T0*(
_output_shapes
:??????????2
gru_78/while/Identity_4"L
#gru_78_while_gru_78_strided_slice_1%gru_78_while_gru_78_strided_slice_1_0"v
8gru_78_while_gru_cell_78_biasadd_readvariableop_resource:gru_78_while_gru_cell_78_biasadd_readvariableop_resource_0"t
7gru_78_while_gru_cell_78_matmul_readvariableop_resource9gru_78_while_gru_cell_78_matmul_readvariableop_resource_0"f
0gru_78_while_gru_cell_78_readvariableop_resource2gru_78_while_gru_cell_78_readvariableop_resource_0"7
gru_78_while_identitygru_78/while/Identity:output:0";
gru_78_while_identity_1 gru_78/while/Identity_1:output:0";
gru_78_while_identity_2 gru_78/while/Identity_2:output:0";
gru_78_while_identity_3 gru_78/while/Identity_3:output:0";
gru_78_while_identity_4 gru_78/while/Identity_4:output:0"?
_gru_78_while_tensorarrayv2read_tensorlistgetitem_gru_78_tensorarrayunstack_tensorlistfromtensoragru_78_while_tensorarrayv2read_tensorlistgetitem_gru_78_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2b
/gru_78/while/gru_cell_78/BiasAdd/ReadVariableOp/gru_78/while/gru_cell_78/BiasAdd/ReadVariableOp2`
.gru_78/while/gru_cell_78/MatMul/ReadVariableOp.gru_78/while/gru_cell_78/MatMul/ReadVariableOp2R
'gru_78/while/gru_cell_78/ReadVariableOp'gru_78/while/gru_cell_78/ReadVariableOp2V
)gru_78/while/gru_cell_78/ReadVariableOp_1)gru_78/while/gru_cell_78/ReadVariableOp_1: 
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
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_3818929
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_3818929___redundant_placeholder05
1while_while_cond_3818929___redundant_placeholder15
1while_while_cond_3818929___redundant_placeholder25
1while_while_cond_3818929___redundant_placeholder3
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
.: : : : :??????????: ::::: 
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
:??????????:

_output_shapes
: :

_output_shapes
:
?=
?
C__inference_gru_78_layer_call_and_return_conditional_losses_3818411

inputs&
gru_cell_78_3818335:	?"
gru_cell_78_3818337:	?'
gru_cell_78_3818339:
??
identity??#gru_cell_78/StatefulPartitionedCall?whileD
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
zerosu
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
strided_slice_2?
#gru_cell_78/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0gru_cell_78_3818335gru_cell_78_3818337gru_cell_78_3818339*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_gru_cell_78_layer_call_and_return_conditional_losses_38183342%
#gru_cell_78/StatefulPartitionedCall?
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
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0gru_cell_78_3818335gru_cell_78_3818337gru_cell_78_3818339*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_3818347*
condR
while_cond_3818346*9
output_shapes(
&: : : : :??????????: : : : : *
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
IdentityIdentitystrided_slice_3:output:0$^gru_cell_78/StatefulPartitionedCall^while*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2J
#gru_cell_78/StatefulPartitionedCall#gru_cell_78/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
+__inference_dense_156_layer_call_fn_3820599

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
F__inference_dense_156_layer_call_and_return_conditional_losses_38190452
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
?
?
J__inference_sequential_78_layer_call_and_return_conditional_losses_3819397
gru_78_input!
gru_78_3819379:	?
gru_78_3819381:	?"
gru_78_3819383:
??$
dense_156_3819386:	?d
dense_156_3819388:d#
dense_157_3819391:d
dense_157_3819393:
identity??!dense_156/StatefulPartitionedCall?!dense_157/StatefulPartitionedCall?gru_78/StatefulPartitionedCall?
gru_78/StatefulPartitionedCallStatefulPartitionedCallgru_78_inputgru_78_3819379gru_78_3819381gru_78_3819383*
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
C__inference_gru_78_layer_call_and_return_conditional_losses_38190262 
gru_78/StatefulPartitionedCall?
!dense_156/StatefulPartitionedCallStatefulPartitionedCall'gru_78/StatefulPartitionedCall:output:0dense_156_3819386dense_156_3819388*
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
F__inference_dense_156_layer_call_and_return_conditional_losses_38190452#
!dense_156/StatefulPartitionedCall?
!dense_157/StatefulPartitionedCallStatefulPartitionedCall*dense_156/StatefulPartitionedCall:output:0dense_157_3819391dense_157_3819393*
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
F__inference_dense_157_layer_call_and_return_conditional_losses_38190612#
!dense_157/StatefulPartitionedCall?
IdentityIdentity*dense_157/StatefulPartitionedCall:output:0"^dense_156/StatefulPartitionedCall"^dense_157/StatefulPartitionedCall^gru_78/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2F
!dense_156/StatefulPartitionedCall!dense_156/StatefulPartitionedCall2F
!dense_157/StatefulPartitionedCall!dense_157/StatefulPartitionedCall2@
gru_78/StatefulPartitionedCallgru_78/StatefulPartitionedCall:Y U
+
_output_shapes
:?????????
&
_user_specified_namegru_78_input
?~
?
'sequential_78_gru_78_while_body_3818144F
Bsequential_78_gru_78_while_sequential_78_gru_78_while_loop_counterL
Hsequential_78_gru_78_while_sequential_78_gru_78_while_maximum_iterations*
&sequential_78_gru_78_while_placeholder,
(sequential_78_gru_78_while_placeholder_1,
(sequential_78_gru_78_while_placeholder_2E
Asequential_78_gru_78_while_sequential_78_gru_78_strided_slice_1_0?
}sequential_78_gru_78_while_tensorarrayv2read_tensorlistgetitem_sequential_78_gru_78_tensorarrayunstack_tensorlistfromtensor_0Z
Gsequential_78_gru_78_while_gru_cell_78_matmul_readvariableop_resource_0:	?W
Hsequential_78_gru_78_while_gru_cell_78_biasadd_readvariableop_resource_0:	?T
@sequential_78_gru_78_while_gru_cell_78_readvariableop_resource_0:
??'
#sequential_78_gru_78_while_identity)
%sequential_78_gru_78_while_identity_1)
%sequential_78_gru_78_while_identity_2)
%sequential_78_gru_78_while_identity_3)
%sequential_78_gru_78_while_identity_4C
?sequential_78_gru_78_while_sequential_78_gru_78_strided_slice_1
{sequential_78_gru_78_while_tensorarrayv2read_tensorlistgetitem_sequential_78_gru_78_tensorarrayunstack_tensorlistfromtensorX
Esequential_78_gru_78_while_gru_cell_78_matmul_readvariableop_resource:	?U
Fsequential_78_gru_78_while_gru_cell_78_biasadd_readvariableop_resource:	?R
>sequential_78_gru_78_while_gru_cell_78_readvariableop_resource:
????=sequential_78/gru_78/while/gru_cell_78/BiasAdd/ReadVariableOp?<sequential_78/gru_78/while/gru_cell_78/MatMul/ReadVariableOp?5sequential_78/gru_78/while/gru_cell_78/ReadVariableOp?7sequential_78/gru_78/while/gru_cell_78/ReadVariableOp_1?
Lsequential_78/gru_78/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2N
Lsequential_78/gru_78/while/TensorArrayV2Read/TensorListGetItem/element_shape?
>sequential_78/gru_78/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem}sequential_78_gru_78_while_tensorarrayv2read_tensorlistgetitem_sequential_78_gru_78_tensorarrayunstack_tensorlistfromtensor_0&sequential_78_gru_78_while_placeholderUsequential_78/gru_78/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02@
>sequential_78/gru_78/while/TensorArrayV2Read/TensorListGetItem?
<sequential_78/gru_78/while/gru_cell_78/MatMul/ReadVariableOpReadVariableOpGsequential_78_gru_78_while_gru_cell_78_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02>
<sequential_78/gru_78/while/gru_cell_78/MatMul/ReadVariableOp?
-sequential_78/gru_78/while/gru_cell_78/MatMulMatMulEsequential_78/gru_78/while/TensorArrayV2Read/TensorListGetItem:item:0Dsequential_78/gru_78/while/gru_cell_78/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2/
-sequential_78/gru_78/while/gru_cell_78/MatMul?
=sequential_78/gru_78/while/gru_cell_78/BiasAdd/ReadVariableOpReadVariableOpHsequential_78_gru_78_while_gru_cell_78_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02?
=sequential_78/gru_78/while/gru_cell_78/BiasAdd/ReadVariableOp?
.sequential_78/gru_78/while/gru_cell_78/BiasAddBiasAdd7sequential_78/gru_78/while/gru_cell_78/MatMul:product:0Esequential_78/gru_78/while/gru_cell_78/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????20
.sequential_78/gru_78/while/gru_cell_78/BiasAdd?
6sequential_78/gru_78/while/gru_cell_78/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????28
6sequential_78/gru_78/while/gru_cell_78/split/split_dim?
,sequential_78/gru_78/while/gru_cell_78/splitSplit?sequential_78/gru_78/while/gru_cell_78/split/split_dim:output:07sequential_78/gru_78/while/gru_cell_78/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2.
,sequential_78/gru_78/while/gru_cell_78/split?
5sequential_78/gru_78/while/gru_cell_78/ReadVariableOpReadVariableOp@sequential_78_gru_78_while_gru_cell_78_readvariableop_resource_0* 
_output_shapes
:
??*
dtype027
5sequential_78/gru_78/while/gru_cell_78/ReadVariableOp?
:sequential_78/gru_78/while/gru_cell_78/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2<
:sequential_78/gru_78/while/gru_cell_78/strided_slice/stack?
<sequential_78/gru_78/while/gru_cell_78/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2>
<sequential_78/gru_78/while/gru_cell_78/strided_slice/stack_1?
<sequential_78/gru_78/while/gru_cell_78/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2>
<sequential_78/gru_78/while/gru_cell_78/strided_slice/stack_2?
4sequential_78/gru_78/while/gru_cell_78/strided_sliceStridedSlice=sequential_78/gru_78/while/gru_cell_78/ReadVariableOp:value:0Csequential_78/gru_78/while/gru_cell_78/strided_slice/stack:output:0Esequential_78/gru_78/while/gru_cell_78/strided_slice/stack_1:output:0Esequential_78/gru_78/while/gru_cell_78/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask26
4sequential_78/gru_78/while/gru_cell_78/strided_slice?
/sequential_78/gru_78/while/gru_cell_78/MatMul_1MatMul(sequential_78_gru_78_while_placeholder_2=sequential_78/gru_78/while/gru_cell_78/strided_slice:output:0*
T0*(
_output_shapes
:??????????21
/sequential_78/gru_78/while/gru_cell_78/MatMul_1?
,sequential_78/gru_78/while/gru_cell_78/ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2.
,sequential_78/gru_78/while/gru_cell_78/Const?
8sequential_78/gru_78/while/gru_cell_78/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2:
8sequential_78/gru_78/while/gru_cell_78/split_1/split_dim?
.sequential_78/gru_78/while/gru_cell_78/split_1SplitV9sequential_78/gru_78/while/gru_cell_78/MatMul_1:product:05sequential_78/gru_78/while/gru_cell_78/Const:output:0Asequential_78/gru_78/while/gru_cell_78/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:??????????:??????????:????????? *
	num_split20
.sequential_78/gru_78/while/gru_cell_78/split_1?
*sequential_78/gru_78/while/gru_cell_78/addAddV25sequential_78/gru_78/while/gru_cell_78/split:output:07sequential_78/gru_78/while/gru_cell_78/split_1:output:0*
T0*(
_output_shapes
:??????????2,
*sequential_78/gru_78/while/gru_cell_78/add?
.sequential_78/gru_78/while/gru_cell_78/SigmoidSigmoid.sequential_78/gru_78/while/gru_cell_78/add:z:0*
T0*(
_output_shapes
:??????????20
.sequential_78/gru_78/while/gru_cell_78/Sigmoid?
,sequential_78/gru_78/while/gru_cell_78/add_1AddV25sequential_78/gru_78/while/gru_cell_78/split:output:17sequential_78/gru_78/while/gru_cell_78/split_1:output:1*
T0*(
_output_shapes
:??????????2.
,sequential_78/gru_78/while/gru_cell_78/add_1?
0sequential_78/gru_78/while/gru_cell_78/Sigmoid_1Sigmoid0sequential_78/gru_78/while/gru_cell_78/add_1:z:0*
T0*(
_output_shapes
:??????????22
0sequential_78/gru_78/while/gru_cell_78/Sigmoid_1?
*sequential_78/gru_78/while/gru_cell_78/mulMul4sequential_78/gru_78/while/gru_cell_78/Sigmoid_1:y:0(sequential_78_gru_78_while_placeholder_2*
T0*(
_output_shapes
:??????????2,
*sequential_78/gru_78/while/gru_cell_78/mul?
7sequential_78/gru_78/while/gru_cell_78/ReadVariableOp_1ReadVariableOp@sequential_78_gru_78_while_gru_cell_78_readvariableop_resource_0* 
_output_shapes
:
??*
dtype029
7sequential_78/gru_78/while/gru_cell_78/ReadVariableOp_1?
<sequential_78/gru_78/while/gru_cell_78/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2>
<sequential_78/gru_78/while/gru_cell_78/strided_slice_1/stack?
>sequential_78/gru_78/while/gru_cell_78/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2@
>sequential_78/gru_78/while/gru_cell_78/strided_slice_1/stack_1?
>sequential_78/gru_78/while/gru_cell_78/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2@
>sequential_78/gru_78/while/gru_cell_78/strided_slice_1/stack_2?
6sequential_78/gru_78/while/gru_cell_78/strided_slice_1StridedSlice?sequential_78/gru_78/while/gru_cell_78/ReadVariableOp_1:value:0Esequential_78/gru_78/while/gru_cell_78/strided_slice_1/stack:output:0Gsequential_78/gru_78/while/gru_cell_78/strided_slice_1/stack_1:output:0Gsequential_78/gru_78/while/gru_cell_78/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask28
6sequential_78/gru_78/while/gru_cell_78/strided_slice_1?
/sequential_78/gru_78/while/gru_cell_78/MatMul_2MatMul.sequential_78/gru_78/while/gru_cell_78/mul:z:0?sequential_78/gru_78/while/gru_cell_78/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????21
/sequential_78/gru_78/while/gru_cell_78/MatMul_2?
,sequential_78/gru_78/while/gru_cell_78/add_2AddV25sequential_78/gru_78/while/gru_cell_78/split:output:29sequential_78/gru_78/while/gru_cell_78/MatMul_2:product:0*
T0*(
_output_shapes
:??????????2.
,sequential_78/gru_78/while/gru_cell_78/add_2?
+sequential_78/gru_78/while/gru_cell_78/ReluRelu0sequential_78/gru_78/while/gru_cell_78/add_2:z:0*
T0*(
_output_shapes
:??????????2-
+sequential_78/gru_78/while/gru_cell_78/Relu?
,sequential_78/gru_78/while/gru_cell_78/mul_1Mul2sequential_78/gru_78/while/gru_cell_78/Sigmoid:y:0(sequential_78_gru_78_while_placeholder_2*
T0*(
_output_shapes
:??????????2.
,sequential_78/gru_78/while/gru_cell_78/mul_1?
,sequential_78/gru_78/while/gru_cell_78/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2.
,sequential_78/gru_78/while/gru_cell_78/sub/x?
*sequential_78/gru_78/while/gru_cell_78/subSub5sequential_78/gru_78/while/gru_cell_78/sub/x:output:02sequential_78/gru_78/while/gru_cell_78/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2,
*sequential_78/gru_78/while/gru_cell_78/sub?
,sequential_78/gru_78/while/gru_cell_78/mul_2Mul.sequential_78/gru_78/while/gru_cell_78/sub:z:09sequential_78/gru_78/while/gru_cell_78/Relu:activations:0*
T0*(
_output_shapes
:??????????2.
,sequential_78/gru_78/while/gru_cell_78/mul_2?
,sequential_78/gru_78/while/gru_cell_78/add_3AddV20sequential_78/gru_78/while/gru_cell_78/mul_1:z:00sequential_78/gru_78/while/gru_cell_78/mul_2:z:0*
T0*(
_output_shapes
:??????????2.
,sequential_78/gru_78/while/gru_cell_78/add_3?
?sequential_78/gru_78/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem(sequential_78_gru_78_while_placeholder_1&sequential_78_gru_78_while_placeholder0sequential_78/gru_78/while/gru_cell_78/add_3:z:0*
_output_shapes
: *
element_dtype02A
?sequential_78/gru_78/while/TensorArrayV2Write/TensorListSetItem?
 sequential_78/gru_78/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2"
 sequential_78/gru_78/while/add/y?
sequential_78/gru_78/while/addAddV2&sequential_78_gru_78_while_placeholder)sequential_78/gru_78/while/add/y:output:0*
T0*
_output_shapes
: 2 
sequential_78/gru_78/while/add?
"sequential_78/gru_78/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2$
"sequential_78/gru_78/while/add_1/y?
 sequential_78/gru_78/while/add_1AddV2Bsequential_78_gru_78_while_sequential_78_gru_78_while_loop_counter+sequential_78/gru_78/while/add_1/y:output:0*
T0*
_output_shapes
: 2"
 sequential_78/gru_78/while/add_1?
#sequential_78/gru_78/while/IdentityIdentity$sequential_78/gru_78/while/add_1:z:0>^sequential_78/gru_78/while/gru_cell_78/BiasAdd/ReadVariableOp=^sequential_78/gru_78/while/gru_cell_78/MatMul/ReadVariableOp6^sequential_78/gru_78/while/gru_cell_78/ReadVariableOp8^sequential_78/gru_78/while/gru_cell_78/ReadVariableOp_1*
T0*
_output_shapes
: 2%
#sequential_78/gru_78/while/Identity?
%sequential_78/gru_78/while/Identity_1IdentityHsequential_78_gru_78_while_sequential_78_gru_78_while_maximum_iterations>^sequential_78/gru_78/while/gru_cell_78/BiasAdd/ReadVariableOp=^sequential_78/gru_78/while/gru_cell_78/MatMul/ReadVariableOp6^sequential_78/gru_78/while/gru_cell_78/ReadVariableOp8^sequential_78/gru_78/while/gru_cell_78/ReadVariableOp_1*
T0*
_output_shapes
: 2'
%sequential_78/gru_78/while/Identity_1?
%sequential_78/gru_78/while/Identity_2Identity"sequential_78/gru_78/while/add:z:0>^sequential_78/gru_78/while/gru_cell_78/BiasAdd/ReadVariableOp=^sequential_78/gru_78/while/gru_cell_78/MatMul/ReadVariableOp6^sequential_78/gru_78/while/gru_cell_78/ReadVariableOp8^sequential_78/gru_78/while/gru_cell_78/ReadVariableOp_1*
T0*
_output_shapes
: 2'
%sequential_78/gru_78/while/Identity_2?
%sequential_78/gru_78/while/Identity_3IdentityOsequential_78/gru_78/while/TensorArrayV2Write/TensorListSetItem:output_handle:0>^sequential_78/gru_78/while/gru_cell_78/BiasAdd/ReadVariableOp=^sequential_78/gru_78/while/gru_cell_78/MatMul/ReadVariableOp6^sequential_78/gru_78/while/gru_cell_78/ReadVariableOp8^sequential_78/gru_78/while/gru_cell_78/ReadVariableOp_1*
T0*
_output_shapes
: 2'
%sequential_78/gru_78/while/Identity_3?
%sequential_78/gru_78/while/Identity_4Identity0sequential_78/gru_78/while/gru_cell_78/add_3:z:0>^sequential_78/gru_78/while/gru_cell_78/BiasAdd/ReadVariableOp=^sequential_78/gru_78/while/gru_cell_78/MatMul/ReadVariableOp6^sequential_78/gru_78/while/gru_cell_78/ReadVariableOp8^sequential_78/gru_78/while/gru_cell_78/ReadVariableOp_1*
T0*(
_output_shapes
:??????????2'
%sequential_78/gru_78/while/Identity_4"?
Fsequential_78_gru_78_while_gru_cell_78_biasadd_readvariableop_resourceHsequential_78_gru_78_while_gru_cell_78_biasadd_readvariableop_resource_0"?
Esequential_78_gru_78_while_gru_cell_78_matmul_readvariableop_resourceGsequential_78_gru_78_while_gru_cell_78_matmul_readvariableop_resource_0"?
>sequential_78_gru_78_while_gru_cell_78_readvariableop_resource@sequential_78_gru_78_while_gru_cell_78_readvariableop_resource_0"S
#sequential_78_gru_78_while_identity,sequential_78/gru_78/while/Identity:output:0"W
%sequential_78_gru_78_while_identity_1.sequential_78/gru_78/while/Identity_1:output:0"W
%sequential_78_gru_78_while_identity_2.sequential_78/gru_78/while/Identity_2:output:0"W
%sequential_78_gru_78_while_identity_3.sequential_78/gru_78/while/Identity_3:output:0"W
%sequential_78_gru_78_while_identity_4.sequential_78/gru_78/while/Identity_4:output:0"?
?sequential_78_gru_78_while_sequential_78_gru_78_strided_slice_1Asequential_78_gru_78_while_sequential_78_gru_78_strided_slice_1_0"?
{sequential_78_gru_78_while_tensorarrayv2read_tensorlistgetitem_sequential_78_gru_78_tensorarrayunstack_tensorlistfromtensor}sequential_78_gru_78_while_tensorarrayv2read_tensorlistgetitem_sequential_78_gru_78_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2~
=sequential_78/gru_78/while/gru_cell_78/BiasAdd/ReadVariableOp=sequential_78/gru_78/while/gru_cell_78/BiasAdd/ReadVariableOp2|
<sequential_78/gru_78/while/gru_cell_78/MatMul/ReadVariableOp<sequential_78/gru_78/while/gru_cell_78/MatMul/ReadVariableOp2n
5sequential_78/gru_78/while/gru_cell_78/ReadVariableOp5sequential_78/gru_78/while/gru_cell_78/ReadVariableOp2r
7sequential_78/gru_78/while/gru_cell_78/ReadVariableOp_17sequential_78/gru_78/while/gru_cell_78/ReadVariableOp_1: 
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
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_3820267
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_3820267___redundant_placeholder05
1while_while_cond_3820267___redundant_placeholder15
1while_while_cond_3820267___redundant_placeholder25
1while_while_cond_3820267___redundant_placeholder3
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
.: : : : :??????????: ::::: 
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
:??????????:

_output_shapes
: :

_output_shapes
:
?	
?
/__inference_sequential_78_layer_call_fn_3819376
gru_78_input
unknown:	?
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?d
	unknown_3:d
	unknown_4:d
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallgru_78_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
GPU 2J 8? *S
fNRL
J__inference_sequential_78_layer_call_and_return_conditional_losses_38193402
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
StatefulPartitionedCallStatefulPartitionedCall:Y U
+
_output_shapes
:?????????
&
_user_specified_namegru_78_input
?
?
(__inference_gru_78_layer_call_fn_3820579

inputs
unknown:	?
	unknown_0:	?
	unknown_1:
??
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
C__inference_gru_78_layer_call_and_return_conditional_losses_38192892
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
?

?
-__inference_gru_cell_78_layer_call_fn_3820724

inputs
states_0
unknown:	?
	unknown_0:	?
	unknown_1:
??
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_gru_cell_78_layer_call_and_return_conditional_losses_38183342
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

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????:??????????: : : 22
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
states/0
?=
?
C__inference_gru_78_layer_call_and_return_conditional_losses_3818615

inputs&
gru_cell_78_3818539:	?"
gru_cell_78_3818541:	?'
gru_cell_78_3818543:
??
identity??#gru_cell_78/StatefulPartitionedCall?whileD
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
zerosu
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
strided_slice_2?
#gru_cell_78/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0gru_cell_78_3818539gru_cell_78_3818541gru_cell_78_3818543*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_gru_cell_78_layer_call_and_return_conditional_losses_38184842%
#gru_cell_78/StatefulPartitionedCall?
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
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0gru_cell_78_3818539gru_cell_78_3818541gru_cell_78_3818543*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*
bodyR
while_body_3818551*
condR
while_cond_3818550*9
output_shapes(
&: : : : :??????????: : : : : *
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
IdentityIdentitystrided_slice_3:output:0$^gru_cell_78/StatefulPartitionedCall^while*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2J
#gru_cell_78/StatefulPartitionedCall#gru_cell_78/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?

?
-__inference_gru_cell_78_layer_call_fn_3820738

inputs
states_0
unknown:	?
	unknown_0:	?
	unknown_1:
??
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:??????????:??????????*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_gru_cell_78_layer_call_and_return_conditional_losses_38184842
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

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????:??????????: : : 22
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
states/0
?z
?
#__inference__traced_restore_3820939
file_prefix4
!assignvariableop_dense_156_kernel:	?d/
!assignvariableop_1_dense_156_bias:d5
#assignvariableop_2_dense_157_kernel:d/
!assignvariableop_3_dense_157_bias:&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: ?
,assignvariableop_9_gru_78_gru_cell_78_kernel:	?K
7assignvariableop_10_gru_78_gru_cell_78_recurrent_kernel:
??:
+assignvariableop_11_gru_78_gru_cell_78_bias:	?#
assignvariableop_12_total: #
assignvariableop_13_count: >
+assignvariableop_14_adam_dense_156_kernel_m:	?d7
)assignvariableop_15_adam_dense_156_bias_m:d=
+assignvariableop_16_adam_dense_157_kernel_m:d7
)assignvariableop_17_adam_dense_157_bias_m:G
4assignvariableop_18_adam_gru_78_gru_cell_78_kernel_m:	?R
>assignvariableop_19_adam_gru_78_gru_cell_78_recurrent_kernel_m:
??A
2assignvariableop_20_adam_gru_78_gru_cell_78_bias_m:	?>
+assignvariableop_21_adam_dense_156_kernel_v:	?d7
)assignvariableop_22_adam_dense_156_bias_v:d=
+assignvariableop_23_adam_dense_157_kernel_v:d7
)assignvariableop_24_adam_dense_157_bias_v:G
4assignvariableop_25_adam_gru_78_gru_cell_78_kernel_v:	?R
>assignvariableop_26_adam_gru_78_gru_cell_78_recurrent_kernel_v:
??A
2assignvariableop_27_adam_gru_78_gru_cell_78_bias_v:	?
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_156_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_156_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp#assignvariableop_2_dense_157_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_157_biasIdentity_3:output:0"/device:CPU:0*
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
AssignVariableOp_9AssignVariableOp,assignvariableop_9_gru_78_gru_cell_78_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp7assignvariableop_10_gru_78_gru_cell_78_recurrent_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp+assignvariableop_11_gru_78_gru_cell_78_biasIdentity_11:output:0"/device:CPU:0*
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
AssignVariableOp_14AssignVariableOp+assignvariableop_14_adam_dense_156_kernel_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp)assignvariableop_15_adam_dense_156_bias_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp+assignvariableop_16_adam_dense_157_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp)assignvariableop_17_adam_dense_157_bias_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp4assignvariableop_18_adam_gru_78_gru_cell_78_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp>assignvariableop_19_adam_gru_78_gru_cell_78_recurrent_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp2assignvariableop_20_adam_gru_78_gru_cell_78_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp+assignvariableop_21_adam_dense_156_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp)assignvariableop_22_adam_dense_156_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp+assignvariableop_23_adam_dense_157_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp)assignvariableop_24_adam_dense_157_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp4assignvariableop_25_adam_gru_78_gru_cell_78_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp>assignvariableop_26_adam_gru_78_gru_cell_78_recurrent_kernel_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp2assignvariableop_27_adam_gru_78_gru_cell_78_bias_vIdentity_27:output:0"/device:CPU:0*
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
?
/__inference_sequential_78_layer_call_fn_3819851

inputs
unknown:	?
	unknown_0:	?
	unknown_1:
??
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
GPU 2J 8? *S
fNRL
J__inference_sequential_78_layer_call_and_return_conditional_losses_38193402
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
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
I
gru_78_input9
serving_default_gru_78_input:0?????????=
	dense_1570
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
U_default_save_signature
*V&call_and_return_all_conditional_losses
W__call__"?*
_tf_keras_sequential?*{"name": "sequential_78", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_78", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 2]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "gru_78_input"}}, {"class_name": "GRU", "config": {"name": "gru_78", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 2]}, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 200, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2, "reset_after": false}}, {"class_name": "Dense", "config": {"name": "dense_156", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_157", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 12, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 2]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 13}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 7, 2]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 7, 2]}, "float32", "gru_78_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_78", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 2]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "gru_78_input"}, "shared_object_id": 0}, {"class_name": "GRU", "config": {"name": "gru_78", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 2]}, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 200, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2, "reset_after": false}, "shared_object_id": 5}, {"class_name": "Dense", "config": {"name": "dense_156", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 8}, {"class_name": "Dense", "config": {"name": "dense_157", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 11}]}}, "training_config": {"loss": "mse", "metrics": null, "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?

cell

state_spec
	variables
regularization_losses
trainable_variables
	keras_api
*X&call_and_return_all_conditional_losses
Y__call__"?
_tf_keras_rnn_layer?{"name": "gru_78", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 2]}, "stateful": false, "must_restore_from_config": false, "class_name": "GRU", "config": {"name": "gru_78", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 2]}, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 200, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2, "reset_after": false}, "shared_object_id": 5, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 2]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 13}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 7, 2]}}
?

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
*Z&call_and_return_all_conditional_losses
[__call__"?
_tf_keras_layer?{"name": "dense_156", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_156", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 8, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 200}}, "shared_object_id": 14}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 200]}}
?

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
*\&call_and_return_all_conditional_losses
]__call__"?
_tf_keras_layer?{"name": "dense_157", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_157", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 11, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 100}}, "shared_object_id": 15}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 100]}}
?
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
?
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
?	

!kernel
"recurrent_kernel
#bias
)	variables
*regularization_losses
+trainable_variables
,	keras_api
*_&call_and_return_all_conditional_losses
`__call__"?
_tf_keras_layer?{"name": "gru_cell_78", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "GRUCell", "config": {"name": "gru_cell_78", "trainable": true, "dtype": "float32", "units": 200, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2, "reset_after": false}, "shared_object_id": 4}
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
#:!	?d2dense_156/kernel
:d2dense_156/bias
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
": d2dense_157/kernel
:2dense_157/bias
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
,:*	?2gru_78/gru_cell_78/kernel
7:5
??2#gru_78/gru_cell_78/recurrent_kernel
&:$?2gru_78/gru_cell_78/bias
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
?
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
?
	Ctotal
	Dcount
E	variables
F	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 16}
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
(:&	?d2Adam/dense_156/kernel/m
!:d2Adam/dense_156/bias/m
':%d2Adam/dense_157/kernel/m
!:2Adam/dense_157/bias/m
1:/	?2 Adam/gru_78/gru_cell_78/kernel/m
<::
??2*Adam/gru_78/gru_cell_78/recurrent_kernel/m
+:)?2Adam/gru_78/gru_cell_78/bias/m
(:&	?d2Adam/dense_156/kernel/v
!:d2Adam/dense_156/bias/v
':%d2Adam/dense_157/kernel/v
!:2Adam/dense_157/bias/v
1:/	?2 Adam/gru_78/gru_cell_78/kernel/v
<::
??2*Adam/gru_78/gru_cell_78/recurrent_kernel/v
+:)?2Adam/gru_78/gru_cell_78/bias/v
?2?
"__inference__wrapped_model_3818253?
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
annotations? */?,
*?'
gru_78_input?????????
?2?
J__inference_sequential_78_layer_call_and_return_conditional_losses_3819629
J__inference_sequential_78_layer_call_and_return_conditional_losses_3819813
J__inference_sequential_78_layer_call_and_return_conditional_losses_3819397
J__inference_sequential_78_layer_call_and_return_conditional_losses_3819418?
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
/__inference_sequential_78_layer_call_fn_3819085
/__inference_sequential_78_layer_call_fn_3819832
/__inference_sequential_78_layer_call_fn_3819851
/__inference_sequential_78_layer_call_fn_3819376?
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
C__inference_gru_78_layer_call_and_return_conditional_losses_3820022
C__inference_gru_78_layer_call_and_return_conditional_losses_3820193
C__inference_gru_78_layer_call_and_return_conditional_losses_3820364
C__inference_gru_78_layer_call_and_return_conditional_losses_3820535?
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
(__inference_gru_78_layer_call_fn_3820546
(__inference_gru_78_layer_call_fn_3820557
(__inference_gru_78_layer_call_fn_3820568
(__inference_gru_78_layer_call_fn_3820579?
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
F__inference_dense_156_layer_call_and_return_conditional_losses_3820590?
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
+__inference_dense_156_layer_call_fn_3820599?
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
F__inference_dense_157_layer_call_and_return_conditional_losses_3820609?
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
+__inference_dense_157_layer_call_fn_3820618?
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
%__inference_signature_wrapper_3819445gru_78_input"?
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
H__inference_gru_cell_78_layer_call_and_return_conditional_losses_3820664
H__inference_gru_cell_78_layer_call_and_return_conditional_losses_3820710?
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
-__inference_gru_cell_78_layer_call_fn_3820724
-__inference_gru_cell_78_layer_call_fn_3820738?
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
"__inference__wrapped_model_3818253{!#"9?6
/?,
*?'
gru_78_input?????????
? "5?2
0
	dense_157#? 
	dense_157??????????
F__inference_dense_156_layer_call_and_return_conditional_losses_3820590]0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????d
? 
+__inference_dense_156_layer_call_fn_3820599P0?-
&?#
!?
inputs??????????
? "??????????d?
F__inference_dense_157_layer_call_and_return_conditional_losses_3820609\/?,
%?"
 ?
inputs?????????d
? "%?"
?
0?????????
? ~
+__inference_dense_157_layer_call_fn_3820618O/?,
%?"
 ?
inputs?????????d
? "???????????
C__inference_gru_78_layer_call_and_return_conditional_losses_3820022~!#"O?L
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
C__inference_gru_78_layer_call_and_return_conditional_losses_3820193~!#"O?L
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
C__inference_gru_78_layer_call_and_return_conditional_losses_3820364n!#"??<
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
C__inference_gru_78_layer_call_and_return_conditional_losses_3820535n!#"??<
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
(__inference_gru_78_layer_call_fn_3820546q!#"O?L
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
(__inference_gru_78_layer_call_fn_3820557q!#"O?L
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
(__inference_gru_78_layer_call_fn_3820568a!#"??<
5?2
$?!
inputs?????????

 
p 

 
? "????????????
(__inference_gru_78_layer_call_fn_3820579a!#"??<
5?2
$?!
inputs?????????

 
p

 
? "????????????
H__inference_gru_cell_78_layer_call_and_return_conditional_losses_3820664?!#"]?Z
S?P
 ?
inputs?????????
(?%
#? 
states/0??????????
p 
? "T?Q
J?G
?
0/0??????????
%?"
 ?
0/1/0??????????
? ?
H__inference_gru_cell_78_layer_call_and_return_conditional_losses_3820710?!#"]?Z
S?P
 ?
inputs?????????
(?%
#? 
states/0??????????
p
? "T?Q
J?G
?
0/0??????????
%?"
 ?
0/1/0??????????
? ?
-__inference_gru_cell_78_layer_call_fn_3820724?!#"]?Z
S?P
 ?
inputs?????????
(?%
#? 
states/0??????????
p 
? "F?C
?
0??????????
#? 
?
1/0???????????
-__inference_gru_cell_78_layer_call_fn_3820738?!#"]?Z
S?P
 ?
inputs?????????
(?%
#? 
states/0??????????
p
? "F?C
?
0??????????
#? 
?
1/0???????????
J__inference_sequential_78_layer_call_and_return_conditional_losses_3819397s!#"A?>
7?4
*?'
gru_78_input?????????
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_78_layer_call_and_return_conditional_losses_3819418s!#"A?>
7?4
*?'
gru_78_input?????????
p

 
? "%?"
?
0?????????
? ?
J__inference_sequential_78_layer_call_and_return_conditional_losses_3819629m!#";?8
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
J__inference_sequential_78_layer_call_and_return_conditional_losses_3819813m!#";?8
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
/__inference_sequential_78_layer_call_fn_3819085f!#"A?>
7?4
*?'
gru_78_input?????????
p 

 
? "???????????
/__inference_sequential_78_layer_call_fn_3819376f!#"A?>
7?4
*?'
gru_78_input?????????
p

 
? "???????????
/__inference_sequential_78_layer_call_fn_3819832`!#";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
/__inference_sequential_78_layer_call_fn_3819851`!#";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_3819445?!#"I?F
? 
??<
:
gru_78_input*?'
gru_78_input?????????"5?2
0
	dense_157#? 
	dense_157?????????