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
?"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718??
}
dense_200/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?d*!
shared_namedense_200/kernel
v
$dense_200/kernel/Read/ReadVariableOpReadVariableOpdense_200/kernel*
_output_shapes
:	?d*
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
?
gru_100/gru_cell_100/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*,
shared_namegru_100/gru_cell_100/kernel
?
/gru_100/gru_cell_100/kernel/Read/ReadVariableOpReadVariableOpgru_100/gru_cell_100/kernel*
_output_shapes
:	?*
dtype0
?
%gru_100/gru_cell_100/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*6
shared_name'%gru_100/gru_cell_100/recurrent_kernel
?
9gru_100/gru_cell_100/recurrent_kernel/Read/ReadVariableOpReadVariableOp%gru_100/gru_cell_100/recurrent_kernel* 
_output_shapes
:
??*
dtype0
?
gru_100/gru_cell_100/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?**
shared_namegru_100/gru_cell_100/bias
?
-gru_100/gru_cell_100/bias/Read/ReadVariableOpReadVariableOpgru_100/gru_cell_100/bias*
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
Adam/dense_200/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?d*(
shared_nameAdam/dense_200/kernel/m
?
+Adam/dense_200/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_200/kernel/m*
_output_shapes
:	?d*
dtype0
?
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
?
Adam/dense_201/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*(
shared_nameAdam/dense_201/kernel/m
?
+Adam/dense_201/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_201/kernel/m*
_output_shapes

:d*
dtype0
?
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
?
"Adam/gru_100/gru_cell_100/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*3
shared_name$"Adam/gru_100/gru_cell_100/kernel/m
?
6Adam/gru_100/gru_cell_100/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/gru_100/gru_cell_100/kernel/m*
_output_shapes
:	?*
dtype0
?
,Adam/gru_100/gru_cell_100/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*=
shared_name.,Adam/gru_100/gru_cell_100/recurrent_kernel/m
?
@Adam/gru_100/gru_cell_100/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/gru_100/gru_cell_100/recurrent_kernel/m* 
_output_shapes
:
??*
dtype0
?
 Adam/gru_100/gru_cell_100/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*1
shared_name" Adam/gru_100/gru_cell_100/bias/m
?
4Adam/gru_100/gru_cell_100/bias/m/Read/ReadVariableOpReadVariableOp Adam/gru_100/gru_cell_100/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_200/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?d*(
shared_nameAdam/dense_200/kernel/v
?
+Adam/dense_200/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_200/kernel/v*
_output_shapes
:	?d*
dtype0
?
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
?
Adam/dense_201/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*(
shared_nameAdam/dense_201/kernel/v
?
+Adam/dense_201/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_201/kernel/v*
_output_shapes

:d*
dtype0
?
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
?
"Adam/gru_100/gru_cell_100/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*3
shared_name$"Adam/gru_100/gru_cell_100/kernel/v
?
6Adam/gru_100/gru_cell_100/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/gru_100/gru_cell_100/kernel/v*
_output_shapes
:	?*
dtype0
?
,Adam/gru_100/gru_cell_100/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*=
shared_name.,Adam/gru_100/gru_cell_100/recurrent_kernel/v
?
@Adam/gru_100/gru_cell_100/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/gru_100/gru_cell_100/recurrent_kernel/v* 
_output_shapes
:
??*
dtype0
?
 Adam/gru_100/gru_cell_100/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*1
shared_name" Adam/gru_100/gru_cell_100/bias/v
?
4Adam/gru_100/gru_cell_100/bias/v/Read/ReadVariableOpReadVariableOp Adam/gru_100/gru_cell_100/bias/v*
_output_shapes	
:?*
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
	variables
regularization_losses
	keras_api
	
signatures
l

cell

state_spec
trainable_variables
	variables
regularization_losses
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
 learning_ratemGmHmImJ!mK"mL#mMvNvOvPvQ!vR"vS#vT
1
!0
"1
#2
3
4
5
6
1
!0
"1
#2
3
4
5
6
 
?
$non_trainable_variables
%layer_metrics
trainable_variables

&layers
	variables
'layer_regularization_losses
regularization_losses
(metrics
 
~

!kernel
"recurrent_kernel
#bias
)trainable_variables
*regularization_losses
+	variables
,	keras_api
 

!0
"1
#2

!0
"1
#2
 
?
-non_trainable_variables
.layer_metrics
trainable_variables

/layers
	variables
0layer_regularization_losses
regularization_losses

1states
2metrics
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
?
3non_trainable_variables
4layer_regularization_losses
5layer_metrics
trainable_variables
regularization_losses

6layers
	variables
7metrics
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
?
8non_trainable_variables
9layer_regularization_losses
:layer_metrics
trainable_variables
regularization_losses

;layers
	variables
<metrics
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
VARIABLE_VALUEgru_100/gru_cell_100/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE%gru_100/gru_cell_100/recurrent_kernel0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUEgru_100/gru_cell_100/bias0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
 
 

0
1
2
 

=0
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
?layer_regularization_losses
@layer_metrics
)trainable_variables
*regularization_losses

Alayers
+	variables
Bmetrics
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
??
VARIABLE_VALUE"Adam/gru_100/gru_cell_100/kernel/mLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/gru_100/gru_cell_100/recurrent_kernel/mLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adam/gru_100/gru_cell_100/bias/mLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_200/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_200/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_201/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_201/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE"Adam/gru_100/gru_cell_100/kernel/vLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE,Adam/gru_100/gru_cell_100/recurrent_kernel/vLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adam/gru_100/gru_cell_100/bias/vLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_gru_100_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_gru_100_inputgru_100/gru_cell_100/kernelgru_100/gru_cell_100/bias%gru_100/gru_cell_100/recurrent_kerneldense_200/kerneldense_200/biasdense_201/kerneldense_201/bias*
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
%__inference_signature_wrapper_4938807
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
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
GPU 2J 8? *)
f$R"
 __inference__traced_save_4940207
?
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
GPU 2J 8? *,
f'R%
#__inference__traced_restore_4940301??
?Y
?
while_body_4938292
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_gru_cell_100_matmul_readvariableop_resource_0:	?C
4while_gru_cell_100_biasadd_readvariableop_resource_0:	?@
,while_gru_cell_100_readvariableop_resource_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_gru_cell_100_matmul_readvariableop_resource:	?A
2while_gru_cell_100_biasadd_readvariableop_resource:	?>
*while_gru_cell_100_readvariableop_resource:
????)while/gru_cell_100/BiasAdd/ReadVariableOp?(while/gru_cell_100/MatMul/ReadVariableOp?!while/gru_cell_100/ReadVariableOp?#while/gru_cell_100/ReadVariableOp_1?
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
(while/gru_cell_100/MatMul/ReadVariableOpReadVariableOp3while_gru_cell_100_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02*
(while/gru_cell_100/MatMul/ReadVariableOp?
while/gru_cell_100/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/gru_cell_100/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/MatMul?
)while/gru_cell_100/BiasAdd/ReadVariableOpReadVariableOp4while_gru_cell_100_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/gru_cell_100/BiasAdd/ReadVariableOp?
while/gru_cell_100/BiasAddBiasAdd#while/gru_cell_100/MatMul:product:01while/gru_cell_100/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/BiasAdd?
"while/gru_cell_100/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"while/gru_cell_100/split/split_dim?
while/gru_cell_100/splitSplit+while/gru_cell_100/split/split_dim:output:0#while/gru_cell_100/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
while/gru_cell_100/split?
!while/gru_cell_100/ReadVariableOpReadVariableOp,while_gru_cell_100_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02#
!while/gru_cell_100/ReadVariableOp?
&while/gru_cell_100/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/gru_cell_100/strided_slice/stack?
(while/gru_cell_100/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2*
(while/gru_cell_100/strided_slice/stack_1?
(while/gru_cell_100/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_100/strided_slice/stack_2?
 while/gru_cell_100/strided_sliceStridedSlice)while/gru_cell_100/ReadVariableOp:value:0/while/gru_cell_100/strided_slice/stack:output:01while/gru_cell_100/strided_slice/stack_1:output:01while/gru_cell_100/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2"
 while/gru_cell_100/strided_slice?
while/gru_cell_100/MatMul_1MatMulwhile_placeholder_2)while/gru_cell_100/strided_slice:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/MatMul_1?
while/gru_cell_100/ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2
while/gru_cell_100/Const?
$while/gru_cell_100/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2&
$while/gru_cell_100/split_1/split_dim?
while/gru_cell_100/split_1SplitV%while/gru_cell_100/MatMul_1:product:0!while/gru_cell_100/Const:output:0-while/gru_cell_100/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:??????????:??????????:????????? *
	num_split2
while/gru_cell_100/split_1?
while/gru_cell_100/addAddV2!while/gru_cell_100/split:output:0#while/gru_cell_100/split_1:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/add?
while/gru_cell_100/SigmoidSigmoidwhile/gru_cell_100/add:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/Sigmoid?
while/gru_cell_100/add_1AddV2!while/gru_cell_100/split:output:1#while/gru_cell_100/split_1:output:1*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/add_1?
while/gru_cell_100/Sigmoid_1Sigmoidwhile/gru_cell_100/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/Sigmoid_1?
while/gru_cell_100/mulMul while/gru_cell_100/Sigmoid_1:y:0while_placeholder_2*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/mul?
#while/gru_cell_100/ReadVariableOp_1ReadVariableOp,while_gru_cell_100_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02%
#while/gru_cell_100/ReadVariableOp_1?
(while/gru_cell_100/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2*
(while/gru_cell_100/strided_slice_1/stack?
*while/gru_cell_100/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/gru_cell_100/strided_slice_1/stack_1?
*while/gru_cell_100/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/gru_cell_100/strided_slice_1/stack_2?
"while/gru_cell_100/strided_slice_1StridedSlice+while/gru_cell_100/ReadVariableOp_1:value:01while/gru_cell_100/strided_slice_1/stack:output:03while/gru_cell_100/strided_slice_1/stack_1:output:03while/gru_cell_100/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2$
"while/gru_cell_100/strided_slice_1?
while/gru_cell_100/MatMul_2MatMulwhile/gru_cell_100/mul:z:0+while/gru_cell_100/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/MatMul_2?
while/gru_cell_100/add_2AddV2!while/gru_cell_100/split:output:2%while/gru_cell_100/MatMul_2:product:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/add_2?
while/gru_cell_100/ReluReluwhile/gru_cell_100/add_2:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/Relu?
while/gru_cell_100/mul_1Mulwhile/gru_cell_100/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/mul_1y
while/gru_cell_100/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/gru_cell_100/sub/x?
while/gru_cell_100/subSub!while/gru_cell_100/sub/x:output:0while/gru_cell_100/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/sub?
while/gru_cell_100/mul_2Mulwhile/gru_cell_100/sub:z:0%while/gru_cell_100/Relu:activations:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/mul_2?
while/gru_cell_100/add_3AddV2while/gru_cell_100/mul_1:z:0while/gru_cell_100/mul_2:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/add_3?
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
while/add_1?
while/IdentityIdentitywhile/add_1:z:0*^while/gru_cell_100/BiasAdd/ReadVariableOp)^while/gru_cell_100/MatMul/ReadVariableOp"^while/gru_cell_100/ReadVariableOp$^while/gru_cell_100/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations*^while/gru_cell_100/BiasAdd/ReadVariableOp)^while/gru_cell_100/MatMul/ReadVariableOp"^while/gru_cell_100/ReadVariableOp$^while/gru_cell_100/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0*^while/gru_cell_100/BiasAdd/ReadVariableOp)^while/gru_cell_100/MatMul/ReadVariableOp"^while/gru_cell_100/ReadVariableOp$^while/gru_cell_100/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/gru_cell_100/BiasAdd/ReadVariableOp)^while/gru_cell_100/MatMul/ReadVariableOp"^while/gru_cell_100/ReadVariableOp$^while/gru_cell_100/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/gru_cell_100/add_3:z:0*^while/gru_cell_100/BiasAdd/ReadVariableOp)^while/gru_cell_100/MatMul/ReadVariableOp"^while/gru_cell_100/ReadVariableOp$^while/gru_cell_100/ReadVariableOp_1*
T0*(
_output_shapes
:??????????2
while/Identity_4"j
2while_gru_cell_100_biasadd_readvariableop_resource4while_gru_cell_100_biasadd_readvariableop_resource_0"h
1while_gru_cell_100_matmul_readvariableop_resource3while_gru_cell_100_matmul_readvariableop_resource_0"Z
*while_gru_cell_100_readvariableop_resource,while_gru_cell_100_readvariableop_resource_0")
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
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
K__inference_sequential_100_layer_call_and_return_conditional_losses_4938759
gru_100_input"
gru_100_4938741:	?
gru_100_4938743:	?#
gru_100_4938745:
??$
dense_200_4938748:	?d
dense_200_4938750:d#
dense_201_4938753:d
dense_201_4938755:
identity??!dense_200/StatefulPartitionedCall?!dense_201/StatefulPartitionedCall?gru_100/StatefulPartitionedCall?
gru_100/StatefulPartitionedCallStatefulPartitionedCallgru_100_inputgru_100_4938741gru_100_4938743gru_100_4938745*
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
GPU 2J 8? *M
fHRF
D__inference_gru_100_layer_call_and_return_conditional_losses_49383882!
gru_100/StatefulPartitionedCall?
!dense_200/StatefulPartitionedCallStatefulPartitionedCall(gru_100/StatefulPartitionedCall:output:0dense_200_4938748dense_200_4938750*
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
F__inference_dense_200_layer_call_and_return_conditional_losses_49384072#
!dense_200/StatefulPartitionedCall?
!dense_201/StatefulPartitionedCallStatefulPartitionedCall*dense_200/StatefulPartitionedCall:output:0dense_201_4938753dense_201_4938755*
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
F__inference_dense_201_layer_call_and_return_conditional_losses_49384232#
!dense_201/StatefulPartitionedCall?
IdentityIdentity*dense_201/StatefulPartitionedCall:output:0"^dense_200/StatefulPartitionedCall"^dense_201/StatefulPartitionedCall ^gru_100/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2F
!dense_200/StatefulPartitionedCall!dense_200/StatefulPartitionedCall2F
!dense_201/StatefulPartitionedCall!dense_201/StatefulPartitionedCall2B
gru_100/StatefulPartitionedCallgru_100/StatefulPartitionedCall:Z V
+
_output_shapes
:?????????
'
_user_specified_namegru_100_input
?
?
)__inference_gru_100_layer_call_fn_4939235
inputs_0
unknown:	?
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
GPU 2J 8? *M
fHRF
D__inference_gru_100_layer_call_and_return_conditional_losses_49379772
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
??
?
"__inference__wrapped_model_4937615
gru_100_inputU
Bsequential_100_gru_100_gru_cell_100_matmul_readvariableop_resource:	?R
Csequential_100_gru_100_gru_cell_100_biasadd_readvariableop_resource:	?O
;sequential_100_gru_100_gru_cell_100_readvariableop_resource:
??J
7sequential_100_dense_200_matmul_readvariableop_resource:	?dF
8sequential_100_dense_200_biasadd_readvariableop_resource:dI
7sequential_100_dense_201_matmul_readvariableop_resource:dF
8sequential_100_dense_201_biasadd_readvariableop_resource:
identity??/sequential_100/dense_200/BiasAdd/ReadVariableOp?.sequential_100/dense_200/MatMul/ReadVariableOp?/sequential_100/dense_201/BiasAdd/ReadVariableOp?.sequential_100/dense_201/MatMul/ReadVariableOp?:sequential_100/gru_100/gru_cell_100/BiasAdd/ReadVariableOp?9sequential_100/gru_100/gru_cell_100/MatMul/ReadVariableOp?2sequential_100/gru_100/gru_cell_100/ReadVariableOp?4sequential_100/gru_100/gru_cell_100/ReadVariableOp_1?sequential_100/gru_100/whiley
sequential_100/gru_100/ShapeShapegru_100_input*
T0*
_output_shapes
:2
sequential_100/gru_100/Shape?
*sequential_100/gru_100/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_100/gru_100/strided_slice/stack?
,sequential_100/gru_100/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_100/gru_100/strided_slice/stack_1?
,sequential_100/gru_100/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_100/gru_100/strided_slice/stack_2?
$sequential_100/gru_100/strided_sliceStridedSlice%sequential_100/gru_100/Shape:output:03sequential_100/gru_100/strided_slice/stack:output:05sequential_100/gru_100/strided_slice/stack_1:output:05sequential_100/gru_100/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$sequential_100/gru_100/strided_slice?
"sequential_100/gru_100/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2$
"sequential_100/gru_100/zeros/mul/y?
 sequential_100/gru_100/zeros/mulMul-sequential_100/gru_100/strided_slice:output:0+sequential_100/gru_100/zeros/mul/y:output:0*
T0*
_output_shapes
: 2"
 sequential_100/gru_100/zeros/mul?
#sequential_100/gru_100/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2%
#sequential_100/gru_100/zeros/Less/y?
!sequential_100/gru_100/zeros/LessLess$sequential_100/gru_100/zeros/mul:z:0,sequential_100/gru_100/zeros/Less/y:output:0*
T0*
_output_shapes
: 2#
!sequential_100/gru_100/zeros/Less?
%sequential_100/gru_100/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2'
%sequential_100/gru_100/zeros/packed/1?
#sequential_100/gru_100/zeros/packedPack-sequential_100/gru_100/strided_slice:output:0.sequential_100/gru_100/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2%
#sequential_100/gru_100/zeros/packed?
"sequential_100/gru_100/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"sequential_100/gru_100/zeros/Const?
sequential_100/gru_100/zerosFill,sequential_100/gru_100/zeros/packed:output:0+sequential_100/gru_100/zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
sequential_100/gru_100/zeros?
%sequential_100/gru_100/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2'
%sequential_100/gru_100/transpose/perm?
 sequential_100/gru_100/transpose	Transposegru_100_input.sequential_100/gru_100/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2"
 sequential_100/gru_100/transpose?
sequential_100/gru_100/Shape_1Shape$sequential_100/gru_100/transpose:y:0*
T0*
_output_shapes
:2 
sequential_100/gru_100/Shape_1?
,sequential_100/gru_100/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_100/gru_100/strided_slice_1/stack?
.sequential_100/gru_100/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_100/gru_100/strided_slice_1/stack_1?
.sequential_100/gru_100/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_100/gru_100/strided_slice_1/stack_2?
&sequential_100/gru_100/strided_slice_1StridedSlice'sequential_100/gru_100/Shape_1:output:05sequential_100/gru_100/strided_slice_1/stack:output:07sequential_100/gru_100/strided_slice_1/stack_1:output:07sequential_100/gru_100/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&sequential_100/gru_100/strided_slice_1?
2sequential_100/gru_100/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????24
2sequential_100/gru_100/TensorArrayV2/element_shape?
$sequential_100/gru_100/TensorArrayV2TensorListReserve;sequential_100/gru_100/TensorArrayV2/element_shape:output:0/sequential_100/gru_100/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02&
$sequential_100/gru_100/TensorArrayV2?
Lsequential_100/gru_100/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2N
Lsequential_100/gru_100/TensorArrayUnstack/TensorListFromTensor/element_shape?
>sequential_100/gru_100/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_100/gru_100/transpose:y:0Usequential_100/gru_100/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02@
>sequential_100/gru_100/TensorArrayUnstack/TensorListFromTensor?
,sequential_100/gru_100/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_100/gru_100/strided_slice_2/stack?
.sequential_100/gru_100/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_100/gru_100/strided_slice_2/stack_1?
.sequential_100/gru_100/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_100/gru_100/strided_slice_2/stack_2?
&sequential_100/gru_100/strided_slice_2StridedSlice$sequential_100/gru_100/transpose:y:05sequential_100/gru_100/strided_slice_2/stack:output:07sequential_100/gru_100/strided_slice_2/stack_1:output:07sequential_100/gru_100/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2(
&sequential_100/gru_100/strided_slice_2?
9sequential_100/gru_100/gru_cell_100/MatMul/ReadVariableOpReadVariableOpBsequential_100_gru_100_gru_cell_100_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02;
9sequential_100/gru_100/gru_cell_100/MatMul/ReadVariableOp?
*sequential_100/gru_100/gru_cell_100/MatMulMatMul/sequential_100/gru_100/strided_slice_2:output:0Asequential_100/gru_100/gru_cell_100/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2,
*sequential_100/gru_100/gru_cell_100/MatMul?
:sequential_100/gru_100/gru_cell_100/BiasAdd/ReadVariableOpReadVariableOpCsequential_100_gru_100_gru_cell_100_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02<
:sequential_100/gru_100/gru_cell_100/BiasAdd/ReadVariableOp?
+sequential_100/gru_100/gru_cell_100/BiasAddBiasAdd4sequential_100/gru_100/gru_cell_100/MatMul:product:0Bsequential_100/gru_100/gru_cell_100/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2-
+sequential_100/gru_100/gru_cell_100/BiasAdd?
3sequential_100/gru_100/gru_cell_100/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????25
3sequential_100/gru_100/gru_cell_100/split/split_dim?
)sequential_100/gru_100/gru_cell_100/splitSplit<sequential_100/gru_100/gru_cell_100/split/split_dim:output:04sequential_100/gru_100/gru_cell_100/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2+
)sequential_100/gru_100/gru_cell_100/split?
2sequential_100/gru_100/gru_cell_100/ReadVariableOpReadVariableOp;sequential_100_gru_100_gru_cell_100_readvariableop_resource* 
_output_shapes
:
??*
dtype024
2sequential_100/gru_100/gru_cell_100/ReadVariableOp?
7sequential_100/gru_100/gru_cell_100/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7sequential_100/gru_100/gru_cell_100/strided_slice/stack?
9sequential_100/gru_100/gru_cell_100/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2;
9sequential_100/gru_100/gru_cell_100/strided_slice/stack_1?
9sequential_100/gru_100/gru_cell_100/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9sequential_100/gru_100/gru_cell_100/strided_slice/stack_2?
1sequential_100/gru_100/gru_cell_100/strided_sliceStridedSlice:sequential_100/gru_100/gru_cell_100/ReadVariableOp:value:0@sequential_100/gru_100/gru_cell_100/strided_slice/stack:output:0Bsequential_100/gru_100/gru_cell_100/strided_slice/stack_1:output:0Bsequential_100/gru_100/gru_cell_100/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask23
1sequential_100/gru_100/gru_cell_100/strided_slice?
,sequential_100/gru_100/gru_cell_100/MatMul_1MatMul%sequential_100/gru_100/zeros:output:0:sequential_100/gru_100/gru_cell_100/strided_slice:output:0*
T0*(
_output_shapes
:??????????2.
,sequential_100/gru_100/gru_cell_100/MatMul_1?
)sequential_100/gru_100/gru_cell_100/ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2+
)sequential_100/gru_100/gru_cell_100/Const?
5sequential_100/gru_100/gru_cell_100/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????27
5sequential_100/gru_100/gru_cell_100/split_1/split_dim?
+sequential_100/gru_100/gru_cell_100/split_1SplitV6sequential_100/gru_100/gru_cell_100/MatMul_1:product:02sequential_100/gru_100/gru_cell_100/Const:output:0>sequential_100/gru_100/gru_cell_100/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:??????????:??????????:????????? *
	num_split2-
+sequential_100/gru_100/gru_cell_100/split_1?
'sequential_100/gru_100/gru_cell_100/addAddV22sequential_100/gru_100/gru_cell_100/split:output:04sequential_100/gru_100/gru_cell_100/split_1:output:0*
T0*(
_output_shapes
:??????????2)
'sequential_100/gru_100/gru_cell_100/add?
+sequential_100/gru_100/gru_cell_100/SigmoidSigmoid+sequential_100/gru_100/gru_cell_100/add:z:0*
T0*(
_output_shapes
:??????????2-
+sequential_100/gru_100/gru_cell_100/Sigmoid?
)sequential_100/gru_100/gru_cell_100/add_1AddV22sequential_100/gru_100/gru_cell_100/split:output:14sequential_100/gru_100/gru_cell_100/split_1:output:1*
T0*(
_output_shapes
:??????????2+
)sequential_100/gru_100/gru_cell_100/add_1?
-sequential_100/gru_100/gru_cell_100/Sigmoid_1Sigmoid-sequential_100/gru_100/gru_cell_100/add_1:z:0*
T0*(
_output_shapes
:??????????2/
-sequential_100/gru_100/gru_cell_100/Sigmoid_1?
'sequential_100/gru_100/gru_cell_100/mulMul1sequential_100/gru_100/gru_cell_100/Sigmoid_1:y:0%sequential_100/gru_100/zeros:output:0*
T0*(
_output_shapes
:??????????2)
'sequential_100/gru_100/gru_cell_100/mul?
4sequential_100/gru_100/gru_cell_100/ReadVariableOp_1ReadVariableOp;sequential_100_gru_100_gru_cell_100_readvariableop_resource* 
_output_shapes
:
??*
dtype026
4sequential_100/gru_100/gru_cell_100/ReadVariableOp_1?
9sequential_100/gru_100/gru_cell_100/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2;
9sequential_100/gru_100/gru_cell_100/strided_slice_1/stack?
;sequential_100/gru_100/gru_cell_100/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2=
;sequential_100/gru_100/gru_cell_100/strided_slice_1/stack_1?
;sequential_100/gru_100/gru_cell_100/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;sequential_100/gru_100/gru_cell_100/strided_slice_1/stack_2?
3sequential_100/gru_100/gru_cell_100/strided_slice_1StridedSlice<sequential_100/gru_100/gru_cell_100/ReadVariableOp_1:value:0Bsequential_100/gru_100/gru_cell_100/strided_slice_1/stack:output:0Dsequential_100/gru_100/gru_cell_100/strided_slice_1/stack_1:output:0Dsequential_100/gru_100/gru_cell_100/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask25
3sequential_100/gru_100/gru_cell_100/strided_slice_1?
,sequential_100/gru_100/gru_cell_100/MatMul_2MatMul+sequential_100/gru_100/gru_cell_100/mul:z:0<sequential_100/gru_100/gru_cell_100/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2.
,sequential_100/gru_100/gru_cell_100/MatMul_2?
)sequential_100/gru_100/gru_cell_100/add_2AddV22sequential_100/gru_100/gru_cell_100/split:output:26sequential_100/gru_100/gru_cell_100/MatMul_2:product:0*
T0*(
_output_shapes
:??????????2+
)sequential_100/gru_100/gru_cell_100/add_2?
(sequential_100/gru_100/gru_cell_100/ReluRelu-sequential_100/gru_100/gru_cell_100/add_2:z:0*
T0*(
_output_shapes
:??????????2*
(sequential_100/gru_100/gru_cell_100/Relu?
)sequential_100/gru_100/gru_cell_100/mul_1Mul/sequential_100/gru_100/gru_cell_100/Sigmoid:y:0%sequential_100/gru_100/zeros:output:0*
T0*(
_output_shapes
:??????????2+
)sequential_100/gru_100/gru_cell_100/mul_1?
)sequential_100/gru_100/gru_cell_100/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2+
)sequential_100/gru_100/gru_cell_100/sub/x?
'sequential_100/gru_100/gru_cell_100/subSub2sequential_100/gru_100/gru_cell_100/sub/x:output:0/sequential_100/gru_100/gru_cell_100/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2)
'sequential_100/gru_100/gru_cell_100/sub?
)sequential_100/gru_100/gru_cell_100/mul_2Mul+sequential_100/gru_100/gru_cell_100/sub:z:06sequential_100/gru_100/gru_cell_100/Relu:activations:0*
T0*(
_output_shapes
:??????????2+
)sequential_100/gru_100/gru_cell_100/mul_2?
)sequential_100/gru_100/gru_cell_100/add_3AddV2-sequential_100/gru_100/gru_cell_100/mul_1:z:0-sequential_100/gru_100/gru_cell_100/mul_2:z:0*
T0*(
_output_shapes
:??????????2+
)sequential_100/gru_100/gru_cell_100/add_3?
4sequential_100/gru_100/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   26
4sequential_100/gru_100/TensorArrayV2_1/element_shape?
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
sequential_100/gru_100/time?
/sequential_100/gru_100/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????21
/sequential_100/gru_100/while/maximum_iterations?
)sequential_100/gru_100/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2+
)sequential_100/gru_100/while/loop_counter?
sequential_100/gru_100/whileWhile2sequential_100/gru_100/while/loop_counter:output:08sequential_100/gru_100/while/maximum_iterations:output:0$sequential_100/gru_100/time:output:0/sequential_100/gru_100/TensorArrayV2_1:handle:0%sequential_100/gru_100/zeros:output:0/sequential_100/gru_100/strided_slice_1:output:0Nsequential_100/gru_100/TensorArrayUnstack/TensorListFromTensor:output_handle:0Bsequential_100_gru_100_gru_cell_100_matmul_readvariableop_resourceCsequential_100_gru_100_gru_cell_100_biasadd_readvariableop_resource;sequential_100_gru_100_gru_cell_100_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*5
body-R+
)sequential_100_gru_100_while_body_4937506*5
cond-R+
)sequential_100_gru_100_while_cond_4937505*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations 2
sequential_100/gru_100/while?
Gsequential_100/gru_100/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2I
Gsequential_100/gru_100/TensorArrayV2Stack/TensorListStack/element_shape?
9sequential_100/gru_100/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_100/gru_100/while:output:3Psequential_100/gru_100/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02;
9sequential_100/gru_100/TensorArrayV2Stack/TensorListStack?
,sequential_100/gru_100/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2.
,sequential_100/gru_100/strided_slice_3/stack?
.sequential_100/gru_100/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 20
.sequential_100/gru_100/strided_slice_3/stack_1?
.sequential_100/gru_100/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_100/gru_100/strided_slice_3/stack_2?
&sequential_100/gru_100/strided_slice_3StridedSliceBsequential_100/gru_100/TensorArrayV2Stack/TensorListStack:tensor:05sequential_100/gru_100/strided_slice_3/stack:output:07sequential_100/gru_100/strided_slice_3/stack_1:output:07sequential_100/gru_100/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2(
&sequential_100/gru_100/strided_slice_3?
'sequential_100/gru_100/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2)
'sequential_100/gru_100/transpose_1/perm?
"sequential_100/gru_100/transpose_1	TransposeBsequential_100/gru_100/TensorArrayV2Stack/TensorListStack:tensor:00sequential_100/gru_100/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2$
"sequential_100/gru_100/transpose_1?
sequential_100/gru_100/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2 
sequential_100/gru_100/runtime?
.sequential_100/dense_200/MatMul/ReadVariableOpReadVariableOp7sequential_100_dense_200_matmul_readvariableop_resource*
_output_shapes
:	?d*
dtype020
.sequential_100/dense_200/MatMul/ReadVariableOp?
sequential_100/dense_200/MatMulMatMul/sequential_100/gru_100/strided_slice_3:output:06sequential_100/dense_200/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2!
sequential_100/dense_200/MatMul?
/sequential_100/dense_200/BiasAdd/ReadVariableOpReadVariableOp8sequential_100_dense_200_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype021
/sequential_100/dense_200/BiasAdd/ReadVariableOp?
 sequential_100/dense_200/BiasAddBiasAdd)sequential_100/dense_200/MatMul:product:07sequential_100/dense_200/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2"
 sequential_100/dense_200/BiasAdd?
