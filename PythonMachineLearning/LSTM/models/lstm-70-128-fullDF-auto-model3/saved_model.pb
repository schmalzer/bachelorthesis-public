Þ
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
"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718Þ§
}
dense_112/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Èd*!
shared_namedense_112/kernel
v
$dense_112/kernel/Read/ReadVariableOpReadVariableOpdense_112/kernel*
_output_shapes
:	Èd*
dtype0
t
dense_112/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*
shared_namedense_112/bias
m
"dense_112/bias/Read/ReadVariableOpReadVariableOpdense_112/bias*
_output_shapes
:d*
dtype0
|
dense_113/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*!
shared_namedense_113/kernel
u
$dense_113/kernel/Read/ReadVariableOpReadVariableOpdense_113/kernel*
_output_shapes

:d*
dtype0
t
dense_113/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_113/bias
m
"dense_113/bias/Read/ReadVariableOpReadVariableOpdense_113/bias*
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
lstm_56/lstm_cell_56/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *,
shared_namelstm_56/lstm_cell_56/kernel

/lstm_56/lstm_cell_56/kernel/Read/ReadVariableOpReadVariableOplstm_56/lstm_cell_56/kernel*
_output_shapes
:	 *
dtype0
¨
%lstm_56/lstm_cell_56/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
È *6
shared_name'%lstm_56/lstm_cell_56/recurrent_kernel
¡
9lstm_56/lstm_cell_56/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_56/lstm_cell_56/recurrent_kernel* 
_output_shapes
:
È *
dtype0

lstm_56/lstm_cell_56/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_namelstm_56/lstm_cell_56/bias

-lstm_56/lstm_cell_56/bias/Read/ReadVariableOpReadVariableOplstm_56/lstm_cell_56/bias*
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

Adam/dense_112/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Èd*(
shared_nameAdam/dense_112/kernel/m

+Adam/dense_112/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_112/kernel/m*
_output_shapes
:	Èd*
dtype0

Adam/dense_112/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*&
shared_nameAdam/dense_112/bias/m
{
)Adam/dense_112/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_112/bias/m*
_output_shapes
:d*
dtype0

Adam/dense_113/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*(
shared_nameAdam/dense_113/kernel/m

+Adam/dense_113/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_113/kernel/m*
_output_shapes

:d*
dtype0

Adam/dense_113/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_113/bias/m
{
)Adam/dense_113/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_113/bias/m*
_output_shapes
:*
dtype0
¡
"Adam/lstm_56/lstm_cell_56/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *3
shared_name$"Adam/lstm_56/lstm_cell_56/kernel/m

6Adam/lstm_56/lstm_cell_56/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_56/lstm_cell_56/kernel/m*
_output_shapes
:	 *
dtype0
¶
,Adam/lstm_56/lstm_cell_56/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
È *=
shared_name.,Adam/lstm_56/lstm_cell_56/recurrent_kernel/m
¯
@Adam/lstm_56/lstm_cell_56/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_56/lstm_cell_56/recurrent_kernel/m* 
_output_shapes
:
È *
dtype0

 Adam/lstm_56/lstm_cell_56/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" Adam/lstm_56/lstm_cell_56/bias/m

4Adam/lstm_56/lstm_cell_56/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_56/lstm_cell_56/bias/m*
_output_shapes	
: *
dtype0

Adam/dense_112/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Èd*(
shared_nameAdam/dense_112/kernel/v

+Adam/dense_112/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_112/kernel/v*
_output_shapes
:	Èd*
dtype0

Adam/dense_112/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*&
shared_nameAdam/dense_112/bias/v
{
)Adam/dense_112/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_112/bias/v*
_output_shapes
:d*
dtype0

Adam/dense_113/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*(
shared_nameAdam/dense_113/kernel/v

+Adam/dense_113/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_113/kernel/v*
_output_shapes

:d*
dtype0

Adam/dense_113/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_113/bias/v
{
)Adam/dense_113/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_113/bias/v*
_output_shapes
:*
dtype0
¡
"Adam/lstm_56/lstm_cell_56/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *3
shared_name$"Adam/lstm_56/lstm_cell_56/kernel/v

6Adam/lstm_56/lstm_cell_56/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_56/lstm_cell_56/kernel/v*
_output_shapes
:	 *
dtype0
¶
,Adam/lstm_56/lstm_cell_56/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
È *=
shared_name.,Adam/lstm_56/lstm_cell_56/recurrent_kernel/v
¯
@Adam/lstm_56/lstm_cell_56/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_56/lstm_cell_56/recurrent_kernel/v* 
_output_shapes
:
È *
dtype0

 Adam/lstm_56/lstm_cell_56/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" Adam/lstm_56/lstm_cell_56/bias/v

4Adam/lstm_56/lstm_cell_56/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_56/lstm_cell_56/bias/v*
_output_shapes	
: *
dtype0

NoOpNoOp
*
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Ö)
valueÌ)BÉ) BÂ)
æ
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
trainable_variables
$non_trainable_variables
regularization_losses
%layer_metrics

&layers
'layer_regularization_losses
(metrics
	variables
 

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
¹
trainable_variables

.states
/non_trainable_variables
regularization_losses
0layer_metrics

1layers
2layer_regularization_losses
3metrics
	variables
\Z
VARIABLE_VALUEdense_112/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_112/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
­
trainable_variables
4non_trainable_variables
regularization_losses
5layer_metrics

6layers
7layer_regularization_losses
8metrics
	variables
\Z
VARIABLE_VALUEdense_113/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_113/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
­
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
VARIABLE_VALUElstm_56/lstm_cell_56/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE%lstm_56/lstm_cell_56/recurrent_kernel0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUElstm_56/lstm_cell_56/bias0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
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
­
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
}
VARIABLE_VALUEAdam/dense_112/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_112/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_113/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_113/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/lstm_56/lstm_cell_56/kernel/mLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_56/lstm_cell_56/recurrent_kernel/mLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/lstm_56/lstm_cell_56/bias/mLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_112/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_112/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_113/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_113/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/lstm_56/lstm_cell_56/kernel/vLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_56/lstm_cell_56/recurrent_kernel/vLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/lstm_56/lstm_cell_56/bias/vLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_lstm_56_inputPlaceholder*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0* 
shape:ÿÿÿÿÿÿÿÿÿ
ê
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_56_inputlstm_56/lstm_cell_56/kernel%lstm_56/lstm_cell_56/recurrent_kernellstm_56/lstm_cell_56/biasdense_112/kerneldense_112/biasdense_113/kerneldense_113/bias*
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
%__inference_signature_wrapper_2627622
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_112/kernel/Read/ReadVariableOp"dense_112/bias/Read/ReadVariableOp$dense_113/kernel/Read/ReadVariableOp"dense_113/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp/lstm_56/lstm_cell_56/kernel/Read/ReadVariableOp9lstm_56/lstm_cell_56/recurrent_kernel/Read/ReadVariableOp-lstm_56/lstm_cell_56/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_112/kernel/m/Read/ReadVariableOp)Adam/dense_112/bias/m/Read/ReadVariableOp+Adam/dense_113/kernel/m/Read/ReadVariableOp)Adam/dense_113/bias/m/Read/ReadVariableOp6Adam/lstm_56/lstm_cell_56/kernel/m/Read/ReadVariableOp@Adam/lstm_56/lstm_cell_56/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_56/lstm_cell_56/bias/m/Read/ReadVariableOp+Adam/dense_112/kernel/v/Read/ReadVariableOp)Adam/dense_112/bias/v/Read/ReadVariableOp+Adam/dense_113/kernel/v/Read/ReadVariableOp)Adam/dense_113/bias/v/Read/ReadVariableOp6Adam/lstm_56/lstm_cell_56/kernel/v/Read/ReadVariableOp@Adam/lstm_56/lstm_cell_56/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_56/lstm_cell_56/bias/v/Read/ReadVariableOpConst*)
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
 __inference__traced_save_2628880
Ñ
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_112/kerneldense_112/biasdense_113/kerneldense_113/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_56/lstm_cell_56/kernel%lstm_56/lstm_cell_56/recurrent_kernellstm_56/lstm_cell_56/biastotalcountAdam/dense_112/kernel/mAdam/dense_112/bias/mAdam/dense_113/kernel/mAdam/dense_113/bias/m"Adam/lstm_56/lstm_cell_56/kernel/m,Adam/lstm_56/lstm_cell_56/recurrent_kernel/m Adam/lstm_56/lstm_cell_56/bias/mAdam/dense_112/kernel/vAdam/dense_112/bias/vAdam/dense_113/kernel/vAdam/dense_113/bias/v"Adam/lstm_56/lstm_cell_56/kernel/v,Adam/lstm_56/lstm_cell_56/recurrent_kernel/v Adam/lstm_56/lstm_cell_56/bias/v*(
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
#__inference__traced_restore_2628974ª
[

D__inference_lstm_56_layer_call_and_return_conditional_losses_2628592

inputs>
+lstm_cell_56_matmul_readvariableop_resource:	 A
-lstm_cell_56_matmul_1_readvariableop_resource:
È ;
,lstm_cell_56_biasadd_readvariableop_resource:	 
identity¢#lstm_cell_56/BiasAdd/ReadVariableOp¢"lstm_cell_56/MatMul/ReadVariableOp¢$lstm_cell_56/MatMul_1/ReadVariableOp¢whileD
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
strided_slice_2µ
"lstm_cell_56/MatMul/ReadVariableOpReadVariableOp+lstm_cell_56_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype02$
"lstm_cell_56/MatMul/ReadVariableOp­
lstm_cell_56/MatMulMatMulstrided_slice_2:output:0*lstm_cell_56/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_56/MatMul¼
$lstm_cell_56/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_56_matmul_1_readvariableop_resource* 
_output_shapes
:
È *
dtype02&
$lstm_cell_56/MatMul_1/ReadVariableOp©
lstm_cell_56/MatMul_1MatMulzeros:output:0,lstm_cell_56/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_56/MatMul_1 
lstm_cell_56/addAddV2lstm_cell_56/MatMul:product:0lstm_cell_56/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_56/add´
#lstm_cell_56/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_56_biasadd_readvariableop_resource*
_output_shapes	
: *
dtype02%
#lstm_cell_56/BiasAdd/ReadVariableOp­
lstm_cell_56/BiasAddBiasAddlstm_cell_56/add:z:0+lstm_cell_56/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_56/BiasAdd~
lstm_cell_56/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_56/split/split_dim÷
lstm_cell_56/splitSplit%lstm_cell_56/split/split_dim:output:0lstm_cell_56/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
lstm_cell_56/split
lstm_cell_56/SigmoidSigmoidlstm_cell_56/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_56/Sigmoid
lstm_cell_56/Sigmoid_1Sigmoidlstm_cell_56/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_56/Sigmoid_1
lstm_cell_56/mulMullstm_cell_56/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_56/mul~
lstm_cell_56/ReluRelulstm_cell_56/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_56/Relu
lstm_cell_56/mul_1Mullstm_cell_56/Sigmoid:y:0lstm_cell_56/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_56/mul_1
lstm_cell_56/add_1AddV2lstm_cell_56/mul:z:0lstm_cell_56/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_56/add_1
lstm_cell_56/Sigmoid_2Sigmoidlstm_cell_56/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_56/Sigmoid_2}
lstm_cell_56/Relu_1Relulstm_cell_56/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_56/Relu_1¡
lstm_cell_56/mul_2Mullstm_cell_56/Sigmoid_2:y:0!lstm_cell_56/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_56/mul_2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_56_matmul_readvariableop_resource-lstm_cell_56_matmul_1_readvariableop_resource,lstm_cell_56_biasadd_readvariableop_resource*
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
while_body_2628508*
condR
while_cond_2628507*M
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
IdentityIdentitystrided_slice_3:output:0$^lstm_cell_56/BiasAdd/ReadVariableOp#^lstm_cell_56/MatMul/ReadVariableOp%^lstm_cell_56/MatMul_1/ReadVariableOp^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_56/BiasAdd/ReadVariableOp#lstm_cell_56/BiasAdd/ReadVariableOp2H
"lstm_cell_56/MatMul/ReadVariableOp"lstm_cell_56/MatMul/ReadVariableOp2L
$lstm_cell_56/MatMul_1/ReadVariableOp$lstm_cell_56/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Þ
È
while_cond_2628205
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2628205___redundant_placeholder05
1while_while_cond_2628205___redundant_placeholder15
1while_while_cond_2628205___redundant_placeholder25
1while_while_cond_2628205___redundant_placeholder3
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
Ò	
÷
F__inference_dense_113_layer_call_and_return_conditional_losses_2628666

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
ë
§
%__inference_signature_wrapper_2627622
lstm_56_input
unknown:	 
	unknown_0:
È 
	unknown_1:	 
	unknown_2:	Èd
	unknown_3:d
	unknown_4:d
	unknown_5:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalllstm_56_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
"__inference__wrapped_model_26264362
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
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelstm_56_input
Å

I__inference_lstm_cell_56_layer_call_and_return_conditional_losses_2628739

inputs
states_0
states_11
matmul_readvariableop_resource:	 4
 matmul_1_readvariableop_resource:
È .
biasadd_readvariableop_resource:	 
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 *
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
A:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
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
C
Ó
while_body_2628357
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_56_matmul_readvariableop_resource_0:	 I
5while_lstm_cell_56_matmul_1_readvariableop_resource_0:
È C
4while_lstm_cell_56_biasadd_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_56_matmul_readvariableop_resource:	 G
3while_lstm_cell_56_matmul_1_readvariableop_resource:
È A
2while_lstm_cell_56_biasadd_readvariableop_resource:	 ¢)while/lstm_cell_56/BiasAdd/ReadVariableOp¢(while/lstm_cell_56/MatMul/ReadVariableOp¢*while/lstm_cell_56/MatMul_1/ReadVariableOpÃ
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
)while/TensorArrayV2Read/TensorListGetItemÉ
(while/lstm_cell_56/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_56_matmul_readvariableop_resource_0*
_output_shapes
:	 *
dtype02*
(while/lstm_cell_56/MatMul/ReadVariableOp×
while/lstm_cell_56/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_56/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_56/MatMulÐ
*while/lstm_cell_56/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_56_matmul_1_readvariableop_resource_0* 
_output_shapes
:
È *
dtype02,
*while/lstm_cell_56/MatMul_1/ReadVariableOpÀ
while/lstm_cell_56/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_56/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_56/MatMul_1¸
while/lstm_cell_56/addAddV2#while/lstm_cell_56/MatMul:product:0%while/lstm_cell_56/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_56/addÈ
)while/lstm_cell_56/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_56_biasadd_readvariableop_resource_0*
_output_shapes	
: *
dtype02+
)while/lstm_cell_56/BiasAdd/ReadVariableOpÅ
while/lstm_cell_56/BiasAddBiasAddwhile/lstm_cell_56/add:z:01while/lstm_cell_56/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_56/BiasAdd
"while/lstm_cell_56/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_56/split/split_dim
while/lstm_cell_56/splitSplit+while/lstm_cell_56/split/split_dim:output:0#while/lstm_cell_56/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
while/lstm_cell_56/split
while/lstm_cell_56/SigmoidSigmoid!while/lstm_cell_56/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_56/Sigmoid
while/lstm_cell_56/Sigmoid_1Sigmoid!while/lstm_cell_56/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_56/Sigmoid_1¡
while/lstm_cell_56/mulMul while/lstm_cell_56/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_56/mul
while/lstm_cell_56/ReluRelu!while/lstm_cell_56/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_56/Reluµ
while/lstm_cell_56/mul_1Mulwhile/lstm_cell_56/Sigmoid:y:0%while/lstm_cell_56/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_56/mul_1ª
while/lstm_cell_56/add_1AddV2while/lstm_cell_56/mul:z:0while/lstm_cell_56/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_56/add_1
while/lstm_cell_56/Sigmoid_2Sigmoid!while/lstm_cell_56/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_56/Sigmoid_2
while/lstm_cell_56/Relu_1Reluwhile/lstm_cell_56/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_56/Relu_1¹
while/lstm_cell_56/mul_2Mul while/lstm_cell_56/Sigmoid_2:y:0'while/lstm_cell_56/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_56/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_56/mul_2:z:0*
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
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_56/BiasAdd/ReadVariableOp)^while/lstm_cell_56/MatMul/ReadVariableOp+^while/lstm_cell_56/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityõ
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_56/BiasAdd/ReadVariableOp)^while/lstm_cell_56/MatMul/ReadVariableOp+^while/lstm_cell_56/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ä
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_56/BiasAdd/ReadVariableOp)^while/lstm_cell_56/MatMul/ReadVariableOp+^while/lstm_cell_56/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_56/BiasAdd/ReadVariableOp)^while/lstm_cell_56/MatMul/ReadVariableOp+^while/lstm_cell_56/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_56/mul_2:z:0*^while/lstm_cell_56/BiasAdd/ReadVariableOp)^while/lstm_cell_56/MatMul/ReadVariableOp+^while/lstm_cell_56/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_56/add_1:z:0*^while/lstm_cell_56/BiasAdd/ReadVariableOp)^while/lstm_cell_56/MatMul/ReadVariableOp+^while/lstm_cell_56/MatMul_1/ReadVariableOp*
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
2while_lstm_cell_56_biasadd_readvariableop_resource4while_lstm_cell_56_biasadd_readvariableop_resource_0"l
3while_lstm_cell_56_matmul_1_readvariableop_resource5while_lstm_cell_56_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_56_matmul_readvariableop_resource3while_lstm_cell_56_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : 2V
)while/lstm_cell_56/BiasAdd/ReadVariableOp)while/lstm_cell_56/BiasAdd/ReadVariableOp2T
(while/lstm_cell_56/MatMul/ReadVariableOp(while/lstm_cell_56/MatMul/ReadVariableOp2X
*while/lstm_cell_56/MatMul_1/ReadVariableOp*while/lstm_cell_56/MatMul_1/ReadVariableOp: 
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
ô

(sequential_56_lstm_56_while_cond_2626338H
Dsequential_56_lstm_56_while_sequential_56_lstm_56_while_loop_counterN
Jsequential_56_lstm_56_while_sequential_56_lstm_56_while_maximum_iterations+
'sequential_56_lstm_56_while_placeholder-
)sequential_56_lstm_56_while_placeholder_1-
)sequential_56_lstm_56_while_placeholder_2-
)sequential_56_lstm_56_while_placeholder_3J
Fsequential_56_lstm_56_while_less_sequential_56_lstm_56_strided_slice_1a
]sequential_56_lstm_56_while_sequential_56_lstm_56_while_cond_2626338___redundant_placeholder0a
]sequential_56_lstm_56_while_sequential_56_lstm_56_while_cond_2626338___redundant_placeholder1a
]sequential_56_lstm_56_while_sequential_56_lstm_56_while_cond_2626338___redundant_placeholder2a
]sequential_56_lstm_56_while_sequential_56_lstm_56_while_cond_2626338___redundant_placeholder3(
$sequential_56_lstm_56_while_identity
Þ
 sequential_56/lstm_56/while/LessLess'sequential_56_lstm_56_while_placeholderFsequential_56_lstm_56_while_less_sequential_56_lstm_56_strided_slice_1*
T0*
_output_shapes
: 2"
 sequential_56/lstm_56/while/Less
$sequential_56/lstm_56/while/IdentityIdentity$sequential_56/lstm_56/while/Less:z:0*
T0
*
_output_shapes
: 2&
$sequential_56/lstm_56/while/Identity"U
$sequential_56_lstm_56_while_identity-sequential_56/lstm_56/while/Identity:output:0*(
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

lstm_56_while_body_2627689,
(lstm_56_while_lstm_56_while_loop_counter2
.lstm_56_while_lstm_56_while_maximum_iterations
lstm_56_while_placeholder
lstm_56_while_placeholder_1
lstm_56_while_placeholder_2
lstm_56_while_placeholder_3+
'lstm_56_while_lstm_56_strided_slice_1_0g
clstm_56_while_tensorarrayv2read_tensorlistgetitem_lstm_56_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_56_while_lstm_cell_56_matmul_readvariableop_resource_0:	 Q
=lstm_56_while_lstm_cell_56_matmul_1_readvariableop_resource_0:
È K
<lstm_56_while_lstm_cell_56_biasadd_readvariableop_resource_0:	 
lstm_56_while_identity
lstm_56_while_identity_1
lstm_56_while_identity_2
lstm_56_while_identity_3
lstm_56_while_identity_4
lstm_56_while_identity_5)
%lstm_56_while_lstm_56_strided_slice_1e
alstm_56_while_tensorarrayv2read_tensorlistgetitem_lstm_56_tensorarrayunstack_tensorlistfromtensorL
9lstm_56_while_lstm_cell_56_matmul_readvariableop_resource:	 O
;lstm_56_while_lstm_cell_56_matmul_1_readvariableop_resource:
È I
:lstm_56_while_lstm_cell_56_biasadd_readvariableop_resource:	 ¢1lstm_56/while/lstm_cell_56/BiasAdd/ReadVariableOp¢0lstm_56/while/lstm_cell_56/MatMul/ReadVariableOp¢2lstm_56/while/lstm_cell_56/MatMul_1/ReadVariableOpÓ
?lstm_56/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2A
?lstm_56/while/TensorArrayV2Read/TensorListGetItem/element_shape
1lstm_56/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_56_while_tensorarrayv2read_tensorlistgetitem_lstm_56_tensorarrayunstack_tensorlistfromtensor_0lstm_56_while_placeholderHlstm_56/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype023
1lstm_56/while/TensorArrayV2Read/TensorListGetItemá
0lstm_56/while/lstm_cell_56/MatMul/ReadVariableOpReadVariableOp;lstm_56_while_lstm_cell_56_matmul_readvariableop_resource_0*
_output_shapes
:	 *
dtype022
0lstm_56/while/lstm_cell_56/MatMul/ReadVariableOp÷
!lstm_56/while/lstm_cell_56/MatMulMatMul8lstm_56/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_56/while/lstm_cell_56/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!lstm_56/while/lstm_cell_56/MatMulè
2lstm_56/while/lstm_cell_56/MatMul_1/ReadVariableOpReadVariableOp=lstm_56_while_lstm_cell_56_matmul_1_readvariableop_resource_0* 
_output_shapes
:
È *
dtype024
2lstm_56/while/lstm_cell_56/MatMul_1/ReadVariableOpà
#lstm_56/while/lstm_cell_56/MatMul_1MatMullstm_56_while_placeholder_2:lstm_56/while/lstm_cell_56/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_56/while/lstm_cell_56/MatMul_1Ø
lstm_56/while/lstm_cell_56/addAddV2+lstm_56/while/lstm_cell_56/MatMul:product:0-lstm_56/while/lstm_cell_56/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_56/while/lstm_cell_56/addà
1lstm_56/while/lstm_cell_56/BiasAdd/ReadVariableOpReadVariableOp<lstm_56_while_lstm_cell_56_biasadd_readvariableop_resource_0*
_output_shapes	
: *
dtype023
1lstm_56/while/lstm_cell_56/BiasAdd/ReadVariableOpå
"lstm_56/while/lstm_cell_56/BiasAddBiasAdd"lstm_56/while/lstm_cell_56/add:z:09lstm_56/while/lstm_cell_56/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_56/while/lstm_cell_56/BiasAdd
*lstm_56/while/lstm_cell_56/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_56/while/lstm_cell_56/split/split_dim¯
 lstm_56/while/lstm_cell_56/splitSplit3lstm_56/while/lstm_cell_56/split/split_dim:output:0+lstm_56/while/lstm_cell_56/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2"
 lstm_56/while/lstm_cell_56/split±
"lstm_56/while/lstm_cell_56/SigmoidSigmoid)lstm_56/while/lstm_cell_56/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2$
"lstm_56/while/lstm_cell_56/Sigmoidµ
$lstm_56/while/lstm_cell_56/Sigmoid_1Sigmoid)lstm_56/while/lstm_cell_56/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2&
$lstm_56/while/lstm_cell_56/Sigmoid_1Á
lstm_56/while/lstm_cell_56/mulMul(lstm_56/while/lstm_cell_56/Sigmoid_1:y:0lstm_56_while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2 
lstm_56/while/lstm_cell_56/mul¨
lstm_56/while/lstm_cell_56/ReluRelu)lstm_56/while/lstm_cell_56/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2!
lstm_56/while/lstm_cell_56/ReluÕ
 lstm_56/while/lstm_cell_56/mul_1Mul&lstm_56/while/lstm_cell_56/Sigmoid:y:0-lstm_56/while/lstm_cell_56/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2"
 lstm_56/while/lstm_cell_56/mul_1Ê
 lstm_56/while/lstm_cell_56/add_1AddV2"lstm_56/while/lstm_cell_56/mul:z:0$lstm_56/while/lstm_cell_56/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2"
 lstm_56/while/lstm_cell_56/add_1µ
$lstm_56/while/lstm_cell_56/Sigmoid_2Sigmoid)lstm_56/while/lstm_cell_56/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2&
$lstm_56/while/lstm_cell_56/Sigmoid_2§
!lstm_56/while/lstm_cell_56/Relu_1Relu$lstm_56/while/lstm_cell_56/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2#
!lstm_56/while/lstm_cell_56/Relu_1Ù
 lstm_56/while/lstm_cell_56/mul_2Mul(lstm_56/while/lstm_cell_56/Sigmoid_2:y:0/lstm_56/while/lstm_cell_56/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2"
 lstm_56/while/lstm_cell_56/mul_2
2lstm_56/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_56_while_placeholder_1lstm_56_while_placeholder$lstm_56/while/lstm_cell_56/mul_2:z:0*
_output_shapes
: *
element_dtype024
2lstm_56/while/TensorArrayV2Write/TensorListSetIteml
lstm_56/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_56/while/add/y
lstm_56/while/addAddV2lstm_56_while_placeholderlstm_56/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_56/while/addp
lstm_56/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_56/while/add_1/y
lstm_56/while/add_1AddV2(lstm_56_while_lstm_56_while_loop_counterlstm_56/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_56/while/add_1
lstm_56/while/IdentityIdentitylstm_56/while/add_1:z:02^lstm_56/while/lstm_cell_56/BiasAdd/ReadVariableOp1^lstm_56/while/lstm_cell_56/MatMul/ReadVariableOp3^lstm_56/while/lstm_cell_56/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_56/while/Identity­
lstm_56/while/Identity_1Identity.lstm_56_while_lstm_56_while_maximum_iterations2^lstm_56/while/lstm_cell_56/BiasAdd/ReadVariableOp1^lstm_56/while/lstm_cell_56/MatMul/ReadVariableOp3^lstm_56/while/lstm_cell_56/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_56/while/Identity_1
lstm_56/while/Identity_2Identitylstm_56/while/add:z:02^lstm_56/while/lstm_cell_56/BiasAdd/ReadVariableOp1^lstm_56/while/lstm_cell_56/MatMul/ReadVariableOp3^lstm_56/while/lstm_cell_56/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_56/while/Identity_2Á
lstm_56/while/Identity_3IdentityBlstm_56/while/TensorArrayV2Write/TensorListSetItem:output_handle:02^lstm_56/while/lstm_cell_56/BiasAdd/ReadVariableOp1^lstm_56/while/lstm_cell_56/MatMul/ReadVariableOp3^lstm_56/while/lstm_cell_56/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_56/while/Identity_3µ
lstm_56/while/Identity_4Identity$lstm_56/while/lstm_cell_56/mul_2:z:02^lstm_56/while/lstm_cell_56/BiasAdd/ReadVariableOp1^lstm_56/while/lstm_cell_56/MatMul/ReadVariableOp3^lstm_56/while/lstm_cell_56/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_56/while/Identity_4µ
lstm_56/while/Identity_5Identity$lstm_56/while/lstm_cell_56/add_1:z:02^lstm_56/while/lstm_cell_56/BiasAdd/ReadVariableOp1^lstm_56/while/lstm_cell_56/MatMul/ReadVariableOp3^lstm_56/while/lstm_cell_56/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_56/while/Identity_5"9
lstm_56_while_identitylstm_56/while/Identity:output:0"=
lstm_56_while_identity_1!lstm_56/while/Identity_1:output:0"=
lstm_56_while_identity_2!lstm_56/while/Identity_2:output:0"=
lstm_56_while_identity_3!lstm_56/while/Identity_3:output:0"=
lstm_56_while_identity_4!lstm_56/while/Identity_4:output:0"=
lstm_56_while_identity_5!lstm_56/while/Identity_5:output:0"P
%lstm_56_while_lstm_56_strided_slice_1'lstm_56_while_lstm_56_strided_slice_1_0"z
:lstm_56_while_lstm_cell_56_biasadd_readvariableop_resource<lstm_56_while_lstm_cell_56_biasadd_readvariableop_resource_0"|
;lstm_56_while_lstm_cell_56_matmul_1_readvariableop_resource=lstm_56_while_lstm_cell_56_matmul_1_readvariableop_resource_0"x
9lstm_56_while_lstm_cell_56_matmul_readvariableop_resource;lstm_56_while_lstm_cell_56_matmul_readvariableop_resource_0"È
alstm_56_while_tensorarrayv2read_tensorlistgetitem_lstm_56_tensorarrayunstack_tensorlistfromtensorclstm_56_while_tensorarrayv2read_tensorlistgetitem_lstm_56_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : 2f
1lstm_56/while/lstm_cell_56/BiasAdd/ReadVariableOp1lstm_56/while/lstm_cell_56/BiasAdd/ReadVariableOp2d
0lstm_56/while/lstm_cell_56/MatMul/ReadVariableOp0lstm_56/while/lstm_cell_56/MatMul/ReadVariableOp2h
2lstm_56/while/lstm_cell_56/MatMul_1/ReadVariableOp2lstm_56/while/lstm_cell_56/MatMul_1/ReadVariableOp: 
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
­&
ì
while_body_2626525
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_56_2626549_0:	 0
while_lstm_cell_56_2626551_0:
È +
while_lstm_cell_56_2626553_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_56_2626549:	 .
while_lstm_cell_56_2626551:
È )
while_lstm_cell_56_2626553:	 ¢*while/lstm_cell_56/StatefulPartitionedCallÃ
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
)while/TensorArrayV2Read/TensorListGetItemè
*while/lstm_cell_56/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_56_2626549_0while_lstm_cell_56_2626551_0while_lstm_cell_56_2626553_0*
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
I__inference_lstm_cell_56_layer_call_and_return_conditional_losses_26265112,
*while/lstm_cell_56/StatefulPartitionedCall÷
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_56/StatefulPartitionedCall:output:0*
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
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_56/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_56/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_56/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2º
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_56/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3Å
while/Identity_4Identity3while/lstm_cell_56/StatefulPartitionedCall:output:1+^while/lstm_cell_56/StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_4Å
while/Identity_5Identity3while/lstm_cell_56/StatefulPartitionedCall:output:2+^while/lstm_cell_56/StatefulPartitionedCall*
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
while_lstm_cell_56_2626549while_lstm_cell_56_2626549_0":
while_lstm_cell_56_2626551while_lstm_cell_56_2626551_0":
while_lstm_cell_56_2626553while_lstm_cell_56_2626553_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : 2X
*while/lstm_cell_56/StatefulPartitionedCall*while/lstm_cell_56/StatefulPartitionedCall: 
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
B
ï
 __inference__traced_save_2628880
