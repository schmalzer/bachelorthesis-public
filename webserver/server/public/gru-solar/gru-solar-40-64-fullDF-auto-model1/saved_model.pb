
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
"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718¹Ä
y
dense_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Èd*
shared_namedense_8/kernel
r
"dense_8/kernel/Read/ReadVariableOpReadVariableOpdense_8/kernel*
_output_shapes
:	Èd*
dtype0
p
dense_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*
shared_namedense_8/bias
i
 dense_8/bias/Read/ReadVariableOpReadVariableOpdense_8/bias*
_output_shapes
:d*
dtype0
x
dense_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*
shared_namedense_9/kernel
q
"dense_9/kernel/Read/ReadVariableOpReadVariableOpdense_9/kernel*
_output_shapes

:d*
dtype0
p
dense_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_9/bias
i
 dense_9/bias/Read/ReadVariableOpReadVariableOpdense_9/bias*
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

gru_4/gru_cell_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ø*(
shared_namegru_4/gru_cell_4/kernel

+gru_4/gru_cell_4/kernel/Read/ReadVariableOpReadVariableOpgru_4/gru_cell_4/kernel*
_output_shapes
:	Ø*
dtype0
 
!gru_4/gru_cell_4/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ÈØ*2
shared_name#!gru_4/gru_cell_4/recurrent_kernel

5gru_4/gru_cell_4/recurrent_kernel/Read/ReadVariableOpReadVariableOp!gru_4/gru_cell_4/recurrent_kernel* 
_output_shapes
:
ÈØ*
dtype0

gru_4/gru_cell_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:Ø*&
shared_namegru_4/gru_cell_4/bias
|
)gru_4/gru_cell_4/bias/Read/ReadVariableOpReadVariableOpgru_4/gru_cell_4/bias*
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

Adam/dense_8/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Èd*&
shared_nameAdam/dense_8/kernel/m

)Adam/dense_8/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_8/kernel/m*
_output_shapes
:	Èd*
dtype0
~
Adam/dense_8/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*$
shared_nameAdam/dense_8/bias/m
w
'Adam/dense_8/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_8/bias/m*
_output_shapes
:d*
dtype0

Adam/dense_9/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*&
shared_nameAdam/dense_9/kernel/m

)Adam/dense_9/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_9/kernel/m*
_output_shapes

:d*
dtype0
~
Adam/dense_9/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_9/bias/m
w
'Adam/dense_9/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_9/bias/m*
_output_shapes
:*
dtype0

Adam/gru_4/gru_cell_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ø*/
shared_name Adam/gru_4/gru_cell_4/kernel/m