sequential_100/dense_200/ReluRelu)sequential_100/dense_200/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
sequential_100/dense_200/Relu?
.sequential_100/dense_201/MatMul/ReadVariableOpReadVariableOp7sequential_100_dense_201_matmul_readvariableop_resource*
_output_shapes

:d*
dtype020
.sequential_100/dense_201/MatMul/ReadVariableOp?
sequential_100/dense_201/MatMulMatMul+sequential_100/dense_200/Relu:activations:06sequential_100/dense_201/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2!
sequential_100/dense_201/MatMul?
/sequential_100/dense_201/BiasAdd/ReadVariableOpReadVariableOp8sequential_100_dense_201_biasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/sequential_100/dense_201/BiasAdd/ReadVariableOp?
 sequential_100/dense_201/BiasAddBiasAdd)sequential_100/dense_201/MatMul:product:07sequential_100/dense_201/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2"
 sequential_100/dense_201/BiasAdd?
IdentityIdentity)sequential_100/dense_201/BiasAdd:output:00^sequential_100/dense_200/BiasAdd/ReadVariableOp/^sequential_100/dense_200/MatMul/ReadVariableOp0^sequential_100/dense_201/BiasAdd/ReadVariableOp/^sequential_100/dense_201/MatMul/ReadVariableOp;^sequential_100/gru_100/gru_cell_100/BiasAdd/ReadVariableOp:^sequential_100/gru_100/gru_cell_100/MatMul/ReadVariableOp3^sequential_100/gru_100/gru_cell_100/ReadVariableOp5^sequential_100/gru_100/gru_cell_100/ReadVariableOp_1^sequential_100/gru_100/while*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2b
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
:?????????
'
_user_specified_namegru_100_input
?=
?
D__inference_gru_100_layer_call_and_return_conditional_losses_4937773