file_prefix/
+savev2_dense_112_kernel_read_readvariableop-
)savev2_dense_112_bias_read_readvariableop/
+savev2_dense_113_kernel_read_readvariableop-
)savev2_dense_113_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop:
6savev2_lstm_56_lstm_cell_56_kernel_read_readvariableopD
@savev2_lstm_56_lstm_cell_56_recurrent_kernel_read_readvariableop8
4savev2_lstm_56_lstm_cell_56_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_112_kernel_m_read_readvariableop4
0savev2_adam_dense_112_bias_m_read_readvariableop6
2savev2_adam_dense_113_kernel_m_read_readvariableop4
0savev2_adam_dense_113_bias_m_read_readvariableopA
=savev2_adam_lstm_56_lstm_cell_56_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_56_lstm_cell_56_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_56_lstm_cell_56_bias_m_read_readvariableop6
2savev2_adam_dense_112_kernel_v_read_readvariableop4
0savev2_adam_dense_112_bias_v_read_readvariableop6
2savev2_adam_dense_113_kernel_v_read_readvariableop4
0savev2_adam_dense_113_bias_v_read_readvariableopA
=savev2_adam_lstm_56_lstm_cell_56_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_56_lstm_cell_56_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_56_lstm_cell_56_bias_v_read_readvariableop
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
SaveV2/shape_and_slicesè
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_112_kernel_read_readvariableop)savev2_dense_112_bias_read_readvariableop+savev2_dense_113_kernel_read_readvariableop)savev2_dense_113_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop6savev2_lstm_56_lstm_cell_56_kernel_read_readvariableop@savev2_lstm_56_lstm_cell_56_recurrent_kernel_read_readvariableop4savev2_lstm_56_lstm_cell_56_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_112_kernel_m_read_readvariableop0savev2_adam_dense_112_bias_m_read_readvariableop2savev2_adam_dense_113_kernel_m_read_readvariableop0savev2_adam_dense_113_bias_m_read_readvariableop=savev2_adam_lstm_56_lstm_cell_56_kernel_m_read_readvariableopGsavev2_adam_lstm_56_lstm_cell_56_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_56_lstm_cell_56_bias_m_read_readvariableop2savev2_adam_dense_112_kernel_v_read_readvariableop0savev2_adam_dense_112_bias_v_read_readvariableop2savev2_adam_dense_113_kernel_v_read_readvariableop0savev2_adam_dense_113_bias_v_read_readvariableop=savev2_adam_lstm_56_lstm_cell_56_kernel_v_read_readvariableopGsavev2_adam_lstm_56_lstm_cell_56_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_56_lstm_cell_56_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
Ï: :	Èd:d:d:: : : : : :	 :
È : : : :	Èd:d:d::	 :
È : :	Èd:d:d::	 :
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
:	 :&"
 
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
:	 :&"
 
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
:	 :&"
 
_output_shapes
:
È :!

_output_shapes	
: :

_output_shapes
: 
²

