Ñ
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
"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718åö
}
dense_162/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Èd*!
shared_namedense_162/kernel
v
$dense_162/kernel/Read/ReadVariableOpReadVariableOpdense_162/kernel*
_output_shapes
:	Èd*
dtype0
t
dense_162/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*
shared_namedense_162/bias
m
"dense_162/bias/Read/ReadVariableOpReadVariableOpdense_162/bias*
_output_shapes
:d*
dtype0
|
dense_163/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*!
shared_namedense_163/kernel
u
$dense_163/kernel/Read/ReadVariableOpReadVariableOpdense_163/kernel*
_output_shapes

:d*
dtype0
t
dense_163/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_163/bias
m
"dense_163/bias/Read/ReadVariableOpReadVariableOpdense_163/bias*
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

gru_81/gru_cell_81/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ø**
shared_namegru_81/gru_cell_81/kernel

-gru_81/gru_cell_81/kernel/Read/ReadVariableOpReadVariableOpgru_81/gru_cell_81/kernel*
_output_shapes
:	Ø*
dtype0
¤
#gru_81/gru_cell_81/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ÈØ*4
shared_name%#gru_81/gru_cell_81/recurrent_kernel

7gru_81/gru_cell_81/recurrent_kernel/Read/ReadVariableOpReadVariableOp#gru_81/gru_cell_81/recurrent_kernel* 
_output_shapes
:
ÈØ*
dtype0

gru_81/gru_cell_81/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:Ø*(
shared_namegru_81/gru_cell_81/bias

+gru_81/gru_cell_81/bias/Read/ReadVariableOpReadVariableOpgru_81/gru_cell_81/bias*
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
Adam/dense_162/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Èd*(
shared_nameAdam/dense_162/kernel/m

+Adam/dense_162/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_162/kernel/m*
_output_shapes
:	Èd*
dtype0

Adam/dense_162/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*&
shared_nameAdam/dense_162/bias/m
{
)Adam/dense_162/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_162/bias/m*
_output_shapes
:d*
dtype0

Adam/dense_163/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*(
shared_nameAdam/dense_163/kernel/m

+Adam/dense_163/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_163/kernel/m*
_output_shapes

:d*
dtype0

Adam/dense_163/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_163/bias/m
{
)Adam/dense_163/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_163/bias/m*
_output_shapes
:*
dtype0

 Adam/gru_81/gru_cell_81/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ø*1
shared_name" Adam/gru_81/gru_cell_81/kernel/m

4Adam/gru_81/gru_cell_81/kernel/m/Read/ReadVariableOpReadVariableOp Adam/gru_81/gru_cell_81/kernel/m*
_output_shapes
:	Ø*
dtype0
²
*Adam/gru_81/gru_cell_81/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ÈØ*;
shared_name,*Adam/gru_81/gru_cell_81/recurrent_kernel/m
«
>Adam/gru_81/gru_cell_81/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp*Adam/gru_81/gru_cell_81/recurrent_kernel/m* 
_output_shapes
:
ÈØ*
dtype0

Adam/gru_81/gru_cell_81/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:Ø*/
shared_name Adam/gru_81/gru_cell_81/bias/m

2Adam/gru_81/gru_cell_81/bias/m/Read/ReadVariableOpReadVariableOpAdam/gru_81/gru_cell_81/bias/m*
_output_shapes	
:Ø*
dtype0

Adam/dense_162/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Èd*(
shared_nameAdam/dense_162/kernel/v

+Adam/dense_162/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_162/kernel/v*
_output_shapes
:	Èd*
dtype0

Adam/dense_162/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*&
shared_nameAdam/dense_162/bias/v
{
)Adam/dense_162/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_162/bias/v*
_output_shapes
:d*
dtype0

Adam/dense_163/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*(
shared_nameAdam/dense_163/kernel/v

+Adam/dense_163/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_163/kernel/v*
_output_shapes

:d*
dtype0

Adam/dense_163/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_163/bias/v
{
)Adam/dense_163/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_163/bias/v*
_output_shapes
:*
dtype0

 Adam/gru_81/gru_cell_81/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ø*1
shared_name" Adam/gru_81/gru_cell_81/kernel/v

4Adam/gru_81/gru_cell_81/kernel/v/Read/ReadVariableOpReadVariableOp Adam/gru_81/gru_cell_81/kernel/v*
_output_shapes
:	Ø*
dtype0
²
*Adam/gru_81/gru_cell_81/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ÈØ*;
shared_name,*Adam/gru_81/gru_cell_81/recurrent_kernel/v
«
>Adam/gru_81/gru_cell_81/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp*Adam/gru_81/gru_cell_81/recurrent_kernel/v* 
_output_shapes
:
ÈØ*
dtype0

Adam/gru_81/gru_cell_81/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:Ø*/
shared_name Adam/gru_81/gru_cell_81/bias/v

2Adam/gru_81/gru_cell_81/bias/v/Read/ReadVariableOpReadVariableOpAdam/gru_81/gru_cell_81/bias/v*
_output_shapes	
:Ø*
dtype0

NoOpNoOp
ô)
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*¯)
value¥)B¢) B)
æ
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
1
!0
"1
#2
3
4
5
6
 
­
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
¹
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
VARIABLE_VALUEdense_162/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_162/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
­
3non_trainable_variables
4layer_regularization_losses
5layer_metrics
trainable_variables
regularization_losses

6layers
	variables
7metrics
\Z
VARIABLE_VALUEdense_163/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_163/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
­
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
_]
VARIABLE_VALUEgru_81/gru_cell_81/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUE#gru_81/gru_cell_81/recurrent_kernel0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUEgru_81/gru_cell_81/bias0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
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
­
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
VARIABLE_VALUEAdam/dense_162/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_162/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_163/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_163/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/gru_81/gru_cell_81/kernel/mLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE*Adam/gru_81/gru_cell_81/recurrent_kernel/mLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/gru_81/gru_cell_81/bias/mLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_162/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_162/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_163/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_163/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/gru_81/gru_cell_81/kernel/vLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE*Adam/gru_81/gru_cell_81/recurrent_kernel/vLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/gru_81/gru_cell_81/bias/vLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_gru_81_inputPlaceholder*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0* 
shape:ÿÿÿÿÿÿÿÿÿ
ã
StatefulPartitionedCallStatefulPartitionedCallserving_default_gru_81_inputgru_81/gru_cell_81/kernelgru_81/gru_cell_81/bias#gru_81/gru_cell_81/recurrent_kerneldense_162/kerneldense_162/biasdense_163/kerneldense_163/bias*
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
%__inference_signature_wrapper_4086416
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ô
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_162/kernel/Read/ReadVariableOp"dense_162/bias/Read/ReadVariableOp$dense_163/kernel/Read/ReadVariableOp"dense_163/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp-gru_81/gru_cell_81/kernel/Read/ReadVariableOp7gru_81/gru_cell_81/recurrent_kernel/Read/ReadVariableOp+gru_81/gru_cell_81/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_162/kernel/m/Read/ReadVariableOp)Adam/dense_162/bias/m/Read/ReadVariableOp+Adam/dense_163/kernel/m/Read/ReadVariableOp)Adam/dense_163/bias/m/Read/ReadVariableOp4Adam/gru_81/gru_cell_81/kernel/m/Read/ReadVariableOp>Adam/gru_81/gru_cell_81/recurrent_kernel/m/Read/ReadVariableOp2Adam/gru_81/gru_cell_81/bias/m/Read/ReadVariableOp+Adam/dense_162/kernel/v/Read/ReadVariableOp)Adam/dense_162/bias/v/Read/ReadVariableOp+Adam/dense_163/kernel/v/Read/ReadVariableOp)Adam/dense_163/bias/v/Read/ReadVariableOp4Adam/gru_81/gru_cell_81/kernel/v/Read/ReadVariableOp>Adam/gru_81/gru_cell_81/recurrent_kernel/v/Read/ReadVariableOp2Adam/gru_81/gru_cell_81/bias/v/Read/ReadVariableOpConst*)
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
 __inference__traced_save_4087816
¿
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_162/kerneldense_162/biasdense_163/kerneldense_163/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rategru_81/gru_cell_81/kernel#gru_81/gru_cell_81/recurrent_kernelgru_81/gru_cell_81/biastotalcountAdam/dense_162/kernel/mAdam/dense_162/bias/mAdam/dense_163/kernel/mAdam/dense_163/bias/m Adam/gru_81/gru_cell_81/kernel/m*Adam/gru_81/gru_cell_81/recurrent_kernel/mAdam/gru_81/gru_cell_81/bias/mAdam/dense_162/kernel/vAdam/dense_162/bias/vAdam/dense_163/kernel/vAdam/dense_163/bias/v Adam/gru_81/gru_cell_81/kernel/v*Adam/gru_81/gru_cell_81/recurrent_kernel/vAdam/gru_81/gru_cell_81/bias/v*(
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
#__inference__traced_restore_4087910»ú
ùW
¥
while_body_4087112
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_gru_cell_81_matmul_readvariableop_resource_0:	ØB
3while_gru_cell_81_biasadd_readvariableop_resource_0:	Ø?
+while_gru_cell_81_readvariableop_resource_0:
ÈØ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_gru_cell_81_matmul_readvariableop_resource:	Ø@
1while_gru_cell_81_biasadd_readvariableop_resource:	Ø=
)while_gru_cell_81_readvariableop_resource:
ÈØ¢(while/gru_cell_81/BiasAdd/ReadVariableOp¢'while/gru_cell_81/MatMul/ReadVariableOp¢ while/gru_cell_81/ReadVariableOp¢"while/gru_cell_81/ReadVariableOp_1Ã
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÆ
'while/gru_cell_81/MatMul/ReadVariableOpReadVariableOp2while_gru_cell_81_matmul_readvariableop_resource_0*
_output_shapes
:	Ø*
dtype02)
'while/gru_cell_81/MatMul/ReadVariableOpÔ
while/gru_cell_81/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/gru_cell_81/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
while/gru_cell_81/MatMulÅ
(while/gru_cell_81/BiasAdd/ReadVariableOpReadVariableOp3while_gru_cell_81_biasadd_readvariableop_resource_0*
_output_shapes	
:Ø*
dtype02*
(while/gru_cell_81/BiasAdd/ReadVariableOpÊ
while/gru_cell_81/BiasAddBiasAdd"while/gru_cell_81/MatMul:product:00while/gru_cell_81/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
while/gru_cell_81/BiasAdd
!while/gru_cell_81/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2#
!while/gru_cell_81/split/split_dim÷
while/gru_cell_81/splitSplit*while/gru_cell_81/split/split_dim:output:0"while/gru_cell_81/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
while/gru_cell_81/split²
 while/gru_cell_81/ReadVariableOpReadVariableOp+while_gru_cell_81_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02"
 while/gru_cell_81/ReadVariableOp
%while/gru_cell_81/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/gru_cell_81/strided_slice/stack£
'while/gru_cell_81/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/gru_cell_81/strided_slice/stack_1£
'while/gru_cell_81/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/gru_cell_81/strided_slice/stack_2ê
while/gru_cell_81/strided_sliceStridedSlice(while/gru_cell_81/ReadVariableOp:value:0.while/gru_cell_81/strided_slice/stack:output:00while/gru_cell_81/strided_slice/stack_1:output:00while/gru_cell_81/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2!
while/gru_cell_81/strided_slice´
while/gru_cell_81/MatMul_1MatMulwhile_placeholder_2(while/gru_cell_81/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_81/MatMul_1
while/gru_cell_81/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2
while/gru_cell_81/Const
#while/gru_cell_81/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2%
#while/gru_cell_81/split_1/split_dim«
while/gru_cell_81/split_1SplitV$while/gru_cell_81/MatMul_1:product:0 while/gru_cell_81/Const:output:0,while/gru_cell_81/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2
while/gru_cell_81/split_1°
while/gru_cell_81/addAddV2 while/gru_cell_81/split:output:0"while/gru_cell_81/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_81/add
while/gru_cell_81/SigmoidSigmoidwhile/gru_cell_81/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_81/Sigmoid´
while/gru_cell_81/add_1AddV2 while/gru_cell_81/split:output:1"while/gru_cell_81/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_81/add_1
while/gru_cell_81/Sigmoid_1Sigmoidwhile/gru_cell_81/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_81/Sigmoid_1
while/gru_cell_81/mulMulwhile/gru_cell_81/Sigmoid_1:y:0while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_81/mul¶
"while/gru_cell_81/ReadVariableOp_1ReadVariableOp+while_gru_cell_81_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02$
"while/gru_cell_81/ReadVariableOp_1£
'while/gru_cell_81/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2)
'while/gru_cell_81/strided_slice_1/stack§
)while/gru_cell_81/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/gru_cell_81/strided_slice_1/stack_1§
)while/gru_cell_81/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/gru_cell_81/strided_slice_1/stack_2ö
!while/gru_cell_81/strided_slice_1StridedSlice*while/gru_cell_81/ReadVariableOp_1:value:00while/gru_cell_81/strided_slice_1/stack:output:02while/gru_cell_81/strided_slice_1/stack_1:output:02while/gru_cell_81/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2#
!while/gru_cell_81/strided_slice_1¼
while/gru_cell_81/MatMul_2MatMulwhile/gru_cell_81/mul:z:0*while/gru_cell_81/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_81/MatMul_2¶
while/gru_cell_81/add_2AddV2 while/gru_cell_81/split:output:2$while/gru_cell_81/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_81/add_2
while/gru_cell_81/ReluReluwhile/gru_cell_81/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_81/Relu 
while/gru_cell_81/mul_1Mulwhile/gru_cell_81/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_81/mul_1w
while/gru_cell_81/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
while/gru_cell_81/sub/x©
while/gru_cell_81/subSub while/gru_cell_81/sub/x:output:0while/gru_cell_81/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_81/sub­
while/gru_cell_81/mul_2Mulwhile/gru_cell_81/sub:z:0$while/gru_cell_81/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_81/mul_2¨
while/gru_cell_81/add_3AddV2while/gru_cell_81/mul_1:z:0while/gru_cell_81/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_81/add_3ß
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_81/add_3:z:0*
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
while/add_1û
while/IdentityIdentitywhile/add_1:z:0)^while/gru_cell_81/BiasAdd/ReadVariableOp(^while/gru_cell_81/MatMul/ReadVariableOp!^while/gru_cell_81/ReadVariableOp#^while/gru_cell_81/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations)^while/gru_cell_81/BiasAdd/ReadVariableOp(^while/gru_cell_81/MatMul/ReadVariableOp!^while/gru_cell_81/ReadVariableOp#^while/gru_cell_81/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_1ý
while/Identity_2Identitywhile/add:z:0)^while/gru_cell_81/BiasAdd/ReadVariableOp(^while/gru_cell_81/MatMul/ReadVariableOp!^while/gru_cell_81/ReadVariableOp#^while/gru_cell_81/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_2ª
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/gru_cell_81/BiasAdd/ReadVariableOp(^while/gru_cell_81/MatMul/ReadVariableOp!^while/gru_cell_81/ReadVariableOp#^while/gru_cell_81/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/gru_cell_81/add_3:z:0)^while/gru_cell_81/BiasAdd/ReadVariableOp(^while/gru_cell_81/MatMul/ReadVariableOp!^while/gru_cell_81/ReadVariableOp#^while/gru_cell_81/ReadVariableOp_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_4"h
1while_gru_cell_81_biasadd_readvariableop_resource3while_gru_cell_81_biasadd_readvariableop_resource_0"f
0while_gru_cell_81_matmul_readvariableop_resource2while_gru_cell_81_matmul_readvariableop_resource_0"X
)while_gru_cell_81_readvariableop_resource+while_gru_cell_81_readvariableop_resource_0")
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
(while/gru_cell_81/BiasAdd/ReadVariableOp(while/gru_cell_81/BiasAdd/ReadVariableOp2R
'while/gru_cell_81/MatMul/ReadVariableOp'while/gru_cell_81/MatMul/ReadVariableOp2D
 while/gru_cell_81/ReadVariableOp while/gru_cell_81/ReadVariableOp2H
"while/gru_cell_81/ReadVariableOp_1"while/gru_cell_81/ReadVariableOp_1: 
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
Í	
´
gru_81_while_cond_4086712*
&gru_81_while_gru_81_while_loop_counter0
,gru_81_while_gru_81_while_maximum_iterations
gru_81_while_placeholder
gru_81_while_placeholder_1
gru_81_while_placeholder_2,
(gru_81_while_less_gru_81_strided_slice_1C
?gru_81_while_gru_81_while_cond_4086712___redundant_placeholder0C
?gru_81_while_gru_81_while_cond_4086712___redundant_placeholder1C
?gru_81_while_gru_81_while_cond_4086712___redundant_placeholder2C
?gru_81_while_gru_81_while_cond_4086712___redundant_placeholder3
gru_81_while_identity

gru_81/while/LessLessgru_81_while_placeholder(gru_81_while_less_gru_81_strided_slice_1*
T0*
_output_shapes
: 2
gru_81/while/Lessr
gru_81/while/IdentityIdentitygru_81/while/Less:z:0*
T0
*
_output_shapes
: 2
gru_81/while/Identity"7
gru_81_while_identitygru_81/while/Identity:output:0*(
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
Òh
£
C__inference_gru_81_layer_call_and_return_conditional_losses_4086260

inputs=
*gru_cell_81_matmul_readvariableop_resource:	Ø:
+gru_cell_81_biasadd_readvariableop_resource:	Ø7
#gru_cell_81_readvariableop_resource:
ÈØ
identity¢"gru_cell_81/BiasAdd/ReadVariableOp¢!gru_cell_81/MatMul/ReadVariableOp¢gru_cell_81/ReadVariableOp¢gru_cell_81/ReadVariableOp_1¢whileD
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
:ÿÿÿÿÿÿÿÿÿ2
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
valueB"ÿÿÿÿ   27
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2²
!gru_cell_81/MatMul/ReadVariableOpReadVariableOp*gru_cell_81_matmul_readvariableop_resource*
_output_shapes
:	Ø*
dtype02#
!gru_cell_81/MatMul/ReadVariableOpª
gru_cell_81/MatMulMatMulstrided_slice_2:output:0)gru_cell_81/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_cell_81/MatMul±
"gru_cell_81/BiasAdd/ReadVariableOpReadVariableOp+gru_cell_81_biasadd_readvariableop_resource*
_output_shapes	
:Ø*
dtype02$
"gru_cell_81/BiasAdd/ReadVariableOp²
gru_cell_81/BiasAddBiasAddgru_cell_81/MatMul:product:0*gru_cell_81/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_cell_81/BiasAdd
gru_cell_81/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
gru_cell_81/split/split_dimß
gru_cell_81/splitSplit$gru_cell_81/split/split_dim:output:0gru_cell_81/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
gru_cell_81/split
gru_cell_81/ReadVariableOpReadVariableOp#gru_cell_81_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02
gru_cell_81/ReadVariableOp
gru_cell_81/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
gru_cell_81/strided_slice/stack
!gru_cell_81/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2#
!gru_cell_81/strided_slice/stack_1
!gru_cell_81/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!gru_cell_81/strided_slice/stack_2Æ
gru_cell_81/strided_sliceStridedSlice"gru_cell_81/ReadVariableOp:value:0(gru_cell_81/strided_slice/stack:output:0*gru_cell_81/strided_slice/stack_1:output:0*gru_cell_81/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2
gru_cell_81/strided_slice
gru_cell_81/MatMul_1MatMulzeros:output:0"gru_cell_81/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_81/MatMul_1{
gru_cell_81/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2
gru_cell_81/Const
gru_cell_81/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
gru_cell_81/split_1/split_dim
gru_cell_81/split_1SplitVgru_cell_81/MatMul_1:product:0gru_cell_81/Const:output:0&gru_cell_81/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2
gru_cell_81/split_1
gru_cell_81/addAddV2gru_cell_81/split:output:0gru_cell_81/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_81/add}
gru_cell_81/SigmoidSigmoidgru_cell_81/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_81/Sigmoid
gru_cell_81/add_1AddV2gru_cell_81/split:output:1gru_cell_81/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_81/add_1
gru_cell_81/Sigmoid_1Sigmoidgru_cell_81/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_81/Sigmoid_1
gru_cell_81/mulMulgru_cell_81/Sigmoid_1:y:0zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_81/mul¢
gru_cell_81/ReadVariableOp_1ReadVariableOp#gru_cell_81_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02
gru_cell_81/ReadVariableOp_1
!gru_cell_81/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2#
!gru_cell_81/strided_slice_1/stack
#gru_cell_81/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#gru_cell_81/strided_slice_1/stack_1
#gru_cell_81/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gru_cell_81/strided_slice_1/stack_2Ò
gru_cell_81/strided_slice_1StridedSlice$gru_cell_81/ReadVariableOp_1:value:0*gru_cell_81/strided_slice_1/stack:output:0,gru_cell_81/strided_slice_1/stack_1:output:0,gru_cell_81/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2
gru_cell_81/strided_slice_1¤
gru_cell_81/MatMul_2MatMulgru_cell_81/mul:z:0$gru_cell_81/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_81/MatMul_2
gru_cell_81/add_2AddV2gru_cell_81/split:output:2gru_cell_81/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_81/add_2v
gru_cell_81/ReluRelugru_cell_81/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_81/Relu
gru_cell_81/mul_1Mulgru_cell_81/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_81/mul_1k
gru_cell_81/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_81/sub/x
gru_cell_81/subSubgru_cell_81/sub/x:output:0gru_cell_81/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_81/sub
gru_cell_81/mul_2Mulgru_cell_81/sub:z:0gru_cell_81/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_81/mul_2
gru_cell_81/add_3AddV2gru_cell_81/mul_1:z:0gru_cell_81/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_81/add_3
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
while/loop_counter­
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*gru_cell_81_matmul_readvariableop_resource+gru_cell_81_biasadd_readvariableop_resource#gru_cell_81_readvariableop_resource*
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
while_body_4086164*
condR
while_cond_4086163*9
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
runtimeú
IdentityIdentitystrided_slice_3:output:0#^gru_cell_81/BiasAdd/ReadVariableOp"^gru_cell_81/MatMul/ReadVariableOp^gru_cell_81/ReadVariableOp^gru_cell_81/ReadVariableOp_1^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2H
"gru_cell_81/BiasAdd/ReadVariableOp"gru_cell_81/BiasAdd/ReadVariableOp2F
!gru_cell_81/MatMul/ReadVariableOp!gru_cell_81/MatMul/ReadVariableOp28
gru_cell_81/ReadVariableOpgru_cell_81/ReadVariableOp2<
gru_cell_81/ReadVariableOp_1gru_cell_81/ReadVariableOp_12
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

Å
J__inference_sequential_81_layer_call_and_return_conditional_losses_4086039

inputs!
gru_81_4085998:	Ø
gru_81_4086000:	Ø"
gru_81_4086002:
ÈØ$
dense_162_4086017:	Èd
dense_162_4086019:d#
dense_163_4086033:d
dense_163_4086035:
identity¢!dense_162/StatefulPartitionedCall¢!dense_163/StatefulPartitionedCall¢gru_81/StatefulPartitionedCall 
gru_81/StatefulPartitionedCallStatefulPartitionedCallinputsgru_81_4085998gru_81_4086000gru_81_4086002*
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
GPU 2J 8 *L
fGRE
C__inference_gru_81_layer_call_and_return_conditional_losses_40859972 
gru_81/StatefulPartitionedCall½
!dense_162/StatefulPartitionedCallStatefulPartitionedCall'gru_81/StatefulPartitionedCall:output:0dense_162_4086017dense_162_4086019*
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
F__inference_dense_162_layer_call_and_return_conditional_losses_40860162#
!dense_162/StatefulPartitionedCallÀ
!dense_163/StatefulPartitionedCallStatefulPartitionedCall*dense_162/StatefulPartitionedCall:output:0dense_163_4086033dense_163_4086035*
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
F__inference_dense_163_layer_call_and_return_conditional_losses_40860322#
!dense_163/StatefulPartitionedCallç
IdentityIdentity*dense_163/StatefulPartitionedCall:output:0"^dense_162/StatefulPartitionedCall"^dense_163/StatefulPartitionedCall^gru_81/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2F
!dense_162/StatefulPartitionedCall!dense_162/StatefulPartitionedCall2F
!dense_163/StatefulPartitionedCall!dense_163/StatefulPartitionedCall2@
gru_81/StatefulPartitionedCallgru_81/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Òh
£
C__inference_gru_81_layer_call_and_return_conditional_losses_4087550

inputs=
*gru_cell_81_matmul_readvariableop_resource:	Ø:
+gru_cell_81_biasadd_readvariableop_resource:	Ø7
#gru_cell_81_readvariableop_resource:
ÈØ
identity¢"gru_cell_81/BiasAdd/ReadVariableOp¢!gru_cell_81/MatMul/ReadVariableOp¢gru_cell_81/ReadVariableOp¢gru_cell_81/ReadVariableOp_1¢whileD
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
:ÿÿÿÿÿÿÿÿÿ2
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
valueB"ÿÿÿÿ   27
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2²
!gru_cell_81/MatMul/ReadVariableOpReadVariableOp*gru_cell_81_matmul_readvariableop_resource*
_output_shapes
:	Ø*
dtype02#
!gru_cell_81/MatMul/ReadVariableOpª
gru_cell_81/MatMulMatMulstrided_slice_2:output:0)gru_cell_81/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_cell_81/MatMul±
"gru_cell_81/BiasAdd/ReadVariableOpReadVariableOp+gru_cell_81_biasadd_readvariableop_resource*
_output_shapes	
:Ø*
dtype02$
"gru_cell_81/BiasAdd/ReadVariableOp²
gru_cell_81/BiasAddBiasAddgru_cell_81/MatMul:product:0*gru_cell_81/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_cell_81/BiasAdd
gru_cell_81/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
gru_cell_81/split/split_dimß
gru_cell_81/splitSplit$gru_cell_81/split/split_dim:output:0gru_cell_81/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
gru_cell_81/split
gru_cell_81/ReadVariableOpReadVariableOp#gru_cell_81_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02
gru_cell_81/ReadVariableOp
gru_cell_81/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
gru_cell_81/strided_slice/stack
!gru_cell_81/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2#
!gru_cell_81/strided_slice/stack_1
!gru_cell_81/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!gru_cell_81/strided_slice/stack_2Æ
gru_cell_81/strided_sliceStridedSlice"gru_cell_81/ReadVariableOp:value:0(gru_cell_81/strided_slice/stack:output:0*gru_cell_81/strided_slice/stack_1:output:0*gru_cell_81/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2
gru_cell_81/strided_slice
gru_cell_81/MatMul_1MatMulzeros:output:0"gru_cell_81/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_81/MatMul_1{
gru_cell_81/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2
gru_cell_81/Const
gru_cell_81/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
gru_cell_81/split_1/split_dim
gru_cell_81/split_1SplitVgru_cell_81/MatMul_1:product:0gru_cell_81/Const:output:0&gru_cell_81/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2
gru_cell_81/split_1
gru_cell_81/addAddV2gru_cell_81/split:output:0gru_cell_81/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_81/add}
gru_cell_81/SigmoidSigmoidgru_cell_81/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_81/Sigmoid
gru_cell_81/add_1AddV2gru_cell_81/split:output:1gru_cell_81/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_81/add_1
gru_cell_81/Sigmoid_1Sigmoidgru_cell_81/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_81/Sigmoid_1
gru_cell_81/mulMulgru_cell_81/Sigmoid_1:y:0zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_81/mul¢
gru_cell_81/ReadVariableOp_1ReadVariableOp#gru_cell_81_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02
gru_cell_81/ReadVariableOp_1
!gru_cell_81/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2#
!gru_cell_81/strided_slice_1/stack
#gru_cell_81/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#gru_cell_81/strided_slice_1/stack_1
#gru_cell_81/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gru_cell_81/strided_slice_1/stack_2Ò
gru_cell_81/strided_slice_1StridedSlice$gru_cell_81/ReadVariableOp_1:value:0*gru_cell_81/strided_slice_1/stack:output:0,gru_cell_81/strided_slice_1/stack_1:output:0,gru_cell_81/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2
gru_cell_81/strided_slice_1¤
gru_cell_81/MatMul_2MatMulgru_cell_81/mul:z:0$gru_cell_81/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_81/MatMul_2
gru_cell_81/add_2AddV2gru_cell_81/split:output:2gru_cell_81/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_81/add_2v
gru_cell_81/ReluRelugru_cell_81/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_81/Relu
gru_cell_81/mul_1Mulgru_cell_81/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_81/mul_1k
gru_cell_81/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_81/sub/x
gru_cell_81/subSubgru_cell_81/sub/x:output:0gru_cell_81/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_81/sub
gru_cell_81/mul_2Mulgru_cell_81/sub:z:0gru_cell_81/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_81/mul_2
gru_cell_81/add_3AddV2gru_cell_81/mul_1:z:0gru_cell_81/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_81/add_3
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
while/loop_counter­
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*gru_cell_81_matmul_readvariableop_resource+gru_cell_81_biasadd_readvariableop_resource#gru_cell_81_readvariableop_resource*
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
while_body_4087454*
condR
while_cond_4087453*9
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
runtimeú
IdentityIdentitystrided_slice_3:output:0#^gru_cell_81/BiasAdd/ReadVariableOp"^gru_cell_81/MatMul/ReadVariableOp^gru_cell_81/ReadVariableOp^gru_cell_81/ReadVariableOp_1^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2H
"gru_cell_81/BiasAdd/ReadVariableOp"gru_cell_81/BiasAdd/ReadVariableOp2F
!gru_cell_81/MatMul/ReadVariableOp!gru_cell_81/MatMul/ReadVariableOp28
gru_cell_81/ReadVariableOpgru_cell_81/ReadVariableOp2<
gru_cell_81/ReadVariableOp_1gru_cell_81/ReadVariableOp_12
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Òh
£
C__inference_gru_81_layer_call_and_return_conditional_losses_4087379

inputs=
*gru_cell_81_matmul_readvariableop_resource:	Ø:
+gru_cell_81_biasadd_readvariableop_resource:	Ø7
#gru_cell_81_readvariableop_resource:
ÈØ
identity¢"gru_cell_81/BiasAdd/ReadVariableOp¢!gru_cell_81/MatMul/ReadVariableOp¢gru_cell_81/ReadVariableOp¢gru_cell_81/ReadVariableOp_1¢whileD
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
:ÿÿÿÿÿÿÿÿÿ2
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
valueB"ÿÿÿÿ   27
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2²
!gru_cell_81/MatMul/ReadVariableOpReadVariableOp*gru_cell_81_matmul_readvariableop_resource*
_output_shapes
:	Ø*
dtype02#
!gru_cell_81/MatMul/ReadVariableOpª
gru_cell_81/MatMulMatMulstrided_slice_2:output:0)gru_cell_81/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_cell_81/MatMul±
"gru_cell_81/BiasAdd/ReadVariableOpReadVariableOp+gru_cell_81_biasadd_readvariableop_resource*
_output_shapes	
:Ø*
dtype02$
"gru_cell_81/BiasAdd/ReadVariableOp²
gru_cell_81/BiasAddBiasAddgru_cell_81/MatMul:product:0*gru_cell_81/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_cell_81/BiasAdd
gru_cell_81/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
gru_cell_81/split/split_dimß
gru_cell_81/splitSplit$gru_cell_81/split/split_dim:output:0gru_cell_81/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
gru_cell_81/split
gru_cell_81/ReadVariableOpReadVariableOp#gru_cell_81_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02
gru_cell_81/ReadVariableOp
gru_cell_81/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
gru_cell_81/strided_slice/stack
!gru_cell_81/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2#
!gru_cell_81/strided_slice/stack_1
!gru_cell_81/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!gru_cell_81/strided_slice/stack_2Æ
gru_cell_81/strided_sliceStridedSlice"gru_cell_81/ReadVariableOp:value:0(gru_cell_81/strided_slice/stack:output:0*gru_cell_81/strided_slice/stack_1:output:0*gru_cell_81/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2
gru_cell_81/strided_slice
gru_cell_81/MatMul_1MatMulzeros:output:0"gru_cell_81/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_81/MatMul_1{
gru_cell_81/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2
gru_cell_81/Const
gru_cell_81/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
gru_cell_81/split_1/split_dim
gru_cell_81/split_1SplitVgru_cell_81/MatMul_1:product:0gru_cell_81/Const:output:0&gru_cell_81/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2
gru_cell_81/split_1
gru_cell_81/addAddV2gru_cell_81/split:output:0gru_cell_81/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_81/add}
gru_cell_81/SigmoidSigmoidgru_cell_81/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_81/Sigmoid
gru_cell_81/add_1AddV2gru_cell_81/split:output:1gru_cell_81/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_81/add_1
gru_cell_81/Sigmoid_1Sigmoidgru_cell_81/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_81/Sigmoid_1
gru_cell_81/mulMulgru_cell_81/Sigmoid_1:y:0zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_81/mul¢
gru_cell_81/ReadVariableOp_1ReadVariableOp#gru_cell_81_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02
gru_cell_81/ReadVariableOp_1
!gru_cell_81/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2#
!gru_cell_81/strided_slice_1/stack
#gru_cell_81/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#gru_cell_81/strided_slice_1/stack_1
#gru_cell_81/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gru_cell_81/strided_slice_1/stack_2Ò
gru_cell_81/strided_slice_1StridedSlice$gru_cell_81/ReadVariableOp_1:value:0*gru_cell_81/strided_slice_1/stack:output:0,gru_cell_81/strided_slice_1/stack_1:output:0,gru_cell_81/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2
gru_cell_81/strided_slice_1¤
gru_cell_81/MatMul_2MatMulgru_cell_81/mul:z:0$gru_cell_81/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_81/MatMul_2
gru_cell_81/add_2AddV2gru_cell_81/split:output:2gru_cell_81/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_81/add_2v
gru_cell_81/ReluRelugru_cell_81/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_81/Relu
gru_cell_81/mul_1Mulgru_cell_81/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_81/mul_1k
gru_cell_81/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_81/sub/x
gru_cell_81/subSubgru_cell_81/sub/x:output:0gru_cell_81/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_81/sub
gru_cell_81/mul_2Mulgru_cell_81/sub:z:0gru_cell_81/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_81/mul_2
gru_cell_81/add_3AddV2gru_cell_81/mul_1:z:0gru_cell_81/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_81/add_3
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
while/loop_counter­
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*gru_cell_81_matmul_readvariableop_resource+gru_cell_81_biasadd_readvariableop_resource#gru_cell_81_readvariableop_resource*
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
while_body_4087283*
condR
while_cond_4087282*9
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
runtimeú
IdentityIdentitystrided_slice_3:output:0#^gru_cell_81/BiasAdd/ReadVariableOp"^gru_cell_81/MatMul/ReadVariableOp^gru_cell_81/ReadVariableOp^gru_cell_81/ReadVariableOp_1^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2H
"gru_cell_81/BiasAdd/ReadVariableOp"gru_cell_81/BiasAdd/ReadVariableOp2F
!gru_cell_81/MatMul/ReadVariableOp!gru_cell_81/MatMul/ReadVariableOp28
gru_cell_81/ReadVariableOpgru_cell_81/ReadVariableOp2<
gru_cell_81/ReadVariableOp_1gru_cell_81/ReadVariableOp_12
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

¯
while_cond_4085521
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_4085521___redundant_placeholder05
1while_while_cond_4085521___redundant_placeholder15
1while_while_cond_4085521___redundant_placeholder25
1while_while_cond_4085521___redundant_placeholder3
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
¿{

#__inference__traced_restore_4087910
file_prefix4
!assignvariableop_dense_162_kernel:	Èd/
!assignvariableop_1_dense_162_bias:d5
#assignvariableop_2_dense_163_kernel:d/
!assignvariableop_3_dense_163_bias:&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: ?
,assignvariableop_9_gru_81_gru_cell_81_kernel:	ØK
7assignvariableop_10_gru_81_gru_cell_81_recurrent_kernel:
ÈØ:
+assignvariableop_11_gru_81_gru_cell_81_bias:	Ø#
assignvariableop_12_total: #
assignvariableop_13_count: >
+assignvariableop_14_adam_dense_162_kernel_m:	Èd7
)assignvariableop_15_adam_dense_162_bias_m:d=
+assignvariableop_16_adam_dense_163_kernel_m:d7
)assignvariableop_17_adam_dense_163_bias_m:G
4assignvariableop_18_adam_gru_81_gru_cell_81_kernel_m:	ØR
>assignvariableop_19_adam_gru_81_gru_cell_81_recurrent_kernel_m:
ÈØA
2assignvariableop_20_adam_gru_81_gru_cell_81_bias_m:	Ø>
+assignvariableop_21_adam_dense_162_kernel_v:	Èd7
)assignvariableop_22_adam_dense_162_bias_v:d=
+assignvariableop_23_adam_dense_163_kernel_v:d7
)assignvariableop_24_adam_dense_163_bias_v:G
4assignvariableop_25_adam_gru_81_gru_cell_81_kernel_v:	ØR
>assignvariableop_26_adam_gru_81_gru_cell_81_recurrent_kernel_v:
ÈØA
2assignvariableop_27_adam_gru_81_gru_cell_81_bias_v:	Ø
identity_29¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_3¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9Ö
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*â
valueØBÕB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_162_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1¦
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_162_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2¨
AssignVariableOp_2AssignVariableOp#assignvariableop_2_dense_163_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3¦
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_163_biasIdentity_3:output:0"/device:CPU:0*
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