inputs'
gru_cell_100_4937697:	?#
gru_cell_100_4937699:	?(
gru_cell_100_4937701:
??
identity??$gru_cell_100/StatefulPartitionedCall?whileD
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
strided_slice_2?
$gru_cell_100/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0gru_cell_100_4937697gru_cell_100_4937699gru_cell_100_4937701*
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
GPU 2J 8? *R
fMRK
I__inference_gru_cell_100_layer_call_and_return_conditional_losses_49376962&
$gru_cell_100/StatefulPartitionedCall?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0gru_cell_100_4937697gru_cell_100_4937699gru_cell_100_4937701*
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
while_body_4937709*
condR
while_cond_4937708*9
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
IdentityIdentitystrided_slice_3:output:0%^gru_cell_100/StatefulPartitionedCall^while*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$gru_cell_100/StatefulPartitionedCall$gru_cell_100/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_4939844
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_4939844___redundant_placeholder05
1while_while_cond_4939844___redundant_placeholder15
1while_while_cond_4939844___redundant_placeholder25
1while_while_cond_4939844___redundant_placeholder3
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

?
K__inference_sequential_100_layer_call_and_return_conditional_losses_4939029

inputsF
3gru_100_gru_cell_100_matmul_readvariableop_resource:	?C
4gru_100_gru_cell_100_biasadd_readvariableop_resource:	?@
,gru_100_gru_cell_100_readvariableop_resource:
??;
(dense_200_matmul_readvariableop_resource:	?d7
)dense_200_biasadd_readvariableop_resource:d:
(dense_201_matmul_readvariableop_resource:d7
)dense_201_biasadd_readvariableop_resource:
identity?? dense_200/BiasAdd/ReadVariableOp?dense_200/MatMul/ReadVariableOp? dense_201/BiasAdd/ReadVariableOp?dense_201/MatMul/ReadVariableOp?+gru_100/gru_cell_100/BiasAdd/ReadVariableOp?*gru_100/gru_cell_100/MatMul/ReadVariableOp?#gru_100/gru_cell_100/ReadVariableOp?%gru_100/gru_cell_100/ReadVariableOp_1?gru_100/whileT
gru_100/ShapeShapeinputs*
T0*
_output_shapes
:2
gru_100/Shape?
gru_100/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_100/strided_slice/stack?
gru_100/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_100/strided_slice/stack_1?
gru_100/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_100/strided_slice/stack_2?
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
B :?2
gru_100/zeros/mul/y?
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
B :?2
gru_100/zeros/Less/y?
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
B :?2
gru_100/zeros/packed/1?
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
gru_100/zeros/Const?
gru_100/zerosFillgru_100/zeros/packed:output:0gru_100/zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
gru_100/zeros?
gru_100/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_100/transpose/perm?
gru_100/transpose	Transposeinputsgru_100/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2
gru_100/transposeg
gru_100/Shape_1Shapegru_100/transpose:y:0*
T0*
_output_shapes
:2
gru_100/Shape_1?
gru_100/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_100/strided_slice_1/stack?
gru_100/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
gru_100/strided_slice_1/stack_1?
gru_100/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
gru_100/strided_slice_1/stack_2?
gru_100/strided_slice_1StridedSlicegru_100/Shape_1:output:0&gru_100/strided_slice_1/stack:output:0(gru_100/strided_slice_1/stack_1:output:0(gru_100/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru_100/strided_slice_1?
#gru_100/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2%
#gru_100/TensorArrayV2/element_shape?
gru_100/TensorArrayV2TensorListReserve,gru_100/TensorArrayV2/element_shape:output:0 gru_100/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_100/TensorArrayV2?
=gru_100/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2?
=gru_100/TensorArrayUnstack/TensorListFromTensor/element_shape?
/gru_100/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorgru_100/transpose:y:0Fgru_100/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/gru_100/TensorArrayUnstack/TensorListFromTensor?
gru_100/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_100/strided_slice_2/stack?
gru_100/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
gru_100/strided_slice_2/stack_1?
gru_100/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
gru_100/strided_slice_2/stack_2?
gru_100/strided_slice_2StridedSlicegru_100/transpose:y:0&gru_100/strided_slice_2/stack:output:0(gru_100/strided_slice_2/stack_1:output:0(gru_100/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
gru_100/strided_slice_2?
*gru_100/gru_cell_100/MatMul/ReadVariableOpReadVariableOp3gru_100_gru_cell_100_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02,
*gru_100/gru_cell_100/MatMul/ReadVariableOp?
gru_100/gru_cell_100/MatMulMatMul gru_100/strided_slice_2:output:02gru_100/gru_cell_100/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_100/gru_cell_100/MatMul?
+gru_100/gru_cell_100/BiasAdd/ReadVariableOpReadVariableOp4gru_100_gru_cell_100_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+gru_100/gru_cell_100/BiasAdd/ReadVariableOp?
gru_100/gru_cell_100/BiasAddBiasAdd%gru_100/gru_cell_100/MatMul:product:03gru_100/gru_cell_100/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_100/gru_cell_100/BiasAdd?
$gru_100/gru_cell_100/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2&
$gru_100/gru_cell_100/split/split_dim?
gru_100/gru_cell_100/splitSplit-gru_100/gru_cell_100/split/split_dim:output:0%gru_100/gru_cell_100/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
gru_100/gru_cell_100/split?
#gru_100/gru_cell_100/ReadVariableOpReadVariableOp,gru_100_gru_cell_100_readvariableop_resource* 
_output_shapes
:
??*
dtype02%
#gru_100/gru_cell_100/ReadVariableOp?
(gru_100/gru_cell_100/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(gru_100/gru_cell_100/strided_slice/stack?
*gru_100/gru_cell_100/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2,
*gru_100/gru_cell_100/strided_slice/stack_1?
*gru_100/gru_cell_100/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*gru_100/gru_cell_100/strided_slice/stack_2?
"gru_100/gru_cell_100/strided_sliceStridedSlice+gru_100/gru_cell_100/ReadVariableOp:value:01gru_100/gru_cell_100/strided_slice/stack:output:03gru_100/gru_cell_100/strided_slice/stack_1:output:03gru_100/gru_cell_100/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2$
"gru_100/gru_cell_100/strided_slice?
gru_100/gru_cell_100/MatMul_1MatMulgru_100/zeros:output:0+gru_100/gru_cell_100/strided_slice:output:0*
T0*(
_output_shapes
:??????????2
gru_100/gru_cell_100/MatMul_1?
gru_100/gru_cell_100/ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2
gru_100/gru_cell_100/Const?
&gru_100/gru_cell_100/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2(
&gru_100/gru_cell_100/split_1/split_dim?
gru_100/gru_cell_100/split_1SplitV'gru_100/gru_cell_100/MatMul_1:product:0#gru_100/gru_cell_100/Const:output:0/gru_100/gru_cell_100/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:??????????:??????????:????????? *
	num_split2
gru_100/gru_cell_100/split_1?
gru_100/gru_cell_100/addAddV2#gru_100/gru_cell_100/split:output:0%gru_100/gru_cell_100/split_1:output:0*
T0*(
_output_shapes
:??????????2
gru_100/gru_cell_100/add?
gru_100/gru_cell_100/SigmoidSigmoidgru_100/gru_cell_100/add:z:0*
T0*(
_output_shapes
:??????????2
gru_100/gru_cell_100/Sigmoid?
gru_100/gru_cell_100/add_1AddV2#gru_100/gru_cell_100/split:output:1%gru_100/gru_cell_100/split_1:output:1*
T0*(
_output_shapes
:??????????2
gru_100/gru_cell_100/add_1?
gru_100/gru_cell_100/Sigmoid_1Sigmoidgru_100/gru_cell_100/add_1:z:0*
T0*(
_output_shapes
:??????????2 
gru_100/gru_cell_100/Sigmoid_1?
gru_100/gru_cell_100/mulMul"gru_100/gru_cell_100/Sigmoid_1:y:0gru_100/zeros:output:0*
T0*(
_output_shapes
:??????????2
gru_100/gru_cell_100/mul?
%gru_100/gru_cell_100/ReadVariableOp_1ReadVariableOp,gru_100_gru_cell_100_readvariableop_resource* 
_output_shapes
:
??*
dtype02'
%gru_100/gru_cell_100/ReadVariableOp_1?
*gru_100/gru_cell_100/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2,
*gru_100/gru_cell_100/strided_slice_1/stack?
,gru_100/gru_cell_100/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2.
,gru_100/gru_cell_100/strided_slice_1/stack_1?
,gru_100/gru_cell_100/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,gru_100/gru_cell_100/strided_slice_1/stack_2?
$gru_100/gru_cell_100/strided_slice_1StridedSlice-gru_100/gru_cell_100/ReadVariableOp_1:value:03gru_100/gru_cell_100/strided_slice_1/stack:output:05gru_100/gru_cell_100/strided_slice_1/stack_1:output:05gru_100/gru_cell_100/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2&
$gru_100/gru_cell_100/strided_slice_1?
gru_100/gru_cell_100/MatMul_2MatMulgru_100/gru_cell_100/mul:z:0-gru_100/gru_cell_100/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2
gru_100/gru_cell_100/MatMul_2?
gru_100/gru_cell_100/add_2AddV2#gru_100/gru_cell_100/split:output:2'gru_100/gru_cell_100/MatMul_2:product:0*
T0*(
_output_shapes
:??????????2
gru_100/gru_cell_100/add_2?
gru_100/gru_cell_100/ReluRelugru_100/gru_cell_100/add_2:z:0*
T0*(
_output_shapes
:??????????2
gru_100/gru_cell_100/Relu?
gru_100/gru_cell_100/mul_1Mul gru_100/gru_cell_100/Sigmoid:y:0gru_100/zeros:output:0*
T0*(
_output_shapes
:??????????2
gru_100/gru_cell_100/mul_1}
gru_100/gru_cell_100/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_100/gru_cell_100/sub/x?
gru_100/gru_cell_100/subSub#gru_100/gru_cell_100/sub/x:output:0 gru_100/gru_cell_100/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
gru_100/gru_cell_100/sub?
gru_100/gru_cell_100/mul_2Mulgru_100/gru_cell_100/sub:z:0'gru_100/gru_cell_100/Relu:activations:0*
T0*(
_output_shapes
:??????????2
gru_100/gru_cell_100/mul_2?
gru_100/gru_cell_100/add_3AddV2gru_100/gru_cell_100/mul_1:z:0gru_100/gru_cell_100/mul_2:z:0*
T0*(
_output_shapes
:??????????2
gru_100/gru_cell_100/add_3?
%gru_100/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2'
%gru_100/TensorArrayV2_1/element_shape?
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
gru_100/time?
 gru_100/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 gru_100/while/maximum_iterationsz
gru_100/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
gru_100/while/loop_counter?
gru_100/whileWhile#gru_100/while/loop_counter:output:0)gru_100/while/maximum_iterations:output:0gru_100/time:output:0 gru_100/TensorArrayV2_1:handle:0gru_100/zeros:output:0 gru_100/strided_slice_1:output:0?gru_100/TensorArrayUnstack/TensorListFromTensor:output_handle:03gru_100_gru_cell_100_matmul_readvariableop_resource4gru_100_gru_cell_100_biasadd_readvariableop_resource,gru_100_gru_cell_100_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*&
bodyR
gru_100_while_body_4938920*&
condR
gru_100_while_cond_4938919*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations 2
gru_100/while?
8gru_100/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2:
8gru_100/TensorArrayV2Stack/TensorListStack/element_shape?
*gru_100/TensorArrayV2Stack/TensorListStackTensorListStackgru_100/while:output:3Agru_100/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02,
*gru_100/TensorArrayV2Stack/TensorListStack?
gru_100/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
gru_100/strided_slice_3/stack?
gru_100/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
gru_100/strided_slice_3/stack_1?
gru_100/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
gru_100/strided_slice_3/stack_2?
gru_100/strided_slice_3StridedSlice3gru_100/TensorArrayV2Stack/TensorListStack:tensor:0&gru_100/strided_slice_3/stack:output:0(gru_100/strided_slice_3/stack_1:output:0(gru_100/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
gru_100/strided_slice_3?
gru_100/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_100/transpose_1/perm?
gru_100/transpose_1	Transpose3gru_100/TensorArrayV2Stack/TensorListStack:tensor:0!gru_100/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
gru_100/transpose_1v
gru_100/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_100/runtime?
dense_200/MatMul/ReadVariableOpReadVariableOp(dense_200_matmul_readvariableop_resource*
_output_shapes
:	?d*
dtype02!
dense_200/MatMul/ReadVariableOp?
dense_200/MatMulMatMul gru_100/strided_slice_3:output:0'dense_200/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_200/MatMul?
 dense_200/BiasAdd/ReadVariableOpReadVariableOp)dense_200_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02"
 dense_200/BiasAdd/ReadVariableOp?
dense_200/BiasAddBiasAdddense_200/MatMul:product:0(dense_200/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_200/BiasAddv
dense_200/ReluReludense_200/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
dense_200/Relu?
dense_201/MatMul/ReadVariableOpReadVariableOp(dense_201_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02!
dense_201/MatMul/ReadVariableOp?
dense_201/MatMulMatMuldense_200/Relu:activations:0'dense_201/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_201/MatMul?
 dense_201/BiasAdd/ReadVariableOpReadVariableOp)dense_201_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_201/BiasAdd/ReadVariableOp?
dense_201/BiasAddBiasAdddense_201/MatMul:product:0(dense_201/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_201/BiasAdd?
IdentityIdentitydense_201/BiasAdd:output:0!^dense_200/BiasAdd/ReadVariableOp ^dense_200/MatMul/ReadVariableOp!^dense_201/BiasAdd/ReadVariableOp ^dense_201/MatMul/ReadVariableOp,^gru_100/gru_cell_100/BiasAdd/ReadVariableOp+^gru_100/gru_cell_100/MatMul/ReadVariableOp$^gru_100/gru_cell_100/ReadVariableOp&^gru_100/gru_cell_100/ReadVariableOp_1^gru_100/while*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2D
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
:?????????
 
_user_specified_nameinputs
?i
?
D__inference_gru_100_layer_call_and_return_conditional_losses_4939770

inputs>
+gru_cell_100_matmul_readvariableop_resource:	?;
,gru_cell_100_biasadd_readvariableop_resource:	?8
$gru_cell_100_readvariableop_resource:
??
identity??#gru_cell_100/BiasAdd/ReadVariableOp?"gru_cell_100/MatMul/ReadVariableOp?gru_cell_100/ReadVariableOp?gru_cell_100/ReadVariableOp_1?whileD
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
"gru_cell_100/MatMul/ReadVariableOpReadVariableOp+gru_cell_100_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02$
"gru_cell_100/MatMul/ReadVariableOp?
gru_cell_100/MatMulMatMulstrided_slice_2:output:0*gru_cell_100/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/MatMul?
#gru_cell_100/BiasAdd/ReadVariableOpReadVariableOp,gru_cell_100_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#gru_cell_100/BiasAdd/ReadVariableOp?
gru_cell_100/BiasAddBiasAddgru_cell_100/MatMul:product:0+gru_cell_100/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/BiasAdd?
gru_cell_100/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_100/split/split_dim?
gru_cell_100/splitSplit%gru_cell_100/split/split_dim:output:0gru_cell_100/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
gru_cell_100/split?
gru_cell_100/ReadVariableOpReadVariableOp$gru_cell_100_readvariableop_resource* 
_output_shapes
:
??*
dtype02
gru_cell_100/ReadVariableOp?
 gru_cell_100/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 gru_cell_100/strided_slice/stack?
"gru_cell_100/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2$
"gru_cell_100/strided_slice/stack_1?
"gru_cell_100/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_100/strided_slice/stack_2?
gru_cell_100/strided_sliceStridedSlice#gru_cell_100/ReadVariableOp:value:0)gru_cell_100/strided_slice/stack:output:0+gru_cell_100/strided_slice/stack_1:output:0+gru_cell_100/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
gru_cell_100/strided_slice?
gru_cell_100/MatMul_1MatMulzeros:output:0#gru_cell_100/strided_slice:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/MatMul_1}
gru_cell_100/ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2
gru_cell_100/Const?
gru_cell_100/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2 
gru_cell_100/split_1/split_dim?
gru_cell_100/split_1SplitVgru_cell_100/MatMul_1:product:0gru_cell_100/Const:output:0'gru_cell_100/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:??????????:??????????:????????? *
	num_split2
gru_cell_100/split_1?
gru_cell_100/addAddV2gru_cell_100/split:output:0gru_cell_100/split_1:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/add?
gru_cell_100/SigmoidSigmoidgru_cell_100/add:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/Sigmoid?
gru_cell_100/add_1AddV2gru_cell_100/split:output:1gru_cell_100/split_1:output:1*
T0*(
_output_shapes
:??????????2
gru_cell_100/add_1?
gru_cell_100/Sigmoid_1Sigmoidgru_cell_100/add_1:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/Sigmoid_1?
gru_cell_100/mulMulgru_cell_100/Sigmoid_1:y:0zeros:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/mul?
gru_cell_100/ReadVariableOp_1ReadVariableOp$gru_cell_100_readvariableop_resource* 
_output_shapes
:
??*
dtype02
gru_cell_100/ReadVariableOp_1?
"gru_cell_100/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2$
"gru_cell_100/strided_slice_1/stack?
$gru_cell_100/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$gru_cell_100/strided_slice_1/stack_1?
$gru_cell_100/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$gru_cell_100/strided_slice_1/stack_2?
gru_cell_100/strided_slice_1StridedSlice%gru_cell_100/ReadVariableOp_1:value:0+gru_cell_100/strided_slice_1/stack:output:0-gru_cell_100/strided_slice_1/stack_1:output:0-gru_cell_100/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
gru_cell_100/strided_slice_1?
gru_cell_100/MatMul_2MatMulgru_cell_100/mul:z:0%gru_cell_100/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/MatMul_2?
gru_cell_100/add_2AddV2gru_cell_100/split:output:2gru_cell_100/MatMul_2:product:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/add_2y
gru_cell_100/ReluRelugru_cell_100/add_2:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/Relu?
gru_cell_100/mul_1Mulgru_cell_100/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/mul_1m
gru_cell_100/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_cell_100/sub/x?
gru_cell_100/subSubgru_cell_100/sub/x:output:0gru_cell_100/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/sub?
gru_cell_100/mul_2Mulgru_cell_100/sub:z:0gru_cell_100/Relu:activations:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/mul_2?
gru_cell_100/add_3AddV2gru_cell_100/mul_1:z:0gru_cell_100/mul_2:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/add_3?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+gru_cell_100_matmul_readvariableop_resource,gru_cell_100_biasadd_readvariableop_resource$gru_cell_100_readvariableop_resource*
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
while_body_4939674*
condR
while_cond_4939673*9
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
IdentityIdentitystrided_slice_3:output:0$^gru_cell_100/BiasAdd/ReadVariableOp#^gru_cell_100/MatMul/ReadVariableOp^gru_cell_100/ReadVariableOp^gru_cell_100/ReadVariableOp_1^while*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2J
#gru_cell_100/BiasAdd/ReadVariableOp#gru_cell_100/BiasAdd/ReadVariableOp2H
"gru_cell_100/MatMul/ReadVariableOp"gru_cell_100/MatMul/ReadVariableOp2:
gru_cell_100/ReadVariableOpgru_cell_100/ReadVariableOp2>
gru_cell_100/ReadVariableOp_1gru_cell_100/ReadVariableOp_12
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
)sequential_100_gru_100_while_cond_4937505J
Fsequential_100_gru_100_while_sequential_100_gru_100_while_loop_counterP
Lsequential_100_gru_100_while_sequential_100_gru_100_while_maximum_iterations,
(sequential_100_gru_100_while_placeholder.
*sequential_100_gru_100_while_placeholder_1.
*sequential_100_gru_100_while_placeholder_2L
Hsequential_100_gru_100_while_less_sequential_100_gru_100_strided_slice_1c
_sequential_100_gru_100_while_sequential_100_gru_100_while_cond_4937505___redundant_placeholder0c
_sequential_100_gru_100_while_sequential_100_gru_100_while_cond_4937505___redundant_placeholder1c
_sequential_100_gru_100_while_sequential_100_gru_100_while_cond_4937505___redundant_placeholder2c
_sequential_100_gru_100_while_sequential_100_gru_100_while_cond_4937505___redundant_placeholder3)
%sequential_100_gru_100_while_identity
?
!sequential_100/gru_100/while/LessLess(sequential_100_gru_100_while_placeholderHsequential_100_gru_100_while_less_sequential_100_gru_100_strided_slice_1*
T0*
_output_shapes
: 2#
!sequential_100/gru_100/while/Less?
%sequential_100/gru_100/while/IdentityIdentity%sequential_100/gru_100/while/Less:z:0*
T0
*
_output_shapes
: 2'
%sequential_100/gru_100/while/Identity"W
%sequential_100_gru_100_while_identity.sequential_100/gru_100/while/Identity:output:0*(
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
?
?
while_cond_4938554
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_4938554___redundant_placeholder05
1while_while_cond_4938554___redundant_placeholder15
1while_while_cond_4938554___redundant_placeholder25
1while_while_cond_4938554___redundant_placeholder3
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
?Y
?
while_body_4938555
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_gru_cell_100_matmul_readvariableop_resource_0:	?C
4while_gru_cell_100_biasadd_readvariableop_resource_0:	?@
,while_gru_cell_100_readvariableop_resource_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_gru_cell_100_matmul_readvariableop_resource:	?A
2while_gru_cell_100_biasadd_readvariableop_resource:	?>
*while_gru_cell_100_readvariableop_resource:
????)while/gru_cell_100/BiasAdd/ReadVariableOp?(while/gru_cell_100/MatMul/ReadVariableOp?!while/gru_cell_100/ReadVariableOp?#while/gru_cell_100/ReadVariableOp_1?
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
(while/gru_cell_100/MatMul/ReadVariableOpReadVariableOp3while_gru_cell_100_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02*
(while/gru_cell_100/MatMul/ReadVariableOp?
while/gru_cell_100/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/gru_cell_100/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/MatMul?
)while/gru_cell_100/BiasAdd/ReadVariableOpReadVariableOp4while_gru_cell_100_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/gru_cell_100/BiasAdd/ReadVariableOp?
while/gru_cell_100/BiasAddBiasAdd#while/gru_cell_100/MatMul:product:01while/gru_cell_100/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/BiasAdd?
"while/gru_cell_100/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"while/gru_cell_100/split/split_dim?
while/gru_cell_100/splitSplit+while/gru_cell_100/split/split_dim:output:0#while/gru_cell_100/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
while/gru_cell_100/split?
!while/gru_cell_100/ReadVariableOpReadVariableOp,while_gru_cell_100_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02#
!while/gru_cell_100/ReadVariableOp?
&while/gru_cell_100/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/gru_cell_100/strided_slice/stack?
(while/gru_cell_100/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2*
(while/gru_cell_100/strided_slice/stack_1?
(while/gru_cell_100/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_100/strided_slice/stack_2?
 while/gru_cell_100/strided_sliceStridedSlice)while/gru_cell_100/ReadVariableOp:value:0/while/gru_cell_100/strided_slice/stack:output:01while/gru_cell_100/strided_slice/stack_1:output:01while/gru_cell_100/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2"
 while/gru_cell_100/strided_slice?
while/gru_cell_100/MatMul_1MatMulwhile_placeholder_2)while/gru_cell_100/strided_slice:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/MatMul_1?
while/gru_cell_100/ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2
while/gru_cell_100/Const?
$while/gru_cell_100/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2&
$while/gru_cell_100/split_1/split_dim?
while/gru_cell_100/split_1SplitV%while/gru_cell_100/MatMul_1:product:0!while/gru_cell_100/Const:output:0-while/gru_cell_100/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:??????????:??????????:????????? *
	num_split2
while/gru_cell_100/split_1?
while/gru_cell_100/addAddV2!while/gru_cell_100/split:output:0#while/gru_cell_100/split_1:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/add?
while/gru_cell_100/SigmoidSigmoidwhile/gru_cell_100/add:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/Sigmoid?
while/gru_cell_100/add_1AddV2!while/gru_cell_100/split:output:1#while/gru_cell_100/split_1:output:1*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/add_1?
while/gru_cell_100/Sigmoid_1Sigmoidwhile/gru_cell_100/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/Sigmoid_1?
while/gru_cell_100/mulMul while/gru_cell_100/Sigmoid_1:y:0while_placeholder_2*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/mul?
#while/gru_cell_100/ReadVariableOp_1ReadVariableOp,while_gru_cell_100_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02%
#while/gru_cell_100/ReadVariableOp_1?
(while/gru_cell_100/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2*
(while/gru_cell_100/strided_slice_1/stack?
*while/gru_cell_100/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/gru_cell_100/strided_slice_1/stack_1?
*while/gru_cell_100/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/gru_cell_100/strided_slice_1/stack_2?
"while/gru_cell_100/strided_slice_1StridedSlice+while/gru_cell_100/ReadVariableOp_1:value:01while/gru_cell_100/strided_slice_1/stack:output:03while/gru_cell_100/strided_slice_1/stack_1:output:03while/gru_cell_100/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2$
"while/gru_cell_100/strided_slice_1?
while/gru_cell_100/MatMul_2MatMulwhile/gru_cell_100/mul:z:0+while/gru_cell_100/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/MatMul_2?
while/gru_cell_100/add_2AddV2!while/gru_cell_100/split:output:2%while/gru_cell_100/MatMul_2:product:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/add_2?
while/gru_cell_100/ReluReluwhile/gru_cell_100/add_2:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/Relu?
while/gru_cell_100/mul_1Mulwhile/gru_cell_100/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/mul_1y
while/gru_cell_100/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/gru_cell_100/sub/x?
while/gru_cell_100/subSub!while/gru_cell_100/sub/x:output:0while/gru_cell_100/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/sub?
while/gru_cell_100/mul_2Mulwhile/gru_cell_100/sub:z:0%while/gru_cell_100/Relu:activations:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/mul_2?
while/gru_cell_100/add_3AddV2while/gru_cell_100/mul_1:z:0while/gru_cell_100/mul_2:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/add_3?
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
while/add_1?
while/IdentityIdentitywhile/add_1:z:0*^while/gru_cell_100/BiasAdd/ReadVariableOp)^while/gru_cell_100/MatMul/ReadVariableOp"^while/gru_cell_100/ReadVariableOp$^while/gru_cell_100/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations*^while/gru_cell_100/BiasAdd/ReadVariableOp)^while/gru_cell_100/MatMul/ReadVariableOp"^while/gru_cell_100/ReadVariableOp$^while/gru_cell_100/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0*^while/gru_cell_100/BiasAdd/ReadVariableOp)^while/gru_cell_100/MatMul/ReadVariableOp"^while/gru_cell_100/ReadVariableOp$^while/gru_cell_100/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/gru_cell_100/BiasAdd/ReadVariableOp)^while/gru_cell_100/MatMul/ReadVariableOp"^while/gru_cell_100/ReadVariableOp$^while/gru_cell_100/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/gru_cell_100/add_3:z:0*^while/gru_cell_100/BiasAdd/ReadVariableOp)^while/gru_cell_100/MatMul/ReadVariableOp"^while/gru_cell_100/ReadVariableOp$^while/gru_cell_100/ReadVariableOp_1*
T0*(
_output_shapes
:??????????2
while/Identity_4"j
2while_gru_cell_100_biasadd_readvariableop_resource4while_gru_cell_100_biasadd_readvariableop_resource_0"h
1while_gru_cell_100_matmul_readvariableop_resource3while_gru_cell_100_matmul_readvariableop_resource_0"Z
*while_gru_cell_100_readvariableop_resource,while_gru_cell_100_readvariableop_resource_0")
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
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
%__inference_signature_wrapper_4938807
gru_100_input
unknown:	?
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?d
	unknown_3:d
	unknown_4:d
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallgru_100_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
"__inference__wrapped_model_49376152
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
_user_specified_namegru_100_input
?*
?
I__inference_gru_cell_100_layer_call_and_return_conditional_losses_4937696

inputs

states1
matmul_readvariableop_resource:	?.
biasadd_readvariableop_resource:	?+
readvariableop_resource:
??
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?ReadVariableOp?ReadVariableOp_1?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
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
-:?????????:??????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_namestates
?#
?
while_body_4937913
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_gru_cell_100_4937935_0:	?+
while_gru_cell_100_4937937_0:	?0
while_gru_cell_100_4937939_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_gru_cell_100_4937935:	?)
while_gru_cell_100_4937937:	?.
while_gru_cell_100_4937939:
????*while/gru_cell_100/StatefulPartitionedCall?
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
*while/gru_cell_100/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_gru_cell_100_4937935_0while_gru_cell_100_4937937_0while_gru_cell_100_4937939_0*
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
GPU 2J 8? *R
fMRK
I__inference_gru_cell_100_layer_call_and_return_conditional_losses_49378462,
*while/gru_cell_100/StatefulPartitionedCall?
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
while/add_1?
while/IdentityIdentitywhile/add_1:z:0+^while/gru_cell_100/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations+^while/gru_cell_100/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0+^while/gru_cell_100/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/gru_cell_100/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity3while/gru_cell_100/StatefulPartitionedCall:output:1+^while/gru_cell_100/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
while/Identity_4":
while_gru_cell_100_4937935while_gru_cell_100_4937935_0":
while_gru_cell_100_4937937while_gru_cell_100_4937937_0":
while_gru_cell_100_4937939while_gru_cell_100_4937939_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2X
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
:??????????:

_output_shapes
: :

_output_shapes
: 
?{
?
#__inference__traced_restore_4940301
file_prefix4
!assignvariableop_dense_200_kernel:	?d/
!assignvariableop_1_dense_200_bias:d5
#assignvariableop_2_dense_201_kernel:d/
!assignvariableop_3_dense_201_bias:&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: A
.assignvariableop_9_gru_100_gru_cell_100_kernel:	?M
9assignvariableop_10_gru_100_gru_cell_100_recurrent_kernel:
??<
-assignvariableop_11_gru_100_gru_cell_100_bias:	?#
assignvariableop_12_total: #
assignvariableop_13_count: >
+assignvariableop_14_adam_dense_200_kernel_m:	?d7
)assignvariableop_15_adam_dense_200_bias_m:d=
+assignvariableop_16_adam_dense_201_kernel_m:d7
)assignvariableop_17_adam_dense_201_bias_m:I
6assignvariableop_18_adam_gru_100_gru_cell_100_kernel_m:	?T
@assignvariableop_19_adam_gru_100_gru_cell_100_recurrent_kernel_m:
??C
4assignvariableop_20_adam_gru_100_gru_cell_100_bias_m:	?>
+assignvariableop_21_adam_dense_200_kernel_v:	?d7
)assignvariableop_22_adam_dense_200_bias_v:d=
+assignvariableop_23_adam_dense_201_kernel_v:d7
)assignvariableop_24_adam_dense_201_bias_v:I
6assignvariableop_25_adam_gru_100_gru_cell_100_kernel_v:	?T
@assignvariableop_26_adam_gru_100_gru_cell_100_recurrent_kernel_v:
??C
4assignvariableop_27_adam_gru_100_gru_cell_100_bias_v:	?
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_200_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_200_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp#assignvariableop_2_dense_201_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_201_biasIdentity_3:output:0"/device:CPU:0*
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
AssignVariableOp_9AssignVariableOp.assignvariableop_9_gru_100_gru_cell_100_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp9assignvariableop_10_gru_100_gru_cell_100_recurrent_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp-assignvariableop_11_gru_100_gru_cell_100_biasIdentity_11:output:0"/device:CPU:0*
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
AssignVariableOp_14AssignVariableOp+assignvariableop_14_adam_dense_200_kernel_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp)assignvariableop_15_adam_dense_200_bias_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp+assignvariableop_16_adam_dense_201_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp)assignvariableop_17_adam_dense_201_bias_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp6assignvariableop_18_adam_gru_100_gru_cell_100_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp@assignvariableop_19_adam_gru_100_gru_cell_100_recurrent_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp4assignvariableop_20_adam_gru_100_gru_cell_100_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp+assignvariableop_21_adam_dense_200_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp)assignvariableop_22_adam_dense_200_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp+assignvariableop_23_adam_dense_201_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp)assignvariableop_24_adam_dense_201_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_gru_100_gru_cell_100_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp@assignvariableop_26_adam_gru_100_gru_cell_100_recurrent_kernel_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp4assignvariableop_27_adam_gru_100_gru_cell_100_bias_vIdentity_27:output:0"/device:CPU:0*
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
?
?
while_cond_4937708
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_4937708___redundant_placeholder05
1while_while_cond_4937708___redundant_placeholder15
1while_while_cond_4937708___redundant_placeholder25
1while_while_cond_4937708___redundant_placeholder3
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
?g
?

gru_100_while_body_4938920,
(gru_100_while_gru_100_while_loop_counter2
.gru_100_while_gru_100_while_maximum_iterations
gru_100_while_placeholder
gru_100_while_placeholder_1
gru_100_while_placeholder_2+
'gru_100_while_gru_100_strided_slice_1_0g
cgru_100_while_tensorarrayv2read_tensorlistgetitem_gru_100_tensorarrayunstack_tensorlistfromtensor_0N
;gru_100_while_gru_cell_100_matmul_readvariableop_resource_0:	?K
<gru_100_while_gru_cell_100_biasadd_readvariableop_resource_0:	?H
4gru_100_while_gru_cell_100_readvariableop_resource_0:
??
gru_100_while_identity
gru_100_while_identity_1
gru_100_while_identity_2
gru_100_while_identity_3
gru_100_while_identity_4)
%gru_100_while_gru_100_strided_slice_1e
agru_100_while_tensorarrayv2read_tensorlistgetitem_gru_100_tensorarrayunstack_tensorlistfromtensorL
9gru_100_while_gru_cell_100_matmul_readvariableop_resource:	?I
:gru_100_while_gru_cell_100_biasadd_readvariableop_resource:	?F
2gru_100_while_gru_cell_100_readvariableop_resource:
????1gru_100/while/gru_cell_100/BiasAdd/ReadVariableOp?0gru_100/while/gru_cell_100/MatMul/ReadVariableOp?)gru_100/while/gru_cell_100/ReadVariableOp?+gru_100/while/gru_cell_100/ReadVariableOp_1?
?gru_100/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2A
?gru_100/while/TensorArrayV2Read/TensorListGetItem/element_shape?
1gru_100/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemcgru_100_while_tensorarrayv2read_tensorlistgetitem_gru_100_tensorarrayunstack_tensorlistfromtensor_0gru_100_while_placeholderHgru_100/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype023
1gru_100/while/TensorArrayV2Read/TensorListGetItem?
0gru_100/while/gru_cell_100/MatMul/ReadVariableOpReadVariableOp;gru_100_while_gru_cell_100_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype022
0gru_100/while/gru_cell_100/MatMul/ReadVariableOp?
!gru_100/while/gru_cell_100/MatMulMatMul8gru_100/while/TensorArrayV2Read/TensorListGetItem:item:08gru_100/while/gru_cell_100/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2#
!gru_100/while/gru_cell_100/MatMul?
1gru_100/while/gru_cell_100/BiasAdd/ReadVariableOpReadVariableOp<gru_100_while_gru_cell_100_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype023
1gru_100/while/gru_cell_100/BiasAdd/ReadVariableOp?
"gru_100/while/gru_cell_100/BiasAddBiasAdd+gru_100/while/gru_cell_100/MatMul:product:09gru_100/while/gru_cell_100/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2$
"gru_100/while/gru_cell_100/BiasAdd?
*gru_100/while/gru_cell_100/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2,
*gru_100/while/gru_cell_100/split/split_dim?
 gru_100/while/gru_cell_100/splitSplit3gru_100/while/gru_cell_100/split/split_dim:output:0+gru_100/while/gru_cell_100/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2"
 gru_100/while/gru_cell_100/split?
)gru_100/while/gru_cell_100/ReadVariableOpReadVariableOp4gru_100_while_gru_cell_100_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02+
)gru_100/while/gru_cell_100/ReadVariableOp?
.gru_100/while/gru_cell_100/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        20
.gru_100/while/gru_cell_100/strided_slice/stack?
0gru_100/while/gru_cell_100/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  22
0gru_100/while/gru_cell_100/strided_slice/stack_1?
0gru_100/while/gru_cell_100/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0gru_100/while/gru_cell_100/strided_slice/stack_2?
(gru_100/while/gru_cell_100/strided_sliceStridedSlice1gru_100/while/gru_cell_100/ReadVariableOp:value:07gru_100/while/gru_cell_100/strided_slice/stack:output:09gru_100/while/gru_cell_100/strided_slice/stack_1:output:09gru_100/while/gru_cell_100/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2*
(gru_100/while/gru_cell_100/strided_slice?
#gru_100/while/gru_cell_100/MatMul_1MatMulgru_100_while_placeholder_21gru_100/while/gru_cell_100/strided_slice:output:0*
T0*(
_output_shapes
:??????????2%
#gru_100/while/gru_cell_100/MatMul_1?
 gru_100/while/gru_cell_100/ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2"
 gru_100/while/gru_cell_100/Const?
,gru_100/while/gru_cell_100/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2.
,gru_100/while/gru_cell_100/split_1/split_dim?
"gru_100/while/gru_cell_100/split_1SplitV-gru_100/while/gru_cell_100/MatMul_1:product:0)gru_100/while/gru_cell_100/Const:output:05gru_100/while/gru_cell_100/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:??????????:??????????:????????? *
	num_split2$
"gru_100/while/gru_cell_100/split_1?
gru_100/while/gru_cell_100/addAddV2)gru_100/while/gru_cell_100/split:output:0+gru_100/while/gru_cell_100/split_1:output:0*
T0*(
_output_shapes
:??????????2 
gru_100/while/gru_cell_100/add?
"gru_100/while/gru_cell_100/SigmoidSigmoid"gru_100/while/gru_cell_100/add:z:0*
T0*(
_output_shapes
:??????????2$
"gru_100/while/gru_cell_100/Sigmoid?
 gru_100/while/gru_cell_100/add_1AddV2)gru_100/while/gru_cell_100/split:output:1+gru_100/while/gru_cell_100/split_1:output:1*
T0*(
_output_shapes
:??????????2"
 gru_100/while/gru_cell_100/add_1?
$gru_100/while/gru_cell_100/Sigmoid_1Sigmoid$gru_100/while/gru_cell_100/add_1:z:0*
T0*(
_output_shapes
:??????????2&
$gru_100/while/gru_cell_100/Sigmoid_1?
gru_100/while/gru_cell_100/mulMul(gru_100/while/gru_cell_100/Sigmoid_1:y:0gru_100_while_placeholder_2*
T0*(
_output_shapes
:??????????2 
gru_100/while/gru_cell_100/mul?
+gru_100/while/gru_cell_100/ReadVariableOp_1ReadVariableOp4gru_100_while_gru_cell_100_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02-
+gru_100/while/gru_cell_100/ReadVariableOp_1?
0gru_100/while/gru_cell_100/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  22
0gru_100/while/gru_cell_100/strided_slice_1/stack?
2gru_100/while/gru_cell_100/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        24
2gru_100/while/gru_cell_100/strided_slice_1/stack_1?
2gru_100/while/gru_cell_100/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2gru_100/while/gru_cell_100/strided_slice_1/stack_2?
*gru_100/while/gru_cell_100/strided_slice_1StridedSlice3gru_100/while/gru_cell_100/ReadVariableOp_1:value:09gru_100/while/gru_cell_100/strided_slice_1/stack:output:0;gru_100/while/gru_cell_100/strided_slice_1/stack_1:output:0;gru_100/while/gru_cell_100/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2,
*gru_100/while/gru_cell_100/strided_slice_1?
#gru_100/while/gru_cell_100/MatMul_2MatMul"gru_100/while/gru_cell_100/mul:z:03gru_100/while/gru_cell_100/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2%
#gru_100/while/gru_cell_100/MatMul_2?
 gru_100/while/gru_cell_100/add_2AddV2)gru_100/while/gru_cell_100/split:output:2-gru_100/while/gru_cell_100/MatMul_2:product:0*
T0*(
_output_shapes
:??????????2"
 gru_100/while/gru_cell_100/add_2?
gru_100/while/gru_cell_100/ReluRelu$gru_100/while/gru_cell_100/add_2:z:0*
T0*(
_output_shapes
:??????????2!
gru_100/while/gru_cell_100/Relu?
 gru_100/while/gru_cell_100/mul_1Mul&gru_100/while/gru_cell_100/Sigmoid:y:0gru_100_while_placeholder_2*
T0*(
_output_shapes
:??????????2"
 gru_100/while/gru_cell_100/mul_1?
 gru_100/while/gru_cell_100/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2"
 gru_100/while/gru_cell_100/sub/x?
gru_100/while/gru_cell_100/subSub)gru_100/while/gru_cell_100/sub/x:output:0&gru_100/while/gru_cell_100/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2 
gru_100/while/gru_cell_100/sub?
 gru_100/while/gru_cell_100/mul_2Mul"gru_100/while/gru_cell_100/sub:z:0-gru_100/while/gru_cell_100/Relu:activations:0*
T0*(
_output_shapes
:??????????2"
 gru_100/while/gru_cell_100/mul_2?
 gru_100/while/gru_cell_100/add_3AddV2$gru_100/while/gru_cell_100/mul_1:z:0$gru_100/while/gru_cell_100/mul_2:z:0*
T0*(
_output_shapes
:??????????2"
 gru_100/while/gru_cell_100/add_3?
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
gru_100/while/add/y?
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
gru_100/while/add_1/y?
gru_100/while/add_1AddV2(gru_100_while_gru_100_while_loop_countergru_100/while/add_1/y:output:0*
T0*
_output_shapes
: 2
gru_100/while/add_1?
gru_100/while/IdentityIdentitygru_100/while/add_1:z:02^gru_100/while/gru_cell_100/BiasAdd/ReadVariableOp1^gru_100/while/gru_cell_100/MatMul/ReadVariableOp*^gru_100/while/gru_cell_100/ReadVariableOp,^gru_100/while/gru_cell_100/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_100/while/Identity?
gru_100/while/Identity_1Identity.gru_100_while_gru_100_while_maximum_iterations2^gru_100/while/gru_cell_100/BiasAdd/ReadVariableOp1^gru_100/while/gru_cell_100/MatMul/ReadVariableOp*^gru_100/while/gru_cell_100/ReadVariableOp,^gru_100/while/gru_cell_100/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_100/while/Identity_1?
gru_100/while/Identity_2Identitygru_100/while/add:z:02^gru_100/while/gru_cell_100/BiasAdd/ReadVariableOp1^gru_100/while/gru_cell_100/MatMul/ReadVariableOp*^gru_100/while/gru_cell_100/ReadVariableOp,^gru_100/while/gru_cell_100/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_100/while/Identity_2?
gru_100/while/Identity_3IdentityBgru_100/while/TensorArrayV2Write/TensorListSetItem:output_handle:02^gru_100/while/gru_cell_100/BiasAdd/ReadVariableOp1^gru_100/while/gru_cell_100/MatMul/ReadVariableOp*^gru_100/while/gru_cell_100/ReadVariableOp,^gru_100/while/gru_cell_100/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_100/while/Identity_3?
gru_100/while/Identity_4Identity$gru_100/while/gru_cell_100/add_3:z:02^gru_100/while/gru_cell_100/BiasAdd/ReadVariableOp1^gru_100/while/gru_cell_100/MatMul/ReadVariableOp*^gru_100/while/gru_cell_100/ReadVariableOp,^gru_100/while/gru_cell_100/ReadVariableOp_1*
T0*(
_output_shapes
:??????????2
gru_100/while/Identity_4"P
%gru_100_while_gru_100_strided_slice_1'gru_100_while_gru_100_strided_slice_1_0"z
:gru_100_while_gru_cell_100_biasadd_readvariableop_resource<gru_100_while_gru_cell_100_biasadd_readvariableop_resource_0"x
9gru_100_while_gru_cell_100_matmul_readvariableop_resource;gru_100_while_gru_cell_100_matmul_readvariableop_resource_0"j
2gru_100_while_gru_cell_100_readvariableop_resource4gru_100_while_gru_cell_100_readvariableop_resource_0"9
gru_100_while_identitygru_100/while/Identity:output:0"=
gru_100_while_identity_1!gru_100/while/Identity_1:output:0"=
gru_100_while_identity_2!gru_100/while/Identity_2:output:0"=
gru_100_while_identity_3!gru_100/while/Identity_3:output:0"=
gru_100_while_identity_4!gru_100/while/Identity_4:output:0"?
agru_100_while_tensorarrayv2read_tensorlistgetitem_gru_100_tensorarrayunstack_tensorlistfromtensorcgru_100_while_tensorarrayv2read_tensorlistgetitem_gru_100_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2f
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
:??????????:

_output_shapes
: :

_output_shapes
: 
?=
?
D__inference_gru_100_layer_call_and_return_conditional_losses_4937977

inputs'
gru_cell_100_4937901:	?#
gru_cell_100_4937903:	?(
gru_cell_100_4937905:
??
identity??$gru_cell_100/StatefulPartitionedCall?whileD
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
strided_slice_2?
$gru_cell_100/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0gru_cell_100_4937901gru_cell_100_4937903gru_cell_100_4937905*
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
GPU 2J 8? *R
fMRK
I__inference_gru_cell_100_layer_call_and_return_conditional_losses_49378462&
$gru_cell_100/StatefulPartitionedCall?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0gru_cell_100_4937901gru_cell_100_4937903gru_cell_100_4937905*
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
while_body_4937913*
condR
while_cond_4937912*9
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
IdentityIdentitystrided_slice_3:output:0%^gru_cell_100/StatefulPartitionedCall^while*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2L
$gru_cell_100/StatefulPartitionedCall$gru_cell_100/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?j
?
D__inference_gru_100_layer_call_and_return_conditional_losses_4939428
inputs_0>
+gru_cell_100_matmul_readvariableop_resource:	?;
,gru_cell_100_biasadd_readvariableop_resource:	?8
$gru_cell_100_readvariableop_resource:
??
identity??#gru_cell_100/BiasAdd/ReadVariableOp?"gru_cell_100/MatMul/ReadVariableOp?gru_cell_100/ReadVariableOp?gru_cell_100/ReadVariableOp_1?whileF
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
"gru_cell_100/MatMul/ReadVariableOpReadVariableOp+gru_cell_100_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02$
"gru_cell_100/MatMul/ReadVariableOp?
gru_cell_100/MatMulMatMulstrided_slice_2:output:0*gru_cell_100/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/MatMul?
#gru_cell_100/BiasAdd/ReadVariableOpReadVariableOp,gru_cell_100_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#gru_cell_100/BiasAdd/ReadVariableOp?
gru_cell_100/BiasAddBiasAddgru_cell_100/MatMul:product:0+gru_cell_100/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/BiasAdd?
gru_cell_100/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_100/split/split_dim?
gru_cell_100/splitSplit%gru_cell_100/split/split_dim:output:0gru_cell_100/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
gru_cell_100/split?
gru_cell_100/ReadVariableOpReadVariableOp$gru_cell_100_readvariableop_resource* 
_output_shapes
:
??*
dtype02
gru_cell_100/ReadVariableOp?
 gru_cell_100/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 gru_cell_100/strided_slice/stack?
"gru_cell_100/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2$
"gru_cell_100/strided_slice/stack_1?
"gru_cell_100/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_100/strided_slice/stack_2?
gru_cell_100/strided_sliceStridedSlice#gru_cell_100/ReadVariableOp:value:0)gru_cell_100/strided_slice/stack:output:0+gru_cell_100/strided_slice/stack_1:output:0+gru_cell_100/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
gru_cell_100/strided_slice?
gru_cell_100/MatMul_1MatMulzeros:output:0#gru_cell_100/strided_slice:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/MatMul_1}
gru_cell_100/ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2
gru_cell_100/Const?
gru_cell_100/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2 
gru_cell_100/split_1/split_dim?
gru_cell_100/split_1SplitVgru_cell_100/MatMul_1:product:0gru_cell_100/Const:output:0'gru_cell_100/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:??????????:??????????:????????? *
	num_split2
gru_cell_100/split_1?
gru_cell_100/addAddV2gru_cell_100/split:output:0gru_cell_100/split_1:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/add?
gru_cell_100/SigmoidSigmoidgru_cell_100/add:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/Sigmoid?
gru_cell_100/add_1AddV2gru_cell_100/split:output:1gru_cell_100/split_1:output:1*
T0*(
_output_shapes
:??????????2
gru_cell_100/add_1?
gru_cell_100/Sigmoid_1Sigmoidgru_cell_100/add_1:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/Sigmoid_1?
gru_cell_100/mulMulgru_cell_100/Sigmoid_1:y:0zeros:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/mul?
gru_cell_100/ReadVariableOp_1ReadVariableOp$gru_cell_100_readvariableop_resource* 
_output_shapes
:
??*
dtype02
gru_cell_100/ReadVariableOp_1?
"gru_cell_100/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2$
"gru_cell_100/strided_slice_1/stack?
$gru_cell_100/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$gru_cell_100/strided_slice_1/stack_1?
$gru_cell_100/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$gru_cell_100/strided_slice_1/stack_2?
gru_cell_100/strided_slice_1StridedSlice%gru_cell_100/ReadVariableOp_1:value:0+gru_cell_100/strided_slice_1/stack:output:0-gru_cell_100/strided_slice_1/stack_1:output:0-gru_cell_100/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
gru_cell_100/strided_slice_1?
gru_cell_100/MatMul_2MatMulgru_cell_100/mul:z:0%gru_cell_100/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/MatMul_2?
gru_cell_100/add_2AddV2gru_cell_100/split:output:2gru_cell_100/MatMul_2:product:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/add_2y
gru_cell_100/ReluRelugru_cell_100/add_2:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/Relu?
gru_cell_100/mul_1Mulgru_cell_100/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/mul_1m
gru_cell_100/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_cell_100/sub/x?
gru_cell_100/subSubgru_cell_100/sub/x:output:0gru_cell_100/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/sub?
gru_cell_100/mul_2Mulgru_cell_100/sub:z:0gru_cell_100/Relu:activations:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/mul_2?
gru_cell_100/add_3AddV2gru_cell_100/mul_1:z:0gru_cell_100/mul_2:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/add_3?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+gru_cell_100_matmul_readvariableop_resource,gru_cell_100_biasadd_readvariableop_resource$gru_cell_100_readvariableop_resource*
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
while_body_4939332*
condR
while_cond_4939331*9
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
IdentityIdentitystrided_slice_3:output:0$^gru_cell_100/BiasAdd/ReadVariableOp#^gru_cell_100/MatMul/ReadVariableOp^gru_cell_100/ReadVariableOp^gru_cell_100/ReadVariableOp_1^while*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2J
#gru_cell_100/BiasAdd/ReadVariableOp#gru_cell_100/BiasAdd/ReadVariableOp2H
"gru_cell_100/MatMul/ReadVariableOp"gru_cell_100/MatMul/ReadVariableOp2:
gru_cell_100/ReadVariableOpgru_cell_100/ReadVariableOp2>
gru_cell_100/ReadVariableOp_1gru_cell_100/ReadVariableOp_12
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?Y
?
while_body_4939332
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_gru_cell_100_matmul_readvariableop_resource_0:	?C
4while_gru_cell_100_biasadd_readvariableop_resource_0:	?@
,while_gru_cell_100_readvariableop_resource_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_gru_cell_100_matmul_readvariableop_resource:	?A
2while_gru_cell_100_biasadd_readvariableop_resource:	?>
*while_gru_cell_100_readvariableop_resource:
????)while/gru_cell_100/BiasAdd/ReadVariableOp?(while/gru_cell_100/MatMul/ReadVariableOp?!while/gru_cell_100/ReadVariableOp?#while/gru_cell_100/ReadVariableOp_1?
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
(while/gru_cell_100/MatMul/ReadVariableOpReadVariableOp3while_gru_cell_100_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02*
(while/gru_cell_100/MatMul/ReadVariableOp?
while/gru_cell_100/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/gru_cell_100/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/MatMul?
)while/gru_cell_100/BiasAdd/ReadVariableOpReadVariableOp4while_gru_cell_100_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/gru_cell_100/BiasAdd/ReadVariableOp?
while/gru_cell_100/BiasAddBiasAdd#while/gru_cell_100/MatMul:product:01while/gru_cell_100/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/BiasAdd?
"while/gru_cell_100/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"while/gru_cell_100/split/split_dim?
while/gru_cell_100/splitSplit+while/gru_cell_100/split/split_dim:output:0#while/gru_cell_100/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
while/gru_cell_100/split?
!while/gru_cell_100/ReadVariableOpReadVariableOp,while_gru_cell_100_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02#
!while/gru_cell_100/ReadVariableOp?
&while/gru_cell_100/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/gru_cell_100/strided_slice/stack?
(while/gru_cell_100/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2*
(while/gru_cell_100/strided_slice/stack_1?
(while/gru_cell_100/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_100/strided_slice/stack_2?
 while/gru_cell_100/strided_sliceStridedSlice)while/gru_cell_100/ReadVariableOp:value:0/while/gru_cell_100/strided_slice/stack:output:01while/gru_cell_100/strided_slice/stack_1:output:01while/gru_cell_100/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2"
 while/gru_cell_100/strided_slice?
while/gru_cell_100/MatMul_1MatMulwhile_placeholder_2)while/gru_cell_100/strided_slice:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/MatMul_1?
while/gru_cell_100/ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2
while/gru_cell_100/Const?
$while/gru_cell_100/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2&
$while/gru_cell_100/split_1/split_dim?
while/gru_cell_100/split_1SplitV%while/gru_cell_100/MatMul_1:product:0!while/gru_cell_100/Const:output:0-while/gru_cell_100/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:??????????:??????????:????????? *
	num_split2
while/gru_cell_100/split_1?
while/gru_cell_100/addAddV2!while/gru_cell_100/split:output:0#while/gru_cell_100/split_1:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/add?
while/gru_cell_100/SigmoidSigmoidwhile/gru_cell_100/add:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/Sigmoid?
while/gru_cell_100/add_1AddV2!while/gru_cell_100/split:output:1#while/gru_cell_100/split_1:output:1*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/add_1?
while/gru_cell_100/Sigmoid_1Sigmoidwhile/gru_cell_100/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/Sigmoid_1?
while/gru_cell_100/mulMul while/gru_cell_100/Sigmoid_1:y:0while_placeholder_2*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/mul?
#while/gru_cell_100/ReadVariableOp_1ReadVariableOp,while_gru_cell_100_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02%
#while/gru_cell_100/ReadVariableOp_1?
(while/gru_cell_100/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2*
(while/gru_cell_100/strided_slice_1/stack?
*while/gru_cell_100/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/gru_cell_100/strided_slice_1/stack_1?
*while/gru_cell_100/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/gru_cell_100/strided_slice_1/stack_2?
"while/gru_cell_100/strided_slice_1StridedSlice+while/gru_cell_100/ReadVariableOp_1:value:01while/gru_cell_100/strided_slice_1/stack:output:03while/gru_cell_100/strided_slice_1/stack_1:output:03while/gru_cell_100/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2$
"while/gru_cell_100/strided_slice_1?
while/gru_cell_100/MatMul_2MatMulwhile/gru_cell_100/mul:z:0+while/gru_cell_100/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/MatMul_2?
while/gru_cell_100/add_2AddV2!while/gru_cell_100/split:output:2%while/gru_cell_100/MatMul_2:product:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/add_2?
while/gru_cell_100/ReluReluwhile/gru_cell_100/add_2:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/Relu?
while/gru_cell_100/mul_1Mulwhile/gru_cell_100/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/mul_1y
while/gru_cell_100/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/gru_cell_100/sub/x?
while/gru_cell_100/subSub!while/gru_cell_100/sub/x:output:0while/gru_cell_100/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/sub?
while/gru_cell_100/mul_2Mulwhile/gru_cell_100/sub:z:0%while/gru_cell_100/Relu:activations:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/mul_2?
while/gru_cell_100/add_3AddV2while/gru_cell_100/mul_1:z:0while/gru_cell_100/mul_2:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/add_3?
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
while/add_1?
while/IdentityIdentitywhile/add_1:z:0*^while/gru_cell_100/BiasAdd/ReadVariableOp)^while/gru_cell_100/MatMul/ReadVariableOp"^while/gru_cell_100/ReadVariableOp$^while/gru_cell_100/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations*^while/gru_cell_100/BiasAdd/ReadVariableOp)^while/gru_cell_100/MatMul/ReadVariableOp"^while/gru_cell_100/ReadVariableOp$^while/gru_cell_100/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0*^while/gru_cell_100/BiasAdd/ReadVariableOp)^while/gru_cell_100/MatMul/ReadVariableOp"^while/gru_cell_100/ReadVariableOp$^while/gru_cell_100/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/gru_cell_100/BiasAdd/ReadVariableOp)^while/gru_cell_100/MatMul/ReadVariableOp"^while/gru_cell_100/ReadVariableOp$^while/gru_cell_100/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/gru_cell_100/add_3:z:0*^while/gru_cell_100/BiasAdd/ReadVariableOp)^while/gru_cell_100/MatMul/ReadVariableOp"^while/gru_cell_100/ReadVariableOp$^while/gru_cell_100/ReadVariableOp_1*
T0*(
_output_shapes
:??????????2
while/Identity_4"j
2while_gru_cell_100_biasadd_readvariableop_resource4while_gru_cell_100_biasadd_readvariableop_resource_0"h
1while_gru_cell_100_matmul_readvariableop_resource3while_gru_cell_100_matmul_readvariableop_resource_0"Z
*while_gru_cell_100_readvariableop_resource,while_gru_cell_100_readvariableop_resource_0")
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
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_4937912
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_4937912___redundant_placeholder05
1while_while_cond_4937912___redundant_placeholder15
1while_while_cond_4937912___redundant_placeholder25
1while_while_cond_4937912___redundant_placeholder3
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
?
?
K__inference_sequential_100_layer_call_and_return_conditional_losses_4938430

inputs"
gru_100_4938389:	?
gru_100_4938391:	?#
gru_100_4938393:
??$
dense_200_4938408:	?d
dense_200_4938410:d#
dense_201_4938424:d
dense_201_4938426:
identity??!dense_200/StatefulPartitionedCall?!dense_201/StatefulPartitionedCall?gru_100/StatefulPartitionedCall?
gru_100/StatefulPartitionedCallStatefulPartitionedCallinputsgru_100_4938389gru_100_4938391gru_100_4938393*
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
GPU 2J 8? *M
fHRF
D__inference_gru_100_layer_call_and_return_conditional_losses_49383882!
gru_100/StatefulPartitionedCall?
!dense_200/StatefulPartitionedCallStatefulPartitionedCall(gru_100/StatefulPartitionedCall:output:0dense_200_4938408dense_200_4938410*
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
F__inference_dense_200_layer_call_and_return_conditional_losses_49384072#
!dense_200/StatefulPartitionedCall?
!dense_201/StatefulPartitionedCallStatefulPartitionedCall*dense_200/StatefulPartitionedCall:output:0dense_201_4938424dense_201_4938426*
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
F__inference_dense_201_layer_call_and_return_conditional_losses_49384232#
!dense_201/StatefulPartitionedCall?
IdentityIdentity*dense_201/StatefulPartitionedCall:output:0"^dense_200/StatefulPartitionedCall"^dense_201/StatefulPartitionedCall ^gru_100/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2F
!dense_200/StatefulPartitionedCall!dense_200/StatefulPartitionedCall2F
!dense_201/StatefulPartitionedCall!dense_201/StatefulPartitionedCall2B
gru_100/StatefulPartitionedCallgru_100/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
)__inference_gru_100_layer_call_fn_4939257

inputs
unknown:	?
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
GPU 2J 8? *M
fHRF
D__inference_gru_100_layer_call_and_return_conditional_losses_49386512
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
??
?
)sequential_100_gru_100_while_body_4937506J
Fsequential_100_gru_100_while_sequential_100_gru_100_while_loop_counterP
Lsequential_100_gru_100_while_sequential_100_gru_100_while_maximum_iterations,
(sequential_100_gru_100_while_placeholder.
*sequential_100_gru_100_while_placeholder_1.
*sequential_100_gru_100_while_placeholder_2I
Esequential_100_gru_100_while_sequential_100_gru_100_strided_slice_1_0?
?sequential_100_gru_100_while_tensorarrayv2read_tensorlistgetitem_sequential_100_gru_100_tensorarrayunstack_tensorlistfromtensor_0]
Jsequential_100_gru_100_while_gru_cell_100_matmul_readvariableop_resource_0:	?Z
Ksequential_100_gru_100_while_gru_cell_100_biasadd_readvariableop_resource_0:	?W
Csequential_100_gru_100_while_gru_cell_100_readvariableop_resource_0:
??)
%sequential_100_gru_100_while_identity+
'sequential_100_gru_100_while_identity_1+
'sequential_100_gru_100_while_identity_2+
'sequential_100_gru_100_while_identity_3+
'sequential_100_gru_100_while_identity_4G
Csequential_100_gru_100_while_sequential_100_gru_100_strided_slice_1?
sequential_100_gru_100_while_tensorarrayv2read_tensorlistgetitem_sequential_100_gru_100_tensorarrayunstack_tensorlistfromtensor[
Hsequential_100_gru_100_while_gru_cell_100_matmul_readvariableop_resource:	?X
Isequential_100_gru_100_while_gru_cell_100_biasadd_readvariableop_resource:	?U
Asequential_100_gru_100_while_gru_cell_100_readvariableop_resource:
????@sequential_100/gru_100/while/gru_cell_100/BiasAdd/ReadVariableOp??sequential_100/gru_100/while/gru_cell_100/MatMul/ReadVariableOp?8sequential_100/gru_100/while/gru_cell_100/ReadVariableOp?:sequential_100/gru_100/while/gru_cell_100/ReadVariableOp_1?
Nsequential_100/gru_100/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2P
Nsequential_100/gru_100/while/TensorArrayV2Read/TensorListGetItem/element_shape?
@sequential_100/gru_100/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem?sequential_100_gru_100_while_tensorarrayv2read_tensorlistgetitem_sequential_100_gru_100_tensorarrayunstack_tensorlistfromtensor_0(sequential_100_gru_100_while_placeholderWsequential_100/gru_100/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02B
@sequential_100/gru_100/while/TensorArrayV2Read/TensorListGetItem?
?sequential_100/gru_100/while/gru_cell_100/MatMul/ReadVariableOpReadVariableOpJsequential_100_gru_100_while_gru_cell_100_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02A
?sequential_100/gru_100/while/gru_cell_100/MatMul/ReadVariableOp?
0sequential_100/gru_100/while/gru_cell_100/MatMulMatMulGsequential_100/gru_100/while/TensorArrayV2Read/TensorListGetItem:item:0Gsequential_100/gru_100/while/gru_cell_100/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????22
0sequential_100/gru_100/while/gru_cell_100/MatMul?
@sequential_100/gru_100/while/gru_cell_100/BiasAdd/ReadVariableOpReadVariableOpKsequential_100_gru_100_while_gru_cell_100_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02B
@sequential_100/gru_100/while/gru_cell_100/BiasAdd/ReadVariableOp?
1sequential_100/gru_100/while/gru_cell_100/BiasAddBiasAdd:sequential_100/gru_100/while/gru_cell_100/MatMul:product:0Hsequential_100/gru_100/while/gru_cell_100/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????23
1sequential_100/gru_100/while/gru_cell_100/BiasAdd?
9sequential_100/gru_100/while/gru_cell_100/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2;
9sequential_100/gru_100/while/gru_cell_100/split/split_dim?
/sequential_100/gru_100/while/gru_cell_100/splitSplitBsequential_100/gru_100/while/gru_cell_100/split/split_dim:output:0:sequential_100/gru_100/while/gru_cell_100/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split21
/sequential_100/gru_100/while/gru_cell_100/split?
8sequential_100/gru_100/while/gru_cell_100/ReadVariableOpReadVariableOpCsequential_100_gru_100_while_gru_cell_100_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02:
8sequential_100/gru_100/while/gru_cell_100/ReadVariableOp?
=sequential_100/gru_100/while/gru_cell_100/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2?
=sequential_100/gru_100/while/gru_cell_100/strided_slice/stack?
?sequential_100/gru_100/while/gru_cell_100/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2A
?sequential_100/gru_100/while/gru_cell_100/strided_slice/stack_1?
?sequential_100/gru_100/while/gru_cell_100/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2A
?sequential_100/gru_100/while/gru_cell_100/strided_slice/stack_2?
7sequential_100/gru_100/while/gru_cell_100/strided_sliceStridedSlice@sequential_100/gru_100/while/gru_cell_100/ReadVariableOp:value:0Fsequential_100/gru_100/while/gru_cell_100/strided_slice/stack:output:0Hsequential_100/gru_100/while/gru_cell_100/strided_slice/stack_1:output:0Hsequential_100/gru_100/while/gru_cell_100/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask29
7sequential_100/gru_100/while/gru_cell_100/strided_slice?
2sequential_100/gru_100/while/gru_cell_100/MatMul_1MatMul*sequential_100_gru_100_while_placeholder_2@sequential_100/gru_100/while/gru_cell_100/strided_slice:output:0*
T0*(
_output_shapes
:??????????24
2sequential_100/gru_100/while/gru_cell_100/MatMul_1?
/sequential_100/gru_100/while/gru_cell_100/ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????21
/sequential_100/gru_100/while/gru_cell_100/Const?
;sequential_100/gru_100/while/gru_cell_100/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2=
;sequential_100/gru_100/while/gru_cell_100/split_1/split_dim?
1sequential_100/gru_100/while/gru_cell_100/split_1SplitV<sequential_100/gru_100/while/gru_cell_100/MatMul_1:product:08sequential_100/gru_100/while/gru_cell_100/Const:output:0Dsequential_100/gru_100/while/gru_cell_100/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:??????????:??????????:????????? *
	num_split23
1sequential_100/gru_100/while/gru_cell_100/split_1?
-sequential_100/gru_100/while/gru_cell_100/addAddV28sequential_100/gru_100/while/gru_cell_100/split:output:0:sequential_100/gru_100/while/gru_cell_100/split_1:output:0*
T0*(
_output_shapes
:??????????2/
-sequential_100/gru_100/while/gru_cell_100/add?
1sequential_100/gru_100/while/gru_cell_100/SigmoidSigmoid1sequential_100/gru_100/while/gru_cell_100/add:z:0*
T0*(
_output_shapes
:??????????23
1sequential_100/gru_100/while/gru_cell_100/Sigmoid?
/sequential_100/gru_100/while/gru_cell_100/add_1AddV28sequential_100/gru_100/while/gru_cell_100/split:output:1:sequential_100/gru_100/while/gru_cell_100/split_1:output:1*
T0*(
_output_shapes
:??????????21
/sequential_100/gru_100/while/gru_cell_100/add_1?
3sequential_100/gru_100/while/gru_cell_100/Sigmoid_1Sigmoid3sequential_100/gru_100/while/gru_cell_100/add_1:z:0*
T0*(
_output_shapes
:??????????25
3sequential_100/gru_100/while/gru_cell_100/Sigmoid_1?
-sequential_100/gru_100/while/gru_cell_100/mulMul7sequential_100/gru_100/while/gru_cell_100/Sigmoid_1:y:0*sequential_100_gru_100_while_placeholder_2*
T0*(
_output_shapes
:??????????2/
-sequential_100/gru_100/while/gru_cell_100/mul?
:sequential_100/gru_100/while/gru_cell_100/ReadVariableOp_1ReadVariableOpCsequential_100_gru_100_while_gru_cell_100_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02<
:sequential_100/gru_100/while/gru_cell_100/ReadVariableOp_1?
?sequential_100/gru_100/while/gru_cell_100/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2A
?sequential_100/gru_100/while/gru_cell_100/strided_slice_1/stack?
Asequential_100/gru_100/while/gru_cell_100/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2C
Asequential_100/gru_100/while/gru_cell_100/strided_slice_1/stack_1?
Asequential_100/gru_100/while/gru_cell_100/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2C
Asequential_100/gru_100/while/gru_cell_100/strided_slice_1/stack_2?
9sequential_100/gru_100/while/gru_cell_100/strided_slice_1StridedSliceBsequential_100/gru_100/while/gru_cell_100/ReadVariableOp_1:value:0Hsequential_100/gru_100/while/gru_cell_100/strided_slice_1/stack:output:0Jsequential_100/gru_100/while/gru_cell_100/strided_slice_1/stack_1:output:0Jsequential_100/gru_100/while/gru_cell_100/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2;
9sequential_100/gru_100/while/gru_cell_100/strided_slice_1?
2sequential_100/gru_100/while/gru_cell_100/MatMul_2MatMul1sequential_100/gru_100/while/gru_cell_100/mul:z:0Bsequential_100/gru_100/while/gru_cell_100/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????24
2sequential_100/gru_100/while/gru_cell_100/MatMul_2?
/sequential_100/gru_100/while/gru_cell_100/add_2AddV28sequential_100/gru_100/while/gru_cell_100/split:output:2<sequential_100/gru_100/while/gru_cell_100/MatMul_2:product:0*
T0*(
_output_shapes
:??????????21
/sequential_100/gru_100/while/gru_cell_100/add_2?
.sequential_100/gru_100/while/gru_cell_100/ReluRelu3sequential_100/gru_100/while/gru_cell_100/add_2:z:0*
T0*(
_output_shapes
:??????????20
.sequential_100/gru_100/while/gru_cell_100/Relu?
/sequential_100/gru_100/while/gru_cell_100/mul_1Mul5sequential_100/gru_100/while/gru_cell_100/Sigmoid:y:0*sequential_100_gru_100_while_placeholder_2*
T0*(
_output_shapes
:??????????21
/sequential_100/gru_100/while/gru_cell_100/mul_1?
/sequential_100/gru_100/while/gru_cell_100/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??21
/sequential_100/gru_100/while/gru_cell_100/sub/x?
-sequential_100/gru_100/while/gru_cell_100/subSub8sequential_100/gru_100/while/gru_cell_100/sub/x:output:05sequential_100/gru_100/while/gru_cell_100/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2/
-sequential_100/gru_100/while/gru_cell_100/sub?
/sequential_100/gru_100/while/gru_cell_100/mul_2Mul1sequential_100/gru_100/while/gru_cell_100/sub:z:0<sequential_100/gru_100/while/gru_cell_100/Relu:activations:0*
T0*(
_output_shapes
:??????????21
/sequential_100/gru_100/while/gru_cell_100/mul_2?
/sequential_100/gru_100/while/gru_cell_100/add_3AddV23sequential_100/gru_100/while/gru_cell_100/mul_1:z:03sequential_100/gru_100/while/gru_cell_100/mul_2:z:0*
T0*(
_output_shapes
:??????????21
/sequential_100/gru_100/while/gru_cell_100/add_3?
Asequential_100/gru_100/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_100_gru_100_while_placeholder_1(sequential_100_gru_100_while_placeholder3sequential_100/gru_100/while/gru_cell_100/add_3:z:0*
_output_shapes
: *
element_dtype02C
Asequential_100/gru_100/while/TensorArrayV2Write/TensorListSetItem?
"sequential_100/gru_100/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2$
"sequential_100/gru_100/while/add/y?
 sequential_100/gru_100/while/addAddV2(sequential_100_gru_100_while_placeholder+sequential_100/gru_100/while/add/y:output:0*
T0*
_output_shapes
: 2"
 sequential_100/gru_100/while/add?
$sequential_100/gru_100/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2&
$sequential_100/gru_100/while/add_1/y?
"sequential_100/gru_100/while/add_1AddV2Fsequential_100_gru_100_while_sequential_100_gru_100_while_loop_counter-sequential_100/gru_100/while/add_1/y:output:0*
T0*
_output_shapes
: 2$
"sequential_100/gru_100/while/add_1?
%sequential_100/gru_100/while/IdentityIdentity&sequential_100/gru_100/while/add_1:z:0A^sequential_100/gru_100/while/gru_cell_100/BiasAdd/ReadVariableOp@^sequential_100/gru_100/while/gru_cell_100/MatMul/ReadVariableOp9^sequential_100/gru_100/while/gru_cell_100/ReadVariableOp;^sequential_100/gru_100/while/gru_cell_100/ReadVariableOp_1*
T0*
_output_shapes
: 2'
%sequential_100/gru_100/while/Identity?
'sequential_100/gru_100/while/Identity_1IdentityLsequential_100_gru_100_while_sequential_100_gru_100_while_maximum_iterationsA^sequential_100/gru_100/while/gru_cell_100/BiasAdd/ReadVariableOp@^sequential_100/gru_100/while/gru_cell_100/MatMul/ReadVariableOp9^sequential_100/gru_100/while/gru_cell_100/ReadVariableOp;^sequential_100/gru_100/while/gru_cell_100/ReadVariableOp_1*
T0*
_output_shapes
: 2)
'sequential_100/gru_100/while/Identity_1?
'sequential_100/gru_100/while/Identity_2Identity$sequential_100/gru_100/while/add:z:0A^sequential_100/gru_100/while/gru_cell_100/BiasAdd/ReadVariableOp@^sequential_100/gru_100/while/gru_cell_100/MatMul/ReadVariableOp9^sequential_100/gru_100/while/gru_cell_100/ReadVariableOp;^sequential_100/gru_100/while/gru_cell_100/ReadVariableOp_1*
T0*
_output_shapes
: 2)
'sequential_100/gru_100/while/Identity_2?
'sequential_100/gru_100/while/Identity_3IdentityQsequential_100/gru_100/while/TensorArrayV2Write/TensorListSetItem:output_handle:0A^sequential_100/gru_100/while/gru_cell_100/BiasAdd/ReadVariableOp@^sequential_100/gru_100/while/gru_cell_100/MatMul/ReadVariableOp9^sequential_100/gru_100/while/gru_cell_100/ReadVariableOp;^sequential_100/gru_100/while/gru_cell_100/ReadVariableOp_1*
T0*
_output_shapes
: 2)
'sequential_100/gru_100/while/Identity_3?
'sequential_100/gru_100/while/Identity_4Identity3sequential_100/gru_100/while/gru_cell_100/add_3:z:0A^sequential_100/gru_100/while/gru_cell_100/BiasAdd/ReadVariableOp@^sequential_100/gru_100/while/gru_cell_100/MatMul/ReadVariableOp9^sequential_100/gru_100/while/gru_cell_100/ReadVariableOp;^sequential_100/gru_100/while/gru_cell_100/ReadVariableOp_1*
T0*(
_output_shapes
:??????????2)
'sequential_100/gru_100/while/Identity_4"?
Isequential_100_gru_100_while_gru_cell_100_biasadd_readvariableop_resourceKsequential_100_gru_100_while_gru_cell_100_biasadd_readvariableop_resource_0"?
Hsequential_100_gru_100_while_gru_cell_100_matmul_readvariableop_resourceJsequential_100_gru_100_while_gru_cell_100_matmul_readvariableop_resource_0"?
Asequential_100_gru_100_while_gru_cell_100_readvariableop_resourceCsequential_100_gru_100_while_gru_cell_100_readvariableop_resource_0"W
%sequential_100_gru_100_while_identity.sequential_100/gru_100/while/Identity:output:0"[
'sequential_100_gru_100_while_identity_10sequential_100/gru_100/while/Identity_1:output:0"[
'sequential_100_gru_100_while_identity_20sequential_100/gru_100/while/Identity_2:output:0"[
'sequential_100_gru_100_while_identity_30sequential_100/gru_100/while/Identity_3:output:0"[
'sequential_100_gru_100_while_identity_40sequential_100/gru_100/while/Identity_4:output:0"?
Csequential_100_gru_100_while_sequential_100_gru_100_strided_slice_1Esequential_100_gru_100_while_sequential_100_gru_100_strided_slice_1_0"?
sequential_100_gru_100_while_tensorarrayv2read_tensorlistgetitem_sequential_100_gru_100_tensorarrayunstack_tensorlistfromtensor?sequential_100_gru_100_while_tensorarrayv2read_tensorlistgetitem_sequential_100_gru_100_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2?
@sequential_100/gru_100/while/gru_cell_100/BiasAdd/ReadVariableOp@sequential_100/gru_100/while/gru_cell_100/BiasAdd/ReadVariableOp2?
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
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
K__inference_sequential_100_layer_call_and_return_conditional_losses_4938702

inputs"
gru_100_4938684:	?
gru_100_4938686:	?#
gru_100_4938688:
??$
dense_200_4938691:	?d
dense_200_4938693:d#
dense_201_4938696:d
dense_201_4938698:
identity??!dense_200/StatefulPartitionedCall?!dense_201/StatefulPartitionedCall?gru_100/StatefulPartitionedCall?
gru_100/StatefulPartitionedCallStatefulPartitionedCallinputsgru_100_4938684gru_100_4938686gru_100_4938688*
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
GPU 2J 8? *M
fHRF
D__inference_gru_100_layer_call_and_return_conditional_losses_49386512!
gru_100/StatefulPartitionedCall?
!dense_200/StatefulPartitionedCallStatefulPartitionedCall(gru_100/StatefulPartitionedCall:output:0dense_200_4938691dense_200_4938693*
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
F__inference_dense_200_layer_call_and_return_conditional_losses_49384072#
!dense_200/StatefulPartitionedCall?
!dense_201/StatefulPartitionedCallStatefulPartitionedCall*dense_200/StatefulPartitionedCall:output:0dense_201_4938696dense_201_4938698*
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
F__inference_dense_201_layer_call_and_return_conditional_losses_49384232#
!dense_201/StatefulPartitionedCall?
IdentityIdentity*dense_201/StatefulPartitionedCall:output:0"^dense_200/StatefulPartitionedCall"^dense_201/StatefulPartitionedCall ^gru_100/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2F
!dense_200/StatefulPartitionedCall!dense_200/StatefulPartitionedCall2F
!dense_201/StatefulPartitionedCall!dense_201/StatefulPartitionedCall2B
gru_100/StatefulPartitionedCallgru_100/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_4939331
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_4939331___redundant_placeholder05
1while_while_cond_4939331___redundant_placeholder15
1while_while_cond_4939331___redundant_placeholder25
1while_while_cond_4939331___redundant_placeholder3
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
?
gru_100_while_cond_4939103,
(gru_100_while_gru_100_while_loop_counter2
.gru_100_while_gru_100_while_maximum_iterations
gru_100_while_placeholder
gru_100_while_placeholder_1
gru_100_while_placeholder_2.
*gru_100_while_less_gru_100_strided_slice_1E
Agru_100_while_gru_100_while_cond_4939103___redundant_placeholder0E
Agru_100_while_gru_100_while_cond_4939103___redundant_placeholder1E
Agru_100_while_gru_100_while_cond_4939103___redundant_placeholder2E
Agru_100_while_gru_100_while_cond_4939103___redundant_placeholder3
gru_100_while_identity
?
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
?
?
while_cond_4939673
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_4939673___redundant_placeholder05
1while_while_cond_4939673___redundant_placeholder15
1while_while_cond_4939673___redundant_placeholder25
1while_while_cond_4939673___redundant_placeholder3
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
?j
?
D__inference_gru_100_layer_call_and_return_conditional_losses_4939599
inputs_0>
+gru_cell_100_matmul_readvariableop_resource:	?;
,gru_cell_100_biasadd_readvariableop_resource:	?8
$gru_cell_100_readvariableop_resource:
??
identity??#gru_cell_100/BiasAdd/ReadVariableOp?"gru_cell_100/MatMul/ReadVariableOp?gru_cell_100/ReadVariableOp?gru_cell_100/ReadVariableOp_1?whileF
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
"gru_cell_100/MatMul/ReadVariableOpReadVariableOp+gru_cell_100_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02$
"gru_cell_100/MatMul/ReadVariableOp?
gru_cell_100/MatMulMatMulstrided_slice_2:output:0*gru_cell_100/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/MatMul?
#gru_cell_100/BiasAdd/ReadVariableOpReadVariableOp,gru_cell_100_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#gru_cell_100/BiasAdd/ReadVariableOp?
gru_cell_100/BiasAddBiasAddgru_cell_100/MatMul:product:0+gru_cell_100/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/BiasAdd?
gru_cell_100/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_100/split/split_dim?
gru_cell_100/splitSplit%gru_cell_100/split/split_dim:output:0gru_cell_100/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
gru_cell_100/split?
gru_cell_100/ReadVariableOpReadVariableOp$gru_cell_100_readvariableop_resource* 
_output_shapes
:
??*
dtype02
gru_cell_100/ReadVariableOp?
 gru_cell_100/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 gru_cell_100/strided_slice/stack?
"gru_cell_100/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2$
"gru_cell_100/strided_slice/stack_1?
"gru_cell_100/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_100/strided_slice/stack_2?
gru_cell_100/strided_sliceStridedSlice#gru_cell_100/ReadVariableOp:value:0)gru_cell_100/strided_slice/stack:output:0+gru_cell_100/strided_slice/stack_1:output:0+gru_cell_100/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
gru_cell_100/strided_slice?
gru_cell_100/MatMul_1MatMulzeros:output:0#gru_cell_100/strided_slice:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/MatMul_1}
gru_cell_100/ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2
gru_cell_100/Const?
gru_cell_100/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2 
gru_cell_100/split_1/split_dim?
gru_cell_100/split_1SplitVgru_cell_100/MatMul_1:product:0gru_cell_100/Const:output:0'gru_cell_100/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:??????????:??????????:????????? *
	num_split2
gru_cell_100/split_1?
gru_cell_100/addAddV2gru_cell_100/split:output:0gru_cell_100/split_1:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/add?
gru_cell_100/SigmoidSigmoidgru_cell_100/add:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/Sigmoid?
gru_cell_100/add_1AddV2gru_cell_100/split:output:1gru_cell_100/split_1:output:1*
T0*(
_output_shapes
:??????????2
gru_cell_100/add_1?
gru_cell_100/Sigmoid_1Sigmoidgru_cell_100/add_1:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/Sigmoid_1?
gru_cell_100/mulMulgru_cell_100/Sigmoid_1:y:0zeros:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/mul?
gru_cell_100/ReadVariableOp_1ReadVariableOp$gru_cell_100_readvariableop_resource* 
_output_shapes
:
??*
dtype02
gru_cell_100/ReadVariableOp_1?
"gru_cell_100/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2$
"gru_cell_100/strided_slice_1/stack?
$gru_cell_100/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$gru_cell_100/strided_slice_1/stack_1?
$gru_cell_100/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$gru_cell_100/strided_slice_1/stack_2?
gru_cell_100/strided_slice_1StridedSlice%gru_cell_100/ReadVariableOp_1:value:0+gru_cell_100/strided_slice_1/stack:output:0-gru_cell_100/strided_slice_1/stack_1:output:0-gru_cell_100/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
gru_cell_100/strided_slice_1?
gru_cell_100/MatMul_2MatMulgru_cell_100/mul:z:0%gru_cell_100/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/MatMul_2?
gru_cell_100/add_2AddV2gru_cell_100/split:output:2gru_cell_100/MatMul_2:product:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/add_2y
gru_cell_100/ReluRelugru_cell_100/add_2:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/Relu?
gru_cell_100/mul_1Mulgru_cell_100/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/mul_1m
gru_cell_100/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_cell_100/sub/x?
gru_cell_100/subSubgru_cell_100/sub/x:output:0gru_cell_100/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/sub?
gru_cell_100/mul_2Mulgru_cell_100/sub:z:0gru_cell_100/Relu:activations:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/mul_2?
gru_cell_100/add_3AddV2gru_cell_100/mul_1:z:0gru_cell_100/mul_2:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/add_3?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+gru_cell_100_matmul_readvariableop_resource,gru_cell_100_biasadd_readvariableop_resource$gru_cell_100_readvariableop_resource*
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
while_body_4939503*
condR
while_cond_4939502*9
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
IdentityIdentitystrided_slice_3:output:0$^gru_cell_100/BiasAdd/ReadVariableOp#^gru_cell_100/MatMul/ReadVariableOp^gru_cell_100/ReadVariableOp^gru_cell_100/ReadVariableOp_1^while*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2J
#gru_cell_100/BiasAdd/ReadVariableOp#gru_cell_100/BiasAdd/ReadVariableOp2H
"gru_cell_100/MatMul/ReadVariableOp"gru_cell_100/MatMul/ReadVariableOp2:
gru_cell_100/ReadVariableOpgru_cell_100/ReadVariableOp2>
gru_cell_100/ReadVariableOp_1gru_cell_100/ReadVariableOp_12
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?	
?
F__inference_dense_201_layer_call_and_return_conditional_losses_4938423

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
?g
?

gru_100_while_body_4939104,
(gru_100_while_gru_100_while_loop_counter2
.gru_100_while_gru_100_while_maximum_iterations
gru_100_while_placeholder
gru_100_while_placeholder_1
gru_100_while_placeholder_2+
'gru_100_while_gru_100_strided_slice_1_0g
cgru_100_while_tensorarrayv2read_tensorlistgetitem_gru_100_tensorarrayunstack_tensorlistfromtensor_0N
;gru_100_while_gru_cell_100_matmul_readvariableop_resource_0:	?K
<gru_100_while_gru_cell_100_biasadd_readvariableop_resource_0:	?H
4gru_100_while_gru_cell_100_readvariableop_resource_0:
??
gru_100_while_identity
gru_100_while_identity_1
gru_100_while_identity_2
gru_100_while_identity_3
gru_100_while_identity_4)
%gru_100_while_gru_100_strided_slice_1e
agru_100_while_tensorarrayv2read_tensorlistgetitem_gru_100_tensorarrayunstack_tensorlistfromtensorL
9gru_100_while_gru_cell_100_matmul_readvariableop_resource:	?I
:gru_100_while_gru_cell_100_biasadd_readvariableop_resource:	?F
2gru_100_while_gru_cell_100_readvariableop_resource:
????1gru_100/while/gru_cell_100/BiasAdd/ReadVariableOp?0gru_100/while/gru_cell_100/MatMul/ReadVariableOp?)gru_100/while/gru_cell_100/ReadVariableOp?+gru_100/while/gru_cell_100/ReadVariableOp_1?
?gru_100/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2A
?gru_100/while/TensorArrayV2Read/TensorListGetItem/element_shape?
1gru_100/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemcgru_100_while_tensorarrayv2read_tensorlistgetitem_gru_100_tensorarrayunstack_tensorlistfromtensor_0gru_100_while_placeholderHgru_100/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype023
1gru_100/while/TensorArrayV2Read/TensorListGetItem?
0gru_100/while/gru_cell_100/MatMul/ReadVariableOpReadVariableOp;gru_100_while_gru_cell_100_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype022
0gru_100/while/gru_cell_100/MatMul/ReadVariableOp?
!gru_100/while/gru_cell_100/MatMulMatMul8gru_100/while/TensorArrayV2Read/TensorListGetItem:item:08gru_100/while/gru_cell_100/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2#
!gru_100/while/gru_cell_100/MatMul?
1gru_100/while/gru_cell_100/BiasAdd/ReadVariableOpReadVariableOp<gru_100_while_gru_cell_100_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype023
1gru_100/while/gru_cell_100/BiasAdd/ReadVariableOp?
"gru_100/while/gru_cell_100/BiasAddBiasAdd+gru_100/while/gru_cell_100/MatMul:product:09gru_100/while/gru_cell_100/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2$
"gru_100/while/gru_cell_100/BiasAdd?
*gru_100/while/gru_cell_100/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2,
*gru_100/while/gru_cell_100/split/split_dim?
 gru_100/while/gru_cell_100/splitSplit3gru_100/while/gru_cell_100/split/split_dim:output:0+gru_100/while/gru_cell_100/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2"
 gru_100/while/gru_cell_100/split?
)gru_100/while/gru_cell_100/ReadVariableOpReadVariableOp4gru_100_while_gru_cell_100_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02+
)gru_100/while/gru_cell_100/ReadVariableOp?
.gru_100/while/gru_cell_100/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        20
.gru_100/while/gru_cell_100/strided_slice/stack?
0gru_100/while/gru_cell_100/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  22
0gru_100/while/gru_cell_100/strided_slice/stack_1?
0gru_100/while/gru_cell_100/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0gru_100/while/gru_cell_100/strided_slice/stack_2?
(gru_100/while/gru_cell_100/strided_sliceStridedSlice1gru_100/while/gru_cell_100/ReadVariableOp:value:07gru_100/while/gru_cell_100/strided_slice/stack:output:09gru_100/while/gru_cell_100/strided_slice/stack_1:output:09gru_100/while/gru_cell_100/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2*
(gru_100/while/gru_cell_100/strided_slice?
#gru_100/while/gru_cell_100/MatMul_1MatMulgru_100_while_placeholder_21gru_100/while/gru_cell_100/strided_slice:output:0*
T0*(
_output_shapes
:??????????2%
#gru_100/while/gru_cell_100/MatMul_1?
 gru_100/while/gru_cell_100/ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2"
 gru_100/while/gru_cell_100/Const?
,gru_100/while/gru_cell_100/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2.
,gru_100/while/gru_cell_100/split_1/split_dim?
"gru_100/while/gru_cell_100/split_1SplitV-gru_100/while/gru_cell_100/MatMul_1:product:0)gru_100/while/gru_cell_100/Const:output:05gru_100/while/gru_cell_100/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:??????????:??????????:????????? *
	num_split2$
"gru_100/while/gru_cell_100/split_1?
gru_100/while/gru_cell_100/addAddV2)gru_100/while/gru_cell_100/split:output:0+gru_100/while/gru_cell_100/split_1:output:0*
T0*(
_output_shapes
:??????????2 
gru_100/while/gru_cell_100/add?
"gru_100/while/gru_cell_100/SigmoidSigmoid"gru_100/while/gru_cell_100/add:z:0*
T0*(
_output_shapes
:??????????2$
"gru_100/while/gru_cell_100/Sigmoid?
 gru_100/while/gru_cell_100/add_1AddV2)gru_100/while/gru_cell_100/split:output:1+gru_100/while/gru_cell_100/split_1:output:1*
T0*(
_output_shapes
:??????????2"
 gru_100/while/gru_cell_100/add_1?
$gru_100/while/gru_cell_100/Sigmoid_1Sigmoid$gru_100/while/gru_cell_100/add_1:z:0*
T0*(
_output_shapes
:??????????2&
$gru_100/while/gru_cell_100/Sigmoid_1?
gru_100/while/gru_cell_100/mulMul(gru_100/while/gru_cell_100/Sigmoid_1:y:0gru_100_while_placeholder_2*
T0*(
_output_shapes
:??????????2 
gru_100/while/gru_cell_100/mul?
+gru_100/while/gru_cell_100/ReadVariableOp_1ReadVariableOp4gru_100_while_gru_cell_100_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02-
+gru_100/while/gru_cell_100/ReadVariableOp_1?
0gru_100/while/gru_cell_100/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  22
0gru_100/while/gru_cell_100/strided_slice_1/stack?
2gru_100/while/gru_cell_100/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        24
2gru_100/while/gru_cell_100/strided_slice_1/stack_1?
2gru_100/while/gru_cell_100/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2gru_100/while/gru_cell_100/strided_slice_1/stack_2?
*gru_100/while/gru_cell_100/strided_slice_1StridedSlice3gru_100/while/gru_cell_100/ReadVariableOp_1:value:09gru_100/while/gru_cell_100/strided_slice_1/stack:output:0;gru_100/while/gru_cell_100/strided_slice_1/stack_1:output:0;gru_100/while/gru_cell_100/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2,
*gru_100/while/gru_cell_100/strided_slice_1?
#gru_100/while/gru_cell_100/MatMul_2MatMul"gru_100/while/gru_cell_100/mul:z:03gru_100/while/gru_cell_100/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2%
#gru_100/while/gru_cell_100/MatMul_2?
 gru_100/while/gru_cell_100/add_2AddV2)gru_100/while/gru_cell_100/split:output:2-gru_100/while/gru_cell_100/MatMul_2:product:0*
T0*(
_output_shapes
:??????????2"
 gru_100/while/gru_cell_100/add_2?
gru_100/while/gru_cell_100/ReluRelu$gru_100/while/gru_cell_100/add_2:z:0*
T0*(
_output_shapes
:??????????2!
gru_100/while/gru_cell_100/Relu?
 gru_100/while/gru_cell_100/mul_1Mul&gru_100/while/gru_cell_100/Sigmoid:y:0gru_100_while_placeholder_2*
T0*(
_output_shapes
:??????????2"
 gru_100/while/gru_cell_100/mul_1?
 gru_100/while/gru_cell_100/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2"
 gru_100/while/gru_cell_100/sub/x?
gru_100/while/gru_cell_100/subSub)gru_100/while/gru_cell_100/sub/x:output:0&gru_100/while/gru_cell_100/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2 
gru_100/while/gru_cell_100/sub?
 gru_100/while/gru_cell_100/mul_2Mul"gru_100/while/gru_cell_100/sub:z:0-gru_100/while/gru_cell_100/Relu:activations:0*
T0*(
_output_shapes
:??????????2"
 gru_100/while/gru_cell_100/mul_2?
 gru_100/while/gru_cell_100/add_3AddV2$gru_100/while/gru_cell_100/mul_1:z:0$gru_100/while/gru_cell_100/mul_2:z:0*
T0*(
_output_shapes
:??????????2"
 gru_100/while/gru_cell_100/add_3?
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
gru_100/while/add/y?
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
gru_100/while/add_1/y?
gru_100/while/add_1AddV2(gru_100_while_gru_100_while_loop_countergru_100/while/add_1/y:output:0*
T0*
_output_shapes
: 2
gru_100/while/add_1?
gru_100/while/IdentityIdentitygru_100/while/add_1:z:02^gru_100/while/gru_cell_100/BiasAdd/ReadVariableOp1^gru_100/while/gru_cell_100/MatMul/ReadVariableOp*^gru_100/while/gru_cell_100/ReadVariableOp,^gru_100/while/gru_cell_100/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_100/while/Identity?
gru_100/while/Identity_1Identity.gru_100_while_gru_100_while_maximum_iterations2^gru_100/while/gru_cell_100/BiasAdd/ReadVariableOp1^gru_100/while/gru_cell_100/MatMul/ReadVariableOp*^gru_100/while/gru_cell_100/ReadVariableOp,^gru_100/while/gru_cell_100/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_100/while/Identity_1?
gru_100/while/Identity_2Identitygru_100/while/add:z:02^gru_100/while/gru_cell_100/BiasAdd/ReadVariableOp1^gru_100/while/gru_cell_100/MatMul/ReadVariableOp*^gru_100/while/gru_cell_100/ReadVariableOp,^gru_100/while/gru_cell_100/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_100/while/Identity_2?
gru_100/while/Identity_3IdentityBgru_100/while/TensorArrayV2Write/TensorListSetItem:output_handle:02^gru_100/while/gru_cell_100/BiasAdd/ReadVariableOp1^gru_100/while/gru_cell_100/MatMul/ReadVariableOp*^gru_100/while/gru_cell_100/ReadVariableOp,^gru_100/while/gru_cell_100/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_100/while/Identity_3?
gru_100/while/Identity_4Identity$gru_100/while/gru_cell_100/add_3:z:02^gru_100/while/gru_cell_100/BiasAdd/ReadVariableOp1^gru_100/while/gru_cell_100/MatMul/ReadVariableOp*^gru_100/while/gru_cell_100/ReadVariableOp,^gru_100/while/gru_cell_100/ReadVariableOp_1*
T0*(
_output_shapes
:??????????2
gru_100/while/Identity_4"P
%gru_100_while_gru_100_strided_slice_1'gru_100_while_gru_100_strided_slice_1_0"z
:gru_100_while_gru_cell_100_biasadd_readvariableop_resource<gru_100_while_gru_cell_100_biasadd_readvariableop_resource_0"x
9gru_100_while_gru_cell_100_matmul_readvariableop_resource;gru_100_while_gru_cell_100_matmul_readvariableop_resource_0"j
2gru_100_while_gru_cell_100_readvariableop_resource4gru_100_while_gru_cell_100_readvariableop_resource_0"9
gru_100_while_identitygru_100/while/Identity:output:0"=
gru_100_while_identity_1!gru_100/while/Identity_1:output:0"=
gru_100_while_identity_2!gru_100/while/Identity_2:output:0"=
gru_100_while_identity_3!gru_100/while/Identity_3:output:0"=
gru_100_while_identity_4!gru_100/while/Identity_4:output:0"?
agru_100_while_tensorarrayv2read_tensorlistgetitem_gru_100_tensorarrayunstack_tensorlistfromtensorcgru_100_while_tensorarrayv2read_tensorlistgetitem_gru_100_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2f
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
:??????????:

_output_shapes
: :

_output_shapes
: 
?

?
.__inference_gru_cell_100_layer_call_fn_4940008

inputs
states_0
unknown:	?
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
GPU 2J 8? *R
fMRK
I__inference_gru_cell_100_layer_call_and_return_conditional_losses_49378462
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
-:?????????:??????????: : : 22
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
states/0
?
?
)__inference_gru_100_layer_call_fn_4939246

inputs
unknown:	?
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
GPU 2J 8? *M
fHRF
D__inference_gru_100_layer_call_and_return_conditional_losses_49383882
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
0__inference_sequential_100_layer_call_fn_4938845

inputs
unknown:	?
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
GPU 2J 8? *T
fORM
K__inference_sequential_100_layer_call_and_return_conditional_losses_49387022
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
while_cond_4939502
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_4939502___redundant_placeholder05
1while_while_cond_4939502___redundant_placeholder15
1while_while_cond_4939502___redundant_placeholder25
1while_while_cond_4939502___redundant_placeholder3
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
F__inference_dense_201_layer_call_and_return_conditional_losses_4939980

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
?Y
?
while_body_4939503
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_gru_cell_100_matmul_readvariableop_resource_0:	?C
4while_gru_cell_100_biasadd_readvariableop_resource_0:	?@
,while_gru_cell_100_readvariableop_resource_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_gru_cell_100_matmul_readvariableop_resource:	?A
2while_gru_cell_100_biasadd_readvariableop_resource:	?>
*while_gru_cell_100_readvariableop_resource:
????)while/gru_cell_100/BiasAdd/ReadVariableOp?(while/gru_cell_100/MatMul/ReadVariableOp?!while/gru_cell_100/ReadVariableOp?#while/gru_cell_100/ReadVariableOp_1?
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
(while/gru_cell_100/MatMul/ReadVariableOpReadVariableOp3while_gru_cell_100_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02*
(while/gru_cell_100/MatMul/ReadVariableOp?
while/gru_cell_100/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/gru_cell_100/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/MatMul?
)while/gru_cell_100/BiasAdd/ReadVariableOpReadVariableOp4while_gru_cell_100_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/gru_cell_100/BiasAdd/ReadVariableOp?
while/gru_cell_100/BiasAddBiasAdd#while/gru_cell_100/MatMul:product:01while/gru_cell_100/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/BiasAdd?
"while/gru_cell_100/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"while/gru_cell_100/split/split_dim?
while/gru_cell_100/splitSplit+while/gru_cell_100/split/split_dim:output:0#while/gru_cell_100/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
while/gru_cell_100/split?
!while/gru_cell_100/ReadVariableOpReadVariableOp,while_gru_cell_100_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02#
!while/gru_cell_100/ReadVariableOp?
&while/gru_cell_100/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/gru_cell_100/strided_slice/stack?
(while/gru_cell_100/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2*
(while/gru_cell_100/strided_slice/stack_1?
(while/gru_cell_100/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_100/strided_slice/stack_2?
 while/gru_cell_100/strided_sliceStridedSlice)while/gru_cell_100/ReadVariableOp:value:0/while/gru_cell_100/strided_slice/stack:output:01while/gru_cell_100/strided_slice/stack_1:output:01while/gru_cell_100/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2"
 while/gru_cell_100/strided_slice?
while/gru_cell_100/MatMul_1MatMulwhile_placeholder_2)while/gru_cell_100/strided_slice:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/MatMul_1?
while/gru_cell_100/ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2
while/gru_cell_100/Const?
$while/gru_cell_100/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2&
$while/gru_cell_100/split_1/split_dim?
while/gru_cell_100/split_1SplitV%while/gru_cell_100/MatMul_1:product:0!while/gru_cell_100/Const:output:0-while/gru_cell_100/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:??????????:??????????:????????? *
	num_split2
while/gru_cell_100/split_1?
while/gru_cell_100/addAddV2!while/gru_cell_100/split:output:0#while/gru_cell_100/split_1:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/add?
while/gru_cell_100/SigmoidSigmoidwhile/gru_cell_100/add:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/Sigmoid?
while/gru_cell_100/add_1AddV2!while/gru_cell_100/split:output:1#while/gru_cell_100/split_1:output:1*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/add_1?
while/gru_cell_100/Sigmoid_1Sigmoidwhile/gru_cell_100/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/Sigmoid_1?
while/gru_cell_100/mulMul while/gru_cell_100/Sigmoid_1:y:0while_placeholder_2*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/mul?
#while/gru_cell_100/ReadVariableOp_1ReadVariableOp,while_gru_cell_100_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02%
#while/gru_cell_100/ReadVariableOp_1?
(while/gru_cell_100/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2*
(while/gru_cell_100/strided_slice_1/stack?
*while/gru_cell_100/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/gru_cell_100/strided_slice_1/stack_1?
*while/gru_cell_100/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/gru_cell_100/strided_slice_1/stack_2?
"while/gru_cell_100/strided_slice_1StridedSlice+while/gru_cell_100/ReadVariableOp_1:value:01while/gru_cell_100/strided_slice_1/stack:output:03while/gru_cell_100/strided_slice_1/stack_1:output:03while/gru_cell_100/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2$
"while/gru_cell_100/strided_slice_1?
while/gru_cell_100/MatMul_2MatMulwhile/gru_cell_100/mul:z:0+while/gru_cell_100/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/MatMul_2?
while/gru_cell_100/add_2AddV2!while/gru_cell_100/split:output:2%while/gru_cell_100/MatMul_2:product:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/add_2?
while/gru_cell_100/ReluReluwhile/gru_cell_100/add_2:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/Relu?
while/gru_cell_100/mul_1Mulwhile/gru_cell_100/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/mul_1y
while/gru_cell_100/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/gru_cell_100/sub/x?
while/gru_cell_100/subSub!while/gru_cell_100/sub/x:output:0while/gru_cell_100/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/sub?
while/gru_cell_100/mul_2Mulwhile/gru_cell_100/sub:z:0%while/gru_cell_100/Relu:activations:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/mul_2?
while/gru_cell_100/add_3AddV2while/gru_cell_100/mul_1:z:0while/gru_cell_100/mul_2:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/add_3?
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
while/add_1?
while/IdentityIdentitywhile/add_1:z:0*^while/gru_cell_100/BiasAdd/ReadVariableOp)^while/gru_cell_100/MatMul/ReadVariableOp"^while/gru_cell_100/ReadVariableOp$^while/gru_cell_100/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations*^while/gru_cell_100/BiasAdd/ReadVariableOp)^while/gru_cell_100/MatMul/ReadVariableOp"^while/gru_cell_100/ReadVariableOp$^while/gru_cell_100/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0*^while/gru_cell_100/BiasAdd/ReadVariableOp)^while/gru_cell_100/MatMul/ReadVariableOp"^while/gru_cell_100/ReadVariableOp$^while/gru_cell_100/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/gru_cell_100/BiasAdd/ReadVariableOp)^while/gru_cell_100/MatMul/ReadVariableOp"^while/gru_cell_100/ReadVariableOp$^while/gru_cell_100/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/gru_cell_100/add_3:z:0*^while/gru_cell_100/BiasAdd/ReadVariableOp)^while/gru_cell_100/MatMul/ReadVariableOp"^while/gru_cell_100/ReadVariableOp$^while/gru_cell_100/ReadVariableOp_1*
T0*(
_output_shapes
:??????????2
while/Identity_4"j
2while_gru_cell_100_biasadd_readvariableop_resource4while_gru_cell_100_biasadd_readvariableop_resource_0"h
1while_gru_cell_100_matmul_readvariableop_resource3while_gru_cell_100_matmul_readvariableop_resource_0"Z
*while_gru_cell_100_readvariableop_resource,while_gru_cell_100_readvariableop_resource_0")
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
:??????????:

_output_shapes
: :

_output_shapes
: 
?	
?
0__inference_sequential_100_layer_call_fn_4938447
gru_100_input
unknown:	?
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?d
	unknown_3:d
	unknown_4:d
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallgru_100_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
K__inference_sequential_100_layer_call_and_return_conditional_losses_49384302
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
_user_specified_namegru_100_input
?i
?
D__inference_gru_100_layer_call_and_return_conditional_losses_4938651

inputs>
+gru_cell_100_matmul_readvariableop_resource:	?;
,gru_cell_100_biasadd_readvariableop_resource:	?8
$gru_cell_100_readvariableop_resource:
??
identity??#gru_cell_100/BiasAdd/ReadVariableOp?"gru_cell_100/MatMul/ReadVariableOp?gru_cell_100/ReadVariableOp?gru_cell_100/ReadVariableOp_1?whileD
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
"gru_cell_100/MatMul/ReadVariableOpReadVariableOp+gru_cell_100_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02$
"gru_cell_100/MatMul/ReadVariableOp?
gru_cell_100/MatMulMatMulstrided_slice_2:output:0*gru_cell_100/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/MatMul?
#gru_cell_100/BiasAdd/ReadVariableOpReadVariableOp,gru_cell_100_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#gru_cell_100/BiasAdd/ReadVariableOp?
gru_cell_100/BiasAddBiasAddgru_cell_100/MatMul:product:0+gru_cell_100/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/BiasAdd?
gru_cell_100/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_100/split/split_dim?
gru_cell_100/splitSplit%gru_cell_100/split/split_dim:output:0gru_cell_100/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
gru_cell_100/split?
gru_cell_100/ReadVariableOpReadVariableOp$gru_cell_100_readvariableop_resource* 
_output_shapes
:
??*
dtype02
gru_cell_100/ReadVariableOp?
 gru_cell_100/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 gru_cell_100/strided_slice/stack?
"gru_cell_100/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2$
"gru_cell_100/strided_slice/stack_1?
"gru_cell_100/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_100/strided_slice/stack_2?
gru_cell_100/strided_sliceStridedSlice#gru_cell_100/ReadVariableOp:value:0)gru_cell_100/strided_slice/stack:output:0+gru_cell_100/strided_slice/stack_1:output:0+gru_cell_100/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
gru_cell_100/strided_slice?
gru_cell_100/MatMul_1MatMulzeros:output:0#gru_cell_100/strided_slice:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/MatMul_1}
gru_cell_100/ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2
gru_cell_100/Const?
gru_cell_100/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2 
gru_cell_100/split_1/split_dim?
gru_cell_100/split_1SplitVgru_cell_100/MatMul_1:product:0gru_cell_100/Const:output:0'gru_cell_100/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:??????????:??????????:????????? *
	num_split2
gru_cell_100/split_1?
gru_cell_100/addAddV2gru_cell_100/split:output:0gru_cell_100/split_1:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/add?
gru_cell_100/SigmoidSigmoidgru_cell_100/add:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/Sigmoid?
gru_cell_100/add_1AddV2gru_cell_100/split:output:1gru_cell_100/split_1:output:1*
T0*(
_output_shapes
:??????????2
gru_cell_100/add_1?
gru_cell_100/Sigmoid_1Sigmoidgru_cell_100/add_1:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/Sigmoid_1?
gru_cell_100/mulMulgru_cell_100/Sigmoid_1:y:0zeros:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/mul?
gru_cell_100/ReadVariableOp_1ReadVariableOp$gru_cell_100_readvariableop_resource* 
_output_shapes
:
??*
dtype02
gru_cell_100/ReadVariableOp_1?
"gru_cell_100/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2$
"gru_cell_100/strided_slice_1/stack?
$gru_cell_100/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$gru_cell_100/strided_slice_1/stack_1?
$gru_cell_100/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$gru_cell_100/strided_slice_1/stack_2?
gru_cell_100/strided_slice_1StridedSlice%gru_cell_100/ReadVariableOp_1:value:0+gru_cell_100/strided_slice_1/stack:output:0-gru_cell_100/strided_slice_1/stack_1:output:0-gru_cell_100/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
gru_cell_100/strided_slice_1?
gru_cell_100/MatMul_2MatMulgru_cell_100/mul:z:0%gru_cell_100/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/MatMul_2?
gru_cell_100/add_2AddV2gru_cell_100/split:output:2gru_cell_100/MatMul_2:product:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/add_2y
gru_cell_100/ReluRelugru_cell_100/add_2:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/Relu?
gru_cell_100/mul_1Mulgru_cell_100/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/mul_1m
gru_cell_100/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_cell_100/sub/x?
gru_cell_100/subSubgru_cell_100/sub/x:output:0gru_cell_100/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/sub?
gru_cell_100/mul_2Mulgru_cell_100/sub:z:0gru_cell_100/Relu:activations:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/mul_2?
gru_cell_100/add_3AddV2gru_cell_100/mul_1:z:0gru_cell_100/mul_2:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/add_3?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+gru_cell_100_matmul_readvariableop_resource,gru_cell_100_biasadd_readvariableop_resource$gru_cell_100_readvariableop_resource*
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
while_body_4938555*
condR
while_cond_4938554*9
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
IdentityIdentitystrided_slice_3:output:0$^gru_cell_100/BiasAdd/ReadVariableOp#^gru_cell_100/MatMul/ReadVariableOp^gru_cell_100/ReadVariableOp^gru_cell_100/ReadVariableOp_1^while*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2J
#gru_cell_100/BiasAdd/ReadVariableOp#gru_cell_100/BiasAdd/ReadVariableOp2H
"gru_cell_100/MatMul/ReadVariableOp"gru_cell_100/MatMul/ReadVariableOp2:
gru_cell_100/ReadVariableOpgru_cell_100/ReadVariableOp2>
gru_cell_100/ReadVariableOp_1gru_cell_100/ReadVariableOp_12
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
gru_100_while_cond_4938919,
(gru_100_while_gru_100_while_loop_counter2
.gru_100_while_gru_100_while_maximum_iterations
gru_100_while_placeholder
gru_100_while_placeholder_1
gru_100_while_placeholder_2.
*gru_100_while_less_gru_100_strided_slice_1E
Agru_100_while_gru_100_while_cond_4938919___redundant_placeholder0E
Agru_100_while_gru_100_while_cond_4938919___redundant_placeholder1E
Agru_100_while_gru_100_while_cond_4938919___redundant_placeholder2E
Agru_100_while_gru_100_while_cond_4938919___redundant_placeholder3
gru_100_while_identity
?
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
)__inference_gru_100_layer_call_fn_4939224
inputs_0
unknown:	?
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
GPU 2J 8? *M
fHRF
D__inference_gru_100_layer_call_and_return_conditional_losses_49377732
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
?i
?
D__inference_gru_100_layer_call_and_return_conditional_losses_4939941

inputs>
+gru_cell_100_matmul_readvariableop_resource:	?;
,gru_cell_100_biasadd_readvariableop_resource:	?8
$gru_cell_100_readvariableop_resource:
??
identity??#gru_cell_100/BiasAdd/ReadVariableOp?"gru_cell_100/MatMul/ReadVariableOp?gru_cell_100/ReadVariableOp?gru_cell_100/ReadVariableOp_1?whileD
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
"gru_cell_100/MatMul/ReadVariableOpReadVariableOp+gru_cell_100_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02$
"gru_cell_100/MatMul/ReadVariableOp?
gru_cell_100/MatMulMatMulstrided_slice_2:output:0*gru_cell_100/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/MatMul?
#gru_cell_100/BiasAdd/ReadVariableOpReadVariableOp,gru_cell_100_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#gru_cell_100/BiasAdd/ReadVariableOp?
gru_cell_100/BiasAddBiasAddgru_cell_100/MatMul:product:0+gru_cell_100/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/BiasAdd?
gru_cell_100/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_100/split/split_dim?
gru_cell_100/splitSplit%gru_cell_100/split/split_dim:output:0gru_cell_100/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
gru_cell_100/split?
gru_cell_100/ReadVariableOpReadVariableOp$gru_cell_100_readvariableop_resource* 
_output_shapes
:
??*
dtype02
gru_cell_100/ReadVariableOp?
 gru_cell_100/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 gru_cell_100/strided_slice/stack?
"gru_cell_100/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2$
"gru_cell_100/strided_slice/stack_1?
"gru_cell_100/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_100/strided_slice/stack_2?
gru_cell_100/strided_sliceStridedSlice#gru_cell_100/ReadVariableOp:value:0)gru_cell_100/strided_slice/stack:output:0+gru_cell_100/strided_slice/stack_1:output:0+gru_cell_100/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
gru_cell_100/strided_slice?
gru_cell_100/MatMul_1MatMulzeros:output:0#gru_cell_100/strided_slice:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/MatMul_1}
gru_cell_100/ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2
gru_cell_100/Const?
gru_cell_100/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2 
gru_cell_100/split_1/split_dim?
gru_cell_100/split_1SplitVgru_cell_100/MatMul_1:product:0gru_cell_100/Const:output:0'gru_cell_100/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:??????????:??????????:????????? *
	num_split2
gru_cell_100/split_1?
gru_cell_100/addAddV2gru_cell_100/split:output:0gru_cell_100/split_1:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/add?
gru_cell_100/SigmoidSigmoidgru_cell_100/add:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/Sigmoid?
gru_cell_100/add_1AddV2gru_cell_100/split:output:1gru_cell_100/split_1:output:1*
T0*(
_output_shapes
:??????????2
gru_cell_100/add_1?
gru_cell_100/Sigmoid_1Sigmoidgru_cell_100/add_1:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/Sigmoid_1?
gru_cell_100/mulMulgru_cell_100/Sigmoid_1:y:0zeros:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/mul?
gru_cell_100/ReadVariableOp_1ReadVariableOp$gru_cell_100_readvariableop_resource* 
_output_shapes
:
??*
dtype02
gru_cell_100/ReadVariableOp_1?
"gru_cell_100/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2$
"gru_cell_100/strided_slice_1/stack?
$gru_cell_100/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$gru_cell_100/strided_slice_1/stack_1?
$gru_cell_100/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$gru_cell_100/strided_slice_1/stack_2?
gru_cell_100/strided_slice_1StridedSlice%gru_cell_100/ReadVariableOp_1:value:0+gru_cell_100/strided_slice_1/stack:output:0-gru_cell_100/strided_slice_1/stack_1:output:0-gru_cell_100/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
gru_cell_100/strided_slice_1?
gru_cell_100/MatMul_2MatMulgru_cell_100/mul:z:0%gru_cell_100/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/MatMul_2?
gru_cell_100/add_2AddV2gru_cell_100/split:output:2gru_cell_100/MatMul_2:product:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/add_2y
gru_cell_100/ReluRelugru_cell_100/add_2:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/Relu?
gru_cell_100/mul_1Mulgru_cell_100/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/mul_1m
gru_cell_100/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_cell_100/sub/x?
gru_cell_100/subSubgru_cell_100/sub/x:output:0gru_cell_100/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/sub?
gru_cell_100/mul_2Mulgru_cell_100/sub:z:0gru_cell_100/Relu:activations:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/mul_2?
gru_cell_100/add_3AddV2gru_cell_100/mul_1:z:0gru_cell_100/mul_2:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/add_3?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+gru_cell_100_matmul_readvariableop_resource,gru_cell_100_biasadd_readvariableop_resource$gru_cell_100_readvariableop_resource*
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
while_body_4939845*
condR
while_cond_4939844*9
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
IdentityIdentitystrided_slice_3:output:0$^gru_cell_100/BiasAdd/ReadVariableOp#^gru_cell_100/MatMul/ReadVariableOp^gru_cell_100/ReadVariableOp^gru_cell_100/ReadVariableOp_1^while*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2J
#gru_cell_100/BiasAdd/ReadVariableOp#gru_cell_100/BiasAdd/ReadVariableOp2H
"gru_cell_100/MatMul/ReadVariableOp"gru_cell_100/MatMul/ReadVariableOp2:
gru_cell_100/ReadVariableOpgru_cell_100/ReadVariableOp2>
gru_cell_100/ReadVariableOp_1gru_cell_100/ReadVariableOp_12
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
F__inference_dense_200_layer_call_and_return_conditional_losses_4939961

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
?B
?
 __inference__traced_save_4940207
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_200_kernel_read_readvariableop)savev2_dense_200_bias_read_readvariableop+savev2_dense_201_kernel_read_readvariableop)savev2_dense_201_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop6savev2_gru_100_gru_cell_100_kernel_read_readvariableop@savev2_gru_100_gru_cell_100_recurrent_kernel_read_readvariableop4savev2_gru_100_gru_cell_100_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_200_kernel_m_read_readvariableop0savev2_adam_dense_200_bias_m_read_readvariableop2savev2_adam_dense_201_kernel_m_read_readvariableop0savev2_adam_dense_201_bias_m_read_readvariableop=savev2_adam_gru_100_gru_cell_100_kernel_m_read_readvariableopGsavev2_adam_gru_100_gru_cell_100_recurrent_kernel_m_read_readvariableop;savev2_adam_gru_100_gru_cell_100_bias_m_read_readvariableop2savev2_adam_dense_200_kernel_v_read_readvariableop0savev2_adam_dense_200_bias_v_read_readvariableop2savev2_adam_dense_201_kernel_v_read_readvariableop0savev2_adam_dense_201_bias_v_read_readvariableop=savev2_adam_gru_100_gru_cell_100_kernel_v_read_readvariableopGsavev2_adam_gru_100_gru_cell_100_recurrent_kernel_v_read_readvariableop;savev2_adam_gru_100_gru_cell_100_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?: :	?d:d:d:: : : : : :	?:
??:?: : :	?d:d:d::	?:
??:?:	?d:d:d::	?:
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
:	?:&"
 
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
:	?:&"
 
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
:	?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:

_output_shapes
: 
?*
?
I__inference_gru_cell_100_layer_call_and_return_conditional_losses_4940054

inputs
states_01
matmul_readvariableop_resource:	?.
biasadd_readvariableop_resource:	?+
readvariableop_resource:
??
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?ReadVariableOp?ReadVariableOp_1?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
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
-:?????????:??????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0
?	
?
0__inference_sequential_100_layer_call_fn_4938826

inputs
unknown:	?
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
GPU 2J 8? *T
fORM
K__inference_sequential_100_layer_call_and_return_conditional_losses_49384302
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
?i
?
D__inference_gru_100_layer_call_and_return_conditional_losses_4938388

inputs>
+gru_cell_100_matmul_readvariableop_resource:	?;
,gru_cell_100_biasadd_readvariableop_resource:	?8
$gru_cell_100_readvariableop_resource:
??
identity??#gru_cell_100/BiasAdd/ReadVariableOp?"gru_cell_100/MatMul/ReadVariableOp?gru_cell_100/ReadVariableOp?gru_cell_100/ReadVariableOp_1?whileD
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
"gru_cell_100/MatMul/ReadVariableOpReadVariableOp+gru_cell_100_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02$
"gru_cell_100/MatMul/ReadVariableOp?
gru_cell_100/MatMulMatMulstrided_slice_2:output:0*gru_cell_100/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/MatMul?
#gru_cell_100/BiasAdd/ReadVariableOpReadVariableOp,gru_cell_100_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#gru_cell_100/BiasAdd/ReadVariableOp?
gru_cell_100/BiasAddBiasAddgru_cell_100/MatMul:product:0+gru_cell_100/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/BiasAdd?
gru_cell_100/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_100/split/split_dim?
gru_cell_100/splitSplit%gru_cell_100/split/split_dim:output:0gru_cell_100/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
gru_cell_100/split?
gru_cell_100/ReadVariableOpReadVariableOp$gru_cell_100_readvariableop_resource* 
_output_shapes
:
??*
dtype02
gru_cell_100/ReadVariableOp?
 gru_cell_100/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 gru_cell_100/strided_slice/stack?
"gru_cell_100/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2$
"gru_cell_100/strided_slice/stack_1?
"gru_cell_100/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_100/strided_slice/stack_2?
gru_cell_100/strided_sliceStridedSlice#gru_cell_100/ReadVariableOp:value:0)gru_cell_100/strided_slice/stack:output:0+gru_cell_100/strided_slice/stack_1:output:0+gru_cell_100/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
gru_cell_100/strided_slice?
gru_cell_100/MatMul_1MatMulzeros:output:0#gru_cell_100/strided_slice:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/MatMul_1}
gru_cell_100/ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2
gru_cell_100/Const?
gru_cell_100/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2 
gru_cell_100/split_1/split_dim?
gru_cell_100/split_1SplitVgru_cell_100/MatMul_1:product:0gru_cell_100/Const:output:0'gru_cell_100/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:??????????:??????????:????????? *
	num_split2
gru_cell_100/split_1?
gru_cell_100/addAddV2gru_cell_100/split:output:0gru_cell_100/split_1:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/add?
gru_cell_100/SigmoidSigmoidgru_cell_100/add:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/Sigmoid?
gru_cell_100/add_1AddV2gru_cell_100/split:output:1gru_cell_100/split_1:output:1*
T0*(
_output_shapes
:??????????2
gru_cell_100/add_1?
gru_cell_100/Sigmoid_1Sigmoidgru_cell_100/add_1:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/Sigmoid_1?
gru_cell_100/mulMulgru_cell_100/Sigmoid_1:y:0zeros:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/mul?
gru_cell_100/ReadVariableOp_1ReadVariableOp$gru_cell_100_readvariableop_resource* 
_output_shapes
:
??*
dtype02
gru_cell_100/ReadVariableOp_1?
"gru_cell_100/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2$
"gru_cell_100/strided_slice_1/stack?
$gru_cell_100/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$gru_cell_100/strided_slice_1/stack_1?
$gru_cell_100/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$gru_cell_100/strided_slice_1/stack_2?
gru_cell_100/strided_slice_1StridedSlice%gru_cell_100/ReadVariableOp_1:value:0+gru_cell_100/strided_slice_1/stack:output:0-gru_cell_100/strided_slice_1/stack_1:output:0-gru_cell_100/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
gru_cell_100/strided_slice_1?
gru_cell_100/MatMul_2MatMulgru_cell_100/mul:z:0%gru_cell_100/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/MatMul_2?
gru_cell_100/add_2AddV2gru_cell_100/split:output:2gru_cell_100/MatMul_2:product:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/add_2y
gru_cell_100/ReluRelugru_cell_100/add_2:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/Relu?
gru_cell_100/mul_1Mulgru_cell_100/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/mul_1m
gru_cell_100/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_cell_100/sub/x?
gru_cell_100/subSubgru_cell_100/sub/x:output:0gru_cell_100/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/sub?
gru_cell_100/mul_2Mulgru_cell_100/sub:z:0gru_cell_100/Relu:activations:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/mul_2?
gru_cell_100/add_3AddV2gru_cell_100/mul_1:z:0gru_cell_100/mul_2:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_100/add_3?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+gru_cell_100_matmul_readvariableop_resource,gru_cell_100_biasadd_readvariableop_resource$gru_cell_100_readvariableop_resource*
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
while_body_4938292*
condR
while_cond_4938291*9
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
IdentityIdentitystrided_slice_3:output:0$^gru_cell_100/BiasAdd/ReadVariableOp#^gru_cell_100/MatMul/ReadVariableOp^gru_cell_100/ReadVariableOp^gru_cell_100/ReadVariableOp_1^while*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2J
#gru_cell_100/BiasAdd/ReadVariableOp#gru_cell_100/BiasAdd/ReadVariableOp2H
"gru_cell_100/MatMul/ReadVariableOp"gru_cell_100/MatMul/ReadVariableOp2:
gru_cell_100/ReadVariableOpgru_cell_100/ReadVariableOp2>
gru_cell_100/ReadVariableOp_1gru_cell_100/ReadVariableOp_12
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_4938291
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_4938291___redundant_placeholder05
1while_while_cond_4938291___redundant_placeholder15
1while_while_cond_4938291___redundant_placeholder25
1while_while_cond_4938291___redundant_placeholder3
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
+__inference_dense_201_layer_call_fn_4939970

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
F__inference_dense_201_layer_call_and_return_conditional_losses_49384232
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

?
F__inference_dense_200_layer_call_and_return_conditional_losses_4938407

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
?#
?
while_body_4937709
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_gru_cell_100_4937731_0:	?+
while_gru_cell_100_4937733_0:	?0
while_gru_cell_100_4937735_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_gru_cell_100_4937731:	?)
while_gru_cell_100_4937733:	?.
while_gru_cell_100_4937735:
????*while/gru_cell_100/StatefulPartitionedCall?
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
*while/gru_cell_100/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_gru_cell_100_4937731_0while_gru_cell_100_4937733_0while_gru_cell_100_4937735_0*
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
GPU 2J 8? *R
fMRK
I__inference_gru_cell_100_layer_call_and_return_conditional_losses_49376962,
*while/gru_cell_100/StatefulPartitionedCall?
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
while/add_1?
while/IdentityIdentitywhile/add_1:z:0+^while/gru_cell_100/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations+^while/gru_cell_100/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0+^while/gru_cell_100/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/gru_cell_100/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity3while/gru_cell_100/StatefulPartitionedCall:output:1+^while/gru_cell_100/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
while/Identity_4":
while_gru_cell_100_4937731while_gru_cell_100_4937731_0":
while_gru_cell_100_4937733while_gru_cell_100_4937733_0":
while_gru_cell_100_4937735while_gru_cell_100_4937735_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2X
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
:??????????:

_output_shapes
: :

_output_shapes
: 
?	
?
0__inference_sequential_100_layer_call_fn_4938738
gru_100_input
unknown:	?
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?d
	unknown_3:d
	unknown_4:d
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallgru_100_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
K__inference_sequential_100_layer_call_and_return_conditional_losses_49387022
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
_user_specified_namegru_100_input
?Y
?
while_body_4939845
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_gru_cell_100_matmul_readvariableop_resource_0:	?C
4while_gru_cell_100_biasadd_readvariableop_resource_0:	?@
,while_gru_cell_100_readvariableop_resource_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_gru_cell_100_matmul_readvariableop_resource:	?A
2while_gru_cell_100_biasadd_readvariableop_resource:	?>
*while_gru_cell_100_readvariableop_resource:
????)while/gru_cell_100/BiasAdd/ReadVariableOp?(while/gru_cell_100/MatMul/ReadVariableOp?!while/gru_cell_100/ReadVariableOp?#while/gru_cell_100/ReadVariableOp_1?
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
(while/gru_cell_100/MatMul/ReadVariableOpReadVariableOp3while_gru_cell_100_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02*
(while/gru_cell_100/MatMul/ReadVariableOp?
while/gru_cell_100/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/gru_cell_100/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/MatMul?
)while/gru_cell_100/BiasAdd/ReadVariableOpReadVariableOp4while_gru_cell_100_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/gru_cell_100/BiasAdd/ReadVariableOp?
while/gru_cell_100/BiasAddBiasAdd#while/gru_cell_100/MatMul:product:01while/gru_cell_100/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/BiasAdd?
"while/gru_cell_100/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"while/gru_cell_100/split/split_dim?
while/gru_cell_100/splitSplit+while/gru_cell_100/split/split_dim:output:0#while/gru_cell_100/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
while/gru_cell_100/split?
!while/gru_cell_100/ReadVariableOpReadVariableOp,while_gru_cell_100_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02#
!while/gru_cell_100/ReadVariableOp?
&while/gru_cell_100/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/gru_cell_100/strided_slice/stack?
(while/gru_cell_100/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2*
(while/gru_cell_100/strided_slice/stack_1?
(while/gru_cell_100/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_100/strided_slice/stack_2?
 while/gru_cell_100/strided_sliceStridedSlice)while/gru_cell_100/ReadVariableOp:value:0/while/gru_cell_100/strided_slice/stack:output:01while/gru_cell_100/strided_slice/stack_1:output:01while/gru_cell_100/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2"
 while/gru_cell_100/strided_slice?
while/gru_cell_100/MatMul_1MatMulwhile_placeholder_2)while/gru_cell_100/strided_slice:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/MatMul_1?
while/gru_cell_100/ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2
while/gru_cell_100/Const?
$while/gru_cell_100/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2&
$while/gru_cell_100/split_1/split_dim?
while/gru_cell_100/split_1SplitV%while/gru_cell_100/MatMul_1:product:0!while/gru_cell_100/Const:output:0-while/gru_cell_100/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:??????????:??????????:????????? *
	num_split2
while/gru_cell_100/split_1?
while/gru_cell_100/addAddV2!while/gru_cell_100/split:output:0#while/gru_cell_100/split_1:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/add?
while/gru_cell_100/SigmoidSigmoidwhile/gru_cell_100/add:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/Sigmoid?
while/gru_cell_100/add_1AddV2!while/gru_cell_100/split:output:1#while/gru_cell_100/split_1:output:1*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/add_1?
while/gru_cell_100/Sigmoid_1Sigmoidwhile/gru_cell_100/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/Sigmoid_1?
while/gru_cell_100/mulMul while/gru_cell_100/Sigmoid_1:y:0while_placeholder_2*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/mul?
#while/gru_cell_100/ReadVariableOp_1ReadVariableOp,while_gru_cell_100_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02%
#while/gru_cell_100/ReadVariableOp_1?
(while/gru_cell_100/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2*
(while/gru_cell_100/strided_slice_1/stack?
*while/gru_cell_100/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/gru_cell_100/strided_slice_1/stack_1?
*while/gru_cell_100/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/gru_cell_100/strided_slice_1/stack_2?
"while/gru_cell_100/strided_slice_1StridedSlice+while/gru_cell_100/ReadVariableOp_1:value:01while/gru_cell_100/strided_slice_1/stack:output:03while/gru_cell_100/strided_slice_1/stack_1:output:03while/gru_cell_100/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2$
"while/gru_cell_100/strided_slice_1?
while/gru_cell_100/MatMul_2MatMulwhile/gru_cell_100/mul:z:0+while/gru_cell_100/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/MatMul_2?
while/gru_cell_100/add_2AddV2!while/gru_cell_100/split:output:2%while/gru_cell_100/MatMul_2:product:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/add_2?
while/gru_cell_100/ReluReluwhile/gru_cell_100/add_2:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/Relu?
while/gru_cell_100/mul_1Mulwhile/gru_cell_100/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/mul_1y
while/gru_cell_100/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/gru_cell_100/sub/x?
while/gru_cell_100/subSub!while/gru_cell_100/sub/x:output:0while/gru_cell_100/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/sub?
while/gru_cell_100/mul_2Mulwhile/gru_cell_100/sub:z:0%while/gru_cell_100/Relu:activations:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/mul_2?
while/gru_cell_100/add_3AddV2while/gru_cell_100/mul_1:z:0while/gru_cell_100/mul_2:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/add_3?
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
while/add_1?
while/IdentityIdentitywhile/add_1:z:0*^while/gru_cell_100/BiasAdd/ReadVariableOp)^while/gru_cell_100/MatMul/ReadVariableOp"^while/gru_cell_100/ReadVariableOp$^while/gru_cell_100/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations*^while/gru_cell_100/BiasAdd/ReadVariableOp)^while/gru_cell_100/MatMul/ReadVariableOp"^while/gru_cell_100/ReadVariableOp$^while/gru_cell_100/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0*^while/gru_cell_100/BiasAdd/ReadVariableOp)^while/gru_cell_100/MatMul/ReadVariableOp"^while/gru_cell_100/ReadVariableOp$^while/gru_cell_100/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/gru_cell_100/BiasAdd/ReadVariableOp)^while/gru_cell_100/MatMul/ReadVariableOp"^while/gru_cell_100/ReadVariableOp$^while/gru_cell_100/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/gru_cell_100/add_3:z:0*^while/gru_cell_100/BiasAdd/ReadVariableOp)^while/gru_cell_100/MatMul/ReadVariableOp"^while/gru_cell_100/ReadVariableOp$^while/gru_cell_100/ReadVariableOp_1*
T0*(
_output_shapes
:??????????2
while/Identity_4"j
2while_gru_cell_100_biasadd_readvariableop_resource4while_gru_cell_100_biasadd_readvariableop_resource_0"h
1while_gru_cell_100_matmul_readvariableop_resource3while_gru_cell_100_matmul_readvariableop_resource_0"Z
*while_gru_cell_100_readvariableop_resource,while_gru_cell_100_readvariableop_resource_0")
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
:??????????:

_output_shapes
: :

_output_shapes
: 
?
?
K__inference_sequential_100_layer_call_and_return_conditional_losses_4938780
gru_100_input"
gru_100_4938762:	?
gru_100_4938764:	?#
gru_100_4938766:
??$
dense_200_4938769:	?d
dense_200_4938771:d#
dense_201_4938774:d
dense_201_4938776:
identity??!dense_200/StatefulPartitionedCall?!dense_201/StatefulPartitionedCall?gru_100/StatefulPartitionedCall?
gru_100/StatefulPartitionedCallStatefulPartitionedCallgru_100_inputgru_100_4938762gru_100_4938764gru_100_4938766*
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
GPU 2J 8? *M
fHRF
D__inference_gru_100_layer_call_and_return_conditional_losses_49386512!
gru_100/StatefulPartitionedCall?
!dense_200/StatefulPartitionedCallStatefulPartitionedCall(gru_100/StatefulPartitionedCall:output:0dense_200_4938769dense_200_4938771*
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
F__inference_dense_200_layer_call_and_return_conditional_losses_49384072#
!dense_200/StatefulPartitionedCall?
!dense_201/StatefulPartitionedCallStatefulPartitionedCall*dense_200/StatefulPartitionedCall:output:0dense_201_4938774dense_201_4938776*
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
F__inference_dense_201_layer_call_and_return_conditional_losses_49384232#
!dense_201/StatefulPartitionedCall?
IdentityIdentity*dense_201/StatefulPartitionedCall:output:0"^dense_200/StatefulPartitionedCall"^dense_201/StatefulPartitionedCall ^gru_100/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2F
!dense_200/StatefulPartitionedCall!dense_200/StatefulPartitionedCall2F
!dense_201/StatefulPartitionedCall!dense_201/StatefulPartitionedCall2B
gru_100/StatefulPartitionedCallgru_100/StatefulPartitionedCall:Z V
+
_output_shapes
:?????????
'
_user_specified_namegru_100_input

?
K__inference_sequential_100_layer_call_and_return_conditional_losses_4939213

inputsF
3gru_100_gru_cell_100_matmul_readvariableop_resource:	?C
4gru_100_gru_cell_100_biasadd_readvariableop_resource:	?@
,gru_100_gru_cell_100_readvariableop_resource:
??;
(dense_200_matmul_readvariableop_resource:	?d7
)dense_200_biasadd_readvariableop_resource:d:
(dense_201_matmul_readvariableop_resource:d7
)dense_201_biasadd_readvariableop_resource:
identity?? dense_200/BiasAdd/ReadVariableOp?dense_200/MatMul/ReadVariableOp? dense_201/BiasAdd/ReadVariableOp?dense_201/MatMul/ReadVariableOp?+gru_100/gru_cell_100/BiasAdd/ReadVariableOp?*gru_100/gru_cell_100/MatMul/ReadVariableOp?#gru_100/gru_cell_100/ReadVariableOp?%gru_100/gru_cell_100/ReadVariableOp_1?gru_100/whileT
gru_100/ShapeShapeinputs*
T0*
_output_shapes
:2
gru_100/Shape?
gru_100/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_100/strided_slice/stack?
gru_100/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_100/strided_slice/stack_1?
gru_100/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_100/strided_slice/stack_2?
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
B :?2
gru_100/zeros/mul/y?
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
B :?2
gru_100/zeros/Less/y?
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
B :?2
gru_100/zeros/packed/1?
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
gru_100/zeros/Const?
gru_100/zerosFillgru_100/zeros/packed:output:0gru_100/zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
gru_100/zeros?
gru_100/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_100/transpose/perm?
gru_100/transpose	Transposeinputsgru_100/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2
gru_100/transposeg
gru_100/Shape_1Shapegru_100/transpose:y:0*
T0*
_output_shapes
:2
gru_100/Shape_1?
gru_100/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_100/strided_slice_1/stack?
gru_100/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
gru_100/strided_slice_1/stack_1?
gru_100/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
gru_100/strided_slice_1/stack_2?
gru_100/strided_slice_1StridedSlicegru_100/Shape_1:output:0&gru_100/strided_slice_1/stack:output:0(gru_100/strided_slice_1/stack_1:output:0(gru_100/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru_100/strided_slice_1?
#gru_100/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2%
#gru_100/TensorArrayV2/element_shape?
gru_100/TensorArrayV2TensorListReserve,gru_100/TensorArrayV2/element_shape:output:0 gru_100/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_100/TensorArrayV2?
=gru_100/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2?
=gru_100/TensorArrayUnstack/TensorListFromTensor/element_shape?
/gru_100/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorgru_100/transpose:y:0Fgru_100/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/gru_100/TensorArrayUnstack/TensorListFromTensor?
gru_100/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_100/strided_slice_2/stack?
gru_100/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
gru_100/strided_slice_2/stack_1?
gru_100/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
gru_100/strided_slice_2/stack_2?
gru_100/strided_slice_2StridedSlicegru_100/transpose:y:0&gru_100/strided_slice_2/stack:output:0(gru_100/strided_slice_2/stack_1:output:0(gru_100/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
gru_100/strided_slice_2?
*gru_100/gru_cell_100/MatMul/ReadVariableOpReadVariableOp3gru_100_gru_cell_100_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02,
*gru_100/gru_cell_100/MatMul/ReadVariableOp?
gru_100/gru_cell_100/MatMulMatMul gru_100/strided_slice_2:output:02gru_100/gru_cell_100/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_100/gru_cell_100/MatMul?
+gru_100/gru_cell_100/BiasAdd/ReadVariableOpReadVariableOp4gru_100_gru_cell_100_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+gru_100/gru_cell_100/BiasAdd/ReadVariableOp?
gru_100/gru_cell_100/BiasAddBiasAdd%gru_100/gru_cell_100/MatMul:product:03gru_100/gru_cell_100/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_100/gru_cell_100/BiasAdd?
$gru_100/gru_cell_100/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2&
$gru_100/gru_cell_100/split/split_dim?
gru_100/gru_cell_100/splitSplit-gru_100/gru_cell_100/split/split_dim:output:0%gru_100/gru_cell_100/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
gru_100/gru_cell_100/split?
#gru_100/gru_cell_100/ReadVariableOpReadVariableOp,gru_100_gru_cell_100_readvariableop_resource* 
_output_shapes
:
??*
dtype02%
#gru_100/gru_cell_100/ReadVariableOp?
(gru_100/gru_cell_100/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(gru_100/gru_cell_100/strided_slice/stack?
*gru_100/gru_cell_100/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2,
*gru_100/gru_cell_100/strided_slice/stack_1?
*gru_100/gru_cell_100/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*gru_100/gru_cell_100/strided_slice/stack_2?
"gru_100/gru_cell_100/strided_sliceStridedSlice+gru_100/gru_cell_100/ReadVariableOp:value:01gru_100/gru_cell_100/strided_slice/stack:output:03gru_100/gru_cell_100/strided_slice/stack_1:output:03gru_100/gru_cell_100/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2$
"gru_100/gru_cell_100/strided_slice?
gru_100/gru_cell_100/MatMul_1MatMulgru_100/zeros:output:0+gru_100/gru_cell_100/strided_slice:output:0*
T0*(
_output_shapes
:??????????2
gru_100/gru_cell_100/MatMul_1?
gru_100/gru_cell_100/ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2
gru_100/gru_cell_100/Const?
&gru_100/gru_cell_100/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2(
&gru_100/gru_cell_100/split_1/split_dim?
gru_100/gru_cell_100/split_1SplitV'gru_100/gru_cell_100/MatMul_1:product:0#gru_100/gru_cell_100/Const:output:0/gru_100/gru_cell_100/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:??????????:??????????:????????? *
	num_split2
gru_100/gru_cell_100/split_1?
gru_100/gru_cell_100/addAddV2#gru_100/gru_cell_100/split:output:0%gru_100/gru_cell_100/split_1:output:0*
T0*(
_output_shapes
:??????????2
gru_100/gru_cell_100/add?
gru_100/gru_cell_100/SigmoidSigmoidgru_100/gru_cell_100/add:z:0*
T0*(
_output_shapes
:??????????2
gru_100/gru_cell_100/Sigmoid?
gru_100/gru_cell_100/add_1AddV2#gru_100/gru_cell_100/split:output:1%gru_100/gru_cell_100/split_1:output:1*
T0*(
_output_shapes
:??????????2
gru_100/gru_cell_100/add_1?
gru_100/gru_cell_100/Sigmoid_1Sigmoidgru_100/gru_cell_100/add_1:z:0*
T0*(
_output_shapes
:??????????2 
gru_100/gru_cell_100/Sigmoid_1?
gru_100/gru_cell_100/mulMul"gru_100/gru_cell_100/Sigmoid_1:y:0gru_100/zeros:output:0*
T0*(
_output_shapes
:??????????2
gru_100/gru_cell_100/mul?
%gru_100/gru_cell_100/ReadVariableOp_1ReadVariableOp,gru_100_gru_cell_100_readvariableop_resource* 
_output_shapes
:
??*
dtype02'
%gru_100/gru_cell_100/ReadVariableOp_1?
*gru_100/gru_cell_100/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2,
*gru_100/gru_cell_100/strided_slice_1/stack?
,gru_100/gru_cell_100/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2.
,gru_100/gru_cell_100/strided_slice_1/stack_1?
,gru_100/gru_cell_100/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,gru_100/gru_cell_100/strided_slice_1/stack_2?
$gru_100/gru_cell_100/strided_slice_1StridedSlice-gru_100/gru_cell_100/ReadVariableOp_1:value:03gru_100/gru_cell_100/strided_slice_1/stack:output:05gru_100/gru_cell_100/strided_slice_1/stack_1:output:05gru_100/gru_cell_100/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2&
$gru_100/gru_cell_100/strided_slice_1?
gru_100/gru_cell_100/MatMul_2MatMulgru_100/gru_cell_100/mul:z:0-gru_100/gru_cell_100/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2
gru_100/gru_cell_100/MatMul_2?
gru_100/gru_cell_100/add_2AddV2#gru_100/gru_cell_100/split:output:2'gru_100/gru_cell_100/MatMul_2:product:0*
T0*(
_output_shapes
:??????????2
gru_100/gru_cell_100/add_2?
gru_100/gru_cell_100/ReluRelugru_100/gru_cell_100/add_2:z:0*
T0*(
_output_shapes
:??????????2
gru_100/gru_cell_100/Relu?
gru_100/gru_cell_100/mul_1Mul gru_100/gru_cell_100/Sigmoid:y:0gru_100/zeros:output:0*
T0*(
_output_shapes
:??????????2
gru_100/gru_cell_100/mul_1}
gru_100/gru_cell_100/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_100/gru_cell_100/sub/x?
gru_100/gru_cell_100/subSub#gru_100/gru_cell_100/sub/x:output:0 gru_100/gru_cell_100/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
gru_100/gru_cell_100/sub?
gru_100/gru_cell_100/mul_2Mulgru_100/gru_cell_100/sub:z:0'gru_100/gru_cell_100/Relu:activations:0*
T0*(
_output_shapes
:??????????2
gru_100/gru_cell_100/mul_2?
gru_100/gru_cell_100/add_3AddV2gru_100/gru_cell_100/mul_1:z:0gru_100/gru_cell_100/mul_2:z:0*
T0*(
_output_shapes
:??????????2
gru_100/gru_cell_100/add_3?
%gru_100/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2'
%gru_100/TensorArrayV2_1/element_shape?
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
gru_100/time?
 gru_100/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2"
 gru_100/while/maximum_iterationsz
gru_100/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
gru_100/while/loop_counter?
gru_100/whileWhile#gru_100/while/loop_counter:output:0)gru_100/while/maximum_iterations:output:0gru_100/time:output:0 gru_100/TensorArrayV2_1:handle:0gru_100/zeros:output:0 gru_100/strided_slice_1:output:0?gru_100/TensorArrayUnstack/TensorListFromTensor:output_handle:03gru_100_gru_cell_100_matmul_readvariableop_resource4gru_100_gru_cell_100_biasadd_readvariableop_resource,gru_100_gru_cell_100_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :??????????: : : : : *%
_read_only_resource_inputs
	*&
bodyR
gru_100_while_body_4939104*&
condR
gru_100_while_cond_4939103*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations 2
gru_100/while?
8gru_100/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2:
8gru_100/TensorArrayV2Stack/TensorListStack/element_shape?
*gru_100/TensorArrayV2Stack/TensorListStackTensorListStackgru_100/while:output:3Agru_100/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02,
*gru_100/TensorArrayV2Stack/TensorListStack?
gru_100/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
gru_100/strided_slice_3/stack?
gru_100/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
gru_100/strided_slice_3/stack_1?
gru_100/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
gru_100/strided_slice_3/stack_2?
gru_100/strided_slice_3StridedSlice3gru_100/TensorArrayV2Stack/TensorListStack:tensor:0&gru_100/strided_slice_3/stack:output:0(gru_100/strided_slice_3/stack_1:output:0(gru_100/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
gru_100/strided_slice_3?
gru_100/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_100/transpose_1/perm?
gru_100/transpose_1	Transpose3gru_100/TensorArrayV2Stack/TensorListStack:tensor:0!gru_100/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
gru_100/transpose_1v
gru_100/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_100/runtime?
dense_200/MatMul/ReadVariableOpReadVariableOp(dense_200_matmul_readvariableop_resource*
_output_shapes
:	?d*
dtype02!
dense_200/MatMul/ReadVariableOp?
dense_200/MatMulMatMul gru_100/strided_slice_3:output:0'dense_200/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_200/MatMul?
 dense_200/BiasAdd/ReadVariableOpReadVariableOp)dense_200_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02"
 dense_200/BiasAdd/ReadVariableOp?
dense_200/BiasAddBiasAdddense_200/MatMul:product:0(dense_200/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_200/BiasAddv
dense_200/ReluReludense_200/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
dense_200/Relu?
dense_201/MatMul/ReadVariableOpReadVariableOp(dense_201_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02!
dense_201/MatMul/ReadVariableOp?
dense_201/MatMulMatMuldense_200/Relu:activations:0'dense_201/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_201/MatMul?
 dense_201/BiasAdd/ReadVariableOpReadVariableOp)dense_201_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_201/BiasAdd/ReadVariableOp?
dense_201/BiasAddBiasAdddense_201/MatMul:product:0(dense_201/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_201/BiasAdd?
IdentityIdentitydense_201/BiasAdd:output:0!^dense_200/BiasAdd/ReadVariableOp ^dense_200/MatMul/ReadVariableOp!^dense_201/BiasAdd/ReadVariableOp ^dense_201/MatMul/ReadVariableOp,^gru_100/gru_cell_100/BiasAdd/ReadVariableOp+^gru_100/gru_cell_100/MatMul/ReadVariableOp$^gru_100/gru_cell_100/ReadVariableOp&^gru_100/gru_cell_100/ReadVariableOp_1^gru_100/while*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2D
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
:?????????
 
_user_specified_nameinputs
?
?
+__inference_dense_200_layer_call_fn_4939950

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
F__inference_dense_200_layer_call_and_return_conditional_losses_49384072
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
?*
?
I__inference_gru_cell_100_layer_call_and_return_conditional_losses_4940100

inputs
states_01
matmul_readvariableop_resource:	?.
biasadd_readvariableop_resource:	?+
readvariableop_resource:
??
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?ReadVariableOp?ReadVariableOp_1?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
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
-:?????????:??????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:RN
(
_output_shapes
:??????????
"
_user_specified_name
states/0
?*
?
I__inference_gru_cell_100_layer_call_and_return_conditional_losses_4937846

inputs

states1
matmul_readvariableop_resource:	?.
biasadd_readvariableop_resource:	?+
readvariableop_resource:
??
identity

identity_1??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?ReadVariableOp?ReadVariableOp_1?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
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
-:?????????:??????????: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_namestates
?Y
?
while_body_4939674
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_gru_cell_100_matmul_readvariableop_resource_0:	?C
4while_gru_cell_100_biasadd_readvariableop_resource_0:	?@
,while_gru_cell_100_readvariableop_resource_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_gru_cell_100_matmul_readvariableop_resource:	?A
2while_gru_cell_100_biasadd_readvariableop_resource:	?>
*while_gru_cell_100_readvariableop_resource:
????)while/gru_cell_100/BiasAdd/ReadVariableOp?(while/gru_cell_100/MatMul/ReadVariableOp?!while/gru_cell_100/ReadVariableOp?#while/gru_cell_100/ReadVariableOp_1?
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
(while/gru_cell_100/MatMul/ReadVariableOpReadVariableOp3while_gru_cell_100_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02*
(while/gru_cell_100/MatMul/ReadVariableOp?
while/gru_cell_100/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/gru_cell_100/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/MatMul?
)while/gru_cell_100/BiasAdd/ReadVariableOpReadVariableOp4while_gru_cell_100_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)while/gru_cell_100/BiasAdd/ReadVariableOp?
while/gru_cell_100/BiasAddBiasAdd#while/gru_cell_100/MatMul:product:01while/gru_cell_100/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/BiasAdd?
"while/gru_cell_100/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"while/gru_cell_100/split/split_dim?
while/gru_cell_100/splitSplit+while/gru_cell_100/split/split_dim:output:0#while/gru_cell_100/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
while/gru_cell_100/split?
!while/gru_cell_100/ReadVariableOpReadVariableOp,while_gru_cell_100_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02#
!while/gru_cell_100/ReadVariableOp?
&while/gru_cell_100/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/gru_cell_100/strided_slice/stack?
(while/gru_cell_100/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2*
(while/gru_cell_100/strided_slice/stack_1?
(while/gru_cell_100/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_100/strided_slice/stack_2?
 while/gru_cell_100/strided_sliceStridedSlice)while/gru_cell_100/ReadVariableOp:value:0/while/gru_cell_100/strided_slice/stack:output:01while/gru_cell_100/strided_slice/stack_1:output:01while/gru_cell_100/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2"
 while/gru_cell_100/strided_slice?
while/gru_cell_100/MatMul_1MatMulwhile_placeholder_2)while/gru_cell_100/strided_slice:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/MatMul_1?
while/gru_cell_100/ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2
while/gru_cell_100/Const?
$while/gru_cell_100/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2&
$while/gru_cell_100/split_1/split_dim?
while/gru_cell_100/split_1SplitV%while/gru_cell_100/MatMul_1:product:0!while/gru_cell_100/Const:output:0-while/gru_cell_100/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:??????????:??????????:????????? *
	num_split2
while/gru_cell_100/split_1?
while/gru_cell_100/addAddV2!while/gru_cell_100/split:output:0#while/gru_cell_100/split_1:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/add?
while/gru_cell_100/SigmoidSigmoidwhile/gru_cell_100/add:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/Sigmoid?
while/gru_cell_100/add_1AddV2!while/gru_cell_100/split:output:1#while/gru_cell_100/split_1:output:1*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/add_1?
while/gru_cell_100/Sigmoid_1Sigmoidwhile/gru_cell_100/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/Sigmoid_1?
while/gru_cell_100/mulMul while/gru_cell_100/Sigmoid_1:y:0while_placeholder_2*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/mul?
#while/gru_cell_100/ReadVariableOp_1ReadVariableOp,while_gru_cell_100_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02%
#while/gru_cell_100/ReadVariableOp_1?
(while/gru_cell_100/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2*
(while/gru_cell_100/strided_slice_1/stack?
*while/gru_cell_100/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/gru_cell_100/strided_slice_1/stack_1?
*while/gru_cell_100/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/gru_cell_100/strided_slice_1/stack_2?
"while/gru_cell_100/strided_slice_1StridedSlice+while/gru_cell_100/ReadVariableOp_1:value:01while/gru_cell_100/strided_slice_1/stack:output:03while/gru_cell_100/strided_slice_1/stack_1:output:03while/gru_cell_100/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2$
"while/gru_cell_100/strided_slice_1?
while/gru_cell_100/MatMul_2MatMulwhile/gru_cell_100/mul:z:0+while/gru_cell_100/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/MatMul_2?
while/gru_cell_100/add_2AddV2!while/gru_cell_100/split:output:2%while/gru_cell_100/MatMul_2:product:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/add_2?
while/gru_cell_100/ReluReluwhile/gru_cell_100/add_2:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/Relu?
while/gru_cell_100/mul_1Mulwhile/gru_cell_100/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/mul_1y
while/gru_cell_100/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/gru_cell_100/sub/x?
while/gru_cell_100/subSub!while/gru_cell_100/sub/x:output:0while/gru_cell_100/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/sub?
while/gru_cell_100/mul_2Mulwhile/gru_cell_100/sub:z:0%while/gru_cell_100/Relu:activations:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/mul_2?
while/gru_cell_100/add_3AddV2while/gru_cell_100/mul_1:z:0while/gru_cell_100/mul_2:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_100/add_3?
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
while/add_1?
while/IdentityIdentitywhile/add_1:z:0*^while/gru_cell_100/BiasAdd/ReadVariableOp)^while/gru_cell_100/MatMul/ReadVariableOp"^while/gru_cell_100/ReadVariableOp$^while/gru_cell_100/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations*^while/gru_cell_100/BiasAdd/ReadVariableOp)^while/gru_cell_100/MatMul/ReadVariableOp"^while/gru_cell_100/ReadVariableOp$^while/gru_cell_100/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0*^while/gru_cell_100/BiasAdd/ReadVariableOp)^while/gru_cell_100/MatMul/ReadVariableOp"^while/gru_cell_100/ReadVariableOp$^while/gru_cell_100/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/gru_cell_100/BiasAdd/ReadVariableOp)^while/gru_cell_100/MatMul/ReadVariableOp"^while/gru_cell_100/ReadVariableOp$^while/gru_cell_100/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/gru_cell_100/add_3:z:0*^while/gru_cell_100/BiasAdd/ReadVariableOp)^while/gru_cell_100/MatMul/ReadVariableOp"^while/gru_cell_100/ReadVariableOp$^while/gru_cell_100/ReadVariableOp_1*
T0*(
_output_shapes
:??????????2
while/Identity_4"j
2while_gru_cell_100_biasadd_readvariableop_resource4while_gru_cell_100_biasadd_readvariableop_resource_0"h
1while_gru_cell_100_matmul_readvariableop_resource3while_gru_cell_100_matmul_readvariableop_resource_0"Z
*while_gru_cell_100_readvariableop_resource,while_gru_cell_100_readvariableop_resource_0")
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
:??????????:

_output_shapes
: :

_output_shapes
: 
?

?
.__inference_gru_cell_100_layer_call_fn_4939994

inputs
states_0
unknown:	?
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
GPU 2J 8? *R
fMRK
I__inference_gru_cell_100_layer_call_and_return_conditional_losses_49376962
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
-:?????????:??????????: : : 22
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
states/0"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
K
gru_100_input:
serving_default_gru_100_input:0?????????=
	dense_2010
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
	variables
regularization_losses
	keras_api
	
signatures
U__call__
*V&call_and_return_all_conditional_losses
W_default_save_signature"?*
_tf_keras_sequential?*{"name": "sequential_100", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_100", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "gru_100_input"}}, {"class_name": "GRU", "config": {"name": "gru_100", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 1]}, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 200, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2, "reset_after": false}}, {"class_name": "Dense", "config": {"name": "dense_200", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_201", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 12, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 1]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 13}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 7, 1]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 7, 1]}, "float32", "gru_100_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_100", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "gru_100_input"}, "shared_object_id": 0}, {"class_name": "GRU", "config": {"name": "gru_100", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 1]}, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 200, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2, "reset_after": false}, "shared_object_id": 5}, {"class_name": "Dense", "config": {"name": "dense_200", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 8}, {"class_name": "Dense", "config": {"name": "dense_201", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 11}]}}, "training_config": {"loss": "mse", "metrics": null, "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?

cell

state_spec
trainable_variables
	variables
regularization_losses
	keras_api
X__call__
*Y&call_and_return_all_conditional_losses"?
_tf_keras_rnn_layer?{"name": "gru_100", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 1]}, "stateful": false, "must_restore_from_config": false, "class_name": "GRU", "config": {"name": "gru_100", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 1]}, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 200, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2, "reset_after": false}, "shared_object_id": 5, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 1]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 13}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 7, 1]}}
?

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
Z__call__
*[&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_200", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_200", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 8, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 200}}, "shared_object_id": 14}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 200]}}
?

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
\__call__
*]&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_201", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_201", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 11, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 100}}, "shared_object_id": 15}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 100]}}
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
?
$non_trainable_variables
%layer_metrics
trainable_variables

&layers
	variables
'layer_regularization_losses
regularization_losses
(metrics
U__call__
W_default_save_signature
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
)trainable_variables
*regularization_losses
+	variables
,	keras_api
___call__
*`&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "gru_cell_100", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "GRUCell", "config": {"name": "gru_cell_100", "trainable": true, "dtype": "float32", "units": 200, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2, "reset_after": false}, "shared_object_id": 4}
 "
trackable_list_wrapper
5
!0
"1
#2"
trackable_list_wrapper
5
!0
"1
#2"
trackable_list_wrapper
 "
trackable_list_wrapper
?
-non_trainable_variables
.layer_metrics
trainable_variables

/layers
	variables
0layer_regularization_losses
regularization_losses

1states
2metrics
X__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses"
_generic_user_object
#:!	?d2dense_200/kernel
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
?
3non_trainable_variables
4layer_regularization_losses
5layer_metrics
trainable_variables
regularization_losses

6layers
	variables
7metrics
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses"
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
?
8non_trainable_variables
9layer_regularization_losses
:layer_metrics
trainable_variables
regularization_losses

;layers
	variables
<metrics
\__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
.:,	?2gru_100/gru_cell_100/kernel
9:7
??2%gru_100/gru_cell_100/recurrent_kernel
(:&?2gru_100/gru_cell_100/bias
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
=0"
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
?layer_regularization_losses
@layer_metrics
)trainable_variables
*regularization_losses

Alayers
+	variables
Bmetrics
___call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses"
_generic_user_object
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
(:&	?d2Adam/dense_200/kernel/m
!:d2Adam/dense_200/bias/m
':%d2Adam/dense_201/kernel/m
!:2Adam/dense_201/bias/m
3:1	?2"Adam/gru_100/gru_cell_100/kernel/m
>:<
??2,Adam/gru_100/gru_cell_100/recurrent_kernel/m
-:+?2 Adam/gru_100/gru_cell_100/bias/m
(:&	?d2Adam/dense_200/kernel/v
!:d2Adam/dense_200/bias/v
':%d2Adam/dense_201/kernel/v
!:2Adam/dense_201/bias/v
3:1	?2"Adam/gru_100/gru_cell_100/kernel/v
>:<
??2,Adam/gru_100/gru_cell_100/recurrent_kernel/v
-:+?2 Adam/gru_100/gru_cell_100/bias/v
?2?
0__inference_sequential_100_layer_call_fn_4938447
0__inference_sequential_100_layer_call_fn_4938826
0__inference_sequential_100_layer_call_fn_4938845
0__inference_sequential_100_layer_call_fn_4938738?
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
K__inference_sequential_100_layer_call_and_return_conditional_losses_4939029
K__inference_sequential_100_layer_call_and_return_conditional_losses_4939213
K__inference_sequential_100_layer_call_and_return_conditional_losses_4938759
K__inference_sequential_100_layer_call_and_return_conditional_losses_4938780?
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
"__inference__wrapped_model_4937615?
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
gru_100_input?????????
?2?
)__inference_gru_100_layer_call_fn_4939224
)__inference_gru_100_layer_call_fn_4939235
)__inference_gru_100_layer_call_fn_4939246
)__inference_gru_100_layer_call_fn_4939257?
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
D__inference_gru_100_layer_call_and_return_conditional_losses_4939428
D__inference_gru_100_layer_call_and_return_conditional_losses_4939599
D__inference_gru_100_layer_call_and_return_conditional_losses_4939770
D__inference_gru_100_layer_call_and_return_conditional_losses_4939941?
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
+__inference_dense_200_layer_call_fn_4939950?
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
F__inference_dense_200_layer_call_and_return_conditional_losses_4939961?
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
+__inference_dense_201_layer_call_fn_4939970?
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
F__inference_dense_201_layer_call_and_return_conditional_losses_4939980?
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
%__inference_signature_wrapper_4938807gru_100_input"?
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
.__inference_gru_cell_100_layer_call_fn_4939994
.__inference_gru_cell_100_layer_call_fn_4940008?
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
I__inference_gru_cell_100_layer_call_and_return_conditional_losses_4940054
I__inference_gru_cell_100_layer_call_and_return_conditional_losses_4940100?
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
"__inference__wrapped_model_4937615|!#":?7
0?-
+?(
gru_100_input?????????
? "5?2
0
	dense_201#? 
	dense_201??????????
F__inference_dense_200_layer_call_and_return_conditional_losses_4939961]0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????d
? 
+__inference_dense_200_layer_call_fn_4939950P0?-
&?#
!?
inputs??????????
? "??????????d?
F__inference_dense_201_layer_call_and_return_conditional_losses_4939980\/?,
%?"
 ?
inputs?????????d
? "%?"
?
0?????????
? ~
+__inference_dense_201_layer_call_fn_4939970O/?,
%?"
 ?
inputs?????????d
? "???????????
D__inference_gru_100_layer_call_and_return_conditional_losses_4939428~!#"O?L
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
D__inference_gru_100_layer_call_and_return_conditional_losses_4939599~!#"O?L
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
D__inference_gru_100_layer_call_and_return_conditional_losses_4939770n!#"??<
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
D__inference_gru_100_layer_call_and_return_conditional_losses_4939941n!#"??<
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
)__inference_gru_100_layer_call_fn_4939224q!#"O?L
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
)__inference_gru_100_layer_call_fn_4939235q!#"O?L
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
)__inference_gru_100_layer_call_fn_4939246a!#"??<
5?2
$?!
inputs?????????

 
p 

 
? "????????????
)__inference_gru_100_layer_call_fn_4939257a!#"??<
5?2
$?!
inputs?????????

 
p

 
? "????????????
I__inference_gru_cell_100_layer_call_and_return_conditional_losses_4940054?!#"]?Z
S?P
 ?
inputs?????????
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
I__inference_gru_cell_100_layer_call_and_return_conditional_losses_4940100?!#"]?Z
S?P
 ?
inputs?????????
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
.__inference_gru_cell_100_layer_call_fn_4939994?!#"]?Z
S?P
 ?
inputs?????????
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
.__inference_gru_cell_100_layer_call_fn_4940008?!#"]?Z
S?P
 ?
inputs?????????
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
K__inference_sequential_100_layer_call_and_return_conditional_losses_4938759t!#"B??
8?5
+?(
gru_100_input?????????
p 

 
? "%?"
?
0?????????
? ?
K__inference_sequential_100_layer_call_and_return_conditional_losses_4938780t!#"B??
8?5
+?(
gru_100_input?????????
p

 
? "%?"
?
0?????????
? ?
K__inference_sequential_100_layer_call_and_return_conditional_losses_4939029m!#";?8
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
K__inference_sequential_100_layer_call_and_return_conditional_losses_4939213m!#";?8
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
0__inference_sequential_100_layer_call_fn_4938447g!#"B??
8?5
+?(
gru_100_input?????????
p 

 
? "???????????
0__inference_sequential_100_layer_call_fn_4938738g!#"B??
8?5
+?(
gru_100_input?????????
p

 
? "???????????
0__inference_sequential_100_layer_call_fn_4938826`!#";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
0__inference_sequential_100_layer_call_fn_4938845`!#";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_4938807?!#"K?H
? 
A?>
<
gru_100_input+?(
gru_100_input?????????"5?2
0
	dense_201#? 
	dense_201?????????