ø
F__inference_dense_112_layer_call_and_return_conditional_losses_2628647

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
[

D__inference_lstm_56_layer_call_and_return_conditional_losses_2627466

inputs>
+lstm_cell_56_matmul_readvariableop_resource:	 A
-lstm_cell_56_matmul_1_readvariableop_resource:
È ;
,lstm_cell_56_biasadd_readvariableop_resource:	 
identity¢#lstm_cell_56/BiasAdd/ReadVariableOp¢"lstm_cell_56/MatMul/ReadVariableOp¢$lstm_cell_56/MatMul_1/ReadVariableOp¢whileD
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
strided_slice_2µ
"lstm_cell_56/MatMul/ReadVariableOpReadVariableOp+lstm_cell_56_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype02$
"lstm_cell_56/MatMul/ReadVariableOp­
lstm_cell_56/MatMulMatMulstrided_slice_2:output:0*lstm_cell_56/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_56/MatMul¼
$lstm_cell_56/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_56_matmul_1_readvariableop_resource* 
_output_shapes
:
È *
dtype02&
$lstm_cell_56/MatMul_1/ReadVariableOp©
lstm_cell_56/MatMul_1MatMulzeros:output:0,lstm_cell_56/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_56/MatMul_1 
lstm_cell_56/addAddV2lstm_cell_56/MatMul:product:0lstm_cell_56/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_56/add´
#lstm_cell_56/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_56_biasadd_readvariableop_resource*
_output_shapes	
: *
dtype02%
#lstm_cell_56/BiasAdd/ReadVariableOp­
lstm_cell_56/BiasAddBiasAddlstm_cell_56/add:z:0+lstm_cell_56/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_56/BiasAdd~
lstm_cell_56/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_56/split/split_dim÷
lstm_cell_56/splitSplit%lstm_cell_56/split/split_dim:output:0lstm_cell_56/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
lstm_cell_56/split
lstm_cell_56/SigmoidSigmoidlstm_cell_56/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_56/Sigmoid
lstm_cell_56/Sigmoid_1Sigmoidlstm_cell_56/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_56/Sigmoid_1
lstm_cell_56/mulMullstm_cell_56/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_56/mul~
lstm_cell_56/ReluRelulstm_cell_56/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_56/Relu
lstm_cell_56/mul_1Mullstm_cell_56/Sigmoid:y:0lstm_cell_56/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_56/mul_1
lstm_cell_56/add_1AddV2lstm_cell_56/mul:z:0lstm_cell_56/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_56/add_1
lstm_cell_56/Sigmoid_2Sigmoidlstm_cell_56/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_56/Sigmoid_2}
lstm_cell_56/Relu_1Relulstm_cell_56/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_56/Relu_1¡
lstm_cell_56/mul_2Mullstm_cell_56/Sigmoid_2:y:0!lstm_cell_56/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_56/mul_2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_56_matmul_readvariableop_resource-lstm_cell_56_matmul_1_readvariableop_resource,lstm_cell_56_biasadd_readvariableop_resource*
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
while_body_2627382*
condR
while_cond_2627381*M
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
IdentityIdentitystrided_slice_3:output:0$^lstm_cell_56/BiasAdd/ReadVariableOp#^lstm_cell_56/MatMul/ReadVariableOp%^lstm_cell_56/MatMul_1/ReadVariableOp^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_56/BiasAdd/ReadVariableOp#lstm_cell_56/BiasAdd/ReadVariableOp2H
"lstm_cell_56/MatMul/ReadVariableOp"lstm_cell_56/MatMul/ReadVariableOp2L
$lstm_cell_56/MatMul_1/ReadVariableOp$lstm_cell_56/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
C
Ó
while_body_2628055
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_56_matmul_readvariableop_resource_0:	 I
5while_lstm_cell_56_matmul_1_readvariableop_resource_0:
È C
4while_lstm_cell_56_biasadd_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_56_matmul_readvariableop_resource:	 G
3while_lstm_cell_56_matmul_1_readvariableop_resource:
È A
2while_lstm_cell_56_biasadd_readvariableop_resource:	 ¢)while/lstm_cell_56/BiasAdd/ReadVariableOp¢(while/lstm_cell_56/MatMul/ReadVariableOp¢*while/lstm_cell_56/MatMul_1/ReadVariableOpÃ
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
)while/TensorArrayV2Read/TensorListGetItemÉ
(while/lstm_cell_56/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_56_matmul_readvariableop_resource_0*
_output_shapes
:	 *
dtype02*
(while/lstm_cell_56/MatMul/ReadVariableOp×
while/lstm_cell_56/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_56/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_56/MatMulÐ
*while/lstm_cell_56/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_56_matmul_1_readvariableop_resource_0* 
_output_shapes
:
È *
dtype02,
*while/lstm_cell_56/MatMul_1/ReadVariableOpÀ
while/lstm_cell_56/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_56/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_56/MatMul_1¸
while/lstm_cell_56/addAddV2#while/lstm_cell_56/MatMul:product:0%while/lstm_cell_56/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_56/addÈ
)while/lstm_cell_56/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_56_biasadd_readvariableop_resource_0*
_output_shapes	
: *
dtype02+
)while/lstm_cell_56/BiasAdd/ReadVariableOpÅ
while/lstm_cell_56/BiasAddBiasAddwhile/lstm_cell_56/add:z:01while/lstm_cell_56/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_56/BiasAdd
"while/lstm_cell_56/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_56/split/split_dim
while/lstm_cell_56/splitSplit+while/lstm_cell_56/split/split_dim:output:0#while/lstm_cell_56/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
while/lstm_cell_56/split
while/lstm_cell_56/SigmoidSigmoid!while/lstm_cell_56/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_56/Sigmoid
while/lstm_cell_56/Sigmoid_1Sigmoid!while/lstm_cell_56/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_56/Sigmoid_1¡
while/lstm_cell_56/mulMul while/lstm_cell_56/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_56/mul
while/lstm_cell_56/ReluRelu!while/lstm_cell_56/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_56/Reluµ
while/lstm_cell_56/mul_1Mulwhile/lstm_cell_56/Sigmoid:y:0%while/lstm_cell_56/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_56/mul_1ª
while/lstm_cell_56/add_1AddV2while/lstm_cell_56/mul:z:0while/lstm_cell_56/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_56/add_1
while/lstm_cell_56/Sigmoid_2Sigmoid!while/lstm_cell_56/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_56/Sigmoid_2
while/lstm_cell_56/Relu_1Reluwhile/lstm_cell_56/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_56/Relu_1¹
while/lstm_cell_56/mul_2Mul while/lstm_cell_56/Sigmoid_2:y:0'while/lstm_cell_56/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_56/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_56/mul_2:z:0*
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
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_56/BiasAdd/ReadVariableOp)^while/lstm_cell_56/MatMul/ReadVariableOp+^while/lstm_cell_56/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityõ
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_56/BiasAdd/ReadVariableOp)^while/lstm_cell_56/MatMul/ReadVariableOp+^while/lstm_cell_56/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ä
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_56/BiasAdd/ReadVariableOp)^while/lstm_cell_56/MatMul/ReadVariableOp+^while/lstm_cell_56/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_56/BiasAdd/ReadVariableOp)^while/lstm_cell_56/MatMul/ReadVariableOp+^while/lstm_cell_56/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_56/mul_2:z:0*^while/lstm_cell_56/BiasAdd/ReadVariableOp)^while/lstm_cell_56/MatMul/ReadVariableOp+^while/lstm_cell_56/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_56/add_1:z:0*^while/lstm_cell_56/BiasAdd/ReadVariableOp)^while/lstm_cell_56/MatMul/ReadVariableOp+^while/lstm_cell_56/MatMul_1/ReadVariableOp*
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
2while_lstm_cell_56_biasadd_readvariableop_resource4while_lstm_cell_56_biasadd_readvariableop_resource_0"l
3while_lstm_cell_56_matmul_1_readvariableop_resource5while_lstm_cell_56_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_56_matmul_readvariableop_resource3while_lstm_cell_56_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : 2V
)while/lstm_cell_56/BiasAdd/ReadVariableOp)while/lstm_cell_56/BiasAdd/ReadVariableOp2T
(while/lstm_cell_56/MatMul/ReadVariableOp(while/lstm_cell_56/MatMul/ReadVariableOp2X
*while/lstm_cell_56/MatMul_1/ReadVariableOp*while/lstm_cell_56/MatMul_1/ReadVariableOp: 
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
O
Ó

lstm_56_while_body_2627853,
(lstm_56_while_lstm_56_while_loop_counter2
.lstm_56_while_lstm_56_while_maximum_iterations
lstm_56_while_placeholder
lstm_56_while_placeholder_1
lstm_56_while_placeholder_2
lstm_56_while_placeholder_3+
'lstm_56_while_lstm_56_strided_slice_1_0g
clstm_56_while_tensorarrayv2read_tensorlistgetitem_lstm_56_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_56_while_lstm_cell_56_matmul_readvariableop_resource_0:	 Q
=lstm_56_while_lstm_cell_56_matmul_1_readvariableop_resource_0:
È K
<lstm_56_while_lstm_cell_56_biasadd_readvariableop_resource_0:	 
lstm_56_while_identity
lstm_56_while_identity_1
lstm_56_while_identity_2
lstm_56_while_identity_3
lstm_56_while_identity_4
lstm_56_while_identity_5)
%lstm_56_while_lstm_56_strided_slice_1e
alstm_56_while_tensorarrayv2read_tensorlistgetitem_lstm_56_tensorarrayunstack_tensorlistfromtensorL
9lstm_56_while_lstm_cell_56_matmul_readvariableop_resource:	 O
;lstm_56_while_lstm_cell_56_matmul_1_readvariableop_resource:
È I
:lstm_56_while_lstm_cell_56_biasadd_readvariableop_resource:	 ¢1lstm_56/while/lstm_cell_56/BiasAdd/ReadVariableOp¢0lstm_56/while/lstm_cell_56/MatMul/ReadVariableOp¢2lstm_56/while/lstm_cell_56/MatMul_1/ReadVariableOpÓ
?lstm_56/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2A
?lstm_56/while/TensorArrayV2Read/TensorListGetItem/element_shape
1lstm_56/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_56_while_tensorarrayv2read_tensorlistgetitem_lstm_56_tensorarrayunstack_tensorlistfromtensor_0lstm_56_while_placeholderHlstm_56/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype023
1lstm_56/while/TensorArrayV2Read/TensorListGetItemá
0lstm_56/while/lstm_cell_56/MatMul/ReadVariableOpReadVariableOp;lstm_56_while_lstm_cell_56_matmul_readvariableop_resource_0*
_output_shapes
:	 *
dtype022
0lstm_56/while/lstm_cell_56/MatMul/ReadVariableOp÷
!lstm_56/while/lstm_cell_56/MatMulMatMul8lstm_56/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_56/while/lstm_cell_56/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!lstm_56/while/lstm_cell_56/MatMulè
2lstm_56/while/lstm_cell_56/MatMul_1/ReadVariableOpReadVariableOp=lstm_56_while_lstm_cell_56_matmul_1_readvariableop_resource_0* 
_output_shapes
:
È *
dtype024
2lstm_56/while/lstm_cell_56/MatMul_1/ReadVariableOpà
#lstm_56/while/lstm_cell_56/MatMul_1MatMullstm_56_while_placeholder_2:lstm_56/while/lstm_cell_56/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_56/while/lstm_cell_56/MatMul_1Ø
lstm_56/while/lstm_cell_56/addAddV2+lstm_56/while/lstm_cell_56/MatMul:product:0-lstm_56/while/lstm_cell_56/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_56/while/lstm_cell_56/addà
1lstm_56/while/lstm_cell_56/BiasAdd/ReadVariableOpReadVariableOp<lstm_56_while_lstm_cell_56_biasadd_readvariableop_resource_0*
_output_shapes	
: *
dtype023
1lstm_56/while/lstm_cell_56/BiasAdd/ReadVariableOpå
"lstm_56/while/lstm_cell_56/BiasAddBiasAdd"lstm_56/while/lstm_cell_56/add:z:09lstm_56/while/lstm_cell_56/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_56/while/lstm_cell_56/BiasAdd
*lstm_56/while/lstm_cell_56/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_56/while/lstm_cell_56/split/split_dim¯
 lstm_56/while/lstm_cell_56/splitSplit3lstm_56/while/lstm_cell_56/split/split_dim:output:0+lstm_56/while/lstm_cell_56/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2"
 lstm_56/while/lstm_cell_56/split±
"lstm_56/while/lstm_cell_56/SigmoidSigmoid)lstm_56/while/lstm_cell_56/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2$
"lstm_56/while/lstm_cell_56/Sigmoidµ
$lstm_56/while/lstm_cell_56/Sigmoid_1Sigmoid)lstm_56/while/lstm_cell_56/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2&
$lstm_56/while/lstm_cell_56/Sigmoid_1Á
lstm_56/while/lstm_cell_56/mulMul(lstm_56/while/lstm_cell_56/Sigmoid_1:y:0lstm_56_while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2 
lstm_56/while/lstm_cell_56/mul¨
lstm_56/while/lstm_cell_56/ReluRelu)lstm_56/while/lstm_cell_56/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2!
lstm_56/while/lstm_cell_56/ReluÕ
 lstm_56/while/lstm_cell_56/mul_1Mul&lstm_56/while/lstm_cell_56/Sigmoid:y:0-lstm_56/while/lstm_cell_56/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2"
 lstm_56/while/lstm_cell_56/mul_1Ê
 lstm_56/while/lstm_cell_56/add_1AddV2"lstm_56/while/lstm_cell_56/mul:z:0$lstm_56/while/lstm_cell_56/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2"
 lstm_56/while/lstm_cell_56/add_1µ
$lstm_56/while/lstm_cell_56/Sigmoid_2Sigmoid)lstm_56/while/lstm_cell_56/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2&
$lstm_56/while/lstm_cell_56/Sigmoid_2§
!lstm_56/while/lstm_cell_56/Relu_1Relu$lstm_56/while/lstm_cell_56/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2#
!lstm_56/while/lstm_cell_56/Relu_1Ù
 lstm_56/while/lstm_cell_56/mul_2Mul(lstm_56/while/lstm_cell_56/Sigmoid_2:y:0/lstm_56/while/lstm_cell_56/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2"
 lstm_56/while/lstm_cell_56/mul_2
2lstm_56/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_56_while_placeholder_1lstm_56_while_placeholder$lstm_56/while/lstm_cell_56/mul_2:z:0*
_output_shapes
: *
element_dtype024
2lstm_56/while/TensorArrayV2Write/TensorListSetIteml
lstm_56/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_56/while/add/y
lstm_56/while/addAddV2lstm_56_while_placeholderlstm_56/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_56/while/addp
lstm_56/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_56/while/add_1/y
lstm_56/while/add_1AddV2(lstm_56_while_lstm_56_while_loop_counterlstm_56/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_56/while/add_1
lstm_56/while/IdentityIdentitylstm_56/while/add_1:z:02^lstm_56/while/lstm_cell_56/BiasAdd/ReadVariableOp1^lstm_56/while/lstm_cell_56/MatMul/ReadVariableOp3^lstm_56/while/lstm_cell_56/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_56/while/Identity­
lstm_56/while/Identity_1Identity.lstm_56_while_lstm_56_while_maximum_iterations2^lstm_56/while/lstm_cell_56/BiasAdd/ReadVariableOp1^lstm_56/while/lstm_cell_56/MatMul/ReadVariableOp3^lstm_56/while/lstm_cell_56/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_56/while/Identity_1
lstm_56/while/Identity_2Identitylstm_56/while/add:z:02^lstm_56/while/lstm_cell_56/BiasAdd/ReadVariableOp1^lstm_56/while/lstm_cell_56/MatMul/ReadVariableOp3^lstm_56/while/lstm_cell_56/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_56/while/Identity_2Á
lstm_56/while/Identity_3IdentityBlstm_56/while/TensorArrayV2Write/TensorListSetItem:output_handle:02^lstm_56/while/lstm_cell_56/BiasAdd/ReadVariableOp1^lstm_56/while/lstm_cell_56/MatMul/ReadVariableOp3^lstm_56/while/lstm_cell_56/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_56/while/Identity_3µ
lstm_56/while/Identity_4Identity$lstm_56/while/lstm_cell_56/mul_2:z:02^lstm_56/while/lstm_cell_56/BiasAdd/ReadVariableOp1^lstm_56/while/lstm_cell_56/MatMul/ReadVariableOp3^lstm_56/while/lstm_cell_56/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_56/while/Identity_4µ
lstm_56/while/Identity_5Identity$lstm_56/while/lstm_cell_56/add_1:z:02^lstm_56/while/lstm_cell_56/BiasAdd/ReadVariableOp1^lstm_56/while/lstm_cell_56/MatMul/ReadVariableOp3^lstm_56/while/lstm_cell_56/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_56/while/Identity_5"9
lstm_56_while_identitylstm_56/while/Identity:output:0"=
lstm_56_while_identity_1!lstm_56/while/Identity_1:output:0"=
lstm_56_while_identity_2!lstm_56/while/Identity_2:output:0"=
lstm_56_while_identity_3!lstm_56/while/Identity_3:output:0"=
lstm_56_while_identity_4!lstm_56/while/Identity_4:output:0"=
lstm_56_while_identity_5!lstm_56/while/Identity_5:output:0"P
%lstm_56_while_lstm_56_strided_slice_1'lstm_56_while_lstm_56_strided_slice_1_0"z
:lstm_56_while_lstm_cell_56_biasadd_readvariableop_resource<lstm_56_while_lstm_cell_56_biasadd_readvariableop_resource_0"|
;lstm_56_while_lstm_cell_56_matmul_1_readvariableop_resource=lstm_56_while_lstm_cell_56_matmul_1_readvariableop_resource_0"x
9lstm_56_while_lstm_cell_56_matmul_readvariableop_resource;lstm_56_while_lstm_cell_56_matmul_readvariableop_resource_0"È
alstm_56_while_tensorarrayv2read_tensorlistgetitem_lstm_56_tensorarrayunstack_tensorlistfromtensorclstm_56_while_tensorarrayv2read_tensorlistgetitem_lstm_56_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : 2f
1lstm_56/while/lstm_cell_56/BiasAdd/ReadVariableOp1lstm_56/while/lstm_cell_56/BiasAdd/ReadVariableOp2d
0lstm_56/while/lstm_cell_56/MatMul/ReadVariableOp0lstm_56/while/lstm_cell_56/MatMul/ReadVariableOp2h
2lstm_56/while/lstm_cell_56/MatMul_1/ReadVariableOp2lstm_56/while/lstm_cell_56/MatMul_1/ReadVariableOp: 
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
¢

+__inference_dense_112_layer_call_fn_2628656

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
F__inference_dense_112_layer_call_and_return_conditional_losses_26272422
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
¥
Ð
J__inference_sequential_56_layer_call_and_return_conditional_losses_2627595
lstm_56_input"
lstm_56_2627577:	 #
lstm_56_2627579:
È 
lstm_56_2627581:	 $
dense_112_2627584:	Èd
dense_112_2627586:d#
dense_113_2627589:d
dense_113_2627591:
identity¢!dense_112/StatefulPartitionedCall¢!dense_113/StatefulPartitionedCall¢lstm_56/StatefulPartitionedCall­
lstm_56/StatefulPartitionedCallStatefulPartitionedCalllstm_56_inputlstm_56_2627577lstm_56_2627579lstm_56_2627581*
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
D__inference_lstm_56_layer_call_and_return_conditional_losses_26274662!
lstm_56/StatefulPartitionedCall¾
!dense_112/StatefulPartitionedCallStatefulPartitionedCall(lstm_56/StatefulPartitionedCall:output:0dense_112_2627584dense_112_2627586*
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
F__inference_dense_112_layer_call_and_return_conditional_losses_26272422#
!dense_112/StatefulPartitionedCallÀ
!dense_113/StatefulPartitionedCallStatefulPartitionedCall*dense_112/StatefulPartitionedCall:output:0dense_113_2627589dense_113_2627591*
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
F__inference_dense_113_layer_call_and_return_conditional_losses_26272582#
!dense_113/StatefulPartitionedCallè
IdentityIdentity*dense_113/StatefulPartitionedCall:output:0"^dense_112/StatefulPartitionedCall"^dense_113/StatefulPartitionedCall ^lstm_56/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2F
!dense_112/StatefulPartitionedCall!dense_112/StatefulPartitionedCall2F
!dense_113/StatefulPartitionedCall!dense_113/StatefulPartitionedCall2B
lstm_56/StatefulPartitionedCalllstm_56/StatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelstm_56_input
²

ø
F__inference_dense_112_layer_call_and_return_conditional_losses_2627242

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
Õ
·
)__inference_lstm_56_layer_call_fn_2628636

inputs
unknown:	 
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
D__inference_lstm_56_layer_call_and_return_conditional_losses_26274662
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
ã{

#__inference__traced_restore_2628974
file_prefix4
!assignvariableop_dense_112_kernel:	Èd/
!assignvariableop_1_dense_112_bias:d5
#assignvariableop_2_dense_113_kernel:d/
!assignvariableop_3_dense_113_bias:&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: A
.assignvariableop_9_lstm_56_lstm_cell_56_kernel:	 M
9assignvariableop_10_lstm_56_lstm_cell_56_recurrent_kernel:
È <
-assignvariableop_11_lstm_56_lstm_cell_56_bias:	 #
assignvariableop_12_total: #
assignvariableop_13_count: >
+assignvariableop_14_adam_dense_112_kernel_m:	Èd7
)assignvariableop_15_adam_dense_112_bias_m:d=
+assignvariableop_16_adam_dense_113_kernel_m:d7
)assignvariableop_17_adam_dense_113_bias_m:I
6assignvariableop_18_adam_lstm_56_lstm_cell_56_kernel_m:	 T
@assignvariableop_19_adam_lstm_56_lstm_cell_56_recurrent_kernel_m:
È C
4assignvariableop_20_adam_lstm_56_lstm_cell_56_bias_m:	 >
+assignvariableop_21_adam_dense_112_kernel_v:	Èd7
)assignvariableop_22_adam_dense_112_bias_v:d=
+assignvariableop_23_adam_dense_113_kernel_v:d7
)assignvariableop_24_adam_dense_113_bias_v:I
6assignvariableop_25_adam_lstm_56_lstm_cell_56_kernel_v:	 T
@assignvariableop_26_adam_lstm_56_lstm_cell_56_recurrent_kernel_v:
È C
4assignvariableop_27_adam_lstm_56_lstm_cell_56_bias_v:	 
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_112_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1¦
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_112_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2¨
AssignVariableOp_2AssignVariableOp#assignvariableop_2_dense_113_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3¦
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_113_biasIdentity_3:output:0"/device:CPU:0*
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
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_56_lstm_cell_56_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10Á
AssignVariableOp_10AssignVariableOp9assignvariableop_10_lstm_56_lstm_cell_56_recurrent_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11µ
AssignVariableOp_11AssignVariableOp-assignvariableop_11_lstm_56_lstm_cell_56_biasIdentity_11:output:0"/device:CPU:0*
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
AssignVariableOp_14AssignVariableOp+assignvariableop_14_adam_dense_112_kernel_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15±
AssignVariableOp_15AssignVariableOp)assignvariableop_15_adam_dense_112_bias_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16³
AssignVariableOp_16AssignVariableOp+assignvariableop_16_adam_dense_113_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17±
AssignVariableOp_17AssignVariableOp)assignvariableop_17_adam_dense_113_bias_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18¾
AssignVariableOp_18AssignVariableOp6assignvariableop_18_adam_lstm_56_lstm_cell_56_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19È
AssignVariableOp_19AssignVariableOp@assignvariableop_19_adam_lstm_56_lstm_cell_56_recurrent_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20¼
AssignVariableOp_20AssignVariableOp4assignvariableop_20_adam_lstm_56_lstm_cell_56_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21³
AssignVariableOp_21AssignVariableOp+assignvariableop_21_adam_dense_112_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22±
AssignVariableOp_22AssignVariableOp)assignvariableop_22_adam_dense_112_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23³
AssignVariableOp_23AssignVariableOp+assignvariableop_23_adam_dense_113_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24±
AssignVariableOp_24AssignVariableOp)assignvariableop_24_adam_dense_113_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25¾
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_56_lstm_cell_56_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26È
AssignVariableOp_26AssignVariableOp@assignvariableop_26_adam_lstm_56_lstm_cell_56_recurrent_kernel_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27¼
AssignVariableOp_27AssignVariableOp4assignvariableop_27_adam_lstm_56_lstm_cell_56_bias_vIdentity_27:output:0"/device:CPU:0*
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
while_cond_2628507
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2628507___redundant_placeholder05
1while_while_cond_2628507___redundant_placeholder15
1while_while_cond_2628507___redundant_placeholder25
1while_while_cond_2628507___redundant_placeholder3
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
D__inference_lstm_56_layer_call_and_return_conditional_losses_2627223

inputs>
+lstm_cell_56_matmul_readvariableop_resource:	 A
-lstm_cell_56_matmul_1_readvariableop_resource:
È ;
,lstm_cell_56_biasadd_readvariableop_resource:	 
identity¢#lstm_cell_56/BiasAdd/ReadVariableOp¢"lstm_cell_56/MatMul/ReadVariableOp¢$lstm_cell_56/MatMul_1/ReadVariableOp¢whileD
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
strided_slice_2µ
"lstm_cell_56/MatMul/ReadVariableOpReadVariableOp+lstm_cell_56_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype02$
"lstm_cell_56/MatMul/ReadVariableOp­
lstm_cell_56/MatMulMatMulstrided_slice_2:output:0*lstm_cell_56/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_56/MatMul¼
$lstm_cell_56/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_56_matmul_1_readvariableop_resource* 
_output_shapes
:
È *
dtype02&
$lstm_cell_56/MatMul_1/ReadVariableOp©
lstm_cell_56/MatMul_1MatMulzeros:output:0,lstm_cell_56/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_56/MatMul_1 
lstm_cell_56/addAddV2lstm_cell_56/MatMul:product:0lstm_cell_56/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_56/add´
#lstm_cell_56/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_56_biasadd_readvariableop_resource*
_output_shapes	
: *
dtype02%
#lstm_cell_56/BiasAdd/ReadVariableOp­
lstm_cell_56/BiasAddBiasAddlstm_cell_56/add:z:0+lstm_cell_56/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_56/BiasAdd~
lstm_cell_56/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_56/split/split_dim÷
lstm_cell_56/splitSplit%lstm_cell_56/split/split_dim:output:0lstm_cell_56/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
lstm_cell_56/split
lstm_cell_56/SigmoidSigmoidlstm_cell_56/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_56/Sigmoid
lstm_cell_56/Sigmoid_1Sigmoidlstm_cell_56/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_56/Sigmoid_1
lstm_cell_56/mulMullstm_cell_56/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_56/mul~
lstm_cell_56/ReluRelulstm_cell_56/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_56/Relu
lstm_cell_56/mul_1Mullstm_cell_56/Sigmoid:y:0lstm_cell_56/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_56/mul_1
lstm_cell_56/add_1AddV2lstm_cell_56/mul:z:0lstm_cell_56/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_56/add_1
lstm_cell_56/Sigmoid_2Sigmoidlstm_cell_56/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_56/Sigmoid_2}
lstm_cell_56/Relu_1Relulstm_cell_56/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_56/Relu_1¡
lstm_cell_56/mul_2Mullstm_cell_56/Sigmoid_2:y:0!lstm_cell_56/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_56/mul_2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_56_matmul_readvariableop_resource-lstm_cell_56_matmul_1_readvariableop_resource,lstm_cell_56_biasadd_readvariableop_resource*
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
while_body_2627139*
condR
while_cond_2627138*M
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
IdentityIdentitystrided_slice_3:output:0$^lstm_cell_56/BiasAdd/ReadVariableOp#^lstm_cell_56/MatMul/ReadVariableOp%^lstm_cell_56/MatMul_1/ReadVariableOp^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_56/BiasAdd/ReadVariableOp#lstm_cell_56/BiasAdd/ReadVariableOp2H
"lstm_cell_56/MatMul/ReadVariableOp"lstm_cell_56/MatMul/ReadVariableOp2L
$lstm_cell_56/MatMul_1/ReadVariableOp$lstm_cell_56/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
½

I__inference_lstm_cell_56_layer_call_and_return_conditional_losses_2626511

inputs

states
states_11
matmul_readvariableop_resource:	 4
 matmul_1_readvariableop_resource:
È .
biasadd_readvariableop_resource:	 
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 *
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
A:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
 
_user_specified_namestates:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
 
_user_specified_namestates
Å

I__inference_lstm_cell_56_layer_call_and_return_conditional_losses_2628707

inputs
states_0
states_11
matmul_readvariableop_resource:	 4
 matmul_1_readvariableop_resource:
È .
biasadd_readvariableop_resource:	 
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 *
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
A:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
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
Ò	
÷
F__inference_dense_113_layer_call_and_return_conditional_losses_2627258

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
while_cond_2626524
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2626524___redundant_placeholder05
1while_while_cond_2626524___redundant_placeholder15
1while_while_cond_2626524___redundant_placeholder25
1while_while_cond_2626524___redundant_placeholder3
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
D__inference_lstm_56_layer_call_and_return_conditional_losses_2628139
inputs_0>
+lstm_cell_56_matmul_readvariableop_resource:	 A
-lstm_cell_56_matmul_1_readvariableop_resource:
È ;
,lstm_cell_56_biasadd_readvariableop_resource:	 
identity¢#lstm_cell_56/BiasAdd/ReadVariableOp¢"lstm_cell_56/MatMul/ReadVariableOp¢$lstm_cell_56/MatMul_1/ReadVariableOp¢whileF
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
strided_slice_2µ
"lstm_cell_56/MatMul/ReadVariableOpReadVariableOp+lstm_cell_56_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype02$
"lstm_cell_56/MatMul/ReadVariableOp­
lstm_cell_56/MatMulMatMulstrided_slice_2:output:0*lstm_cell_56/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_56/MatMul¼
$lstm_cell_56/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_56_matmul_1_readvariableop_resource* 
_output_shapes
:
È *
dtype02&
$lstm_cell_56/MatMul_1/ReadVariableOp©
lstm_cell_56/MatMul_1MatMulzeros:output:0,lstm_cell_56/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_56/MatMul_1 
lstm_cell_56/addAddV2lstm_cell_56/MatMul:product:0lstm_cell_56/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_56/add´
#lstm_cell_56/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_56_biasadd_readvariableop_resource*
_output_shapes	
: *
dtype02%
#lstm_cell_56/BiasAdd/ReadVariableOp­
lstm_cell_56/BiasAddBiasAddlstm_cell_56/add:z:0+lstm_cell_56/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_56/BiasAdd~
lstm_cell_56/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_56/split/split_dim÷
lstm_cell_56/splitSplit%lstm_cell_56/split/split_dim:output:0lstm_cell_56/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
lstm_cell_56/split
lstm_cell_56/SigmoidSigmoidlstm_cell_56/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_56/Sigmoid
lstm_cell_56/Sigmoid_1Sigmoidlstm_cell_56/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_56/Sigmoid_1
lstm_cell_56/mulMullstm_cell_56/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_56/mul~
lstm_cell_56/ReluRelulstm_cell_56/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_56/Relu
lstm_cell_56/mul_1Mullstm_cell_56/Sigmoid:y:0lstm_cell_56/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_56/mul_1
lstm_cell_56/add_1AddV2lstm_cell_56/mul:z:0lstm_cell_56/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_56/add_1
lstm_cell_56/Sigmoid_2Sigmoidlstm_cell_56/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_56/Sigmoid_2}
lstm_cell_56/Relu_1Relulstm_cell_56/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_56/Relu_1¡
lstm_cell_56/mul_2Mullstm_cell_56/Sigmoid_2:y:0!lstm_cell_56/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_56/mul_2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_56_matmul_readvariableop_resource-lstm_cell_56_matmul_1_readvariableop_resource,lstm_cell_56_biasadd_readvariableop_resource*
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
while_body_2628055*
condR
while_cond_2628054*M
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
IdentityIdentitystrided_slice_3:output:0$^lstm_cell_56/BiasAdd/ReadVariableOp#^lstm_cell_56/MatMul/ReadVariableOp%^lstm_cell_56/MatMul_1/ReadVariableOp^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_56/BiasAdd/ReadVariableOp#lstm_cell_56/BiasAdd/ReadVariableOp2H
"lstm_cell_56/MatMul/ReadVariableOp"lstm_cell_56/MatMul/ReadVariableOp2L
$lstm_cell_56/MatMul_1/ReadVariableOp$lstm_cell_56/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
í
¹
)__inference_lstm_56_layer_call_fn_2628614
inputs_0
unknown:	 
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
D__inference_lstm_56_layer_call_and_return_conditional_losses_26268042
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
Þ
È
while_cond_2627381
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2627381___redundant_placeholder05
1while_while_cond_2627381___redundant_placeholder15
1while_while_cond_2627381___redundant_placeholder25
1while_while_cond_2627381___redundant_placeholder3
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
ÇE

D__inference_lstm_56_layer_call_and_return_conditional_losses_2626594