Identity_9±
AssignVariableOp_9AssignVariableOp,assignvariableop_9_gru_81_gru_cell_81_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10¿
AssignVariableOp_10AssignVariableOp7assignvariableop_10_gru_81_gru_cell_81_recurrent_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11³
AssignVariableOp_11AssignVariableOp+assignvariableop_11_gru_81_gru_cell_81_biasIdentity_11:output:0"/device:CPU:0*
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
AssignVariableOp_14AssignVariableOp+assignvariableop_14_adam_dense_162_kernel_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15±
AssignVariableOp_15AssignVariableOp)assignvariableop_15_adam_dense_162_bias_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16³
AssignVariableOp_16AssignVariableOp+assignvariableop_16_adam_dense_163_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17±
AssignVariableOp_17AssignVariableOp)assignvariableop_17_adam_dense_163_bias_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18¼
AssignVariableOp_18AssignVariableOp4assignvariableop_18_adam_gru_81_gru_cell_81_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19Æ
AssignVariableOp_19AssignVariableOp>assignvariableop_19_adam_gru_81_gru_cell_81_recurrent_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20º
AssignVariableOp_20AssignVariableOp2assignvariableop_20_adam_gru_81_gru_cell_81_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21³
AssignVariableOp_21AssignVariableOp+assignvariableop_21_adam_dense_162_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22±
AssignVariableOp_22AssignVariableOp)assignvariableop_22_adam_dense_162_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23³
AssignVariableOp_23AssignVariableOp+assignvariableop_23_adam_dense_163_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24±
AssignVariableOp_24AssignVariableOp)assignvariableop_24_adam_dense_163_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25¼
AssignVariableOp_25AssignVariableOp4assignvariableop_25_adam_gru_81_gru_cell_81_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26Æ
AssignVariableOp_26AssignVariableOp>assignvariableop_26_adam_gru_81_gru_cell_81_recurrent_kernel_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27º
AssignVariableOp_27AssignVariableOp2assignvariableop_27_adam_gru_81_gru_cell_81_bias_vIdentity_27:output:0"/device:CPU:0*
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
 ¬