2Adam/gru_4/gru_cell_4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/gru_4/gru_cell_4/kernel/m*
_output_shapes
:	Ø*
dtype0
®
(Adam/gru_4/gru_cell_4/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ÈØ*9
shared_name*(Adam/gru_4/gru_cell_4/recurrent_kernel/m
§
<Adam/gru_4/gru_cell_4/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp(Adam/gru_4/gru_cell_4/recurrent_kernel/m* 
_output_shapes
:
ÈØ*
dtype0

Adam/gru_4/gru_cell_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:Ø*-
shared_nameAdam/gru_4/gru_cell_4/bias/m

0Adam/gru_4/gru_cell_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/gru_4/gru_cell_4/bias/m*
_output_shapes	
:Ø*
dtype0

Adam/dense_8/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Èd*&
shared_nameAdam/dense_8/kernel/v

)Adam/dense_8/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_8/kernel/v*
_output_shapes
:	Èd*
dtype0
~
Adam/dense_8/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*$
shared_nameAdam/dense_8/bias/v
w
'Adam/dense_8/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_8/bias/v*
_output_shapes
:d*
dtype0

Adam/dense_9/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*&
shared_nameAdam/dense_9/kernel/v

)Adam/dense_9/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_9/kernel/v*
_output_shapes

:d*
dtype0
~
Adam/dense_9/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_9/bias/v
w
'Adam/dense_9/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_9/bias/v*
_output_shapes
:*
dtype0

Adam/gru_4/gru_cell_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ø*/
shared_name Adam/gru_4/gru_cell_4/kernel/v

2Adam/gru_4/gru_cell_4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/gru_4/gru_cell_4/kernel/v*
_output_shapes
:	Ø*
dtype0
®
(Adam/gru_4/gru_cell_4/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ÈØ*9
shared_name*(Adam/gru_4/gru_cell_4/recurrent_kernel/v
§
<Adam/gru_4/gru_cell_4/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp(Adam/gru_4/gru_cell_4/recurrent_kernel/v* 
_output_shapes
:
ÈØ*
dtype0

Adam/gru_4/gru_cell_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:Ø*-
shared_nameAdam/gru_4/gru_cell_4/bias/v

0Adam/gru_4/gru_cell_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/gru_4/gru_cell_4/bias/v*
_output_shapes	
:Ø*
dtype0

NoOpNoOp
è(
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*£(
value(B( B(
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
ZX
VARIABLE_VALUEdense_8/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_8/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
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
ZX
VARIABLE_VALUEdense_9/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_9/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
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
SQ
VARIABLE_VALUEgru_4/gru_cell_4/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUE!gru_4/gru_cell_4/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEgru_4/gru_cell_4/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
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
}{
VARIABLE_VALUEAdam/dense_8/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_8/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_9/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_9/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/gru_4/gru_cell_4/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUE(Adam/gru_4/gru_cell_4/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/gru_4/gru_cell_4/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_8/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_8/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_9/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_9/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/gru_4/gru_cell_4/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUE(Adam/gru_4/gru_cell_4/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/gru_4/gru_cell_4/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_gru_4_inputPlaceholder*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0* 
shape:ÿÿÿÿÿÿÿÿÿ
Ó
StatefulPartitionedCallStatefulPartitionedCallserving_default_gru_4_inputgru_4/gru_cell_4/kernelgru_4/gru_cell_4/bias!gru_4/gru_cell_4/recurrent_kerneldense_8/kerneldense_8/biasdense_9/kerneldense_9/bias*
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
GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_129183
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
É
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_8/kernel/Read/ReadVariableOp dense_8/bias/Read/ReadVariableOp"dense_9/kernel/Read/ReadVariableOp dense_9/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp+gru_4/gru_cell_4/kernel/Read/ReadVariableOp5gru_4/gru_cell_4/recurrent_kernel/Read/ReadVariableOp)gru_4/gru_cell_4/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp)Adam/dense_8/kernel/m/Read/ReadVariableOp'Adam/dense_8/bias/m/Read/ReadVariableOp)Adam/dense_9/kernel/m/Read/ReadVariableOp'Adam/dense_9/bias/m/Read/ReadVariableOp2Adam/gru_4/gru_cell_4/kernel/m/Read/ReadVariableOp<Adam/gru_4/gru_cell_4/recurrent_kernel/m/Read/ReadVariableOp0Adam/gru_4/gru_cell_4/bias/m/Read/ReadVariableOp)Adam/dense_8/kernel/v/Read/ReadVariableOp'Adam/dense_8/bias/v/Read/ReadVariableOp)Adam/dense_9/kernel/v/Read/ReadVariableOp'Adam/dense_9/bias/v/Read/ReadVariableOp2Adam/gru_4/gru_cell_4/kernel/v/Read/ReadVariableOp<Adam/gru_4/gru_cell_4/recurrent_kernel/v/Read/ReadVariableOp0Adam/gru_4/gru_cell_4/bias/v/Read/ReadVariableOpConst*)
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
GPU 2J 8 *(
f#R!
__inference__traced_save_130583

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_8/kerneldense_8/biasdense_9/kerneldense_9/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rategru_4/gru_cell_4/kernel!gru_4/gru_cell_4/recurrent_kernelgru_4/gru_cell_4/biastotalcountAdam/dense_8/kernel/mAdam/dense_8/bias/mAdam/dense_9/kernel/mAdam/dense_9/bias/mAdam/gru_4/gru_cell_4/kernel/m(Adam/gru_4/gru_cell_4/recurrent_kernel/mAdam/gru_4/gru_cell_4/bias/mAdam/dense_8/kernel/vAdam/dense_8/bias/vAdam/dense_9/kernel/vAdam/dense_9/bias/vAdam/gru_4/gru_cell_4/kernel/v(Adam/gru_4/gru_cell_4/recurrent_kernel/vAdam/gru_4/gru_cell_4/bias/v*(
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
GPU 2J 8 *+
f&R$
"__inference__traced_restore_130677±Ë
àV

while_body_130006
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_gru_cell_4_matmul_readvariableop_resource_0:	ØA
2while_gru_cell_4_biasadd_readvariableop_resource_0:	Ø>
*while_gru_cell_4_readvariableop_resource_0:
ÈØ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_gru_cell_4_matmul_readvariableop_resource:	Ø?
0while_gru_cell_4_biasadd_readvariableop_resource:	Ø<
(while_gru_cell_4_readvariableop_resource:
ÈØ¢'while/gru_cell_4/BiasAdd/ReadVariableOp¢&while/gru_cell_4/MatMul/ReadVariableOp¢while/gru_cell_4/ReadVariableOp¢!while/gru_cell_4/ReadVariableOp_1Ã
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
)while/TensorArrayV2Read/TensorListGetItemÃ
&while/gru_cell_4/MatMul/ReadVariableOpReadVariableOp1while_gru_cell_4_matmul_readvariableop_resource_0*
_output_shapes
:	Ø*
dtype02(
&while/gru_cell_4/MatMul/ReadVariableOpÑ
while/gru_cell_4/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/gru_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
while/gru_cell_4/MatMulÂ
'while/gru_cell_4/BiasAdd/ReadVariableOpReadVariableOp2while_gru_cell_4_biasadd_readvariableop_resource_0*
_output_shapes	
:Ø*
dtype02)
'while/gru_cell_4/BiasAdd/ReadVariableOpÆ
while/gru_cell_4/BiasAddBiasAdd!while/gru_cell_4/MatMul:product:0/while/gru_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
while/gru_cell_4/BiasAdd
 while/gru_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 while/gru_cell_4/split/split_dimó
while/gru_cell_4/splitSplit)while/gru_cell_4/split/split_dim:output:0!while/gru_cell_4/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
while/gru_cell_4/split¯
while/gru_cell_4/ReadVariableOpReadVariableOp*while_gru_cell_4_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02!
while/gru_cell_4/ReadVariableOp
$while/gru_cell_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2&
$while/gru_cell_4/strided_slice/stack¡
&while/gru_cell_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell_4/strided_slice/stack_1¡
&while/gru_cell_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell_4/strided_slice/stack_2ä
while/gru_cell_4/strided_sliceStridedSlice'while/gru_cell_4/ReadVariableOp:value:0-while/gru_cell_4/strided_slice/stack:output:0/while/gru_cell_4/strided_slice/stack_1:output:0/while/gru_cell_4/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2 
while/gru_cell_4/strided_slice±
while/gru_cell_4/MatMul_1MatMulwhile_placeholder_2'while/gru_cell_4/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_4/MatMul_1
while/gru_cell_4/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2
while/gru_cell_4/Const
"while/gru_cell_4/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2$
"while/gru_cell_4/split_1/split_dim¦
while/gru_cell_4/split_1SplitV#while/gru_cell_4/MatMul_1:product:0while/gru_cell_4/Const:output:0+while/gru_cell_4/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2
while/gru_cell_4/split_1¬
while/gru_cell_4/addAddV2while/gru_cell_4/split:output:0!while/gru_cell_4/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_4/add
while/gru_cell_4/SigmoidSigmoidwhile/gru_cell_4/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_4/Sigmoid°
while/gru_cell_4/add_1AddV2while/gru_cell_4/split:output:1!while/gru_cell_4/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_4/add_1
while/gru_cell_4/Sigmoid_1Sigmoidwhile/gru_cell_4/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_4/Sigmoid_1
while/gru_cell_4/mulMulwhile/gru_cell_4/Sigmoid_1:y:0while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_4/mul³
!while/gru_cell_4/ReadVariableOp_1ReadVariableOp*while_gru_cell_4_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02#
!while/gru_cell_4/ReadVariableOp_1¡
&while/gru_cell_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell_4/strided_slice_1/stack¥
(while/gru_cell_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/gru_cell_4/strided_slice_1/stack_1¥
(while/gru_cell_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_4/strided_slice_1/stack_2ð
 while/gru_cell_4/strided_slice_1StridedSlice)while/gru_cell_4/ReadVariableOp_1:value:0/while/gru_cell_4/strided_slice_1/stack:output:01while/gru_cell_4/strided_slice_1/stack_1:output:01while/gru_cell_4/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2"
 while/gru_cell_4/strided_slice_1¸
while/gru_cell_4/MatMul_2MatMulwhile/gru_cell_4/mul:z:0)while/gru_cell_4/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_4/MatMul_2²
while/gru_cell_4/add_2AddV2while/gru_cell_4/split:output:2#while/gru_cell_4/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_4/add_2
while/gru_cell_4/ReluReluwhile/gru_cell_4/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_4/Relu
while/gru_cell_4/mul_1Mulwhile/gru_cell_4/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_4/mul_1u
while/gru_cell_4/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
while/gru_cell_4/sub/x¥
while/gru_cell_4/subSubwhile/gru_cell_4/sub/x:output:0while/gru_cell_4/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_4/sub©
while/gru_cell_4/mul_2Mulwhile/gru_cell_4/sub:z:0#while/gru_cell_4/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_4/mul_2¤
while/gru_cell_4/add_3AddV2while/gru_cell_4/mul_1:z:0while/gru_cell_4/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_4/add_3Þ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_4/add_3:z:0*
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
while/add_1÷
while/IdentityIdentitywhile/add_1:z:0(^while/gru_cell_4/BiasAdd/ReadVariableOp'^while/gru_cell_4/MatMul/ReadVariableOp ^while/gru_cell_4/ReadVariableOp"^while/gru_cell_4/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations(^while/gru_cell_4/BiasAdd/ReadVariableOp'^while/gru_cell_4/MatMul/ReadVariableOp ^while/gru_cell_4/ReadVariableOp"^while/gru_cell_4/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_1ù
while/Identity_2Identitywhile/add:z:0(^while/gru_cell_4/BiasAdd/ReadVariableOp'^while/gru_cell_4/MatMul/ReadVariableOp ^while/gru_cell_4/ReadVariableOp"^while/gru_cell_4/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_2¦
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/gru_cell_4/BiasAdd/ReadVariableOp'^while/gru_cell_4/MatMul/ReadVariableOp ^while/gru_cell_4/ReadVariableOp"^while/gru_cell_4/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/gru_cell_4/add_3:z:0(^while/gru_cell_4/BiasAdd/ReadVariableOp'^while/gru_cell_4/MatMul/ReadVariableOp ^while/gru_cell_4/ReadVariableOp"^while/gru_cell_4/ReadVariableOp_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_4"f
0while_gru_cell_4_biasadd_readvariableop_resource2while_gru_cell_4_biasadd_readvariableop_resource_0"d
/while_gru_cell_4_matmul_readvariableop_resource1while_gru_cell_4_matmul_readvariableop_resource_0"V
(while_gru_cell_4_readvariableop_resource*while_gru_cell_4_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿÈ: : : : : 2R
'while/gru_cell_4/BiasAdd/ReadVariableOp'while/gru_cell_4/BiasAdd/ReadVariableOp2P
&while/gru_cell_4/MatMul/ReadVariableOp&while/gru_cell_4/MatMul/ReadVariableOp2B
while/gru_cell_4/ReadVariableOpwhile/gru_cell_4/ReadVariableOp2F
!while/gru_cell_4/ReadVariableOp_1!while/gru_cell_4/ReadVariableOp_1: 
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
«	

gru_4_while_cond_129441(
$gru_4_while_gru_4_while_loop_counter.
*gru_4_while_gru_4_while_maximum_iterations
gru_4_while_placeholder
gru_4_while_placeholder_1
gru_4_while_placeholder_2*
&gru_4_while_less_gru_4_strided_slice_1@
<gru_4_while_gru_4_while_cond_129441___redundant_placeholder0@
<gru_4_while_gru_4_while_cond_129441___redundant_placeholder1@
<gru_4_while_gru_4_while_cond_129441___redundant_placeholder2@
<gru_4_while_gru_4_while_cond_129441___redundant_placeholder3
gru_4_while_identity

gru_4/while/LessLessgru_4_while_placeholder&gru_4_while_less_gru_4_strided_slice_1*
T0*
_output_shapes
: 2
gru_4/while/Lesso
gru_4/while/IdentityIdentitygru_4/while/Less:z:0*
T0
*
_output_shapes
: 2
gru_4/while/Identity"5
gru_4_while_identitygru_4/while/Identity:output:0*(
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
àV

while_body_128931
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_gru_cell_4_matmul_readvariableop_resource_0:	ØA
2while_gru_cell_4_biasadd_readvariableop_resource_0:	Ø>
*while_gru_cell_4_readvariableop_resource_0:
ÈØ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_gru_cell_4_matmul_readvariableop_resource:	Ø?
0while_gru_cell_4_biasadd_readvariableop_resource:	Ø<
(while_gru_cell_4_readvariableop_resource:
ÈØ¢'while/gru_cell_4/BiasAdd/ReadVariableOp¢&while/gru_cell_4/MatMul/ReadVariableOp¢while/gru_cell_4/ReadVariableOp¢!while/gru_cell_4/ReadVariableOp_1Ã
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
)while/TensorArrayV2Read/TensorListGetItemÃ
&while/gru_cell_4/MatMul/ReadVariableOpReadVariableOp1while_gru_cell_4_matmul_readvariableop_resource_0*
_output_shapes
:	Ø*
dtype02(
&while/gru_cell_4/MatMul/ReadVariableOpÑ
while/gru_cell_4/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/gru_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
while/gru_cell_4/MatMulÂ
'while/gru_cell_4/BiasAdd/ReadVariableOpReadVariableOp2while_gru_cell_4_biasadd_readvariableop_resource_0*
_output_shapes	
:Ø*
dtype02)
'while/gru_cell_4/BiasAdd/ReadVariableOpÆ
while/gru_cell_4/BiasAddBiasAdd!while/gru_cell_4/MatMul:product:0/while/gru_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
while/gru_cell_4/BiasAdd
 while/gru_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 while/gru_cell_4/split/split_dimó
while/gru_cell_4/splitSplit)while/gru_cell_4/split/split_dim:output:0!while/gru_cell_4/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
while/gru_cell_4/split¯
while/gru_cell_4/ReadVariableOpReadVariableOp*while_gru_cell_4_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02!
while/gru_cell_4/ReadVariableOp
$while/gru_cell_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2&
$while/gru_cell_4/strided_slice/stack¡
&while/gru_cell_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell_4/strided_slice/stack_1¡
&while/gru_cell_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell_4/strided_slice/stack_2ä
while/gru_cell_4/strided_sliceStridedSlice'while/gru_cell_4/ReadVariableOp:value:0-while/gru_cell_4/strided_slice/stack:output:0/while/gru_cell_4/strided_slice/stack_1:output:0/while/gru_cell_4/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2 
while/gru_cell_4/strided_slice±
while/gru_cell_4/MatMul_1MatMulwhile_placeholder_2'while/gru_cell_4/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_4/MatMul_1
while/gru_cell_4/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2
while/gru_cell_4/Const
"while/gru_cell_4/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2$
"while/gru_cell_4/split_1/split_dim¦
while/gru_cell_4/split_1SplitV#while/gru_cell_4/MatMul_1:product:0while/gru_cell_4/Const:output:0+while/gru_cell_4/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2
while/gru_cell_4/split_1¬
while/gru_cell_4/addAddV2while/gru_cell_4/split:output:0!while/gru_cell_4/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_4/add
while/gru_cell_4/SigmoidSigmoidwhile/gru_cell_4/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_4/Sigmoid°
while/gru_cell_4/add_1AddV2while/gru_cell_4/split:output:1!while/gru_cell_4/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_4/add_1
while/gru_cell_4/Sigmoid_1Sigmoidwhile/gru_cell_4/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_4/Sigmoid_1
while/gru_cell_4/mulMulwhile/gru_cell_4/Sigmoid_1:y:0while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_4/mul³
!while/gru_cell_4/ReadVariableOp_1ReadVariableOp*while_gru_cell_4_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02#
!while/gru_cell_4/ReadVariableOp_1¡
&while/gru_cell_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell_4/strided_slice_1/stack¥
(while/gru_cell_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/gru_cell_4/strided_slice_1/stack_1¥
(while/gru_cell_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_4/strided_slice_1/stack_2ð
 while/gru_cell_4/strided_slice_1StridedSlice)while/gru_cell_4/ReadVariableOp_1:value:0/while/gru_cell_4/strided_slice_1/stack:output:01while/gru_cell_4/strided_slice_1/stack_1:output:01while/gru_cell_4/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2"
 while/gru_cell_4/strided_slice_1¸
while/gru_cell_4/MatMul_2MatMulwhile/gru_cell_4/mul:z:0)while/gru_cell_4/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_4/MatMul_2²
while/gru_cell_4/add_2AddV2while/gru_cell_4/split:output:2#while/gru_cell_4/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_4/add_2
while/gru_cell_4/ReluReluwhile/gru_cell_4/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_4/Relu
while/gru_cell_4/mul_1Mulwhile/gru_cell_4/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_4/mul_1u
while/gru_cell_4/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
while/gru_cell_4/sub/x¥
while/gru_cell_4/subSubwhile/gru_cell_4/sub/x:output:0while/gru_cell_4/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_4/sub©
while/gru_cell_4/mul_2Mulwhile/gru_cell_4/sub:z:0#while/gru_cell_4/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_4/mul_2¤
while/gru_cell_4/add_3AddV2while/gru_cell_4/mul_1:z:0while/gru_cell_4/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_4/add_3Þ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_4/add_3:z:0*
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
while/add_1÷
while/IdentityIdentitywhile/add_1:z:0(^while/gru_cell_4/BiasAdd/ReadVariableOp'^while/gru_cell_4/MatMul/ReadVariableOp ^while/gru_cell_4/ReadVariableOp"^while/gru_cell_4/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations(^while/gru_cell_4/BiasAdd/ReadVariableOp'^while/gru_cell_4/MatMul/ReadVariableOp ^while/gru_cell_4/ReadVariableOp"^while/gru_cell_4/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_1ù
while/Identity_2Identitywhile/add:z:0(^while/gru_cell_4/BiasAdd/ReadVariableOp'^while/gru_cell_4/MatMul/ReadVariableOp ^while/gru_cell_4/ReadVariableOp"^while/gru_cell_4/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_2¦
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/gru_cell_4/BiasAdd/ReadVariableOp'^while/gru_cell_4/MatMul/ReadVariableOp ^while/gru_cell_4/ReadVariableOp"^while/gru_cell_4/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/gru_cell_4/add_3:z:0(^while/gru_cell_4/BiasAdd/ReadVariableOp'^while/gru_cell_4/MatMul/ReadVariableOp ^while/gru_cell_4/ReadVariableOp"^while/gru_cell_4/ReadVariableOp_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_4"f
0while_gru_cell_4_biasadd_readvariableop_resource2while_gru_cell_4_biasadd_readvariableop_resource_0"d
/while_gru_cell_4_matmul_readvariableop_resource1while_gru_cell_4_matmul_readvariableop_resource_0"V
(while_gru_cell_4_readvariableop_resource*while_gru_cell_4_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿÈ: : : : : 2R
'while/gru_cell_4/BiasAdd/ReadVariableOp'while/gru_cell_4/BiasAdd/ReadVariableOp2P
&while/gru_cell_4/MatMul/ReadVariableOp&while/gru_cell_4/MatMul/ReadVariableOp2B
while/gru_cell_4/ReadVariableOpwhile/gru_cell_4/ReadVariableOp2F
!while/gru_cell_4/ReadVariableOp_1!while/gru_cell_4/ReadVariableOp_1: 
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
åa
Ô	
gru_4_while_body_129258(
$gru_4_while_gru_4_while_loop_counter.
*gru_4_while_gru_4_while_maximum_iterations
gru_4_while_placeholder
gru_4_while_placeholder_1
gru_4_while_placeholder_2'
#gru_4_while_gru_4_strided_slice_1_0c
_gru_4_while_tensorarrayv2read_tensorlistgetitem_gru_4_tensorarrayunstack_tensorlistfromtensor_0J
7gru_4_while_gru_cell_4_matmul_readvariableop_resource_0:	ØG
8gru_4_while_gru_cell_4_biasadd_readvariableop_resource_0:	ØD
0gru_4_while_gru_cell_4_readvariableop_resource_0:
ÈØ
gru_4_while_identity
gru_4_while_identity_1
gru_4_while_identity_2
gru_4_while_identity_3
gru_4_while_identity_4%
!gru_4_while_gru_4_strided_slice_1a
]gru_4_while_tensorarrayv2read_tensorlistgetitem_gru_4_tensorarrayunstack_tensorlistfromtensorH
5gru_4_while_gru_cell_4_matmul_readvariableop_resource:	ØE
6gru_4_while_gru_cell_4_biasadd_readvariableop_resource:	ØB
.gru_4_while_gru_cell_4_readvariableop_resource:
ÈØ¢-gru_4/while/gru_cell_4/BiasAdd/ReadVariableOp¢,gru_4/while/gru_cell_4/MatMul/ReadVariableOp¢%gru_4/while/gru_cell_4/ReadVariableOp¢'gru_4/while/gru_cell_4/ReadVariableOp_1Ï
=gru_4/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2?
=gru_4/while/TensorArrayV2Read/TensorListGetItem/element_shape÷
/gru_4/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem_gru_4_while_tensorarrayv2read_tensorlistgetitem_gru_4_tensorarrayunstack_tensorlistfromtensor_0gru_4_while_placeholderFgru_4/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype021
/gru_4/while/TensorArrayV2Read/TensorListGetItemÕ
,gru_4/while/gru_cell_4/MatMul/ReadVariableOpReadVariableOp7gru_4_while_gru_cell_4_matmul_readvariableop_resource_0*
_output_shapes
:	Ø*
dtype02.
,gru_4/while/gru_cell_4/MatMul/ReadVariableOpé
gru_4/while/gru_cell_4/MatMulMatMul6gru_4/while/TensorArrayV2Read/TensorListGetItem:item:04gru_4/while/gru_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_4/while/gru_cell_4/MatMulÔ
-gru_4/while/gru_cell_4/BiasAdd/ReadVariableOpReadVariableOp8gru_4_while_gru_cell_4_biasadd_readvariableop_resource_0*
_output_shapes	
:Ø*
dtype02/
-gru_4/while/gru_cell_4/BiasAdd/ReadVariableOpÞ
gru_4/while/gru_cell_4/BiasAddBiasAdd'gru_4/while/gru_cell_4/MatMul:product:05gru_4/while/gru_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2 
gru_4/while/gru_cell_4/BiasAdd
&gru_4/while/gru_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2(
&gru_4/while/gru_cell_4/split/split_dim
gru_4/while/gru_cell_4/splitSplit/gru_4/while/gru_cell_4/split/split_dim:output:0'gru_4/while/gru_cell_4/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
gru_4/while/gru_cell_4/splitÁ
%gru_4/while/gru_cell_4/ReadVariableOpReadVariableOp0gru_4_while_gru_cell_4_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02'
%gru_4/while/gru_cell_4/ReadVariableOp©
*gru_4/while/gru_cell_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2,
*gru_4/while/gru_cell_4/strided_slice/stack­
,gru_4/while/gru_cell_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2.
,gru_4/while/gru_cell_4/strided_slice/stack_1­
,gru_4/while/gru_cell_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,gru_4/while/gru_cell_4/strided_slice/stack_2
$gru_4/while/gru_cell_4/strided_sliceStridedSlice-gru_4/while/gru_cell_4/ReadVariableOp:value:03gru_4/while/gru_cell_4/strided_slice/stack:output:05gru_4/while/gru_cell_4/strided_slice/stack_1:output:05gru_4/while/gru_cell_4/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2&
$gru_4/while/gru_cell_4/strided_sliceÉ
gru_4/while/gru_cell_4/MatMul_1MatMulgru_4_while_placeholder_2-gru_4/while/gru_cell_4/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
gru_4/while/gru_cell_4/MatMul_1
gru_4/while/gru_cell_4/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2
gru_4/while/gru_cell_4/Const
(gru_4/while/gru_cell_4/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2*
(gru_4/while/gru_cell_4/split_1/split_dimÄ
gru_4/while/gru_cell_4/split_1SplitV)gru_4/while/gru_cell_4/MatMul_1:product:0%gru_4/while/gru_cell_4/Const:output:01gru_4/while/gru_cell_4/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2 
gru_4/while/gru_cell_4/split_1Ä
gru_4/while/gru_cell_4/addAddV2%gru_4/while/gru_cell_4/split:output:0'gru_4/while/gru_cell_4/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_4/while/gru_cell_4/add
gru_4/while/gru_cell_4/SigmoidSigmoidgru_4/while/gru_cell_4/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2 
gru_4/while/gru_cell_4/SigmoidÈ
gru_4/while/gru_cell_4/add_1AddV2%gru_4/while/gru_cell_4/split:output:1'gru_4/while/gru_cell_4/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_4/while/gru_cell_4/add_1¤
 gru_4/while/gru_cell_4/Sigmoid_1Sigmoid gru_4/while/gru_cell_4/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2"
 gru_4/while/gru_cell_4/Sigmoid_1³
gru_4/while/gru_cell_4/mulMul$gru_4/while/gru_cell_4/Sigmoid_1:y:0gru_4_while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_4/while/gru_cell_4/mulÅ
'gru_4/while/gru_cell_4/ReadVariableOp_1ReadVariableOp0gru_4_while_gru_cell_4_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02)
'gru_4/while/gru_cell_4/ReadVariableOp_1­
,gru_4/while/gru_cell_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2.
,gru_4/while/gru_cell_4/strided_slice_1/stack±
.gru_4/while/gru_cell_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        20
.gru_4/while/gru_cell_4/strided_slice_1/stack_1±
.gru_4/while/gru_cell_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.gru_4/while/gru_cell_4/strided_slice_1/stack_2
&gru_4/while/gru_cell_4/strided_slice_1StridedSlice/gru_4/while/gru_cell_4/ReadVariableOp_1:value:05gru_4/while/gru_cell_4/strided_slice_1/stack:output:07gru_4/while/gru_cell_4/strided_slice_1/stack_1:output:07gru_4/while/gru_cell_4/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2(
&gru_4/while/gru_cell_4/strided_slice_1Ð
gru_4/while/gru_cell_4/MatMul_2MatMulgru_4/while/gru_cell_4/mul:z:0/gru_4/while/gru_cell_4/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2!
gru_4/while/gru_cell_4/MatMul_2Ê
gru_4/while/gru_cell_4/add_2AddV2%gru_4/while/gru_cell_4/split:output:2)gru_4/while/gru_cell_4/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_4/while/gru_cell_4/add_2
gru_4/while/gru_cell_4/ReluRelu gru_4/while/gru_cell_4/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_4/while/gru_cell_4/Reluµ
gru_4/while/gru_cell_4/mul_1Mul"gru_4/while/gru_cell_4/Sigmoid:y:0gru_4_while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_4/while/gru_cell_4/mul_1
gru_4/while/gru_cell_4/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_4/while/gru_cell_4/sub/x½
gru_4/while/gru_cell_4/subSub%gru_4/while/gru_cell_4/sub/x:output:0"gru_4/while/gru_cell_4/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_4/while/gru_cell_4/subÁ
gru_4/while/gru_cell_4/mul_2Mulgru_4/while/gru_cell_4/sub:z:0)gru_4/while/gru_cell_4/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_4/while/gru_cell_4/mul_2¼
gru_4/while/gru_cell_4/add_3AddV2 gru_4/while/gru_cell_4/mul_1:z:0 gru_4/while/gru_cell_4/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_4/while/gru_cell_4/add_3ü
0gru_4/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemgru_4_while_placeholder_1gru_4_while_placeholder gru_4/while/gru_cell_4/add_3:z:0*
_output_shapes
: *
element_dtype022
0gru_4/while/TensorArrayV2Write/TensorListSetItemh
gru_4/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru_4/while/add/y
gru_4/while/addAddV2gru_4_while_placeholdergru_4/while/add/y:output:0*
T0*
_output_shapes
: 2
gru_4/while/addl
gru_4/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru_4/while/add_1/y
gru_4/while/add_1AddV2$gru_4_while_gru_4_while_loop_countergru_4/while/add_1/y:output:0*
T0*
_output_shapes
: 2
gru_4/while/add_1¡
gru_4/while/IdentityIdentitygru_4/while/add_1:z:0.^gru_4/while/gru_cell_4/BiasAdd/ReadVariableOp-^gru_4/while/gru_cell_4/MatMul/ReadVariableOp&^gru_4/while/gru_cell_4/ReadVariableOp(^gru_4/while/gru_cell_4/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_4/while/Identityº
gru_4/while/Identity_1Identity*gru_4_while_gru_4_while_maximum_iterations.^gru_4/while/gru_cell_4/BiasAdd/ReadVariableOp-^gru_4/while/gru_cell_4/MatMul/ReadVariableOp&^gru_4/while/gru_cell_4/ReadVariableOp(^gru_4/while/gru_cell_4/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_4/while/Identity_1£
gru_4/while/Identity_2Identitygru_4/while/add:z:0.^gru_4/while/gru_cell_4/BiasAdd/ReadVariableOp-^gru_4/while/gru_cell_4/MatMul/ReadVariableOp&^gru_4/while/gru_cell_4/ReadVariableOp(^gru_4/while/gru_cell_4/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_4/while/Identity_2Ð
gru_4/while/Identity_3Identity@gru_4/while/TensorArrayV2Write/TensorListSetItem:output_handle:0.^gru_4/while/gru_cell_4/BiasAdd/ReadVariableOp-^gru_4/while/gru_cell_4/MatMul/ReadVariableOp&^gru_4/while/gru_cell_4/ReadVariableOp(^gru_4/while/gru_cell_4/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_4/while/Identity_3Â
gru_4/while/Identity_4Identity gru_4/while/gru_cell_4/add_3:z:0.^gru_4/while/gru_cell_4/BiasAdd/ReadVariableOp-^gru_4/while/gru_cell_4/MatMul/ReadVariableOp&^gru_4/while/gru_cell_4/ReadVariableOp(^gru_4/while/gru_cell_4/ReadVariableOp_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_4/while/Identity_4"H
!gru_4_while_gru_4_strided_slice_1#gru_4_while_gru_4_strided_slice_1_0"r
6gru_4_while_gru_cell_4_biasadd_readvariableop_resource8gru_4_while_gru_cell_4_biasadd_readvariableop_resource_0"p
5gru_4_while_gru_cell_4_matmul_readvariableop_resource7gru_4_while_gru_cell_4_matmul_readvariableop_resource_0"b
.gru_4_while_gru_cell_4_readvariableop_resource0gru_4_while_gru_cell_4_readvariableop_resource_0"5
gru_4_while_identitygru_4/while/Identity:output:0"9
gru_4_while_identity_1gru_4/while/Identity_1:output:0"9
gru_4_while_identity_2gru_4/while/Identity_2:output:0"9
gru_4_while_identity_3gru_4/while/Identity_3:output:0"9
gru_4_while_identity_4gru_4/while/Identity_4:output:0"À
]gru_4_while_tensorarrayv2read_tensorlistgetitem_gru_4_tensorarrayunstack_tensorlistfromtensor_gru_4_while_tensorarrayv2read_tensorlistgetitem_gru_4_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿÈ: : : : : 2^
-gru_4/while/gru_cell_4/BiasAdd/ReadVariableOp-gru_4/while/gru_cell_4/BiasAdd/ReadVariableOp2\
,gru_4/while/gru_cell_4/MatMul/ReadVariableOp,gru_4/while/gru_cell_4/MatMul/ReadVariableOp2N
%gru_4/while/gru_cell_4/ReadVariableOp%gru_4/while/gru_cell_4/ReadVariableOp2R
'gru_4/while/gru_cell_4/ReadVariableOp_1'gru_4/while/gru_cell_4/ReadVariableOp_1: 
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
¾
¶
H__inference_sequential_4_layer_call_and_return_conditional_losses_129551

inputsB
/gru_4_gru_cell_4_matmul_readvariableop_resource:	Ø?
0gru_4_gru_cell_4_biasadd_readvariableop_resource:	Ø<
(gru_4_gru_cell_4_readvariableop_resource:
ÈØ9
&dense_8_matmul_readvariableop_resource:	Èd5
'dense_8_biasadd_readvariableop_resource:d8
&dense_9_matmul_readvariableop_resource:d5
'dense_9_biasadd_readvariableop_resource:
identity¢dense_8/BiasAdd/ReadVariableOp¢dense_8/MatMul/ReadVariableOp¢dense_9/BiasAdd/ReadVariableOp¢dense_9/MatMul/ReadVariableOp¢'gru_4/gru_cell_4/BiasAdd/ReadVariableOp¢&gru_4/gru_cell_4/MatMul/ReadVariableOp¢gru_4/gru_cell_4/ReadVariableOp¢!gru_4/gru_cell_4/ReadVariableOp_1¢gru_4/whileP
gru_4/ShapeShapeinputs*
T0*
_output_shapes
:2
gru_4/Shape
gru_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_4/strided_slice/stack
gru_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_4/strided_slice/stack_1
gru_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_4/strided_slice/stack_2
gru_4/strided_sliceStridedSlicegru_4/Shape:output:0"gru_4/strided_slice/stack:output:0$gru_4/strided_slice/stack_1:output:0$gru_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru_4/strided_slicei
gru_4/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :È2
gru_4/zeros/mul/y
gru_4/zeros/mulMulgru_4/strided_slice:output:0gru_4/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
gru_4/zeros/mulk
gru_4/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
gru_4/zeros/Less/y
gru_4/zeros/LessLessgru_4/zeros/mul:z:0gru_4/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
gru_4/zeros/Lesso
gru_4/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :È2
gru_4/zeros/packed/1
gru_4/zeros/packedPackgru_4/strided_slice:output:0gru_4/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
gru_4/zeros/packedk
gru_4/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_4/zeros/Const
gru_4/zerosFillgru_4/zeros/packed:output:0gru_4/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_4/zeros
gru_4/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_4/transpose/perm
gru_4/transpose	Transposeinputsgru_4/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_4/transposea
gru_4/Shape_1Shapegru_4/transpose:y:0*
T0*
_output_shapes
:2
gru_4/Shape_1
gru_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_4/strided_slice_1/stack
gru_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_4/strided_slice_1/stack_1
gru_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_4/strided_slice_1/stack_2
gru_4/strided_slice_1StridedSlicegru_4/Shape_1:output:0$gru_4/strided_slice_1/stack:output:0&gru_4/strided_slice_1/stack_1:output:0&gru_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru_4/strided_slice_1
!gru_4/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2#
!gru_4/TensorArrayV2/element_shapeÊ
gru_4/TensorArrayV2TensorListReserve*gru_4/TensorArrayV2/element_shape:output:0gru_4/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_4/TensorArrayV2Ë
;gru_4/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2=
;gru_4/TensorArrayUnstack/TensorListFromTensor/element_shape
-gru_4/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorgru_4/transpose:y:0Dgru_4/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02/
-gru_4/TensorArrayUnstack/TensorListFromTensor
gru_4/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_4/strided_slice_2/stack
gru_4/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_4/strided_slice_2/stack_1
gru_4/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_4/strided_slice_2/stack_2 
gru_4/strided_slice_2StridedSlicegru_4/transpose:y:0$gru_4/strided_slice_2/stack:output:0&gru_4/strided_slice_2/stack_1:output:0&gru_4/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
gru_4/strided_slice_2Á
&gru_4/gru_cell_4/MatMul/ReadVariableOpReadVariableOp/gru_4_gru_cell_4_matmul_readvariableop_resource*
_output_shapes
:	Ø*
dtype02(
&gru_4/gru_cell_4/MatMul/ReadVariableOp¿
gru_4/gru_cell_4/MatMulMatMulgru_4/strided_slice_2:output:0.gru_4/gru_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_4/gru_cell_4/MatMulÀ
'gru_4/gru_cell_4/BiasAdd/ReadVariableOpReadVariableOp0gru_4_gru_cell_4_biasadd_readvariableop_resource*
_output_shapes	
:Ø*
dtype02)
'gru_4/gru_cell_4/BiasAdd/ReadVariableOpÆ
gru_4/gru_cell_4/BiasAddBiasAdd!gru_4/gru_cell_4/MatMul:product:0/gru_4/gru_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_4/gru_cell_4/BiasAdd
 gru_4/gru_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 gru_4/gru_cell_4/split/split_dimó
gru_4/gru_cell_4/splitSplit)gru_4/gru_cell_4/split/split_dim:output:0!gru_4/gru_cell_4/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
gru_4/gru_cell_4/split­
gru_4/gru_cell_4/ReadVariableOpReadVariableOp(gru_4_gru_cell_4_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02!
gru_4/gru_cell_4/ReadVariableOp
$gru_4/gru_cell_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2&
$gru_4/gru_cell_4/strided_slice/stack¡
&gru_4/gru_cell_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2(
&gru_4/gru_cell_4/strided_slice/stack_1¡
&gru_4/gru_cell_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&gru_4/gru_cell_4/strided_slice/stack_2ä
gru_4/gru_cell_4/strided_sliceStridedSlice'gru_4/gru_cell_4/ReadVariableOp:value:0-gru_4/gru_cell_4/strided_slice/stack:output:0/gru_4/gru_cell_4/strided_slice/stack_1:output:0/gru_4/gru_cell_4/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2 
gru_4/gru_cell_4/strided_slice²
gru_4/gru_cell_4/MatMul_1MatMulgru_4/zeros:output:0'gru_4/gru_cell_4/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_4/gru_cell_4/MatMul_1
gru_4/gru_cell_4/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2
gru_4/gru_cell_4/Const
"gru_4/gru_cell_4/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2$
"gru_4/gru_cell_4/split_1/split_dim¦
gru_4/gru_cell_4/split_1SplitV#gru_4/gru_cell_4/MatMul_1:product:0gru_4/gru_cell_4/Const:output:0+gru_4/gru_cell_4/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2
gru_4/gru_cell_4/split_1¬
gru_4/gru_cell_4/addAddV2gru_4/gru_cell_4/split:output:0!gru_4/gru_cell_4/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_4/gru_cell_4/add
gru_4/gru_cell_4/SigmoidSigmoidgru_4/gru_cell_4/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_4/gru_cell_4/Sigmoid°
gru_4/gru_cell_4/add_1AddV2gru_4/gru_cell_4/split:output:1!gru_4/gru_cell_4/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_4/gru_cell_4/add_1
gru_4/gru_cell_4/Sigmoid_1Sigmoidgru_4/gru_cell_4/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_4/gru_cell_4/Sigmoid_1
gru_4/gru_cell_4/mulMulgru_4/gru_cell_4/Sigmoid_1:y:0gru_4/zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_4/gru_cell_4/mul±
!gru_4/gru_cell_4/ReadVariableOp_1ReadVariableOp(gru_4_gru_cell_4_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02#
!gru_4/gru_cell_4/ReadVariableOp_1¡
&gru_4/gru_cell_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2(
&gru_4/gru_cell_4/strided_slice_1/stack¥
(gru_4/gru_cell_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(gru_4/gru_cell_4/strided_slice_1/stack_1¥
(gru_4/gru_cell_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(gru_4/gru_cell_4/strided_slice_1/stack_2ð
 gru_4/gru_cell_4/strided_slice_1StridedSlice)gru_4/gru_cell_4/ReadVariableOp_1:value:0/gru_4/gru_cell_4/strided_slice_1/stack:output:01gru_4/gru_cell_4/strided_slice_1/stack_1:output:01gru_4/gru_cell_4/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2"
 gru_4/gru_cell_4/strided_slice_1¸
gru_4/gru_cell_4/MatMul_2MatMulgru_4/gru_cell_4/mul:z:0)gru_4/gru_cell_4/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_4/gru_cell_4/MatMul_2²
gru_4/gru_cell_4/add_2AddV2gru_4/gru_cell_4/split:output:2#gru_4/gru_cell_4/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_4/gru_cell_4/add_2
gru_4/gru_cell_4/ReluRelugru_4/gru_cell_4/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_4/gru_cell_4/Relu
gru_4/gru_cell_4/mul_1Mulgru_4/gru_cell_4/Sigmoid:y:0gru_4/zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_4/gru_cell_4/mul_1u
gru_4/gru_cell_4/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_4/gru_cell_4/sub/x¥
gru_4/gru_cell_4/subSubgru_4/gru_cell_4/sub/x:output:0gru_4/gru_cell_4/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_4/gru_cell_4/sub©
gru_4/gru_cell_4/mul_2Mulgru_4/gru_cell_4/sub:z:0#gru_4/gru_cell_4/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_4/gru_cell_4/mul_2¤
gru_4/gru_cell_4/add_3AddV2gru_4/gru_cell_4/mul_1:z:0gru_4/gru_cell_4/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_4/gru_cell_4/add_3
#gru_4/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÈ   2%
#gru_4/TensorArrayV2_1/element_shapeÐ
gru_4/TensorArrayV2_1TensorListReserve,gru_4/TensorArrayV2_1/element_shape:output:0gru_4/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_4/TensorArrayV2_1Z

gru_4/timeConst*
_output_shapes
: *
dtype0*
value	B : 2

gru_4/time
gru_4/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2 
gru_4/while/maximum_iterationsv
gru_4/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
gru_4/while/loop_counterü
gru_4/whileWhile!gru_4/while/loop_counter:output:0'gru_4/while/maximum_iterations:output:0gru_4/time:output:0gru_4/TensorArrayV2_1:handle:0gru_4/zeros:output:0gru_4/strided_slice_1:output:0=gru_4/TensorArrayUnstack/TensorListFromTensor:output_handle:0/gru_4_gru_cell_4_matmul_readvariableop_resource0gru_4_gru_cell_4_biasadd_readvariableop_resource(gru_4_gru_cell_4_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿÈ: : : : : *%
_read_only_resource_inputs
	*#
bodyR
gru_4_while_body_129442*#
condR
gru_4_while_cond_129441*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿÈ: : : : : *
parallel_iterations 2
gru_4/whileÁ
6gru_4/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÈ   28
6gru_4/TensorArrayV2Stack/TensorListStack/element_shape
(gru_4/TensorArrayV2Stack/TensorListStackTensorListStackgru_4/while:output:3?gru_4/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*
element_dtype02*
(gru_4/TensorArrayV2Stack/TensorListStack
gru_4/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
gru_4/strided_slice_3/stack
gru_4/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
gru_4/strided_slice_3/stack_1
gru_4/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_4/strided_slice_3/stack_2¿
gru_4/strided_slice_3StridedSlice1gru_4/TensorArrayV2Stack/TensorListStack:tensor:0$gru_4/strided_slice_3/stack:output:0&gru_4/strided_slice_3/stack_1:output:0&gru_4/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*
shrink_axis_mask2
gru_4/strided_slice_3
gru_4/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_4/transpose_1/perm¾
gru_4/transpose_1	Transpose1gru_4/TensorArrayV2Stack/TensorListStack:tensor:0gru_4/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_4/transpose_1r
gru_4/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_4/runtime¦
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource*
_output_shapes
:	Èd*
dtype02
dense_8/MatMul/ReadVariableOp£
dense_8/MatMulMatMulgru_4/strided_slice_3:output:0%dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dense_8/MatMul¤
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02 
dense_8/BiasAdd/ReadVariableOp¡
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dense_8/BiasAddp
dense_8/ReluReludense_8/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dense_8/Relu¥
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02
dense_9/MatMul/ReadVariableOp
dense_9/MatMulMatMuldense_8/Relu:activations:0%dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_9/MatMul¤
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_9/BiasAdd/ReadVariableOp¡
dense_9/BiasAddBiasAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_9/BiasAdd
IdentityIdentitydense_9/BiasAdd:output:0^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp(^gru_4/gru_cell_4/BiasAdd/ReadVariableOp'^gru_4/gru_cell_4/MatMul/ReadVariableOp ^gru_4/gru_cell_4/ReadVariableOp"^gru_4/gru_cell_4/ReadVariableOp_1^gru_4/while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp2R
'gru_4/gru_cell_4/BiasAdd/ReadVariableOp'gru_4/gru_cell_4/BiasAdd/ReadVariableOp2P
&gru_4/gru_cell_4/MatMul/ReadVariableOp&gru_4/gru_cell_4/MatMul/ReadVariableOp2B
gru_4/gru_cell_4/ReadVariableOpgru_4/gru_cell_4/ReadVariableOp2F
!gru_4/gru_cell_4/ReadVariableOp_1!gru_4/gru_cell_4/ReadVariableOp_12
gru_4/whilegru_4/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ï	
ô
C__inference_dense_9_layer_call_and_return_conditional_losses_130347

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
	
¨
-__inference_sequential_4_layer_call_fn_129589

inputs
unknown:	Ø
	unknown_0:	Ø
	unknown_1:
ÈØ
	unknown_2:	Èd
	unknown_3:d
	unknown_4:d
	unknown_5:
identity¢StatefulPartitionedCall¹
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
GPU 2J 8 *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_1290782
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
«	

gru_4_while_cond_129257(
$gru_4_while_gru_4_while_loop_counter.
*gru_4_while_gru_4_while_maximum_iterations
gru_4_while_placeholder
gru_4_while_placeholder_1
gru_4_while_placeholder_2*
&gru_4_while_less_gru_4_strided_slice_1@
<gru_4_while_gru_4_while_cond_129257___redundant_placeholder0@
<gru_4_while_gru_4_while_cond_129257___redundant_placeholder1@
<gru_4_while_gru_4_while_cond_129257___redundant_placeholder2@
<gru_4_while_gru_4_while_cond_129257___redundant_placeholder3
gru_4_while_identity

gru_4/while/LessLessgru_4_while_placeholder&gru_4_while_less_gru_4_strided_slice_1*
T0*
_output_shapes
: 2
gru_4/while/Lesso
gru_4/while/IdentityIdentitygru_4/while/Less:z:0*
T0
*
_output_shapes
: 2
gru_4/while/Identity"5
gru_4_while_identitygru_4/while/Identity:output:0*(
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
®=
ü
A__inference_gru_4_layer_call_and_return_conditional_losses_128149

inputs$
gru_cell_4_128073:	Ø 
gru_cell_4_128075:	Ø%
gru_cell_4_128077:
ÈØ
identity¢"gru_cell_4/StatefulPartitionedCall¢whileD
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
strided_slice_2ì
"gru_cell_4/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0gru_cell_4_128073gru_cell_4_128075gru_cell_4_128077*
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
GPU 2J 8 *O
fJRH
F__inference_gru_cell_4_layer_call_and_return_conditional_losses_1280722$
"gru_cell_4/StatefulPartitionedCall
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
while/loop_counteræ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0gru_cell_4_128073gru_cell_4_128075gru_cell_4_128077*
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
bodyR
while_body_128085*
condR
while_cond_128084*9
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
runtime
IdentityIdentitystrided_slice_3:output:0#^gru_cell_4/StatefulPartitionedCall^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2H
"gru_cell_4/StatefulPartitionedCall"gru_cell_4/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ç@
²
__inference__traced_save_130583
file_prefix-
)savev2_dense_8_kernel_read_readvariableop+
'savev2_dense_8_bias_read_readvariableop-
)savev2_dense_9_kernel_read_readvariableop+
'savev2_dense_9_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop6
2savev2_gru_4_gru_cell_4_kernel_read_readvariableop@
<savev2_gru_4_gru_cell_4_recurrent_kernel_read_readvariableop4
0savev2_gru_4_gru_cell_4_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop4
0savev2_adam_dense_8_kernel_m_read_readvariableop2
.savev2_adam_dense_8_bias_m_read_readvariableop4
0savev2_adam_dense_9_kernel_m_read_readvariableop2
.savev2_adam_dense_9_bias_m_read_readvariableop=
9savev2_adam_gru_4_gru_cell_4_kernel_m_read_readvariableopG
Csavev2_adam_gru_4_gru_cell_4_recurrent_kernel_m_read_readvariableop;
7savev2_adam_gru_4_gru_cell_4_bias_m_read_readvariableop4
0savev2_adam_dense_8_kernel_v_read_readvariableop2
.savev2_adam_dense_8_bias_v_read_readvariableop4
0savev2_adam_dense_9_kernel_v_read_readvariableop2
.savev2_adam_dense_9_bias_v_read_readvariableop=
9savev2_adam_gru_4_gru_cell_4_kernel_v_read_readvariableopG
Csavev2_adam_gru_4_gru_cell_4_recurrent_kernel_v_read_readvariableop;
7savev2_adam_gru_4_gru_cell_4_bias_v_read_readvariableop
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
SaveV2/shape_and_slices¬
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_8_kernel_read_readvariableop'savev2_dense_8_bias_read_readvariableop)savev2_dense_9_kernel_read_readvariableop'savev2_dense_9_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop2savev2_gru_4_gru_cell_4_kernel_read_readvariableop<savev2_gru_4_gru_cell_4_recurrent_kernel_read_readvariableop0savev2_gru_4_gru_cell_4_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop0savev2_adam_dense_8_kernel_m_read_readvariableop.savev2_adam_dense_8_bias_m_read_readvariableop0savev2_adam_dense_9_kernel_m_read_readvariableop.savev2_adam_dense_9_bias_m_read_readvariableop9savev2_adam_gru_4_gru_cell_4_kernel_m_read_readvariableopCsavev2_adam_gru_4_gru_cell_4_recurrent_kernel_m_read_readvariableop7savev2_adam_gru_4_gru_cell_4_bias_m_read_readvariableop0savev2_adam_dense_8_kernel_v_read_readvariableop.savev2_adam_dense_8_bias_v_read_readvariableop0savev2_adam_dense_9_kernel_v_read_readvariableop.savev2_adam_dense_9_bias_v_read_readvariableop9savev2_adam_gru_4_gru_cell_4_kernel_v_read_readvariableopCsavev2_adam_gru_4_gru_cell_4_recurrent_kernel_v_read_readvariableop7savev2_adam_gru_4_gru_cell_4_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
Ï
´
&__inference_gru_4_layer_call_fn_130306

inputs
unknown:	Ø
	unknown_0:	Ø
	unknown_1:
ÈØ
identity¢StatefulPartitionedCallÿ
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
GPU 2J 8 *J
fERC
A__inference_gru_4_layer_call_and_return_conditional_losses_1287642
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
àV

while_body_128668
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_gru_cell_4_matmul_readvariableop_resource_0:	ØA
2while_gru_cell_4_biasadd_readvariableop_resource_0:	Ø>
*while_gru_cell_4_readvariableop_resource_0:
ÈØ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_gru_cell_4_matmul_readvariableop_resource:	Ø?
0while_gru_cell_4_biasadd_readvariableop_resource:	Ø<
(while_gru_cell_4_readvariableop_resource:
ÈØ¢'while/gru_cell_4/BiasAdd/ReadVariableOp¢&while/gru_cell_4/MatMul/ReadVariableOp¢while/gru_cell_4/ReadVariableOp¢!while/gru_cell_4/ReadVariableOp_1Ã
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
)while/TensorArrayV2Read/TensorListGetItemÃ
&while/gru_cell_4/MatMul/ReadVariableOpReadVariableOp1while_gru_cell_4_matmul_readvariableop_resource_0*
_output_shapes
:	Ø*
dtype02(
&while/gru_cell_4/MatMul/ReadVariableOpÑ
while/gru_cell_4/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/gru_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
while/gru_cell_4/MatMulÂ
'while/gru_cell_4/BiasAdd/ReadVariableOpReadVariableOp2while_gru_cell_4_biasadd_readvariableop_resource_0*
_output_shapes	
:Ø*
dtype02)
'while/gru_cell_4/BiasAdd/ReadVariableOpÆ
while/gru_cell_4/BiasAddBiasAdd!while/gru_cell_4/MatMul:product:0/while/gru_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
while/gru_cell_4/BiasAdd
 while/gru_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 while/gru_cell_4/split/split_dimó
while/gru_cell_4/splitSplit)while/gru_cell_4/split/split_dim:output:0!while/gru_cell_4/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
while/gru_cell_4/split¯
while/gru_cell_4/ReadVariableOpReadVariableOp*while_gru_cell_4_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02!
while/gru_cell_4/ReadVariableOp
$while/gru_cell_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2&
$while/gru_cell_4/strided_slice/stack¡
&while/gru_cell_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell_4/strided_slice/stack_1¡
&while/gru_cell_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell_4/strided_slice/stack_2ä
while/gru_cell_4/strided_sliceStridedSlice'while/gru_cell_4/ReadVariableOp:value:0-while/gru_cell_4/strided_slice/stack:output:0/while/gru_cell_4/strided_slice/stack_1:output:0/while/gru_cell_4/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2 
while/gru_cell_4/strided_slice±
while/gru_cell_4/MatMul_1MatMulwhile_placeholder_2'while/gru_cell_4/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_4/MatMul_1
while/gru_cell_4/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2
while/gru_cell_4/Const
"while/gru_cell_4/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2$
"while/gru_cell_4/split_1/split_dim¦
while/gru_cell_4/split_1SplitV#while/gru_cell_4/MatMul_1:product:0while/gru_cell_4/Const:output:0+while/gru_cell_4/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2
while/gru_cell_4/split_1¬
while/gru_cell_4/addAddV2while/gru_cell_4/split:output:0!while/gru_cell_4/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_4/add
while/gru_cell_4/SigmoidSigmoidwhile/gru_cell_4/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_4/Sigmoid°
while/gru_cell_4/add_1AddV2while/gru_cell_4/split:output:1!while/gru_cell_4/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_4/add_1
while/gru_cell_4/Sigmoid_1Sigmoidwhile/gru_cell_4/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_4/Sigmoid_1
while/gru_cell_4/mulMulwhile/gru_cell_4/Sigmoid_1:y:0while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_4/mul³
!while/gru_cell_4/ReadVariableOp_1ReadVariableOp*while_gru_cell_4_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02#
!while/gru_cell_4/ReadVariableOp_1¡
&while/gru_cell_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell_4/strided_slice_1/stack¥
(while/gru_cell_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/gru_cell_4/strided_slice_1/stack_1¥
(while/gru_cell_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_4/strided_slice_1/stack_2ð
 while/gru_cell_4/strided_slice_1StridedSlice)while/gru_cell_4/ReadVariableOp_1:value:0/while/gru_cell_4/strided_slice_1/stack:output:01while/gru_cell_4/strided_slice_1/stack_1:output:01while/gru_cell_4/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2"
 while/gru_cell_4/strided_slice_1¸
while/gru_cell_4/MatMul_2MatMulwhile/gru_cell_4/mul:z:0)while/gru_cell_4/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_4/MatMul_2²
while/gru_cell_4/add_2AddV2while/gru_cell_4/split:output:2#while/gru_cell_4/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_4/add_2
while/gru_cell_4/ReluReluwhile/gru_cell_4/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_4/Relu
while/gru_cell_4/mul_1Mulwhile/gru_cell_4/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_4/mul_1u
while/gru_cell_4/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
while/gru_cell_4/sub/x¥
while/gru_cell_4/subSubwhile/gru_cell_4/sub/x:output:0while/gru_cell_4/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_4/sub©
while/gru_cell_4/mul_2Mulwhile/gru_cell_4/sub:z:0#while/gru_cell_4/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_4/mul_2¤
while/gru_cell_4/add_3AddV2while/gru_cell_4/mul_1:z:0while/gru_cell_4/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_4/add_3Þ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_4/add_3:z:0*
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
while/add_1÷
while/IdentityIdentitywhile/add_1:z:0(^while/gru_cell_4/BiasAdd/ReadVariableOp'^while/gru_cell_4/MatMul/ReadVariableOp ^while/gru_cell_4/ReadVariableOp"^while/gru_cell_4/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations(^while/gru_cell_4/BiasAdd/ReadVariableOp'^while/gru_cell_4/MatMul/ReadVariableOp ^while/gru_cell_4/ReadVariableOp"^while/gru_cell_4/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_1ù
while/Identity_2Identitywhile/add:z:0(^while/gru_cell_4/BiasAdd/ReadVariableOp'^while/gru_cell_4/MatMul/ReadVariableOp ^while/gru_cell_4/ReadVariableOp"^while/gru_cell_4/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_2¦
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/gru_cell_4/BiasAdd/ReadVariableOp'^while/gru_cell_4/MatMul/ReadVariableOp ^while/gru_cell_4/ReadVariableOp"^while/gru_cell_4/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/gru_cell_4/add_3:z:0(^while/gru_cell_4/BiasAdd/ReadVariableOp'^while/gru_cell_4/MatMul/ReadVariableOp ^while/gru_cell_4/ReadVariableOp"^while/gru_cell_4/ReadVariableOp_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_4"f
0while_gru_cell_4_biasadd_readvariableop_resource2while_gru_cell_4_biasadd_readvariableop_resource_0"d
/while_gru_cell_4_matmul_readvariableop_resource1while_gru_cell_4_matmul_readvariableop_resource_0"V
(while_gru_cell_4_readvariableop_resource*while_gru_cell_4_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿÈ: : : : : 2R
'while/gru_cell_4/BiasAdd/ReadVariableOp'while/gru_cell_4/BiasAdd/ReadVariableOp2P
&while/gru_cell_4/MatMul/ReadVariableOp&while/gru_cell_4/MatMul/ReadVariableOp2B
while/gru_cell_4/ReadVariableOpwhile/gru_cell_4/ReadVariableOp2F
!while/gru_cell_4/ReadVariableOp_1!while/gru_cell_4/ReadVariableOp_1: 
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
ü
ª
while_cond_129663
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_129663___redundant_placeholder04
0while_while_cond_129663___redundant_placeholder14
0while_while_cond_129663___redundant_placeholder24
0while_while_cond_129663___redundant_placeholder3
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
±
¬
H__inference_sequential_4_layer_call_and_return_conditional_losses_129078

inputs
gru_4_129060:	Ø
gru_4_129062:	Ø 
gru_4_129064:
ÈØ!
dense_8_129067:	Èd
dense_8_129069:d 
dense_9_129072:d
dense_9_129074:
identity¢dense_8/StatefulPartitionedCall¢dense_9/StatefulPartitionedCall¢gru_4/StatefulPartitionedCall
gru_4/StatefulPartitionedCallStatefulPartitionedCallinputsgru_4_129060gru_4_129062gru_4_129064*
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
GPU 2J 8 *J
fERC
A__inference_gru_4_layer_call_and_return_conditional_losses_1290272
gru_4/StatefulPartitionedCall¯
dense_8/StatefulPartitionedCallStatefulPartitionedCall&gru_4/StatefulPartitionedCall:output:0dense_8_129067dense_8_129069*
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
GPU 2J 8 *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_1287832!
dense_8/StatefulPartitionedCall±
dense_9/StatefulPartitionedCallStatefulPartitionedCall(dense_8/StatefulPartitionedCall:output:0dense_9_129072dense_9_129074*
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
GPU 2J 8 *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_1287992!
dense_9/StatefulPartitionedCallà
IdentityIdentity(dense_9/StatefulPartitionedCall:output:0 ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall^gru_4/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2>
gru_4/StatefulPartitionedCallgru_4/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
	
¨
-__inference_sequential_4_layer_call_fn_129570

inputs
unknown:	Ø
	unknown_0:	Ø
	unknown_1:
ÈØ
	unknown_2:	Èd
	unknown_3:d
	unknown_4:d
	unknown_5:
identity¢StatefulPartitionedCall¹
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
GPU 2J 8 *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_1288062
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
z
Ö
"__inference__traced_restore_130677
file_prefix2
assignvariableop_dense_8_kernel:	Èd-
assignvariableop_1_dense_8_bias:d3
!assignvariableop_2_dense_9_kernel:d-
assignvariableop_3_dense_9_bias:&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: =
*assignvariableop_9_gru_4_gru_cell_4_kernel:	ØI
5assignvariableop_10_gru_4_gru_cell_4_recurrent_kernel:
ÈØ8
)assignvariableop_11_gru_4_gru_cell_4_bias:	Ø#
assignvariableop_12_total: #
assignvariableop_13_count: <
)assignvariableop_14_adam_dense_8_kernel_m:	Èd5
'assignvariableop_15_adam_dense_8_bias_m:d;
)assignvariableop_16_adam_dense_9_kernel_m:d5
'assignvariableop_17_adam_dense_9_bias_m:E
2assignvariableop_18_adam_gru_4_gru_cell_4_kernel_m:	ØP
<assignvariableop_19_adam_gru_4_gru_cell_4_recurrent_kernel_m:
ÈØ?
0assignvariableop_20_adam_gru_4_gru_cell_4_bias_m:	Ø<
)assignvariableop_21_adam_dense_8_kernel_v:	Èd5
'assignvariableop_22_adam_dense_8_bias_v:d;
)assignvariableop_23_adam_dense_9_kernel_v:d5
'assignvariableop_24_adam_dense_9_bias_v:E
2assignvariableop_25_adam_gru_4_gru_cell_4_kernel_v:	ØP
<assignvariableop_26_adam_gru_4_gru_cell_4_recurrent_kernel_v:
ÈØ?
0assignvariableop_27_adam_gru_4_gru_cell_4_bias_v:	Ø
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

Identity
AssignVariableOpAssignVariableOpassignvariableop_dense_8_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1¤
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_8_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2¦
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_9_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3¤
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_9_biasIdentity_3:output:0"/device:CPU:0*
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

Identity_9¯
AssignVariableOp_9AssignVariableOp*assignvariableop_9_gru_4_gru_cell_4_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10½
AssignVariableOp_10AssignVariableOp5assignvariableop_10_gru_4_gru_cell_4_recurrent_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11±
AssignVariableOp_11AssignVariableOp)assignvariableop_11_gru_4_gru_cell_4_biasIdentity_11:output:0"/device:CPU:0*
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
Identity_14±
AssignVariableOp_14AssignVariableOp)assignvariableop_14_adam_dense_8_kernel_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15¯
AssignVariableOp_15AssignVariableOp'assignvariableop_15_adam_dense_8_bias_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16±
AssignVariableOp_16AssignVariableOp)assignvariableop_16_adam_dense_9_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17¯
AssignVariableOp_17AssignVariableOp'assignvariableop_17_adam_dense_9_bias_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18º
AssignVariableOp_18AssignVariableOp2assignvariableop_18_adam_gru_4_gru_cell_4_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19Ä
AssignVariableOp_19AssignVariableOp<assignvariableop_19_adam_gru_4_gru_cell_4_recurrent_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20¸
AssignVariableOp_20AssignVariableOp0assignvariableop_20_adam_gru_4_gru_cell_4_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21±
AssignVariableOp_21AssignVariableOp)assignvariableop_21_adam_dense_8_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22¯
AssignVariableOp_22AssignVariableOp'assignvariableop_22_adam_dense_8_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23±
AssignVariableOp_23AssignVariableOp)assignvariableop_23_adam_dense_9_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24¯
AssignVariableOp_24AssignVariableOp'assignvariableop_24_adam_dense_9_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25º
AssignVariableOp_25AssignVariableOp2assignvariableop_25_adam_gru_4_gru_cell_4_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26Ä
AssignVariableOp_26AssignVariableOp<assignvariableop_26_adam_gru_4_gru_cell_4_recurrent_kernel_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27¸
AssignVariableOp_27AssignVariableOp0assignvariableop_27_adam_gru_4_gru_cell_4_bias_vIdentity_27:output:0"/device:CPU:0*
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
Û*
è
F__inference_gru_cell_4_layer_call_and_return_conditional_losses_130448

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
Îg

A__inference_gru_4_layer_call_and_return_conditional_losses_129027

inputs<
)gru_cell_4_matmul_readvariableop_resource:	Ø9
*gru_cell_4_biasadd_readvariableop_resource:	Ø6
"gru_cell_4_readvariableop_resource:
ÈØ
identity¢!gru_cell_4/BiasAdd/ReadVariableOp¢ gru_cell_4/MatMul/ReadVariableOp¢gru_cell_4/ReadVariableOp¢gru_cell_4/ReadVariableOp_1¢whileD
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
strided_slice_2¯
 gru_cell_4/MatMul/ReadVariableOpReadVariableOp)gru_cell_4_matmul_readvariableop_resource*
_output_shapes
:	Ø*
dtype02"
 gru_cell_4/MatMul/ReadVariableOp§
gru_cell_4/MatMulMatMulstrided_slice_2:output:0(gru_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_cell_4/MatMul®
!gru_cell_4/BiasAdd/ReadVariableOpReadVariableOp*gru_cell_4_biasadd_readvariableop_resource*
_output_shapes	
:Ø*
dtype02#
!gru_cell_4/BiasAdd/ReadVariableOp®
gru_cell_4/BiasAddBiasAddgru_cell_4/MatMul:product:0)gru_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_cell_4/BiasAdd
gru_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
gru_cell_4/split/split_dimÛ
gru_cell_4/splitSplit#gru_cell_4/split/split_dim:output:0gru_cell_4/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
gru_cell_4/split
gru_cell_4/ReadVariableOpReadVariableOp"gru_cell_4_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02
gru_cell_4/ReadVariableOp
gru_cell_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2 
gru_cell_4/strided_slice/stack
 gru_cell_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell_4/strided_slice/stack_1
 gru_cell_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell_4/strided_slice/stack_2À
gru_cell_4/strided_sliceStridedSlice!gru_cell_4/ReadVariableOp:value:0'gru_cell_4/strided_slice/stack:output:0)gru_cell_4/strided_slice/stack_1:output:0)gru_cell_4/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2
gru_cell_4/strided_slice
gru_cell_4/MatMul_1MatMulzeros:output:0!gru_cell_4/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_4/MatMul_1y
gru_cell_4/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2
gru_cell_4/Const
gru_cell_4/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
gru_cell_4/split_1/split_dim
gru_cell_4/split_1SplitVgru_cell_4/MatMul_1:product:0gru_cell_4/Const:output:0%gru_cell_4/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2
gru_cell_4/split_1
gru_cell_4/addAddV2gru_cell_4/split:output:0gru_cell_4/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_4/addz
gru_cell_4/SigmoidSigmoidgru_cell_4/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_4/Sigmoid
gru_cell_4/add_1AddV2gru_cell_4/split:output:1gru_cell_4/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_4/add_1
gru_cell_4/Sigmoid_1Sigmoidgru_cell_4/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_4/Sigmoid_1
gru_cell_4/mulMulgru_cell_4/Sigmoid_1:y:0zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_4/mul
gru_cell_4/ReadVariableOp_1ReadVariableOp"gru_cell_4_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02
gru_cell_4/ReadVariableOp_1
 gru_cell_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell_4/strided_slice_1/stack
"gru_cell_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"gru_cell_4/strided_slice_1/stack_1
"gru_cell_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_4/strided_slice_1/stack_2Ì
gru_cell_4/strided_slice_1StridedSlice#gru_cell_4/ReadVariableOp_1:value:0)gru_cell_4/strided_slice_1/stack:output:0+gru_cell_4/strided_slice_1/stack_1:output:0+gru_cell_4/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2
gru_cell_4/strided_slice_1 
gru_cell_4/MatMul_2MatMulgru_cell_4/mul:z:0#gru_cell_4/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_4/MatMul_2
gru_cell_4/add_2AddV2gru_cell_4/split:output:2gru_cell_4/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_4/add_2s
gru_cell_4/ReluRelugru_cell_4/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_4/Relu
gru_cell_4/mul_1Mulgru_cell_4/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_4/mul_1i
gru_cell_4/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_4/sub/x
gru_cell_4/subSubgru_cell_4/sub/x:output:0gru_cell_4/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_4/sub
gru_cell_4/mul_2Mulgru_cell_4/sub:z:0gru_cell_4/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_4/mul_2
gru_cell_4/add_3AddV2gru_cell_4/mul_1:z:0gru_cell_4/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_4/add_3
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
while/loop_counter¨
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)gru_cell_4_matmul_readvariableop_resource*gru_cell_4_biasadd_readvariableop_resource"gru_cell_4_readvariableop_resource*
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
bodyR
while_body_128931*
condR
while_cond_128930*9
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
runtimeö
IdentityIdentitystrided_slice_3:output:0"^gru_cell_4/BiasAdd/ReadVariableOp!^gru_cell_4/MatMul/ReadVariableOp^gru_cell_4/ReadVariableOp^gru_cell_4/ReadVariableOp_1^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2F
!gru_cell_4/BiasAdd/ReadVariableOp!gru_cell_4/BiasAdd/ReadVariableOp2D
 gru_cell_4/MatMul/ReadVariableOp gru_cell_4/MatMul/ReadVariableOp26
gru_cell_4/ReadVariableOpgru_cell_4/ReadVariableOp2:
gru_cell_4/ReadVariableOp_1gru_cell_4/ReadVariableOp_12
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
àV

while_body_130177
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_gru_cell_4_matmul_readvariableop_resource_0:	ØA
2while_gru_cell_4_biasadd_readvariableop_resource_0:	Ø>
*while_gru_cell_4_readvariableop_resource_0:
ÈØ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_gru_cell_4_matmul_readvariableop_resource:	Ø?
0while_gru_cell_4_biasadd_readvariableop_resource:	Ø<
(while_gru_cell_4_readvariableop_resource:
ÈØ¢'while/gru_cell_4/BiasAdd/ReadVariableOp¢&while/gru_cell_4/MatMul/ReadVariableOp¢while/gru_cell_4/ReadVariableOp¢!while/gru_cell_4/ReadVariableOp_1Ã
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
)while/TensorArrayV2Read/TensorListGetItemÃ
&while/gru_cell_4/MatMul/ReadVariableOpReadVariableOp1while_gru_cell_4_matmul_readvariableop_resource_0*
_output_shapes
:	Ø*
dtype02(
&while/gru_cell_4/MatMul/ReadVariableOpÑ
while/gru_cell_4/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/gru_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
while/gru_cell_4/MatMulÂ
'while/gru_cell_4/BiasAdd/ReadVariableOpReadVariableOp2while_gru_cell_4_biasadd_readvariableop_resource_0*
_output_shapes	
:Ø*
dtype02)
'while/gru_cell_4/BiasAdd/ReadVariableOpÆ
while/gru_cell_4/BiasAddBiasAdd!while/gru_cell_4/MatMul:product:0/while/gru_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
while/gru_cell_4/BiasAdd
 while/gru_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 while/gru_cell_4/split/split_dimó
while/gru_cell_4/splitSplit)while/gru_cell_4/split/split_dim:output:0!while/gru_cell_4/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
while/gru_cell_4/split¯
while/gru_cell_4/ReadVariableOpReadVariableOp*while_gru_cell_4_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02!
while/gru_cell_4/ReadVariableOp
$while/gru_cell_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2&
$while/gru_cell_4/strided_slice/stack¡
&while/gru_cell_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell_4/strided_slice/stack_1¡
&while/gru_cell_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell_4/strided_slice/stack_2ä
while/gru_cell_4/strided_sliceStridedSlice'while/gru_cell_4/ReadVariableOp:value:0-while/gru_cell_4/strided_slice/stack:output:0/while/gru_cell_4/strided_slice/stack_1:output:0/while/gru_cell_4/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2 
while/gru_cell_4/strided_slice±
while/gru_cell_4/MatMul_1MatMulwhile_placeholder_2'while/gru_cell_4/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_4/MatMul_1
while/gru_cell_4/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2
while/gru_cell_4/Const
"while/gru_cell_4/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2$
"while/gru_cell_4/split_1/split_dim¦
while/gru_cell_4/split_1SplitV#while/gru_cell_4/MatMul_1:product:0while/gru_cell_4/Const:output:0+while/gru_cell_4/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2
while/gru_cell_4/split_1¬
while/gru_cell_4/addAddV2while/gru_cell_4/split:output:0!while/gru_cell_4/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_4/add
while/gru_cell_4/SigmoidSigmoidwhile/gru_cell_4/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_4/Sigmoid°
while/gru_cell_4/add_1AddV2while/gru_cell_4/split:output:1!while/gru_cell_4/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_4/add_1
while/gru_cell_4/Sigmoid_1Sigmoidwhile/gru_cell_4/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_4/Sigmoid_1
while/gru_cell_4/mulMulwhile/gru_cell_4/Sigmoid_1:y:0while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_4/mul³
!while/gru_cell_4/ReadVariableOp_1ReadVariableOp*while_gru_cell_4_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02#
!while/gru_cell_4/ReadVariableOp_1¡
&while/gru_cell_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell_4/strided_slice_1/stack¥
(while/gru_cell_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/gru_cell_4/strided_slice_1/stack_1¥
(while/gru_cell_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_4/strided_slice_1/stack_2ð
 while/gru_cell_4/strided_slice_1StridedSlice)while/gru_cell_4/ReadVariableOp_1:value:0/while/gru_cell_4/strided_slice_1/stack:output:01while/gru_cell_4/strided_slice_1/stack_1:output:01while/gru_cell_4/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2"
 while/gru_cell_4/strided_slice_1¸
while/gru_cell_4/MatMul_2MatMulwhile/gru_cell_4/mul:z:0)while/gru_cell_4/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_4/MatMul_2²
while/gru_cell_4/add_2AddV2while/gru_cell_4/split:output:2#while/gru_cell_4/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_4/add_2
while/gru_cell_4/ReluReluwhile/gru_cell_4/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_4/Relu
while/gru_cell_4/mul_1Mulwhile/gru_cell_4/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_4/mul_1u
while/gru_cell_4/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
while/gru_cell_4/sub/x¥
while/gru_cell_4/subSubwhile/gru_cell_4/sub/x:output:0while/gru_cell_4/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_4/sub©
while/gru_cell_4/mul_2Mulwhile/gru_cell_4/sub:z:0#while/gru_cell_4/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_4/mul_2¤
while/gru_cell_4/add_3AddV2while/gru_cell_4/mul_1:z:0while/gru_cell_4/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_4/add_3Þ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_4/add_3:z:0*
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
while/add_1÷
while/IdentityIdentitywhile/add_1:z:0(^while/gru_cell_4/BiasAdd/ReadVariableOp'^while/gru_cell_4/MatMul/ReadVariableOp ^while/gru_cell_4/ReadVariableOp"^while/gru_cell_4/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations(^while/gru_cell_4/BiasAdd/ReadVariableOp'^while/gru_cell_4/MatMul/ReadVariableOp ^while/gru_cell_4/ReadVariableOp"^while/gru_cell_4/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_1ù
while/Identity_2Identitywhile/add:z:0(^while/gru_cell_4/BiasAdd/ReadVariableOp'^while/gru_cell_4/MatMul/ReadVariableOp ^while/gru_cell_4/ReadVariableOp"^while/gru_cell_4/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_2¦
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/gru_cell_4/BiasAdd/ReadVariableOp'^while/gru_cell_4/MatMul/ReadVariableOp ^while/gru_cell_4/ReadVariableOp"^while/gru_cell_4/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/gru_cell_4/add_3:z:0(^while/gru_cell_4/BiasAdd/ReadVariableOp'^while/gru_cell_4/MatMul/ReadVariableOp ^while/gru_cell_4/ReadVariableOp"^while/gru_cell_4/ReadVariableOp_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_4"f
0while_gru_cell_4_biasadd_readvariableop_resource2while_gru_cell_4_biasadd_readvariableop_resource_0"d
/while_gru_cell_4_matmul_readvariableop_resource1while_gru_cell_4_matmul_readvariableop_resource_0"V
(while_gru_cell_4_readvariableop_resource*while_gru_cell_4_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿÈ: : : : : 2R
'while/gru_cell_4/BiasAdd/ReadVariableOp'while/gru_cell_4/BiasAdd/ReadVariableOp2P
&while/gru_cell_4/MatMul/ReadVariableOp&while/gru_cell_4/MatMul/ReadVariableOp2B
while/gru_cell_4/ReadVariableOpwhile/gru_cell_4/ReadVariableOp2F
!while/gru_cell_4/ReadVariableOp_1!while/gru_cell_4/ReadVariableOp_1: 
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
¯

õ
C__inference_dense_8_layer_call_and_return_conditional_losses_128783

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
	
­
-__inference_sequential_4_layer_call_fn_129114
gru_4_input
unknown:	Ø
	unknown_0:	Ø
	unknown_1:
ÈØ
	unknown_2:	Èd
	unknown_3:d
	unknown_4:d
	unknown_5:
identity¢StatefulPartitionedCall¾
StatefulPartitionedCallStatefulPartitionedCallgru_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
GPU 2J 8 *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_1290782
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
StatefulPartitionedCallStatefulPartitionedCall:X T
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_namegru_4_input


(__inference_dense_8_layer_call_fn_130337

inputs
unknown:	Èd
	unknown_0:d
identity¢StatefulPartitionedCalló
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
GPU 2J 8 *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_1287832
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
À
±
H__inference_sequential_4_layer_call_and_return_conditional_losses_129135
gru_4_input
gru_4_129117:	Ø
gru_4_129119:	Ø 
gru_4_129121:
ÈØ!
dense_8_129124:	Èd
dense_8_129126:d 
dense_9_129129:d
dense_9_129131:
identity¢dense_8/StatefulPartitionedCall¢dense_9/StatefulPartitionedCall¢gru_4/StatefulPartitionedCall
gru_4/StatefulPartitionedCallStatefulPartitionedCallgru_4_inputgru_4_129117gru_4_129119gru_4_129121*
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
GPU 2J 8 *J
fERC
A__inference_gru_4_layer_call_and_return_conditional_losses_1287642
gru_4/StatefulPartitionedCall¯
dense_8/StatefulPartitionedCallStatefulPartitionedCall&gru_4/StatefulPartitionedCall:output:0dense_8_129124dense_8_129126*
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
GPU 2J 8 *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_1287832!
dense_8/StatefulPartitionedCall±
dense_9/StatefulPartitionedCallStatefulPartitionedCall(dense_8/StatefulPartitionedCall:output:0dense_9_129129dense_9_129131*
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
GPU 2J 8 *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_1287992!
dense_9/StatefulPartitionedCallà
IdentityIdentity(dense_9/StatefulPartitionedCall:output:0 ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall^gru_4/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2>
gru_4/StatefulPartitionedCallgru_4/StatefulPartitionedCall:X T
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_namegru_4_input
è¥
ä
!__inference__wrapped_model_127991
gru_4_inputO
<sequential_4_gru_4_gru_cell_4_matmul_readvariableop_resource:	ØL
=sequential_4_gru_4_gru_cell_4_biasadd_readvariableop_resource:	ØI
5sequential_4_gru_4_gru_cell_4_readvariableop_resource:
ÈØF
3sequential_4_dense_8_matmul_readvariableop_resource:	ÈdB
4sequential_4_dense_8_biasadd_readvariableop_resource:dE
3sequential_4_dense_9_matmul_readvariableop_resource:dB
4sequential_4_dense_9_biasadd_readvariableop_resource:
identity¢+sequential_4/dense_8/BiasAdd/ReadVariableOp¢*sequential_4/dense_8/MatMul/ReadVariableOp¢+sequential_4/dense_9/BiasAdd/ReadVariableOp¢*sequential_4/dense_9/MatMul/ReadVariableOp¢4sequential_4/gru_4/gru_cell_4/BiasAdd/ReadVariableOp¢3sequential_4/gru_4/gru_cell_4/MatMul/ReadVariableOp¢,sequential_4/gru_4/gru_cell_4/ReadVariableOp¢.sequential_4/gru_4/gru_cell_4/ReadVariableOp_1¢sequential_4/gru_4/whileo
sequential_4/gru_4/ShapeShapegru_4_input*
T0*
_output_shapes
:2
sequential_4/gru_4/Shape
&sequential_4/gru_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential_4/gru_4/strided_slice/stack
(sequential_4/gru_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(sequential_4/gru_4/strided_slice/stack_1
(sequential_4/gru_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(sequential_4/gru_4/strided_slice/stack_2Ô
 sequential_4/gru_4/strided_sliceStridedSlice!sequential_4/gru_4/Shape:output:0/sequential_4/gru_4/strided_slice/stack:output:01sequential_4/gru_4/strided_slice/stack_1:output:01sequential_4/gru_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 sequential_4/gru_4/strided_slice
sequential_4/gru_4/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :È2 
sequential_4/gru_4/zeros/mul/y¸
sequential_4/gru_4/zeros/mulMul)sequential_4/gru_4/strided_slice:output:0'sequential_4/gru_4/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
sequential_4/gru_4/zeros/mul
sequential_4/gru_4/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2!
sequential_4/gru_4/zeros/Less/y³
sequential_4/gru_4/zeros/LessLess sequential_4/gru_4/zeros/mul:z:0(sequential_4/gru_4/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
sequential_4/gru_4/zeros/Less
!sequential_4/gru_4/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :È2#
!sequential_4/gru_4/zeros/packed/1Ï
sequential_4/gru_4/zeros/packedPack)sequential_4/gru_4/strided_slice:output:0*sequential_4/gru_4/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2!
sequential_4/gru_4/zeros/packed
sequential_4/gru_4/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2 
sequential_4/gru_4/zeros/ConstÂ
sequential_4/gru_4/zerosFill(sequential_4/gru_4/zeros/packed:output:0'sequential_4/gru_4/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
sequential_4/gru_4/zeros
!sequential_4/gru_4/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!sequential_4/gru_4/transpose/perm¸
sequential_4/gru_4/transpose	Transposegru_4_input*sequential_4/gru_4/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_4/gru_4/transpose
sequential_4/gru_4/Shape_1Shape sequential_4/gru_4/transpose:y:0*
T0*
_output_shapes
:2
sequential_4/gru_4/Shape_1
(sequential_4/gru_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(sequential_4/gru_4/strided_slice_1/stack¢
*sequential_4/gru_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_4/gru_4/strided_slice_1/stack_1¢
*sequential_4/gru_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_4/gru_4/strided_slice_1/stack_2à
"sequential_4/gru_4/strided_slice_1StridedSlice#sequential_4/gru_4/Shape_1:output:01sequential_4/gru_4/strided_slice_1/stack:output:03sequential_4/gru_4/strided_slice_1/stack_1:output:03sequential_4/gru_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"sequential_4/gru_4/strided_slice_1«
.sequential_4/gru_4/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ20
.sequential_4/gru_4/TensorArrayV2/element_shapeþ
 sequential_4/gru_4/TensorArrayV2TensorListReserve7sequential_4/gru_4/TensorArrayV2/element_shape:output:0+sequential_4/gru_4/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02"
 sequential_4/gru_4/TensorArrayV2å
Hsequential_4/gru_4/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2J
Hsequential_4/gru_4/TensorArrayUnstack/TensorListFromTensor/element_shapeÄ
:sequential_4/gru_4/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor sequential_4/gru_4/transpose:y:0Qsequential_4/gru_4/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02<
:sequential_4/gru_4/TensorArrayUnstack/TensorListFromTensor
(sequential_4/gru_4/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(sequential_4/gru_4/strided_slice_2/stack¢
*sequential_4/gru_4/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_4/gru_4/strided_slice_2/stack_1¢
*sequential_4/gru_4/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_4/gru_4/strided_slice_2/stack_2î
"sequential_4/gru_4/strided_slice_2StridedSlice sequential_4/gru_4/transpose:y:01sequential_4/gru_4/strided_slice_2/stack:output:03sequential_4/gru_4/strided_slice_2/stack_1:output:03sequential_4/gru_4/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2$
"sequential_4/gru_4/strided_slice_2è
3sequential_4/gru_4/gru_cell_4/MatMul/ReadVariableOpReadVariableOp<sequential_4_gru_4_gru_cell_4_matmul_readvariableop_resource*
_output_shapes
:	Ø*
dtype025
3sequential_4/gru_4/gru_cell_4/MatMul/ReadVariableOpó
$sequential_4/gru_4/gru_cell_4/MatMulMatMul+sequential_4/gru_4/strided_slice_2:output:0;sequential_4/gru_4/gru_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2&
$sequential_4/gru_4/gru_cell_4/MatMulç
4sequential_4/gru_4/gru_cell_4/BiasAdd/ReadVariableOpReadVariableOp=sequential_4_gru_4_gru_cell_4_biasadd_readvariableop_resource*
_output_shapes	
:Ø*
dtype026
4sequential_4/gru_4/gru_cell_4/BiasAdd/ReadVariableOpú
%sequential_4/gru_4/gru_cell_4/BiasAddBiasAdd.sequential_4/gru_4/gru_cell_4/MatMul:product:0<sequential_4/gru_4/gru_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2'
%sequential_4/gru_4/gru_cell_4/BiasAdd©
-sequential_4/gru_4/gru_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2/
-sequential_4/gru_4/gru_cell_4/split/split_dim§
#sequential_4/gru_4/gru_cell_4/splitSplit6sequential_4/gru_4/gru_cell_4/split/split_dim:output:0.sequential_4/gru_4/gru_cell_4/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2%
#sequential_4/gru_4/gru_cell_4/splitÔ
,sequential_4/gru_4/gru_cell_4/ReadVariableOpReadVariableOp5sequential_4_gru_4_gru_cell_4_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02.
,sequential_4/gru_4/gru_cell_4/ReadVariableOp·
1sequential_4/gru_4/gru_cell_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        23
1sequential_4/gru_4/gru_cell_4/strided_slice/stack»
3sequential_4/gru_4/gru_cell_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      25
3sequential_4/gru_4/gru_cell_4/strided_slice/stack_1»
3sequential_4/gru_4/gru_cell_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      25
3sequential_4/gru_4/gru_cell_4/strided_slice/stack_2²
+sequential_4/gru_4/gru_cell_4/strided_sliceStridedSlice4sequential_4/gru_4/gru_cell_4/ReadVariableOp:value:0:sequential_4/gru_4/gru_cell_4/strided_slice/stack:output:0<sequential_4/gru_4/gru_cell_4/strided_slice/stack_1:output:0<sequential_4/gru_4/gru_cell_4/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2-
+sequential_4/gru_4/gru_cell_4/strided_sliceæ
&sequential_4/gru_4/gru_cell_4/MatMul_1MatMul!sequential_4/gru_4/zeros:output:04sequential_4/gru_4/gru_cell_4/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&sequential_4/gru_4/gru_cell_4/MatMul_1
#sequential_4/gru_4/gru_cell_4/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2%
#sequential_4/gru_4/gru_cell_4/Const­
/sequential_4/gru_4/gru_cell_4/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ21
/sequential_4/gru_4/gru_cell_4/split_1/split_dimç
%sequential_4/gru_4/gru_cell_4/split_1SplitV0sequential_4/gru_4/gru_cell_4/MatMul_1:product:0,sequential_4/gru_4/gru_cell_4/Const:output:08sequential_4/gru_4/gru_cell_4/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2'
%sequential_4/gru_4/gru_cell_4/split_1à
!sequential_4/gru_4/gru_cell_4/addAddV2,sequential_4/gru_4/gru_cell_4/split:output:0.sequential_4/gru_4/gru_cell_4/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2#
!sequential_4/gru_4/gru_cell_4/add³
%sequential_4/gru_4/gru_cell_4/SigmoidSigmoid%sequential_4/gru_4/gru_cell_4/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2'
%sequential_4/gru_4/gru_cell_4/Sigmoidä
#sequential_4/gru_4/gru_cell_4/add_1AddV2,sequential_4/gru_4/gru_cell_4/split:output:1.sequential_4/gru_4/gru_cell_4/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2%
#sequential_4/gru_4/gru_cell_4/add_1¹
'sequential_4/gru_4/gru_cell_4/Sigmoid_1Sigmoid'sequential_4/gru_4/gru_cell_4/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2)
'sequential_4/gru_4/gru_cell_4/Sigmoid_1Ð
!sequential_4/gru_4/gru_cell_4/mulMul+sequential_4/gru_4/gru_cell_4/Sigmoid_1:y:0!sequential_4/gru_4/zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2#
!sequential_4/gru_4/gru_cell_4/mulØ
.sequential_4/gru_4/gru_cell_4/ReadVariableOp_1ReadVariableOp5sequential_4_gru_4_gru_cell_4_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype020
.sequential_4/gru_4/gru_cell_4/ReadVariableOp_1»
3sequential_4/gru_4/gru_cell_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      25
3sequential_4/gru_4/gru_cell_4/strided_slice_1/stack¿
5sequential_4/gru_4/gru_cell_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        27
5sequential_4/gru_4/gru_cell_4/strided_slice_1/stack_1¿
5sequential_4/gru_4/gru_cell_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      27
5sequential_4/gru_4/gru_cell_4/strided_slice_1/stack_2¾
-sequential_4/gru_4/gru_cell_4/strided_slice_1StridedSlice6sequential_4/gru_4/gru_cell_4/ReadVariableOp_1:value:0<sequential_4/gru_4/gru_cell_4/strided_slice_1/stack:output:0>sequential_4/gru_4/gru_cell_4/strided_slice_1/stack_1:output:0>sequential_4/gru_4/gru_cell_4/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2/
-sequential_4/gru_4/gru_cell_4/strided_slice_1ì
&sequential_4/gru_4/gru_cell_4/MatMul_2MatMul%sequential_4/gru_4/gru_cell_4/mul:z:06sequential_4/gru_4/gru_cell_4/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2(
&sequential_4/gru_4/gru_cell_4/MatMul_2æ
#sequential_4/gru_4/gru_cell_4/add_2AddV2,sequential_4/gru_4/gru_cell_4/split:output:20sequential_4/gru_4/gru_cell_4/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2%
#sequential_4/gru_4/gru_cell_4/add_2¬
"sequential_4/gru_4/gru_cell_4/ReluRelu'sequential_4/gru_4/gru_cell_4/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2$
"sequential_4/gru_4/gru_cell_4/ReluÒ
#sequential_4/gru_4/gru_cell_4/mul_1Mul)sequential_4/gru_4/gru_cell_4/Sigmoid:y:0!sequential_4/gru_4/zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2%
#sequential_4/gru_4/gru_cell_4/mul_1
#sequential_4/gru_4/gru_cell_4/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2%
#sequential_4/gru_4/gru_cell_4/sub/xÙ
!sequential_4/gru_4/gru_cell_4/subSub,sequential_4/gru_4/gru_cell_4/sub/x:output:0)sequential_4/gru_4/gru_cell_4/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2#
!sequential_4/gru_4/gru_cell_4/subÝ
#sequential_4/gru_4/gru_cell_4/mul_2Mul%sequential_4/gru_4/gru_cell_4/sub:z:00sequential_4/gru_4/gru_cell_4/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2%
#sequential_4/gru_4/gru_cell_4/mul_2Ø
#sequential_4/gru_4/gru_cell_4/add_3AddV2'sequential_4/gru_4/gru_cell_4/mul_1:z:0'sequential_4/gru_4/gru_cell_4/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2%
#sequential_4/gru_4/gru_cell_4/add_3µ
0sequential_4/gru_4/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÈ   22
0sequential_4/gru_4/TensorArrayV2_1/element_shape
"sequential_4/gru_4/TensorArrayV2_1TensorListReserve9sequential_4/gru_4/TensorArrayV2_1/element_shape:output:0+sequential_4/gru_4/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02$
"sequential_4/gru_4/TensorArrayV2_1t
sequential_4/gru_4/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_4/gru_4/time¥
+sequential_4/gru_4/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2-
+sequential_4/gru_4/while/maximum_iterations
%sequential_4/gru_4/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2'
%sequential_4/gru_4/while/loop_counter²
sequential_4/gru_4/whileWhile.sequential_4/gru_4/while/loop_counter:output:04sequential_4/gru_4/while/maximum_iterations:output:0 sequential_4/gru_4/time:output:0+sequential_4/gru_4/TensorArrayV2_1:handle:0!sequential_4/gru_4/zeros:output:0+sequential_4/gru_4/strided_slice_1:output:0Jsequential_4/gru_4/TensorArrayUnstack/TensorListFromTensor:output_handle:0<sequential_4_gru_4_gru_cell_4_matmul_readvariableop_resource=sequential_4_gru_4_gru_cell_4_biasadd_readvariableop_resource5sequential_4_gru_4_gru_cell_4_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿÈ: : : : : *%
_read_only_resource_inputs
	*0
body(R&
$sequential_4_gru_4_while_body_127882*0
cond(R&
$sequential_4_gru_4_while_cond_127881*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿÈ: : : : : *
parallel_iterations 2
sequential_4/gru_4/whileÛ
Csequential_4/gru_4/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÈ   2E
Csequential_4/gru_4/TensorArrayV2Stack/TensorListStack/element_shapeµ
5sequential_4/gru_4/TensorArrayV2Stack/TensorListStackTensorListStack!sequential_4/gru_4/while:output:3Lsequential_4/gru_4/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*
element_dtype027
5sequential_4/gru_4/TensorArrayV2Stack/TensorListStack§
(sequential_4/gru_4/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2*
(sequential_4/gru_4/strided_slice_3/stack¢
*sequential_4/gru_4/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_4/gru_4/strided_slice_3/stack_1¢
*sequential_4/gru_4/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_4/gru_4/strided_slice_3/stack_2
"sequential_4/gru_4/strided_slice_3StridedSlice>sequential_4/gru_4/TensorArrayV2Stack/TensorListStack:tensor:01sequential_4/gru_4/strided_slice_3/stack:output:03sequential_4/gru_4/strided_slice_3/stack_1:output:03sequential_4/gru_4/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*
shrink_axis_mask2$
"sequential_4/gru_4/strided_slice_3
#sequential_4/gru_4/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2%
#sequential_4/gru_4/transpose_1/permò
sequential_4/gru_4/transpose_1	Transpose>sequential_4/gru_4/TensorArrayV2Stack/TensorListStack:tensor:0,sequential_4/gru_4/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2 
sequential_4/gru_4/transpose_1
sequential_4/gru_4/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_4/gru_4/runtimeÍ
*sequential_4/dense_8/MatMul/ReadVariableOpReadVariableOp3sequential_4_dense_8_matmul_readvariableop_resource*
_output_shapes
:	Èd*
dtype02,
*sequential_4/dense_8/MatMul/ReadVariableOp×
sequential_4/dense_8/MatMulMatMul+sequential_4/gru_4/strided_slice_3:output:02sequential_4/dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
sequential_4/dense_8/MatMulË
+sequential_4/dense_8/BiasAdd/ReadVariableOpReadVariableOp4sequential_4_dense_8_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02-
+sequential_4/dense_8/BiasAdd/ReadVariableOpÕ
sequential_4/dense_8/BiasAddBiasAdd%sequential_4/dense_8/MatMul:product:03sequential_4/dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
sequential_4/dense_8/BiasAdd
sequential_4/dense_8/ReluRelu%sequential_4/dense_8/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
sequential_4/dense_8/ReluÌ
*sequential_4/dense_9/MatMul/ReadVariableOpReadVariableOp3sequential_4_dense_9_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02,
*sequential_4/dense_9/MatMul/ReadVariableOpÓ
sequential_4/dense_9/MatMulMatMul'sequential_4/dense_8/Relu:activations:02sequential_4/dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_4/dense_9/MatMulË
+sequential_4/dense_9/BiasAdd/ReadVariableOpReadVariableOp4sequential_4_dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+sequential_4/dense_9/BiasAdd/ReadVariableOpÕ
sequential_4/dense_9/BiasAddBiasAdd%sequential_4/dense_9/MatMul:product:03sequential_4/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_4/dense_9/BiasAdd
IdentityIdentity%sequential_4/dense_9/BiasAdd:output:0,^sequential_4/dense_8/BiasAdd/ReadVariableOp+^sequential_4/dense_8/MatMul/ReadVariableOp,^sequential_4/dense_9/BiasAdd/ReadVariableOp+^sequential_4/dense_9/MatMul/ReadVariableOp5^sequential_4/gru_4/gru_cell_4/BiasAdd/ReadVariableOp4^sequential_4/gru_4/gru_cell_4/MatMul/ReadVariableOp-^sequential_4/gru_4/gru_cell_4/ReadVariableOp/^sequential_4/gru_4/gru_cell_4/ReadVariableOp_1^sequential_4/gru_4/while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2Z
+sequential_4/dense_8/BiasAdd/ReadVariableOp+sequential_4/dense_8/BiasAdd/ReadVariableOp2X
*sequential_4/dense_8/MatMul/ReadVariableOp*sequential_4/dense_8/MatMul/ReadVariableOp2Z
+sequential_4/dense_9/BiasAdd/ReadVariableOp+sequential_4/dense_9/BiasAdd/ReadVariableOp2X
*sequential_4/dense_9/MatMul/ReadVariableOp*sequential_4/dense_9/MatMul/ReadVariableOp2l
4sequential_4/gru_4/gru_cell_4/BiasAdd/ReadVariableOp4sequential_4/gru_4/gru_cell_4/BiasAdd/ReadVariableOp2j
3sequential_4/gru_4/gru_cell_4/MatMul/ReadVariableOp3sequential_4/gru_4/gru_cell_4/MatMul/ReadVariableOp2\
,sequential_4/gru_4/gru_cell_4/ReadVariableOp,sequential_4/gru_4/gru_cell_4/ReadVariableOp2`
.sequential_4/gru_4/gru_cell_4/ReadVariableOp_1.sequential_4/gru_4/gru_cell_4/ReadVariableOp_124
sequential_4/gru_4/whilesequential_4/gru_4/while:X T
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_namegru_4_input
h

A__inference_gru_4_layer_call_and_return_conditional_losses_129931
inputs_0<
)gru_cell_4_matmul_readvariableop_resource:	Ø9
*gru_cell_4_biasadd_readvariableop_resource:	Ø6
"gru_cell_4_readvariableop_resource:
ÈØ
identity¢!gru_cell_4/BiasAdd/ReadVariableOp¢ gru_cell_4/MatMul/ReadVariableOp¢gru_cell_4/ReadVariableOp¢gru_cell_4/ReadVariableOp_1¢whileF
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
strided_slice_2¯
 gru_cell_4/MatMul/ReadVariableOpReadVariableOp)gru_cell_4_matmul_readvariableop_resource*
_output_shapes
:	Ø*
dtype02"
 gru_cell_4/MatMul/ReadVariableOp§
gru_cell_4/MatMulMatMulstrided_slice_2:output:0(gru_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_cell_4/MatMul®
!gru_cell_4/BiasAdd/ReadVariableOpReadVariableOp*gru_cell_4_biasadd_readvariableop_resource*
_output_shapes	
:Ø*
dtype02#
!gru_cell_4/BiasAdd/ReadVariableOp®
gru_cell_4/BiasAddBiasAddgru_cell_4/MatMul:product:0)gru_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_cell_4/BiasAdd
gru_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
gru_cell_4/split/split_dimÛ
gru_cell_4/splitSplit#gru_cell_4/split/split_dim:output:0gru_cell_4/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
gru_cell_4/split
gru_cell_4/ReadVariableOpReadVariableOp"gru_cell_4_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02
gru_cell_4/ReadVariableOp
gru_cell_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2 
gru_cell_4/strided_slice/stack
 gru_cell_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell_4/strided_slice/stack_1
 gru_cell_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell_4/strided_slice/stack_2À
gru_cell_4/strided_sliceStridedSlice!gru_cell_4/ReadVariableOp:value:0'gru_cell_4/strided_slice/stack:output:0)gru_cell_4/strided_slice/stack_1:output:0)gru_cell_4/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2
gru_cell_4/strided_slice
gru_cell_4/MatMul_1MatMulzeros:output:0!gru_cell_4/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_4/MatMul_1y
gru_cell_4/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2
gru_cell_4/Const
gru_cell_4/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
gru_cell_4/split_1/split_dim
gru_cell_4/split_1SplitVgru_cell_4/MatMul_1:product:0gru_cell_4/Const:output:0%gru_cell_4/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2
gru_cell_4/split_1
gru_cell_4/addAddV2gru_cell_4/split:output:0gru_cell_4/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_4/addz
gru_cell_4/SigmoidSigmoidgru_cell_4/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_4/Sigmoid
gru_cell_4/add_1AddV2gru_cell_4/split:output:1gru_cell_4/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_4/add_1
gru_cell_4/Sigmoid_1Sigmoidgru_cell_4/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_4/Sigmoid_1
gru_cell_4/mulMulgru_cell_4/Sigmoid_1:y:0zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_4/mul
gru_cell_4/ReadVariableOp_1ReadVariableOp"gru_cell_4_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02
gru_cell_4/ReadVariableOp_1
 gru_cell_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell_4/strided_slice_1/stack
"gru_cell_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"gru_cell_4/strided_slice_1/stack_1
"gru_cell_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_4/strided_slice_1/stack_2Ì
gru_cell_4/strided_slice_1StridedSlice#gru_cell_4/ReadVariableOp_1:value:0)gru_cell_4/strided_slice_1/stack:output:0+gru_cell_4/strided_slice_1/stack_1:output:0+gru_cell_4/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2
gru_cell_4/strided_slice_1 
gru_cell_4/MatMul_2MatMulgru_cell_4/mul:z:0#gru_cell_4/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_4/MatMul_2
gru_cell_4/add_2AddV2gru_cell_4/split:output:2gru_cell_4/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_4/add_2s
gru_cell_4/ReluRelugru_cell_4/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_4/Relu
gru_cell_4/mul_1Mulgru_cell_4/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_4/mul_1i
gru_cell_4/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_4/sub/x
gru_cell_4/subSubgru_cell_4/sub/x:output:0gru_cell_4/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_4/sub
gru_cell_4/mul_2Mulgru_cell_4/sub:z:0gru_cell_4/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_4/mul_2
gru_cell_4/add_3AddV2gru_cell_4/mul_1:z:0gru_cell_4/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_4/add_3
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
while/loop_counter¨
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)gru_cell_4_matmul_readvariableop_resource*gru_cell_4_biasadd_readvariableop_resource"gru_cell_4_readvariableop_resource*
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
bodyR
while_body_129835*
condR
while_cond_129834*9
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
runtimeö
IdentityIdentitystrided_slice_3:output:0"^gru_cell_4/BiasAdd/ReadVariableOp!^gru_cell_4/MatMul/ReadVariableOp^gru_cell_4/ReadVariableOp^gru_cell_4/ReadVariableOp_1^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2F
!gru_cell_4/BiasAdd/ReadVariableOp!gru_cell_4/BiasAdd/ReadVariableOp2D
 gru_cell_4/MatMul/ReadVariableOp gru_cell_4/MatMul/ReadVariableOp26
gru_cell_4/ReadVariableOpgru_cell_4/ReadVariableOp2:
gru_cell_4/ReadVariableOp_1gru_cell_4/ReadVariableOp_12
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
Îg

A__inference_gru_4_layer_call_and_return_conditional_losses_128764

inputs<
)gru_cell_4_matmul_readvariableop_resource:	Ø9
*gru_cell_4_biasadd_readvariableop_resource:	Ø6
"gru_cell_4_readvariableop_resource:
ÈØ
identity¢!gru_cell_4/BiasAdd/ReadVariableOp¢ gru_cell_4/MatMul/ReadVariableOp¢gru_cell_4/ReadVariableOp¢gru_cell_4/ReadVariableOp_1¢whileD
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
strided_slice_2¯
 gru_cell_4/MatMul/ReadVariableOpReadVariableOp)gru_cell_4_matmul_readvariableop_resource*
_output_shapes
:	Ø*
dtype02"
 gru_cell_4/MatMul/ReadVariableOp§
gru_cell_4/MatMulMatMulstrided_slice_2:output:0(gru_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_cell_4/MatMul®
!gru_cell_4/BiasAdd/ReadVariableOpReadVariableOp*gru_cell_4_biasadd_readvariableop_resource*
_output_shapes	
:Ø*
dtype02#
!gru_cell_4/BiasAdd/ReadVariableOp®
gru_cell_4/BiasAddBiasAddgru_cell_4/MatMul:product:0)gru_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_cell_4/BiasAdd
gru_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
gru_cell_4/split/split_dimÛ
gru_cell_4/splitSplit#gru_cell_4/split/split_dim:output:0gru_cell_4/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
gru_cell_4/split
gru_cell_4/ReadVariableOpReadVariableOp"gru_cell_4_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02
gru_cell_4/ReadVariableOp
gru_cell_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2 
gru_cell_4/strided_slice/stack
 gru_cell_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell_4/strided_slice/stack_1
 gru_cell_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell_4/strided_slice/stack_2À
gru_cell_4/strided_sliceStridedSlice!gru_cell_4/ReadVariableOp:value:0'gru_cell_4/strided_slice/stack:output:0)gru_cell_4/strided_slice/stack_1:output:0)gru_cell_4/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2
gru_cell_4/strided_slice
gru_cell_4/MatMul_1MatMulzeros:output:0!gru_cell_4/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_4/MatMul_1y
gru_cell_4/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2
gru_cell_4/Const
gru_cell_4/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
gru_cell_4/split_1/split_dim
gru_cell_4/split_1SplitVgru_cell_4/MatMul_1:product:0gru_cell_4/Const:output:0%gru_cell_4/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2
gru_cell_4/split_1
gru_cell_4/addAddV2gru_cell_4/split:output:0gru_cell_4/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_4/addz
gru_cell_4/SigmoidSigmoidgru_cell_4/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_4/Sigmoid
gru_cell_4/add_1AddV2gru_cell_4/split:output:1gru_cell_4/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_4/add_1
gru_cell_4/Sigmoid_1Sigmoidgru_cell_4/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_4/Sigmoid_1
gru_cell_4/mulMulgru_cell_4/Sigmoid_1:y:0zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_4/mul
gru_cell_4/ReadVariableOp_1ReadVariableOp"gru_cell_4_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02
gru_cell_4/ReadVariableOp_1
 gru_cell_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell_4/strided_slice_1/stack
"gru_cell_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"gru_cell_4/strided_slice_1/stack_1
"gru_cell_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_4/strided_slice_1/stack_2Ì
gru_cell_4/strided_slice_1StridedSlice#gru_cell_4/ReadVariableOp_1:value:0)gru_cell_4/strided_slice_1/stack:output:0+gru_cell_4/strided_slice_1/stack_1:output:0+gru_cell_4/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2
gru_cell_4/strided_slice_1 
gru_cell_4/MatMul_2MatMulgru_cell_4/mul:z:0#gru_cell_4/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_4/MatMul_2
gru_cell_4/add_2AddV2gru_cell_4/split:output:2gru_cell_4/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_4/add_2s
gru_cell_4/ReluRelugru_cell_4/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_4/Relu
gru_cell_4/mul_1Mulgru_cell_4/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_4/mul_1i
gru_cell_4/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_4/sub/x
gru_cell_4/subSubgru_cell_4/sub/x:output:0gru_cell_4/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_4/sub
gru_cell_4/mul_2Mulgru_cell_4/sub:z:0gru_cell_4/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_4/mul_2
gru_cell_4/add_3AddV2gru_cell_4/mul_1:z:0gru_cell_4/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_4/add_3
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
while/loop_counter¨
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)gru_cell_4_matmul_readvariableop_resource*gru_cell_4_biasadd_readvariableop_resource"gru_cell_4_readvariableop_resource*
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
bodyR
while_body_128668*
condR
while_cond_128667*9
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
runtimeö
IdentityIdentitystrided_slice_3:output:0"^gru_cell_4/BiasAdd/ReadVariableOp!^gru_cell_4/MatMul/ReadVariableOp^gru_cell_4/ReadVariableOp^gru_cell_4/ReadVariableOp_1^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2F
!gru_cell_4/BiasAdd/ReadVariableOp!gru_cell_4/BiasAdd/ReadVariableOp2D
 gru_cell_4/MatMul/ReadVariableOp gru_cell_4/MatMul/ReadVariableOp26
gru_cell_4/ReadVariableOpgru_cell_4/ReadVariableOp2:
gru_cell_4/ReadVariableOp_1gru_cell_4/ReadVariableOp_12
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ü
ª
while_cond_128084
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_128084___redundant_placeholder04
0while_while_cond_128084___redundant_placeholder14
0while_while_cond_128084___redundant_placeholder24
0while_while_cond_128084___redundant_placeholder3
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


(__inference_dense_9_layer_call_fn_130356

inputs
unknown:d
	unknown_0:
identity¢StatefulPartitionedCalló
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
GPU 2J 8 *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_1287992
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
Îg

A__inference_gru_4_layer_call_and_return_conditional_losses_130102

inputs<
)gru_cell_4_matmul_readvariableop_resource:	Ø9
*gru_cell_4_biasadd_readvariableop_resource:	Ø6
"gru_cell_4_readvariableop_resource:
ÈØ
identity¢!gru_cell_4/BiasAdd/ReadVariableOp¢ gru_cell_4/MatMul/ReadVariableOp¢gru_cell_4/ReadVariableOp¢gru_cell_4/ReadVariableOp_1¢whileD
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
strided_slice_2¯
 gru_cell_4/MatMul/ReadVariableOpReadVariableOp)gru_cell_4_matmul_readvariableop_resource*
_output_shapes
:	Ø*
dtype02"
 gru_cell_4/MatMul/ReadVariableOp§
gru_cell_4/MatMulMatMulstrided_slice_2:output:0(gru_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_cell_4/MatMul®
!gru_cell_4/BiasAdd/ReadVariableOpReadVariableOp*gru_cell_4_biasadd_readvariableop_resource*
_output_shapes	
:Ø*
dtype02#
!gru_cell_4/BiasAdd/ReadVariableOp®
gru_cell_4/BiasAddBiasAddgru_cell_4/MatMul:product:0)gru_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_cell_4/BiasAdd
gru_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
gru_cell_4/split/split_dimÛ
gru_cell_4/splitSplit#gru_cell_4/split/split_dim:output:0gru_cell_4/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
gru_cell_4/split
gru_cell_4/ReadVariableOpReadVariableOp"gru_cell_4_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02
gru_cell_4/ReadVariableOp
gru_cell_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2 
gru_cell_4/strided_slice/stack
 gru_cell_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell_4/strided_slice/stack_1
 gru_cell_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell_4/strided_slice/stack_2À
gru_cell_4/strided_sliceStridedSlice!gru_cell_4/ReadVariableOp:value:0'gru_cell_4/strided_slice/stack:output:0)gru_cell_4/strided_slice/stack_1:output:0)gru_cell_4/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2
gru_cell_4/strided_slice
gru_cell_4/MatMul_1MatMulzeros:output:0!gru_cell_4/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_4/MatMul_1y
gru_cell_4/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2
gru_cell_4/Const
gru_cell_4/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
gru_cell_4/split_1/split_dim
gru_cell_4/split_1SplitVgru_cell_4/MatMul_1:product:0gru_cell_4/Const:output:0%gru_cell_4/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2
gru_cell_4/split_1
gru_cell_4/addAddV2gru_cell_4/split:output:0gru_cell_4/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_4/addz
gru_cell_4/SigmoidSigmoidgru_cell_4/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_4/Sigmoid
gru_cell_4/add_1AddV2gru_cell_4/split:output:1gru_cell_4/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_4/add_1
gru_cell_4/Sigmoid_1Sigmoidgru_cell_4/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_4/Sigmoid_1
gru_cell_4/mulMulgru_cell_4/Sigmoid_1:y:0zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_4/mul
gru_cell_4/ReadVariableOp_1ReadVariableOp"gru_cell_4_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02
gru_cell_4/ReadVariableOp_1
 gru_cell_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell_4/strided_slice_1/stack
"gru_cell_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"gru_cell_4/strided_slice_1/stack_1
"gru_cell_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_4/strided_slice_1/stack_2Ì
gru_cell_4/strided_slice_1StridedSlice#gru_cell_4/ReadVariableOp_1:value:0)gru_cell_4/strided_slice_1/stack:output:0+gru_cell_4/strided_slice_1/stack_1:output:0+gru_cell_4/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2
gru_cell_4/strided_slice_1 
gru_cell_4/MatMul_2MatMulgru_cell_4/mul:z:0#gru_cell_4/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_4/MatMul_2
gru_cell_4/add_2AddV2gru_cell_4/split:output:2gru_cell_4/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_4/add_2s
gru_cell_4/ReluRelugru_cell_4/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_4/Relu
gru_cell_4/mul_1Mulgru_cell_4/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_4/mul_1i
gru_cell_4/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_4/sub/x
gru_cell_4/subSubgru_cell_4/sub/x:output:0gru_cell_4/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_4/sub
gru_cell_4/mul_2Mulgru_cell_4/sub:z:0gru_cell_4/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_4/mul_2
gru_cell_4/add_3AddV2gru_cell_4/mul_1:z:0gru_cell_4/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_4/add_3
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
while/loop_counter¨
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)gru_cell_4_matmul_readvariableop_resource*gru_cell_4_biasadd_readvariableop_resource"gru_cell_4_readvariableop_resource*
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
bodyR
while_body_130006*
condR
while_cond_130005*9
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
runtimeö
IdentityIdentitystrided_slice_3:output:0"^gru_cell_4/BiasAdd/ReadVariableOp!^gru_cell_4/MatMul/ReadVariableOp^gru_cell_4/ReadVariableOp^gru_cell_4/ReadVariableOp_1^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2F
!gru_cell_4/BiasAdd/ReadVariableOp!gru_cell_4/BiasAdd/ReadVariableOp2D
 gru_cell_4/MatMul/ReadVariableOp gru_cell_4/MatMul/ReadVariableOp26
gru_cell_4/ReadVariableOpgru_cell_4/ReadVariableOp2:
gru_cell_4/ReadVariableOp_1gru_cell_4/ReadVariableOp_12
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ñ*
æ
F__inference_gru_cell_4_layer_call_and_return_conditional_losses_128072

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
àV

while_body_129835
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_gru_cell_4_matmul_readvariableop_resource_0:	ØA
2while_gru_cell_4_biasadd_readvariableop_resource_0:	Ø>
*while_gru_cell_4_readvariableop_resource_0:
ÈØ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_gru_cell_4_matmul_readvariableop_resource:	Ø?
0while_gru_cell_4_biasadd_readvariableop_resource:	Ø<
(while_gru_cell_4_readvariableop_resource:
ÈØ¢'while/gru_cell_4/BiasAdd/ReadVariableOp¢&while/gru_cell_4/MatMul/ReadVariableOp¢while/gru_cell_4/ReadVariableOp¢!while/gru_cell_4/ReadVariableOp_1Ã
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
)while/TensorArrayV2Read/TensorListGetItemÃ
&while/gru_cell_4/MatMul/ReadVariableOpReadVariableOp1while_gru_cell_4_matmul_readvariableop_resource_0*
_output_shapes
:	Ø*
dtype02(
&while/gru_cell_4/MatMul/ReadVariableOpÑ
while/gru_cell_4/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/gru_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
while/gru_cell_4/MatMulÂ
'while/gru_cell_4/BiasAdd/ReadVariableOpReadVariableOp2while_gru_cell_4_biasadd_readvariableop_resource_0*
_output_shapes	
:Ø*
dtype02)
'while/gru_cell_4/BiasAdd/ReadVariableOpÆ
while/gru_cell_4/BiasAddBiasAdd!while/gru_cell_4/MatMul:product:0/while/gru_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
while/gru_cell_4/BiasAdd
 while/gru_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 while/gru_cell_4/split/split_dimó
while/gru_cell_4/splitSplit)while/gru_cell_4/split/split_dim:output:0!while/gru_cell_4/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
while/gru_cell_4/split¯
while/gru_cell_4/ReadVariableOpReadVariableOp*while_gru_cell_4_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02!
while/gru_cell_4/ReadVariableOp
$while/gru_cell_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2&
$while/gru_cell_4/strided_slice/stack¡
&while/gru_cell_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell_4/strided_slice/stack_1¡
&while/gru_cell_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell_4/strided_slice/stack_2ä
while/gru_cell_4/strided_sliceStridedSlice'while/gru_cell_4/ReadVariableOp:value:0-while/gru_cell_4/strided_slice/stack:output:0/while/gru_cell_4/strided_slice/stack_1:output:0/while/gru_cell_4/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2 
while/gru_cell_4/strided_slice±
while/gru_cell_4/MatMul_1MatMulwhile_placeholder_2'while/gru_cell_4/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_4/MatMul_1
while/gru_cell_4/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2
while/gru_cell_4/Const
"while/gru_cell_4/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2$
"while/gru_cell_4/split_1/split_dim¦
while/gru_cell_4/split_1SplitV#while/gru_cell_4/MatMul_1:product:0while/gru_cell_4/Const:output:0+while/gru_cell_4/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2
while/gru_cell_4/split_1¬
while/gru_cell_4/addAddV2while/gru_cell_4/split:output:0!while/gru_cell_4/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_4/add
while/gru_cell_4/SigmoidSigmoidwhile/gru_cell_4/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_4/Sigmoid°
while/gru_cell_4/add_1AddV2while/gru_cell_4/split:output:1!while/gru_cell_4/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_4/add_1
while/gru_cell_4/Sigmoid_1Sigmoidwhile/gru_cell_4/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_4/Sigmoid_1
while/gru_cell_4/mulMulwhile/gru_cell_4/Sigmoid_1:y:0while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_4/mul³
!while/gru_cell_4/ReadVariableOp_1ReadVariableOp*while_gru_cell_4_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02#
!while/gru_cell_4/ReadVariableOp_1¡
&while/gru_cell_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell_4/strided_slice_1/stack¥
(while/gru_cell_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/gru_cell_4/strided_slice_1/stack_1¥
(while/gru_cell_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_4/strided_slice_1/stack_2ð
 while/gru_cell_4/strided_slice_1StridedSlice)while/gru_cell_4/ReadVariableOp_1:value:0/while/gru_cell_4/strided_slice_1/stack:output:01while/gru_cell_4/strided_slice_1/stack_1:output:01while/gru_cell_4/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2"
 while/gru_cell_4/strided_slice_1¸
while/gru_cell_4/MatMul_2MatMulwhile/gru_cell_4/mul:z:0)while/gru_cell_4/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_4/MatMul_2²
while/gru_cell_4/add_2AddV2while/gru_cell_4/split:output:2#while/gru_cell_4/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_4/add_2
while/gru_cell_4/ReluReluwhile/gru_cell_4/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_4/Relu
while/gru_cell_4/mul_1Mulwhile/gru_cell_4/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_4/mul_1u
while/gru_cell_4/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
while/gru_cell_4/sub/x¥
while/gru_cell_4/subSubwhile/gru_cell_4/sub/x:output:0while/gru_cell_4/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_4/sub©
while/gru_cell_4/mul_2Mulwhile/gru_cell_4/sub:z:0#while/gru_cell_4/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_4/mul_2¤
while/gru_cell_4/add_3AddV2while/gru_cell_4/mul_1:z:0while/gru_cell_4/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_4/add_3Þ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_4/add_3:z:0*
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
while/add_1÷
while/IdentityIdentitywhile/add_1:z:0(^while/gru_cell_4/BiasAdd/ReadVariableOp'^while/gru_cell_4/MatMul/ReadVariableOp ^while/gru_cell_4/ReadVariableOp"^while/gru_cell_4/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations(^while/gru_cell_4/BiasAdd/ReadVariableOp'^while/gru_cell_4/MatMul/ReadVariableOp ^while/gru_cell_4/ReadVariableOp"^while/gru_cell_4/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_1ù
while/Identity_2Identitywhile/add:z:0(^while/gru_cell_4/BiasAdd/ReadVariableOp'^while/gru_cell_4/MatMul/ReadVariableOp ^while/gru_cell_4/ReadVariableOp"^while/gru_cell_4/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_2¦
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/gru_cell_4/BiasAdd/ReadVariableOp'^while/gru_cell_4/MatMul/ReadVariableOp ^while/gru_cell_4/ReadVariableOp"^while/gru_cell_4/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/gru_cell_4/add_3:z:0(^while/gru_cell_4/BiasAdd/ReadVariableOp'^while/gru_cell_4/MatMul/ReadVariableOp ^while/gru_cell_4/ReadVariableOp"^while/gru_cell_4/ReadVariableOp_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_4"f
0while_gru_cell_4_biasadd_readvariableop_resource2while_gru_cell_4_biasadd_readvariableop_resource_0"d
/while_gru_cell_4_matmul_readvariableop_resource1while_gru_cell_4_matmul_readvariableop_resource_0"V
(while_gru_cell_4_readvariableop_resource*while_gru_cell_4_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿÈ: : : : : 2R
'while/gru_cell_4/BiasAdd/ReadVariableOp'while/gru_cell_4/BiasAdd/ReadVariableOp2P
&while/gru_cell_4/MatMul/ReadVariableOp&while/gru_cell_4/MatMul/ReadVariableOp2B
while/gru_cell_4/ReadVariableOpwhile/gru_cell_4/ReadVariableOp2F
!while/gru_cell_4/ReadVariableOp_1!while/gru_cell_4/ReadVariableOp_1: 
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
ü
ª
while_cond_130176
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_130176___redundant_placeholder04
0while_while_cond_130176___redundant_placeholder14
0while_while_cond_130176___redundant_placeholder24
0while_while_cond_130176___redundant_placeholder3
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
Ï	
ô
C__inference_dense_9_layer_call_and_return_conditional_losses_128799

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
Îg

A__inference_gru_4_layer_call_and_return_conditional_losses_130273

inputs<
)gru_cell_4_matmul_readvariableop_resource:	Ø9
*gru_cell_4_biasadd_readvariableop_resource:	Ø6
"gru_cell_4_readvariableop_resource:
ÈØ
identity¢!gru_cell_4/BiasAdd/ReadVariableOp¢ gru_cell_4/MatMul/ReadVariableOp¢gru_cell_4/ReadVariableOp¢gru_cell_4/ReadVariableOp_1¢whileD
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
strided_slice_2¯
 gru_cell_4/MatMul/ReadVariableOpReadVariableOp)gru_cell_4_matmul_readvariableop_resource*
_output_shapes
:	Ø*
dtype02"
 gru_cell_4/MatMul/ReadVariableOp§
gru_cell_4/MatMulMatMulstrided_slice_2:output:0(gru_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_cell_4/MatMul®
!gru_cell_4/BiasAdd/ReadVariableOpReadVariableOp*gru_cell_4_biasadd_readvariableop_resource*
_output_shapes	
:Ø*
dtype02#
!gru_cell_4/BiasAdd/ReadVariableOp®
gru_cell_4/BiasAddBiasAddgru_cell_4/MatMul:product:0)gru_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_cell_4/BiasAdd
gru_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
gru_cell_4/split/split_dimÛ
gru_cell_4/splitSplit#gru_cell_4/split/split_dim:output:0gru_cell_4/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
gru_cell_4/split
gru_cell_4/ReadVariableOpReadVariableOp"gru_cell_4_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02
gru_cell_4/ReadVariableOp
gru_cell_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2 
gru_cell_4/strided_slice/stack
 gru_cell_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell_4/strided_slice/stack_1
 gru_cell_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell_4/strided_slice/stack_2À
gru_cell_4/strided_sliceStridedSlice!gru_cell_4/ReadVariableOp:value:0'gru_cell_4/strided_slice/stack:output:0)gru_cell_4/strided_slice/stack_1:output:0)gru_cell_4/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2
gru_cell_4/strided_slice
gru_cell_4/MatMul_1MatMulzeros:output:0!gru_cell_4/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_4/MatMul_1y
gru_cell_4/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2
gru_cell_4/Const
gru_cell_4/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
gru_cell_4/split_1/split_dim
gru_cell_4/split_1SplitVgru_cell_4/MatMul_1:product:0gru_cell_4/Const:output:0%gru_cell_4/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2
gru_cell_4/split_1
gru_cell_4/addAddV2gru_cell_4/split:output:0gru_cell_4/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_4/addz
gru_cell_4/SigmoidSigmoidgru_cell_4/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_4/Sigmoid
gru_cell_4/add_1AddV2gru_cell_4/split:output:1gru_cell_4/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_4/add_1
gru_cell_4/Sigmoid_1Sigmoidgru_cell_4/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_4/Sigmoid_1
gru_cell_4/mulMulgru_cell_4/Sigmoid_1:y:0zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_4/mul
gru_cell_4/ReadVariableOp_1ReadVariableOp"gru_cell_4_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02
gru_cell_4/ReadVariableOp_1
 gru_cell_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell_4/strided_slice_1/stack
"gru_cell_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"gru_cell_4/strided_slice_1/stack_1
"gru_cell_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_4/strided_slice_1/stack_2Ì
gru_cell_4/strided_slice_1StridedSlice#gru_cell_4/ReadVariableOp_1:value:0)gru_cell_4/strided_slice_1/stack:output:0+gru_cell_4/strided_slice_1/stack_1:output:0+gru_cell_4/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2
gru_cell_4/strided_slice_1 
gru_cell_4/MatMul_2MatMulgru_cell_4/mul:z:0#gru_cell_4/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_4/MatMul_2
gru_cell_4/add_2AddV2gru_cell_4/split:output:2gru_cell_4/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_4/add_2s
gru_cell_4/ReluRelugru_cell_4/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_4/Relu
gru_cell_4/mul_1Mulgru_cell_4/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_4/mul_1i
gru_cell_4/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_4/sub/x
gru_cell_4/subSubgru_cell_4/sub/x:output:0gru_cell_4/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_4/sub
gru_cell_4/mul_2Mulgru_cell_4/sub:z:0gru_cell_4/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_4/mul_2
gru_cell_4/add_3AddV2gru_cell_4/mul_1:z:0gru_cell_4/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_4/add_3
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
while/loop_counter¨
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)gru_cell_4_matmul_readvariableop_resource*gru_cell_4_biasadd_readvariableop_resource"gru_cell_4_readvariableop_resource*
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
bodyR
while_body_130177*
condR
while_cond_130176*9
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
runtimeö
IdentityIdentitystrided_slice_3:output:0"^gru_cell_4/BiasAdd/ReadVariableOp!^gru_cell_4/MatMul/ReadVariableOp^gru_cell_4/ReadVariableOp^gru_cell_4/ReadVariableOp_1^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2F
!gru_cell_4/BiasAdd/ReadVariableOp!gru_cell_4/BiasAdd/ReadVariableOp2D
 gru_cell_4/MatMul/ReadVariableOp gru_cell_4/MatMul/ReadVariableOp26
gru_cell_4/ReadVariableOpgru_cell_4/ReadVariableOp2:
gru_cell_4/ReadVariableOp_1gru_cell_4/ReadVariableOp_12
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Øy
ç
$sequential_4_gru_4_while_body_127882B
>sequential_4_gru_4_while_sequential_4_gru_4_while_loop_counterH
Dsequential_4_gru_4_while_sequential_4_gru_4_while_maximum_iterations(
$sequential_4_gru_4_while_placeholder*
&sequential_4_gru_4_while_placeholder_1*
&sequential_4_gru_4_while_placeholder_2A
=sequential_4_gru_4_while_sequential_4_gru_4_strided_slice_1_0}
ysequential_4_gru_4_while_tensorarrayv2read_tensorlistgetitem_sequential_4_gru_4_tensorarrayunstack_tensorlistfromtensor_0W
Dsequential_4_gru_4_while_gru_cell_4_matmul_readvariableop_resource_0:	ØT
Esequential_4_gru_4_while_gru_cell_4_biasadd_readvariableop_resource_0:	ØQ
=sequential_4_gru_4_while_gru_cell_4_readvariableop_resource_0:
ÈØ%
!sequential_4_gru_4_while_identity'
#sequential_4_gru_4_while_identity_1'
#sequential_4_gru_4_while_identity_2'
#sequential_4_gru_4_while_identity_3'
#sequential_4_gru_4_while_identity_4?
;sequential_4_gru_4_while_sequential_4_gru_4_strided_slice_1{
wsequential_4_gru_4_while_tensorarrayv2read_tensorlistgetitem_sequential_4_gru_4_tensorarrayunstack_tensorlistfromtensorU
Bsequential_4_gru_4_while_gru_cell_4_matmul_readvariableop_resource:	ØR
Csequential_4_gru_4_while_gru_cell_4_biasadd_readvariableop_resource:	ØO
;sequential_4_gru_4_while_gru_cell_4_readvariableop_resource:
ÈØ¢:sequential_4/gru_4/while/gru_cell_4/BiasAdd/ReadVariableOp¢9sequential_4/gru_4/while/gru_cell_4/MatMul/ReadVariableOp¢2sequential_4/gru_4/while/gru_cell_4/ReadVariableOp¢4sequential_4/gru_4/while/gru_cell_4/ReadVariableOp_1é
Jsequential_4/gru_4/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2L
Jsequential_4/gru_4/while/TensorArrayV2Read/TensorListGetItem/element_shapeÅ
<sequential_4/gru_4/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemysequential_4_gru_4_while_tensorarrayv2read_tensorlistgetitem_sequential_4_gru_4_tensorarrayunstack_tensorlistfromtensor_0$sequential_4_gru_4_while_placeholderSsequential_4/gru_4/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02>
<sequential_4/gru_4/while/TensorArrayV2Read/TensorListGetItemü
9sequential_4/gru_4/while/gru_cell_4/MatMul/ReadVariableOpReadVariableOpDsequential_4_gru_4_while_gru_cell_4_matmul_readvariableop_resource_0*
_output_shapes
:	Ø*
dtype02;
9sequential_4/gru_4/while/gru_cell_4/MatMul/ReadVariableOp
*sequential_4/gru_4/while/gru_cell_4/MatMulMatMulCsequential_4/gru_4/while/TensorArrayV2Read/TensorListGetItem:item:0Asequential_4/gru_4/while/gru_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2,
*sequential_4/gru_4/while/gru_cell_4/MatMulû
:sequential_4/gru_4/while/gru_cell_4/BiasAdd/ReadVariableOpReadVariableOpEsequential_4_gru_4_while_gru_cell_4_biasadd_readvariableop_resource_0*
_output_shapes	
:Ø*
dtype02<
:sequential_4/gru_4/while/gru_cell_4/BiasAdd/ReadVariableOp
+sequential_4/gru_4/while/gru_cell_4/BiasAddBiasAdd4sequential_4/gru_4/while/gru_cell_4/MatMul:product:0Bsequential_4/gru_4/while/gru_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2-
+sequential_4/gru_4/while/gru_cell_4/BiasAddµ
3sequential_4/gru_4/while/gru_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ25
3sequential_4/gru_4/while/gru_cell_4/split/split_dim¿
)sequential_4/gru_4/while/gru_cell_4/splitSplit<sequential_4/gru_4/while/gru_cell_4/split/split_dim:output:04sequential_4/gru_4/while/gru_cell_4/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2+
)sequential_4/gru_4/while/gru_cell_4/splitè
2sequential_4/gru_4/while/gru_cell_4/ReadVariableOpReadVariableOp=sequential_4_gru_4_while_gru_cell_4_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype024
2sequential_4/gru_4/while/gru_cell_4/ReadVariableOpÃ
7sequential_4/gru_4/while/gru_cell_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7sequential_4/gru_4/while/gru_cell_4/strided_slice/stackÇ
9sequential_4/gru_4/while/gru_cell_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2;
9sequential_4/gru_4/while/gru_cell_4/strided_slice/stack_1Ç
9sequential_4/gru_4/while/gru_cell_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9sequential_4/gru_4/while/gru_cell_4/strided_slice/stack_2Ö
1sequential_4/gru_4/while/gru_cell_4/strided_sliceStridedSlice:sequential_4/gru_4/while/gru_cell_4/ReadVariableOp:value:0@sequential_4/gru_4/while/gru_cell_4/strided_slice/stack:output:0Bsequential_4/gru_4/while/gru_cell_4/strided_slice/stack_1:output:0Bsequential_4/gru_4/while/gru_cell_4/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask23
1sequential_4/gru_4/while/gru_cell_4/strided_sliceý
,sequential_4/gru_4/while/gru_cell_4/MatMul_1MatMul&sequential_4_gru_4_while_placeholder_2:sequential_4/gru_4/while/gru_cell_4/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2.
,sequential_4/gru_4/while/gru_cell_4/MatMul_1«
)sequential_4/gru_4/while/gru_cell_4/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2+
)sequential_4/gru_4/while/gru_cell_4/Const¹
5sequential_4/gru_4/while/gru_cell_4/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ27
5sequential_4/gru_4/while/gru_cell_4/split_1/split_dim
+sequential_4/gru_4/while/gru_cell_4/split_1SplitV6sequential_4/gru_4/while/gru_cell_4/MatMul_1:product:02sequential_4/gru_4/while/gru_cell_4/Const:output:0>sequential_4/gru_4/while/gru_cell_4/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2-
+sequential_4/gru_4/while/gru_cell_4/split_1ø
'sequential_4/gru_4/while/gru_cell_4/addAddV22sequential_4/gru_4/while/gru_cell_4/split:output:04sequential_4/gru_4/while/gru_cell_4/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2)
'sequential_4/gru_4/while/gru_cell_4/addÅ
+sequential_4/gru_4/while/gru_cell_4/SigmoidSigmoid+sequential_4/gru_4/while/gru_cell_4/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2-
+sequential_4/gru_4/while/gru_cell_4/Sigmoidü
)sequential_4/gru_4/while/gru_cell_4/add_1AddV22sequential_4/gru_4/while/gru_cell_4/split:output:14sequential_4/gru_4/while/gru_cell_4/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2+
)sequential_4/gru_4/while/gru_cell_4/add_1Ë
-sequential_4/gru_4/while/gru_cell_4/Sigmoid_1Sigmoid-sequential_4/gru_4/while/gru_cell_4/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2/
-sequential_4/gru_4/while/gru_cell_4/Sigmoid_1ç
'sequential_4/gru_4/while/gru_cell_4/mulMul1sequential_4/gru_4/while/gru_cell_4/Sigmoid_1:y:0&sequential_4_gru_4_while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2)
'sequential_4/gru_4/while/gru_cell_4/mulì
4sequential_4/gru_4/while/gru_cell_4/ReadVariableOp_1ReadVariableOp=sequential_4_gru_4_while_gru_cell_4_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype026
4sequential_4/gru_4/while/gru_cell_4/ReadVariableOp_1Ç
9sequential_4/gru_4/while/gru_cell_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2;
9sequential_4/gru_4/while/gru_cell_4/strided_slice_1/stackË
;sequential_4/gru_4/while/gru_cell_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2=
;sequential_4/gru_4/while/gru_cell_4/strided_slice_1/stack_1Ë
;sequential_4/gru_4/while/gru_cell_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;sequential_4/gru_4/while/gru_cell_4/strided_slice_1/stack_2â
3sequential_4/gru_4/while/gru_cell_4/strided_slice_1StridedSlice<sequential_4/gru_4/while/gru_cell_4/ReadVariableOp_1:value:0Bsequential_4/gru_4/while/gru_cell_4/strided_slice_1/stack:output:0Dsequential_4/gru_4/while/gru_cell_4/strided_slice_1/stack_1:output:0Dsequential_4/gru_4/while/gru_cell_4/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask25
3sequential_4/gru_4/while/gru_cell_4/strided_slice_1
,sequential_4/gru_4/while/gru_cell_4/MatMul_2MatMul+sequential_4/gru_4/while/gru_cell_4/mul:z:0<sequential_4/gru_4/while/gru_cell_4/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2.
,sequential_4/gru_4/while/gru_cell_4/MatMul_2þ
)sequential_4/gru_4/while/gru_cell_4/add_2AddV22sequential_4/gru_4/while/gru_cell_4/split:output:26sequential_4/gru_4/while/gru_cell_4/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2+
)sequential_4/gru_4/while/gru_cell_4/add_2¾
(sequential_4/gru_4/while/gru_cell_4/ReluRelu-sequential_4/gru_4/while/gru_cell_4/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2*
(sequential_4/gru_4/while/gru_cell_4/Relué
)sequential_4/gru_4/while/gru_cell_4/mul_1Mul/sequential_4/gru_4/while/gru_cell_4/Sigmoid:y:0&sequential_4_gru_4_while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2+
)sequential_4/gru_4/while/gru_cell_4/mul_1
)sequential_4/gru_4/while/gru_cell_4/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2+
)sequential_4/gru_4/while/gru_cell_4/sub/xñ
'sequential_4/gru_4/while/gru_cell_4/subSub2sequential_4/gru_4/while/gru_cell_4/sub/x:output:0/sequential_4/gru_4/while/gru_cell_4/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2)
'sequential_4/gru_4/while/gru_cell_4/subõ
)sequential_4/gru_4/while/gru_cell_4/mul_2Mul+sequential_4/gru_4/while/gru_cell_4/sub:z:06sequential_4/gru_4/while/gru_cell_4/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2+
)sequential_4/gru_4/while/gru_cell_4/mul_2ð
)sequential_4/gru_4/while/gru_cell_4/add_3AddV2-sequential_4/gru_4/while/gru_cell_4/mul_1:z:0-sequential_4/gru_4/while/gru_cell_4/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2+
)sequential_4/gru_4/while/gru_cell_4/add_3½
=sequential_4/gru_4/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem&sequential_4_gru_4_while_placeholder_1$sequential_4_gru_4_while_placeholder-sequential_4/gru_4/while/gru_cell_4/add_3:z:0*
_output_shapes
: *
element_dtype02?
=sequential_4/gru_4/while/TensorArrayV2Write/TensorListSetItem
sequential_4/gru_4/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2 
sequential_4/gru_4/while/add/yµ
sequential_4/gru_4/while/addAddV2$sequential_4_gru_4_while_placeholder'sequential_4/gru_4/while/add/y:output:0*
T0*
_output_shapes
: 2
sequential_4/gru_4/while/add
 sequential_4/gru_4/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2"
 sequential_4/gru_4/while/add_1/yÕ
sequential_4/gru_4/while/add_1AddV2>sequential_4_gru_4_while_sequential_4_gru_4_while_loop_counter)sequential_4/gru_4/while/add_1/y:output:0*
T0*
_output_shapes
: 2 
sequential_4/gru_4/while/add_1ü
!sequential_4/gru_4/while/IdentityIdentity"sequential_4/gru_4/while/add_1:z:0;^sequential_4/gru_4/while/gru_cell_4/BiasAdd/ReadVariableOp:^sequential_4/gru_4/while/gru_cell_4/MatMul/ReadVariableOp3^sequential_4/gru_4/while/gru_cell_4/ReadVariableOp5^sequential_4/gru_4/while/gru_cell_4/ReadVariableOp_1*
T0*
_output_shapes
: 2#
!sequential_4/gru_4/while/Identity¢
#sequential_4/gru_4/while/Identity_1IdentityDsequential_4_gru_4_while_sequential_4_gru_4_while_maximum_iterations;^sequential_4/gru_4/while/gru_cell_4/BiasAdd/ReadVariableOp:^sequential_4/gru_4/while/gru_cell_4/MatMul/ReadVariableOp3^sequential_4/gru_4/while/gru_cell_4/ReadVariableOp5^sequential_4/gru_4/while/gru_cell_4/ReadVariableOp_1*
T0*
_output_shapes
: 2%
#sequential_4/gru_4/while/Identity_1þ
#sequential_4/gru_4/while/Identity_2Identity sequential_4/gru_4/while/add:z:0;^sequential_4/gru_4/while/gru_cell_4/BiasAdd/ReadVariableOp:^sequential_4/gru_4/while/gru_cell_4/MatMul/ReadVariableOp3^sequential_4/gru_4/while/gru_cell_4/ReadVariableOp5^sequential_4/gru_4/while/gru_cell_4/ReadVariableOp_1*
T0*
_output_shapes
: 2%
#sequential_4/gru_4/while/Identity_2«
#sequential_4/gru_4/while/Identity_3IdentityMsequential_4/gru_4/while/TensorArrayV2Write/TensorListSetItem:output_handle:0;^sequential_4/gru_4/while/gru_cell_4/BiasAdd/ReadVariableOp:^sequential_4/gru_4/while/gru_cell_4/MatMul/ReadVariableOp3^sequential_4/gru_4/while/gru_cell_4/ReadVariableOp5^sequential_4/gru_4/while/gru_cell_4/ReadVariableOp_1*
T0*
_output_shapes
: 2%
#sequential_4/gru_4/while/Identity_3
#sequential_4/gru_4/while/Identity_4Identity-sequential_4/gru_4/while/gru_cell_4/add_3:z:0;^sequential_4/gru_4/while/gru_cell_4/BiasAdd/ReadVariableOp:^sequential_4/gru_4/while/gru_cell_4/MatMul/ReadVariableOp3^sequential_4/gru_4/while/gru_cell_4/ReadVariableOp5^sequential_4/gru_4/while/gru_cell_4/ReadVariableOp_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2%
#sequential_4/gru_4/while/Identity_4"
Csequential_4_gru_4_while_gru_cell_4_biasadd_readvariableop_resourceEsequential_4_gru_4_while_gru_cell_4_biasadd_readvariableop_resource_0"
Bsequential_4_gru_4_while_gru_cell_4_matmul_readvariableop_resourceDsequential_4_gru_4_while_gru_cell_4_matmul_readvariableop_resource_0"|
;sequential_4_gru_4_while_gru_cell_4_readvariableop_resource=sequential_4_gru_4_while_gru_cell_4_readvariableop_resource_0"O
!sequential_4_gru_4_while_identity*sequential_4/gru_4/while/Identity:output:0"S
#sequential_4_gru_4_while_identity_1,sequential_4/gru_4/while/Identity_1:output:0"S
#sequential_4_gru_4_while_identity_2,sequential_4/gru_4/while/Identity_2:output:0"S
#sequential_4_gru_4_while_identity_3,sequential_4/gru_4/while/Identity_3:output:0"S
#sequential_4_gru_4_while_identity_4,sequential_4/gru_4/while/Identity_4:output:0"|
;sequential_4_gru_4_while_sequential_4_gru_4_strided_slice_1=sequential_4_gru_4_while_sequential_4_gru_4_strided_slice_1_0"ô
wsequential_4_gru_4_while_tensorarrayv2read_tensorlistgetitem_sequential_4_gru_4_tensorarrayunstack_tensorlistfromtensorysequential_4_gru_4_while_tensorarrayv2read_tensorlistgetitem_sequential_4_gru_4_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿÈ: : : : : 2x
:sequential_4/gru_4/while/gru_cell_4/BiasAdd/ReadVariableOp:sequential_4/gru_4/while/gru_cell_4/BiasAdd/ReadVariableOp2v
9sequential_4/gru_4/while/gru_cell_4/MatMul/ReadVariableOp9sequential_4/gru_4/while/gru_cell_4/MatMul/ReadVariableOp2h
2sequential_4/gru_4/while/gru_cell_4/ReadVariableOp2sequential_4/gru_4/while/gru_cell_4/ReadVariableOp2l
4sequential_4/gru_4/while/gru_cell_4/ReadVariableOp_14sequential_4/gru_4/while/gru_cell_4/ReadVariableOp_1: 
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
¾
¶
H__inference_sequential_4_layer_call_and_return_conditional_losses_129367

inputsB
/gru_4_gru_cell_4_matmul_readvariableop_resource:	Ø?
0gru_4_gru_cell_4_biasadd_readvariableop_resource:	Ø<
(gru_4_gru_cell_4_readvariableop_resource:
ÈØ9
&dense_8_matmul_readvariableop_resource:	Èd5
'dense_8_biasadd_readvariableop_resource:d8
&dense_9_matmul_readvariableop_resource:d5
'dense_9_biasadd_readvariableop_resource:
identity¢dense_8/BiasAdd/ReadVariableOp¢dense_8/MatMul/ReadVariableOp¢dense_9/BiasAdd/ReadVariableOp¢dense_9/MatMul/ReadVariableOp¢'gru_4/gru_cell_4/BiasAdd/ReadVariableOp¢&gru_4/gru_cell_4/MatMul/ReadVariableOp¢gru_4/gru_cell_4/ReadVariableOp¢!gru_4/gru_cell_4/ReadVariableOp_1¢gru_4/whileP
gru_4/ShapeShapeinputs*
T0*
_output_shapes
:2
gru_4/Shape
gru_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_4/strided_slice/stack
gru_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_4/strided_slice/stack_1
gru_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_4/strided_slice/stack_2
gru_4/strided_sliceStridedSlicegru_4/Shape:output:0"gru_4/strided_slice/stack:output:0$gru_4/strided_slice/stack_1:output:0$gru_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru_4/strided_slicei
gru_4/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :È2
gru_4/zeros/mul/y
gru_4/zeros/mulMulgru_4/strided_slice:output:0gru_4/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
gru_4/zeros/mulk
gru_4/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
gru_4/zeros/Less/y
gru_4/zeros/LessLessgru_4/zeros/mul:z:0gru_4/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
gru_4/zeros/Lesso
gru_4/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :È2
gru_4/zeros/packed/1
gru_4/zeros/packedPackgru_4/strided_slice:output:0gru_4/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
gru_4/zeros/packedk
gru_4/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_4/zeros/Const
gru_4/zerosFillgru_4/zeros/packed:output:0gru_4/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_4/zeros
gru_4/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_4/transpose/perm
gru_4/transpose	Transposeinputsgru_4/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_4/transposea
gru_4/Shape_1Shapegru_4/transpose:y:0*
T0*
_output_shapes
:2
gru_4/Shape_1
gru_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_4/strided_slice_1/stack
gru_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_4/strided_slice_1/stack_1
gru_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_4/strided_slice_1/stack_2
gru_4/strided_slice_1StridedSlicegru_4/Shape_1:output:0$gru_4/strided_slice_1/stack:output:0&gru_4/strided_slice_1/stack_1:output:0&gru_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru_4/strided_slice_1
!gru_4/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2#
!gru_4/TensorArrayV2/element_shapeÊ
gru_4/TensorArrayV2TensorListReserve*gru_4/TensorArrayV2/element_shape:output:0gru_4/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_4/TensorArrayV2Ë
;gru_4/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2=
;gru_4/TensorArrayUnstack/TensorListFromTensor/element_shape
-gru_4/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorgru_4/transpose:y:0Dgru_4/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02/
-gru_4/TensorArrayUnstack/TensorListFromTensor
gru_4/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_4/strided_slice_2/stack
gru_4/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_4/strided_slice_2/stack_1
gru_4/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_4/strided_slice_2/stack_2 
gru_4/strided_slice_2StridedSlicegru_4/transpose:y:0$gru_4/strided_slice_2/stack:output:0&gru_4/strided_slice_2/stack_1:output:0&gru_4/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
gru_4/strided_slice_2Á
&gru_4/gru_cell_4/MatMul/ReadVariableOpReadVariableOp/gru_4_gru_cell_4_matmul_readvariableop_resource*
_output_shapes
:	Ø*
dtype02(
&gru_4/gru_cell_4/MatMul/ReadVariableOp¿
gru_4/gru_cell_4/MatMulMatMulgru_4/strided_slice_2:output:0.gru_4/gru_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_4/gru_cell_4/MatMulÀ
'gru_4/gru_cell_4/BiasAdd/ReadVariableOpReadVariableOp0gru_4_gru_cell_4_biasadd_readvariableop_resource*
_output_shapes	
:Ø*
dtype02)
'gru_4/gru_cell_4/BiasAdd/ReadVariableOpÆ
gru_4/gru_cell_4/BiasAddBiasAdd!gru_4/gru_cell_4/MatMul:product:0/gru_4/gru_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_4/gru_cell_4/BiasAdd
 gru_4/gru_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 gru_4/gru_cell_4/split/split_dimó
gru_4/gru_cell_4/splitSplit)gru_4/gru_cell_4/split/split_dim:output:0!gru_4/gru_cell_4/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
gru_4/gru_cell_4/split­
gru_4/gru_cell_4/ReadVariableOpReadVariableOp(gru_4_gru_cell_4_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02!
gru_4/gru_cell_4/ReadVariableOp
$gru_4/gru_cell_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2&
$gru_4/gru_cell_4/strided_slice/stack¡
&gru_4/gru_cell_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2(
&gru_4/gru_cell_4/strided_slice/stack_1¡
&gru_4/gru_cell_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&gru_4/gru_cell_4/strided_slice/stack_2ä
gru_4/gru_cell_4/strided_sliceStridedSlice'gru_4/gru_cell_4/ReadVariableOp:value:0-gru_4/gru_cell_4/strided_slice/stack:output:0/gru_4/gru_cell_4/strided_slice/stack_1:output:0/gru_4/gru_cell_4/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2 
gru_4/gru_cell_4/strided_slice²
gru_4/gru_cell_4/MatMul_1MatMulgru_4/zeros:output:0'gru_4/gru_cell_4/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_4/gru_cell_4/MatMul_1
gru_4/gru_cell_4/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2
gru_4/gru_cell_4/Const
"gru_4/gru_cell_4/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2$
"gru_4/gru_cell_4/split_1/split_dim¦
gru_4/gru_cell_4/split_1SplitV#gru_4/gru_cell_4/MatMul_1:product:0gru_4/gru_cell_4/Const:output:0+gru_4/gru_cell_4/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2
gru_4/gru_cell_4/split_1¬
gru_4/gru_cell_4/addAddV2gru_4/gru_cell_4/split:output:0!gru_4/gru_cell_4/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_4/gru_cell_4/add
gru_4/gru_cell_4/SigmoidSigmoidgru_4/gru_cell_4/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_4/gru_cell_4/Sigmoid°
gru_4/gru_cell_4/add_1AddV2gru_4/gru_cell_4/split:output:1!gru_4/gru_cell_4/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_4/gru_cell_4/add_1
gru_4/gru_cell_4/Sigmoid_1Sigmoidgru_4/gru_cell_4/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_4/gru_cell_4/Sigmoid_1
gru_4/gru_cell_4/mulMulgru_4/gru_cell_4/Sigmoid_1:y:0gru_4/zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_4/gru_cell_4/mul±
!gru_4/gru_cell_4/ReadVariableOp_1ReadVariableOp(gru_4_gru_cell_4_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02#
!gru_4/gru_cell_4/ReadVariableOp_1¡
&gru_4/gru_cell_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2(
&gru_4/gru_cell_4/strided_slice_1/stack¥
(gru_4/gru_cell_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(gru_4/gru_cell_4/strided_slice_1/stack_1¥
(gru_4/gru_cell_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(gru_4/gru_cell_4/strided_slice_1/stack_2ð
 gru_4/gru_cell_4/strided_slice_1StridedSlice)gru_4/gru_cell_4/ReadVariableOp_1:value:0/gru_4/gru_cell_4/strided_slice_1/stack:output:01gru_4/gru_cell_4/strided_slice_1/stack_1:output:01gru_4/gru_cell_4/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2"
 gru_4/gru_cell_4/strided_slice_1¸
gru_4/gru_cell_4/MatMul_2MatMulgru_4/gru_cell_4/mul:z:0)gru_4/gru_cell_4/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_4/gru_cell_4/MatMul_2²
gru_4/gru_cell_4/add_2AddV2gru_4/gru_cell_4/split:output:2#gru_4/gru_cell_4/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_4/gru_cell_4/add_2
gru_4/gru_cell_4/ReluRelugru_4/gru_cell_4/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_4/gru_cell_4/Relu
gru_4/gru_cell_4/mul_1Mulgru_4/gru_cell_4/Sigmoid:y:0gru_4/zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_4/gru_cell_4/mul_1u
gru_4/gru_cell_4/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_4/gru_cell_4/sub/x¥
gru_4/gru_cell_4/subSubgru_4/gru_cell_4/sub/x:output:0gru_4/gru_cell_4/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_4/gru_cell_4/sub©
gru_4/gru_cell_4/mul_2Mulgru_4/gru_cell_4/sub:z:0#gru_4/gru_cell_4/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_4/gru_cell_4/mul_2¤
gru_4/gru_cell_4/add_3AddV2gru_4/gru_cell_4/mul_1:z:0gru_4/gru_cell_4/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_4/gru_cell_4/add_3
#gru_4/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÈ   2%
#gru_4/TensorArrayV2_1/element_shapeÐ
gru_4/TensorArrayV2_1TensorListReserve,gru_4/TensorArrayV2_1/element_shape:output:0gru_4/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_4/TensorArrayV2_1Z

gru_4/timeConst*
_output_shapes
: *
dtype0*
value	B : 2

gru_4/time
gru_4/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2 
gru_4/while/maximum_iterationsv
gru_4/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
gru_4/while/loop_counterü
gru_4/whileWhile!gru_4/while/loop_counter:output:0'gru_4/while/maximum_iterations:output:0gru_4/time:output:0gru_4/TensorArrayV2_1:handle:0gru_4/zeros:output:0gru_4/strided_slice_1:output:0=gru_4/TensorArrayUnstack/TensorListFromTensor:output_handle:0/gru_4_gru_cell_4_matmul_readvariableop_resource0gru_4_gru_cell_4_biasadd_readvariableop_resource(gru_4_gru_cell_4_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿÈ: : : : : *%
_read_only_resource_inputs
	*#
bodyR
gru_4_while_body_129258*#
condR
gru_4_while_cond_129257*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿÈ: : : : : *
parallel_iterations 2
gru_4/whileÁ
6gru_4/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÈ   28
6gru_4/TensorArrayV2Stack/TensorListStack/element_shape
(gru_4/TensorArrayV2Stack/TensorListStackTensorListStackgru_4/while:output:3?gru_4/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*
element_dtype02*
(gru_4/TensorArrayV2Stack/TensorListStack
gru_4/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
gru_4/strided_slice_3/stack
gru_4/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
gru_4/strided_slice_3/stack_1
gru_4/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_4/strided_slice_3/stack_2¿
gru_4/strided_slice_3StridedSlice1gru_4/TensorArrayV2Stack/TensorListStack:tensor:0$gru_4/strided_slice_3/stack:output:0&gru_4/strided_slice_3/stack_1:output:0&gru_4/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*
shrink_axis_mask2
gru_4/strided_slice_3
gru_4/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_4/transpose_1/perm¾
gru_4/transpose_1	Transpose1gru_4/TensorArrayV2Stack/TensorListStack:tensor:0gru_4/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_4/transpose_1r
gru_4/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_4/runtime¦
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource*
_output_shapes
:	Èd*
dtype02
dense_8/MatMul/ReadVariableOp£
dense_8/MatMulMatMulgru_4/strided_slice_3:output:0%dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dense_8/MatMul¤
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02 
dense_8/BiasAdd/ReadVariableOp¡
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dense_8/BiasAddp
dense_8/ReluReludense_8/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dense_8/Relu¥
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02
dense_9/MatMul/ReadVariableOp
dense_9/MatMulMatMuldense_8/Relu:activations:0%dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_9/MatMul¤
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_9/BiasAdd/ReadVariableOp¡
dense_9/BiasAddBiasAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_9/BiasAdd
IdentityIdentitydense_9/BiasAdd:output:0^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp(^gru_4/gru_cell_4/BiasAdd/ReadVariableOp'^gru_4/gru_cell_4/MatMul/ReadVariableOp ^gru_4/gru_cell_4/ReadVariableOp"^gru_4/gru_cell_4/ReadVariableOp_1^gru_4/while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp2R
'gru_4/gru_cell_4/BiasAdd/ReadVariableOp'gru_4/gru_cell_4/BiasAdd/ReadVariableOp2P
&gru_4/gru_cell_4/MatMul/ReadVariableOp&gru_4/gru_cell_4/MatMul/ReadVariableOp2B
gru_4/gru_cell_4/ReadVariableOpgru_4/gru_cell_4/ReadVariableOp2F
!gru_4/gru_cell_4/ReadVariableOp_1!gru_4/gru_cell_4/ReadVariableOp_12
gru_4/whilegru_4/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ç
¶
&__inference_gru_4_layer_call_fn_130295
inputs_0
unknown:	Ø
	unknown_0:	Ø
	unknown_1:
ÈØ
identity¢StatefulPartitionedCall
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
GPU 2J 8 *J
fERC
A__inference_gru_4_layer_call_and_return_conditional_losses_1283532
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
ü
ª
while_cond_128930
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_128930___redundant_placeholder04
0while_while_cond_128930___redundant_placeholder14
0while_while_cond_128930___redundant_placeholder24
0while_while_cond_128930___redundant_placeholder3
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
¥

$sequential_4_gru_4_while_cond_127881B
>sequential_4_gru_4_while_sequential_4_gru_4_while_loop_counterH
Dsequential_4_gru_4_while_sequential_4_gru_4_while_maximum_iterations(
$sequential_4_gru_4_while_placeholder*
&sequential_4_gru_4_while_placeholder_1*
&sequential_4_gru_4_while_placeholder_2D
@sequential_4_gru_4_while_less_sequential_4_gru_4_strided_slice_1Z
Vsequential_4_gru_4_while_sequential_4_gru_4_while_cond_127881___redundant_placeholder0Z
Vsequential_4_gru_4_while_sequential_4_gru_4_while_cond_127881___redundant_placeholder1Z
Vsequential_4_gru_4_while_sequential_4_gru_4_while_cond_127881___redundant_placeholder2Z
Vsequential_4_gru_4_while_sequential_4_gru_4_while_cond_127881___redundant_placeholder3%
!sequential_4_gru_4_while_identity
Ï
sequential_4/gru_4/while/LessLess$sequential_4_gru_4_while_placeholder@sequential_4_gru_4_while_less_sequential_4_gru_4_strided_slice_1*
T0*
_output_shapes
: 2
sequential_4/gru_4/while/Less
!sequential_4/gru_4/while/IdentityIdentity!sequential_4/gru_4/while/Less:z:0*
T0
*
_output_shapes
: 2#
!sequential_4/gru_4/while/Identity"O
!sequential_4_gru_4_while_identity*sequential_4/gru_4/while/Identity:output:0*(
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
ü
ª
while_cond_128667
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_128667___redundant_placeholder04
0while_while_cond_128667___redundant_placeholder14
0while_while_cond_128667___redundant_placeholder24
0while_while_cond_128667___redundant_placeholder3
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
ü
ª
while_cond_128288
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_128288___redundant_placeholder04
0while_while_cond_128288___redundant_placeholder14
0while_while_cond_128288___redundant_placeholder24
0while_while_cond_128288___redundant_placeholder3
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
ã
¤
$__inference_signature_wrapper_129183
gru_4_input
unknown:	Ø
	unknown_0:	Ø
	unknown_1:
ÈØ
	unknown_2:	Èd
	unknown_3:d
	unknown_4:d
	unknown_5:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallgru_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
GPU 2J 8 **
f%R#
!__inference__wrapped_model_1279912
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
StatefulPartitionedCallStatefulPartitionedCall:X T
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_namegru_4_input
Ï"
¨
while_body_128289
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0,
while_gru_cell_4_128311_0:	Ø(
while_gru_cell_4_128313_0:	Ø-
while_gru_cell_4_128315_0:
ÈØ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor*
while_gru_cell_4_128311:	Ø&
while_gru_cell_4_128313:	Ø+
while_gru_cell_4_128315:
ÈØ¢(while/gru_cell_4/StatefulPartitionedCallÃ
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
)while/TensorArrayV2Read/TensorListGetItem­
(while/gru_cell_4/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_gru_cell_4_128311_0while_gru_cell_4_128313_0while_gru_cell_4_128315_0*
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
GPU 2J 8 *O
fJRH
F__inference_gru_cell_4_layer_call_and_return_conditional_losses_1282222*
(while/gru_cell_4/StatefulPartitionedCallõ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder1while/gru_cell_4/StatefulPartitionedCall:output:0*
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
while/add_1
while/IdentityIdentitywhile/add_1:z:0)^while/gru_cell_4/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations)^while/gru_cell_4/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:0)^while/gru_cell_4/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2¸
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/gru_cell_4/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3Á
while/Identity_4Identity1while/gru_cell_4/StatefulPartitionedCall:output:1)^while/gru_cell_4/StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_4"4
while_gru_cell_4_128311while_gru_cell_4_128311_0"4
while_gru_cell_4_128313while_gru_cell_4_128313_0"4
while_gru_cell_4_128315while_gru_cell_4_128315_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿÈ: : : : : 2T
(while/gru_cell_4/StatefulPartitionedCall(while/gru_cell_4/StatefulPartitionedCall: 
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
Û*
è
F__inference_gru_cell_4_layer_call_and_return_conditional_losses_130402

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
°

×
+__inference_gru_cell_4_layer_call_fn_130476

inputs
states_0
unknown:	Ø
	unknown_0:	Ø
	unknown_1:
ÈØ
identity

identity_1¢StatefulPartitionedCall¤
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
GPU 2J 8 *O
fJRH
F__inference_gru_cell_4_layer_call_and_return_conditional_losses_1282222
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
À
±
H__inference_sequential_4_layer_call_and_return_conditional_losses_129156
gru_4_input
gru_4_129138:	Ø
gru_4_129140:	Ø 
gru_4_129142:
ÈØ!
dense_8_129145:	Èd
dense_8_129147:d 
dense_9_129150:d
dense_9_129152:
identity¢dense_8/StatefulPartitionedCall¢dense_9/StatefulPartitionedCall¢gru_4/StatefulPartitionedCall
gru_4/StatefulPartitionedCallStatefulPartitionedCallgru_4_inputgru_4_129138gru_4_129140gru_4_129142*
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
GPU 2J 8 *J
fERC
A__inference_gru_4_layer_call_and_return_conditional_losses_1290272
gru_4/StatefulPartitionedCall¯
dense_8/StatefulPartitionedCallStatefulPartitionedCall&gru_4/StatefulPartitionedCall:output:0dense_8_129145dense_8_129147*
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
GPU 2J 8 *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_1287832!
dense_8/StatefulPartitionedCall±
dense_9/StatefulPartitionedCallStatefulPartitionedCall(dense_8/StatefulPartitionedCall:output:0dense_9_129150dense_9_129152*
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
GPU 2J 8 *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_1287992!
dense_9/StatefulPartitionedCallà
IdentityIdentity(dense_9/StatefulPartitionedCall:output:0 ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall^gru_4/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2>
gru_4/StatefulPartitionedCallgru_4/StatefulPartitionedCall:X T
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_namegru_4_input
°

×
+__inference_gru_cell_4_layer_call_fn_130462

inputs
states_0
unknown:	Ø
	unknown_0:	Ø
	unknown_1:
ÈØ
identity

identity_1¢StatefulPartitionedCall¤
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
GPU 2J 8 *O
fJRH
F__inference_gru_cell_4_layer_call_and_return_conditional_losses_1280722
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
Ï
´
&__inference_gru_4_layer_call_fn_130317

inputs
unknown:	Ø
	unknown_0:	Ø
	unknown_1:
ÈØ
identity¢StatefulPartitionedCallÿ
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
GPU 2J 8 *J
fERC
A__inference_gru_4_layer_call_and_return_conditional_losses_1290272
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
®=
ü
A__inference_gru_4_layer_call_and_return_conditional_losses_128353

inputs$
gru_cell_4_128277:	Ø 
gru_cell_4_128279:	Ø%
gru_cell_4_128281:
ÈØ
identity¢"gru_cell_4/StatefulPartitionedCall¢whileD
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
strided_slice_2ì
"gru_cell_4/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0gru_cell_4_128277gru_cell_4_128279gru_cell_4_128281*
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
GPU 2J 8 *O
fJRH
F__inference_gru_cell_4_layer_call_and_return_conditional_losses_1282222$
"gru_cell_4/StatefulPartitionedCall
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
while/loop_counteræ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0gru_cell_4_128277gru_cell_4_128279gru_cell_4_128281*
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
bodyR
while_body_128289*
condR
while_cond_128288*9
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
runtime
IdentityIdentitystrided_slice_3:output:0#^gru_cell_4/StatefulPartitionedCall^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2H
"gru_cell_4/StatefulPartitionedCall"gru_cell_4/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
±
¬
H__inference_sequential_4_layer_call_and_return_conditional_losses_128806

inputs
gru_4_128765:	Ø
gru_4_128767:	Ø 
gru_4_128769:
ÈØ!
dense_8_128784:	Èd
dense_8_128786:d 
dense_9_128800:d
dense_9_128802:
identity¢dense_8/StatefulPartitionedCall¢dense_9/StatefulPartitionedCall¢gru_4/StatefulPartitionedCall
gru_4/StatefulPartitionedCallStatefulPartitionedCallinputsgru_4_128765gru_4_128767gru_4_128769*
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
GPU 2J 8 *J
fERC
A__inference_gru_4_layer_call_and_return_conditional_losses_1287642
gru_4/StatefulPartitionedCall¯
dense_8/StatefulPartitionedCallStatefulPartitionedCall&gru_4/StatefulPartitionedCall:output:0dense_8_128784dense_8_128786*
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
GPU 2J 8 *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_1287832!
dense_8/StatefulPartitionedCall±
dense_9/StatefulPartitionedCallStatefulPartitionedCall(dense_8/StatefulPartitionedCall:output:0dense_9_128800dense_9_128802*
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
GPU 2J 8 *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_1287992!
dense_9/StatefulPartitionedCallà
IdentityIdentity(dense_9/StatefulPartitionedCall:output:0 ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall^gru_4/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2>
gru_4/StatefulPartitionedCallgru_4/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ü
ª
while_cond_129834
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_129834___redundant_placeholder04
0while_while_cond_129834___redundant_placeholder14
0while_while_cond_129834___redundant_placeholder24
0while_while_cond_129834___redundant_placeholder3
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
åa
Ô	
gru_4_while_body_129442(
$gru_4_while_gru_4_while_loop_counter.
*gru_4_while_gru_4_while_maximum_iterations
gru_4_while_placeholder
gru_4_while_placeholder_1
gru_4_while_placeholder_2'
#gru_4_while_gru_4_strided_slice_1_0c
_gru_4_while_tensorarrayv2read_tensorlistgetitem_gru_4_tensorarrayunstack_tensorlistfromtensor_0J
7gru_4_while_gru_cell_4_matmul_readvariableop_resource_0:	ØG
8gru_4_while_gru_cell_4_biasadd_readvariableop_resource_0:	ØD
0gru_4_while_gru_cell_4_readvariableop_resource_0:
ÈØ
gru_4_while_identity
gru_4_while_identity_1
gru_4_while_identity_2
gru_4_while_identity_3
gru_4_while_identity_4%
!gru_4_while_gru_4_strided_slice_1a
]gru_4_while_tensorarrayv2read_tensorlistgetitem_gru_4_tensorarrayunstack_tensorlistfromtensorH
5gru_4_while_gru_cell_4_matmul_readvariableop_resource:	ØE
6gru_4_while_gru_cell_4_biasadd_readvariableop_resource:	ØB
.gru_4_while_gru_cell_4_readvariableop_resource:
ÈØ¢-gru_4/while/gru_cell_4/BiasAdd/ReadVariableOp¢,gru_4/while/gru_cell_4/MatMul/ReadVariableOp¢%gru_4/while/gru_cell_4/ReadVariableOp¢'gru_4/while/gru_cell_4/ReadVariableOp_1Ï
=gru_4/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2?
=gru_4/while/TensorArrayV2Read/TensorListGetItem/element_shape÷
/gru_4/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem_gru_4_while_tensorarrayv2read_tensorlistgetitem_gru_4_tensorarrayunstack_tensorlistfromtensor_0gru_4_while_placeholderFgru_4/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype021
/gru_4/while/TensorArrayV2Read/TensorListGetItemÕ
,gru_4/while/gru_cell_4/MatMul/ReadVariableOpReadVariableOp7gru_4_while_gru_cell_4_matmul_readvariableop_resource_0*
_output_shapes
:	Ø*
dtype02.
,gru_4/while/gru_cell_4/MatMul/ReadVariableOpé
gru_4/while/gru_cell_4/MatMulMatMul6gru_4/while/TensorArrayV2Read/TensorListGetItem:item:04gru_4/while/gru_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_4/while/gru_cell_4/MatMulÔ
-gru_4/while/gru_cell_4/BiasAdd/ReadVariableOpReadVariableOp8gru_4_while_gru_cell_4_biasadd_readvariableop_resource_0*
_output_shapes	
:Ø*
dtype02/
-gru_4/while/gru_cell_4/BiasAdd/ReadVariableOpÞ
gru_4/while/gru_cell_4/BiasAddBiasAdd'gru_4/while/gru_cell_4/MatMul:product:05gru_4/while/gru_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2 
gru_4/while/gru_cell_4/BiasAdd
&gru_4/while/gru_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2(
&gru_4/while/gru_cell_4/split/split_dim
gru_4/while/gru_cell_4/splitSplit/gru_4/while/gru_cell_4/split/split_dim:output:0'gru_4/while/gru_cell_4/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
gru_4/while/gru_cell_4/splitÁ
%gru_4/while/gru_cell_4/ReadVariableOpReadVariableOp0gru_4_while_gru_cell_4_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02'
%gru_4/while/gru_cell_4/ReadVariableOp©
*gru_4/while/gru_cell_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2,
*gru_4/while/gru_cell_4/strided_slice/stack­
,gru_4/while/gru_cell_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2.
,gru_4/while/gru_cell_4/strided_slice/stack_1­
,gru_4/while/gru_cell_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,gru_4/while/gru_cell_4/strided_slice/stack_2
$gru_4/while/gru_cell_4/strided_sliceStridedSlice-gru_4/while/gru_cell_4/ReadVariableOp:value:03gru_4/while/gru_cell_4/strided_slice/stack:output:05gru_4/while/gru_cell_4/strided_slice/stack_1:output:05gru_4/while/gru_cell_4/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2&
$gru_4/while/gru_cell_4/strided_sliceÉ
gru_4/while/gru_cell_4/MatMul_1MatMulgru_4_while_placeholder_2-gru_4/while/gru_cell_4/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
gru_4/while/gru_cell_4/MatMul_1
gru_4/while/gru_cell_4/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2
gru_4/while/gru_cell_4/Const
(gru_4/while/gru_cell_4/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2*
(gru_4/while/gru_cell_4/split_1/split_dimÄ
gru_4/while/gru_cell_4/split_1SplitV)gru_4/while/gru_cell_4/MatMul_1:product:0%gru_4/while/gru_cell_4/Const:output:01gru_4/while/gru_cell_4/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2 
gru_4/while/gru_cell_4/split_1Ä
gru_4/while/gru_cell_4/addAddV2%gru_4/while/gru_cell_4/split:output:0'gru_4/while/gru_cell_4/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_4/while/gru_cell_4/add
gru_4/while/gru_cell_4/SigmoidSigmoidgru_4/while/gru_cell_4/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2 
gru_4/while/gru_cell_4/SigmoidÈ
gru_4/while/gru_cell_4/add_1AddV2%gru_4/while/gru_cell_4/split:output:1'gru_4/while/gru_cell_4/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_4/while/gru_cell_4/add_1¤
 gru_4/while/gru_cell_4/Sigmoid_1Sigmoid gru_4/while/gru_cell_4/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2"
 gru_4/while/gru_cell_4/Sigmoid_1³
gru_4/while/gru_cell_4/mulMul$gru_4/while/gru_cell_4/Sigmoid_1:y:0gru_4_while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_4/while/gru_cell_4/mulÅ
'gru_4/while/gru_cell_4/ReadVariableOp_1ReadVariableOp0gru_4_while_gru_cell_4_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02)
'gru_4/while/gru_cell_4/ReadVariableOp_1­
,gru_4/while/gru_cell_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2.
,gru_4/while/gru_cell_4/strided_slice_1/stack±
.gru_4/while/gru_cell_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        20
.gru_4/while/gru_cell_4/strided_slice_1/stack_1±
.gru_4/while/gru_cell_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.gru_4/while/gru_cell_4/strided_slice_1/stack_2
&gru_4/while/gru_cell_4/strided_slice_1StridedSlice/gru_4/while/gru_cell_4/ReadVariableOp_1:value:05gru_4/while/gru_cell_4/strided_slice_1/stack:output:07gru_4/while/gru_cell_4/strided_slice_1/stack_1:output:07gru_4/while/gru_cell_4/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2(
&gru_4/while/gru_cell_4/strided_slice_1Ð
gru_4/while/gru_cell_4/MatMul_2MatMulgru_4/while/gru_cell_4/mul:z:0/gru_4/while/gru_cell_4/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2!
gru_4/while/gru_cell_4/MatMul_2Ê
gru_4/while/gru_cell_4/add_2AddV2%gru_4/while/gru_cell_4/split:output:2)gru_4/while/gru_cell_4/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_4/while/gru_cell_4/add_2
gru_4/while/gru_cell_4/ReluRelu gru_4/while/gru_cell_4/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_4/while/gru_cell_4/Reluµ
gru_4/while/gru_cell_4/mul_1Mul"gru_4/while/gru_cell_4/Sigmoid:y:0gru_4_while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_4/while/gru_cell_4/mul_1
gru_4/while/gru_cell_4/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_4/while/gru_cell_4/sub/x½
gru_4/while/gru_cell_4/subSub%gru_4/while/gru_cell_4/sub/x:output:0"gru_4/while/gru_cell_4/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_4/while/gru_cell_4/subÁ
gru_4/while/gru_cell_4/mul_2Mulgru_4/while/gru_cell_4/sub:z:0)gru_4/while/gru_cell_4/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_4/while/gru_cell_4/mul_2¼
gru_4/while/gru_cell_4/add_3AddV2 gru_4/while/gru_cell_4/mul_1:z:0 gru_4/while/gru_cell_4/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_4/while/gru_cell_4/add_3ü
0gru_4/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemgru_4_while_placeholder_1gru_4_while_placeholder gru_4/while/gru_cell_4/add_3:z:0*
_output_shapes
: *
element_dtype022
0gru_4/while/TensorArrayV2Write/TensorListSetItemh
gru_4/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru_4/while/add/y
gru_4/while/addAddV2gru_4_while_placeholdergru_4/while/add/y:output:0*
T0*
_output_shapes
: 2
gru_4/while/addl
gru_4/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru_4/while/add_1/y
gru_4/while/add_1AddV2$gru_4_while_gru_4_while_loop_countergru_4/while/add_1/y:output:0*
T0*
_output_shapes
: 2
gru_4/while/add_1¡
gru_4/while/IdentityIdentitygru_4/while/add_1:z:0.^gru_4/while/gru_cell_4/BiasAdd/ReadVariableOp-^gru_4/while/gru_cell_4/MatMul/ReadVariableOp&^gru_4/while/gru_cell_4/ReadVariableOp(^gru_4/while/gru_cell_4/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_4/while/Identityº
gru_4/while/Identity_1Identity*gru_4_while_gru_4_while_maximum_iterations.^gru_4/while/gru_cell_4/BiasAdd/ReadVariableOp-^gru_4/while/gru_cell_4/MatMul/ReadVariableOp&^gru_4/while/gru_cell_4/ReadVariableOp(^gru_4/while/gru_cell_4/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_4/while/Identity_1£
gru_4/while/Identity_2Identitygru_4/while/add:z:0.^gru_4/while/gru_cell_4/BiasAdd/ReadVariableOp-^gru_4/while/gru_cell_4/MatMul/ReadVariableOp&^gru_4/while/gru_cell_4/ReadVariableOp(^gru_4/while/gru_cell_4/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_4/while/Identity_2Ð
gru_4/while/Identity_3Identity@gru_4/while/TensorArrayV2Write/TensorListSetItem:output_handle:0.^gru_4/while/gru_cell_4/BiasAdd/ReadVariableOp-^gru_4/while/gru_cell_4/MatMul/ReadVariableOp&^gru_4/while/gru_cell_4/ReadVariableOp(^gru_4/while/gru_cell_4/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_4/while/Identity_3Â
gru_4/while/Identity_4Identity gru_4/while/gru_cell_4/add_3:z:0.^gru_4/while/gru_cell_4/BiasAdd/ReadVariableOp-^gru_4/while/gru_cell_4/MatMul/ReadVariableOp&^gru_4/while/gru_cell_4/ReadVariableOp(^gru_4/while/gru_cell_4/ReadVariableOp_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_4/while/Identity_4"H
!gru_4_while_gru_4_strided_slice_1#gru_4_while_gru_4_strided_slice_1_0"r
6gru_4_while_gru_cell_4_biasadd_readvariableop_resource8gru_4_while_gru_cell_4_biasadd_readvariableop_resource_0"p
5gru_4_while_gru_cell_4_matmul_readvariableop_resource7gru_4_while_gru_cell_4_matmul_readvariableop_resource_0"b
.gru_4_while_gru_cell_4_readvariableop_resource0gru_4_while_gru_cell_4_readvariableop_resource_0"5
gru_4_while_identitygru_4/while/Identity:output:0"9
gru_4_while_identity_1gru_4/while/Identity_1:output:0"9
gru_4_while_identity_2gru_4/while/Identity_2:output:0"9
gru_4_while_identity_3gru_4/while/Identity_3:output:0"9
gru_4_while_identity_4gru_4/while/Identity_4:output:0"À
]gru_4_while_tensorarrayv2read_tensorlistgetitem_gru_4_tensorarrayunstack_tensorlistfromtensor_gru_4_while_tensorarrayv2read_tensorlistgetitem_gru_4_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿÈ: : : : : 2^
-gru_4/while/gru_cell_4/BiasAdd/ReadVariableOp-gru_4/while/gru_cell_4/BiasAdd/ReadVariableOp2\
,gru_4/while/gru_cell_4/MatMul/ReadVariableOp,gru_4/while/gru_cell_4/MatMul/ReadVariableOp2N
%gru_4/while/gru_cell_4/ReadVariableOp%gru_4/while/gru_cell_4/ReadVariableOp2R
'gru_4/while/gru_cell_4/ReadVariableOp_1'gru_4/while/gru_cell_4/ReadVariableOp_1: 
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
h

A__inference_gru_4_layer_call_and_return_conditional_losses_129760
inputs_0<
)gru_cell_4_matmul_readvariableop_resource:	Ø9
*gru_cell_4_biasadd_readvariableop_resource:	Ø6
"gru_cell_4_readvariableop_resource:
ÈØ
identity¢!gru_cell_4/BiasAdd/ReadVariableOp¢ gru_cell_4/MatMul/ReadVariableOp¢gru_cell_4/ReadVariableOp¢gru_cell_4/ReadVariableOp_1¢whileF
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
strided_slice_2¯
 gru_cell_4/MatMul/ReadVariableOpReadVariableOp)gru_cell_4_matmul_readvariableop_resource*
_output_shapes
:	Ø*
dtype02"
 gru_cell_4/MatMul/ReadVariableOp§
gru_cell_4/MatMulMatMulstrided_slice_2:output:0(gru_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_cell_4/MatMul®
!gru_cell_4/BiasAdd/ReadVariableOpReadVariableOp*gru_cell_4_biasadd_readvariableop_resource*
_output_shapes	
:Ø*
dtype02#
!gru_cell_4/BiasAdd/ReadVariableOp®
gru_cell_4/BiasAddBiasAddgru_cell_4/MatMul:product:0)gru_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_cell_4/BiasAdd
gru_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
gru_cell_4/split/split_dimÛ
gru_cell_4/splitSplit#gru_cell_4/split/split_dim:output:0gru_cell_4/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
gru_cell_4/split
gru_cell_4/ReadVariableOpReadVariableOp"gru_cell_4_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02
gru_cell_4/ReadVariableOp
gru_cell_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2 
gru_cell_4/strided_slice/stack
 gru_cell_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell_4/strided_slice/stack_1
 gru_cell_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell_4/strided_slice/stack_2À
gru_cell_4/strided_sliceStridedSlice!gru_cell_4/ReadVariableOp:value:0'gru_cell_4/strided_slice/stack:output:0)gru_cell_4/strided_slice/stack_1:output:0)gru_cell_4/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2
gru_cell_4/strided_slice
gru_cell_4/MatMul_1MatMulzeros:output:0!gru_cell_4/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_4/MatMul_1y
gru_cell_4/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2
gru_cell_4/Const
gru_cell_4/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
gru_cell_4/split_1/split_dim
gru_cell_4/split_1SplitVgru_cell_4/MatMul_1:product:0gru_cell_4/Const:output:0%gru_cell_4/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2
gru_cell_4/split_1
gru_cell_4/addAddV2gru_cell_4/split:output:0gru_cell_4/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_4/addz
gru_cell_4/SigmoidSigmoidgru_cell_4/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_4/Sigmoid
gru_cell_4/add_1AddV2gru_cell_4/split:output:1gru_cell_4/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_4/add_1
gru_cell_4/Sigmoid_1Sigmoidgru_cell_4/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_4/Sigmoid_1
gru_cell_4/mulMulgru_cell_4/Sigmoid_1:y:0zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_4/mul
gru_cell_4/ReadVariableOp_1ReadVariableOp"gru_cell_4_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02
gru_cell_4/ReadVariableOp_1
 gru_cell_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2"
 gru_cell_4/strided_slice_1/stack
"gru_cell_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2$
"gru_cell_4/strided_slice_1/stack_1
"gru_cell_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_4/strided_slice_1/stack_2Ì
gru_cell_4/strided_slice_1StridedSlice#gru_cell_4/ReadVariableOp_1:value:0)gru_cell_4/strided_slice_1/stack:output:0+gru_cell_4/strided_slice_1/stack_1:output:0+gru_cell_4/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2
gru_cell_4/strided_slice_1 
gru_cell_4/MatMul_2MatMulgru_cell_4/mul:z:0#gru_cell_4/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_4/MatMul_2
gru_cell_4/add_2AddV2gru_cell_4/split:output:2gru_cell_4/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_4/add_2s
gru_cell_4/ReluRelugru_cell_4/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_4/Relu
gru_cell_4/mul_1Mulgru_cell_4/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_4/mul_1i
gru_cell_4/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_4/sub/x
gru_cell_4/subSubgru_cell_4/sub/x:output:0gru_cell_4/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_4/sub
gru_cell_4/mul_2Mulgru_cell_4/sub:z:0gru_cell_4/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_4/mul_2
gru_cell_4/add_3AddV2gru_cell_4/mul_1:z:0gru_cell_4/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_4/add_3
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
while/loop_counter¨
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)gru_cell_4_matmul_readvariableop_resource*gru_cell_4_biasadd_readvariableop_resource"gru_cell_4_readvariableop_resource*
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
bodyR
while_body_129664*
condR
while_cond_129663*9
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
runtimeö
IdentityIdentitystrided_slice_3:output:0"^gru_cell_4/BiasAdd/ReadVariableOp!^gru_cell_4/MatMul/ReadVariableOp^gru_cell_4/ReadVariableOp^gru_cell_4/ReadVariableOp_1^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2F
!gru_cell_4/BiasAdd/ReadVariableOp!gru_cell_4/BiasAdd/ReadVariableOp2D
 gru_cell_4/MatMul/ReadVariableOp gru_cell_4/MatMul/ReadVariableOp26
gru_cell_4/ReadVariableOpgru_cell_4/ReadVariableOp2:
gru_cell_4/ReadVariableOp_1gru_cell_4/ReadVariableOp_12
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
	
­
-__inference_sequential_4_layer_call_fn_128823
gru_4_input
unknown:	Ø
	unknown_0:	Ø
	unknown_1:
ÈØ
	unknown_2:	Èd
	unknown_3:d
	unknown_4:d
	unknown_5:
identity¢StatefulPartitionedCall¾
StatefulPartitionedCallStatefulPartitionedCallgru_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
GPU 2J 8 *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_1288062
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
StatefulPartitionedCallStatefulPartitionedCall:X T
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%
_user_specified_namegru_4_input
Ñ*
æ
F__inference_gru_cell_4_layer_call_and_return_conditional_losses_128222

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
Ï"
¨
while_body_128085
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0,
while_gru_cell_4_128107_0:	Ø(
while_gru_cell_4_128109_0:	Ø-
while_gru_cell_4_128111_0:
ÈØ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor*
while_gru_cell_4_128107:	Ø&
while_gru_cell_4_128109:	Ø+
while_gru_cell_4_128111:
ÈØ¢(while/gru_cell_4/StatefulPartitionedCallÃ
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
)while/TensorArrayV2Read/TensorListGetItem­
(while/gru_cell_4/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_gru_cell_4_128107_0while_gru_cell_4_128109_0while_gru_cell_4_128111_0*
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
GPU 2J 8 *O
fJRH
F__inference_gru_cell_4_layer_call_and_return_conditional_losses_1280722*
(while/gru_cell_4/StatefulPartitionedCallõ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder1while/gru_cell_4/StatefulPartitionedCall:output:0*
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
while/add_1
while/IdentityIdentitywhile/add_1:z:0)^while/gru_cell_4/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations)^while/gru_cell_4/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:0)^while/gru_cell_4/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2¸
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/gru_cell_4/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3Á
while/Identity_4Identity1while/gru_cell_4/StatefulPartitionedCall:output:1)^while/gru_cell_4/StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_4"4
while_gru_cell_4_128107while_gru_cell_4_128107_0"4
while_gru_cell_4_128109while_gru_cell_4_128109_0"4
while_gru_cell_4_128111while_gru_cell_4_128111_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿÈ: : : : : 2T
(while/gru_cell_4/StatefulPartitionedCall(while/gru_cell_4/StatefulPartitionedCall: 
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
ç
¶
&__inference_gru_4_layer_call_fn_130284
inputs_0
unknown:	Ø
	unknown_0:	Ø
	unknown_1:
ÈØ
identity¢StatefulPartitionedCall
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
GPU 2J 8 *J
fERC
A__inference_gru_4_layer_call_and_return_conditional_losses_1281492
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
¯

õ
C__inference_dense_8_layer_call_and_return_conditional_losses_130328

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
àV

while_body_129664
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
1while_gru_cell_4_matmul_readvariableop_resource_0:	ØA
2while_gru_cell_4_biasadd_readvariableop_resource_0:	Ø>
*while_gru_cell_4_readvariableop_resource_0:
ÈØ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
/while_gru_cell_4_matmul_readvariableop_resource:	Ø?
0while_gru_cell_4_biasadd_readvariableop_resource:	Ø<
(while_gru_cell_4_readvariableop_resource:
ÈØ¢'while/gru_cell_4/BiasAdd/ReadVariableOp¢&while/gru_cell_4/MatMul/ReadVariableOp¢while/gru_cell_4/ReadVariableOp¢!while/gru_cell_4/ReadVariableOp_1Ã
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
)while/TensorArrayV2Read/TensorListGetItemÃ
&while/gru_cell_4/MatMul/ReadVariableOpReadVariableOp1while_gru_cell_4_matmul_readvariableop_resource_0*
_output_shapes
:	Ø*
dtype02(
&while/gru_cell_4/MatMul/ReadVariableOpÑ
while/gru_cell_4/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0.while/gru_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
while/gru_cell_4/MatMulÂ
'while/gru_cell_4/BiasAdd/ReadVariableOpReadVariableOp2while_gru_cell_4_biasadd_readvariableop_resource_0*
_output_shapes	
:Ø*
dtype02)
'while/gru_cell_4/BiasAdd/ReadVariableOpÆ
while/gru_cell_4/BiasAddBiasAdd!while/gru_cell_4/MatMul:product:0/while/gru_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
while/gru_cell_4/BiasAdd
 while/gru_cell_4/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 while/gru_cell_4/split/split_dimó
while/gru_cell_4/splitSplit)while/gru_cell_4/split/split_dim:output:0!while/gru_cell_4/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
while/gru_cell_4/split¯
while/gru_cell_4/ReadVariableOpReadVariableOp*while_gru_cell_4_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02!
while/gru_cell_4/ReadVariableOp
$while/gru_cell_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2&
$while/gru_cell_4/strided_slice/stack¡
&while/gru_cell_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell_4/strided_slice/stack_1¡
&while/gru_cell_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell_4/strided_slice/stack_2ä
while/gru_cell_4/strided_sliceStridedSlice'while/gru_cell_4/ReadVariableOp:value:0-while/gru_cell_4/strided_slice/stack:output:0/while/gru_cell_4/strided_slice/stack_1:output:0/while/gru_cell_4/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2 
while/gru_cell_4/strided_slice±
while/gru_cell_4/MatMul_1MatMulwhile_placeholder_2'while/gru_cell_4/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_4/MatMul_1
while/gru_cell_4/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2
while/gru_cell_4/Const
"while/gru_cell_4/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2$
"while/gru_cell_4/split_1/split_dim¦
while/gru_cell_4/split_1SplitV#while/gru_cell_4/MatMul_1:product:0while/gru_cell_4/Const:output:0+while/gru_cell_4/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2
while/gru_cell_4/split_1¬
while/gru_cell_4/addAddV2while/gru_cell_4/split:output:0!while/gru_cell_4/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_4/add
while/gru_cell_4/SigmoidSigmoidwhile/gru_cell_4/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_4/Sigmoid°
while/gru_cell_4/add_1AddV2while/gru_cell_4/split:output:1!while/gru_cell_4/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_4/add_1
while/gru_cell_4/Sigmoid_1Sigmoidwhile/gru_cell_4/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_4/Sigmoid_1
while/gru_cell_4/mulMulwhile/gru_cell_4/Sigmoid_1:y:0while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_4/mul³
!while/gru_cell_4/ReadVariableOp_1ReadVariableOp*while_gru_cell_4_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02#
!while/gru_cell_4/ReadVariableOp_1¡
&while/gru_cell_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2(
&while/gru_cell_4/strided_slice_1/stack¥
(while/gru_cell_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2*
(while/gru_cell_4/strided_slice_1/stack_1¥
(while/gru_cell_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_4/strided_slice_1/stack_2ð
 while/gru_cell_4/strided_slice_1StridedSlice)while/gru_cell_4/ReadVariableOp_1:value:0/while/gru_cell_4/strided_slice_1/stack:output:01while/gru_cell_4/strided_slice_1/stack_1:output:01while/gru_cell_4/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2"
 while/gru_cell_4/strided_slice_1¸
while/gru_cell_4/MatMul_2MatMulwhile/gru_cell_4/mul:z:0)while/gru_cell_4/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_4/MatMul_2²
while/gru_cell_4/add_2AddV2while/gru_cell_4/split:output:2#while/gru_cell_4/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_4/add_2
while/gru_cell_4/ReluReluwhile/gru_cell_4/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_4/Relu
while/gru_cell_4/mul_1Mulwhile/gru_cell_4/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_4/mul_1u
while/gru_cell_4/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
while/gru_cell_4/sub/x¥
while/gru_cell_4/subSubwhile/gru_cell_4/sub/x:output:0while/gru_cell_4/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_4/sub©
while/gru_cell_4/mul_2Mulwhile/gru_cell_4/sub:z:0#while/gru_cell_4/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_4/mul_2¤
while/gru_cell_4/add_3AddV2while/gru_cell_4/mul_1:z:0while/gru_cell_4/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_4/add_3Þ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_4/add_3:z:0*
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
while/add_1÷
while/IdentityIdentitywhile/add_1:z:0(^while/gru_cell_4/BiasAdd/ReadVariableOp'^while/gru_cell_4/MatMul/ReadVariableOp ^while/gru_cell_4/ReadVariableOp"^while/gru_cell_4/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations(^while/gru_cell_4/BiasAdd/ReadVariableOp'^while/gru_cell_4/MatMul/ReadVariableOp ^while/gru_cell_4/ReadVariableOp"^while/gru_cell_4/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_1ù
while/Identity_2Identitywhile/add:z:0(^while/gru_cell_4/BiasAdd/ReadVariableOp'^while/gru_cell_4/MatMul/ReadVariableOp ^while/gru_cell_4/ReadVariableOp"^while/gru_cell_4/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_2¦
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^while/gru_cell_4/BiasAdd/ReadVariableOp'^while/gru_cell_4/MatMul/ReadVariableOp ^while/gru_cell_4/ReadVariableOp"^while/gru_cell_4/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/gru_cell_4/add_3:z:0(^while/gru_cell_4/BiasAdd/ReadVariableOp'^while/gru_cell_4/MatMul/ReadVariableOp ^while/gru_cell_4/ReadVariableOp"^while/gru_cell_4/ReadVariableOp_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_4"f
0while_gru_cell_4_biasadd_readvariableop_resource2while_gru_cell_4_biasadd_readvariableop_resource_0"d
/while_gru_cell_4_matmul_readvariableop_resource1while_gru_cell_4_matmul_readvariableop_resource_0"V
(while_gru_cell_4_readvariableop_resource*while_gru_cell_4_readvariableop_resource_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿÈ: : : : : 2R
'while/gru_cell_4/BiasAdd/ReadVariableOp'while/gru_cell_4/BiasAdd/ReadVariableOp2P
&while/gru_cell_4/MatMul/ReadVariableOp&while/gru_cell_4/MatMul/ReadVariableOp2B
while/gru_cell_4/ReadVariableOpwhile/gru_cell_4/ReadVariableOp2F
!while/gru_cell_4/ReadVariableOp_1!while/gru_cell_4/ReadVariableOp_1: 
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
ü
ª
while_cond_130005
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_130005___redundant_placeholder04
0while_while_cond_130005___redundant_placeholder14
0while_while_cond_130005___redundant_placeholder24
0while_while_cond_130005___redundant_placeholder3
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
:"ÌL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*¶
serving_default¢
G
gru_4_input8
serving_default_gru_4_input:0ÿÿÿÿÿÿÿÿÿ;
dense_90
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:é»
-
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
W__call__"Ç*
_tf_keras_sequential¨*{"name": "sequential_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_4", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 2]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "gru_4_input"}}, {"class_name": "GRU", "config": {"name": "gru_4", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 2]}, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 200, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2, "reset_after": false}}, {"class_name": "Dense", "config": {"name": "dense_8", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_9", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 12, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 2]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 13}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 7, 2]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 7, 2]}, "float32", "gru_4_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_4", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 2]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "gru_4_input"}, "shared_object_id": 0}, {"class_name": "GRU", "config": {"name": "gru_4", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 2]}, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 200, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2, "reset_after": false}, "shared_object_id": 5}, {"class_name": "Dense", "config": {"name": "dense_8", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 8}, {"class_name": "Dense", "config": {"name": "dense_9", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 11}]}}, "training_config": {"loss": "mse", "metrics": null, "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}


cell

state_spec
	variables
regularization_losses
trainable_variables
	keras_api
*X&call_and_return_all_conditional_losses
Y__call__"ö
_tf_keras_rnn_layerØ{"name": "gru_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 2]}, "stateful": false, "must_restore_from_config": false, "class_name": "GRU", "config": {"name": "gru_4", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 2]}, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 200, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2, "reset_after": false}, "shared_object_id": 5, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 2]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 13}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 7, 2]}}
Ð

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
*Z&call_and_return_all_conditional_losses
[__call__"«
_tf_keras_layer{"name": "dense_8", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_8", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 8, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 200}}, "shared_object_id": 14}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 200]}}
Ò

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
*\&call_and_return_all_conditional_losses
]__call__"­
_tf_keras_layer{"name": "dense_9", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_9", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 11, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 100}}, "shared_object_id": 15}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 100]}}
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
þ

!kernel
"recurrent_kernel
#bias
)	variables
*regularization_losses
+trainable_variables
,	keras_api
*_&call_and_return_all_conditional_losses
`__call__"Ã
_tf_keras_layer©{"name": "gru_cell_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "GRUCell", "config": {"name": "gru_cell_4", "trainable": true, "dtype": "float32", "units": 200, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2, "reset_after": false}, "shared_object_id": 4}
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
!:	Èd2dense_8/kernel
:d2dense_8/bias
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
 :d2dense_9/kernel
:2dense_9/bias
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
*:(	Ø2gru_4/gru_cell_4/kernel
5:3
ÈØ2!gru_4/gru_cell_4/recurrent_kernel
$:"Ø2gru_4/gru_cell_4/bias
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
&:$	Èd2Adam/dense_8/kernel/m
:d2Adam/dense_8/bias/m
%:#d2Adam/dense_9/kernel/m
:2Adam/dense_9/bias/m
/:-	Ø2Adam/gru_4/gru_cell_4/kernel/m
::8
ÈØ2(Adam/gru_4/gru_cell_4/recurrent_kernel/m
):'Ø2Adam/gru_4/gru_cell_4/bias/m
&:$	Èd2Adam/dense_8/kernel/v
:d2Adam/dense_8/bias/v
%:#d2Adam/dense_9/kernel/v
:2Adam/dense_9/bias/v
/:-	Ø2Adam/gru_4/gru_cell_4/kernel/v
::8
ÈØ2(Adam/gru_4/gru_cell_4/recurrent_kernel/v
):'Ø2Adam/gru_4/gru_cell_4/bias/v
ç2ä
!__inference__wrapped_model_127991¾
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
annotationsª *.¢+
)&
gru_4_inputÿÿÿÿÿÿÿÿÿ
î2ë
H__inference_sequential_4_layer_call_and_return_conditional_losses_129367
H__inference_sequential_4_layer_call_and_return_conditional_losses_129551
H__inference_sequential_4_layer_call_and_return_conditional_losses_129135
H__inference_sequential_4_layer_call_and_return_conditional_losses_129156À
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
2ÿ
-__inference_sequential_4_layer_call_fn_128823
-__inference_sequential_4_layer_call_fn_129570
-__inference_sequential_4_layer_call_fn_129589
-__inference_sequential_4_layer_call_fn_129114À
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
ç2ä
A__inference_gru_4_layer_call_and_return_conditional_losses_129760
A__inference_gru_4_layer_call_and_return_conditional_losses_129931
A__inference_gru_4_layer_call_and_return_conditional_losses_130102
A__inference_gru_4_layer_call_and_return_conditional_losses_130273Õ
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
û2ø
&__inference_gru_4_layer_call_fn_130284
&__inference_gru_4_layer_call_fn_130295
&__inference_gru_4_layer_call_fn_130306
&__inference_gru_4_layer_call_fn_130317Õ
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
í2ê
C__inference_dense_8_layer_call_and_return_conditional_losses_130328¢
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
Ò2Ï
(__inference_dense_8_layer_call_fn_130337¢
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
í2ê
C__inference_dense_9_layer_call_and_return_conditional_losses_130347¢
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
Ò2Ï
(__inference_dense_9_layer_call_fn_130356¢
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
ÏBÌ
$__inference_signature_wrapper_129183gru_4_input"
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
Ô2Ñ
F__inference_gru_cell_4_layer_call_and_return_conditional_losses_130402
F__inference_gru_cell_4_layer_call_and_return_conditional_losses_130448¾
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
2
+__inference_gru_cell_4_layer_call_fn_130462
+__inference_gru_cell_4_layer_call_fn_130476¾
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
 
!__inference__wrapped_model_127991v!#"8¢5
.¢+
)&
gru_4_inputÿÿÿÿÿÿÿÿÿ
ª "1ª.
,
dense_9!
dense_9ÿÿÿÿÿÿÿÿÿ¤
C__inference_dense_8_layer_call_and_return_conditional_losses_130328]0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿÈ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿd
 |
(__inference_dense_8_layer_call_fn_130337P0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿÈ
ª "ÿÿÿÿÿÿÿÿÿd£
C__inference_dense_9_layer_call_and_return_conditional_losses_130347\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿd
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 {
(__inference_dense_9_layer_call_fn_130356O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿd
ª "ÿÿÿÿÿÿÿÿÿÃ
A__inference_gru_4_layer_call_and_return_conditional_losses_129760~!#"O¢L
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
 Ã
A__inference_gru_4_layer_call_and_return_conditional_losses_129931~!#"O¢L
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
 ³
A__inference_gru_4_layer_call_and_return_conditional_losses_130102n!#"?¢<
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
 ³
A__inference_gru_4_layer_call_and_return_conditional_losses_130273n!#"?¢<
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
 
&__inference_gru_4_layer_call_fn_130284q!#"O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿÈ
&__inference_gru_4_layer_call_fn_130295q!#"O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿÈ
&__inference_gru_4_layer_call_fn_130306a!#"?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿÈ
&__inference_gru_4_layer_call_fn_130317a!#"?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿÈ
F__inference_gru_cell_4_layer_call_and_return_conditional_losses_130402º!#"]¢Z
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
 
F__inference_gru_cell_4_layer_call_and_return_conditional_losses_130448º!#"]¢Z
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
 Ü
+__inference_gru_cell_4_layer_call_fn_130462¬!#"]¢Z
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
1/0ÿÿÿÿÿÿÿÿÿÈÜ
+__inference_gru_cell_4_layer_call_fn_130476¬!#"]¢Z
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
1/0ÿÿÿÿÿÿÿÿÿÈ¾
H__inference_sequential_4_layer_call_and_return_conditional_losses_129135r!#"@¢=
6¢3
)&
gru_4_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¾
H__inference_sequential_4_layer_call_and_return_conditional_losses_129156r!#"@¢=
6¢3
)&
gru_4_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¹
H__inference_sequential_4_layer_call_and_return_conditional_losses_129367m!#";¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¹
H__inference_sequential_4_layer_call_and_return_conditional_losses_129551m!#";¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
-__inference_sequential_4_layer_call_fn_128823e!#"@¢=
6¢3
)&
gru_4_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_sequential_4_layer_call_fn_129114e!#"@¢=
6¢3
)&
gru_4_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_sequential_4_layer_call_fn_129570`!#";¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_sequential_4_layer_call_fn_129589`!#";¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ®
$__inference_signature_wrapper_129183!#"G¢D
¢ 
=ª:
8
gru_4_input)&
gru_4_inputÿÿÿÿÿÿÿÿÿ"1ª.
,
dense_9!
dense_9ÿÿÿÿÿÿÿÿÿ