inputs'
lstm_cell_56_2626512:	 (
lstm_cell_56_2626514:
È #
lstm_cell_56_2626516:	 
identity¢$lstm_cell_56/StatefulPartitionedCall¢whileD
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
strided_slice_2¤
$lstm_cell_56/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_56_2626512lstm_cell_56_2626514lstm_cell_56_2626516*
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
I__inference_lstm_cell_56_layer_call_and_return_conditional_losses_26265112&
$lstm_cell_56/StatefulPartitionedCall
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_56_2626512lstm_cell_56_2626514lstm_cell_56_2626516*
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
while_body_2626525*
condR
while_cond_2626524*M
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
IdentityIdentitystrided_slice_3:output:0%^lstm_cell_56/StatefulPartitionedCall^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_56/StatefulPartitionedCall$lstm_cell_56/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
½

I__inference_lstm_cell_56_layer_call_and_return_conditional_losses_2626657

inputs

states
states_11
matmul_readvariableop_resource:	 4
 matmul_1_readvariableop_resource:
È .
biasadd_readvariableop_resource:	 
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 *
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
A:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
 
_user_specified_namestates:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
 
_user_specified_namestates
Ï

è
lstm_56_while_cond_2627852,
(lstm_56_while_lstm_56_while_loop_counter2
.lstm_56_while_lstm_56_while_maximum_iterations
lstm_56_while_placeholder
lstm_56_while_placeholder_1
lstm_56_while_placeholder_2
lstm_56_while_placeholder_3.
*lstm_56_while_less_lstm_56_strided_slice_1E
Alstm_56_while_lstm_56_while_cond_2627852___redundant_placeholder0E
Alstm_56_while_lstm_56_while_cond_2627852___redundant_placeholder1E
Alstm_56_while_lstm_56_while_cond_2627852___redundant_placeholder2E
Alstm_56_while_lstm_56_while_cond_2627852___redundant_placeholder3
lstm_56_while_identity

lstm_56/while/LessLesslstm_56_while_placeholder*lstm_56_while_less_lstm_56_strided_slice_1*
T0*
_output_shapes
: 2
lstm_56/while/Lessu
lstm_56/while/IdentityIdentitylstm_56/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_56/while/Identity"9
lstm_56_while_identitylstm_56/while/Identity:output:0*(
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
while_body_2627382
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_56_matmul_readvariableop_resource_0:	 I
5while_lstm_cell_56_matmul_1_readvariableop_resource_0:
È C
4while_lstm_cell_56_biasadd_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_56_matmul_readvariableop_resource:	 G
3while_lstm_cell_56_matmul_1_readvariableop_resource:
È A
2while_lstm_cell_56_biasadd_readvariableop_resource:	 ¢)while/lstm_cell_56/BiasAdd/ReadVariableOp¢(while/lstm_cell_56/MatMul/ReadVariableOp¢*while/lstm_cell_56/MatMul_1/ReadVariableOpÃ
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
)while/TensorArrayV2Read/TensorListGetItemÉ
(while/lstm_cell_56/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_56_matmul_readvariableop_resource_0*
_output_shapes
:	 *
dtype02*
(while/lstm_cell_56/MatMul/ReadVariableOp×
while/lstm_cell_56/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_56/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_56/MatMulÐ
*while/lstm_cell_56/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_56_matmul_1_readvariableop_resource_0* 
_output_shapes
:
È *
dtype02,
*while/lstm_cell_56/MatMul_1/ReadVariableOpÀ
while/lstm_cell_56/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_56/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_56/MatMul_1¸
while/lstm_cell_56/addAddV2#while/lstm_cell_56/MatMul:product:0%while/lstm_cell_56/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_56/addÈ
)while/lstm_cell_56/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_56_biasadd_readvariableop_resource_0*
_output_shapes	
: *
dtype02+
)while/lstm_cell_56/BiasAdd/ReadVariableOpÅ
while/lstm_cell_56/BiasAddBiasAddwhile/lstm_cell_56/add:z:01while/lstm_cell_56/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_56/BiasAdd
"while/lstm_cell_56/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_56/split/split_dim
while/lstm_cell_56/splitSplit+while/lstm_cell_56/split/split_dim:output:0#while/lstm_cell_56/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
while/lstm_cell_56/split
while/lstm_cell_56/SigmoidSigmoid!while/lstm_cell_56/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_56/Sigmoid
while/lstm_cell_56/Sigmoid_1Sigmoid!while/lstm_cell_56/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_56/Sigmoid_1¡
while/lstm_cell_56/mulMul while/lstm_cell_56/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_56/mul
while/lstm_cell_56/ReluRelu!while/lstm_cell_56/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_56/Reluµ
while/lstm_cell_56/mul_1Mulwhile/lstm_cell_56/Sigmoid:y:0%while/lstm_cell_56/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_56/mul_1ª
while/lstm_cell_56/add_1AddV2while/lstm_cell_56/mul:z:0while/lstm_cell_56/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_56/add_1
while/lstm_cell_56/Sigmoid_2Sigmoid!while/lstm_cell_56/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_56/Sigmoid_2
while/lstm_cell_56/Relu_1Reluwhile/lstm_cell_56/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_56/Relu_1¹
while/lstm_cell_56/mul_2Mul while/lstm_cell_56/Sigmoid_2:y:0'while/lstm_cell_56/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_56/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_56/mul_2:z:0*
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
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_56/BiasAdd/ReadVariableOp)^while/lstm_cell_56/MatMul/ReadVariableOp+^while/lstm_cell_56/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityõ
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_56/BiasAdd/ReadVariableOp)^while/lstm_cell_56/MatMul/ReadVariableOp+^while/lstm_cell_56/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ä
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_56/BiasAdd/ReadVariableOp)^while/lstm_cell_56/MatMul/ReadVariableOp+^while/lstm_cell_56/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_56/BiasAdd/ReadVariableOp)^while/lstm_cell_56/MatMul/ReadVariableOp+^while/lstm_cell_56/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_56/mul_2:z:0*^while/lstm_cell_56/BiasAdd/ReadVariableOp)^while/lstm_cell_56/MatMul/ReadVariableOp+^while/lstm_cell_56/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_56/add_1:z:0*^while/lstm_cell_56/BiasAdd/ReadVariableOp)^while/lstm_cell_56/MatMul/ReadVariableOp+^while/lstm_cell_56/MatMul_1/ReadVariableOp*
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
2while_lstm_cell_56_biasadd_readvariableop_resource4while_lstm_cell_56_biasadd_readvariableop_resource_0"l
3while_lstm_cell_56_matmul_1_readvariableop_resource5while_lstm_cell_56_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_56_matmul_readvariableop_resource3while_lstm_cell_56_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : 2V
)while/lstm_cell_56/BiasAdd/ReadVariableOp)while/lstm_cell_56/BiasAdd/ReadVariableOp2T
(while/lstm_cell_56/MatMul/ReadVariableOp(while/lstm_cell_56/MatMul/ReadVariableOp2X
*while/lstm_cell_56/MatMul_1/ReadVariableOp*while/lstm_cell_56/MatMul_1/ReadVariableOp: 
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

ø
.__inference_lstm_cell_56_layer_call_fn_2628756

inputs
states_0
states_1
unknown:	 
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
I__inference_lstm_cell_56_layer_call_and_return_conditional_losses_26265112
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
A:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : 22
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
states/0:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
"
_user_specified_name
states/1

ø
.__inference_lstm_cell_56_layer_call_fn_2628773

inputs
states_0
states_1
unknown:	 
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
I__inference_lstm_cell_56_layer_call_and_return_conditional_losses_26266572
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
A:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : 22
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
states/0:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ
"
_user_specified_name
states/1


+__inference_dense_113_layer_call_fn_2628675

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
F__inference_dense_113_layer_call_and_return_conditional_losses_26272582
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
Þ
È
while_cond_2628356
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2628356___redundant_placeholder05
1while_while_cond_2628356___redundant_placeholder15
1while_while_cond_2628356___redundant_placeholder25
1while_while_cond_2628356___redundant_placeholder3
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
£

"__inference__wrapped_model_2626436
lstm_56_inputT
Asequential_56_lstm_56_lstm_cell_56_matmul_readvariableop_resource:	 W
Csequential_56_lstm_56_lstm_cell_56_matmul_1_readvariableop_resource:
È Q
Bsequential_56_lstm_56_lstm_cell_56_biasadd_readvariableop_resource:	 I
6sequential_56_dense_112_matmul_readvariableop_resource:	ÈdE
7sequential_56_dense_112_biasadd_readvariableop_resource:dH
6sequential_56_dense_113_matmul_readvariableop_resource:dE
7sequential_56_dense_113_biasadd_readvariableop_resource:
identity¢.sequential_56/dense_112/BiasAdd/ReadVariableOp¢-sequential_56/dense_112/MatMul/ReadVariableOp¢.sequential_56/dense_113/BiasAdd/ReadVariableOp¢-sequential_56/dense_113/MatMul/ReadVariableOp¢9sequential_56/lstm_56/lstm_cell_56/BiasAdd/ReadVariableOp¢8sequential_56/lstm_56/lstm_cell_56/MatMul/ReadVariableOp¢:sequential_56/lstm_56/lstm_cell_56/MatMul_1/ReadVariableOp¢sequential_56/lstm_56/whilew
sequential_56/lstm_56/ShapeShapelstm_56_input*
T0*
_output_shapes
:2
sequential_56/lstm_56/Shape 
)sequential_56/lstm_56/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_56/lstm_56/strided_slice/stack¤
+sequential_56/lstm_56/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_56/lstm_56/strided_slice/stack_1¤
+sequential_56/lstm_56/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_56/lstm_56/strided_slice/stack_2æ
#sequential_56/lstm_56/strided_sliceStridedSlice$sequential_56/lstm_56/Shape:output:02sequential_56/lstm_56/strided_slice/stack:output:04sequential_56/lstm_56/strided_slice/stack_1:output:04sequential_56/lstm_56/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential_56/lstm_56/strided_slice
!sequential_56/lstm_56/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :È2#
!sequential_56/lstm_56/zeros/mul/yÄ
sequential_56/lstm_56/zeros/mulMul,sequential_56/lstm_56/strided_slice:output:0*sequential_56/lstm_56/zeros/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential_56/lstm_56/zeros/mul
"sequential_56/lstm_56/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2$
"sequential_56/lstm_56/zeros/Less/y¿
 sequential_56/lstm_56/zeros/LessLess#sequential_56/lstm_56/zeros/mul:z:0+sequential_56/lstm_56/zeros/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential_56/lstm_56/zeros/Less
$sequential_56/lstm_56/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :È2&
$sequential_56/lstm_56/zeros/packed/1Û
"sequential_56/lstm_56/zeros/packedPack,sequential_56/lstm_56/strided_slice:output:0-sequential_56/lstm_56/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential_56/lstm_56/zeros/packed
!sequential_56/lstm_56/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential_56/lstm_56/zeros/ConstÎ
sequential_56/lstm_56/zerosFill+sequential_56/lstm_56/zeros/packed:output:0*sequential_56/lstm_56/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
sequential_56/lstm_56/zeros
#sequential_56/lstm_56/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :È2%
#sequential_56/lstm_56/zeros_1/mul/yÊ
!sequential_56/lstm_56/zeros_1/mulMul,sequential_56/lstm_56/strided_slice:output:0,sequential_56/lstm_56/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2#
!sequential_56/lstm_56/zeros_1/mul
$sequential_56/lstm_56/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2&
$sequential_56/lstm_56/zeros_1/Less/yÇ
"sequential_56/lstm_56/zeros_1/LessLess%sequential_56/lstm_56/zeros_1/mul:z:0-sequential_56/lstm_56/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2$
"sequential_56/lstm_56/zeros_1/Less
&sequential_56/lstm_56/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :È2(
&sequential_56/lstm_56/zeros_1/packed/1á
$sequential_56/lstm_56/zeros_1/packedPack,sequential_56/lstm_56/strided_slice:output:0/sequential_56/lstm_56/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2&
$sequential_56/lstm_56/zeros_1/packed
#sequential_56/lstm_56/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#sequential_56/lstm_56/zeros_1/ConstÖ
sequential_56/lstm_56/zeros_1Fill-sequential_56/lstm_56/zeros_1/packed:output:0,sequential_56/lstm_56/zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
sequential_56/lstm_56/zeros_1¡
$sequential_56/lstm_56/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential_56/lstm_56/transpose/permÃ
sequential_56/lstm_56/transpose	Transposelstm_56_input-sequential_56/lstm_56/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
sequential_56/lstm_56/transpose
sequential_56/lstm_56/Shape_1Shape#sequential_56/lstm_56/transpose:y:0*
T0*
_output_shapes
:2
sequential_56/lstm_56/Shape_1¤
+sequential_56/lstm_56/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_56/lstm_56/strided_slice_1/stack¨
-sequential_56/lstm_56/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_56/lstm_56/strided_slice_1/stack_1¨
-sequential_56/lstm_56/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_56/lstm_56/strided_slice_1/stack_2ò
%sequential_56/lstm_56/strided_slice_1StridedSlice&sequential_56/lstm_56/Shape_1:output:04sequential_56/lstm_56/strided_slice_1/stack:output:06sequential_56/lstm_56/strided_slice_1/stack_1:output:06sequential_56/lstm_56/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%sequential_56/lstm_56/strided_slice_1±
1sequential_56/lstm_56/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ23
1sequential_56/lstm_56/TensorArrayV2/element_shape
#sequential_56/lstm_56/TensorArrayV2TensorListReserve:sequential_56/lstm_56/TensorArrayV2/element_shape:output:0.sequential_56/lstm_56/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential_56/lstm_56/TensorArrayV2ë
Ksequential_56/lstm_56/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2M
Ksequential_56/lstm_56/TensorArrayUnstack/TensorListFromTensor/element_shapeÐ
=sequential_56/lstm_56/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_56/lstm_56/transpose:y:0Tsequential_56/lstm_56/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02?
=sequential_56/lstm_56/TensorArrayUnstack/TensorListFromTensor¤
+sequential_56/lstm_56/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_56/lstm_56/strided_slice_2/stack¨
-sequential_56/lstm_56/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_56/lstm_56/strided_slice_2/stack_1¨
-sequential_56/lstm_56/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_56/lstm_56/strided_slice_2/stack_2
%sequential_56/lstm_56/strided_slice_2StridedSlice#sequential_56/lstm_56/transpose:y:04sequential_56/lstm_56/strided_slice_2/stack:output:06sequential_56/lstm_56/strided_slice_2/stack_1:output:06sequential_56/lstm_56/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2'
%sequential_56/lstm_56/strided_slice_2÷
8sequential_56/lstm_56/lstm_cell_56/MatMul/ReadVariableOpReadVariableOpAsequential_56_lstm_56_lstm_cell_56_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype02:
8sequential_56/lstm_56/lstm_cell_56/MatMul/ReadVariableOp
)sequential_56/lstm_56/lstm_cell_56/MatMulMatMul.sequential_56/lstm_56/strided_slice_2:output:0@sequential_56/lstm_56/lstm_cell_56/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)sequential_56/lstm_56/lstm_cell_56/MatMulþ
:sequential_56/lstm_56/lstm_cell_56/MatMul_1/ReadVariableOpReadVariableOpCsequential_56_lstm_56_lstm_cell_56_matmul_1_readvariableop_resource* 
_output_shapes
:
È *
dtype02<
:sequential_56/lstm_56/lstm_cell_56/MatMul_1/ReadVariableOp
+sequential_56/lstm_56/lstm_cell_56/MatMul_1MatMul$sequential_56/lstm_56/zeros:output:0Bsequential_56/lstm_56/lstm_cell_56/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+sequential_56/lstm_56/lstm_cell_56/MatMul_1ø
&sequential_56/lstm_56/lstm_cell_56/addAddV23sequential_56/lstm_56/lstm_cell_56/MatMul:product:05sequential_56/lstm_56/lstm_cell_56/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2(
&sequential_56/lstm_56/lstm_cell_56/addö
9sequential_56/lstm_56/lstm_cell_56/BiasAdd/ReadVariableOpReadVariableOpBsequential_56_lstm_56_lstm_cell_56_biasadd_readvariableop_resource*
_output_shapes	
: *
dtype02;
9sequential_56/lstm_56/lstm_cell_56/BiasAdd/ReadVariableOp
*sequential_56/lstm_56/lstm_cell_56/BiasAddBiasAdd*sequential_56/lstm_56/lstm_cell_56/add:z:0Asequential_56/lstm_56/lstm_cell_56/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*sequential_56/lstm_56/lstm_cell_56/BiasAddª
2sequential_56/lstm_56/lstm_cell_56/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :24
2sequential_56/lstm_56/lstm_cell_56/split/split_dimÏ
(sequential_56/lstm_56/lstm_cell_56/splitSplit;sequential_56/lstm_56/lstm_cell_56/split/split_dim:output:03sequential_56/lstm_56/lstm_cell_56/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2*
(sequential_56/lstm_56/lstm_cell_56/splitÉ
*sequential_56/lstm_56/lstm_cell_56/SigmoidSigmoid1sequential_56/lstm_56/lstm_cell_56/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2,
*sequential_56/lstm_56/lstm_cell_56/SigmoidÍ
,sequential_56/lstm_56/lstm_cell_56/Sigmoid_1Sigmoid1sequential_56/lstm_56/lstm_cell_56/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2.
,sequential_56/lstm_56/lstm_cell_56/Sigmoid_1ä
&sequential_56/lstm_56/lstm_cell_56/mulMul0sequential_56/lstm_56/lstm_cell_56/Sigmoid_1:y:0&sequential_56/lstm_56/zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2(
&sequential_56/lstm_56/lstm_cell_56/mulÀ
'sequential_56/lstm_56/lstm_cell_56/ReluRelu1sequential_56/lstm_56/lstm_cell_56/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2)
'sequential_56/lstm_56/lstm_cell_56/Reluõ
(sequential_56/lstm_56/lstm_cell_56/mul_1Mul.sequential_56/lstm_56/lstm_cell_56/Sigmoid:y:05sequential_56/lstm_56/lstm_cell_56/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2*
(sequential_56/lstm_56/lstm_cell_56/mul_1ê
(sequential_56/lstm_56/lstm_cell_56/add_1AddV2*sequential_56/lstm_56/lstm_cell_56/mul:z:0,sequential_56/lstm_56/lstm_cell_56/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2*
(sequential_56/lstm_56/lstm_cell_56/add_1Í
,sequential_56/lstm_56/lstm_cell_56/Sigmoid_2Sigmoid1sequential_56/lstm_56/lstm_cell_56/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2.
,sequential_56/lstm_56/lstm_cell_56/Sigmoid_2¿
)sequential_56/lstm_56/lstm_cell_56/Relu_1Relu,sequential_56/lstm_56/lstm_cell_56/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2+
)sequential_56/lstm_56/lstm_cell_56/Relu_1ù
(sequential_56/lstm_56/lstm_cell_56/mul_2Mul0sequential_56/lstm_56/lstm_cell_56/Sigmoid_2:y:07sequential_56/lstm_56/lstm_cell_56/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2*
(sequential_56/lstm_56/lstm_cell_56/mul_2»
3sequential_56/lstm_56/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÈ   25
3sequential_56/lstm_56/TensorArrayV2_1/element_shape
%sequential_56/lstm_56/TensorArrayV2_1TensorListReserve<sequential_56/lstm_56/TensorArrayV2_1/element_shape:output:0.sequential_56/lstm_56/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02'
%sequential_56/lstm_56/TensorArrayV2_1z
sequential_56/lstm_56/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_56/lstm_56/time«
.sequential_56/lstm_56/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ20
.sequential_56/lstm_56/while/maximum_iterations
(sequential_56/lstm_56/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential_56/lstm_56/while/loop_counter¾
sequential_56/lstm_56/whileWhile1sequential_56/lstm_56/while/loop_counter:output:07sequential_56/lstm_56/while/maximum_iterations:output:0#sequential_56/lstm_56/time:output:0.sequential_56/lstm_56/TensorArrayV2_1:handle:0$sequential_56/lstm_56/zeros:output:0&sequential_56/lstm_56/zeros_1:output:0.sequential_56/lstm_56/strided_slice_1:output:0Msequential_56/lstm_56/TensorArrayUnstack/TensorListFromTensor:output_handle:0Asequential_56_lstm_56_lstm_cell_56_matmul_readvariableop_resourceCsequential_56_lstm_56_lstm_cell_56_matmul_1_readvariableop_resourceBsequential_56_lstm_56_lstm_cell_56_biasadd_readvariableop_resource*
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
(sequential_56_lstm_56_while_body_2626339*4
cond,R*
(sequential_56_lstm_56_while_cond_2626338*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : *
parallel_iterations 2
sequential_56/lstm_56/whileá
Fsequential_56/lstm_56/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÈ   2H
Fsequential_56/lstm_56/TensorArrayV2Stack/TensorListStack/element_shapeÁ
8sequential_56/lstm_56/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_56/lstm_56/while:output:3Osequential_56/lstm_56/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*
element_dtype02:
8sequential_56/lstm_56/TensorArrayV2Stack/TensorListStack­
+sequential_56/lstm_56/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2-
+sequential_56/lstm_56/strided_slice_3/stack¨
-sequential_56/lstm_56/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2/
-sequential_56/lstm_56/strided_slice_3/stack_1¨
-sequential_56/lstm_56/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_56/lstm_56/strided_slice_3/stack_2
%sequential_56/lstm_56/strided_slice_3StridedSliceAsequential_56/lstm_56/TensorArrayV2Stack/TensorListStack:tensor:04sequential_56/lstm_56/strided_slice_3/stack:output:06sequential_56/lstm_56/strided_slice_3/stack_1:output:06sequential_56/lstm_56/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*
shrink_axis_mask2'
%sequential_56/lstm_56/strided_slice_3¥
&sequential_56/lstm_56/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&sequential_56/lstm_56/transpose_1/permþ
!sequential_56/lstm_56/transpose_1	TransposeAsequential_56/lstm_56/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_56/lstm_56/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2#
!sequential_56/lstm_56/transpose_1
sequential_56/lstm_56/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_56/lstm_56/runtimeÖ
-sequential_56/dense_112/MatMul/ReadVariableOpReadVariableOp6sequential_56_dense_112_matmul_readvariableop_resource*
_output_shapes
:	Èd*
dtype02/
-sequential_56/dense_112/MatMul/ReadVariableOpã
sequential_56/dense_112/MatMulMatMul.sequential_56/lstm_56/strided_slice_3:output:05sequential_56/dense_112/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2 
sequential_56/dense_112/MatMulÔ
.sequential_56/dense_112/BiasAdd/ReadVariableOpReadVariableOp7sequential_56_dense_112_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype020
.sequential_56/dense_112/BiasAdd/ReadVariableOpá
sequential_56/dense_112/BiasAddBiasAdd(sequential_56/dense_112/MatMul:product:06sequential_56/dense_112/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2!
sequential_56/dense_112/BiasAdd 
sequential_56/dense_112/ReluRelu(sequential_56/dense_112/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
sequential_56/dense_112/ReluÕ
-sequential_56/dense_113/MatMul/ReadVariableOpReadVariableOp6sequential_56_dense_113_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02/
-sequential_56/dense_113/MatMul/ReadVariableOpß
sequential_56/dense_113/MatMulMatMul*sequential_56/dense_112/Relu:activations:05sequential_56/dense_113/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
sequential_56/dense_113/MatMulÔ
.sequential_56/dense_113/BiasAdd/ReadVariableOpReadVariableOp7sequential_56_dense_113_biasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.sequential_56/dense_113/BiasAdd/ReadVariableOpá
sequential_56/dense_113/BiasAddBiasAdd(sequential_56/dense_113/MatMul:product:06sequential_56/dense_113/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
sequential_56/dense_113/BiasAdd
IdentityIdentity(sequential_56/dense_113/BiasAdd:output:0/^sequential_56/dense_112/BiasAdd/ReadVariableOp.^sequential_56/dense_112/MatMul/ReadVariableOp/^sequential_56/dense_113/BiasAdd/ReadVariableOp.^sequential_56/dense_113/MatMul/ReadVariableOp:^sequential_56/lstm_56/lstm_cell_56/BiasAdd/ReadVariableOp9^sequential_56/lstm_56/lstm_cell_56/MatMul/ReadVariableOp;^sequential_56/lstm_56/lstm_cell_56/MatMul_1/ReadVariableOp^sequential_56/lstm_56/while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2`
.sequential_56/dense_112/BiasAdd/ReadVariableOp.sequential_56/dense_112/BiasAdd/ReadVariableOp2^
-sequential_56/dense_112/MatMul/ReadVariableOp-sequential_56/dense_112/MatMul/ReadVariableOp2`
.sequential_56/dense_113/BiasAdd/ReadVariableOp.sequential_56/dense_113/BiasAdd/ReadVariableOp2^
-sequential_56/dense_113/MatMul/ReadVariableOp-sequential_56/dense_113/MatMul/ReadVariableOp2v
9sequential_56/lstm_56/lstm_cell_56/BiasAdd/ReadVariableOp9sequential_56/lstm_56/lstm_cell_56/BiasAdd/ReadVariableOp2t
8sequential_56/lstm_56/lstm_cell_56/MatMul/ReadVariableOp8sequential_56/lstm_56/lstm_cell_56/MatMul/ReadVariableOp2x
:sequential_56/lstm_56/lstm_cell_56/MatMul_1/ReadVariableOp:sequential_56/lstm_56/lstm_cell_56/MatMul_1/ReadVariableOp2:
sequential_56/lstm_56/whilesequential_56/lstm_56/while:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelstm_56_input
í
¹
)__inference_lstm_56_layer_call_fn_2628603
inputs_0
unknown:	 
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
D__inference_lstm_56_layer_call_and_return_conditional_losses_26265942
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
C
Ó
while_body_2628508
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_56_matmul_readvariableop_resource_0:	 I
5while_lstm_cell_56_matmul_1_readvariableop_resource_0:
È C
4while_lstm_cell_56_biasadd_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_56_matmul_readvariableop_resource:	 G
3while_lstm_cell_56_matmul_1_readvariableop_resource:
È A
2while_lstm_cell_56_biasadd_readvariableop_resource:	 ¢)while/lstm_cell_56/BiasAdd/ReadVariableOp¢(while/lstm_cell_56/MatMul/ReadVariableOp¢*while/lstm_cell_56/MatMul_1/ReadVariableOpÃ
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
)while/TensorArrayV2Read/TensorListGetItemÉ
(while/lstm_cell_56/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_56_matmul_readvariableop_resource_0*
_output_shapes
:	 *
dtype02*
(while/lstm_cell_56/MatMul/ReadVariableOp×
while/lstm_cell_56/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_56/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_56/MatMulÐ
*while/lstm_cell_56/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_56_matmul_1_readvariableop_resource_0* 
_output_shapes
:
È *
dtype02,
*while/lstm_cell_56/MatMul_1/ReadVariableOpÀ
while/lstm_cell_56/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_56/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_56/MatMul_1¸
while/lstm_cell_56/addAddV2#while/lstm_cell_56/MatMul:product:0%while/lstm_cell_56/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_56/addÈ
)while/lstm_cell_56/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_56_biasadd_readvariableop_resource_0*
_output_shapes	
: *
dtype02+
)while/lstm_cell_56/BiasAdd/ReadVariableOpÅ
while/lstm_cell_56/BiasAddBiasAddwhile/lstm_cell_56/add:z:01while/lstm_cell_56/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_56/BiasAdd
"while/lstm_cell_56/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_56/split/split_dim
while/lstm_cell_56/splitSplit+while/lstm_cell_56/split/split_dim:output:0#while/lstm_cell_56/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
while/lstm_cell_56/split
while/lstm_cell_56/SigmoidSigmoid!while/lstm_cell_56/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_56/Sigmoid
while/lstm_cell_56/Sigmoid_1Sigmoid!while/lstm_cell_56/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_56/Sigmoid_1¡
while/lstm_cell_56/mulMul while/lstm_cell_56/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_56/mul
while/lstm_cell_56/ReluRelu!while/lstm_cell_56/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_56/Reluµ
while/lstm_cell_56/mul_1Mulwhile/lstm_cell_56/Sigmoid:y:0%while/lstm_cell_56/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_56/mul_1ª
while/lstm_cell_56/add_1AddV2while/lstm_cell_56/mul:z:0while/lstm_cell_56/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_56/add_1
while/lstm_cell_56/Sigmoid_2Sigmoid!while/lstm_cell_56/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_56/Sigmoid_2
while/lstm_cell_56/Relu_1Reluwhile/lstm_cell_56/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_56/Relu_1¹
while/lstm_cell_56/mul_2Mul while/lstm_cell_56/Sigmoid_2:y:0'while/lstm_cell_56/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_56/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_56/mul_2:z:0*
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
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_56/BiasAdd/ReadVariableOp)^while/lstm_cell_56/MatMul/ReadVariableOp+^while/lstm_cell_56/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityõ
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_56/BiasAdd/ReadVariableOp)^while/lstm_cell_56/MatMul/ReadVariableOp+^while/lstm_cell_56/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ä
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_56/BiasAdd/ReadVariableOp)^while/lstm_cell_56/MatMul/ReadVariableOp+^while/lstm_cell_56/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_56/BiasAdd/ReadVariableOp)^while/lstm_cell_56/MatMul/ReadVariableOp+^while/lstm_cell_56/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_56/mul_2:z:0*^while/lstm_cell_56/BiasAdd/ReadVariableOp)^while/lstm_cell_56/MatMul/ReadVariableOp+^while/lstm_cell_56/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_56/add_1:z:0*^while/lstm_cell_56/BiasAdd/ReadVariableOp)^while/lstm_cell_56/MatMul/ReadVariableOp+^while/lstm_cell_56/MatMul_1/ReadVariableOp*
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
2while_lstm_cell_56_biasadd_readvariableop_resource4while_lstm_cell_56_biasadd_readvariableop_resource_0"l
3while_lstm_cell_56_matmul_1_readvariableop_resource5while_lstm_cell_56_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_56_matmul_readvariableop_resource3while_lstm_cell_56_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : 2V
)while/lstm_cell_56/BiasAdd/ReadVariableOp)while/lstm_cell_56/BiasAdd/ReadVariableOp2T
(while/lstm_cell_56/MatMul/ReadVariableOp(while/lstm_cell_56/MatMul/ReadVariableOp2X
*while/lstm_cell_56/MatMul_1/ReadVariableOp*while/lstm_cell_56/MatMul_1/ReadVariableOp: 
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
while_cond_2626734
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2626734___redundant_placeholder05
1while_while_cond_2626734___redundant_placeholder15
1while_while_cond_2626734___redundant_placeholder25
1while_while_cond_2626734___redundant_placeholder3
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
ÇE

D__inference_lstm_56_layer_call_and_return_conditional_losses_2626804

inputs'
lstm_cell_56_2626722:	 (
lstm_cell_56_2626724:
È #
lstm_cell_56_2626726:	 
identity¢$lstm_cell_56/StatefulPartitionedCall¢whileD
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
strided_slice_2¤
$lstm_cell_56/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_56_2626722lstm_cell_56_2626724lstm_cell_56_2626726*
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
I__inference_lstm_cell_56_layer_call_and_return_conditional_losses_26266572&
$lstm_cell_56/StatefulPartitionedCall
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_56_2626722lstm_cell_56_2626724lstm_cell_56_2626726*
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
while_body_2626735*
condR
while_cond_2626734*M
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
IdentityIdentitystrided_slice_3:output:0%^lstm_cell_56/StatefulPartitionedCall^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_56/StatefulPartitionedCall$lstm_cell_56/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
æc

(sequential_56_lstm_56_while_body_2626339H
Dsequential_56_lstm_56_while_sequential_56_lstm_56_while_loop_counterN
Jsequential_56_lstm_56_while_sequential_56_lstm_56_while_maximum_iterations+
'sequential_56_lstm_56_while_placeholder-
)sequential_56_lstm_56_while_placeholder_1-
)sequential_56_lstm_56_while_placeholder_2-
)sequential_56_lstm_56_while_placeholder_3G
Csequential_56_lstm_56_while_sequential_56_lstm_56_strided_slice_1_0
sequential_56_lstm_56_while_tensorarrayv2read_tensorlistgetitem_sequential_56_lstm_56_tensorarrayunstack_tensorlistfromtensor_0\
Isequential_56_lstm_56_while_lstm_cell_56_matmul_readvariableop_resource_0:	 _
Ksequential_56_lstm_56_while_lstm_cell_56_matmul_1_readvariableop_resource_0:
È Y
Jsequential_56_lstm_56_while_lstm_cell_56_biasadd_readvariableop_resource_0:	 (
$sequential_56_lstm_56_while_identity*
&sequential_56_lstm_56_while_identity_1*
&sequential_56_lstm_56_while_identity_2*
&sequential_56_lstm_56_while_identity_3*
&sequential_56_lstm_56_while_identity_4*
&sequential_56_lstm_56_while_identity_5E
Asequential_56_lstm_56_while_sequential_56_lstm_56_strided_slice_1
}sequential_56_lstm_56_while_tensorarrayv2read_tensorlistgetitem_sequential_56_lstm_56_tensorarrayunstack_tensorlistfromtensorZ
Gsequential_56_lstm_56_while_lstm_cell_56_matmul_readvariableop_resource:	 ]
Isequential_56_lstm_56_while_lstm_cell_56_matmul_1_readvariableop_resource:
È W
Hsequential_56_lstm_56_while_lstm_cell_56_biasadd_readvariableop_resource:	 ¢?sequential_56/lstm_56/while/lstm_cell_56/BiasAdd/ReadVariableOp¢>sequential_56/lstm_56/while/lstm_cell_56/MatMul/ReadVariableOp¢@sequential_56/lstm_56/while/lstm_cell_56/MatMul_1/ReadVariableOpï
Msequential_56/lstm_56/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2O
Msequential_56/lstm_56/while/TensorArrayV2Read/TensorListGetItem/element_shape×
?sequential_56/lstm_56/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_56_lstm_56_while_tensorarrayv2read_tensorlistgetitem_sequential_56_lstm_56_tensorarrayunstack_tensorlistfromtensor_0'sequential_56_lstm_56_while_placeholderVsequential_56/lstm_56/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02A
?sequential_56/lstm_56/while/TensorArrayV2Read/TensorListGetItem
>sequential_56/lstm_56/while/lstm_cell_56/MatMul/ReadVariableOpReadVariableOpIsequential_56_lstm_56_while_lstm_cell_56_matmul_readvariableop_resource_0*
_output_shapes
:	 *
dtype02@
>sequential_56/lstm_56/while/lstm_cell_56/MatMul/ReadVariableOp¯
/sequential_56/lstm_56/while/lstm_cell_56/MatMulMatMulFsequential_56/lstm_56/while/TensorArrayV2Read/TensorListGetItem:item:0Fsequential_56/lstm_56/while/lstm_cell_56/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 21
/sequential_56/lstm_56/while/lstm_cell_56/MatMul
@sequential_56/lstm_56/while/lstm_cell_56/MatMul_1/ReadVariableOpReadVariableOpKsequential_56_lstm_56_while_lstm_cell_56_matmul_1_readvariableop_resource_0* 
_output_shapes
:
È *
dtype02B
@sequential_56/lstm_56/while/lstm_cell_56/MatMul_1/ReadVariableOp
1sequential_56/lstm_56/while/lstm_cell_56/MatMul_1MatMul)sequential_56_lstm_56_while_placeholder_2Hsequential_56/lstm_56/while/lstm_cell_56/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 23
1sequential_56/lstm_56/while/lstm_cell_56/MatMul_1
,sequential_56/lstm_56/while/lstm_cell_56/addAddV29sequential_56/lstm_56/while/lstm_cell_56/MatMul:product:0;sequential_56/lstm_56/while/lstm_cell_56/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2.
,sequential_56/lstm_56/while/lstm_cell_56/add
?sequential_56/lstm_56/while/lstm_cell_56/BiasAdd/ReadVariableOpReadVariableOpJsequential_56_lstm_56_while_lstm_cell_56_biasadd_readvariableop_resource_0*
_output_shapes	
: *
dtype02A
?sequential_56/lstm_56/while/lstm_cell_56/BiasAdd/ReadVariableOp
0sequential_56/lstm_56/while/lstm_cell_56/BiasAddBiasAdd0sequential_56/lstm_56/while/lstm_cell_56/add:z:0Gsequential_56/lstm_56/while/lstm_cell_56/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 22
0sequential_56/lstm_56/while/lstm_cell_56/BiasAdd¶
8sequential_56/lstm_56/while/lstm_cell_56/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2:
8sequential_56/lstm_56/while/lstm_cell_56/split/split_dimç
.sequential_56/lstm_56/while/lstm_cell_56/splitSplitAsequential_56/lstm_56/while/lstm_cell_56/split/split_dim:output:09sequential_56/lstm_56/while/lstm_cell_56/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split20
.sequential_56/lstm_56/while/lstm_cell_56/splitÛ
0sequential_56/lstm_56/while/lstm_cell_56/SigmoidSigmoid7sequential_56/lstm_56/while/lstm_cell_56/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ22
0sequential_56/lstm_56/while/lstm_cell_56/Sigmoidß
2sequential_56/lstm_56/while/lstm_cell_56/Sigmoid_1Sigmoid7sequential_56/lstm_56/while/lstm_cell_56/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ24
2sequential_56/lstm_56/while/lstm_cell_56/Sigmoid_1ù
,sequential_56/lstm_56/while/lstm_cell_56/mulMul6sequential_56/lstm_56/while/lstm_cell_56/Sigmoid_1:y:0)sequential_56_lstm_56_while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2.
,sequential_56/lstm_56/while/lstm_cell_56/mulÒ
-sequential_56/lstm_56/while/lstm_cell_56/ReluRelu7sequential_56/lstm_56/while/lstm_cell_56/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2/
-sequential_56/lstm_56/while/lstm_cell_56/Relu
.sequential_56/lstm_56/while/lstm_cell_56/mul_1Mul4sequential_56/lstm_56/while/lstm_cell_56/Sigmoid:y:0;sequential_56/lstm_56/while/lstm_cell_56/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ20
.sequential_56/lstm_56/while/lstm_cell_56/mul_1
.sequential_56/lstm_56/while/lstm_cell_56/add_1AddV20sequential_56/lstm_56/while/lstm_cell_56/mul:z:02sequential_56/lstm_56/while/lstm_cell_56/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ20
.sequential_56/lstm_56/while/lstm_cell_56/add_1ß
2sequential_56/lstm_56/while/lstm_cell_56/Sigmoid_2Sigmoid7sequential_56/lstm_56/while/lstm_cell_56/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ24
2sequential_56/lstm_56/while/lstm_cell_56/Sigmoid_2Ñ
/sequential_56/lstm_56/while/lstm_cell_56/Relu_1Relu2sequential_56/lstm_56/while/lstm_cell_56/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ21
/sequential_56/lstm_56/while/lstm_cell_56/Relu_1
.sequential_56/lstm_56/while/lstm_cell_56/mul_2Mul6sequential_56/lstm_56/while/lstm_cell_56/Sigmoid_2:y:0=sequential_56/lstm_56/while/lstm_cell_56/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ20
.sequential_56/lstm_56/while/lstm_cell_56/mul_2Î
@sequential_56/lstm_56/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_56_lstm_56_while_placeholder_1'sequential_56_lstm_56_while_placeholder2sequential_56/lstm_56/while/lstm_cell_56/mul_2:z:0*
_output_shapes
: *
element_dtype02B
@sequential_56/lstm_56/while/TensorArrayV2Write/TensorListSetItem
!sequential_56/lstm_56/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_56/lstm_56/while/add/yÁ
sequential_56/lstm_56/while/addAddV2'sequential_56_lstm_56_while_placeholder*sequential_56/lstm_56/while/add/y:output:0*
T0*
_output_shapes
: 2!
sequential_56/lstm_56/while/add
#sequential_56/lstm_56/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#sequential_56/lstm_56/while/add_1/yä
!sequential_56/lstm_56/while/add_1AddV2Dsequential_56_lstm_56_while_sequential_56_lstm_56_while_loop_counter,sequential_56/lstm_56/while/add_1/y:output:0*
T0*
_output_shapes
: 2#
!sequential_56/lstm_56/while/add_1æ
$sequential_56/lstm_56/while/IdentityIdentity%sequential_56/lstm_56/while/add_1:z:0@^sequential_56/lstm_56/while/lstm_cell_56/BiasAdd/ReadVariableOp?^sequential_56/lstm_56/while/lstm_cell_56/MatMul/ReadVariableOpA^sequential_56/lstm_56/while/lstm_cell_56/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_56/lstm_56/while/Identity
&sequential_56/lstm_56/while/Identity_1IdentityJsequential_56_lstm_56_while_sequential_56_lstm_56_while_maximum_iterations@^sequential_56/lstm_56/while/lstm_cell_56/BiasAdd/ReadVariableOp?^sequential_56/lstm_56/while/lstm_cell_56/MatMul/ReadVariableOpA^sequential_56/lstm_56/while/lstm_cell_56/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2(
&sequential_56/lstm_56/while/Identity_1è
&sequential_56/lstm_56/while/Identity_2Identity#sequential_56/lstm_56/while/add:z:0@^sequential_56/lstm_56/while/lstm_cell_56/BiasAdd/ReadVariableOp?^sequential_56/lstm_56/while/lstm_cell_56/MatMul/ReadVariableOpA^sequential_56/lstm_56/while/lstm_cell_56/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2(
&sequential_56/lstm_56/while/Identity_2
&sequential_56/lstm_56/while/Identity_3IdentityPsequential_56/lstm_56/while/TensorArrayV2Write/TensorListSetItem:output_handle:0@^sequential_56/lstm_56/while/lstm_cell_56/BiasAdd/ReadVariableOp?^sequential_56/lstm_56/while/lstm_cell_56/MatMul/ReadVariableOpA^sequential_56/lstm_56/while/lstm_cell_56/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2(
&sequential_56/lstm_56/while/Identity_3
&sequential_56/lstm_56/while/Identity_4Identity2sequential_56/lstm_56/while/lstm_cell_56/mul_2:z:0@^sequential_56/lstm_56/while/lstm_cell_56/BiasAdd/ReadVariableOp?^sequential_56/lstm_56/while/lstm_cell_56/MatMul/ReadVariableOpA^sequential_56/lstm_56/while/lstm_cell_56/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2(
&sequential_56/lstm_56/while/Identity_4
&sequential_56/lstm_56/while/Identity_5Identity2sequential_56/lstm_56/while/lstm_cell_56/add_1:z:0@^sequential_56/lstm_56/while/lstm_cell_56/BiasAdd/ReadVariableOp?^sequential_56/lstm_56/while/lstm_cell_56/MatMul/ReadVariableOpA^sequential_56/lstm_56/while/lstm_cell_56/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2(
&sequential_56/lstm_56/while/Identity_5"U
$sequential_56_lstm_56_while_identity-sequential_56/lstm_56/while/Identity:output:0"Y
&sequential_56_lstm_56_while_identity_1/sequential_56/lstm_56/while/Identity_1:output:0"Y
&sequential_56_lstm_56_while_identity_2/sequential_56/lstm_56/while/Identity_2:output:0"Y
&sequential_56_lstm_56_while_identity_3/sequential_56/lstm_56/while/Identity_3:output:0"Y
&sequential_56_lstm_56_while_identity_4/sequential_56/lstm_56/while/Identity_4:output:0"Y
&sequential_56_lstm_56_while_identity_5/sequential_56/lstm_56/while/Identity_5:output:0"
Hsequential_56_lstm_56_while_lstm_cell_56_biasadd_readvariableop_resourceJsequential_56_lstm_56_while_lstm_cell_56_biasadd_readvariableop_resource_0"
Isequential_56_lstm_56_while_lstm_cell_56_matmul_1_readvariableop_resourceKsequential_56_lstm_56_while_lstm_cell_56_matmul_1_readvariableop_resource_0"
Gsequential_56_lstm_56_while_lstm_cell_56_matmul_readvariableop_resourceIsequential_56_lstm_56_while_lstm_cell_56_matmul_readvariableop_resource_0"
Asequential_56_lstm_56_while_sequential_56_lstm_56_strided_slice_1Csequential_56_lstm_56_while_sequential_56_lstm_56_strided_slice_1_0"
}sequential_56_lstm_56_while_tensorarrayv2read_tensorlistgetitem_sequential_56_lstm_56_tensorarrayunstack_tensorlistfromtensorsequential_56_lstm_56_while_tensorarrayv2read_tensorlistgetitem_sequential_56_lstm_56_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : 2
?sequential_56/lstm_56/while/lstm_cell_56/BiasAdd/ReadVariableOp?sequential_56/lstm_56/while/lstm_cell_56/BiasAdd/ReadVariableOp2
>sequential_56/lstm_56/while/lstm_cell_56/MatMul/ReadVariableOp>sequential_56/lstm_56/while/lstm_cell_56/MatMul/ReadVariableOp2
@sequential_56/lstm_56/while/lstm_cell_56/MatMul_1/ReadVariableOp@sequential_56/lstm_56/while/lstm_cell_56/MatMul_1/ReadVariableOp: 
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
	
ª
/__inference_sequential_56_layer_call_fn_2627988

inputs
unknown:	 
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
J__inference_sequential_56_layer_call_and_return_conditional_losses_26275172
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

É
J__inference_sequential_56_layer_call_and_return_conditional_losses_2627265

inputs"
lstm_56_2627224:	 #
lstm_56_2627226:
È 
lstm_56_2627228:	 $
dense_112_2627243:	Èd
dense_112_2627245:d#
dense_113_2627259:d
dense_113_2627261:
identity¢!dense_112/StatefulPartitionedCall¢!dense_113/StatefulPartitionedCall¢lstm_56/StatefulPartitionedCall¦
lstm_56/StatefulPartitionedCallStatefulPartitionedCallinputslstm_56_2627224lstm_56_2627226lstm_56_2627228*
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
D__inference_lstm_56_layer_call_and_return_conditional_losses_26272232!
lstm_56/StatefulPartitionedCall¾
!dense_112/StatefulPartitionedCallStatefulPartitionedCall(lstm_56/StatefulPartitionedCall:output:0dense_112_2627243dense_112_2627245*
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
F__inference_dense_112_layer_call_and_return_conditional_losses_26272422#
!dense_112/StatefulPartitionedCallÀ
!dense_113/StatefulPartitionedCallStatefulPartitionedCall*dense_112/StatefulPartitionedCall:output:0dense_113_2627259dense_113_2627261*
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
F__inference_dense_113_layer_call_and_return_conditional_losses_26272582#
!dense_113/StatefulPartitionedCallè
IdentityIdentity*dense_113/StatefulPartitionedCall:output:0"^dense_112/StatefulPartitionedCall"^dense_113/StatefulPartitionedCall ^lstm_56/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2F
!dense_112/StatefulPartitionedCall!dense_112/StatefulPartitionedCall2F
!dense_113/StatefulPartitionedCall!dense_113/StatefulPartitionedCall2B
lstm_56/StatefulPartitionedCalllstm_56/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Õ
·
)__inference_lstm_56_layer_call_fn_2628625

inputs
unknown:	 
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
D__inference_lstm_56_layer_call_and_return_conditional_losses_26272232
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
C
Ó
while_body_2627139
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_56_matmul_readvariableop_resource_0:	 I
5while_lstm_cell_56_matmul_1_readvariableop_resource_0:
È C
4while_lstm_cell_56_biasadd_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_56_matmul_readvariableop_resource:	 G
3while_lstm_cell_56_matmul_1_readvariableop_resource:
È A
2while_lstm_cell_56_biasadd_readvariableop_resource:	 ¢)while/lstm_cell_56/BiasAdd/ReadVariableOp¢(while/lstm_cell_56/MatMul/ReadVariableOp¢*while/lstm_cell_56/MatMul_1/ReadVariableOpÃ
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
)while/TensorArrayV2Read/TensorListGetItemÉ
(while/lstm_cell_56/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_56_matmul_readvariableop_resource_0*
_output_shapes
:	 *
dtype02*
(while/lstm_cell_56/MatMul/ReadVariableOp×
while/lstm_cell_56/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_56/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_56/MatMulÐ
*while/lstm_cell_56/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_56_matmul_1_readvariableop_resource_0* 
_output_shapes
:
È *
dtype02,
*while/lstm_cell_56/MatMul_1/ReadVariableOpÀ
while/lstm_cell_56/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_56/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_56/MatMul_1¸
while/lstm_cell_56/addAddV2#while/lstm_cell_56/MatMul:product:0%while/lstm_cell_56/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_56/addÈ
)while/lstm_cell_56/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_56_biasadd_readvariableop_resource_0*
_output_shapes	
: *
dtype02+
)while/lstm_cell_56/BiasAdd/ReadVariableOpÅ
while/lstm_cell_56/BiasAddBiasAddwhile/lstm_cell_56/add:z:01while/lstm_cell_56/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_56/BiasAdd
"while/lstm_cell_56/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_56/split/split_dim
while/lstm_cell_56/splitSplit+while/lstm_cell_56/split/split_dim:output:0#while/lstm_cell_56/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
while/lstm_cell_56/split
while/lstm_cell_56/SigmoidSigmoid!while/lstm_cell_56/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_56/Sigmoid
while/lstm_cell_56/Sigmoid_1Sigmoid!while/lstm_cell_56/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_56/Sigmoid_1¡
while/lstm_cell_56/mulMul while/lstm_cell_56/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_56/mul
while/lstm_cell_56/ReluRelu!while/lstm_cell_56/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_56/Reluµ
while/lstm_cell_56/mul_1Mulwhile/lstm_cell_56/Sigmoid:y:0%while/lstm_cell_56/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_56/mul_1ª
while/lstm_cell_56/add_1AddV2while/lstm_cell_56/mul:z:0while/lstm_cell_56/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_56/add_1
while/lstm_cell_56/Sigmoid_2Sigmoid!while/lstm_cell_56/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_56/Sigmoid_2
while/lstm_cell_56/Relu_1Reluwhile/lstm_cell_56/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_56/Relu_1¹
while/lstm_cell_56/mul_2Mul while/lstm_cell_56/Sigmoid_2:y:0'while/lstm_cell_56/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_56/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_56/mul_2:z:0*
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
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_56/BiasAdd/ReadVariableOp)^while/lstm_cell_56/MatMul/ReadVariableOp+^while/lstm_cell_56/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityõ
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_56/BiasAdd/ReadVariableOp)^while/lstm_cell_56/MatMul/ReadVariableOp+^while/lstm_cell_56/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ä
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_56/BiasAdd/ReadVariableOp)^while/lstm_cell_56/MatMul/ReadVariableOp+^while/lstm_cell_56/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_56/BiasAdd/ReadVariableOp)^while/lstm_cell_56/MatMul/ReadVariableOp+^while/lstm_cell_56/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_56/mul_2:z:0*^while/lstm_cell_56/BiasAdd/ReadVariableOp)^while/lstm_cell_56/MatMul/ReadVariableOp+^while/lstm_cell_56/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_56/add_1:z:0*^while/lstm_cell_56/BiasAdd/ReadVariableOp)^while/lstm_cell_56/MatMul/ReadVariableOp+^while/lstm_cell_56/MatMul_1/ReadVariableOp*
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
2while_lstm_cell_56_biasadd_readvariableop_resource4while_lstm_cell_56_biasadd_readvariableop_resource_0"l
3while_lstm_cell_56_matmul_1_readvariableop_resource5while_lstm_cell_56_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_56_matmul_readvariableop_resource3while_lstm_cell_56_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : 2V
)while/lstm_cell_56/BiasAdd/ReadVariableOp)while/lstm_cell_56/BiasAdd/ReadVariableOp2T
(while/lstm_cell_56/MatMul/ReadVariableOp(while/lstm_cell_56/MatMul/ReadVariableOp2X
*while/lstm_cell_56/MatMul_1/ReadVariableOp*while/lstm_cell_56/MatMul_1/ReadVariableOp: 
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
C
Ó
while_body_2628206
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_56_matmul_readvariableop_resource_0:	 I
5while_lstm_cell_56_matmul_1_readvariableop_resource_0:
È C
4while_lstm_cell_56_biasadd_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_56_matmul_readvariableop_resource:	 G
3while_lstm_cell_56_matmul_1_readvariableop_resource:
È A
2while_lstm_cell_56_biasadd_readvariableop_resource:	 ¢)while/lstm_cell_56/BiasAdd/ReadVariableOp¢(while/lstm_cell_56/MatMul/ReadVariableOp¢*while/lstm_cell_56/MatMul_1/ReadVariableOpÃ
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
)while/TensorArrayV2Read/TensorListGetItemÉ
(while/lstm_cell_56/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_56_matmul_readvariableop_resource_0*
_output_shapes
:	 *
dtype02*
(while/lstm_cell_56/MatMul/ReadVariableOp×
while/lstm_cell_56/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_56/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_56/MatMulÐ
*while/lstm_cell_56/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_56_matmul_1_readvariableop_resource_0* 
_output_shapes
:
È *
dtype02,
*while/lstm_cell_56/MatMul_1/ReadVariableOpÀ
while/lstm_cell_56/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_56/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_56/MatMul_1¸
while/lstm_cell_56/addAddV2#while/lstm_cell_56/MatMul:product:0%while/lstm_cell_56/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_56/addÈ
)while/lstm_cell_56/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_56_biasadd_readvariableop_resource_0*
_output_shapes	
: *
dtype02+
)while/lstm_cell_56/BiasAdd/ReadVariableOpÅ
while/lstm_cell_56/BiasAddBiasAddwhile/lstm_cell_56/add:z:01while/lstm_cell_56/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_56/BiasAdd
"while/lstm_cell_56/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_56/split/split_dim
while/lstm_cell_56/splitSplit+while/lstm_cell_56/split/split_dim:output:0#while/lstm_cell_56/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
while/lstm_cell_56/split
while/lstm_cell_56/SigmoidSigmoid!while/lstm_cell_56/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_56/Sigmoid
while/lstm_cell_56/Sigmoid_1Sigmoid!while/lstm_cell_56/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_56/Sigmoid_1¡
while/lstm_cell_56/mulMul while/lstm_cell_56/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_56/mul
while/lstm_cell_56/ReluRelu!while/lstm_cell_56/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_56/Reluµ
while/lstm_cell_56/mul_1Mulwhile/lstm_cell_56/Sigmoid:y:0%while/lstm_cell_56/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_56/mul_1ª
while/lstm_cell_56/add_1AddV2while/lstm_cell_56/mul:z:0while/lstm_cell_56/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_56/add_1
while/lstm_cell_56/Sigmoid_2Sigmoid!while/lstm_cell_56/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_56/Sigmoid_2
while/lstm_cell_56/Relu_1Reluwhile/lstm_cell_56/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_56/Relu_1¹
while/lstm_cell_56/mul_2Mul while/lstm_cell_56/Sigmoid_2:y:0'while/lstm_cell_56/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_56/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_56/mul_2:z:0*
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
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_56/BiasAdd/ReadVariableOp)^while/lstm_cell_56/MatMul/ReadVariableOp+^while/lstm_cell_56/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityõ
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_56/BiasAdd/ReadVariableOp)^while/lstm_cell_56/MatMul/ReadVariableOp+^while/lstm_cell_56/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ä
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_56/BiasAdd/ReadVariableOp)^while/lstm_cell_56/MatMul/ReadVariableOp+^while/lstm_cell_56/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_56/BiasAdd/ReadVariableOp)^while/lstm_cell_56/MatMul/ReadVariableOp+^while/lstm_cell_56/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_56/mul_2:z:0*^while/lstm_cell_56/BiasAdd/ReadVariableOp)^while/lstm_cell_56/MatMul/ReadVariableOp+^while/lstm_cell_56/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_56/add_1:z:0*^while/lstm_cell_56/BiasAdd/ReadVariableOp)^while/lstm_cell_56/MatMul/ReadVariableOp+^while/lstm_cell_56/MatMul_1/ReadVariableOp*
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
2while_lstm_cell_56_biasadd_readvariableop_resource4while_lstm_cell_56_biasadd_readvariableop_resource_0"l
3while_lstm_cell_56_matmul_1_readvariableop_resource5while_lstm_cell_56_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_56_matmul_readvariableop_resource3while_lstm_cell_56_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : 2V
)while/lstm_cell_56/BiasAdd/ReadVariableOp)while/lstm_cell_56/BiasAdd/ReadVariableOp2T
(while/lstm_cell_56/MatMul/ReadVariableOp(while/lstm_cell_56/MatMul/ReadVariableOp2X
*while/lstm_cell_56/MatMul_1/ReadVariableOp*while/lstm_cell_56/MatMul_1/ReadVariableOp: 
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
D__inference_lstm_56_layer_call_and_return_conditional_losses_2628441

inputs>
+lstm_cell_56_matmul_readvariableop_resource:	 A
-lstm_cell_56_matmul_1_readvariableop_resource:
È ;
,lstm_cell_56_biasadd_readvariableop_resource:	 
identity¢#lstm_cell_56/BiasAdd/ReadVariableOp¢"lstm_cell_56/MatMul/ReadVariableOp¢$lstm_cell_56/MatMul_1/ReadVariableOp¢whileD
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
strided_slice_2µ
"lstm_cell_56/MatMul/ReadVariableOpReadVariableOp+lstm_cell_56_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype02$
"lstm_cell_56/MatMul/ReadVariableOp­
lstm_cell_56/MatMulMatMulstrided_slice_2:output:0*lstm_cell_56/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_56/MatMul¼
$lstm_cell_56/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_56_matmul_1_readvariableop_resource* 
_output_shapes
:
È *
dtype02&
$lstm_cell_56/MatMul_1/ReadVariableOp©
lstm_cell_56/MatMul_1MatMulzeros:output:0,lstm_cell_56/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_56/MatMul_1 
lstm_cell_56/addAddV2lstm_cell_56/MatMul:product:0lstm_cell_56/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_56/add´
#lstm_cell_56/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_56_biasadd_readvariableop_resource*
_output_shapes	
: *
dtype02%
#lstm_cell_56/BiasAdd/ReadVariableOp­
lstm_cell_56/BiasAddBiasAddlstm_cell_56/add:z:0+lstm_cell_56/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_56/BiasAdd~
lstm_cell_56/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_56/split/split_dim÷
lstm_cell_56/splitSplit%lstm_cell_56/split/split_dim:output:0lstm_cell_56/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
lstm_cell_56/split
lstm_cell_56/SigmoidSigmoidlstm_cell_56/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_56/Sigmoid
lstm_cell_56/Sigmoid_1Sigmoidlstm_cell_56/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_56/Sigmoid_1
lstm_cell_56/mulMullstm_cell_56/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_56/mul~
lstm_cell_56/ReluRelulstm_cell_56/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_56/Relu
lstm_cell_56/mul_1Mullstm_cell_56/Sigmoid:y:0lstm_cell_56/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_56/mul_1
lstm_cell_56/add_1AddV2lstm_cell_56/mul:z:0lstm_cell_56/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_56/add_1
lstm_cell_56/Sigmoid_2Sigmoidlstm_cell_56/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_56/Sigmoid_2}
lstm_cell_56/Relu_1Relulstm_cell_56/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_56/Relu_1¡
lstm_cell_56/mul_2Mullstm_cell_56/Sigmoid_2:y:0!lstm_cell_56/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_56/mul_2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_56_matmul_readvariableop_resource-lstm_cell_56_matmul_1_readvariableop_resource,lstm_cell_56_biasadd_readvariableop_resource*
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
while_body_2628357*
condR
while_cond_2628356*M
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
IdentityIdentitystrided_slice_3:output:0$^lstm_cell_56/BiasAdd/ReadVariableOp#^lstm_cell_56/MatMul/ReadVariableOp%^lstm_cell_56/MatMul_1/ReadVariableOp^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_56/BiasAdd/ReadVariableOp#lstm_cell_56/BiasAdd/ReadVariableOp2H
"lstm_cell_56/MatMul/ReadVariableOp"lstm_cell_56/MatMul/ReadVariableOp2L
$lstm_cell_56/MatMul_1/ReadVariableOp$lstm_cell_56/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
	
ª
/__inference_sequential_56_layer_call_fn_2627969

inputs
unknown:	 
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
J__inference_sequential_56_layer_call_and_return_conditional_losses_26272652
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
«|
Ð
J__inference_sequential_56_layer_call_and_return_conditional_losses_2627786

inputsF
3lstm_56_lstm_cell_56_matmul_readvariableop_resource:	 I
5lstm_56_lstm_cell_56_matmul_1_readvariableop_resource:
È C
4lstm_56_lstm_cell_56_biasadd_readvariableop_resource:	 ;
(dense_112_matmul_readvariableop_resource:	Èd7
)dense_112_biasadd_readvariableop_resource:d:
(dense_113_matmul_readvariableop_resource:d7
)dense_113_biasadd_readvariableop_resource:
identity¢ dense_112/BiasAdd/ReadVariableOp¢dense_112/MatMul/ReadVariableOp¢ dense_113/BiasAdd/ReadVariableOp¢dense_113/MatMul/ReadVariableOp¢+lstm_56/lstm_cell_56/BiasAdd/ReadVariableOp¢*lstm_56/lstm_cell_56/MatMul/ReadVariableOp¢,lstm_56/lstm_cell_56/MatMul_1/ReadVariableOp¢lstm_56/whileT
lstm_56/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_56/Shape
lstm_56/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_56/strided_slice/stack
lstm_56/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_56/strided_slice/stack_1
lstm_56/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_56/strided_slice/stack_2
lstm_56/strided_sliceStridedSlicelstm_56/Shape:output:0$lstm_56/strided_slice/stack:output:0&lstm_56/strided_slice/stack_1:output:0&lstm_56/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_56/strided_slicem
lstm_56/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :È2
lstm_56/zeros/mul/y
lstm_56/zeros/mulMullstm_56/strided_slice:output:0lstm_56/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_56/zeros/mulo
lstm_56/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_56/zeros/Less/y
lstm_56/zeros/LessLesslstm_56/zeros/mul:z:0lstm_56/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_56/zeros/Lesss
lstm_56/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :È2
lstm_56/zeros/packed/1£
lstm_56/zeros/packedPacklstm_56/strided_slice:output:0lstm_56/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_56/zeros/packedo
lstm_56/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_56/zeros/Const
lstm_56/zerosFilllstm_56/zeros/packed:output:0lstm_56/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_56/zerosq
lstm_56/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :È2
lstm_56/zeros_1/mul/y
lstm_56/zeros_1/mulMullstm_56/strided_slice:output:0lstm_56/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_56/zeros_1/muls
lstm_56/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_56/zeros_1/Less/y
lstm_56/zeros_1/LessLesslstm_56/zeros_1/mul:z:0lstm_56/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_56/zeros_1/Lessw
lstm_56/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :È2
lstm_56/zeros_1/packed/1©
lstm_56/zeros_1/packedPacklstm_56/strided_slice:output:0!lstm_56/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_56/zeros_1/packeds
lstm_56/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_56/zeros_1/Const
lstm_56/zeros_1Filllstm_56/zeros_1/packed:output:0lstm_56/zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_56/zeros_1
lstm_56/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_56/transpose/perm
lstm_56/transpose	Transposeinputslstm_56/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_56/transposeg
lstm_56/Shape_1Shapelstm_56/transpose:y:0*
T0*
_output_shapes
:2
lstm_56/Shape_1
lstm_56/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_56/strided_slice_1/stack
lstm_56/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_56/strided_slice_1/stack_1
lstm_56/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_56/strided_slice_1/stack_2
lstm_56/strided_slice_1StridedSlicelstm_56/Shape_1:output:0&lstm_56/strided_slice_1/stack:output:0(lstm_56/strided_slice_1/stack_1:output:0(lstm_56/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_56/strided_slice_1
#lstm_56/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2%
#lstm_56/TensorArrayV2/element_shapeÒ
lstm_56/TensorArrayV2TensorListReserve,lstm_56/TensorArrayV2/element_shape:output:0 lstm_56/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_56/TensorArrayV2Ï
=lstm_56/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2?
=lstm_56/TensorArrayUnstack/TensorListFromTensor/element_shape
/lstm_56/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_56/transpose:y:0Flstm_56/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_56/TensorArrayUnstack/TensorListFromTensor
lstm_56/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_56/strided_slice_2/stack
lstm_56/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_56/strided_slice_2/stack_1
lstm_56/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_56/strided_slice_2/stack_2¬
lstm_56/strided_slice_2StridedSlicelstm_56/transpose:y:0&lstm_56/strided_slice_2/stack:output:0(lstm_56/strided_slice_2/stack_1:output:0(lstm_56/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_56/strided_slice_2Í
*lstm_56/lstm_cell_56/MatMul/ReadVariableOpReadVariableOp3lstm_56_lstm_cell_56_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype02,
*lstm_56/lstm_cell_56/MatMul/ReadVariableOpÍ
lstm_56/lstm_cell_56/MatMulMatMul lstm_56/strided_slice_2:output:02lstm_56/lstm_cell_56/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_56/lstm_cell_56/MatMulÔ
,lstm_56/lstm_cell_56/MatMul_1/ReadVariableOpReadVariableOp5lstm_56_lstm_cell_56_matmul_1_readvariableop_resource* 
_output_shapes
:
È *
dtype02.
,lstm_56/lstm_cell_56/MatMul_1/ReadVariableOpÉ
lstm_56/lstm_cell_56/MatMul_1MatMullstm_56/zeros:output:04lstm_56/lstm_cell_56/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_56/lstm_cell_56/MatMul_1À
lstm_56/lstm_cell_56/addAddV2%lstm_56/lstm_cell_56/MatMul:product:0'lstm_56/lstm_cell_56/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_56/lstm_cell_56/addÌ
+lstm_56/lstm_cell_56/BiasAdd/ReadVariableOpReadVariableOp4lstm_56_lstm_cell_56_biasadd_readvariableop_resource*
_output_shapes	
: *
dtype02-
+lstm_56/lstm_cell_56/BiasAdd/ReadVariableOpÍ
lstm_56/lstm_cell_56/BiasAddBiasAddlstm_56/lstm_cell_56/add:z:03lstm_56/lstm_cell_56/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_56/lstm_cell_56/BiasAdd
$lstm_56/lstm_cell_56/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_56/lstm_cell_56/split/split_dim
lstm_56/lstm_cell_56/splitSplit-lstm_56/lstm_cell_56/split/split_dim:output:0%lstm_56/lstm_cell_56/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
lstm_56/lstm_cell_56/split
lstm_56/lstm_cell_56/SigmoidSigmoid#lstm_56/lstm_cell_56/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_56/lstm_cell_56/Sigmoid£
lstm_56/lstm_cell_56/Sigmoid_1Sigmoid#lstm_56/lstm_cell_56/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2 
lstm_56/lstm_cell_56/Sigmoid_1¬
lstm_56/lstm_cell_56/mulMul"lstm_56/lstm_cell_56/Sigmoid_1:y:0lstm_56/zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_56/lstm_cell_56/mul
lstm_56/lstm_cell_56/ReluRelu#lstm_56/lstm_cell_56/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_56/lstm_cell_56/Relu½
lstm_56/lstm_cell_56/mul_1Mul lstm_56/lstm_cell_56/Sigmoid:y:0'lstm_56/lstm_cell_56/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_56/lstm_cell_56/mul_1²
lstm_56/lstm_cell_56/add_1AddV2lstm_56/lstm_cell_56/mul:z:0lstm_56/lstm_cell_56/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_56/lstm_cell_56/add_1£
lstm_56/lstm_cell_56/Sigmoid_2Sigmoid#lstm_56/lstm_cell_56/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2 
lstm_56/lstm_cell_56/Sigmoid_2
lstm_56/lstm_cell_56/Relu_1Relulstm_56/lstm_cell_56/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_56/lstm_cell_56/Relu_1Á
lstm_56/lstm_cell_56/mul_2Mul"lstm_56/lstm_cell_56/Sigmoid_2:y:0)lstm_56/lstm_cell_56/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_56/lstm_cell_56/mul_2
%lstm_56/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÈ   2'
%lstm_56/TensorArrayV2_1/element_shapeØ
lstm_56/TensorArrayV2_1TensorListReserve.lstm_56/TensorArrayV2_1/element_shape:output:0 lstm_56/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_56/TensorArrayV2_1^
lstm_56/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_56/time
 lstm_56/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 lstm_56/while/maximum_iterationsz
lstm_56/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_56/while/loop_counterì
lstm_56/whileWhile#lstm_56/while/loop_counter:output:0)lstm_56/while/maximum_iterations:output:0lstm_56/time:output:0 lstm_56/TensorArrayV2_1:handle:0lstm_56/zeros:output:0lstm_56/zeros_1:output:0 lstm_56/strided_slice_1:output:0?lstm_56/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_56_lstm_cell_56_matmul_readvariableop_resource5lstm_56_lstm_cell_56_matmul_1_readvariableop_resource4lstm_56_lstm_cell_56_biasadd_readvariableop_resource*
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
lstm_56_while_body_2627689*&
condR
lstm_56_while_cond_2627688*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : *
parallel_iterations 2
lstm_56/whileÅ
8lstm_56/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÈ   2:
8lstm_56/TensorArrayV2Stack/TensorListStack/element_shape
*lstm_56/TensorArrayV2Stack/TensorListStackTensorListStacklstm_56/while:output:3Alstm_56/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*
element_dtype02,
*lstm_56/TensorArrayV2Stack/TensorListStack
lstm_56/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
lstm_56/strided_slice_3/stack
lstm_56/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_56/strided_slice_3/stack_1
lstm_56/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_56/strided_slice_3/stack_2Ë
lstm_56/strided_slice_3StridedSlice3lstm_56/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_56/strided_slice_3/stack:output:0(lstm_56/strided_slice_3/stack_1:output:0(lstm_56/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*
shrink_axis_mask2
lstm_56/strided_slice_3
lstm_56/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_56/transpose_1/permÆ
lstm_56/transpose_1	Transpose3lstm_56/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_56/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_56/transpose_1v
lstm_56/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_56/runtime¬
dense_112/MatMul/ReadVariableOpReadVariableOp(dense_112_matmul_readvariableop_resource*
_output_shapes
:	Èd*
dtype02!
dense_112/MatMul/ReadVariableOp«
dense_112/MatMulMatMul lstm_56/strided_slice_3:output:0'dense_112/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dense_112/MatMulª
 dense_112/BiasAdd/ReadVariableOpReadVariableOp)dense_112_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02"
 dense_112/BiasAdd/ReadVariableOp©
dense_112/BiasAddBiasAdddense_112/MatMul:product:0(dense_112/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dense_112/BiasAddv
dense_112/ReluReludense_112/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dense_112/Relu«
dense_113/MatMul/ReadVariableOpReadVariableOp(dense_113_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02!
dense_113/MatMul/ReadVariableOp§
dense_113/MatMulMatMuldense_112/Relu:activations:0'dense_113/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_113/MatMulª
 dense_113/BiasAdd/ReadVariableOpReadVariableOp)dense_113_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_113/BiasAdd/ReadVariableOp©
dense_113/BiasAddBiasAdddense_113/MatMul:product:0(dense_113/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_113/BiasAdd
IdentityIdentitydense_113/BiasAdd:output:0!^dense_112/BiasAdd/ReadVariableOp ^dense_112/MatMul/ReadVariableOp!^dense_113/BiasAdd/ReadVariableOp ^dense_113/MatMul/ReadVariableOp,^lstm_56/lstm_cell_56/BiasAdd/ReadVariableOp+^lstm_56/lstm_cell_56/MatMul/ReadVariableOp-^lstm_56/lstm_cell_56/MatMul_1/ReadVariableOp^lstm_56/while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2D
 dense_112/BiasAdd/ReadVariableOp dense_112/BiasAdd/ReadVariableOp2B
dense_112/MatMul/ReadVariableOpdense_112/MatMul/ReadVariableOp2D
 dense_113/BiasAdd/ReadVariableOp dense_113/BiasAdd/ReadVariableOp2B
dense_113/MatMul/ReadVariableOpdense_113/MatMul/ReadVariableOp2Z
+lstm_56/lstm_cell_56/BiasAdd/ReadVariableOp+lstm_56/lstm_cell_56/BiasAdd/ReadVariableOp2X
*lstm_56/lstm_cell_56/MatMul/ReadVariableOp*lstm_56/lstm_cell_56/MatMul/ReadVariableOp2\
,lstm_56/lstm_cell_56/MatMul_1/ReadVariableOp,lstm_56/lstm_cell_56/MatMul_1/ReadVariableOp2
lstm_56/whilelstm_56/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¥
Ð
J__inference_sequential_56_layer_call_and_return_conditional_losses_2627574
lstm_56_input"
lstm_56_2627556:	 #
lstm_56_2627558:
È 
lstm_56_2627560:	 $
dense_112_2627563:	Èd
dense_112_2627565:d#
dense_113_2627568:d
dense_113_2627570:
identity¢!dense_112/StatefulPartitionedCall¢!dense_113/StatefulPartitionedCall¢lstm_56/StatefulPartitionedCall­
lstm_56/StatefulPartitionedCallStatefulPartitionedCalllstm_56_inputlstm_56_2627556lstm_56_2627558lstm_56_2627560*
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
D__inference_lstm_56_layer_call_and_return_conditional_losses_26272232!
lstm_56/StatefulPartitionedCall¾
!dense_112/StatefulPartitionedCallStatefulPartitionedCall(lstm_56/StatefulPartitionedCall:output:0dense_112_2627563dense_112_2627565*
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
F__inference_dense_112_layer_call_and_return_conditional_losses_26272422#
!dense_112/StatefulPartitionedCallÀ
!dense_113/StatefulPartitionedCallStatefulPartitionedCall*dense_112/StatefulPartitionedCall:output:0dense_113_2627568dense_113_2627570*
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
F__inference_dense_113_layer_call_and_return_conditional_losses_26272582#
!dense_113/StatefulPartitionedCallè
IdentityIdentity*dense_113/StatefulPartitionedCall:output:0"^dense_112/StatefulPartitionedCall"^dense_113/StatefulPartitionedCall ^lstm_56/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2F
!dense_112/StatefulPartitionedCall!dense_112/StatefulPartitionedCall2F
!dense_113/StatefulPartitionedCall!dense_113/StatefulPartitionedCall2B
lstm_56/StatefulPartitionedCalllstm_56/StatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelstm_56_input
«|
Ð
J__inference_sequential_56_layer_call_and_return_conditional_losses_2627950

inputsF
3lstm_56_lstm_cell_56_matmul_readvariableop_resource:	 I
5lstm_56_lstm_cell_56_matmul_1_readvariableop_resource:
È C
4lstm_56_lstm_cell_56_biasadd_readvariableop_resource:	 ;
(dense_112_matmul_readvariableop_resource:	Èd7
)dense_112_biasadd_readvariableop_resource:d:
(dense_113_matmul_readvariableop_resource:d7
)dense_113_biasadd_readvariableop_resource:
identity¢ dense_112/BiasAdd/ReadVariableOp¢dense_112/MatMul/ReadVariableOp¢ dense_113/BiasAdd/ReadVariableOp¢dense_113/MatMul/ReadVariableOp¢+lstm_56/lstm_cell_56/BiasAdd/ReadVariableOp¢*lstm_56/lstm_cell_56/MatMul/ReadVariableOp¢,lstm_56/lstm_cell_56/MatMul_1/ReadVariableOp¢lstm_56/whileT
lstm_56/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_56/Shape
lstm_56/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_56/strided_slice/stack
lstm_56/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_56/strided_slice/stack_1
lstm_56/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_56/strided_slice/stack_2
lstm_56/strided_sliceStridedSlicelstm_56/Shape:output:0$lstm_56/strided_slice/stack:output:0&lstm_56/strided_slice/stack_1:output:0&lstm_56/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_56/strided_slicem
lstm_56/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :È2
lstm_56/zeros/mul/y
lstm_56/zeros/mulMullstm_56/strided_slice:output:0lstm_56/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_56/zeros/mulo
lstm_56/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_56/zeros/Less/y
lstm_56/zeros/LessLesslstm_56/zeros/mul:z:0lstm_56/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_56/zeros/Lesss
lstm_56/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :È2
lstm_56/zeros/packed/1£
lstm_56/zeros/packedPacklstm_56/strided_slice:output:0lstm_56/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_56/zeros/packedo
lstm_56/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_56/zeros/Const
lstm_56/zerosFilllstm_56/zeros/packed:output:0lstm_56/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_56/zerosq
lstm_56/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :È2
lstm_56/zeros_1/mul/y
lstm_56/zeros_1/mulMullstm_56/strided_slice:output:0lstm_56/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_56/zeros_1/muls
lstm_56/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_56/zeros_1/Less/y
lstm_56/zeros_1/LessLesslstm_56/zeros_1/mul:z:0lstm_56/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_56/zeros_1/Lessw
lstm_56/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :È2
lstm_56/zeros_1/packed/1©
lstm_56/zeros_1/packedPacklstm_56/strided_slice:output:0!lstm_56/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_56/zeros_1/packeds
lstm_56/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_56/zeros_1/Const
lstm_56/zeros_1Filllstm_56/zeros_1/packed:output:0lstm_56/zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_56/zeros_1
lstm_56/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_56/transpose/perm
lstm_56/transpose	Transposeinputslstm_56/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_56/transposeg
lstm_56/Shape_1Shapelstm_56/transpose:y:0*
T0*
_output_shapes
:2
lstm_56/Shape_1
lstm_56/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_56/strided_slice_1/stack
lstm_56/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_56/strided_slice_1/stack_1
lstm_56/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_56/strided_slice_1/stack_2
lstm_56/strided_slice_1StridedSlicelstm_56/Shape_1:output:0&lstm_56/strided_slice_1/stack:output:0(lstm_56/strided_slice_1/stack_1:output:0(lstm_56/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_56/strided_slice_1
#lstm_56/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2%
#lstm_56/TensorArrayV2/element_shapeÒ
lstm_56/TensorArrayV2TensorListReserve,lstm_56/TensorArrayV2/element_shape:output:0 lstm_56/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_56/TensorArrayV2Ï
=lstm_56/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2?
=lstm_56/TensorArrayUnstack/TensorListFromTensor/element_shape
/lstm_56/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_56/transpose:y:0Flstm_56/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_56/TensorArrayUnstack/TensorListFromTensor
lstm_56/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_56/strided_slice_2/stack
lstm_56/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_56/strided_slice_2/stack_1
lstm_56/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_56/strided_slice_2/stack_2¬
lstm_56/strided_slice_2StridedSlicelstm_56/transpose:y:0&lstm_56/strided_slice_2/stack:output:0(lstm_56/strided_slice_2/stack_1:output:0(lstm_56/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_56/strided_slice_2Í
*lstm_56/lstm_cell_56/MatMul/ReadVariableOpReadVariableOp3lstm_56_lstm_cell_56_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype02,
*lstm_56/lstm_cell_56/MatMul/ReadVariableOpÍ
lstm_56/lstm_cell_56/MatMulMatMul lstm_56/strided_slice_2:output:02lstm_56/lstm_cell_56/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_56/lstm_cell_56/MatMulÔ
,lstm_56/lstm_cell_56/MatMul_1/ReadVariableOpReadVariableOp5lstm_56_lstm_cell_56_matmul_1_readvariableop_resource* 
_output_shapes
:
È *
dtype02.
,lstm_56/lstm_cell_56/MatMul_1/ReadVariableOpÉ
lstm_56/lstm_cell_56/MatMul_1MatMullstm_56/zeros:output:04lstm_56/lstm_cell_56/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_56/lstm_cell_56/MatMul_1À
lstm_56/lstm_cell_56/addAddV2%lstm_56/lstm_cell_56/MatMul:product:0'lstm_56/lstm_cell_56/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_56/lstm_cell_56/addÌ
+lstm_56/lstm_cell_56/BiasAdd/ReadVariableOpReadVariableOp4lstm_56_lstm_cell_56_biasadd_readvariableop_resource*
_output_shapes	
: *
dtype02-
+lstm_56/lstm_cell_56/BiasAdd/ReadVariableOpÍ
lstm_56/lstm_cell_56/BiasAddBiasAddlstm_56/lstm_cell_56/add:z:03lstm_56/lstm_cell_56/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_56/lstm_cell_56/BiasAdd
$lstm_56/lstm_cell_56/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_56/lstm_cell_56/split/split_dim
lstm_56/lstm_cell_56/splitSplit-lstm_56/lstm_cell_56/split/split_dim:output:0%lstm_56/lstm_cell_56/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
lstm_56/lstm_cell_56/split
lstm_56/lstm_cell_56/SigmoidSigmoid#lstm_56/lstm_cell_56/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_56/lstm_cell_56/Sigmoid£
lstm_56/lstm_cell_56/Sigmoid_1Sigmoid#lstm_56/lstm_cell_56/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2 
lstm_56/lstm_cell_56/Sigmoid_1¬
lstm_56/lstm_cell_56/mulMul"lstm_56/lstm_cell_56/Sigmoid_1:y:0lstm_56/zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_56/lstm_cell_56/mul
lstm_56/lstm_cell_56/ReluRelu#lstm_56/lstm_cell_56/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_56/lstm_cell_56/Relu½
lstm_56/lstm_cell_56/mul_1Mul lstm_56/lstm_cell_56/Sigmoid:y:0'lstm_56/lstm_cell_56/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_56/lstm_cell_56/mul_1²
lstm_56/lstm_cell_56/add_1AddV2lstm_56/lstm_cell_56/mul:z:0lstm_56/lstm_cell_56/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_56/lstm_cell_56/add_1£
lstm_56/lstm_cell_56/Sigmoid_2Sigmoid#lstm_56/lstm_cell_56/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2 
lstm_56/lstm_cell_56/Sigmoid_2
lstm_56/lstm_cell_56/Relu_1Relulstm_56/lstm_cell_56/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_56/lstm_cell_56/Relu_1Á
lstm_56/lstm_cell_56/mul_2Mul"lstm_56/lstm_cell_56/Sigmoid_2:y:0)lstm_56/lstm_cell_56/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_56/lstm_cell_56/mul_2
%lstm_56/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÈ   2'
%lstm_56/TensorArrayV2_1/element_shapeØ
lstm_56/TensorArrayV2_1TensorListReserve.lstm_56/TensorArrayV2_1/element_shape:output:0 lstm_56/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_56/TensorArrayV2_1^
lstm_56/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_56/time
 lstm_56/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 lstm_56/while/maximum_iterationsz
lstm_56/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_56/while/loop_counterì
lstm_56/whileWhile#lstm_56/while/loop_counter:output:0)lstm_56/while/maximum_iterations:output:0lstm_56/time:output:0 lstm_56/TensorArrayV2_1:handle:0lstm_56/zeros:output:0lstm_56/zeros_1:output:0 lstm_56/strided_slice_1:output:0?lstm_56/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_56_lstm_cell_56_matmul_readvariableop_resource5lstm_56_lstm_cell_56_matmul_1_readvariableop_resource4lstm_56_lstm_cell_56_biasadd_readvariableop_resource*
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
lstm_56_while_body_2627853*&
condR
lstm_56_while_cond_2627852*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : *
parallel_iterations 2
lstm_56/whileÅ
8lstm_56/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÈ   2:
8lstm_56/TensorArrayV2Stack/TensorListStack/element_shape
*lstm_56/TensorArrayV2Stack/TensorListStackTensorListStacklstm_56/while:output:3Alstm_56/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*
element_dtype02,
*lstm_56/TensorArrayV2Stack/TensorListStack
lstm_56/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
lstm_56/strided_slice_3/stack
lstm_56/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_56/strided_slice_3/stack_1
lstm_56/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_56/strided_slice_3/stack_2Ë
lstm_56/strided_slice_3StridedSlice3lstm_56/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_56/strided_slice_3/stack:output:0(lstm_56/strided_slice_3/stack_1:output:0(lstm_56/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*
shrink_axis_mask2
lstm_56/strided_slice_3
lstm_56/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_56/transpose_1/permÆ
lstm_56/transpose_1	Transpose3lstm_56/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_56/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_56/transpose_1v
lstm_56/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_56/runtime¬
dense_112/MatMul/ReadVariableOpReadVariableOp(dense_112_matmul_readvariableop_resource*
_output_shapes
:	Èd*
dtype02!
dense_112/MatMul/ReadVariableOp«
dense_112/MatMulMatMul lstm_56/strided_slice_3:output:0'dense_112/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dense_112/MatMulª
 dense_112/BiasAdd/ReadVariableOpReadVariableOp)dense_112_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02"
 dense_112/BiasAdd/ReadVariableOp©
dense_112/BiasAddBiasAdddense_112/MatMul:product:0(dense_112/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dense_112/BiasAddv
dense_112/ReluReludense_112/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dense_112/Relu«
dense_113/MatMul/ReadVariableOpReadVariableOp(dense_113_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02!
dense_113/MatMul/ReadVariableOp§
dense_113/MatMulMatMuldense_112/Relu:activations:0'dense_113/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_113/MatMulª
 dense_113/BiasAdd/ReadVariableOpReadVariableOp)dense_113_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_113/BiasAdd/ReadVariableOp©
dense_113/BiasAddBiasAdddense_113/MatMul:product:0(dense_113/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_113/BiasAdd
IdentityIdentitydense_113/BiasAdd:output:0!^dense_112/BiasAdd/ReadVariableOp ^dense_112/MatMul/ReadVariableOp!^dense_113/BiasAdd/ReadVariableOp ^dense_113/MatMul/ReadVariableOp,^lstm_56/lstm_cell_56/BiasAdd/ReadVariableOp+^lstm_56/lstm_cell_56/MatMul/ReadVariableOp-^lstm_56/lstm_cell_56/MatMul_1/ReadVariableOp^lstm_56/while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2D
 dense_112/BiasAdd/ReadVariableOp dense_112/BiasAdd/ReadVariableOp2B
dense_112/MatMul/ReadVariableOpdense_112/MatMul/ReadVariableOp2D
 dense_113/BiasAdd/ReadVariableOp dense_113/BiasAdd/ReadVariableOp2B
dense_113/MatMul/ReadVariableOpdense_113/MatMul/ReadVariableOp2Z
+lstm_56/lstm_cell_56/BiasAdd/ReadVariableOp+lstm_56/lstm_cell_56/BiasAdd/ReadVariableOp2X
*lstm_56/lstm_cell_56/MatMul/ReadVariableOp*lstm_56/lstm_cell_56/MatMul/ReadVariableOp2\
,lstm_56/lstm_cell_56/MatMul_1/ReadVariableOp,lstm_56/lstm_cell_56/MatMul_1/ReadVariableOp2
lstm_56/whilelstm_56/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

É
J__inference_sequential_56_layer_call_and_return_conditional_losses_2627517

inputs"
lstm_56_2627499:	 #
lstm_56_2627501:
È 
lstm_56_2627503:	 $
dense_112_2627506:	Èd
dense_112_2627508:d#
dense_113_2627511:d
dense_113_2627513:
identity¢!dense_112/StatefulPartitionedCall¢!dense_113/StatefulPartitionedCall¢lstm_56/StatefulPartitionedCall¦
lstm_56/StatefulPartitionedCallStatefulPartitionedCallinputslstm_56_2627499lstm_56_2627501lstm_56_2627503*
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
D__inference_lstm_56_layer_call_and_return_conditional_losses_26274662!
lstm_56/StatefulPartitionedCall¾
!dense_112/StatefulPartitionedCallStatefulPartitionedCall(lstm_56/StatefulPartitionedCall:output:0dense_112_2627506dense_112_2627508*
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
F__inference_dense_112_layer_call_and_return_conditional_losses_26272422#
!dense_112/StatefulPartitionedCallÀ
!dense_113/StatefulPartitionedCallStatefulPartitionedCall*dense_112/StatefulPartitionedCall:output:0dense_113_2627511dense_113_2627513*
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
F__inference_dense_113_layer_call_and_return_conditional_losses_26272582#
!dense_113/StatefulPartitionedCallè
IdentityIdentity*dense_113/StatefulPartitionedCall:output:0"^dense_112/StatefulPartitionedCall"^dense_113/StatefulPartitionedCall ^lstm_56/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2F
!dense_112/StatefulPartitionedCall!dense_112/StatefulPartitionedCall2F
!dense_113/StatefulPartitionedCall!dense_113/StatefulPartitionedCall2B
lstm_56/StatefulPartitionedCalllstm_56/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
È[

D__inference_lstm_56_layer_call_and_return_conditional_losses_2628290
inputs_0>
+lstm_cell_56_matmul_readvariableop_resource:	 A
-lstm_cell_56_matmul_1_readvariableop_resource:
È ;
,lstm_cell_56_biasadd_readvariableop_resource:	 
identity¢#lstm_cell_56/BiasAdd/ReadVariableOp¢"lstm_cell_56/MatMul/ReadVariableOp¢$lstm_cell_56/MatMul_1/ReadVariableOp¢whileF
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
strided_slice_2µ
"lstm_cell_56/MatMul/ReadVariableOpReadVariableOp+lstm_cell_56_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype02$
"lstm_cell_56/MatMul/ReadVariableOp­
lstm_cell_56/MatMulMatMulstrided_slice_2:output:0*lstm_cell_56/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_56/MatMul¼
$lstm_cell_56/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_56_matmul_1_readvariableop_resource* 
_output_shapes
:
È *
dtype02&
$lstm_cell_56/MatMul_1/ReadVariableOp©
lstm_cell_56/MatMul_1MatMulzeros:output:0,lstm_cell_56/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_56/MatMul_1 
lstm_cell_56/addAddV2lstm_cell_56/MatMul:product:0lstm_cell_56/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_56/add´
#lstm_cell_56/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_56_biasadd_readvariableop_resource*
_output_shapes	
: *
dtype02%
#lstm_cell_56/BiasAdd/ReadVariableOp­
lstm_cell_56/BiasAddBiasAddlstm_cell_56/add:z:0+lstm_cell_56/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_56/BiasAdd~
lstm_cell_56/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_56/split/split_dim÷
lstm_cell_56/splitSplit%lstm_cell_56/split/split_dim:output:0lstm_cell_56/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
lstm_cell_56/split
lstm_cell_56/SigmoidSigmoidlstm_cell_56/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_56/Sigmoid
lstm_cell_56/Sigmoid_1Sigmoidlstm_cell_56/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_56/Sigmoid_1
lstm_cell_56/mulMullstm_cell_56/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_56/mul~
lstm_cell_56/ReluRelulstm_cell_56/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_56/Relu
lstm_cell_56/mul_1Mullstm_cell_56/Sigmoid:y:0lstm_cell_56/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_56/mul_1
lstm_cell_56/add_1AddV2lstm_cell_56/mul:z:0lstm_cell_56/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_56/add_1
lstm_cell_56/Sigmoid_2Sigmoidlstm_cell_56/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_56/Sigmoid_2}
lstm_cell_56/Relu_1Relulstm_cell_56/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_56/Relu_1¡
lstm_cell_56/mul_2Mullstm_cell_56/Sigmoid_2:y:0!lstm_cell_56/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_56/mul_2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_56_matmul_readvariableop_resource-lstm_cell_56_matmul_1_readvariableop_resource,lstm_cell_56_biasadd_readvariableop_resource*
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
while_body_2628206*
condR
while_cond_2628205*M
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
IdentityIdentitystrided_slice_3:output:0$^lstm_cell_56/BiasAdd/ReadVariableOp#^lstm_cell_56/MatMul/ReadVariableOp%^lstm_cell_56/MatMul_1/ReadVariableOp^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_56/BiasAdd/ReadVariableOp#lstm_cell_56/BiasAdd/ReadVariableOp2H
"lstm_cell_56/MatMul/ReadVariableOp"lstm_cell_56/MatMul/ReadVariableOp2L
$lstm_cell_56/MatMul_1/ReadVariableOp$lstm_cell_56/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
Ï

è
lstm_56_while_cond_2627688,
(lstm_56_while_lstm_56_while_loop_counter2
.lstm_56_while_lstm_56_while_maximum_iterations
lstm_56_while_placeholder
lstm_56_while_placeholder_1
lstm_56_while_placeholder_2
lstm_56_while_placeholder_3.
*lstm_56_while_less_lstm_56_strided_slice_1E
Alstm_56_while_lstm_56_while_cond_2627688___redundant_placeholder0E
Alstm_56_while_lstm_56_while_cond_2627688___redundant_placeholder1E
Alstm_56_while_lstm_56_while_cond_2627688___redundant_placeholder2E
Alstm_56_while_lstm_56_while_cond_2627688___redundant_placeholder3
lstm_56_while_identity

lstm_56/while/LessLesslstm_56_while_placeholder*lstm_56_while_less_lstm_56_strided_slice_1*
T0*
_output_shapes
: 2
lstm_56/while/Lessu
lstm_56/while/IdentityIdentitylstm_56/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_56/while/Identity"9
lstm_56_while_identitylstm_56/while/Identity:output:0*(
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
	
±
/__inference_sequential_56_layer_call_fn_2627553
lstm_56_input
unknown:	 
	unknown_0:
È 
	unknown_1:	 
	unknown_2:	Èd
	unknown_3:d
	unknown_4:d
	unknown_5:
identity¢StatefulPartitionedCallÂ
StatefulPartitionedCallStatefulPartitionedCalllstm_56_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
J__inference_sequential_56_layer_call_and_return_conditional_losses_26275172
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
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelstm_56_input
	
±
/__inference_sequential_56_layer_call_fn_2627282
lstm_56_input
unknown:	 
	unknown_0:
È 
	unknown_1:	 
	unknown_2:	Èd
	unknown_3:d
	unknown_4:d
	unknown_5:
identity¢StatefulPartitionedCallÂ
StatefulPartitionedCallStatefulPartitionedCalllstm_56_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
J__inference_sequential_56_layer_call_and_return_conditional_losses_26272652
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
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelstm_56_input
Þ
È
while_cond_2627138
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2627138___redundant_placeholder05
1while_while_cond_2627138___redundant_placeholder15
1while_while_cond_2627138___redundant_placeholder25
1while_while_cond_2627138___redundant_placeholder3
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
­&
ì
while_body_2626735
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_56_2626759_0:	 0
while_lstm_cell_56_2626761_0:
È +
while_lstm_cell_56_2626763_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_56_2626759:	 .
while_lstm_cell_56_2626761:
È )
while_lstm_cell_56_2626763:	 ¢*while/lstm_cell_56/StatefulPartitionedCallÃ
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
)while/TensorArrayV2Read/TensorListGetItemè
*while/lstm_cell_56/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_56_2626759_0while_lstm_cell_56_2626761_0while_lstm_cell_56_2626763_0*
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
I__inference_lstm_cell_56_layer_call_and_return_conditional_losses_26266572,
*while/lstm_cell_56/StatefulPartitionedCall÷
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_56/StatefulPartitionedCall:output:0*
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
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_56/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_56/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_56/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2º
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_56/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3Å
while/Identity_4Identity3while/lstm_cell_56/StatefulPartitionedCall:output:1+^while/lstm_cell_56/StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_4Å
while/Identity_5Identity3while/lstm_cell_56/StatefulPartitionedCall:output:2+^while/lstm_cell_56/StatefulPartitionedCall*
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
while_lstm_cell_56_2626759while_lstm_cell_56_2626759_0":
while_lstm_cell_56_2626761while_lstm_cell_56_2626761_0":
while_lstm_cell_56_2626763while_lstm_cell_56_2626763_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : 2X
*while/lstm_cell_56/StatefulPartitionedCall*while/lstm_cell_56/StatefulPartitionedCall: 
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
while_cond_2628054
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2628054___redundant_placeholder05
1while_while_cond_2628054___redundant_placeholder15
1while_while_cond_2628054___redundant_placeholder25
1while_while_cond_2628054___redundant_placeholder3
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
:"ÌL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*¼
serving_default¨
K
lstm_56_input:
serving_default_lstm_56_input:0ÿÿÿÿÿÿÿÿÿ=
	dense_1130
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:ÊÀ
¦-
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
X__call__"æ*
_tf_keras_sequentialÇ*{"name": "sequential_56", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_56", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "lstm_56_input"}}, {"class_name": "LSTM", "config": {"name": "lstm_56", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 1]}, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 200, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}, {"class_name": "Dense", "config": {"name": "dense_112", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_113", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 12, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 1]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 13}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 7, 1]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 7, 1]}, "float32", "lstm_56_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_56", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "lstm_56_input"}, "shared_object_id": 0}, {"class_name": "LSTM", "config": {"name": "lstm_56", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 1]}, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 200, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 5}, {"class_name": "Dense", "config": {"name": "dense_112", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 8}, {"class_name": "Dense", "config": {"name": "dense_113", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 11}]}}, "training_config": {"loss": "mse", "metrics": null, "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
¨

cell

state_spec
trainable_variables
regularization_losses
	variables
	keras_api
*Y&call_and_return_all_conditional_losses
Z__call__"ÿ
_tf_keras_rnn_layerá{"name": "lstm_56", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 1]}, "stateful": false, "must_restore_from_config": false, "class_name": "LSTM", "config": {"name": "lstm_56", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 1]}, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 200, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 5, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 1]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 13}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 7, 1]}}
Ô

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
*[&call_and_return_all_conditional_losses
\__call__"¯
_tf_keras_layer{"name": "dense_112", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_112", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 8, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 200}}, "shared_object_id": 14}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 200]}}
Ö

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
*]&call_and_return_all_conditional_losses
^__call__"±
_tf_keras_layer{"name": "dense_113", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_113", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 11, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 100}}, "shared_object_id": 15}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 100]}}
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
	
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
a__call__"Ì
_tf_keras_layer²{"name": "lstm_cell_56", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LSTMCell", "config": {"name": "lstm_cell_56", "trainable": true, "dtype": "float32", "units": 200, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 4}
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
#:!	Èd2dense_112/kernel
:d2dense_112/bias
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
": d2dense_113/kernel
:2dense_113/bias
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
.:,	 2lstm_56/lstm_cell_56/kernel
9:7
È 2%lstm_56/lstm_cell_56/recurrent_kernel
(:& 2lstm_56/lstm_cell_56/bias
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
­
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
(:&	Èd2Adam/dense_112/kernel/m
!:d2Adam/dense_112/bias/m
':%d2Adam/dense_113/kernel/m
!:2Adam/dense_113/bias/m
3:1	 2"Adam/lstm_56/lstm_cell_56/kernel/m
>:<
È 2,Adam/lstm_56/lstm_cell_56/recurrent_kernel/m
-:+ 2 Adam/lstm_56/lstm_cell_56/bias/m
(:&	Èd2Adam/dense_112/kernel/v
!:d2Adam/dense_112/bias/v
':%d2Adam/dense_113/kernel/v
!:2Adam/dense_113/bias/v
3:1	 2"Adam/lstm_56/lstm_cell_56/kernel/v
>:<
È 2,Adam/lstm_56/lstm_cell_56/recurrent_kernel/v
-:+ 2 Adam/lstm_56/lstm_cell_56/bias/v
ê2ç
"__inference__wrapped_model_2626436À
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
lstm_56_inputÿÿÿÿÿÿÿÿÿ
ö2ó
J__inference_sequential_56_layer_call_and_return_conditional_losses_2627786
J__inference_sequential_56_layer_call_and_return_conditional_losses_2627950
J__inference_sequential_56_layer_call_and_return_conditional_losses_2627574
J__inference_sequential_56_layer_call_and_return_conditional_losses_2627595À
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
/__inference_sequential_56_layer_call_fn_2627282
/__inference_sequential_56_layer_call_fn_2627969
/__inference_sequential_56_layer_call_fn_2627988
/__inference_sequential_56_layer_call_fn_2627553À
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
D__inference_lstm_56_layer_call_and_return_conditional_losses_2628139
D__inference_lstm_56_layer_call_and_return_conditional_losses_2628290
D__inference_lstm_56_layer_call_and_return_conditional_losses_2628441
D__inference_lstm_56_layer_call_and_return_conditional_losses_2628592Õ
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
)__inference_lstm_56_layer_call_fn_2628603
)__inference_lstm_56_layer_call_fn_2628614
)__inference_lstm_56_layer_call_fn_2628625
)__inference_lstm_56_layer_call_fn_2628636Õ
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
F__inference_dense_112_layer_call_and_return_conditional_losses_2628647¢
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
+__inference_dense_112_layer_call_fn_2628656¢
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
F__inference_dense_113_layer_call_and_return_conditional_losses_2628666¢
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
+__inference_dense_113_layer_call_fn_2628675¢
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
%__inference_signature_wrapper_2627622lstm_56_input"
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
I__inference_lstm_cell_56_layer_call_and_return_conditional_losses_2628707
I__inference_lstm_cell_56_layer_call_and_return_conditional_losses_2628739¾
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
.__inference_lstm_cell_56_layer_call_fn_2628756
.__inference_lstm_cell_56_layer_call_fn_2628773¾
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
"__inference__wrapped_model_2626436|!"#:¢7
0¢-
+(
lstm_56_inputÿÿÿÿÿÿÿÿÿ
ª "5ª2
0
	dense_113# 
	dense_113ÿÿÿÿÿÿÿÿÿ§
F__inference_dense_112_layer_call_and_return_conditional_losses_2628647]0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿÈ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿd
 
+__inference_dense_112_layer_call_fn_2628656P0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿÈ
ª "ÿÿÿÿÿÿÿÿÿd¦
F__inference_dense_113_layer_call_and_return_conditional_losses_2628666\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿd
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ~
+__inference_dense_113_layer_call_fn_2628675O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿd
ª "ÿÿÿÿÿÿÿÿÿÆ
D__inference_lstm_56_layer_call_and_return_conditional_losses_2628139~!"#O¢L
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
 Æ
D__inference_lstm_56_layer_call_and_return_conditional_losses_2628290~!"#O¢L
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
 ¶
D__inference_lstm_56_layer_call_and_return_conditional_losses_2628441n!"#?¢<
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
 ¶
D__inference_lstm_56_layer_call_and_return_conditional_losses_2628592n!"#?¢<
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
 
)__inference_lstm_56_layer_call_fn_2628603q!"#O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿÈ
)__inference_lstm_56_layer_call_fn_2628614q!"#O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿÈ
)__inference_lstm_56_layer_call_fn_2628625a!"#?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿÈ
)__inference_lstm_56_layer_call_fn_2628636a!"#?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿÈÐ
I__inference_lstm_cell_56_layer_call_and_return_conditional_losses_2628707!"#¢
x¢u
 
inputsÿÿÿÿÿÿÿÿÿ
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
I__inference_lstm_cell_56_layer_call_and_return_conditional_losses_2628739!"#¢
x¢u
 
inputsÿÿÿÿÿÿÿÿÿ
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
.__inference_lstm_cell_56_layer_call_fn_2628756ò!"#¢
x¢u
 
inputsÿÿÿÿÿÿÿÿÿ
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
.__inference_lstm_cell_56_layer_call_fn_2628773ò!"#¢
x¢u
 
inputsÿÿÿÿÿÿÿÿÿ
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
J__inference_sequential_56_layer_call_and_return_conditional_losses_2627574t!"#B¢?
8¢5
+(
lstm_56_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Â
J__inference_sequential_56_layer_call_and_return_conditional_losses_2627595t!"#B¢?
8¢5
+(
lstm_56_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 »
J__inference_sequential_56_layer_call_and_return_conditional_losses_2627786m!"#;¢8
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
J__inference_sequential_56_layer_call_and_return_conditional_losses_2627950m!"#;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
/__inference_sequential_56_layer_call_fn_2627282g!"#B¢?
8¢5
+(
lstm_56_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_56_layer_call_fn_2627553g!"#B¢?
8¢5
+(
lstm_56_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_56_layer_call_fn_2627969`!"#;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_56_layer_call_fn_2627988`!"#;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ·
%__inference_signature_wrapper_2627622!"#K¢H
¢ 
Aª>
<
lstm_56_input+(
lstm_56_inputÿÿÿÿÿÿÿÿÿ"5ª2
0
	dense_113# 
	dense_113ÿÿÿÿÿÿÿÿÿ