"__inference__wrapped_model_4085224
gru_81_inputR
?sequential_81_gru_81_gru_cell_81_matmul_readvariableop_resource:	ØO
@sequential_81_gru_81_gru_cell_81_biasadd_readvariableop_resource:	ØL
8sequential_81_gru_81_gru_cell_81_readvariableop_resource:
ÈØI
6sequential_81_dense_162_matmul_readvariableop_resource:	ÈdE
7sequential_81_dense_162_biasadd_readvariableop_resource:dH
6sequential_81_dense_163_matmul_readvariableop_resource:dE
7sequential_81_dense_163_biasadd_readvariableop_resource:
identity¢.sequential_81/dense_162/BiasAdd/ReadVariableOp¢-sequential_81/dense_162/MatMul/ReadVariableOp¢.sequential_81/dense_163/BiasAdd/ReadVariableOp¢-sequential_81/dense_163/MatMul/ReadVariableOp¢7sequential_81/gru_81/gru_cell_81/BiasAdd/ReadVariableOp¢6sequential_81/gru_81/gru_cell_81/MatMul/ReadVariableOp¢/sequential_81/gru_81/gru_cell_81/ReadVariableOp¢1sequential_81/gru_81/gru_cell_81/ReadVariableOp_1¢sequential_81/gru_81/whilet
sequential_81/gru_81/ShapeShapegru_81_input*
T0*
_output_shapes
:2
sequential_81/gru_81/Shape
(sequential_81/gru_81/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(sequential_81/gru_81/strided_slice/stack¢
*sequential_81/gru_81/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_81/gru_81/strided_slice/stack_1¢
*sequential_81/gru_81/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_81/gru_81/strided_slice/stack_2à
"sequential_81/gru_81/strided_sliceStridedSlice#sequential_81/gru_81/Shape:output:01sequential_81/gru_81/strided_slice/stack:output:03sequential_81/gru_81/strided_slice/stack_1:output:03sequential_81/gru_81/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"sequential_81/gru_81/strided_slice
 sequential_81/gru_81/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :È2"
 sequential_81/gru_81/zeros/mul/yÀ
sequential_81/gru_81/zeros/mulMul+sequential_81/gru_81/strided_slice:output:0)sequential_81/gru_81/zeros/mul/y:output:0*
T0*
_output_shapes
: 2 
sequential_81/gru_81/zeros/mul
!sequential_81/gru_81/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2#
!sequential_81/gru_81/zeros/Less/y»
sequential_81/gru_81/zeros/LessLess"sequential_81/gru_81/zeros/mul:z:0*sequential_81/gru_81/zeros/Less/y:output:0*
T0*
_output_shapes
: 2!
sequential_81/gru_81/zeros/Less
#sequential_81/gru_81/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :È2%
#sequential_81/gru_81/zeros/packed/1×
!sequential_81/gru_81/zeros/packedPack+sequential_81/gru_81/strided_slice:output:0,sequential_81/gru_81/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2#
!sequential_81/gru_81/zeros/packed
 sequential_81/gru_81/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2"
 sequential_81/gru_81/zeros/ConstÊ
sequential_81/gru_81/zerosFill*sequential_81/gru_81/zeros/packed:output:0)sequential_81/gru_81/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
sequential_81/gru_81/zeros
#sequential_81/gru_81/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2%
#sequential_81/gru_81/transpose/perm¿
sequential_81/gru_81/transpose	Transposegru_81_input,sequential_81/gru_81/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
sequential_81/gru_81/transpose
sequential_81/gru_81/Shape_1Shape"sequential_81/gru_81/transpose:y:0*
T0*
_output_shapes
:2
sequential_81/gru_81/Shape_1¢
*sequential_81/gru_81/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_81/gru_81/strided_slice_1/stack¦
,sequential_81/gru_81/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_81/gru_81/strided_slice_1/stack_1¦
,sequential_81/gru_81/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_81/gru_81/strided_slice_1/stack_2ì
$sequential_81/gru_81/strided_slice_1StridedSlice%sequential_81/gru_81/Shape_1:output:03sequential_81/gru_81/strided_slice_1/stack:output:05sequential_81/gru_81/strided_slice_1/stack_1:output:05sequential_81/gru_81/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$sequential_81/gru_81/strided_slice_1¯
0sequential_81/gru_81/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ22
0sequential_81/gru_81/TensorArrayV2/element_shape
"sequential_81/gru_81/TensorArrayV2TensorListReserve9sequential_81/gru_81/TensorArrayV2/element_shape:output:0-sequential_81/gru_81/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02$
"sequential_81/gru_81/TensorArrayV2é
Jsequential_81/gru_81/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2L
Jsequential_81/gru_81/TensorArrayUnstack/TensorListFromTensor/element_shapeÌ
<sequential_81/gru_81/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"sequential_81/gru_81/transpose:y:0Ssequential_81/gru_81/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02>
<sequential_81/gru_81/TensorArrayUnstack/TensorListFromTensor¢
*sequential_81/gru_81/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_81/gru_81/strided_slice_2/stack¦
,sequential_81/gru_81/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_81/gru_81/strided_slice_2/stack_1¦
,sequential_81/gru_81/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_81/gru_81/strided_slice_2/stack_2ú
$sequential_81/gru_81/strided_slice_2StridedSlice"sequential_81/gru_81/transpose:y:03sequential_81/gru_81/strided_slice_2/stack:output:05sequential_81/gru_81/strided_slice_2/stack_1:output:05sequential_81/gru_81/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2&
$sequential_81/gru_81/strided_slice_2ñ
6sequential_81/gru_81/gru_cell_81/MatMul/ReadVariableOpReadVariableOp?sequential_81_gru_81_gru_cell_81_matmul_readvariableop_resource*
_output_shapes
:	Ø*
dtype028
6sequential_81/gru_81/gru_cell_81/MatMul/ReadVariableOpþ
'sequential_81/gru_81/gru_cell_81/MatMulMatMul-sequential_81/gru_81/strided_slice_2:output:0>sequential_81/gru_81/gru_cell_81/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2)
'sequential_81/gru_81/gru_cell_81/MatMulð
7sequential_81/gru_81/gru_cell_81/BiasAdd/ReadVariableOpReadVariableOp@sequential_81_gru_81_gru_cell_81_biasadd_readvariableop_resource*
_output_shapes	
:Ø*
dtype029
7sequential_81/gru_81/gru_cell_81/BiasAdd/ReadVariableOp
(sequential_81/gru_81/gru_cell_81/BiasAddBiasAdd1sequential_81/gru_81/gru_cell_81/MatMul:product:0?sequential_81/gru_81/gru_cell_81/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2*
(sequential_81/gru_81/gru_cell_81/BiasAdd¯
0sequential_81/gru_81/gru_cell_81/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ22
0sequential_81/gru_81/gru_cell_81/split/split_dim³
&sequential_81/gru_81/gru_cell_81/splitSplit9sequential_81/gru_81/gru_cell_81/split/split_dim:output:01sequential_81/gru_81/gru_cell_81/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2(
&sequential_81/gru_81/gru_cell_81/splitÝ
/sequential_81/gru_81/gru_cell_81/ReadVariableOpReadVariableOp8sequential_81_gru_81_gru_cell_81_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype021
/sequential_81/gru_81/gru_cell_81/ReadVariableOp½
4sequential_81/gru_81/gru_cell_81/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        26
4sequential_81/gru_81/gru_cell_81/strided_slice/stackÁ
6sequential_81/gru_81/gru_cell_81/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      28
6sequential_81/gru_81/gru_cell_81/strided_slice/stack_1Á
6sequential_81/gru_81/gru_cell_81/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      28
6sequential_81/gru_81/gru_cell_81/strided_slice/stack_2Ä
.sequential_81/gru_81/gru_cell_81/strided_sliceStridedSlice7sequential_81/gru_81/gru_cell_81/ReadVariableOp:value:0=sequential_81/gru_81/gru_cell_81/strided_slice/stack:output:0?sequential_81/gru_81/gru_cell_81/strided_slice/stack_1:output:0?sequential_81/gru_81/gru_cell_81/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask20
.sequential_81/gru_81/gru_cell_81/strided_sliceñ
)sequential_81/gru_81/gru_cell_81/MatMul_1MatMul#sequential_81/gru_81/zeros:output:07sequential_81/gru_81/gru_cell_81/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)sequential_81/gru_81/gru_cell_81/MatMul_1¥
&sequential_81/gru_81/gru_cell_81/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2(
&sequential_81/gru_81/gru_cell_81/Const³
2sequential_81/gru_81/gru_cell_81/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ24
2sequential_81/gru_81/gru_cell_81/split_1/split_dimö
(sequential_81/gru_81/gru_cell_81/split_1SplitV3sequential_81/gru_81/gru_cell_81/MatMul_1:product:0/sequential_81/gru_81/gru_cell_81/Const:output:0;sequential_81/gru_81/gru_cell_81/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2*
(sequential_81/gru_81/gru_cell_81/split_1ì
$sequential_81/gru_81/gru_cell_81/addAddV2/sequential_81/gru_81/gru_cell_81/split:output:01sequential_81/gru_81/gru_cell_81/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2&
$sequential_81/gru_81/gru_cell_81/add¼
(sequential_81/gru_81/gru_cell_81/SigmoidSigmoid(sequential_81/gru_81/gru_cell_81/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2*
(sequential_81/gru_81/gru_cell_81/Sigmoidð
&sequential_81/gru_81/gru_cell_81/add_1AddV2/sequential_81/gru_81/gru_cell_81/split:output:11sequential_81/gru_81/gru_cell_81/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2(
&sequential_81/gru_81/gru_cell_81/add_1Â
*sequential_81/gru_81/gru_cell_81/Sigmoid_1Sigmoid*sequential_81/gru_81/gru_cell_81/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2,
*sequential_81/gru_81/gru_cell_81/Sigmoid_1Û
$sequential_81/gru_81/gru_cell_81/mulMul.sequential_81/gru_81/gru_cell_81/Sigmoid_1:y:0#sequential_81/gru_81/zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2&
$sequential_81/gru_81/gru_cell_81/mulá
1sequential_81/gru_81/gru_cell_81/ReadVariableOp_1ReadVariableOp8sequential_81_gru_81_gru_cell_81_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype023
1sequential_81/gru_81/gru_cell_81/ReadVariableOp_1Á
6sequential_81/gru_81/gru_cell_81/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      28
6sequential_81/gru_81/gru_cell_81/strided_slice_1/stackÅ
8sequential_81/gru_81/gru_cell_81/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2:
8sequential_81/gru_81/gru_cell_81/strided_slice_1/stack_1Å
8sequential_81/gru_81/gru_cell_81/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2:
8sequential_81/gru_81/gru_cell_81/strided_slice_1/stack_2Ð
0sequential_81/gru_81/gru_cell_81/strided_slice_1StridedSlice9sequential_81/gru_81/gru_cell_81/ReadVariableOp_1:value:0?sequential_81/gru_81/gru_cell_81/strided_slice_1/stack:output:0Asequential_81/gru_81/gru_cell_81/strided_slice_1/stack_1:output:0Asequential_81/gru_81/gru_cell_81/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask22
0sequential_81/gru_81/gru_cell_81/strided_slice_1ø
)sequential_81/gru_81/gru_cell_81/MatMul_2MatMul(sequential_81/gru_81/gru_cell_81/mul:z:09sequential_81/gru_81/gru_cell_81/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2+
)sequential_81/gru_81/gru_cell_81/MatMul_2ò
&sequential_81/gru_81/gru_cell_81/add_2AddV2/sequential_81/gru_81/gru_cell_81/split:output:23sequential_81/gru_81/gru_cell_81/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2(
&sequential_81/gru_81/gru_cell_81/add_2µ
%sequential_81/gru_81/gru_cell_81/ReluRelu*sequential_81/gru_81/gru_cell_81/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2'
%sequential_81/gru_81/gru_cell_81/ReluÝ
&sequential_81/gru_81/gru_cell_81/mul_1Mul,sequential_81/gru_81/gru_cell_81/Sigmoid:y:0#sequential_81/gru_81/zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2(
&sequential_81/gru_81/gru_cell_81/mul_1
&sequential_81/gru_81/gru_cell_81/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2(
&sequential_81/gru_81/gru_cell_81/sub/xå
$sequential_81/gru_81/gru_cell_81/subSub/sequential_81/gru_81/gru_cell_81/sub/x:output:0,sequential_81/gru_81/gru_cell_81/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2&
$sequential_81/gru_81/gru_cell_81/subé
&sequential_81/gru_81/gru_cell_81/mul_2Mul(sequential_81/gru_81/gru_cell_81/sub:z:03sequential_81/gru_81/gru_cell_81/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2(
&sequential_81/gru_81/gru_cell_81/mul_2ä
&sequential_81/gru_81/gru_cell_81/add_3AddV2*sequential_81/gru_81/gru_cell_81/mul_1:z:0*sequential_81/gru_81/gru_cell_81/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2(
&sequential_81/gru_81/gru_cell_81/add_3¹
2sequential_81/gru_81/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÈ   24
2sequential_81/gru_81/TensorArrayV2_1/element_shape
$sequential_81/gru_81/TensorArrayV2_1TensorListReserve;sequential_81/gru_81/TensorArrayV2_1/element_shape:output:0-sequential_81/gru_81/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02&
$sequential_81/gru_81/TensorArrayV2_1x
sequential_81/gru_81/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_81/gru_81/time©
-sequential_81/gru_81/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2/
-sequential_81/gru_81/while/maximum_iterations
'sequential_81/gru_81/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2)
'sequential_81/gru_81/while/loop_counterÓ
sequential_81/gru_81/whileWhile0sequential_81/gru_81/while/loop_counter:output:06sequential_81/gru_81/while/maximum_iterations:output:0"sequential_81/gru_81/time:output:0-sequential_81/gru_81/TensorArrayV2_1:handle:0#sequential_81/gru_81/zeros:output:0-sequential_81/gru_81/strided_slice_1:output:0Lsequential_81/gru_81/TensorArrayUnstack/TensorListFromTensor:output_handle:0?sequential_81_gru_81_gru_cell_81_matmul_readvariableop_resource@sequential_81_gru_81_gru_cell_81_biasadd_readvariableop_resource8sequential_81_gru_81_gru_cell_81_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿÈ: : : : : *%
_read_only_resource_inputs
	*3
body+R)
'sequential_81_gru_81_while_body_4085115*3
cond+R)
'sequential_81_gru_81_while_cond_4085114*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿÈ: : : : : *
parallel_iterations 2
sequential_81/gru_81/whileß
Esequential_81/gru_81/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÈ   2G
Esequential_81/gru_81/TensorArrayV2Stack/TensorListStack/element_shape½
7sequential_81/gru_81/TensorArrayV2Stack/TensorListStackTensorListStack#sequential_81/gru_81/while:output:3Nsequential_81/gru_81/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*
element_dtype029
7sequential_81/gru_81/TensorArrayV2Stack/TensorListStack«
*sequential_81/gru_81/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2,
*sequential_81/gru_81/strided_slice_3/stack¦
,sequential_81/gru_81/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_81/gru_81/strided_slice_3/stack_1¦
,sequential_81/gru_81/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_81/gru_81/strided_slice_3/stack_2
$sequential_81/gru_81/strided_slice_3StridedSlice@sequential_81/gru_81/TensorArrayV2Stack/TensorListStack:tensor:03sequential_81/gru_81/strided_slice_3/stack:output:05sequential_81/gru_81/strided_slice_3/stack_1:output:05sequential_81/gru_81/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*
shrink_axis_mask2&
$sequential_81/gru_81/strided_slice_3£
%sequential_81/gru_81/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2'
%sequential_81/gru_81/transpose_1/permú
 sequential_81/gru_81/transpose_1	Transpose@sequential_81/gru_81/TensorArrayV2Stack/TensorListStack:tensor:0.sequential_81/gru_81/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2"
 sequential_81/gru_81/transpose_1
sequential_81/gru_81/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_81/gru_81/runtimeÖ
-sequential_81/dense_162/MatMul/ReadVariableOpReadVariableOp6sequential_81_dense_162_matmul_readvariableop_resource*
_output_shapes
:	Èd*
dtype02/
-sequential_81/dense_162/MatMul/ReadVariableOpâ
sequential_81/dense_162/MatMulMatMul-sequential_81/gru_81/strided_slice_3:output:05sequential_81/dense_162/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2 
sequential_81/dense_162/MatMulÔ
.sequential_81/dense_162/BiasAdd/ReadVariableOpReadVariableOp7sequential_81_dense_162_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype020
.sequential_81/dense_162/BiasAdd/ReadVariableOpá
sequential_81/dense_162/BiasAddBiasAdd(sequential_81/dense_162/MatMul:product:06sequential_81/dense_162/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2!
sequential_81/dense_162/BiasAdd 
sequential_81/dense_162/ReluRelu(sequential_81/dense_162/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
sequential_81/dense_162/ReluÕ
-sequential_81/dense_163/MatMul/ReadVariableOpReadVariableOp6sequential_81_dense_163_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02/
-sequential_81/dense_163/MatMul/ReadVariableOpß
sequential_81/dense_163/MatMulMatMul*sequential_81/dense_162/Relu:activations:05sequential_81/dense_163/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
sequential_81/dense_163/MatMulÔ
.sequential_81/dense_163/BiasAdd/ReadVariableOpReadVariableOp7sequential_81_dense_163_biasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.sequential_81/dense_163/BiasAdd/ReadVariableOpá
sequential_81/dense_163/BiasAddBiasAdd(sequential_81/dense_163/MatMul:product:06sequential_81/dense_163/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
sequential_81/dense_163/BiasAdd´
IdentityIdentity(sequential_81/dense_163/BiasAdd:output:0/^sequential_81/dense_162/BiasAdd/ReadVariableOp.^sequential_81/dense_162/MatMul/ReadVariableOp/^sequential_81/dense_163/BiasAdd/ReadVariableOp.^sequential_81/dense_163/MatMul/ReadVariableOp8^sequential_81/gru_81/gru_cell_81/BiasAdd/ReadVariableOp7^sequential_81/gru_81/gru_cell_81/MatMul/ReadVariableOp0^sequential_81/gru_81/gru_cell_81/ReadVariableOp2^sequential_81/gru_81/gru_cell_81/ReadVariableOp_1^sequential_81/gru_81/while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2`
.sequential_81/dense_162/BiasAdd/ReadVariableOp.sequential_81/dense_162/BiasAdd/ReadVariableOp2^
-sequential_81/dense_162/MatMul/ReadVariableOp-sequential_81/dense_162/MatMul/ReadVariableOp2`
.sequential_81/dense_163/BiasAdd/ReadVariableOp.sequential_81/dense_163/BiasAdd/ReadVariableOp2^
-sequential_81/dense_163/MatMul/ReadVariableOp-sequential_81/dense_163/MatMul/ReadVariableOp2r
7sequential_81/gru_81/gru_cell_81/BiasAdd/ReadVariableOp7sequential_81/gru_81/gru_cell_81/BiasAdd/ReadVariableOp2p
6sequential_81/gru_81/gru_cell_81/MatMul/ReadVariableOp6sequential_81/gru_81/gru_cell_81/MatMul/ReadVariableOp2b
/sequential_81/gru_81/gru_cell_81/ReadVariableOp/sequential_81/gru_81/gru_cell_81/ReadVariableOp2f
1sequential_81/gru_81/gru_cell_81/ReadVariableOp_11sequential_81/gru_81/gru_cell_81/ReadVariableOp_128
sequential_81/gru_81/whilesequential_81/gru_81/while:Y U
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&
_user_specified_namegru_81_input
Ì=

C__inference_gru_81_layer_call_and_return_conditional_losses_4085586

inputs&
gru_cell_81_4085510:	Ø"
gru_cell_81_4085512:	Ø'
gru_cell_81_4085514:
ÈØ
identity¢#gru_cell_81/StatefulPartitionedCall¢whileD
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
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
valueB"ÿÿÿÿ   27
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2ö
#gru_cell_81/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0gru_cell_81_4085510gru_cell_81_4085512gru_cell_81_4085514*
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
GPU 2J 8 *Q
fLRJ
H__inference_gru_cell_81_layer_call_and_return_conditional_losses_40854552%
#gru_cell_81/StatefulPartitionedCall
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
while/loop_counterî
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0gru_cell_81_4085510gru_cell_81_4085512gru_cell_81_4085514*
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
while_body_4085522*
condR
while_cond_4085521*9
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
runtime
IdentityIdentitystrided_slice_3:output:0$^gru_cell_81/StatefulPartitionedCall^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2J
#gru_cell_81/StatefulPartitionedCall#gru_cell_81/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ùW
¥
while_body_4086941
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_gru_cell_81_matmul_readvariableop_resource_0:	ØB
3while_gru_cell_81_biasadd_readvariableop_resource_0:	Ø?
+while_gru_cell_81_readvariableop_resource_0:
ÈØ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_gru_cell_81_matmul_readvariableop_resource:	Ø@
1while_gru_cell_81_biasadd_readvariableop_resource:	Ø=
)while_gru_cell_81_readvariableop_resource:
ÈØ¢(while/gru_cell_81/BiasAdd/ReadVariableOp¢'while/gru_cell_81/MatMul/ReadVariableOp¢ while/gru_cell_81/ReadVariableOp¢"while/gru_cell_81/ReadVariableOp_1Ã
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÆ
'while/gru_cell_81/MatMul/ReadVariableOpReadVariableOp2while_gru_cell_81_matmul_readvariableop_resource_0*
_output_shapes
:	Ø*
dtype02)
'while/gru_cell_81/MatMul/ReadVariableOpÔ
while/gru_cell_81/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/gru_cell_81/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
while/gru_cell_81/MatMulÅ
(while/gru_cell_81/BiasAdd/ReadVariableOpReadVariableOp3while_gru_cell_81_biasadd_readvariableop_resource_0*
_output_shapes	
:Ø*
dtype02*
(while/gru_cell_81/BiasAdd/ReadVariableOpÊ
while/gru_cell_81/BiasAddBiasAdd"while/gru_cell_81/MatMul:product:00while/gru_cell_81/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
while/gru_cell_81/BiasAdd
!while/gru_cell_81/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2#
!while/gru_cell_81/split/split_dim÷
while/gru_cell_81/splitSplit*while/gru_cell_81/split/split_dim:output:0"while/gru_cell_81/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
while/gru_cell_81/split²
 while/gru_cell_81/ReadVariableOpReadVariableOp+while_gru_cell_81_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02"
 while/gru_cell_81/ReadVariableOp
%while/gru_cell_81/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/gru_cell_81/strided_slice/stack£
'while/gru_cell_81/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/gru_cell_81/strided_slice/stack_1£
'while/gru_cell_81/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/gru_cell_81/strided_slice/stack_2ê
while/gru_cell_81/strided_sliceStridedSlice(while/gru_cell_81/ReadVariableOp:value:0.while/gru_cell_81/strided_slice/stack:output:00while/gru_cell_81/strided_slice/stack_1:output:00while/gru_cell_81/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2!
while/gru_cell_81/strided_slice´
while/gru_cell_81/MatMul_1MatMulwhile_placeholder_2(while/gru_cell_81/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_81/MatMul_1
while/gru_cell_81/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2
while/gru_cell_81/Const
#while/gru_cell_81/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2%
#while/gru_cell_81/split_1/split_dim«
while/gru_cell_81/split_1SplitV$while/gru_cell_81/MatMul_1:product:0 while/gru_cell_81/Const:output:0,while/gru_cell_81/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2
while/gru_cell_81/split_1°
while/gru_cell_81/addAddV2 while/gru_cell_81/split:output:0"while/gru_cell_81/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_81/add
while/gru_cell_81/SigmoidSigmoidwhile/gru_cell_81/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_81/Sigmoid´
while/gru_cell_81/add_1AddV2 while/gru_cell_81/split:output:1"while/gru_cell_81/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_81/add_1
while/gru_cell_81/Sigmoid_1Sigmoidwhile/gru_cell_81/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_81/Sigmoid_1
while/gru_cell_81/mulMulwhile/gru_cell_81/Sigmoid_1:y:0while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_81/mul¶
"while/gru_cell_81/ReadVariableOp_1ReadVariableOp+while_gru_cell_81_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02$
"while/gru_cell_81/ReadVariableOp_1£
'while/gru_cell_81/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2)
'while/gru_cell_81/strided_slice_1/stack§
)while/gru_cell_81/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/gru_cell_81/strided_slice_1/stack_1§
)while/gru_cell_81/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/gru_cell_81/strided_slice_1/stack_2ö
!while/gru_cell_81/strided_slice_1StridedSlice*while/gru_cell_81/ReadVariableOp_1:value:00while/gru_cell_81/strided_slice_1/stack:output:02while/gru_cell_81/strided_slice_1/stack_1:output:02while/gru_cell_81/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2#
!while/gru_cell_81/strided_slice_1¼
while/gru_cell_81/MatMul_2MatMulwhile/gru_cell_81/mul:z:0*while/gru_cell_81/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_81/MatMul_2¶
while/gru_cell_81/add_2AddV2 while/gru_cell_81/split:output:2$while/gru_cell_81/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_81/add_2
while/gru_cell_81/ReluReluwhile/gru_cell_81/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_81/Relu 
while/gru_cell_81/mul_1Mulwhile/gru_cell_81/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_81/mul_1w
while/gru_cell_81/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
while/gru_cell_81/sub/x©
while/gru_cell_81/subSub while/gru_cell_81/sub/x:output:0while/gru_cell_81/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_81/sub­
while/gru_cell_81/mul_2Mulwhile/gru_cell_81/sub:z:0$while/gru_cell_81/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_81/mul_2¨
while/gru_cell_81/add_3AddV2while/gru_cell_81/mul_1:z:0while/gru_cell_81/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_81/add_3ß
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_81/add_3:z:0*
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
while/add_1û
while/IdentityIdentitywhile/add_1:z:0)^while/gru_cell_81/BiasAdd/ReadVariableOp(^while/gru_cell_81/MatMul/ReadVariableOp!^while/gru_cell_81/ReadVariableOp#^while/gru_cell_81/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations)^while/gru_cell_81/BiasAdd/ReadVariableOp(^while/gru_cell_81/MatMul/ReadVariableOp!^while/gru_cell_81/ReadVariableOp#^while/gru_cell_81/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_1ý
while/Identity_2Identitywhile/add:z:0)^while/gru_cell_81/BiasAdd/ReadVariableOp(^while/gru_cell_81/MatMul/ReadVariableOp!^while/gru_cell_81/ReadVariableOp#^while/gru_cell_81/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_2ª
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/gru_cell_81/BiasAdd/ReadVariableOp(^while/gru_cell_81/MatMul/ReadVariableOp!^while/gru_cell_81/ReadVariableOp#^while/gru_cell_81/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/gru_cell_81/add_3:z:0)^while/gru_cell_81/BiasAdd/ReadVariableOp(^while/gru_cell_81/MatMul/ReadVariableOp!^while/gru_cell_81/ReadVariableOp#^while/gru_cell_81/ReadVariableOp_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_4"h
1while_gru_cell_81_biasadd_readvariableop_resource3while_gru_cell_81_biasadd_readvariableop_resource_0"f
0while_gru_cell_81_matmul_readvariableop_resource2while_gru_cell_81_matmul_readvariableop_resource_0"X
)while_gru_cell_81_readvariableop_resource+while_gru_cell_81_readvariableop_resource_0")
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
(while/gru_cell_81/BiasAdd/ReadVariableOp(while/gru_cell_81/BiasAdd/ReadVariableOp2R
'while/gru_cell_81/MatMul/ReadVariableOp'while/gru_cell_81/MatMul/ReadVariableOp2D
 while/gru_cell_81/ReadVariableOp while/gru_cell_81/ReadVariableOp2H
"while/gru_cell_81/ReadVariableOp_1"while/gru_cell_81/ReadVariableOp_1: 
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
while_cond_4087111
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_4087111___redundant_placeholder05
1while_while_cond_4087111___redundant_placeholder15
1while_while_cond_4087111___redundant_placeholder25
1while_while_cond_4087111___redundant_placeholder3
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
´

Ù
-__inference_gru_cell_81_layer_call_fn_4087617

inputs
states_0
unknown:	Ø
	unknown_0:	Ø
	unknown_1:
ÈØ
identity

identity_1¢StatefulPartitionedCall¦
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
GPU 2J 8 *Q
fLRJ
H__inference_gru_cell_81_layer_call_and_return_conditional_losses_40854552
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
-:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿÈ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
"
_user_specified_name
states/0
Ý*
ê
H__inference_gru_cell_81_layer_call_and_return_conditional_losses_4087709

inputs
states_01
matmul_readvariableop_resource:	Ø.
biasadd_readvariableop_resource:	Ø+
readvariableop_resource:
ÈØ
identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢ReadVariableOp¢ReadVariableOp_1
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	Ø*
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
-:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿÈ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
"
_user_specified_name
states/0

¯
while_cond_4086940
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_4086940___redundant_placeholder05
1while_while_cond_4086940___redundant_placeholder15
1while_while_cond_4086940___redundant_placeholder25
1while_while_cond_4086940___redundant_placeholder3
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
i
¥
C__inference_gru_81_layer_call_and_return_conditional_losses_4087208
inputs_0=
*gru_cell_81_matmul_readvariableop_resource:	Ø:
+gru_cell_81_biasadd_readvariableop_resource:	Ø7
#gru_cell_81_readvariableop_resource:
ÈØ
identity¢"gru_cell_81/BiasAdd/ReadVariableOp¢!gru_cell_81/MatMul/ReadVariableOp¢gru_cell_81/ReadVariableOp¢gru_cell_81/ReadVariableOp_1¢whileF
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
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
valueB"ÿÿÿÿ   27
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2²
!gru_cell_81/MatMul/ReadVariableOpReadVariableOp*gru_cell_81_matmul_readvariableop_resource*
_output_shapes
:	Ø*
dtype02#
!gru_cell_81/MatMul/ReadVariableOpª
gru_cell_81/MatMulMatMulstrided_slice_2:output:0)gru_cell_81/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_cell_81/MatMul±
"gru_cell_81/BiasAdd/ReadVariableOpReadVariableOp+gru_cell_81_biasadd_readvariableop_resource*
_output_shapes	
:Ø*
dtype02$
"gru_cell_81/BiasAdd/ReadVariableOp²
gru_cell_81/BiasAddBiasAddgru_cell_81/MatMul:product:0*gru_cell_81/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_cell_81/BiasAdd
gru_cell_81/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
gru_cell_81/split/split_dimß
gru_cell_81/splitSplit$gru_cell_81/split/split_dim:output:0gru_cell_81/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
gru_cell_81/split
gru_cell_81/ReadVariableOpReadVariableOp#gru_cell_81_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02
gru_cell_81/ReadVariableOp
gru_cell_81/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
gru_cell_81/strided_slice/stack
!gru_cell_81/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2#
!gru_cell_81/strided_slice/stack_1
!gru_cell_81/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!gru_cell_81/strided_slice/stack_2Æ
gru_cell_81/strided_sliceStridedSlice"gru_cell_81/ReadVariableOp:value:0(gru_cell_81/strided_slice/stack:output:0*gru_cell_81/strided_slice/stack_1:output:0*gru_cell_81/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2
gru_cell_81/strided_slice
gru_cell_81/MatMul_1MatMulzeros:output:0"gru_cell_81/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_81/MatMul_1{
gru_cell_81/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2
gru_cell_81/Const
gru_cell_81/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
gru_cell_81/split_1/split_dim
gru_cell_81/split_1SplitVgru_cell_81/MatMul_1:product:0gru_cell_81/Const:output:0&gru_cell_81/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2
gru_cell_81/split_1
gru_cell_81/addAddV2gru_cell_81/split:output:0gru_cell_81/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_81/add}
gru_cell_81/SigmoidSigmoidgru_cell_81/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_81/Sigmoid
gru_cell_81/add_1AddV2gru_cell_81/split:output:1gru_cell_81/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_81/add_1
gru_cell_81/Sigmoid_1Sigmoidgru_cell_81/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_81/Sigmoid_1
gru_cell_81/mulMulgru_cell_81/Sigmoid_1:y:0zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_81/mul¢
gru_cell_81/ReadVariableOp_1ReadVariableOp#gru_cell_81_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02
gru_cell_81/ReadVariableOp_1
!gru_cell_81/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2#
!gru_cell_81/strided_slice_1/stack
#gru_cell_81/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#gru_cell_81/strided_slice_1/stack_1
#gru_cell_81/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gru_cell_81/strided_slice_1/stack_2Ò
gru_cell_81/strided_slice_1StridedSlice$gru_cell_81/ReadVariableOp_1:value:0*gru_cell_81/strided_slice_1/stack:output:0,gru_cell_81/strided_slice_1/stack_1:output:0,gru_cell_81/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2
gru_cell_81/strided_slice_1¤
gru_cell_81/MatMul_2MatMulgru_cell_81/mul:z:0$gru_cell_81/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_81/MatMul_2
gru_cell_81/add_2AddV2gru_cell_81/split:output:2gru_cell_81/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_81/add_2v
gru_cell_81/ReluRelugru_cell_81/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_81/Relu
gru_cell_81/mul_1Mulgru_cell_81/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_81/mul_1k
gru_cell_81/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_81/sub/x
gru_cell_81/subSubgru_cell_81/sub/x:output:0gru_cell_81/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_81/sub
gru_cell_81/mul_2Mulgru_cell_81/sub:z:0gru_cell_81/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_81/mul_2
gru_cell_81/add_3AddV2gru_cell_81/mul_1:z:0gru_cell_81/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_81/add_3
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
while/loop_counter­
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*gru_cell_81_matmul_readvariableop_resource+gru_cell_81_biasadd_readvariableop_resource#gru_cell_81_readvariableop_resource*
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
while_body_4087112*
condR
while_cond_4087111*9
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
runtimeú
IdentityIdentitystrided_slice_3:output:0#^gru_cell_81/BiasAdd/ReadVariableOp"^gru_cell_81/MatMul/ReadVariableOp^gru_cell_81/ReadVariableOp^gru_cell_81/ReadVariableOp_1^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2H
"gru_cell_81/BiasAdd/ReadVariableOp"gru_cell_81/BiasAdd/ReadVariableOp2F
!gru_cell_81/MatMul/ReadVariableOp!gru_cell_81/MatMul/ReadVariableOp28
gru_cell_81/ReadVariableOpgru_cell_81/ReadVariableOp2<
gru_cell_81/ReadVariableOp_1gru_cell_81/ReadVariableOp_12
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
ä
¾
'sequential_81_gru_81_while_cond_4085114F
Bsequential_81_gru_81_while_sequential_81_gru_81_while_loop_counterL
Hsequential_81_gru_81_while_sequential_81_gru_81_while_maximum_iterations*
&sequential_81_gru_81_while_placeholder,
(sequential_81_gru_81_while_placeholder_1,
(sequential_81_gru_81_while_placeholder_2H
Dsequential_81_gru_81_while_less_sequential_81_gru_81_strided_slice_1_
[sequential_81_gru_81_while_sequential_81_gru_81_while_cond_4085114___redundant_placeholder0_
[sequential_81_gru_81_while_sequential_81_gru_81_while_cond_4085114___redundant_placeholder1_
[sequential_81_gru_81_while_sequential_81_gru_81_while_cond_4085114___redundant_placeholder2_
[sequential_81_gru_81_while_sequential_81_gru_81_while_cond_4085114___redundant_placeholder3'
#sequential_81_gru_81_while_identity
Ù
sequential_81/gru_81/while/LessLess&sequential_81_gru_81_while_placeholderDsequential_81_gru_81_while_less_sequential_81_gru_81_strided_slice_1*
T0*
_output_shapes
: 2!
sequential_81/gru_81/while/Less
#sequential_81/gru_81/while/IdentityIdentity#sequential_81/gru_81/while/Less:z:0*
T0
*
_output_shapes
: 2%
#sequential_81/gru_81/while/Identity"S
#sequential_81_gru_81_while_identity,sequential_81/gru_81/while/Identity:output:0*(
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
i
¥
C__inference_gru_81_layer_call_and_return_conditional_losses_4087037
inputs_0=
*gru_cell_81_matmul_readvariableop_resource:	Ø:
+gru_cell_81_biasadd_readvariableop_resource:	Ø7
#gru_cell_81_readvariableop_resource:
ÈØ
identity¢"gru_cell_81/BiasAdd/ReadVariableOp¢!gru_cell_81/MatMul/ReadVariableOp¢gru_cell_81/ReadVariableOp¢gru_cell_81/ReadVariableOp_1¢whileF
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
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
valueB"ÿÿÿÿ   27
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2²
!gru_cell_81/MatMul/ReadVariableOpReadVariableOp*gru_cell_81_matmul_readvariableop_resource*
_output_shapes
:	Ø*
dtype02#
!gru_cell_81/MatMul/ReadVariableOpª
gru_cell_81/MatMulMatMulstrided_slice_2:output:0)gru_cell_81/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_cell_81/MatMul±
"gru_cell_81/BiasAdd/ReadVariableOpReadVariableOp+gru_cell_81_biasadd_readvariableop_resource*
_output_shapes	
:Ø*
dtype02$
"gru_cell_81/BiasAdd/ReadVariableOp²
gru_cell_81/BiasAddBiasAddgru_cell_81/MatMul:product:0*gru_cell_81/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_cell_81/BiasAdd
gru_cell_81/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
gru_cell_81/split/split_dimß
gru_cell_81/splitSplit$gru_cell_81/split/split_dim:output:0gru_cell_81/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
gru_cell_81/split
gru_cell_81/ReadVariableOpReadVariableOp#gru_cell_81_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02
gru_cell_81/ReadVariableOp
gru_cell_81/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
gru_cell_81/strided_slice/stack
!gru_cell_81/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2#
!gru_cell_81/strided_slice/stack_1
!gru_cell_81/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!gru_cell_81/strided_slice/stack_2Æ
gru_cell_81/strided_sliceStridedSlice"gru_cell_81/ReadVariableOp:value:0(gru_cell_81/strided_slice/stack:output:0*gru_cell_81/strided_slice/stack_1:output:0*gru_cell_81/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2
gru_cell_81/strided_slice
gru_cell_81/MatMul_1MatMulzeros:output:0"gru_cell_81/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_81/MatMul_1{
gru_cell_81/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2
gru_cell_81/Const
gru_cell_81/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
gru_cell_81/split_1/split_dim
gru_cell_81/split_1SplitVgru_cell_81/MatMul_1:product:0gru_cell_81/Const:output:0&gru_cell_81/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2
gru_cell_81/split_1
gru_cell_81/addAddV2gru_cell_81/split:output:0gru_cell_81/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_81/add}
gru_cell_81/SigmoidSigmoidgru_cell_81/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_81/Sigmoid
gru_cell_81/add_1AddV2gru_cell_81/split:output:1gru_cell_81/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_81/add_1
gru_cell_81/Sigmoid_1Sigmoidgru_cell_81/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_81/Sigmoid_1
gru_cell_81/mulMulgru_cell_81/Sigmoid_1:y:0zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_81/mul¢
gru_cell_81/ReadVariableOp_1ReadVariableOp#gru_cell_81_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02
gru_cell_81/ReadVariableOp_1
!gru_cell_81/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2#
!gru_cell_81/strided_slice_1/stack
#gru_cell_81/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#gru_cell_81/strided_slice_1/stack_1
#gru_cell_81/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gru_cell_81/strided_slice_1/stack_2Ò
gru_cell_81/strided_slice_1StridedSlice$gru_cell_81/ReadVariableOp_1:value:0*gru_cell_81/strided_slice_1/stack:output:0,gru_cell_81/strided_slice_1/stack_1:output:0,gru_cell_81/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2
gru_cell_81/strided_slice_1¤
gru_cell_81/MatMul_2MatMulgru_cell_81/mul:z:0$gru_cell_81/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_81/MatMul_2
gru_cell_81/add_2AddV2gru_cell_81/split:output:2gru_cell_81/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_81/add_2v
gru_cell_81/ReluRelugru_cell_81/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_81/Relu
gru_cell_81/mul_1Mulgru_cell_81/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_81/mul_1k
gru_cell_81/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_81/sub/x
gru_cell_81/subSubgru_cell_81/sub/x:output:0gru_cell_81/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_81/sub
gru_cell_81/mul_2Mulgru_cell_81/sub:z:0gru_cell_81/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_81/mul_2
gru_cell_81/add_3AddV2gru_cell_81/mul_1:z:0gru_cell_81/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_81/add_3
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
while/loop_counter­
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*gru_cell_81_matmul_readvariableop_resource+gru_cell_81_biasadd_readvariableop_resource#gru_cell_81_readvariableop_resource*
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
while_body_4086941*
condR
while_cond_4086940*9
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
runtimeú
IdentityIdentitystrided_slice_3:output:0#^gru_cell_81/BiasAdd/ReadVariableOp"^gru_cell_81/MatMul/ReadVariableOp^gru_cell_81/ReadVariableOp^gru_cell_81/ReadVariableOp_1^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2H
"gru_cell_81/BiasAdd/ReadVariableOp"gru_cell_81/BiasAdd/ReadVariableOp2F
!gru_cell_81/MatMul/ReadVariableOp!gru_cell_81/MatMul/ReadVariableOp28
gru_cell_81/ReadVariableOpgru_cell_81/ReadVariableOp2<
gru_cell_81/ReadVariableOp_1gru_cell_81/ReadVariableOp_12
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
ùW
¥
while_body_4085901
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_gru_cell_81_matmul_readvariableop_resource_0:	ØB
3while_gru_cell_81_biasadd_readvariableop_resource_0:	Ø?
+while_gru_cell_81_readvariableop_resource_0:
ÈØ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_gru_cell_81_matmul_readvariableop_resource:	Ø@
1while_gru_cell_81_biasadd_readvariableop_resource:	Ø=
)while_gru_cell_81_readvariableop_resource:
ÈØ¢(while/gru_cell_81/BiasAdd/ReadVariableOp¢'while/gru_cell_81/MatMul/ReadVariableOp¢ while/gru_cell_81/ReadVariableOp¢"while/gru_cell_81/ReadVariableOp_1Ã
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÆ
'while/gru_cell_81/MatMul/ReadVariableOpReadVariableOp2while_gru_cell_81_matmul_readvariableop_resource_0*
_output_shapes
:	Ø*
dtype02)
'while/gru_cell_81/MatMul/ReadVariableOpÔ
while/gru_cell_81/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/gru_cell_81/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
while/gru_cell_81/MatMulÅ
(while/gru_cell_81/BiasAdd/ReadVariableOpReadVariableOp3while_gru_cell_81_biasadd_readvariableop_resource_0*
_output_shapes	
:Ø*
dtype02*
(while/gru_cell_81/BiasAdd/ReadVariableOpÊ
while/gru_cell_81/BiasAddBiasAdd"while/gru_cell_81/MatMul:product:00while/gru_cell_81/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
while/gru_cell_81/BiasAdd
!while/gru_cell_81/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2#
!while/gru_cell_81/split/split_dim÷
while/gru_cell_81/splitSplit*while/gru_cell_81/split/split_dim:output:0"while/gru_cell_81/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
while/gru_cell_81/split²
 while/gru_cell_81/ReadVariableOpReadVariableOp+while_gru_cell_81_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02"
 while/gru_cell_81/ReadVariableOp
%while/gru_cell_81/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/gru_cell_81/strided_slice/stack£
'while/gru_cell_81/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/gru_cell_81/strided_slice/stack_1£
'while/gru_cell_81/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/gru_cell_81/strided_slice/stack_2ê
while/gru_cell_81/strided_sliceStridedSlice(while/gru_cell_81/ReadVariableOp:value:0.while/gru_cell_81/strided_slice/stack:output:00while/gru_cell_81/strided_slice/stack_1:output:00while/gru_cell_81/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2!
while/gru_cell_81/strided_slice´
while/gru_cell_81/MatMul_1MatMulwhile_placeholder_2(while/gru_cell_81/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_81/MatMul_1
while/gru_cell_81/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2
while/gru_cell_81/Const
#while/gru_cell_81/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2%
#while/gru_cell_81/split_1/split_dim«
while/gru_cell_81/split_1SplitV$while/gru_cell_81/MatMul_1:product:0 while/gru_cell_81/Const:output:0,while/gru_cell_81/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2
while/gru_cell_81/split_1°
while/gru_cell_81/addAddV2 while/gru_cell_81/split:output:0"while/gru_cell_81/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_81/add
while/gru_cell_81/SigmoidSigmoidwhile/gru_cell_81/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_81/Sigmoid´
while/gru_cell_81/add_1AddV2 while/gru_cell_81/split:output:1"while/gru_cell_81/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_81/add_1
while/gru_cell_81/Sigmoid_1Sigmoidwhile/gru_cell_81/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_81/Sigmoid_1
while/gru_cell_81/mulMulwhile/gru_cell_81/Sigmoid_1:y:0while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_81/mul¶
"while/gru_cell_81/ReadVariableOp_1ReadVariableOp+while_gru_cell_81_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02$
"while/gru_cell_81/ReadVariableOp_1£
'while/gru_cell_81/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2)
'while/gru_cell_81/strided_slice_1/stack§
)while/gru_cell_81/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/gru_cell_81/strided_slice_1/stack_1§
)while/gru_cell_81/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/gru_cell_81/strided_slice_1/stack_2ö
!while/gru_cell_81/strided_slice_1StridedSlice*while/gru_cell_81/ReadVariableOp_1:value:00while/gru_cell_81/strided_slice_1/stack:output:02while/gru_cell_81/strided_slice_1/stack_1:output:02while/gru_cell_81/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2#
!while/gru_cell_81/strided_slice_1¼
while/gru_cell_81/MatMul_2MatMulwhile/gru_cell_81/mul:z:0*while/gru_cell_81/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_81/MatMul_2¶
while/gru_cell_81/add_2AddV2 while/gru_cell_81/split:output:2$while/gru_cell_81/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_81/add_2
while/gru_cell_81/ReluReluwhile/gru_cell_81/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_81/Relu 
while/gru_cell_81/mul_1Mulwhile/gru_cell_81/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_81/mul_1w
while/gru_cell_81/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
while/gru_cell_81/sub/x©
while/gru_cell_81/subSub while/gru_cell_81/sub/x:output:0while/gru_cell_81/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_81/sub­
while/gru_cell_81/mul_2Mulwhile/gru_cell_81/sub:z:0$while/gru_cell_81/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_81/mul_2¨
while/gru_cell_81/add_3AddV2while/gru_cell_81/mul_1:z:0while/gru_cell_81/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_81/add_3ß
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_81/add_3:z:0*
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
while/add_1û
while/IdentityIdentitywhile/add_1:z:0)^while/gru_cell_81/BiasAdd/ReadVariableOp(^while/gru_cell_81/MatMul/ReadVariableOp!^while/gru_cell_81/ReadVariableOp#^while/gru_cell_81/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations)^while/gru_cell_81/BiasAdd/ReadVariableOp(^while/gru_cell_81/MatMul/ReadVariableOp!^while/gru_cell_81/ReadVariableOp#^while/gru_cell_81/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_1ý
while/Identity_2Identitywhile/add:z:0)^while/gru_cell_81/BiasAdd/ReadVariableOp(^while/gru_cell_81/MatMul/ReadVariableOp!^while/gru_cell_81/ReadVariableOp#^while/gru_cell_81/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_2ª
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/gru_cell_81/BiasAdd/ReadVariableOp(^while/gru_cell_81/MatMul/ReadVariableOp!^while/gru_cell_81/ReadVariableOp#^while/gru_cell_81/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/gru_cell_81/add_3:z:0)^while/gru_cell_81/BiasAdd/ReadVariableOp(^while/gru_cell_81/MatMul/ReadVariableOp!^while/gru_cell_81/ReadVariableOp#^while/gru_cell_81/ReadVariableOp_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_4"h
1while_gru_cell_81_biasadd_readvariableop_resource3while_gru_cell_81_biasadd_readvariableop_resource_0"f
0while_gru_cell_81_matmul_readvariableop_resource2while_gru_cell_81_matmul_readvariableop_resource_0"X
)while_gru_cell_81_readvariableop_resource+while_gru_cell_81_readvariableop_resource_0")
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
(while/gru_cell_81/BiasAdd/ReadVariableOp(while/gru_cell_81/BiasAdd/ReadVariableOp2R
'while/gru_cell_81/MatMul/ReadVariableOp'while/gru_cell_81/MatMul/ReadVariableOp2D
 while/gru_cell_81/ReadVariableOp while/gru_cell_81/ReadVariableOp2H
"while/gru_cell_81/ReadVariableOp_1"while/gru_cell_81/ReadVariableOp_1: 
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
éd
þ	
gru_81_while_body_4086713*
&gru_81_while_gru_81_while_loop_counter0
,gru_81_while_gru_81_while_maximum_iterations
gru_81_while_placeholder
gru_81_while_placeholder_1
gru_81_while_placeholder_2)
%gru_81_while_gru_81_strided_slice_1_0e
agru_81_while_tensorarrayv2read_tensorlistgetitem_gru_81_tensorarrayunstack_tensorlistfromtensor_0L
9gru_81_while_gru_cell_81_matmul_readvariableop_resource_0:	ØI
:gru_81_while_gru_cell_81_biasadd_readvariableop_resource_0:	ØF
2gru_81_while_gru_cell_81_readvariableop_resource_0:
ÈØ
gru_81_while_identity
gru_81_while_identity_1
gru_81_while_identity_2
gru_81_while_identity_3
gru_81_while_identity_4'
#gru_81_while_gru_81_strided_slice_1c
_gru_81_while_tensorarrayv2read_tensorlistgetitem_gru_81_tensorarrayunstack_tensorlistfromtensorJ
7gru_81_while_gru_cell_81_matmul_readvariableop_resource:	ØG
8gru_81_while_gru_cell_81_biasadd_readvariableop_resource:	ØD
0gru_81_while_gru_cell_81_readvariableop_resource:
ÈØ¢/gru_81/while/gru_cell_81/BiasAdd/ReadVariableOp¢.gru_81/while/gru_cell_81/MatMul/ReadVariableOp¢'gru_81/while/gru_cell_81/ReadVariableOp¢)gru_81/while/gru_cell_81/ReadVariableOp_1Ñ
>gru_81/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2@
>gru_81/while/TensorArrayV2Read/TensorListGetItem/element_shapeý
0gru_81/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemagru_81_while_tensorarrayv2read_tensorlistgetitem_gru_81_tensorarrayunstack_tensorlistfromtensor_0gru_81_while_placeholderGgru_81/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype022
0gru_81/while/TensorArrayV2Read/TensorListGetItemÛ
.gru_81/while/gru_cell_81/MatMul/ReadVariableOpReadVariableOp9gru_81_while_gru_cell_81_matmul_readvariableop_resource_0*
_output_shapes
:	Ø*
dtype020
.gru_81/while/gru_cell_81/MatMul/ReadVariableOpð
gru_81/while/gru_cell_81/MatMulMatMul7gru_81/while/TensorArrayV2Read/TensorListGetItem:item:06gru_81/while/gru_cell_81/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2!
gru_81/while/gru_cell_81/MatMulÚ
/gru_81/while/gru_cell_81/BiasAdd/ReadVariableOpReadVariableOp:gru_81_while_gru_cell_81_biasadd_readvariableop_resource_0*
_output_shapes	
:Ø*
dtype021
/gru_81/while/gru_cell_81/BiasAdd/ReadVariableOpæ
 gru_81/while/gru_cell_81/BiasAddBiasAdd)gru_81/while/gru_cell_81/MatMul:product:07gru_81/while/gru_cell_81/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2"
 gru_81/while/gru_cell_81/BiasAdd
(gru_81/while/gru_cell_81/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2*
(gru_81/while/gru_cell_81/split/split_dim
gru_81/while/gru_cell_81/splitSplit1gru_81/while/gru_cell_81/split/split_dim:output:0)gru_81/while/gru_cell_81/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2 
gru_81/while/gru_cell_81/splitÇ
'gru_81/while/gru_cell_81/ReadVariableOpReadVariableOp2gru_81_while_gru_cell_81_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02)
'gru_81/while/gru_cell_81/ReadVariableOp­
,gru_81/while/gru_cell_81/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2.
,gru_81/while/gru_cell_81/strided_slice/stack±
.gru_81/while/gru_cell_81/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      20
.gru_81/while/gru_cell_81/strided_slice/stack_1±
.gru_81/while/gru_cell_81/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.gru_81/while/gru_cell_81/strided_slice/stack_2
&gru_81/while/gru_cell_81/strided_sliceStridedSlice/gru_81/while/gru_cell_81/ReadVariableOp:value:05gru_81/while/gru_cell_81/strided_slice/stack:output:07gru_81/while/gru_cell_81/strided_slice/stack_1:output:07gru_81/while/gru_cell_81/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2(
&gru_81/while/gru_cell_81/strided_sliceÐ
!gru_81/while/gru_cell_81/MatMul_1MatMulgru_81_while_placeholder_2/gru_81/while/gru_cell_81/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!gru_81/while/gru_cell_81/MatMul_1
gru_81/while/gru_cell_81/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2 
gru_81/while/gru_cell_81/Const£
*gru_81/while/gru_cell_81/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2,
*gru_81/while/gru_cell_81/split_1/split_dimÎ
 gru_81/while/gru_cell_81/split_1SplitV+gru_81/while/gru_cell_81/MatMul_1:product:0'gru_81/while/gru_cell_81/Const:output:03gru_81/while/gru_cell_81/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2"
 gru_81/while/gru_cell_81/split_1Ì
gru_81/while/gru_cell_81/addAddV2'gru_81/while/gru_cell_81/split:output:0)gru_81/while/gru_cell_81/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_81/while/gru_cell_81/add¤
 gru_81/while/gru_cell_81/SigmoidSigmoid gru_81/while/gru_cell_81/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2"
 gru_81/while/gru_cell_81/SigmoidÐ
gru_81/while/gru_cell_81/add_1AddV2'gru_81/while/gru_cell_81/split:output:1)gru_81/while/gru_cell_81/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2 
gru_81/while/gru_cell_81/add_1ª
"gru_81/while/gru_cell_81/Sigmoid_1Sigmoid"gru_81/while/gru_cell_81/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2$
"gru_81/while/gru_cell_81/Sigmoid_1º
gru_81/while/gru_cell_81/mulMul&gru_81/while/gru_cell_81/Sigmoid_1:y:0gru_81_while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_81/while/gru_cell_81/mulË
)gru_81/while/gru_cell_81/ReadVariableOp_1ReadVariableOp2gru_81_while_gru_cell_81_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02+
)gru_81/while/gru_cell_81/ReadVariableOp_1±
.gru_81/while/gru_cell_81/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      20
.gru_81/while/gru_cell_81/strided_slice_1/stackµ
0gru_81/while/gru_cell_81/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        22
0gru_81/while/gru_cell_81/strided_slice_1/stack_1µ
0gru_81/while/gru_cell_81/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0gru_81/while/gru_cell_81/strided_slice_1/stack_2 
(gru_81/while/gru_cell_81/strided_slice_1StridedSlice1gru_81/while/gru_cell_81/ReadVariableOp_1:value:07gru_81/while/gru_cell_81/strided_slice_1/stack:output:09gru_81/while/gru_cell_81/strided_slice_1/stack_1:output:09gru_81/while/gru_cell_81/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2*
(gru_81/while/gru_cell_81/strided_slice_1Ø
!gru_81/while/gru_cell_81/MatMul_2MatMul gru_81/while/gru_cell_81/mul:z:01gru_81/while/gru_cell_81/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2#
!gru_81/while/gru_cell_81/MatMul_2Ò
gru_81/while/gru_cell_81/add_2AddV2'gru_81/while/gru_cell_81/split:output:2+gru_81/while/gru_cell_81/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2 
gru_81/while/gru_cell_81/add_2
gru_81/while/gru_cell_81/ReluRelu"gru_81/while/gru_cell_81/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_81/while/gru_cell_81/Relu¼
gru_81/while/gru_cell_81/mul_1Mul$gru_81/while/gru_cell_81/Sigmoid:y:0gru_81_while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2 
gru_81/while/gru_cell_81/mul_1
gru_81/while/gru_cell_81/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2 
gru_81/while/gru_cell_81/sub/xÅ
gru_81/while/gru_cell_81/subSub'gru_81/while/gru_cell_81/sub/x:output:0$gru_81/while/gru_cell_81/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_81/while/gru_cell_81/subÉ
gru_81/while/gru_cell_81/mul_2Mul gru_81/while/gru_cell_81/sub:z:0+gru_81/while/gru_cell_81/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2 
gru_81/while/gru_cell_81/mul_2Ä
gru_81/while/gru_cell_81/add_3AddV2"gru_81/while/gru_cell_81/mul_1:z:0"gru_81/while/gru_cell_81/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2 
gru_81/while/gru_cell_81/add_3
1gru_81/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemgru_81_while_placeholder_1gru_81_while_placeholder"gru_81/while/gru_cell_81/add_3:z:0*
_output_shapes
: *
element_dtype023
1gru_81/while/TensorArrayV2Write/TensorListSetItemj
gru_81/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru_81/while/add/y
gru_81/while/addAddV2gru_81_while_placeholdergru_81/while/add/y:output:0*
T0*
_output_shapes
: 2
gru_81/while/addn
gru_81/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru_81/while/add_1/y
gru_81/while/add_1AddV2&gru_81_while_gru_81_while_loop_countergru_81/while/add_1/y:output:0*
T0*
_output_shapes
: 2
gru_81/while/add_1¬
gru_81/while/IdentityIdentitygru_81/while/add_1:z:00^gru_81/while/gru_cell_81/BiasAdd/ReadVariableOp/^gru_81/while/gru_cell_81/MatMul/ReadVariableOp(^gru_81/while/gru_cell_81/ReadVariableOp*^gru_81/while/gru_cell_81/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_81/while/IdentityÆ
gru_81/while/Identity_1Identity,gru_81_while_gru_81_while_maximum_iterations0^gru_81/while/gru_cell_81/BiasAdd/ReadVariableOp/^gru_81/while/gru_cell_81/MatMul/ReadVariableOp(^gru_81/while/gru_cell_81/ReadVariableOp*^gru_81/while/gru_cell_81/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_81/while/Identity_1®
gru_81/while/Identity_2Identitygru_81/while/add:z:00^gru_81/while/gru_cell_81/BiasAdd/ReadVariableOp/^gru_81/while/gru_cell_81/MatMul/ReadVariableOp(^gru_81/while/gru_cell_81/ReadVariableOp*^gru_81/while/gru_cell_81/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_81/while/Identity_2Û
gru_81/while/Identity_3IdentityAgru_81/while/TensorArrayV2Write/TensorListSetItem:output_handle:00^gru_81/while/gru_cell_81/BiasAdd/ReadVariableOp/^gru_81/while/gru_cell_81/MatMul/ReadVariableOp(^gru_81/while/gru_cell_81/ReadVariableOp*^gru_81/while/gru_cell_81/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_81/while/Identity_3Î
gru_81/while/Identity_4Identity"gru_81/while/gru_cell_81/add_3:z:00^gru_81/while/gru_cell_81/BiasAdd/ReadVariableOp/^gru_81/while/gru_cell_81/MatMul/ReadVariableOp(^gru_81/while/gru_cell_81/ReadVariableOp*^gru_81/while/gru_cell_81/ReadVariableOp_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_81/while/Identity_4"L
#gru_81_while_gru_81_strided_slice_1%gru_81_while_gru_81_strided_slice_1_0"v
8gru_81_while_gru_cell_81_biasadd_readvariableop_resource:gru_81_while_gru_cell_81_biasadd_readvariableop_resource_0"t
7gru_81_while_gru_cell_81_matmul_readvariableop_resource9gru_81_while_gru_cell_81_matmul_readvariableop_resource_0"f
0gru_81_while_gru_cell_81_readvariableop_resource2gru_81_while_gru_cell_81_readvariableop_resource_0"7
gru_81_while_identitygru_81/while/Identity:output:0";
gru_81_while_identity_1 gru_81/while/Identity_1:output:0";
gru_81_while_identity_2 gru_81/while/Identity_2:output:0";
gru_81_while_identity_3 gru_81/while/Identity_3:output:0";
gru_81_while_identity_4 gru_81/while/Identity_4:output:0"Ä
_gru_81_while_tensorarrayv2read_tensorlistgetitem_gru_81_tensorarrayunstack_tensorlistfromtensoragru_81_while_tensorarrayv2read_tensorlistgetitem_gru_81_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿÈ: : : : : 2b
/gru_81/while/gru_cell_81/BiasAdd/ReadVariableOp/gru_81/while/gru_cell_81/BiasAdd/ReadVariableOp2`
.gru_81/while/gru_cell_81/MatMul/ReadVariableOp.gru_81/while/gru_cell_81/MatMul/ReadVariableOp2R
'gru_81/while/gru_cell_81/ReadVariableOp'gru_81/while/gru_cell_81/ReadVariableOp2V
)gru_81/while/gru_cell_81/ReadVariableOp_1)gru_81/while/gru_cell_81/ReadVariableOp_1: 
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
while_cond_4087453
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_4087453___redundant_placeholder05
1while_while_cond_4087453___redundant_placeholder15
1while_while_cond_4087453___redundant_placeholder25
1while_while_cond_4087453___redundant_placeholder3
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

¯
while_cond_4086163
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_4086163___redundant_placeholder05
1while_while_cond_4086163___redundant_placeholder15
1while_while_cond_4086163___redundant_placeholder25
1while_while_cond_4086163___redundant_placeholder3
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
Ì=

C__inference_gru_81_layer_call_and_return_conditional_losses_4085382

inputs&
gru_cell_81_4085306:	Ø"
gru_cell_81_4085308:	Ø'
gru_cell_81_4085310:
ÈØ
identity¢#gru_cell_81/StatefulPartitionedCall¢whileD
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
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
valueB"ÿÿÿÿ   27
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2ö
#gru_cell_81/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0gru_cell_81_4085306gru_cell_81_4085308gru_cell_81_4085310*
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
GPU 2J 8 *Q
fLRJ
H__inference_gru_cell_81_layer_call_and_return_conditional_losses_40853052%
#gru_cell_81/StatefulPartitionedCall
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
while/loop_counterî
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0gru_cell_81_4085306gru_cell_81_4085308gru_cell_81_4085310*
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
while_body_4085318*
condR
while_cond_4085317*9
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
runtime
IdentityIdentitystrided_slice_3:output:0$^gru_cell_81/StatefulPartitionedCall^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2J
#gru_cell_81/StatefulPartitionedCall#gru_cell_81/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
²

ø
F__inference_dense_162_layer_call_and_return_conditional_losses_4087570

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


+__inference_dense_163_layer_call_fn_4087579

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
F__inference_dense_163_layer_call_and_return_conditional_losses_40860322
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
ë
¸
(__inference_gru_81_layer_call_fn_4086844
inputs_0
unknown:	Ø
	unknown_0:	Ø
	unknown_1:
ÈØ
identity¢StatefulPartitionedCall
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
GPU 2J 8 *L
fGRE
C__inference_gru_81_layer_call_and_return_conditional_losses_40855862
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
ùW
¥
while_body_4086164
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_gru_cell_81_matmul_readvariableop_resource_0:	ØB
3while_gru_cell_81_biasadd_readvariableop_resource_0:	Ø?
+while_gru_cell_81_readvariableop_resource_0:
ÈØ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_gru_cell_81_matmul_readvariableop_resource:	Ø@
1while_gru_cell_81_biasadd_readvariableop_resource:	Ø=
)while_gru_cell_81_readvariableop_resource:
ÈØ¢(while/gru_cell_81/BiasAdd/ReadVariableOp¢'while/gru_cell_81/MatMul/ReadVariableOp¢ while/gru_cell_81/ReadVariableOp¢"while/gru_cell_81/ReadVariableOp_1Ã
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÆ
'while/gru_cell_81/MatMul/ReadVariableOpReadVariableOp2while_gru_cell_81_matmul_readvariableop_resource_0*
_output_shapes
:	Ø*
dtype02)
'while/gru_cell_81/MatMul/ReadVariableOpÔ
while/gru_cell_81/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/gru_cell_81/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
while/gru_cell_81/MatMulÅ
(while/gru_cell_81/BiasAdd/ReadVariableOpReadVariableOp3while_gru_cell_81_biasadd_readvariableop_resource_0*
_output_shapes	
:Ø*
dtype02*
(while/gru_cell_81/BiasAdd/ReadVariableOpÊ
while/gru_cell_81/BiasAddBiasAdd"while/gru_cell_81/MatMul:product:00while/gru_cell_81/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
while/gru_cell_81/BiasAdd
!while/gru_cell_81/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2#
!while/gru_cell_81/split/split_dim÷
while/gru_cell_81/splitSplit*while/gru_cell_81/split/split_dim:output:0"while/gru_cell_81/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
while/gru_cell_81/split²
 while/gru_cell_81/ReadVariableOpReadVariableOp+while_gru_cell_81_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02"
 while/gru_cell_81/ReadVariableOp
%while/gru_cell_81/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/gru_cell_81/strided_slice/stack£
'while/gru_cell_81/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/gru_cell_81/strided_slice/stack_1£
'while/gru_cell_81/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/gru_cell_81/strided_slice/stack_2ê
while/gru_cell_81/strided_sliceStridedSlice(while/gru_cell_81/ReadVariableOp:value:0.while/gru_cell_81/strided_slice/stack:output:00while/gru_cell_81/strided_slice/stack_1:output:00while/gru_cell_81/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2!
while/gru_cell_81/strided_slice´
while/gru_cell_81/MatMul_1MatMulwhile_placeholder_2(while/gru_cell_81/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_81/MatMul_1
while/gru_cell_81/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2
while/gru_cell_81/Const
#while/gru_cell_81/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2%
#while/gru_cell_81/split_1/split_dim«
while/gru_cell_81/split_1SplitV$while/gru_cell_81/MatMul_1:product:0 while/gru_cell_81/Const:output:0,while/gru_cell_81/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2
while/gru_cell_81/split_1°
while/gru_cell_81/addAddV2 while/gru_cell_81/split:output:0"while/gru_cell_81/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_81/add
while/gru_cell_81/SigmoidSigmoidwhile/gru_cell_81/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_81/Sigmoid´
while/gru_cell_81/add_1AddV2 while/gru_cell_81/split:output:1"while/gru_cell_81/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_81/add_1
while/gru_cell_81/Sigmoid_1Sigmoidwhile/gru_cell_81/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_81/Sigmoid_1
while/gru_cell_81/mulMulwhile/gru_cell_81/Sigmoid_1:y:0while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_81/mul¶
"while/gru_cell_81/ReadVariableOp_1ReadVariableOp+while_gru_cell_81_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02$
"while/gru_cell_81/ReadVariableOp_1£
'while/gru_cell_81/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2)
'while/gru_cell_81/strided_slice_1/stack§
)while/gru_cell_81/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/gru_cell_81/strided_slice_1/stack_1§
)while/gru_cell_81/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/gru_cell_81/strided_slice_1/stack_2ö
!while/gru_cell_81/strided_slice_1StridedSlice*while/gru_cell_81/ReadVariableOp_1:value:00while/gru_cell_81/strided_slice_1/stack:output:02while/gru_cell_81/strided_slice_1/stack_1:output:02while/gru_cell_81/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2#
!while/gru_cell_81/strided_slice_1¼
while/gru_cell_81/MatMul_2MatMulwhile/gru_cell_81/mul:z:0*while/gru_cell_81/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_81/MatMul_2¶
while/gru_cell_81/add_2AddV2 while/gru_cell_81/split:output:2$while/gru_cell_81/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_81/add_2
while/gru_cell_81/ReluReluwhile/gru_cell_81/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_81/Relu 
while/gru_cell_81/mul_1Mulwhile/gru_cell_81/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_81/mul_1w
while/gru_cell_81/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
while/gru_cell_81/sub/x©
while/gru_cell_81/subSub while/gru_cell_81/sub/x:output:0while/gru_cell_81/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_81/sub­
while/gru_cell_81/mul_2Mulwhile/gru_cell_81/sub:z:0$while/gru_cell_81/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_81/mul_2¨
while/gru_cell_81/add_3AddV2while/gru_cell_81/mul_1:z:0while/gru_cell_81/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_81/add_3ß
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_81/add_3:z:0*
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
while/add_1û
while/IdentityIdentitywhile/add_1:z:0)^while/gru_cell_81/BiasAdd/ReadVariableOp(^while/gru_cell_81/MatMul/ReadVariableOp!^while/gru_cell_81/ReadVariableOp#^while/gru_cell_81/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations)^while/gru_cell_81/BiasAdd/ReadVariableOp(^while/gru_cell_81/MatMul/ReadVariableOp!^while/gru_cell_81/ReadVariableOp#^while/gru_cell_81/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_1ý
while/Identity_2Identitywhile/add:z:0)^while/gru_cell_81/BiasAdd/ReadVariableOp(^while/gru_cell_81/MatMul/ReadVariableOp!^while/gru_cell_81/ReadVariableOp#^while/gru_cell_81/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_2ª
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/gru_cell_81/BiasAdd/ReadVariableOp(^while/gru_cell_81/MatMul/ReadVariableOp!^while/gru_cell_81/ReadVariableOp#^while/gru_cell_81/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/gru_cell_81/add_3:z:0)^while/gru_cell_81/BiasAdd/ReadVariableOp(^while/gru_cell_81/MatMul/ReadVariableOp!^while/gru_cell_81/ReadVariableOp#^while/gru_cell_81/ReadVariableOp_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_4"h
1while_gru_cell_81_biasadd_readvariableop_resource3while_gru_cell_81_biasadd_readvariableop_resource_0"f
0while_gru_cell_81_matmul_readvariableop_resource2while_gru_cell_81_matmul_readvariableop_resource_0"X
)while_gru_cell_81_readvariableop_resource+while_gru_cell_81_readvariableop_resource_0")
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
(while/gru_cell_81/BiasAdd/ReadVariableOp(while/gru_cell_81/BiasAdd/ReadVariableOp2R
'while/gru_cell_81/MatMul/ReadVariableOp'while/gru_cell_81/MatMul/ReadVariableOp2D
 while/gru_cell_81/ReadVariableOp while/gru_cell_81/ReadVariableOp2H
"while/gru_cell_81/ReadVariableOp_1"while/gru_cell_81/ReadVariableOp_1: 
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
	
°
/__inference_sequential_81_layer_call_fn_4086347
gru_81_input
unknown:	Ø
	unknown_0:	Ø
	unknown_1:
ÈØ
	unknown_2:	Èd
	unknown_3:d
	unknown_4:d
	unknown_5:
identity¢StatefulPartitionedCallÁ
StatefulPartitionedCallStatefulPartitionedCallgru_81_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
J__inference_sequential_81_layer_call_and_return_conditional_losses_40863112
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&
_user_specified_namegru_81_input

¯
while_cond_4085317
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_4085317___redundant_placeholder05
1while_while_cond_4085317___redundant_placeholder15
1while_while_cond_4085317___redundant_placeholder25
1while_while_cond_4085317___redundant_placeholder3
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
Ó*
è
H__inference_gru_cell_81_layer_call_and_return_conditional_losses_4085455

inputs

states1
matmul_readvariableop_resource:	Ø.
biasadd_readvariableop_resource:	Ø+
readvariableop_resource:
ÈØ
identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢ReadVariableOp¢ReadVariableOp_1
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	Ø*
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
-:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿÈ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
 
_user_specified_namestates
ü"
¶
while_body_4085522
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_gru_cell_81_4085544_0:	Ø*
while_gru_cell_81_4085546_0:	Ø/
while_gru_cell_81_4085548_0:
ÈØ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_gru_cell_81_4085544:	Ø(
while_gru_cell_81_4085546:	Ø-
while_gru_cell_81_4085548:
ÈØ¢)while/gru_cell_81/StatefulPartitionedCallÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem·
)while/gru_cell_81/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_gru_cell_81_4085544_0while_gru_cell_81_4085546_0while_gru_cell_81_4085548_0*
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
GPU 2J 8 *Q
fLRJ
H__inference_gru_cell_81_layer_call_and_return_conditional_losses_40854552+
)while/gru_cell_81/StatefulPartitionedCallö
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/gru_cell_81/StatefulPartitionedCall:output:0*
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
while/add_1
while/IdentityIdentitywhile/add_1:z:0*^while/gru_cell_81/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations*^while/gru_cell_81/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:0*^while/gru_cell_81/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2¹
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/gru_cell_81/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3Ã
while/Identity_4Identity2while/gru_cell_81/StatefulPartitionedCall:output:1*^while/gru_cell_81/StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_4"8
while_gru_cell_81_4085544while_gru_cell_81_4085544_0"8
while_gru_cell_81_4085546while_gru_cell_81_4085546_0"8
while_gru_cell_81_4085548while_gru_cell_81_4085548_0")
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
)while/gru_cell_81/StatefulPartitionedCall)while/gru_cell_81/StatefulPartitionedCall: 
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
ë
¸
(__inference_gru_81_layer_call_fn_4086833
inputs_0
unknown:	Ø
	unknown_0:	Ø
	unknown_1:
ÈØ
identity¢StatefulPartitionedCall
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
GPU 2J 8 *L
fGRE
C__inference_gru_81_layer_call_and_return_conditional_losses_40853822
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
Í	
´
gru_81_while_cond_4086528*
&gru_81_while_gru_81_while_loop_counter0
,gru_81_while_gru_81_while_maximum_iterations
gru_81_while_placeholder
gru_81_while_placeholder_1
gru_81_while_placeholder_2,
(gru_81_while_less_gru_81_strided_slice_1C
?gru_81_while_gru_81_while_cond_4086528___redundant_placeholder0C
?gru_81_while_gru_81_while_cond_4086528___redundant_placeholder1C
?gru_81_while_gru_81_while_cond_4086528___redundant_placeholder2C
?gru_81_while_gru_81_while_cond_4086528___redundant_placeholder3
gru_81_while_identity

gru_81/while/LessLessgru_81_while_placeholder(gru_81_while_less_gru_81_strided_slice_1*
T0*
_output_shapes
: 2
gru_81/while/Lessr
gru_81/while/IdentityIdentitygru_81/while/Less:z:0*
T0
*
_output_shapes
: 2
gru_81/while/Identity"7
gru_81_while_identitygru_81/while/Identity:output:0*(
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
¢

+__inference_dense_162_layer_call_fn_4087559

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
F__inference_dense_162_layer_call_and_return_conditional_losses_40860162
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
éd
þ	
gru_81_while_body_4086529*
&gru_81_while_gru_81_while_loop_counter0
,gru_81_while_gru_81_while_maximum_iterations
gru_81_while_placeholder
gru_81_while_placeholder_1
gru_81_while_placeholder_2)
%gru_81_while_gru_81_strided_slice_1_0e
agru_81_while_tensorarrayv2read_tensorlistgetitem_gru_81_tensorarrayunstack_tensorlistfromtensor_0L
9gru_81_while_gru_cell_81_matmul_readvariableop_resource_0:	ØI
:gru_81_while_gru_cell_81_biasadd_readvariableop_resource_0:	ØF
2gru_81_while_gru_cell_81_readvariableop_resource_0:
ÈØ
gru_81_while_identity
gru_81_while_identity_1
gru_81_while_identity_2
gru_81_while_identity_3
gru_81_while_identity_4'
#gru_81_while_gru_81_strided_slice_1c
_gru_81_while_tensorarrayv2read_tensorlistgetitem_gru_81_tensorarrayunstack_tensorlistfromtensorJ
7gru_81_while_gru_cell_81_matmul_readvariableop_resource:	ØG
8gru_81_while_gru_cell_81_biasadd_readvariableop_resource:	ØD
0gru_81_while_gru_cell_81_readvariableop_resource:
ÈØ¢/gru_81/while/gru_cell_81/BiasAdd/ReadVariableOp¢.gru_81/while/gru_cell_81/MatMul/ReadVariableOp¢'gru_81/while/gru_cell_81/ReadVariableOp¢)gru_81/while/gru_cell_81/ReadVariableOp_1Ñ
>gru_81/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2@
>gru_81/while/TensorArrayV2Read/TensorListGetItem/element_shapeý
0gru_81/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemagru_81_while_tensorarrayv2read_tensorlistgetitem_gru_81_tensorarrayunstack_tensorlistfromtensor_0gru_81_while_placeholderGgru_81/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype022
0gru_81/while/TensorArrayV2Read/TensorListGetItemÛ
.gru_81/while/gru_cell_81/MatMul/ReadVariableOpReadVariableOp9gru_81_while_gru_cell_81_matmul_readvariableop_resource_0*
_output_shapes
:	Ø*
dtype020
.gru_81/while/gru_cell_81/MatMul/ReadVariableOpð
gru_81/while/gru_cell_81/MatMulMatMul7gru_81/while/TensorArrayV2Read/TensorListGetItem:item:06gru_81/while/gru_cell_81/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2!
gru_81/while/gru_cell_81/MatMulÚ
/gru_81/while/gru_cell_81/BiasAdd/ReadVariableOpReadVariableOp:gru_81_while_gru_cell_81_biasadd_readvariableop_resource_0*
_output_shapes	
:Ø*
dtype021
/gru_81/while/gru_cell_81/BiasAdd/ReadVariableOpæ
 gru_81/while/gru_cell_81/BiasAddBiasAdd)gru_81/while/gru_cell_81/MatMul:product:07gru_81/while/gru_cell_81/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2"
 gru_81/while/gru_cell_81/BiasAdd
(gru_81/while/gru_cell_81/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2*
(gru_81/while/gru_cell_81/split/split_dim
gru_81/while/gru_cell_81/splitSplit1gru_81/while/gru_cell_81/split/split_dim:output:0)gru_81/while/gru_cell_81/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2 
gru_81/while/gru_cell_81/splitÇ
'gru_81/while/gru_cell_81/ReadVariableOpReadVariableOp2gru_81_while_gru_cell_81_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02)
'gru_81/while/gru_cell_81/ReadVariableOp­
,gru_81/while/gru_cell_81/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2.
,gru_81/while/gru_cell_81/strided_slice/stack±
.gru_81/while/gru_cell_81/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      20
.gru_81/while/gru_cell_81/strided_slice/stack_1±
.gru_81/while/gru_cell_81/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.gru_81/while/gru_cell_81/strided_slice/stack_2
&gru_81/while/gru_cell_81/strided_sliceStridedSlice/gru_81/while/gru_cell_81/ReadVariableOp:value:05gru_81/while/gru_cell_81/strided_slice/stack:output:07gru_81/while/gru_cell_81/strided_slice/stack_1:output:07gru_81/while/gru_cell_81/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2(
&gru_81/while/gru_cell_81/strided_sliceÐ
!gru_81/while/gru_cell_81/MatMul_1MatMulgru_81_while_placeholder_2/gru_81/while/gru_cell_81/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!gru_81/while/gru_cell_81/MatMul_1
gru_81/while/gru_cell_81/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2 
gru_81/while/gru_cell_81/Const£
*gru_81/while/gru_cell_81/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2,
*gru_81/while/gru_cell_81/split_1/split_dimÎ
 gru_81/while/gru_cell_81/split_1SplitV+gru_81/while/gru_cell_81/MatMul_1:product:0'gru_81/while/gru_cell_81/Const:output:03gru_81/while/gru_cell_81/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2"
 gru_81/while/gru_cell_81/split_1Ì
gru_81/while/gru_cell_81/addAddV2'gru_81/while/gru_cell_81/split:output:0)gru_81/while/gru_cell_81/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_81/while/gru_cell_81/add¤
 gru_81/while/gru_cell_81/SigmoidSigmoid gru_81/while/gru_cell_81/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2"
 gru_81/while/gru_cell_81/SigmoidÐ
gru_81/while/gru_cell_81/add_1AddV2'gru_81/while/gru_cell_81/split:output:1)gru_81/while/gru_cell_81/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2 
gru_81/while/gru_cell_81/add_1ª
"gru_81/while/gru_cell_81/Sigmoid_1Sigmoid"gru_81/while/gru_cell_81/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2$
"gru_81/while/gru_cell_81/Sigmoid_1º
gru_81/while/gru_cell_81/mulMul&gru_81/while/gru_cell_81/Sigmoid_1:y:0gru_81_while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_81/while/gru_cell_81/mulË
)gru_81/while/gru_cell_81/ReadVariableOp_1ReadVariableOp2gru_81_while_gru_cell_81_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02+
)gru_81/while/gru_cell_81/ReadVariableOp_1±
.gru_81/while/gru_cell_81/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      20
.gru_81/while/gru_cell_81/strided_slice_1/stackµ
0gru_81/while/gru_cell_81/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        22
0gru_81/while/gru_cell_81/strided_slice_1/stack_1µ
0gru_81/while/gru_cell_81/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0gru_81/while/gru_cell_81/strided_slice_1/stack_2 
(gru_81/while/gru_cell_81/strided_slice_1StridedSlice1gru_81/while/gru_cell_81/ReadVariableOp_1:value:07gru_81/while/gru_cell_81/strided_slice_1/stack:output:09gru_81/while/gru_cell_81/strided_slice_1/stack_1:output:09gru_81/while/gru_cell_81/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2*
(gru_81/while/gru_cell_81/strided_slice_1Ø
!gru_81/while/gru_cell_81/MatMul_2MatMul gru_81/while/gru_cell_81/mul:z:01gru_81/while/gru_cell_81/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2#
!gru_81/while/gru_cell_81/MatMul_2Ò
gru_81/while/gru_cell_81/add_2AddV2'gru_81/while/gru_cell_81/split:output:2+gru_81/while/gru_cell_81/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2 
gru_81/while/gru_cell_81/add_2
gru_81/while/gru_cell_81/ReluRelu"gru_81/while/gru_cell_81/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_81/while/gru_cell_81/Relu¼
gru_81/while/gru_cell_81/mul_1Mul$gru_81/while/gru_cell_81/Sigmoid:y:0gru_81_while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2 
gru_81/while/gru_cell_81/mul_1
gru_81/while/gru_cell_81/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2 
gru_81/while/gru_cell_81/sub/xÅ
gru_81/while/gru_cell_81/subSub'gru_81/while/gru_cell_81/sub/x:output:0$gru_81/while/gru_cell_81/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_81/while/gru_cell_81/subÉ
gru_81/while/gru_cell_81/mul_2Mul gru_81/while/gru_cell_81/sub:z:0+gru_81/while/gru_cell_81/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2 
gru_81/while/gru_cell_81/mul_2Ä
gru_81/while/gru_cell_81/add_3AddV2"gru_81/while/gru_cell_81/mul_1:z:0"gru_81/while/gru_cell_81/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2 
gru_81/while/gru_cell_81/add_3
1gru_81/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemgru_81_while_placeholder_1gru_81_while_placeholder"gru_81/while/gru_cell_81/add_3:z:0*
_output_shapes
: *
element_dtype023
1gru_81/while/TensorArrayV2Write/TensorListSetItemj
gru_81/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru_81/while/add/y
gru_81/while/addAddV2gru_81_while_placeholdergru_81/while/add/y:output:0*
T0*
_output_shapes
: 2
gru_81/while/addn
gru_81/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru_81/while/add_1/y
gru_81/while/add_1AddV2&gru_81_while_gru_81_while_loop_countergru_81/while/add_1/y:output:0*
T0*
_output_shapes
: 2
gru_81/while/add_1¬
gru_81/while/IdentityIdentitygru_81/while/add_1:z:00^gru_81/while/gru_cell_81/BiasAdd/ReadVariableOp/^gru_81/while/gru_cell_81/MatMul/ReadVariableOp(^gru_81/while/gru_cell_81/ReadVariableOp*^gru_81/while/gru_cell_81/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_81/while/IdentityÆ
gru_81/while/Identity_1Identity,gru_81_while_gru_81_while_maximum_iterations0^gru_81/while/gru_cell_81/BiasAdd/ReadVariableOp/^gru_81/while/gru_cell_81/MatMul/ReadVariableOp(^gru_81/while/gru_cell_81/ReadVariableOp*^gru_81/while/gru_cell_81/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_81/while/Identity_1®
gru_81/while/Identity_2Identitygru_81/while/add:z:00^gru_81/while/gru_cell_81/BiasAdd/ReadVariableOp/^gru_81/while/gru_cell_81/MatMul/ReadVariableOp(^gru_81/while/gru_cell_81/ReadVariableOp*^gru_81/while/gru_cell_81/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_81/while/Identity_2Û
gru_81/while/Identity_3IdentityAgru_81/while/TensorArrayV2Write/TensorListSetItem:output_handle:00^gru_81/while/gru_cell_81/BiasAdd/ReadVariableOp/^gru_81/while/gru_cell_81/MatMul/ReadVariableOp(^gru_81/while/gru_cell_81/ReadVariableOp*^gru_81/while/gru_cell_81/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_81/while/Identity_3Î
gru_81/while/Identity_4Identity"gru_81/while/gru_cell_81/add_3:z:00^gru_81/while/gru_cell_81/BiasAdd/ReadVariableOp/^gru_81/while/gru_cell_81/MatMul/ReadVariableOp(^gru_81/while/gru_cell_81/ReadVariableOp*^gru_81/while/gru_cell_81/ReadVariableOp_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_81/while/Identity_4"L
#gru_81_while_gru_81_strided_slice_1%gru_81_while_gru_81_strided_slice_1_0"v
8gru_81_while_gru_cell_81_biasadd_readvariableop_resource:gru_81_while_gru_cell_81_biasadd_readvariableop_resource_0"t
7gru_81_while_gru_cell_81_matmul_readvariableop_resource9gru_81_while_gru_cell_81_matmul_readvariableop_resource_0"f
0gru_81_while_gru_cell_81_readvariableop_resource2gru_81_while_gru_cell_81_readvariableop_resource_0"7
gru_81_while_identitygru_81/while/Identity:output:0";
gru_81_while_identity_1 gru_81/while/Identity_1:output:0";
gru_81_while_identity_2 gru_81/while/Identity_2:output:0";
gru_81_while_identity_3 gru_81/while/Identity_3:output:0";
gru_81_while_identity_4 gru_81/while/Identity_4:output:0"Ä
_gru_81_while_tensorarrayv2read_tensorlistgetitem_gru_81_tensorarrayunstack_tensorlistfromtensoragru_81_while_tensorarrayv2read_tensorlistgetitem_gru_81_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿÈ: : : : : 2b
/gru_81/while/gru_cell_81/BiasAdd/ReadVariableOp/gru_81/while/gru_cell_81/BiasAdd/ReadVariableOp2`
.gru_81/while/gru_cell_81/MatMul/ReadVariableOp.gru_81/while/gru_cell_81/MatMul/ReadVariableOp2R
'gru_81/while/gru_cell_81/ReadVariableOp'gru_81/while/gru_cell_81/ReadVariableOp2V
)gru_81/while/gru_cell_81/ReadVariableOp_1)gru_81/while/gru_cell_81/ReadVariableOp_1: 
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
	
ª
/__inference_sequential_81_layer_call_fn_4086435

inputs
unknown:	Ø
	unknown_0:	Ø
	unknown_1:
ÈØ
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
J__inference_sequential_81_layer_call_and_return_conditional_losses_40860392
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ü"
¶
while_body_4085318
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_gru_cell_81_4085340_0:	Ø*
while_gru_cell_81_4085342_0:	Ø/
while_gru_cell_81_4085344_0:
ÈØ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_gru_cell_81_4085340:	Ø(
while_gru_cell_81_4085342:	Ø-
while_gru_cell_81_4085344:
ÈØ¢)while/gru_cell_81/StatefulPartitionedCallÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem·
)while/gru_cell_81/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_gru_cell_81_4085340_0while_gru_cell_81_4085342_0while_gru_cell_81_4085344_0*
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
GPU 2J 8 *Q
fLRJ
H__inference_gru_cell_81_layer_call_and_return_conditional_losses_40853052+
)while/gru_cell_81/StatefulPartitionedCallö
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/gru_cell_81/StatefulPartitionedCall:output:0*
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
while/add_1
while/IdentityIdentitywhile/add_1:z:0*^while/gru_cell_81/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations*^while/gru_cell_81/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:0*^while/gru_cell_81/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2¹
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/gru_cell_81/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3Ã
while/Identity_4Identity2while/gru_cell_81/StatefulPartitionedCall:output:1*^while/gru_cell_81/StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_4"8
while_gru_cell_81_4085340while_gru_cell_81_4085340_0"8
while_gru_cell_81_4085342while_gru_cell_81_4085342_0"8
while_gru_cell_81_4085344while_gru_cell_81_4085344_0")
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
)while/gru_cell_81/StatefulPartitionedCall)while/gru_cell_81/StatefulPartitionedCall: 
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
while_cond_4087282
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_4087282___redundant_placeholder05
1while_while_cond_4087282___redundant_placeholder15
1while_while_cond_4087282___redundant_placeholder25
1while_while_cond_4087282___redundant_placeholder3
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
F__inference_dense_163_layer_call_and_return_conditional_losses_4087589

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
µ
×
J__inference_sequential_81_layer_call_and_return_conditional_losses_4086638

inputsD
1gru_81_gru_cell_81_matmul_readvariableop_resource:	ØA
2gru_81_gru_cell_81_biasadd_readvariableop_resource:	Ø>
*gru_81_gru_cell_81_readvariableop_resource:
ÈØ;
(dense_162_matmul_readvariableop_resource:	Èd7
)dense_162_biasadd_readvariableop_resource:d:
(dense_163_matmul_readvariableop_resource:d7
)dense_163_biasadd_readvariableop_resource:
identity¢ dense_162/BiasAdd/ReadVariableOp¢dense_162/MatMul/ReadVariableOp¢ dense_163/BiasAdd/ReadVariableOp¢dense_163/MatMul/ReadVariableOp¢)gru_81/gru_cell_81/BiasAdd/ReadVariableOp¢(gru_81/gru_cell_81/MatMul/ReadVariableOp¢!gru_81/gru_cell_81/ReadVariableOp¢#gru_81/gru_cell_81/ReadVariableOp_1¢gru_81/whileR
gru_81/ShapeShapeinputs*
T0*
_output_shapes
:2
gru_81/Shape
gru_81/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_81/strided_slice/stack
gru_81/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_81/strided_slice/stack_1
gru_81/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_81/strided_slice/stack_2
gru_81/strided_sliceStridedSlicegru_81/Shape:output:0#gru_81/strided_slice/stack:output:0%gru_81/strided_slice/stack_1:output:0%gru_81/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru_81/strided_slicek
gru_81/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :È2
gru_81/zeros/mul/y
gru_81/zeros/mulMulgru_81/strided_slice:output:0gru_81/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
gru_81/zeros/mulm
gru_81/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
gru_81/zeros/Less/y
gru_81/zeros/LessLessgru_81/zeros/mul:z:0gru_81/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
gru_81/zeros/Lessq
gru_81/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :È2
gru_81/zeros/packed/1
gru_81/zeros/packedPackgru_81/strided_slice:output:0gru_81/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
gru_81/zeros/packedm
gru_81/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_81/zeros/Const
gru_81/zerosFillgru_81/zeros/packed:output:0gru_81/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_81/zeros
gru_81/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_81/transpose/perm
gru_81/transpose	Transposeinputsgru_81/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_81/transposed
gru_81/Shape_1Shapegru_81/transpose:y:0*
T0*
_output_shapes
:2
gru_81/Shape_1
gru_81/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_81/strided_slice_1/stack
gru_81/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
gru_81/strided_slice_1/stack_1
gru_81/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
gru_81/strided_slice_1/stack_2
gru_81/strided_slice_1StridedSlicegru_81/Shape_1:output:0%gru_81/strided_slice_1/stack:output:0'gru_81/strided_slice_1/stack_1:output:0'gru_81/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru_81/strided_slice_1
"gru_81/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2$
"gru_81/TensorArrayV2/element_shapeÎ
gru_81/TensorArrayV2TensorListReserve+gru_81/TensorArrayV2/element_shape:output:0gru_81/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_81/TensorArrayV2Í
<gru_81/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2>
<gru_81/TensorArrayUnstack/TensorListFromTensor/element_shape
.gru_81/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorgru_81/transpose:y:0Egru_81/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.gru_81/TensorArrayUnstack/TensorListFromTensor
gru_81/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_81/strided_slice_2/stack
gru_81/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
gru_81/strided_slice_2/stack_1
gru_81/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
gru_81/strided_slice_2/stack_2¦
gru_81/strided_slice_2StridedSlicegru_81/transpose:y:0%gru_81/strided_slice_2/stack:output:0'gru_81/strided_slice_2/stack_1:output:0'gru_81/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
gru_81/strided_slice_2Ç
(gru_81/gru_cell_81/MatMul/ReadVariableOpReadVariableOp1gru_81_gru_cell_81_matmul_readvariableop_resource*
_output_shapes
:	Ø*
dtype02*
(gru_81/gru_cell_81/MatMul/ReadVariableOpÆ
gru_81/gru_cell_81/MatMulMatMulgru_81/strided_slice_2:output:00gru_81/gru_cell_81/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_81/gru_cell_81/MatMulÆ
)gru_81/gru_cell_81/BiasAdd/ReadVariableOpReadVariableOp2gru_81_gru_cell_81_biasadd_readvariableop_resource*
_output_shapes	
:Ø*
dtype02+
)gru_81/gru_cell_81/BiasAdd/ReadVariableOpÎ
gru_81/gru_cell_81/BiasAddBiasAdd#gru_81/gru_cell_81/MatMul:product:01gru_81/gru_cell_81/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_81/gru_cell_81/BiasAdd
"gru_81/gru_cell_81/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2$
"gru_81/gru_cell_81/split/split_dimû
gru_81/gru_cell_81/splitSplit+gru_81/gru_cell_81/split/split_dim:output:0#gru_81/gru_cell_81/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
gru_81/gru_cell_81/split³
!gru_81/gru_cell_81/ReadVariableOpReadVariableOp*gru_81_gru_cell_81_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02#
!gru_81/gru_cell_81/ReadVariableOp¡
&gru_81/gru_cell_81/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&gru_81/gru_cell_81/strided_slice/stack¥
(gru_81/gru_cell_81/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2*
(gru_81/gru_cell_81/strided_slice/stack_1¥
(gru_81/gru_cell_81/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(gru_81/gru_cell_81/strided_slice/stack_2ð
 gru_81/gru_cell_81/strided_sliceStridedSlice)gru_81/gru_cell_81/ReadVariableOp:value:0/gru_81/gru_cell_81/strided_slice/stack:output:01gru_81/gru_cell_81/strided_slice/stack_1:output:01gru_81/gru_cell_81/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2"
 gru_81/gru_cell_81/strided_slice¹
gru_81/gru_cell_81/MatMul_1MatMulgru_81/zeros:output:0)gru_81/gru_cell_81/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_81/gru_cell_81/MatMul_1
gru_81/gru_cell_81/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2
gru_81/gru_cell_81/Const
$gru_81/gru_cell_81/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2&
$gru_81/gru_cell_81/split_1/split_dim°
gru_81/gru_cell_81/split_1SplitV%gru_81/gru_cell_81/MatMul_1:product:0!gru_81/gru_cell_81/Const:output:0-gru_81/gru_cell_81/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2
gru_81/gru_cell_81/split_1´
gru_81/gru_cell_81/addAddV2!gru_81/gru_cell_81/split:output:0#gru_81/gru_cell_81/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_81/gru_cell_81/add
gru_81/gru_cell_81/SigmoidSigmoidgru_81/gru_cell_81/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_81/gru_cell_81/Sigmoid¸
gru_81/gru_cell_81/add_1AddV2!gru_81/gru_cell_81/split:output:1#gru_81/gru_cell_81/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_81/gru_cell_81/add_1
gru_81/gru_cell_81/Sigmoid_1Sigmoidgru_81/gru_cell_81/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_81/gru_cell_81/Sigmoid_1£
gru_81/gru_cell_81/mulMul gru_81/gru_cell_81/Sigmoid_1:y:0gru_81/zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_81/gru_cell_81/mul·
#gru_81/gru_cell_81/ReadVariableOp_1ReadVariableOp*gru_81_gru_cell_81_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02%
#gru_81/gru_cell_81/ReadVariableOp_1¥
(gru_81/gru_cell_81/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2*
(gru_81/gru_cell_81/strided_slice_1/stack©
*gru_81/gru_cell_81/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*gru_81/gru_cell_81/strided_slice_1/stack_1©
*gru_81/gru_cell_81/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*gru_81/gru_cell_81/strided_slice_1/stack_2ü
"gru_81/gru_cell_81/strided_slice_1StridedSlice+gru_81/gru_cell_81/ReadVariableOp_1:value:01gru_81/gru_cell_81/strided_slice_1/stack:output:03gru_81/gru_cell_81/strided_slice_1/stack_1:output:03gru_81/gru_cell_81/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2$
"gru_81/gru_cell_81/strided_slice_1À
gru_81/gru_cell_81/MatMul_2MatMulgru_81/gru_cell_81/mul:z:0+gru_81/gru_cell_81/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_81/gru_cell_81/MatMul_2º
gru_81/gru_cell_81/add_2AddV2!gru_81/gru_cell_81/split:output:2%gru_81/gru_cell_81/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_81/gru_cell_81/add_2
gru_81/gru_cell_81/ReluRelugru_81/gru_cell_81/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_81/gru_cell_81/Relu¥
gru_81/gru_cell_81/mul_1Mulgru_81/gru_cell_81/Sigmoid:y:0gru_81/zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_81/gru_cell_81/mul_1y
gru_81/gru_cell_81/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_81/gru_cell_81/sub/x­
gru_81/gru_cell_81/subSub!gru_81/gru_cell_81/sub/x:output:0gru_81/gru_cell_81/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_81/gru_cell_81/sub±
gru_81/gru_cell_81/mul_2Mulgru_81/gru_cell_81/sub:z:0%gru_81/gru_cell_81/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_81/gru_cell_81/mul_2¬
gru_81/gru_cell_81/add_3AddV2gru_81/gru_cell_81/mul_1:z:0gru_81/gru_cell_81/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_81/gru_cell_81/add_3
$gru_81/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÈ   2&
$gru_81/TensorArrayV2_1/element_shapeÔ
gru_81/TensorArrayV2_1TensorListReserve-gru_81/TensorArrayV2_1/element_shape:output:0gru_81/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_81/TensorArrayV2_1\
gru_81/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
gru_81/time
gru_81/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2!
gru_81/while/maximum_iterationsx
gru_81/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
gru_81/while/loop_counter
gru_81/whileWhile"gru_81/while/loop_counter:output:0(gru_81/while/maximum_iterations:output:0gru_81/time:output:0gru_81/TensorArrayV2_1:handle:0gru_81/zeros:output:0gru_81/strided_slice_1:output:0>gru_81/TensorArrayUnstack/TensorListFromTensor:output_handle:01gru_81_gru_cell_81_matmul_readvariableop_resource2gru_81_gru_cell_81_biasadd_readvariableop_resource*gru_81_gru_cell_81_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿÈ: : : : : *%
_read_only_resource_inputs
	*%
bodyR
gru_81_while_body_4086529*%
condR
gru_81_while_cond_4086528*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿÈ: : : : : *
parallel_iterations 2
gru_81/whileÃ
7gru_81/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÈ   29
7gru_81/TensorArrayV2Stack/TensorListStack/element_shape
)gru_81/TensorArrayV2Stack/TensorListStackTensorListStackgru_81/while:output:3@gru_81/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*
element_dtype02+
)gru_81/TensorArrayV2Stack/TensorListStack
gru_81/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
gru_81/strided_slice_3/stack
gru_81/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
gru_81/strided_slice_3/stack_1
gru_81/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
gru_81/strided_slice_3/stack_2Å
gru_81/strided_slice_3StridedSlice2gru_81/TensorArrayV2Stack/TensorListStack:tensor:0%gru_81/strided_slice_3/stack:output:0'gru_81/strided_slice_3/stack_1:output:0'gru_81/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*
shrink_axis_mask2
gru_81/strided_slice_3
gru_81/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_81/transpose_1/permÂ
gru_81/transpose_1	Transpose2gru_81/TensorArrayV2Stack/TensorListStack:tensor:0 gru_81/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_81/transpose_1t
gru_81/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_81/runtime¬
dense_162/MatMul/ReadVariableOpReadVariableOp(dense_162_matmul_readvariableop_resource*
_output_shapes
:	Èd*
dtype02!
dense_162/MatMul/ReadVariableOpª
dense_162/MatMulMatMulgru_81/strided_slice_3:output:0'dense_162/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dense_162/MatMulª
 dense_162/BiasAdd/ReadVariableOpReadVariableOp)dense_162_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02"
 dense_162/BiasAdd/ReadVariableOp©
dense_162/BiasAddBiasAdddense_162/MatMul:product:0(dense_162/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dense_162/BiasAddv
dense_162/ReluReludense_162/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dense_162/Relu«
dense_163/MatMul/ReadVariableOpReadVariableOp(dense_163_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02!
dense_163/MatMul/ReadVariableOp§
dense_163/MatMulMatMuldense_162/Relu:activations:0'dense_163/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_163/MatMulª
 dense_163/BiasAdd/ReadVariableOpReadVariableOp)dense_163_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_163/BiasAdd/ReadVariableOp©
dense_163/BiasAddBiasAdddense_163/MatMul:product:0(dense_163/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_163/BiasAdd¨
IdentityIdentitydense_163/BiasAdd:output:0!^dense_162/BiasAdd/ReadVariableOp ^dense_162/MatMul/ReadVariableOp!^dense_163/BiasAdd/ReadVariableOp ^dense_163/MatMul/ReadVariableOp*^gru_81/gru_cell_81/BiasAdd/ReadVariableOp)^gru_81/gru_cell_81/MatMul/ReadVariableOp"^gru_81/gru_cell_81/ReadVariableOp$^gru_81/gru_cell_81/ReadVariableOp_1^gru_81/while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2D
 dense_162/BiasAdd/ReadVariableOp dense_162/BiasAdd/ReadVariableOp2B
dense_162/MatMul/ReadVariableOpdense_162/MatMul/ReadVariableOp2D
 dense_163/BiasAdd/ReadVariableOp dense_163/BiasAdd/ReadVariableOp2B
dense_163/MatMul/ReadVariableOpdense_163/MatMul/ReadVariableOp2V
)gru_81/gru_cell_81/BiasAdd/ReadVariableOp)gru_81/gru_cell_81/BiasAdd/ReadVariableOp2T
(gru_81/gru_cell_81/MatMul/ReadVariableOp(gru_81/gru_cell_81/MatMul/ReadVariableOp2F
!gru_81/gru_cell_81/ReadVariableOp!gru_81/gru_cell_81/ReadVariableOp2J
#gru_81/gru_cell_81/ReadVariableOp_1#gru_81/gru_cell_81/ReadVariableOp_12
gru_81/whilegru_81/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ó
¶
(__inference_gru_81_layer_call_fn_4086866

inputs
unknown:	Ø
	unknown_0:	Ø
	unknown_1:
ÈØ
identity¢StatefulPartitionedCall
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
GPU 2J 8 *L
fGRE
C__inference_gru_81_layer_call_and_return_conditional_losses_40862602
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

¯
while_cond_4085900
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_4085900___redundant_placeholder05
1while_while_cond_4085900___redundant_placeholder15
1while_while_cond_4085900___redundant_placeholder25
1while_while_cond_4085900___redundant_placeholder3
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
	
ª
/__inference_sequential_81_layer_call_fn_4086454

inputs
unknown:	Ø
	unknown_0:	Ø
	unknown_1:
ÈØ
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
J__inference_sequential_81_layer_call_and_return_conditional_losses_40863112
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ùW
¥
while_body_4087454
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_gru_cell_81_matmul_readvariableop_resource_0:	ØB
3while_gru_cell_81_biasadd_readvariableop_resource_0:	Ø?
+while_gru_cell_81_readvariableop_resource_0:
ÈØ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_gru_cell_81_matmul_readvariableop_resource:	Ø@
1while_gru_cell_81_biasadd_readvariableop_resource:	Ø=
)while_gru_cell_81_readvariableop_resource:
ÈØ¢(while/gru_cell_81/BiasAdd/ReadVariableOp¢'while/gru_cell_81/MatMul/ReadVariableOp¢ while/gru_cell_81/ReadVariableOp¢"while/gru_cell_81/ReadVariableOp_1Ã
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÆ
'while/gru_cell_81/MatMul/ReadVariableOpReadVariableOp2while_gru_cell_81_matmul_readvariableop_resource_0*
_output_shapes
:	Ø*
dtype02)
'while/gru_cell_81/MatMul/ReadVariableOpÔ
while/gru_cell_81/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/gru_cell_81/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
while/gru_cell_81/MatMulÅ
(while/gru_cell_81/BiasAdd/ReadVariableOpReadVariableOp3while_gru_cell_81_biasadd_readvariableop_resource_0*
_output_shapes	
:Ø*
dtype02*
(while/gru_cell_81/BiasAdd/ReadVariableOpÊ
while/gru_cell_81/BiasAddBiasAdd"while/gru_cell_81/MatMul:product:00while/gru_cell_81/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
while/gru_cell_81/BiasAdd
!while/gru_cell_81/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2#
!while/gru_cell_81/split/split_dim÷
while/gru_cell_81/splitSplit*while/gru_cell_81/split/split_dim:output:0"while/gru_cell_81/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
while/gru_cell_81/split²
 while/gru_cell_81/ReadVariableOpReadVariableOp+while_gru_cell_81_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02"
 while/gru_cell_81/ReadVariableOp
%while/gru_cell_81/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/gru_cell_81/strided_slice/stack£
'while/gru_cell_81/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/gru_cell_81/strided_slice/stack_1£
'while/gru_cell_81/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/gru_cell_81/strided_slice/stack_2ê
while/gru_cell_81/strided_sliceStridedSlice(while/gru_cell_81/ReadVariableOp:value:0.while/gru_cell_81/strided_slice/stack:output:00while/gru_cell_81/strided_slice/stack_1:output:00while/gru_cell_81/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2!
while/gru_cell_81/strided_slice´
while/gru_cell_81/MatMul_1MatMulwhile_placeholder_2(while/gru_cell_81/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_81/MatMul_1
while/gru_cell_81/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2
while/gru_cell_81/Const
#while/gru_cell_81/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2%
#while/gru_cell_81/split_1/split_dim«
while/gru_cell_81/split_1SplitV$while/gru_cell_81/MatMul_1:product:0 while/gru_cell_81/Const:output:0,while/gru_cell_81/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2
while/gru_cell_81/split_1°
while/gru_cell_81/addAddV2 while/gru_cell_81/split:output:0"while/gru_cell_81/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_81/add
while/gru_cell_81/SigmoidSigmoidwhile/gru_cell_81/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_81/Sigmoid´
while/gru_cell_81/add_1AddV2 while/gru_cell_81/split:output:1"while/gru_cell_81/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_81/add_1
while/gru_cell_81/Sigmoid_1Sigmoidwhile/gru_cell_81/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_81/Sigmoid_1
while/gru_cell_81/mulMulwhile/gru_cell_81/Sigmoid_1:y:0while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_81/mul¶
"while/gru_cell_81/ReadVariableOp_1ReadVariableOp+while_gru_cell_81_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02$
"while/gru_cell_81/ReadVariableOp_1£
'while/gru_cell_81/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2)
'while/gru_cell_81/strided_slice_1/stack§
)while/gru_cell_81/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/gru_cell_81/strided_slice_1/stack_1§
)while/gru_cell_81/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/gru_cell_81/strided_slice_1/stack_2ö
!while/gru_cell_81/strided_slice_1StridedSlice*while/gru_cell_81/ReadVariableOp_1:value:00while/gru_cell_81/strided_slice_1/stack:output:02while/gru_cell_81/strided_slice_1/stack_1:output:02while/gru_cell_81/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2#
!while/gru_cell_81/strided_slice_1¼
while/gru_cell_81/MatMul_2MatMulwhile/gru_cell_81/mul:z:0*while/gru_cell_81/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_81/MatMul_2¶
while/gru_cell_81/add_2AddV2 while/gru_cell_81/split:output:2$while/gru_cell_81/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_81/add_2
while/gru_cell_81/ReluReluwhile/gru_cell_81/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_81/Relu 
while/gru_cell_81/mul_1Mulwhile/gru_cell_81/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_81/mul_1w
while/gru_cell_81/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
while/gru_cell_81/sub/x©
while/gru_cell_81/subSub while/gru_cell_81/sub/x:output:0while/gru_cell_81/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_81/sub­
while/gru_cell_81/mul_2Mulwhile/gru_cell_81/sub:z:0$while/gru_cell_81/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_81/mul_2¨
while/gru_cell_81/add_3AddV2while/gru_cell_81/mul_1:z:0while/gru_cell_81/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_81/add_3ß
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_81/add_3:z:0*
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
while/add_1û
while/IdentityIdentitywhile/add_1:z:0)^while/gru_cell_81/BiasAdd/ReadVariableOp(^while/gru_cell_81/MatMul/ReadVariableOp!^while/gru_cell_81/ReadVariableOp#^while/gru_cell_81/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations)^while/gru_cell_81/BiasAdd/ReadVariableOp(^while/gru_cell_81/MatMul/ReadVariableOp!^while/gru_cell_81/ReadVariableOp#^while/gru_cell_81/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_1ý
while/Identity_2Identitywhile/add:z:0)^while/gru_cell_81/BiasAdd/ReadVariableOp(^while/gru_cell_81/MatMul/ReadVariableOp!^while/gru_cell_81/ReadVariableOp#^while/gru_cell_81/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_2ª
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/gru_cell_81/BiasAdd/ReadVariableOp(^while/gru_cell_81/MatMul/ReadVariableOp!^while/gru_cell_81/ReadVariableOp#^while/gru_cell_81/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/gru_cell_81/add_3:z:0)^while/gru_cell_81/BiasAdd/ReadVariableOp(^while/gru_cell_81/MatMul/ReadVariableOp!^while/gru_cell_81/ReadVariableOp#^while/gru_cell_81/ReadVariableOp_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_4"h
1while_gru_cell_81_biasadd_readvariableop_resource3while_gru_cell_81_biasadd_readvariableop_resource_0"f
0while_gru_cell_81_matmul_readvariableop_resource2while_gru_cell_81_matmul_readvariableop_resource_0"X
)while_gru_cell_81_readvariableop_resource+while_gru_cell_81_readvariableop_resource_0")
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
(while/gru_cell_81/BiasAdd/ReadVariableOp(while/gru_cell_81/BiasAdd/ReadVariableOp2R
'while/gru_cell_81/MatMul/ReadVariableOp'while/gru_cell_81/MatMul/ReadVariableOp2D
 while/gru_cell_81/ReadVariableOp while/gru_cell_81/ReadVariableOp2H
"while/gru_cell_81/ReadVariableOp_1"while/gru_cell_81/ReadVariableOp_1: 
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
Ó*
è
H__inference_gru_cell_81_layer_call_and_return_conditional_losses_4085305

inputs

states1
matmul_readvariableop_resource:	Ø.
biasadd_readvariableop_resource:	Ø+
readvariableop_resource:
ÈØ
identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢ReadVariableOp¢ReadVariableOp_1
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	Ø*
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
-:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿÈ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
 
_user_specified_namestates
ùW
¥
while_body_4087283
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_gru_cell_81_matmul_readvariableop_resource_0:	ØB
3while_gru_cell_81_biasadd_readvariableop_resource_0:	Ø?
+while_gru_cell_81_readvariableop_resource_0:
ÈØ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_gru_cell_81_matmul_readvariableop_resource:	Ø@
1while_gru_cell_81_biasadd_readvariableop_resource:	Ø=
)while_gru_cell_81_readvariableop_resource:
ÈØ¢(while/gru_cell_81/BiasAdd/ReadVariableOp¢'while/gru_cell_81/MatMul/ReadVariableOp¢ while/gru_cell_81/ReadVariableOp¢"while/gru_cell_81/ReadVariableOp_1Ã
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÓ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÆ
'while/gru_cell_81/MatMul/ReadVariableOpReadVariableOp2while_gru_cell_81_matmul_readvariableop_resource_0*
_output_shapes
:	Ø*
dtype02)
'while/gru_cell_81/MatMul/ReadVariableOpÔ
while/gru_cell_81/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/gru_cell_81/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
while/gru_cell_81/MatMulÅ
(while/gru_cell_81/BiasAdd/ReadVariableOpReadVariableOp3while_gru_cell_81_biasadd_readvariableop_resource_0*
_output_shapes	
:Ø*
dtype02*
(while/gru_cell_81/BiasAdd/ReadVariableOpÊ
while/gru_cell_81/BiasAddBiasAdd"while/gru_cell_81/MatMul:product:00while/gru_cell_81/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
while/gru_cell_81/BiasAdd
!while/gru_cell_81/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2#
!while/gru_cell_81/split/split_dim÷
while/gru_cell_81/splitSplit*while/gru_cell_81/split/split_dim:output:0"while/gru_cell_81/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
while/gru_cell_81/split²
 while/gru_cell_81/ReadVariableOpReadVariableOp+while_gru_cell_81_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02"
 while/gru_cell_81/ReadVariableOp
%while/gru_cell_81/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/gru_cell_81/strided_slice/stack£
'while/gru_cell_81/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/gru_cell_81/strided_slice/stack_1£
'while/gru_cell_81/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/gru_cell_81/strided_slice/stack_2ê
while/gru_cell_81/strided_sliceStridedSlice(while/gru_cell_81/ReadVariableOp:value:0.while/gru_cell_81/strided_slice/stack:output:00while/gru_cell_81/strided_slice/stack_1:output:00while/gru_cell_81/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2!
while/gru_cell_81/strided_slice´
while/gru_cell_81/MatMul_1MatMulwhile_placeholder_2(while/gru_cell_81/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_81/MatMul_1
while/gru_cell_81/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2
while/gru_cell_81/Const
#while/gru_cell_81/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2%
#while/gru_cell_81/split_1/split_dim«
while/gru_cell_81/split_1SplitV$while/gru_cell_81/MatMul_1:product:0 while/gru_cell_81/Const:output:0,while/gru_cell_81/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2
while/gru_cell_81/split_1°
while/gru_cell_81/addAddV2 while/gru_cell_81/split:output:0"while/gru_cell_81/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_81/add
while/gru_cell_81/SigmoidSigmoidwhile/gru_cell_81/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_81/Sigmoid´
while/gru_cell_81/add_1AddV2 while/gru_cell_81/split:output:1"while/gru_cell_81/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_81/add_1
while/gru_cell_81/Sigmoid_1Sigmoidwhile/gru_cell_81/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_81/Sigmoid_1
while/gru_cell_81/mulMulwhile/gru_cell_81/Sigmoid_1:y:0while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_81/mul¶
"while/gru_cell_81/ReadVariableOp_1ReadVariableOp+while_gru_cell_81_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02$
"while/gru_cell_81/ReadVariableOp_1£
'while/gru_cell_81/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2)
'while/gru_cell_81/strided_slice_1/stack§
)while/gru_cell_81/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/gru_cell_81/strided_slice_1/stack_1§
)while/gru_cell_81/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/gru_cell_81/strided_slice_1/stack_2ö
!while/gru_cell_81/strided_slice_1StridedSlice*while/gru_cell_81/ReadVariableOp_1:value:00while/gru_cell_81/strided_slice_1/stack:output:02while/gru_cell_81/strided_slice_1/stack_1:output:02while/gru_cell_81/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2#
!while/gru_cell_81/strided_slice_1¼
while/gru_cell_81/MatMul_2MatMulwhile/gru_cell_81/mul:z:0*while/gru_cell_81/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_81/MatMul_2¶
while/gru_cell_81/add_2AddV2 while/gru_cell_81/split:output:2$while/gru_cell_81/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_81/add_2
while/gru_cell_81/ReluReluwhile/gru_cell_81/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_81/Relu 
while/gru_cell_81/mul_1Mulwhile/gru_cell_81/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_81/mul_1w
while/gru_cell_81/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
while/gru_cell_81/sub/x©
while/gru_cell_81/subSub while/gru_cell_81/sub/x:output:0while/gru_cell_81/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_81/sub­
while/gru_cell_81/mul_2Mulwhile/gru_cell_81/sub:z:0$while/gru_cell_81/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_81/mul_2¨
while/gru_cell_81/add_3AddV2while/gru_cell_81/mul_1:z:0while/gru_cell_81/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_81/add_3ß
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_81/add_3:z:0*
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
while/add_1û
while/IdentityIdentitywhile/add_1:z:0)^while/gru_cell_81/BiasAdd/ReadVariableOp(^while/gru_cell_81/MatMul/ReadVariableOp!^while/gru_cell_81/ReadVariableOp#^while/gru_cell_81/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations)^while/gru_cell_81/BiasAdd/ReadVariableOp(^while/gru_cell_81/MatMul/ReadVariableOp!^while/gru_cell_81/ReadVariableOp#^while/gru_cell_81/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_1ý
while/Identity_2Identitywhile/add:z:0)^while/gru_cell_81/BiasAdd/ReadVariableOp(^while/gru_cell_81/MatMul/ReadVariableOp!^while/gru_cell_81/ReadVariableOp#^while/gru_cell_81/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_2ª
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/gru_cell_81/BiasAdd/ReadVariableOp(^while/gru_cell_81/MatMul/ReadVariableOp!^while/gru_cell_81/ReadVariableOp#^while/gru_cell_81/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/gru_cell_81/add_3:z:0)^while/gru_cell_81/BiasAdd/ReadVariableOp(^while/gru_cell_81/MatMul/ReadVariableOp!^while/gru_cell_81/ReadVariableOp#^while/gru_cell_81/ReadVariableOp_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_4"h
1while_gru_cell_81_biasadd_readvariableop_resource3while_gru_cell_81_biasadd_readvariableop_resource_0"f
0while_gru_cell_81_matmul_readvariableop_resource2while_gru_cell_81_matmul_readvariableop_resource_0"X
)while_gru_cell_81_readvariableop_resource+while_gru_cell_81_readvariableop_resource_0")
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
(while/gru_cell_81/BiasAdd/ReadVariableOp(while/gru_cell_81/BiasAdd/ReadVariableOp2R
'while/gru_cell_81/MatMul/ReadVariableOp'while/gru_cell_81/MatMul/ReadVariableOp2D
 while/gru_cell_81/ReadVariableOp while/gru_cell_81/ReadVariableOp2H
"while/gru_cell_81/ReadVariableOp_1"while/gru_cell_81/ReadVariableOp_1: 
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
è
¦
%__inference_signature_wrapper_4086416
gru_81_input
unknown:	Ø
	unknown_0:	Ø
	unknown_1:
ÈØ
	unknown_2:	Èd
	unknown_3:d
	unknown_4:d
	unknown_5:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallgru_81_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
"__inference__wrapped_model_40852242
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&
_user_specified_namegru_81_input
²

ø
F__inference_dense_162_layer_call_and_return_conditional_losses_4086016

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

Ë
J__inference_sequential_81_layer_call_and_return_conditional_losses_4086368
gru_81_input!
gru_81_4086350:	Ø
gru_81_4086352:	Ø"
gru_81_4086354:
ÈØ$
dense_162_4086357:	Èd
dense_162_4086359:d#
dense_163_4086362:d
dense_163_4086364:
identity¢!dense_162/StatefulPartitionedCall¢!dense_163/StatefulPartitionedCall¢gru_81/StatefulPartitionedCall¦
gru_81/StatefulPartitionedCallStatefulPartitionedCallgru_81_inputgru_81_4086350gru_81_4086352gru_81_4086354*
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
GPU 2J 8 *L
fGRE
C__inference_gru_81_layer_call_and_return_conditional_losses_40859972 
gru_81/StatefulPartitionedCall½
!dense_162/StatefulPartitionedCallStatefulPartitionedCall'gru_81/StatefulPartitionedCall:output:0dense_162_4086357dense_162_4086359*
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
F__inference_dense_162_layer_call_and_return_conditional_losses_40860162#
!dense_162/StatefulPartitionedCallÀ
!dense_163/StatefulPartitionedCallStatefulPartitionedCall*dense_162/StatefulPartitionedCall:output:0dense_163_4086362dense_163_4086364*
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
F__inference_dense_163_layer_call_and_return_conditional_losses_40860322#
!dense_163/StatefulPartitionedCallç
IdentityIdentity*dense_163/StatefulPartitionedCall:output:0"^dense_162/StatefulPartitionedCall"^dense_163/StatefulPartitionedCall^gru_81/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2F
!dense_162/StatefulPartitionedCall!dense_162/StatefulPartitionedCall2F
!dense_163/StatefulPartitionedCall!dense_163/StatefulPartitionedCall2@
gru_81/StatefulPartitionedCallgru_81/StatefulPartitionedCall:Y U
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&
_user_specified_namegru_81_input
´

Ù
-__inference_gru_cell_81_layer_call_fn_4087603

inputs
states_0
unknown:	Ø
	unknown_0:	Ø
	unknown_1:
ÈØ
identity

identity_1¢StatefulPartitionedCall¦
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
GPU 2J 8 *Q
fLRJ
H__inference_gru_cell_81_layer_call_and_return_conditional_losses_40853052
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
-:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿÈ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
"
_user_specified_name
states/0
Òh
£
C__inference_gru_81_layer_call_and_return_conditional_losses_4085997

inputs=
*gru_cell_81_matmul_readvariableop_resource:	Ø:
+gru_cell_81_biasadd_readvariableop_resource:	Ø7
#gru_cell_81_readvariableop_resource:
ÈØ
identity¢"gru_cell_81/BiasAdd/ReadVariableOp¢!gru_cell_81/MatMul/ReadVariableOp¢gru_cell_81/ReadVariableOp¢gru_cell_81/ReadVariableOp_1¢whileD
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
:ÿÿÿÿÿÿÿÿÿ2
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
valueB"ÿÿÿÿ   27
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2²
!gru_cell_81/MatMul/ReadVariableOpReadVariableOp*gru_cell_81_matmul_readvariableop_resource*
_output_shapes
:	Ø*
dtype02#
!gru_cell_81/MatMul/ReadVariableOpª
gru_cell_81/MatMulMatMulstrided_slice_2:output:0)gru_cell_81/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_cell_81/MatMul±
"gru_cell_81/BiasAdd/ReadVariableOpReadVariableOp+gru_cell_81_biasadd_readvariableop_resource*
_output_shapes	
:Ø*
dtype02$
"gru_cell_81/BiasAdd/ReadVariableOp²
gru_cell_81/BiasAddBiasAddgru_cell_81/MatMul:product:0*gru_cell_81/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_cell_81/BiasAdd
gru_cell_81/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
gru_cell_81/split/split_dimß
gru_cell_81/splitSplit$gru_cell_81/split/split_dim:output:0gru_cell_81/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
gru_cell_81/split
gru_cell_81/ReadVariableOpReadVariableOp#gru_cell_81_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02
gru_cell_81/ReadVariableOp
gru_cell_81/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
gru_cell_81/strided_slice/stack
!gru_cell_81/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2#
!gru_cell_81/strided_slice/stack_1
!gru_cell_81/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!gru_cell_81/strided_slice/stack_2Æ
gru_cell_81/strided_sliceStridedSlice"gru_cell_81/ReadVariableOp:value:0(gru_cell_81/strided_slice/stack:output:0*gru_cell_81/strided_slice/stack_1:output:0*gru_cell_81/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2
gru_cell_81/strided_slice
gru_cell_81/MatMul_1MatMulzeros:output:0"gru_cell_81/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_81/MatMul_1{
gru_cell_81/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2
gru_cell_81/Const
gru_cell_81/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
gru_cell_81/split_1/split_dim
gru_cell_81/split_1SplitVgru_cell_81/MatMul_1:product:0gru_cell_81/Const:output:0&gru_cell_81/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2
gru_cell_81/split_1
gru_cell_81/addAddV2gru_cell_81/split:output:0gru_cell_81/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_81/add}
gru_cell_81/SigmoidSigmoidgru_cell_81/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_81/Sigmoid
gru_cell_81/add_1AddV2gru_cell_81/split:output:1gru_cell_81/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_81/add_1
gru_cell_81/Sigmoid_1Sigmoidgru_cell_81/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_81/Sigmoid_1
gru_cell_81/mulMulgru_cell_81/Sigmoid_1:y:0zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_81/mul¢
gru_cell_81/ReadVariableOp_1ReadVariableOp#gru_cell_81_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02
gru_cell_81/ReadVariableOp_1
!gru_cell_81/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2#
!gru_cell_81/strided_slice_1/stack
#gru_cell_81/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#gru_cell_81/strided_slice_1/stack_1
#gru_cell_81/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gru_cell_81/strided_slice_1/stack_2Ò
gru_cell_81/strided_slice_1StridedSlice$gru_cell_81/ReadVariableOp_1:value:0*gru_cell_81/strided_slice_1/stack:output:0,gru_cell_81/strided_slice_1/stack_1:output:0,gru_cell_81/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2
gru_cell_81/strided_slice_1¤
gru_cell_81/MatMul_2MatMulgru_cell_81/mul:z:0$gru_cell_81/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_81/MatMul_2
gru_cell_81/add_2AddV2gru_cell_81/split:output:2gru_cell_81/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_81/add_2v
gru_cell_81/ReluRelugru_cell_81/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_81/Relu
gru_cell_81/mul_1Mulgru_cell_81/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_81/mul_1k
gru_cell_81/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_81/sub/x
gru_cell_81/subSubgru_cell_81/sub/x:output:0gru_cell_81/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_81/sub
gru_cell_81/mul_2Mulgru_cell_81/sub:z:0gru_cell_81/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_81/mul_2
gru_cell_81/add_3AddV2gru_cell_81/mul_1:z:0gru_cell_81/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_81/add_3
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
while/loop_counter­
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*gru_cell_81_matmul_readvariableop_resource+gru_cell_81_biasadd_readvariableop_resource#gru_cell_81_readvariableop_resource*
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
while_body_4085901*
condR
while_cond_4085900*9
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
runtimeú
IdentityIdentitystrided_slice_3:output:0#^gru_cell_81/BiasAdd/ReadVariableOp"^gru_cell_81/MatMul/ReadVariableOp^gru_cell_81/ReadVariableOp^gru_cell_81/ReadVariableOp_1^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2H
"gru_cell_81/BiasAdd/ReadVariableOp"gru_cell_81/BiasAdd/ReadVariableOp2F
!gru_cell_81/MatMul/ReadVariableOp!gru_cell_81/MatMul/ReadVariableOp28
gru_cell_81/ReadVariableOpgru_cell_81/ReadVariableOp2<
gru_cell_81/ReadVariableOp_1gru_cell_81/ReadVariableOp_12
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

Ë
J__inference_sequential_81_layer_call_and_return_conditional_losses_4086389
gru_81_input!
gru_81_4086371:	Ø
gru_81_4086373:	Ø"
gru_81_4086375:
ÈØ$
dense_162_4086378:	Èd
dense_162_4086380:d#
dense_163_4086383:d
dense_163_4086385:
identity¢!dense_162/StatefulPartitionedCall¢!dense_163/StatefulPartitionedCall¢gru_81/StatefulPartitionedCall¦
gru_81/StatefulPartitionedCallStatefulPartitionedCallgru_81_inputgru_81_4086371gru_81_4086373gru_81_4086375*
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
GPU 2J 8 *L
fGRE
C__inference_gru_81_layer_call_and_return_conditional_losses_40862602 
gru_81/StatefulPartitionedCall½
!dense_162/StatefulPartitionedCallStatefulPartitionedCall'gru_81/StatefulPartitionedCall:output:0dense_162_4086378dense_162_4086380*
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
F__inference_dense_162_layer_call_and_return_conditional_losses_40860162#
!dense_162/StatefulPartitionedCallÀ
!dense_163/StatefulPartitionedCallStatefulPartitionedCall*dense_162/StatefulPartitionedCall:output:0dense_163_4086383dense_163_4086385*
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
F__inference_dense_163_layer_call_and_return_conditional_losses_40860322#
!dense_163/StatefulPartitionedCallç
IdentityIdentity*dense_163/StatefulPartitionedCall:output:0"^dense_162/StatefulPartitionedCall"^dense_163/StatefulPartitionedCall^gru_81/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2F
!dense_162/StatefulPartitionedCall!dense_162/StatefulPartitionedCall2F
!dense_163/StatefulPartitionedCall!dense_163/StatefulPartitionedCall2@
gru_81/StatefulPartitionedCallgru_81/StatefulPartitionedCall:Y U
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&
_user_specified_namegru_81_input

Å
J__inference_sequential_81_layer_call_and_return_conditional_losses_4086311

inputs!
gru_81_4086293:	Ø
gru_81_4086295:	Ø"
gru_81_4086297:
ÈØ$
dense_162_4086300:	Èd
dense_162_4086302:d#
dense_163_4086305:d
dense_163_4086307:
identity¢!dense_162/StatefulPartitionedCall¢!dense_163/StatefulPartitionedCall¢gru_81/StatefulPartitionedCall 
gru_81/StatefulPartitionedCallStatefulPartitionedCallinputsgru_81_4086293gru_81_4086295gru_81_4086297*
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
GPU 2J 8 *L
fGRE
C__inference_gru_81_layer_call_and_return_conditional_losses_40862602 
gru_81/StatefulPartitionedCall½
!dense_162/StatefulPartitionedCallStatefulPartitionedCall'gru_81/StatefulPartitionedCall:output:0dense_162_4086300dense_162_4086302*
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
F__inference_dense_162_layer_call_and_return_conditional_losses_40860162#
!dense_162/StatefulPartitionedCallÀ
!dense_163/StatefulPartitionedCallStatefulPartitionedCall*dense_162/StatefulPartitionedCall:output:0dense_163_4086305dense_163_4086307*
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
F__inference_dense_163_layer_call_and_return_conditional_losses_40860322#
!dense_163/StatefulPartitionedCallç
IdentityIdentity*dense_163/StatefulPartitionedCall:output:0"^dense_162/StatefulPartitionedCall"^dense_163/StatefulPartitionedCall^gru_81/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2F
!dense_162/StatefulPartitionedCall!dense_162/StatefulPartitionedCall2F
!dense_163/StatefulPartitionedCall!dense_163/StatefulPartitionedCall2@
gru_81/StatefulPartitionedCallgru_81/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ó
¶
(__inference_gru_81_layer_call_fn_4086855

inputs
unknown:	Ø
	unknown_0:	Ø
	unknown_1:
ÈØ
identity¢StatefulPartitionedCall
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
GPU 2J 8 *L
fGRE
C__inference_gru_81_layer_call_and_return_conditional_losses_40859972
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
	
°
/__inference_sequential_81_layer_call_fn_4086056
gru_81_input
unknown:	Ø
	unknown_0:	Ø
	unknown_1:
ÈØ
	unknown_2:	Èd
	unknown_3:d
	unknown_4:d
	unknown_5:
identity¢StatefulPartitionedCallÁ
StatefulPartitionedCallStatefulPartitionedCallgru_81_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
J__inference_sequential_81_layer_call_and_return_conditional_losses_40860392
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&
_user_specified_namegru_81_input
Ò	
÷
F__inference_dense_163_layer_call_and_return_conditional_losses_4086032

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
Ý*
ê
H__inference_gru_cell_81_layer_call_and_return_conditional_losses_4087663

inputs
states_01
matmul_readvariableop_resource:	Ø.
biasadd_readvariableop_resource:	Ø+
readvariableop_resource:
ÈØ
identity

identity_1¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢ReadVariableOp¢ReadVariableOp_1
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	Ø*
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
-:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿÈ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
"
_user_specified_name
states/0
Ê~
±
'sequential_81_gru_81_while_body_4085115F
Bsequential_81_gru_81_while_sequential_81_gru_81_while_loop_counterL
Hsequential_81_gru_81_while_sequential_81_gru_81_while_maximum_iterations*
&sequential_81_gru_81_while_placeholder,
(sequential_81_gru_81_while_placeholder_1,
(sequential_81_gru_81_while_placeholder_2E
Asequential_81_gru_81_while_sequential_81_gru_81_strided_slice_1_0
}sequential_81_gru_81_while_tensorarrayv2read_tensorlistgetitem_sequential_81_gru_81_tensorarrayunstack_tensorlistfromtensor_0Z
Gsequential_81_gru_81_while_gru_cell_81_matmul_readvariableop_resource_0:	ØW
Hsequential_81_gru_81_while_gru_cell_81_biasadd_readvariableop_resource_0:	ØT
@sequential_81_gru_81_while_gru_cell_81_readvariableop_resource_0:
ÈØ'
#sequential_81_gru_81_while_identity)
%sequential_81_gru_81_while_identity_1)
%sequential_81_gru_81_while_identity_2)
%sequential_81_gru_81_while_identity_3)
%sequential_81_gru_81_while_identity_4C
?sequential_81_gru_81_while_sequential_81_gru_81_strided_slice_1
{sequential_81_gru_81_while_tensorarrayv2read_tensorlistgetitem_sequential_81_gru_81_tensorarrayunstack_tensorlistfromtensorX
Esequential_81_gru_81_while_gru_cell_81_matmul_readvariableop_resource:	ØU
Fsequential_81_gru_81_while_gru_cell_81_biasadd_readvariableop_resource:	ØR
>sequential_81_gru_81_while_gru_cell_81_readvariableop_resource:
ÈØ¢=sequential_81/gru_81/while/gru_cell_81/BiasAdd/ReadVariableOp¢<sequential_81/gru_81/while/gru_cell_81/MatMul/ReadVariableOp¢5sequential_81/gru_81/while/gru_cell_81/ReadVariableOp¢7sequential_81/gru_81/while/gru_cell_81/ReadVariableOp_1í
Lsequential_81/gru_81/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2N
Lsequential_81/gru_81/while/TensorArrayV2Read/TensorListGetItem/element_shapeÑ
>sequential_81/gru_81/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem}sequential_81_gru_81_while_tensorarrayv2read_tensorlistgetitem_sequential_81_gru_81_tensorarrayunstack_tensorlistfromtensor_0&sequential_81_gru_81_while_placeholderUsequential_81/gru_81/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02@
>sequential_81/gru_81/while/TensorArrayV2Read/TensorListGetItem
<sequential_81/gru_81/while/gru_cell_81/MatMul/ReadVariableOpReadVariableOpGsequential_81_gru_81_while_gru_cell_81_matmul_readvariableop_resource_0*
_output_shapes
:	Ø*
dtype02>
<sequential_81/gru_81/while/gru_cell_81/MatMul/ReadVariableOp¨
-sequential_81/gru_81/while/gru_cell_81/MatMulMatMulEsequential_81/gru_81/while/TensorArrayV2Read/TensorListGetItem:item:0Dsequential_81/gru_81/while/gru_cell_81/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2/
-sequential_81/gru_81/while/gru_cell_81/MatMul
=sequential_81/gru_81/while/gru_cell_81/BiasAdd/ReadVariableOpReadVariableOpHsequential_81_gru_81_while_gru_cell_81_biasadd_readvariableop_resource_0*
_output_shapes	
:Ø*
dtype02?
=sequential_81/gru_81/while/gru_cell_81/BiasAdd/ReadVariableOp
.sequential_81/gru_81/while/gru_cell_81/BiasAddBiasAdd7sequential_81/gru_81/while/gru_cell_81/MatMul:product:0Esequential_81/gru_81/while/gru_cell_81/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ20
.sequential_81/gru_81/while/gru_cell_81/BiasAdd»
6sequential_81/gru_81/while/gru_cell_81/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ28
6sequential_81/gru_81/while/gru_cell_81/split/split_dimË
,sequential_81/gru_81/while/gru_cell_81/splitSplit?sequential_81/gru_81/while/gru_cell_81/split/split_dim:output:07sequential_81/gru_81/while/gru_cell_81/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2.
,sequential_81/gru_81/while/gru_cell_81/splitñ
5sequential_81/gru_81/while/gru_cell_81/ReadVariableOpReadVariableOp@sequential_81_gru_81_while_gru_cell_81_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype027
5sequential_81/gru_81/while/gru_cell_81/ReadVariableOpÉ
:sequential_81/gru_81/while/gru_cell_81/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2<
:sequential_81/gru_81/while/gru_cell_81/strided_slice/stackÍ
<sequential_81/gru_81/while/gru_cell_81/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2>
<sequential_81/gru_81/while/gru_cell_81/strided_slice/stack_1Í
<sequential_81/gru_81/while/gru_cell_81/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2>
<sequential_81/gru_81/while/gru_cell_81/strided_slice/stack_2è
4sequential_81/gru_81/while/gru_cell_81/strided_sliceStridedSlice=sequential_81/gru_81/while/gru_cell_81/ReadVariableOp:value:0Csequential_81/gru_81/while/gru_cell_81/strided_slice/stack:output:0Esequential_81/gru_81/while/gru_cell_81/strided_slice/stack_1:output:0Esequential_81/gru_81/while/gru_cell_81/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask26
4sequential_81/gru_81/while/gru_cell_81/strided_slice
/sequential_81/gru_81/while/gru_cell_81/MatMul_1MatMul(sequential_81_gru_81_while_placeholder_2=sequential_81/gru_81/while/gru_cell_81/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ21
/sequential_81/gru_81/while/gru_cell_81/MatMul_1±
,sequential_81/gru_81/while/gru_cell_81/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2.
,sequential_81/gru_81/while/gru_cell_81/Const¿
8sequential_81/gru_81/while/gru_cell_81/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2:
8sequential_81/gru_81/while/gru_cell_81/split_1/split_dim
.sequential_81/gru_81/while/gru_cell_81/split_1SplitV9sequential_81/gru_81/while/gru_cell_81/MatMul_1:product:05sequential_81/gru_81/while/gru_cell_81/Const:output:0Asequential_81/gru_81/while/gru_cell_81/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split20
.sequential_81/gru_81/while/gru_cell_81/split_1
*sequential_81/gru_81/while/gru_cell_81/addAddV25sequential_81/gru_81/while/gru_cell_81/split:output:07sequential_81/gru_81/while/gru_cell_81/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2,
*sequential_81/gru_81/while/gru_cell_81/addÎ
.sequential_81/gru_81/while/gru_cell_81/SigmoidSigmoid.sequential_81/gru_81/while/gru_cell_81/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ20
.sequential_81/gru_81/while/gru_cell_81/Sigmoid
,sequential_81/gru_81/while/gru_cell_81/add_1AddV25sequential_81/gru_81/while/gru_cell_81/split:output:17sequential_81/gru_81/while/gru_cell_81/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2.
,sequential_81/gru_81/while/gru_cell_81/add_1Ô
0sequential_81/gru_81/while/gru_cell_81/Sigmoid_1Sigmoid0sequential_81/gru_81/while/gru_cell_81/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ22
0sequential_81/gru_81/while/gru_cell_81/Sigmoid_1ò
*sequential_81/gru_81/while/gru_cell_81/mulMul4sequential_81/gru_81/while/gru_cell_81/Sigmoid_1:y:0(sequential_81_gru_81_while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2,
*sequential_81/gru_81/while/gru_cell_81/mulõ
7sequential_81/gru_81/while/gru_cell_81/ReadVariableOp_1ReadVariableOp@sequential_81_gru_81_while_gru_cell_81_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype029
7sequential_81/gru_81/while/gru_cell_81/ReadVariableOp_1Í
<sequential_81/gru_81/while/gru_cell_81/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2>
<sequential_81/gru_81/while/gru_cell_81/strided_slice_1/stackÑ
>sequential_81/gru_81/while/gru_cell_81/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2@
>sequential_81/gru_81/while/gru_cell_81/strided_slice_1/stack_1Ñ
>sequential_81/gru_81/while/gru_cell_81/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2@
>sequential_81/gru_81/while/gru_cell_81/strided_slice_1/stack_2ô
6sequential_81/gru_81/while/gru_cell_81/strided_slice_1StridedSlice?sequential_81/gru_81/while/gru_cell_81/ReadVariableOp_1:value:0Esequential_81/gru_81/while/gru_cell_81/strided_slice_1/stack:output:0Gsequential_81/gru_81/while/gru_cell_81/strided_slice_1/stack_1:output:0Gsequential_81/gru_81/while/gru_cell_81/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask28
6sequential_81/gru_81/while/gru_cell_81/strided_slice_1
/sequential_81/gru_81/while/gru_cell_81/MatMul_2MatMul.sequential_81/gru_81/while/gru_cell_81/mul:z:0?sequential_81/gru_81/while/gru_cell_81/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ21
/sequential_81/gru_81/while/gru_cell_81/MatMul_2
,sequential_81/gru_81/while/gru_cell_81/add_2AddV25sequential_81/gru_81/while/gru_cell_81/split:output:29sequential_81/gru_81/while/gru_cell_81/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2.
,sequential_81/gru_81/while/gru_cell_81/add_2Ç
+sequential_81/gru_81/while/gru_cell_81/ReluRelu0sequential_81/gru_81/while/gru_cell_81/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2-
+sequential_81/gru_81/while/gru_cell_81/Reluô
,sequential_81/gru_81/while/gru_cell_81/mul_1Mul2sequential_81/gru_81/while/gru_cell_81/Sigmoid:y:0(sequential_81_gru_81_while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2.
,sequential_81/gru_81/while/gru_cell_81/mul_1¡
,sequential_81/gru_81/while/gru_cell_81/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2.
,sequential_81/gru_81/while/gru_cell_81/sub/xý
*sequential_81/gru_81/while/gru_cell_81/subSub5sequential_81/gru_81/while/gru_cell_81/sub/x:output:02sequential_81/gru_81/while/gru_cell_81/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2,
*sequential_81/gru_81/while/gru_cell_81/sub
,sequential_81/gru_81/while/gru_cell_81/mul_2Mul.sequential_81/gru_81/while/gru_cell_81/sub:z:09sequential_81/gru_81/while/gru_cell_81/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2.
,sequential_81/gru_81/while/gru_cell_81/mul_2ü
,sequential_81/gru_81/while/gru_cell_81/add_3AddV20sequential_81/gru_81/while/gru_cell_81/mul_1:z:00sequential_81/gru_81/while/gru_cell_81/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2.
,sequential_81/gru_81/while/gru_cell_81/add_3È
?sequential_81/gru_81/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem(sequential_81_gru_81_while_placeholder_1&sequential_81_gru_81_while_placeholder0sequential_81/gru_81/while/gru_cell_81/add_3:z:0*
_output_shapes
: *
element_dtype02A
?sequential_81/gru_81/while/TensorArrayV2Write/TensorListSetItem
 sequential_81/gru_81/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2"
 sequential_81/gru_81/while/add/y½
sequential_81/gru_81/while/addAddV2&sequential_81_gru_81_while_placeholder)sequential_81/gru_81/while/add/y:output:0*
T0*
_output_shapes
: 2 
sequential_81/gru_81/while/add
"sequential_81/gru_81/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2$
"sequential_81/gru_81/while/add_1/yß
 sequential_81/gru_81/while/add_1AddV2Bsequential_81_gru_81_while_sequential_81_gru_81_while_loop_counter+sequential_81/gru_81/while/add_1/y:output:0*
T0*
_output_shapes
: 2"
 sequential_81/gru_81/while/add_1
#sequential_81/gru_81/while/IdentityIdentity$sequential_81/gru_81/while/add_1:z:0>^sequential_81/gru_81/while/gru_cell_81/BiasAdd/ReadVariableOp=^sequential_81/gru_81/while/gru_cell_81/MatMul/ReadVariableOp6^sequential_81/gru_81/while/gru_cell_81/ReadVariableOp8^sequential_81/gru_81/while/gru_cell_81/ReadVariableOp_1*
T0*
_output_shapes
: 2%
#sequential_81/gru_81/while/Identity¶
%sequential_81/gru_81/while/Identity_1IdentityHsequential_81_gru_81_while_sequential_81_gru_81_while_maximum_iterations>^sequential_81/gru_81/while/gru_cell_81/BiasAdd/ReadVariableOp=^sequential_81/gru_81/while/gru_cell_81/MatMul/ReadVariableOp6^sequential_81/gru_81/while/gru_cell_81/ReadVariableOp8^sequential_81/gru_81/while/gru_cell_81/ReadVariableOp_1*
T0*
_output_shapes
: 2'
%sequential_81/gru_81/while/Identity_1
%sequential_81/gru_81/while/Identity_2Identity"sequential_81/gru_81/while/add:z:0>^sequential_81/gru_81/while/gru_cell_81/BiasAdd/ReadVariableOp=^sequential_81/gru_81/while/gru_cell_81/MatMul/ReadVariableOp6^sequential_81/gru_81/while/gru_cell_81/ReadVariableOp8^sequential_81/gru_81/while/gru_cell_81/ReadVariableOp_1*
T0*
_output_shapes
: 2'
%sequential_81/gru_81/while/Identity_2½
%sequential_81/gru_81/while/Identity_3IdentityOsequential_81/gru_81/while/TensorArrayV2Write/TensorListSetItem:output_handle:0>^sequential_81/gru_81/while/gru_cell_81/BiasAdd/ReadVariableOp=^sequential_81/gru_81/while/gru_cell_81/MatMul/ReadVariableOp6^sequential_81/gru_81/while/gru_cell_81/ReadVariableOp8^sequential_81/gru_81/while/gru_cell_81/ReadVariableOp_1*
T0*
_output_shapes
: 2'
%sequential_81/gru_81/while/Identity_3°
%sequential_81/gru_81/while/Identity_4Identity0sequential_81/gru_81/while/gru_cell_81/add_3:z:0>^sequential_81/gru_81/while/gru_cell_81/BiasAdd/ReadVariableOp=^sequential_81/gru_81/while/gru_cell_81/MatMul/ReadVariableOp6^sequential_81/gru_81/while/gru_cell_81/ReadVariableOp8^sequential_81/gru_81/while/gru_cell_81/ReadVariableOp_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2'
%sequential_81/gru_81/while/Identity_4"
Fsequential_81_gru_81_while_gru_cell_81_biasadd_readvariableop_resourceHsequential_81_gru_81_while_gru_cell_81_biasadd_readvariableop_resource_0"
Esequential_81_gru_81_while_gru_cell_81_matmul_readvariableop_resourceGsequential_81_gru_81_while_gru_cell_81_matmul_readvariableop_resource_0"
>sequential_81_gru_81_while_gru_cell_81_readvariableop_resource@sequential_81_gru_81_while_gru_cell_81_readvariableop_resource_0"S
#sequential_81_gru_81_while_identity,sequential_81/gru_81/while/Identity:output:0"W
%sequential_81_gru_81_while_identity_1.sequential_81/gru_81/while/Identity_1:output:0"W
%sequential_81_gru_81_while_identity_2.sequential_81/gru_81/while/Identity_2:output:0"W
%sequential_81_gru_81_while_identity_3.sequential_81/gru_81/while/Identity_3:output:0"W
%sequential_81_gru_81_while_identity_4.sequential_81/gru_81/while/Identity_4:output:0"
?sequential_81_gru_81_while_sequential_81_gru_81_strided_slice_1Asequential_81_gru_81_while_sequential_81_gru_81_strided_slice_1_0"ü
{sequential_81_gru_81_while_tensorarrayv2read_tensorlistgetitem_sequential_81_gru_81_tensorarrayunstack_tensorlistfromtensor}sequential_81_gru_81_while_tensorarrayv2read_tensorlistgetitem_sequential_81_gru_81_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿÈ: : : : : 2~
=sequential_81/gru_81/while/gru_cell_81/BiasAdd/ReadVariableOp=sequential_81/gru_81/while/gru_cell_81/BiasAdd/ReadVariableOp2|
<sequential_81/gru_81/while/gru_cell_81/MatMul/ReadVariableOp<sequential_81/gru_81/while/gru_cell_81/MatMul/ReadVariableOp2n
5sequential_81/gru_81/while/gru_cell_81/ReadVariableOp5sequential_81/gru_81/while/gru_cell_81/ReadVariableOp2r
7sequential_81/gru_81/while/gru_cell_81/ReadVariableOp_17sequential_81/gru_81/while/gru_cell_81/ReadVariableOp_1: 
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
µ
×
J__inference_sequential_81_layer_call_and_return_conditional_losses_4086822

inputsD
1gru_81_gru_cell_81_matmul_readvariableop_resource:	ØA
2gru_81_gru_cell_81_biasadd_readvariableop_resource:	Ø>
*gru_81_gru_cell_81_readvariableop_resource:
ÈØ;
(dense_162_matmul_readvariableop_resource:	Èd7
)dense_162_biasadd_readvariableop_resource:d:
(dense_163_matmul_readvariableop_resource:d7
)dense_163_biasadd_readvariableop_resource:
identity¢ dense_162/BiasAdd/ReadVariableOp¢dense_162/MatMul/ReadVariableOp¢ dense_163/BiasAdd/ReadVariableOp¢dense_163/MatMul/ReadVariableOp¢)gru_81/gru_cell_81/BiasAdd/ReadVariableOp¢(gru_81/gru_cell_81/MatMul/ReadVariableOp¢!gru_81/gru_cell_81/ReadVariableOp¢#gru_81/gru_cell_81/ReadVariableOp_1¢gru_81/whileR
gru_81/ShapeShapeinputs*
T0*
_output_shapes
:2
gru_81/Shape
gru_81/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_81/strided_slice/stack
gru_81/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_81/strided_slice/stack_1
gru_81/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_81/strided_slice/stack_2
gru_81/strided_sliceStridedSlicegru_81/Shape:output:0#gru_81/strided_slice/stack:output:0%gru_81/strided_slice/stack_1:output:0%gru_81/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru_81/strided_slicek
gru_81/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :È2
gru_81/zeros/mul/y
gru_81/zeros/mulMulgru_81/strided_slice:output:0gru_81/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
gru_81/zeros/mulm
gru_81/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
gru_81/zeros/Less/y
gru_81/zeros/LessLessgru_81/zeros/mul:z:0gru_81/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
gru_81/zeros/Lessq
gru_81/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :È2
gru_81/zeros/packed/1
gru_81/zeros/packedPackgru_81/strided_slice:output:0gru_81/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
gru_81/zeros/packedm
gru_81/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_81/zeros/Const
gru_81/zerosFillgru_81/zeros/packed:output:0gru_81/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_81/zeros
gru_81/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_81/transpose/perm
gru_81/transpose	Transposeinputsgru_81/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_81/transposed
gru_81/Shape_1Shapegru_81/transpose:y:0*
T0*
_output_shapes
:2
gru_81/Shape_1
gru_81/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_81/strided_slice_1/stack
gru_81/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
gru_81/strided_slice_1/stack_1
gru_81/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
gru_81/strided_slice_1/stack_2
gru_81/strided_slice_1StridedSlicegru_81/Shape_1:output:0%gru_81/strided_slice_1/stack:output:0'gru_81/strided_slice_1/stack_1:output:0'gru_81/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru_81/strided_slice_1
"gru_81/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2$
"gru_81/TensorArrayV2/element_shapeÎ
gru_81/TensorArrayV2TensorListReserve+gru_81/TensorArrayV2/element_shape:output:0gru_81/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_81/TensorArrayV2Í
<gru_81/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2>
<gru_81/TensorArrayUnstack/TensorListFromTensor/element_shape
.gru_81/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorgru_81/transpose:y:0Egru_81/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.gru_81/TensorArrayUnstack/TensorListFromTensor
gru_81/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_81/strided_slice_2/stack
gru_81/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
gru_81/strided_slice_2/stack_1
gru_81/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
gru_81/strided_slice_2/stack_2¦
gru_81/strided_slice_2StridedSlicegru_81/transpose:y:0%gru_81/strided_slice_2/stack:output:0'gru_81/strided_slice_2/stack_1:output:0'gru_81/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
gru_81/strided_slice_2Ç
(gru_81/gru_cell_81/MatMul/ReadVariableOpReadVariableOp1gru_81_gru_cell_81_matmul_readvariableop_resource*
_output_shapes
:	Ø*
dtype02*
(gru_81/gru_cell_81/MatMul/ReadVariableOpÆ
gru_81/gru_cell_81/MatMulMatMulgru_81/strided_slice_2:output:00gru_81/gru_cell_81/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_81/gru_cell_81/MatMulÆ
)gru_81/gru_cell_81/BiasAdd/ReadVariableOpReadVariableOp2gru_81_gru_cell_81_biasadd_readvariableop_resource*
_output_shapes	
:Ø*
dtype02+
)gru_81/gru_cell_81/BiasAdd/ReadVariableOpÎ
gru_81/gru_cell_81/BiasAddBiasAdd#gru_81/gru_cell_81/MatMul:product:01gru_81/gru_cell_81/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_81/gru_cell_81/BiasAdd
"gru_81/gru_cell_81/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2$
"gru_81/gru_cell_81/split/split_dimû
gru_81/gru_cell_81/splitSplit+gru_81/gru_cell_81/split/split_dim:output:0#gru_81/gru_cell_81/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
gru_81/gru_cell_81/split³
!gru_81/gru_cell_81/ReadVariableOpReadVariableOp*gru_81_gru_cell_81_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02#
!gru_81/gru_cell_81/ReadVariableOp¡
&gru_81/gru_cell_81/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&gru_81/gru_cell_81/strided_slice/stack¥
(gru_81/gru_cell_81/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2*
(gru_81/gru_cell_81/strided_slice/stack_1¥
(gru_81/gru_cell_81/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(gru_81/gru_cell_81/strided_slice/stack_2ð
 gru_81/gru_cell_81/strided_sliceStridedSlice)gru_81/gru_cell_81/ReadVariableOp:value:0/gru_81/gru_cell_81/strided_slice/stack:output:01gru_81/gru_cell_81/strided_slice/stack_1:output:01gru_81/gru_cell_81/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2"
 gru_81/gru_cell_81/strided_slice¹
gru_81/gru_cell_81/MatMul_1MatMulgru_81/zeros:output:0)gru_81/gru_cell_81/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_81/gru_cell_81/MatMul_1
gru_81/gru_cell_81/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2
gru_81/gru_cell_81/Const
$gru_81/gru_cell_81/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2&
$gru_81/gru_cell_81/split_1/split_dim°
gru_81/gru_cell_81/split_1SplitV%gru_81/gru_cell_81/MatMul_1:product:0!gru_81/gru_cell_81/Const:output:0-gru_81/gru_cell_81/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2
gru_81/gru_cell_81/split_1´
gru_81/gru_cell_81/addAddV2!gru_81/gru_cell_81/split:output:0#gru_81/gru_cell_81/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_81/gru_cell_81/add
gru_81/gru_cell_81/SigmoidSigmoidgru_81/gru_cell_81/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_81/gru_cell_81/Sigmoid¸
gru_81/gru_cell_81/add_1AddV2!gru_81/gru_cell_81/split:output:1#gru_81/gru_cell_81/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_81/gru_cell_81/add_1
gru_81/gru_cell_81/Sigmoid_1Sigmoidgru_81/gru_cell_81/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_81/gru_cell_81/Sigmoid_1£
gru_81/gru_cell_81/mulMul gru_81/gru_cell_81/Sigmoid_1:y:0gru_81/zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_81/gru_cell_81/mul·
#gru_81/gru_cell_81/ReadVariableOp_1ReadVariableOp*gru_81_gru_cell_81_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02%
#gru_81/gru_cell_81/ReadVariableOp_1¥
(gru_81/gru_cell_81/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2*
(gru_81/gru_cell_81/strided_slice_1/stack©
*gru_81/gru_cell_81/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*gru_81/gru_cell_81/strided_slice_1/stack_1©
*gru_81/gru_cell_81/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*gru_81/gru_cell_81/strided_slice_1/stack_2ü
"gru_81/gru_cell_81/strided_slice_1StridedSlice+gru_81/gru_cell_81/ReadVariableOp_1:value:01gru_81/gru_cell_81/strided_slice_1/stack:output:03gru_81/gru_cell_81/strided_slice_1/stack_1:output:03gru_81/gru_cell_81/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2$
"gru_81/gru_cell_81/strided_slice_1À
gru_81/gru_cell_81/MatMul_2MatMulgru_81/gru_cell_81/mul:z:0+gru_81/gru_cell_81/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_81/gru_cell_81/MatMul_2º
gru_81/gru_cell_81/add_2AddV2!gru_81/gru_cell_81/split:output:2%gru_81/gru_cell_81/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_81/gru_cell_81/add_2
gru_81/gru_cell_81/ReluRelugru_81/gru_cell_81/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_81/gru_cell_81/Relu¥
gru_81/gru_cell_81/mul_1Mulgru_81/gru_cell_81/Sigmoid:y:0gru_81/zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_81/gru_cell_81/mul_1y
gru_81/gru_cell_81/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_81/gru_cell_81/sub/x­
gru_81/gru_cell_81/subSub!gru_81/gru_cell_81/sub/x:output:0gru_81/gru_cell_81/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_81/gru_cell_81/sub±
gru_81/gru_cell_81/mul_2Mulgru_81/gru_cell_81/sub:z:0%gru_81/gru_cell_81/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_81/gru_cell_81/mul_2¬
gru_81/gru_cell_81/add_3AddV2gru_81/gru_cell_81/mul_1:z:0gru_81/gru_cell_81/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_81/gru_cell_81/add_3
$gru_81/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÈ   2&
$gru_81/TensorArrayV2_1/element_shapeÔ
gru_81/TensorArrayV2_1TensorListReserve-gru_81/TensorArrayV2_1/element_shape:output:0gru_81/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_81/TensorArrayV2_1\
gru_81/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
gru_81/time
gru_81/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2!
gru_81/while/maximum_iterationsx
gru_81/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
gru_81/while/loop_counter
gru_81/whileWhile"gru_81/while/loop_counter:output:0(gru_81/while/maximum_iterations:output:0gru_81/time:output:0gru_81/TensorArrayV2_1:handle:0gru_81/zeros:output:0gru_81/strided_slice_1:output:0>gru_81/TensorArrayUnstack/TensorListFromTensor:output_handle:01gru_81_gru_cell_81_matmul_readvariableop_resource2gru_81_gru_cell_81_biasadd_readvariableop_resource*gru_81_gru_cell_81_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿÈ: : : : : *%
_read_only_resource_inputs
	*%
bodyR
gru_81_while_body_4086713*%
condR
gru_81_while_cond_4086712*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿÈ: : : : : *
parallel_iterations 2
gru_81/whileÃ
7gru_81/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÈ   29
7gru_81/TensorArrayV2Stack/TensorListStack/element_shape
)gru_81/TensorArrayV2Stack/TensorListStackTensorListStackgru_81/while:output:3@gru_81/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*
element_dtype02+
)gru_81/TensorArrayV2Stack/TensorListStack
gru_81/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
gru_81/strided_slice_3/stack
gru_81/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
gru_81/strided_slice_3/stack_1
gru_81/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
gru_81/strided_slice_3/stack_2Å
gru_81/strided_slice_3StridedSlice2gru_81/TensorArrayV2Stack/TensorListStack:tensor:0%gru_81/strided_slice_3/stack:output:0'gru_81/strided_slice_3/stack_1:output:0'gru_81/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*
shrink_axis_mask2
gru_81/strided_slice_3
gru_81/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_81/transpose_1/permÂ
gru_81/transpose_1	Transpose2gru_81/TensorArrayV2Stack/TensorListStack:tensor:0 gru_81/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_81/transpose_1t
gru_81/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_81/runtime¬
dense_162/MatMul/ReadVariableOpReadVariableOp(dense_162_matmul_readvariableop_resource*
_output_shapes
:	Èd*
dtype02!
dense_162/MatMul/ReadVariableOpª
dense_162/MatMulMatMulgru_81/strided_slice_3:output:0'dense_162/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dense_162/MatMulª
 dense_162/BiasAdd/ReadVariableOpReadVariableOp)dense_162_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02"
 dense_162/BiasAdd/ReadVariableOp©
dense_162/BiasAddBiasAdddense_162/MatMul:product:0(dense_162/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dense_162/BiasAddv
dense_162/ReluReludense_162/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dense_162/Relu«
dense_163/MatMul/ReadVariableOpReadVariableOp(dense_163_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02!
dense_163/MatMul/ReadVariableOp§
dense_163/MatMulMatMuldense_162/Relu:activations:0'dense_163/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_163/MatMulª
 dense_163/BiasAdd/ReadVariableOpReadVariableOp)dense_163_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_163/BiasAdd/ReadVariableOp©
dense_163/BiasAddBiasAdddense_163/MatMul:product:0(dense_163/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_163/BiasAdd¨
IdentityIdentitydense_163/BiasAdd:output:0!^dense_162/BiasAdd/ReadVariableOp ^dense_162/MatMul/ReadVariableOp!^dense_163/BiasAdd/ReadVariableOp ^dense_163/MatMul/ReadVariableOp*^gru_81/gru_cell_81/BiasAdd/ReadVariableOp)^gru_81/gru_cell_81/MatMul/ReadVariableOp"^gru_81/gru_cell_81/ReadVariableOp$^gru_81/gru_cell_81/ReadVariableOp_1^gru_81/while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2D
 dense_162/BiasAdd/ReadVariableOp dense_162/BiasAdd/ReadVariableOp2B
dense_162/MatMul/ReadVariableOpdense_162/MatMul/ReadVariableOp2D
 dense_163/BiasAdd/ReadVariableOp dense_163/BiasAdd/ReadVariableOp2B
dense_163/MatMul/ReadVariableOpdense_163/MatMul/ReadVariableOp2V
)gru_81/gru_cell_81/BiasAdd/ReadVariableOp)gru_81/gru_cell_81/BiasAdd/ReadVariableOp2T
(gru_81/gru_cell_81/MatMul/ReadVariableOp(gru_81/gru_cell_81/MatMul/ReadVariableOp2F
!gru_81/gru_cell_81/ReadVariableOp!gru_81/gru_cell_81/ReadVariableOp2J
#gru_81/gru_cell_81/ReadVariableOp_1#gru_81/gru_cell_81/ReadVariableOp_12
gru_81/whilegru_81/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
öA
Ý
 __inference__traced_save_4087816
file_prefix/
+savev2_dense_162_kernel_read_readvariableop-
)savev2_dense_162_bias_read_readvariableop/
+savev2_dense_163_kernel_read_readvariableop-
)savev2_dense_163_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop8
4savev2_gru_81_gru_cell_81_kernel_read_readvariableopB
>savev2_gru_81_gru_cell_81_recurrent_kernel_read_readvariableop6
2savev2_gru_81_gru_cell_81_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_162_kernel_m_read_readvariableop4
0savev2_adam_dense_162_bias_m_read_readvariableop6
2savev2_adam_dense_163_kernel_m_read_readvariableop4
0savev2_adam_dense_163_bias_m_read_readvariableop?
;savev2_adam_gru_81_gru_cell_81_kernel_m_read_readvariableopI
Esavev2_adam_gru_81_gru_cell_81_recurrent_kernel_m_read_readvariableop=
9savev2_adam_gru_81_gru_cell_81_bias_m_read_readvariableop6
2savev2_adam_dense_162_kernel_v_read_readvariableop4
0savev2_adam_dense_162_bias_v_read_readvariableop6
2savev2_adam_dense_163_kernel_v_read_readvariableop4
0savev2_adam_dense_163_bias_v_read_readvariableop?
;savev2_adam_gru_81_gru_cell_81_kernel_v_read_readvariableopI
Esavev2_adam_gru_81_gru_cell_81_recurrent_kernel_v_read_readvariableop=
9savev2_adam_gru_81_gru_cell_81_bias_v_read_readvariableop
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
ShardedFilenameÐ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*â
valueØBÕB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesÂ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*M
valueDBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesÖ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_162_kernel_read_readvariableop)savev2_dense_162_bias_read_readvariableop+savev2_dense_163_kernel_read_readvariableop)savev2_dense_163_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop4savev2_gru_81_gru_cell_81_kernel_read_readvariableop>savev2_gru_81_gru_cell_81_recurrent_kernel_read_readvariableop2savev2_gru_81_gru_cell_81_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_162_kernel_m_read_readvariableop0savev2_adam_dense_162_bias_m_read_readvariableop2savev2_adam_dense_163_kernel_m_read_readvariableop0savev2_adam_dense_163_bias_m_read_readvariableop;savev2_adam_gru_81_gru_cell_81_kernel_m_read_readvariableopEsavev2_adam_gru_81_gru_cell_81_recurrent_kernel_m_read_readvariableop9savev2_adam_gru_81_gru_cell_81_bias_m_read_readvariableop2savev2_adam_dense_162_kernel_v_read_readvariableop0savev2_adam_dense_162_bias_v_read_readvariableop2savev2_adam_dense_163_kernel_v_read_readvariableop0savev2_adam_dense_163_bias_v_read_readvariableop;savev2_adam_gru_81_gru_cell_81_kernel_v_read_readvariableopEsavev2_adam_gru_81_gru_cell_81_recurrent_kernel_v_read_readvariableop9savev2_adam_gru_81_gru_cell_81_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
Ï: :	Èd:d:d:: : : : : :	Ø:
ÈØ:Ø: : :	Èd:d:d::	Ø:
ÈØ:Ø:	Èd:d:d::	Ø:
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
:	Ø:&"
 
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
:	Ø:&"
 
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
:	Ø:&"
 
_output_shapes
:
ÈØ:!

_output_shapes	
:Ø:

_output_shapes
: "ÌL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*º
serving_default¦
I
gru_81_input9
serving_default_gru_81_input:0ÿÿÿÿÿÿÿÿÿ=
	dense_1630
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:¬½
-
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
W_default_save_signature"×*
_tf_keras_sequential¸*{"name": "sequential_81", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_81", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "gru_81_input"}}, {"class_name": "GRU", "config": {"name": "gru_81", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 1]}, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 200, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2, "reset_after": false}}, {"class_name": "Dense", "config": {"name": "dense_162", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_163", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 12, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 1]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 13}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 7, 1]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 7, 1]}, "float32", "gru_81_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_81", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "gru_81_input"}, "shared_object_id": 0}, {"class_name": "GRU", "config": {"name": "gru_81", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 1]}, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 200, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2, "reset_after": false}, "shared_object_id": 5}, {"class_name": "Dense", "config": {"name": "dense_162", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 8}, {"class_name": "Dense", "config": {"name": "dense_163", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 11}]}}, "training_config": {"loss": "mse", "metrics": null, "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
¡

cell

state_spec
trainable_variables
	variables
regularization_losses
	keras_api
X__call__
*Y&call_and_return_all_conditional_losses"ø
_tf_keras_rnn_layerÚ{"name": "gru_81", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 1]}, "stateful": false, "must_restore_from_config": false, "class_name": "GRU", "config": {"name": "gru_81", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 1]}, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 200, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2, "reset_after": false}, "shared_object_id": 5, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 1]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 13}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 7, 1]}}
Ô

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
Z__call__
*[&call_and_return_all_conditional_losses"¯
_tf_keras_layer{"name": "dense_162", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_162", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 8, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 200}}, "shared_object_id": 14}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 200]}}
Ö

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
\__call__
*]&call_and_return_all_conditional_losses"±
_tf_keras_layer{"name": "dense_163", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_163", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 11, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 100}}, "shared_object_id": 15}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 100]}}
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
Ê
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
	

!kernel
"recurrent_kernel
#bias
)trainable_variables
*regularization_losses
+	variables
,	keras_api
___call__
*`&call_and_return_all_conditional_losses"Å
_tf_keras_layer«{"name": "gru_cell_81", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "GRUCell", "config": {"name": "gru_cell_81", "trainable": true, "dtype": "float32", "units": 200, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2, "reset_after": false}, "shared_object_id": 4}
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
¹
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
#:!	Èd2dense_162/kernel
:d2dense_162/bias
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
": d2dense_163/kernel
:2dense_163/bias
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
,:*	Ø2gru_81/gru_cell_81/kernel
7:5
ÈØ2#gru_81/gru_cell_81/recurrent_kernel
&:$Ø2gru_81/gru_cell_81/bias
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
­
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
(:&	Èd2Adam/dense_162/kernel/m
!:d2Adam/dense_162/bias/m
':%d2Adam/dense_163/kernel/m
!:2Adam/dense_163/bias/m
1:/	Ø2 Adam/gru_81/gru_cell_81/kernel/m
<::
ÈØ2*Adam/gru_81/gru_cell_81/recurrent_kernel/m
+:)Ø2Adam/gru_81/gru_cell_81/bias/m
(:&	Èd2Adam/dense_162/kernel/v
!:d2Adam/dense_162/bias/v
':%d2Adam/dense_163/kernel/v
!:2Adam/dense_163/bias/v
1:/	Ø2 Adam/gru_81/gru_cell_81/kernel/v
<::
ÈØ2*Adam/gru_81/gru_cell_81/recurrent_kernel/v
+:)Ø2Adam/gru_81/gru_cell_81/bias/v
2
/__inference_sequential_81_layer_call_fn_4086056
/__inference_sequential_81_layer_call_fn_4086435
/__inference_sequential_81_layer_call_fn_4086454
/__inference_sequential_81_layer_call_fn_4086347À
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
ö2ó
J__inference_sequential_81_layer_call_and_return_conditional_losses_4086638
J__inference_sequential_81_layer_call_and_return_conditional_losses_4086822
J__inference_sequential_81_layer_call_and_return_conditional_losses_4086368
J__inference_sequential_81_layer_call_and_return_conditional_losses_4086389À
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
é2æ
"__inference__wrapped_model_4085224¿
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
annotationsª */¢,
*'
gru_81_inputÿÿÿÿÿÿÿÿÿ
2
(__inference_gru_81_layer_call_fn_4086833
(__inference_gru_81_layer_call_fn_4086844
(__inference_gru_81_layer_call_fn_4086855
(__inference_gru_81_layer_call_fn_4086866Õ
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
ï2ì
C__inference_gru_81_layer_call_and_return_conditional_losses_4087037
C__inference_gru_81_layer_call_and_return_conditional_losses_4087208
C__inference_gru_81_layer_call_and_return_conditional_losses_4087379
C__inference_gru_81_layer_call_and_return_conditional_losses_4087550Õ
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
Õ2Ò
+__inference_dense_162_layer_call_fn_4087559¢
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
F__inference_dense_162_layer_call_and_return_conditional_losses_4087570¢
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
+__inference_dense_163_layer_call_fn_4087579¢
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
F__inference_dense_163_layer_call_and_return_conditional_losses_4087589¢
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
ÑBÎ
%__inference_signature_wrapper_4086416gru_81_input"
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
¢2
-__inference_gru_cell_81_layer_call_fn_4087603
-__inference_gru_cell_81_layer_call_fn_4087617¾
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
Ø2Õ
H__inference_gru_cell_81_layer_call_and_return_conditional_losses_4087663
H__inference_gru_cell_81_layer_call_and_return_conditional_losses_4087709¾
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
 ¡
"__inference__wrapped_model_4085224{!#"9¢6
/¢,
*'
gru_81_inputÿÿÿÿÿÿÿÿÿ
ª "5ª2
0
	dense_163# 
	dense_163ÿÿÿÿÿÿÿÿÿ§
F__inference_dense_162_layer_call_and_return_conditional_losses_4087570]0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿÈ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿd
 
+__inference_dense_162_layer_call_fn_4087559P0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿÈ
ª "ÿÿÿÿÿÿÿÿÿd¦
F__inference_dense_163_layer_call_and_return_conditional_losses_4087589\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿd
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ~
+__inference_dense_163_layer_call_fn_4087579O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿd
ª "ÿÿÿÿÿÿÿÿÿÅ
C__inference_gru_81_layer_call_and_return_conditional_losses_4087037~!#"O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿÈ
 Å
C__inference_gru_81_layer_call_and_return_conditional_losses_4087208~!#"O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿÈ
 µ
C__inference_gru_81_layer_call_and_return_conditional_losses_4087379n!#"?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿÈ
 µ
C__inference_gru_81_layer_call_and_return_conditional_losses_4087550n!#"?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿÈ
 
(__inference_gru_81_layer_call_fn_4086833q!#"O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿÈ
(__inference_gru_81_layer_call_fn_4086844q!#"O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿÈ
(__inference_gru_81_layer_call_fn_4086855a!#"?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿÈ
(__inference_gru_81_layer_call_fn_4086866a!#"?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿÈ
H__inference_gru_cell_81_layer_call_and_return_conditional_losses_4087663º!#"]¢Z
S¢P
 
inputsÿÿÿÿÿÿÿÿÿ
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
 
H__inference_gru_cell_81_layer_call_and_return_conditional_losses_4087709º!#"]¢Z
S¢P
 
inputsÿÿÿÿÿÿÿÿÿ
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
 Þ
-__inference_gru_cell_81_layer_call_fn_4087603¬!#"]¢Z
S¢P
 
inputsÿÿÿÿÿÿÿÿÿ
(¢%
# 
states/0ÿÿÿÿÿÿÿÿÿÈ
p 
ª "F¢C

0ÿÿÿÿÿÿÿÿÿÈ
# 

1/0ÿÿÿÿÿÿÿÿÿÈÞ
-__inference_gru_cell_81_layer_call_fn_4087617¬!#"]¢Z
S¢P
 
inputsÿÿÿÿÿÿÿÿÿ
(¢%
# 
states/0ÿÿÿÿÿÿÿÿÿÈ
p
ª "F¢C

0ÿÿÿÿÿÿÿÿÿÈ
# 

1/0ÿÿÿÿÿÿÿÿÿÈÁ
J__inference_sequential_81_layer_call_and_return_conditional_losses_4086368s!#"A¢>
7¢4
*'
gru_81_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Á
J__inference_sequential_81_layer_call_and_return_conditional_losses_4086389s!#"A¢>
7¢4
*'
gru_81_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 »
J__inference_sequential_81_layer_call_and_return_conditional_losses_4086638m!#";¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 »
J__inference_sequential_81_layer_call_and_return_conditional_losses_4086822m!#";¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
/__inference_sequential_81_layer_call_fn_4086056f!#"A¢>
7¢4
*'
gru_81_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_81_layer_call_fn_4086347f!#"A¢>
7¢4
*'
gru_81_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_81_layer_call_fn_4086435`!#";¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_81_layer_call_fn_4086454`!#";¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿµ
%__inference_signature_wrapper_4086416!#"I¢F
¢ 
?ª<
:
gru_81_input*'
gru_81_inputÿÿÿÿÿÿÿÿÿ"5ª2
0
	dense_163# 
	dense_163ÿÿÿÿÿÿÿÿÿ