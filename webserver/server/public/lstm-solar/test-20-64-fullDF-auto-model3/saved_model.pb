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
dense_86/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Èd* 
shared_namedense_86/kernel
t
#dense_86/kernel/Read/ReadVariableOpReadVariableOpdense_86/kernel*
_output_shapes
:	Èd*
dtype0
r
dense_86/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*
shared_namedense_86/bias
k
!dense_86/bias/Read/ReadVariableOpReadVariableOpdense_86/bias*
_output_shapes
:d*
dtype0
z
dense_87/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d* 
shared_namedense_87/kernel
s
#dense_87/kernel/Read/ReadVariableOpReadVariableOpdense_87/kernel*
_output_shapes

:d*
dtype0
r
dense_87/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_87/bias
k
!dense_87/bias/Read/ReadVariableOpReadVariableOpdense_87/bias*
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
lstm_43/lstm_cell_43/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *,
shared_namelstm_43/lstm_cell_43/kernel

/lstm_43/lstm_cell_43/kernel/Read/ReadVariableOpReadVariableOplstm_43/lstm_cell_43/kernel*
_output_shapes
:	 *
dtype0
¨
%lstm_43/lstm_cell_43/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
È *6
shared_name'%lstm_43/lstm_cell_43/recurrent_kernel
¡
9lstm_43/lstm_cell_43/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_43/lstm_cell_43/recurrent_kernel* 
_output_shapes
:
È *
dtype0

lstm_43/lstm_cell_43/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_namelstm_43/lstm_cell_43/bias

-lstm_43/lstm_cell_43/bias/Read/ReadVariableOpReadVariableOplstm_43/lstm_cell_43/bias*
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
Adam/dense_86/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Èd*'
shared_nameAdam/dense_86/kernel/m

*Adam/dense_86/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_86/kernel/m*
_output_shapes
:	Èd*
dtype0

Adam/dense_86/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*%
shared_nameAdam/dense_86/bias/m
y
(Adam/dense_86/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_86/bias/m*
_output_shapes
:d*
dtype0

Adam/dense_87/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*'
shared_nameAdam/dense_87/kernel/m

*Adam/dense_87/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_87/kernel/m*
_output_shapes

:d*
dtype0

Adam/dense_87/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_87/bias/m
y
(Adam/dense_87/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_87/bias/m*
_output_shapes
:*
dtype0
¡
"Adam/lstm_43/lstm_cell_43/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *3
shared_name$"Adam/lstm_43/lstm_cell_43/kernel/m

6Adam/lstm_43/lstm_cell_43/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_43/lstm_cell_43/kernel/m*
_output_shapes
:	 *
dtype0
¶
,Adam/lstm_43/lstm_cell_43/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
È *=
shared_name.,Adam/lstm_43/lstm_cell_43/recurrent_kernel/m
¯
@Adam/lstm_43/lstm_cell_43/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_43/lstm_cell_43/recurrent_kernel/m* 
_output_shapes
:
È *
dtype0

 Adam/lstm_43/lstm_cell_43/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" Adam/lstm_43/lstm_cell_43/bias/m

4Adam/lstm_43/lstm_cell_43/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_43/lstm_cell_43/bias/m*
_output_shapes	
: *
dtype0

Adam/dense_86/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Èd*'
shared_nameAdam/dense_86/kernel/v

*Adam/dense_86/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_86/kernel/v*
_output_shapes
:	Èd*
dtype0

Adam/dense_86/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*%
shared_nameAdam/dense_86/bias/v
y
(Adam/dense_86/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_86/bias/v*
_output_shapes
:d*
dtype0

Adam/dense_87/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*'
shared_nameAdam/dense_87/kernel/v

*Adam/dense_87/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_87/kernel/v*
_output_shapes

:d*
dtype0

Adam/dense_87/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_87/bias/v
y
(Adam/dense_87/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_87/bias/v*
_output_shapes
:*
dtype0
¡
"Adam/lstm_43/lstm_cell_43/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *3
shared_name$"Adam/lstm_43/lstm_cell_43/kernel/v

6Adam/lstm_43/lstm_cell_43/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_43/lstm_cell_43/kernel/v*
_output_shapes
:	 *
dtype0
¶
,Adam/lstm_43/lstm_cell_43/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
È *=
shared_name.,Adam/lstm_43/lstm_cell_43/recurrent_kernel/v
¯
@Adam/lstm_43/lstm_cell_43/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_43/lstm_cell_43/recurrent_kernel/v* 
_output_shapes
:
È *
dtype0

 Adam/lstm_43/lstm_cell_43/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" Adam/lstm_43/lstm_cell_43/bias/v

4Adam/lstm_43/lstm_cell_43/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_43/lstm_cell_43/bias/v*
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
VARIABLE_VALUEdense_86/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_86/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_87/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_87/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUElstm_43/lstm_cell_43/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%lstm_43/lstm_cell_43/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_43/lstm_cell_43/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_86/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_86/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_87/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_87/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_43/lstm_cell_43/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_43/lstm_cell_43/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_43/lstm_cell_43/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_86/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_86/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_87/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_87/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/lstm_43/lstm_cell_43/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/lstm_43/lstm_cell_43/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_43/lstm_cell_43/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_lstm_43_inputPlaceholder*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0* 
shape:ÿÿÿÿÿÿÿÿÿ
æ
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_43_inputlstm_43/lstm_cell_43/kernel%lstm_43/lstm_cell_43/recurrent_kernellstm_43/lstm_cell_43/biasdense_86/kerneldense_86/biasdense_87/kerneldense_87/bias*
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
%__inference_signature_wrapper_2133050
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ú
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_86/kernel/Read/ReadVariableOp!dense_86/bias/Read/ReadVariableOp#dense_87/kernel/Read/ReadVariableOp!dense_87/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp/lstm_43/lstm_cell_43/kernel/Read/ReadVariableOp9lstm_43/lstm_cell_43/recurrent_kernel/Read/ReadVariableOp-lstm_43/lstm_cell_43/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_86/kernel/m/Read/ReadVariableOp(Adam/dense_86/bias/m/Read/ReadVariableOp*Adam/dense_87/kernel/m/Read/ReadVariableOp(Adam/dense_87/bias/m/Read/ReadVariableOp6Adam/lstm_43/lstm_cell_43/kernel/m/Read/ReadVariableOp@Adam/lstm_43/lstm_cell_43/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_43/lstm_cell_43/bias/m/Read/ReadVariableOp*Adam/dense_86/kernel/v/Read/ReadVariableOp(Adam/dense_86/bias/v/Read/ReadVariableOp*Adam/dense_87/kernel/v/Read/ReadVariableOp(Adam/dense_87/bias/v/Read/ReadVariableOp6Adam/lstm_43/lstm_cell_43/kernel/v/Read/ReadVariableOp@Adam/lstm_43/lstm_cell_43/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_43/lstm_cell_43/bias/v/Read/ReadVariableOpConst*)
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
 __inference__traced_save_2134308
Å
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_86/kerneldense_86/biasdense_87/kerneldense_87/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_43/lstm_cell_43/kernel%lstm_43/lstm_cell_43/recurrent_kernellstm_43/lstm_cell_43/biastotalcountAdam/dense_86/kernel/mAdam/dense_86/bias/mAdam/dense_87/kernel/mAdam/dense_87/bias/m"Adam/lstm_43/lstm_cell_43/kernel/m,Adam/lstm_43/lstm_cell_43/recurrent_kernel/m Adam/lstm_43/lstm_cell_43/bias/mAdam/dense_86/kernel/vAdam/dense_86/bias/vAdam/dense_87/kernel/vAdam/dense_87/bias/v"Adam/lstm_43/lstm_cell_43/kernel/v,Adam/lstm_43/lstm_cell_43/recurrent_kernel/v Adam/lstm_43/lstm_cell_43/bias/v*(
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
#__inference__traced_restore_2134402´¦
ë
§
%__inference_signature_wrapper_2133050
lstm_43_input
unknown:	 
	unknown_0:
È 
	unknown_1:	 
	unknown_2:	Èd
	unknown_3:d
	unknown_4:d
	unknown_5:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalllstm_43_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
"__inference__wrapped_model_21318642
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
_user_specified_namelstm_43_input
	
ª
/__inference_sequential_43_layer_call_fn_2133397

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
J__inference_sequential_43_layer_call_and_return_conditional_losses_21326932
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
Å

I__inference_lstm_cell_43_layer_call_and_return_conditional_losses_2134135

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
[

D__inference_lstm_43_layer_call_and_return_conditional_losses_2132894

inputs>
+lstm_cell_43_matmul_readvariableop_resource:	 A
-lstm_cell_43_matmul_1_readvariableop_resource:
È ;
,lstm_cell_43_biasadd_readvariableop_resource:	 
identity¢#lstm_cell_43/BiasAdd/ReadVariableOp¢"lstm_cell_43/MatMul/ReadVariableOp¢$lstm_cell_43/MatMul_1/ReadVariableOp¢whileD
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
"lstm_cell_43/MatMul/ReadVariableOpReadVariableOp+lstm_cell_43_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype02$
"lstm_cell_43/MatMul/ReadVariableOp­
lstm_cell_43/MatMulMatMulstrided_slice_2:output:0*lstm_cell_43/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_43/MatMul¼
$lstm_cell_43/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_43_matmul_1_readvariableop_resource* 
_output_shapes
:
È *
dtype02&
$lstm_cell_43/MatMul_1/ReadVariableOp©
lstm_cell_43/MatMul_1MatMulzeros:output:0,lstm_cell_43/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_43/MatMul_1 
lstm_cell_43/addAddV2lstm_cell_43/MatMul:product:0lstm_cell_43/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_43/add´
#lstm_cell_43/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_43_biasadd_readvariableop_resource*
_output_shapes	
: *
dtype02%
#lstm_cell_43/BiasAdd/ReadVariableOp­
lstm_cell_43/BiasAddBiasAddlstm_cell_43/add:z:0+lstm_cell_43/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_43/BiasAdd~
lstm_cell_43/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_43/split/split_dim÷
lstm_cell_43/splitSplit%lstm_cell_43/split/split_dim:output:0lstm_cell_43/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
lstm_cell_43/split
lstm_cell_43/SigmoidSigmoidlstm_cell_43/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_43/Sigmoid
lstm_cell_43/Sigmoid_1Sigmoidlstm_cell_43/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_43/Sigmoid_1
lstm_cell_43/mulMullstm_cell_43/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_43/mul~
lstm_cell_43/ReluRelulstm_cell_43/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_43/Relu
lstm_cell_43/mul_1Mullstm_cell_43/Sigmoid:y:0lstm_cell_43/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_43/mul_1
lstm_cell_43/add_1AddV2lstm_cell_43/mul:z:0lstm_cell_43/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_43/add_1
lstm_cell_43/Sigmoid_2Sigmoidlstm_cell_43/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_43/Sigmoid_2}
lstm_cell_43/Relu_1Relulstm_cell_43/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_43/Relu_1¡
lstm_cell_43/mul_2Mullstm_cell_43/Sigmoid_2:y:0!lstm_cell_43/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_43/mul_2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_43_matmul_readvariableop_resource-lstm_cell_43_matmul_1_readvariableop_resource,lstm_cell_43_biasadd_readvariableop_resource*
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
while_body_2132810*
condR
while_cond_2132809*M
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
IdentityIdentitystrided_slice_3:output:0$^lstm_cell_43/BiasAdd/ReadVariableOp#^lstm_cell_43/MatMul/ReadVariableOp%^lstm_cell_43/MatMul_1/ReadVariableOp^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_43/BiasAdd/ReadVariableOp#lstm_cell_43/BiasAdd/ReadVariableOp2H
"lstm_cell_43/MatMul/ReadVariableOp"lstm_cell_43/MatMul/ReadVariableOp2L
$lstm_cell_43/MatMul_1/ReadVariableOp$lstm_cell_43/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ø
Ã
J__inference_sequential_43_layer_call_and_return_conditional_losses_2132693

inputs"
lstm_43_2132652:	 #
lstm_43_2132654:
È 
lstm_43_2132656:	 #
dense_86_2132671:	Èd
dense_86_2132673:d"
dense_87_2132687:d
dense_87_2132689:
identity¢ dense_86/StatefulPartitionedCall¢ dense_87/StatefulPartitionedCall¢lstm_43/StatefulPartitionedCall¦
lstm_43/StatefulPartitionedCallStatefulPartitionedCallinputslstm_43_2132652lstm_43_2132654lstm_43_2132656*
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
D__inference_lstm_43_layer_call_and_return_conditional_losses_21326512!
lstm_43/StatefulPartitionedCall¹
 dense_86/StatefulPartitionedCallStatefulPartitionedCall(lstm_43/StatefulPartitionedCall:output:0dense_86_2132671dense_86_2132673*
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
E__inference_dense_86_layer_call_and_return_conditional_losses_21326702"
 dense_86/StatefulPartitionedCallº
 dense_87/StatefulPartitionedCallStatefulPartitionedCall)dense_86/StatefulPartitionedCall:output:0dense_87_2132687dense_87_2132689*
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
E__inference_dense_87_layer_call_and_return_conditional_losses_21326862"
 dense_87/StatefulPartitionedCallå
IdentityIdentity)dense_87/StatefulPartitionedCall:output:0!^dense_86/StatefulPartitionedCall!^dense_87/StatefulPartitionedCall ^lstm_43/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2D
 dense_86/StatefulPartitionedCall dense_86/StatefulPartitionedCall2D
 dense_87/StatefulPartitionedCall dense_87/StatefulPartitionedCall2B
lstm_43/StatefulPartitionedCalllstm_43/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
­&
ì
while_body_2132163
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_43_2132187_0:	 0
while_lstm_cell_43_2132189_0:
È +
while_lstm_cell_43_2132191_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_43_2132187:	 .
while_lstm_cell_43_2132189:
È )
while_lstm_cell_43_2132191:	 ¢*while/lstm_cell_43/StatefulPartitionedCallÃ
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
*while/lstm_cell_43/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_43_2132187_0while_lstm_cell_43_2132189_0while_lstm_cell_43_2132191_0*
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
I__inference_lstm_cell_43_layer_call_and_return_conditional_losses_21320852,
*while/lstm_cell_43/StatefulPartitionedCall÷
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_43/StatefulPartitionedCall:output:0*
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
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_43/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_43/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_43/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2º
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_43/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3Å
while/Identity_4Identity3while/lstm_cell_43/StatefulPartitionedCall:output:1+^while/lstm_cell_43/StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_4Å
while/Identity_5Identity3while/lstm_cell_43/StatefulPartitionedCall:output:2+^while/lstm_cell_43/StatefulPartitionedCall*
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
while_lstm_cell_43_2132187while_lstm_cell_43_2132187_0":
while_lstm_cell_43_2132189while_lstm_cell_43_2132189_0":
while_lstm_cell_43_2132191while_lstm_cell_43_2132191_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : 2X
*while/lstm_cell_43/StatefulPartitionedCall*while/lstm_cell_43/StatefulPartitionedCall: 
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
/__inference_sequential_43_layer_call_fn_2133416

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
J__inference_sequential_43_layer_call_and_return_conditional_losses_21329452
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
 

*__inference_dense_86_layer_call_fn_2134084

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
E__inference_dense_86_layer_call_and_return_conditional_losses_21326702
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
Ï

è
lstm_43_while_cond_2133116,
(lstm_43_while_lstm_43_while_loop_counter2
.lstm_43_while_lstm_43_while_maximum_iterations
lstm_43_while_placeholder
lstm_43_while_placeholder_1
lstm_43_while_placeholder_2
lstm_43_while_placeholder_3.
*lstm_43_while_less_lstm_43_strided_slice_1E
Alstm_43_while_lstm_43_while_cond_2133116___redundant_placeholder0E
Alstm_43_while_lstm_43_while_cond_2133116___redundant_placeholder1E
Alstm_43_while_lstm_43_while_cond_2133116___redundant_placeholder2E
Alstm_43_while_lstm_43_while_cond_2133116___redundant_placeholder3
lstm_43_while_identity

lstm_43/while/LessLesslstm_43_while_placeholder*lstm_43_while_less_lstm_43_strided_slice_1*
T0*
_output_shapes
: 2
lstm_43/while/Lessu
lstm_43/while/IdentityIdentitylstm_43/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_43/while/Identity"9
lstm_43_while_identitylstm_43/while/Identity:output:0*(
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
while_cond_2133482
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2133482___redundant_placeholder05
1while_while_cond_2133482___redundant_placeholder15
1while_while_cond_2133482___redundant_placeholder25
1while_while_cond_2133482___redundant_placeholder3
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
ð
ù
"__inference__wrapped_model_2131864
lstm_43_inputT
Asequential_43_lstm_43_lstm_cell_43_matmul_readvariableop_resource:	 W
Csequential_43_lstm_43_lstm_cell_43_matmul_1_readvariableop_resource:
È Q
Bsequential_43_lstm_43_lstm_cell_43_biasadd_readvariableop_resource:	 H
5sequential_43_dense_86_matmul_readvariableop_resource:	ÈdD
6sequential_43_dense_86_biasadd_readvariableop_resource:dG
5sequential_43_dense_87_matmul_readvariableop_resource:dD
6sequential_43_dense_87_biasadd_readvariableop_resource:
identity¢-sequential_43/dense_86/BiasAdd/ReadVariableOp¢,sequential_43/dense_86/MatMul/ReadVariableOp¢-sequential_43/dense_87/BiasAdd/ReadVariableOp¢,sequential_43/dense_87/MatMul/ReadVariableOp¢9sequential_43/lstm_43/lstm_cell_43/BiasAdd/ReadVariableOp¢8sequential_43/lstm_43/lstm_cell_43/MatMul/ReadVariableOp¢:sequential_43/lstm_43/lstm_cell_43/MatMul_1/ReadVariableOp¢sequential_43/lstm_43/whilew
sequential_43/lstm_43/ShapeShapelstm_43_input*
T0*
_output_shapes
:2
sequential_43/lstm_43/Shape 
)sequential_43/lstm_43/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_43/lstm_43/strided_slice/stack¤
+sequential_43/lstm_43/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_43/lstm_43/strided_slice/stack_1¤
+sequential_43/lstm_43/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_43/lstm_43/strided_slice/stack_2æ
#sequential_43/lstm_43/strided_sliceStridedSlice$sequential_43/lstm_43/Shape:output:02sequential_43/lstm_43/strided_slice/stack:output:04sequential_43/lstm_43/strided_slice/stack_1:output:04sequential_43/lstm_43/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential_43/lstm_43/strided_slice
!sequential_43/lstm_43/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :È2#
!sequential_43/lstm_43/zeros/mul/yÄ
sequential_43/lstm_43/zeros/mulMul,sequential_43/lstm_43/strided_slice:output:0*sequential_43/lstm_43/zeros/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential_43/lstm_43/zeros/mul
"sequential_43/lstm_43/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2$
"sequential_43/lstm_43/zeros/Less/y¿
 sequential_43/lstm_43/zeros/LessLess#sequential_43/lstm_43/zeros/mul:z:0+sequential_43/lstm_43/zeros/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential_43/lstm_43/zeros/Less
$sequential_43/lstm_43/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :È2&
$sequential_43/lstm_43/zeros/packed/1Û
"sequential_43/lstm_43/zeros/packedPack,sequential_43/lstm_43/strided_slice:output:0-sequential_43/lstm_43/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential_43/lstm_43/zeros/packed
!sequential_43/lstm_43/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential_43/lstm_43/zeros/ConstÎ
sequential_43/lstm_43/zerosFill+sequential_43/lstm_43/zeros/packed:output:0*sequential_43/lstm_43/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
sequential_43/lstm_43/zeros
#sequential_43/lstm_43/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :È2%
#sequential_43/lstm_43/zeros_1/mul/yÊ
!sequential_43/lstm_43/zeros_1/mulMul,sequential_43/lstm_43/strided_slice:output:0,sequential_43/lstm_43/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2#
!sequential_43/lstm_43/zeros_1/mul
$sequential_43/lstm_43/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2&
$sequential_43/lstm_43/zeros_1/Less/yÇ
"sequential_43/lstm_43/zeros_1/LessLess%sequential_43/lstm_43/zeros_1/mul:z:0-sequential_43/lstm_43/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2$
"sequential_43/lstm_43/zeros_1/Less
&sequential_43/lstm_43/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :È2(
&sequential_43/lstm_43/zeros_1/packed/1á
$sequential_43/lstm_43/zeros_1/packedPack,sequential_43/lstm_43/strided_slice:output:0/sequential_43/lstm_43/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2&
$sequential_43/lstm_43/zeros_1/packed
#sequential_43/lstm_43/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#sequential_43/lstm_43/zeros_1/ConstÖ
sequential_43/lstm_43/zeros_1Fill-sequential_43/lstm_43/zeros_1/packed:output:0,sequential_43/lstm_43/zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
sequential_43/lstm_43/zeros_1¡
$sequential_43/lstm_43/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential_43/lstm_43/transpose/permÃ
sequential_43/lstm_43/transpose	Transposelstm_43_input-sequential_43/lstm_43/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
sequential_43/lstm_43/transpose
sequential_43/lstm_43/Shape_1Shape#sequential_43/lstm_43/transpose:y:0*
T0*
_output_shapes
:2
sequential_43/lstm_43/Shape_1¤
+sequential_43/lstm_43/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_43/lstm_43/strided_slice_1/stack¨
-sequential_43/lstm_43/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_43/lstm_43/strided_slice_1/stack_1¨
-sequential_43/lstm_43/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_43/lstm_43/strided_slice_1/stack_2ò
%sequential_43/lstm_43/strided_slice_1StridedSlice&sequential_43/lstm_43/Shape_1:output:04sequential_43/lstm_43/strided_slice_1/stack:output:06sequential_43/lstm_43/strided_slice_1/stack_1:output:06sequential_43/lstm_43/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%sequential_43/lstm_43/strided_slice_1±
1sequential_43/lstm_43/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ23
1sequential_43/lstm_43/TensorArrayV2/element_shape
#sequential_43/lstm_43/TensorArrayV2TensorListReserve:sequential_43/lstm_43/TensorArrayV2/element_shape:output:0.sequential_43/lstm_43/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential_43/lstm_43/TensorArrayV2ë
Ksequential_43/lstm_43/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2M
Ksequential_43/lstm_43/TensorArrayUnstack/TensorListFromTensor/element_shapeÐ
=sequential_43/lstm_43/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_43/lstm_43/transpose:y:0Tsequential_43/lstm_43/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02?
=sequential_43/lstm_43/TensorArrayUnstack/TensorListFromTensor¤
+sequential_43/lstm_43/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_43/lstm_43/strided_slice_2/stack¨
-sequential_43/lstm_43/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_43/lstm_43/strided_slice_2/stack_1¨
-sequential_43/lstm_43/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_43/lstm_43/strided_slice_2/stack_2
%sequential_43/lstm_43/strided_slice_2StridedSlice#sequential_43/lstm_43/transpose:y:04sequential_43/lstm_43/strided_slice_2/stack:output:06sequential_43/lstm_43/strided_slice_2/stack_1:output:06sequential_43/lstm_43/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2'
%sequential_43/lstm_43/strided_slice_2÷
8sequential_43/lstm_43/lstm_cell_43/MatMul/ReadVariableOpReadVariableOpAsequential_43_lstm_43_lstm_cell_43_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype02:
8sequential_43/lstm_43/lstm_cell_43/MatMul/ReadVariableOp
)sequential_43/lstm_43/lstm_cell_43/MatMulMatMul.sequential_43/lstm_43/strided_slice_2:output:0@sequential_43/lstm_43/lstm_cell_43/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)sequential_43/lstm_43/lstm_cell_43/MatMulþ
:sequential_43/lstm_43/lstm_cell_43/MatMul_1/ReadVariableOpReadVariableOpCsequential_43_lstm_43_lstm_cell_43_matmul_1_readvariableop_resource* 
_output_shapes
:
È *
dtype02<
:sequential_43/lstm_43/lstm_cell_43/MatMul_1/ReadVariableOp
+sequential_43/lstm_43/lstm_cell_43/MatMul_1MatMul$sequential_43/lstm_43/zeros:output:0Bsequential_43/lstm_43/lstm_cell_43/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2-
+sequential_43/lstm_43/lstm_cell_43/MatMul_1ø
&sequential_43/lstm_43/lstm_cell_43/addAddV23sequential_43/lstm_43/lstm_cell_43/MatMul:product:05sequential_43/lstm_43/lstm_cell_43/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2(
&sequential_43/lstm_43/lstm_cell_43/addö
9sequential_43/lstm_43/lstm_cell_43/BiasAdd/ReadVariableOpReadVariableOpBsequential_43_lstm_43_lstm_cell_43_biasadd_readvariableop_resource*
_output_shapes	
: *
dtype02;
9sequential_43/lstm_43/lstm_cell_43/BiasAdd/ReadVariableOp
*sequential_43/lstm_43/lstm_cell_43/BiasAddBiasAdd*sequential_43/lstm_43/lstm_cell_43/add:z:0Asequential_43/lstm_43/lstm_cell_43/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2,
*sequential_43/lstm_43/lstm_cell_43/BiasAddª
2sequential_43/lstm_43/lstm_cell_43/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :24
2sequential_43/lstm_43/lstm_cell_43/split/split_dimÏ
(sequential_43/lstm_43/lstm_cell_43/splitSplit;sequential_43/lstm_43/lstm_cell_43/split/split_dim:output:03sequential_43/lstm_43/lstm_cell_43/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2*
(sequential_43/lstm_43/lstm_cell_43/splitÉ
*sequential_43/lstm_43/lstm_cell_43/SigmoidSigmoid1sequential_43/lstm_43/lstm_cell_43/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2,
*sequential_43/lstm_43/lstm_cell_43/SigmoidÍ
,sequential_43/lstm_43/lstm_cell_43/Sigmoid_1Sigmoid1sequential_43/lstm_43/lstm_cell_43/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2.
,sequential_43/lstm_43/lstm_cell_43/Sigmoid_1ä
&sequential_43/lstm_43/lstm_cell_43/mulMul0sequential_43/lstm_43/lstm_cell_43/Sigmoid_1:y:0&sequential_43/lstm_43/zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2(
&sequential_43/lstm_43/lstm_cell_43/mulÀ
'sequential_43/lstm_43/lstm_cell_43/ReluRelu1sequential_43/lstm_43/lstm_cell_43/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2)
'sequential_43/lstm_43/lstm_cell_43/Reluõ
(sequential_43/lstm_43/lstm_cell_43/mul_1Mul.sequential_43/lstm_43/lstm_cell_43/Sigmoid:y:05sequential_43/lstm_43/lstm_cell_43/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2*
(sequential_43/lstm_43/lstm_cell_43/mul_1ê
(sequential_43/lstm_43/lstm_cell_43/add_1AddV2*sequential_43/lstm_43/lstm_cell_43/mul:z:0,sequential_43/lstm_43/lstm_cell_43/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2*
(sequential_43/lstm_43/lstm_cell_43/add_1Í
,sequential_43/lstm_43/lstm_cell_43/Sigmoid_2Sigmoid1sequential_43/lstm_43/lstm_cell_43/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2.
,sequential_43/lstm_43/lstm_cell_43/Sigmoid_2¿
)sequential_43/lstm_43/lstm_cell_43/Relu_1Relu,sequential_43/lstm_43/lstm_cell_43/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2+
)sequential_43/lstm_43/lstm_cell_43/Relu_1ù
(sequential_43/lstm_43/lstm_cell_43/mul_2Mul0sequential_43/lstm_43/lstm_cell_43/Sigmoid_2:y:07sequential_43/lstm_43/lstm_cell_43/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2*
(sequential_43/lstm_43/lstm_cell_43/mul_2»
3sequential_43/lstm_43/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÈ   25
3sequential_43/lstm_43/TensorArrayV2_1/element_shape
%sequential_43/lstm_43/TensorArrayV2_1TensorListReserve<sequential_43/lstm_43/TensorArrayV2_1/element_shape:output:0.sequential_43/lstm_43/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02'
%sequential_43/lstm_43/TensorArrayV2_1z
sequential_43/lstm_43/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_43/lstm_43/time«
.sequential_43/lstm_43/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ20
.sequential_43/lstm_43/while/maximum_iterations
(sequential_43/lstm_43/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2*
(sequential_43/lstm_43/while/loop_counter¾
sequential_43/lstm_43/whileWhile1sequential_43/lstm_43/while/loop_counter:output:07sequential_43/lstm_43/while/maximum_iterations:output:0#sequential_43/lstm_43/time:output:0.sequential_43/lstm_43/TensorArrayV2_1:handle:0$sequential_43/lstm_43/zeros:output:0&sequential_43/lstm_43/zeros_1:output:0.sequential_43/lstm_43/strided_slice_1:output:0Msequential_43/lstm_43/TensorArrayUnstack/TensorListFromTensor:output_handle:0Asequential_43_lstm_43_lstm_cell_43_matmul_readvariableop_resourceCsequential_43_lstm_43_lstm_cell_43_matmul_1_readvariableop_resourceBsequential_43_lstm_43_lstm_cell_43_biasadd_readvariableop_resource*
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
(sequential_43_lstm_43_while_body_2131767*4
cond,R*
(sequential_43_lstm_43_while_cond_2131766*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : *
parallel_iterations 2
sequential_43/lstm_43/whileá
Fsequential_43/lstm_43/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÈ   2H
Fsequential_43/lstm_43/TensorArrayV2Stack/TensorListStack/element_shapeÁ
8sequential_43/lstm_43/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_43/lstm_43/while:output:3Osequential_43/lstm_43/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*
element_dtype02:
8sequential_43/lstm_43/TensorArrayV2Stack/TensorListStack­
+sequential_43/lstm_43/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2-
+sequential_43/lstm_43/strided_slice_3/stack¨
-sequential_43/lstm_43/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2/
-sequential_43/lstm_43/strided_slice_3/stack_1¨
-sequential_43/lstm_43/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_43/lstm_43/strided_slice_3/stack_2
%sequential_43/lstm_43/strided_slice_3StridedSliceAsequential_43/lstm_43/TensorArrayV2Stack/TensorListStack:tensor:04sequential_43/lstm_43/strided_slice_3/stack:output:06sequential_43/lstm_43/strided_slice_3/stack_1:output:06sequential_43/lstm_43/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*
shrink_axis_mask2'
%sequential_43/lstm_43/strided_slice_3¥
&sequential_43/lstm_43/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&sequential_43/lstm_43/transpose_1/permþ
!sequential_43/lstm_43/transpose_1	TransposeAsequential_43/lstm_43/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_43/lstm_43/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2#
!sequential_43/lstm_43/transpose_1
sequential_43/lstm_43/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_43/lstm_43/runtimeÓ
,sequential_43/dense_86/MatMul/ReadVariableOpReadVariableOp5sequential_43_dense_86_matmul_readvariableop_resource*
_output_shapes
:	Èd*
dtype02.
,sequential_43/dense_86/MatMul/ReadVariableOpà
sequential_43/dense_86/MatMulMatMul.sequential_43/lstm_43/strided_slice_3:output:04sequential_43/dense_86/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
sequential_43/dense_86/MatMulÑ
-sequential_43/dense_86/BiasAdd/ReadVariableOpReadVariableOp6sequential_43_dense_86_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02/
-sequential_43/dense_86/BiasAdd/ReadVariableOpÝ
sequential_43/dense_86/BiasAddBiasAdd'sequential_43/dense_86/MatMul:product:05sequential_43/dense_86/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2 
sequential_43/dense_86/BiasAdd
sequential_43/dense_86/ReluRelu'sequential_43/dense_86/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
sequential_43/dense_86/ReluÒ
,sequential_43/dense_87/MatMul/ReadVariableOpReadVariableOp5sequential_43_dense_87_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02.
,sequential_43/dense_87/MatMul/ReadVariableOpÛ
sequential_43/dense_87/MatMulMatMul)sequential_43/dense_86/Relu:activations:04sequential_43/dense_87/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_43/dense_87/MatMulÑ
-sequential_43/dense_87/BiasAdd/ReadVariableOpReadVariableOp6sequential_43_dense_87_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_43/dense_87/BiasAdd/ReadVariableOpÝ
sequential_43/dense_87/BiasAddBiasAdd'sequential_43/dense_87/MatMul:product:05sequential_43/dense_87/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
sequential_43/dense_87/BiasAdd
IdentityIdentity'sequential_43/dense_87/BiasAdd:output:0.^sequential_43/dense_86/BiasAdd/ReadVariableOp-^sequential_43/dense_86/MatMul/ReadVariableOp.^sequential_43/dense_87/BiasAdd/ReadVariableOp-^sequential_43/dense_87/MatMul/ReadVariableOp:^sequential_43/lstm_43/lstm_cell_43/BiasAdd/ReadVariableOp9^sequential_43/lstm_43/lstm_cell_43/MatMul/ReadVariableOp;^sequential_43/lstm_43/lstm_cell_43/MatMul_1/ReadVariableOp^sequential_43/lstm_43/while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2^
-sequential_43/dense_86/BiasAdd/ReadVariableOp-sequential_43/dense_86/BiasAdd/ReadVariableOp2\
,sequential_43/dense_86/MatMul/ReadVariableOp,sequential_43/dense_86/MatMul/ReadVariableOp2^
-sequential_43/dense_87/BiasAdd/ReadVariableOp-sequential_43/dense_87/BiasAdd/ReadVariableOp2\
,sequential_43/dense_87/MatMul/ReadVariableOp,sequential_43/dense_87/MatMul/ReadVariableOp2v
9sequential_43/lstm_43/lstm_cell_43/BiasAdd/ReadVariableOp9sequential_43/lstm_43/lstm_cell_43/BiasAdd/ReadVariableOp2t
8sequential_43/lstm_43/lstm_cell_43/MatMul/ReadVariableOp8sequential_43/lstm_43/lstm_cell_43/MatMul/ReadVariableOp2x
:sequential_43/lstm_43/lstm_cell_43/MatMul_1/ReadVariableOp:sequential_43/lstm_43/lstm_cell_43/MatMul_1/ReadVariableOp2:
sequential_43/lstm_43/whilesequential_43/lstm_43/while:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelstm_43_input
[

D__inference_lstm_43_layer_call_and_return_conditional_losses_2133869

inputs>
+lstm_cell_43_matmul_readvariableop_resource:	 A
-lstm_cell_43_matmul_1_readvariableop_resource:
È ;
,lstm_cell_43_biasadd_readvariableop_resource:	 
identity¢#lstm_cell_43/BiasAdd/ReadVariableOp¢"lstm_cell_43/MatMul/ReadVariableOp¢$lstm_cell_43/MatMul_1/ReadVariableOp¢whileD
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
"lstm_cell_43/MatMul/ReadVariableOpReadVariableOp+lstm_cell_43_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype02$
"lstm_cell_43/MatMul/ReadVariableOp­
lstm_cell_43/MatMulMatMulstrided_slice_2:output:0*lstm_cell_43/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_43/MatMul¼
$lstm_cell_43/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_43_matmul_1_readvariableop_resource* 
_output_shapes
:
È *
dtype02&
$lstm_cell_43/MatMul_1/ReadVariableOp©
lstm_cell_43/MatMul_1MatMulzeros:output:0,lstm_cell_43/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_43/MatMul_1 
lstm_cell_43/addAddV2lstm_cell_43/MatMul:product:0lstm_cell_43/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_43/add´
#lstm_cell_43/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_43_biasadd_readvariableop_resource*
_output_shapes	
: *
dtype02%
#lstm_cell_43/BiasAdd/ReadVariableOp­
lstm_cell_43/BiasAddBiasAddlstm_cell_43/add:z:0+lstm_cell_43/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_43/BiasAdd~
lstm_cell_43/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_43/split/split_dim÷
lstm_cell_43/splitSplit%lstm_cell_43/split/split_dim:output:0lstm_cell_43/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
lstm_cell_43/split
lstm_cell_43/SigmoidSigmoidlstm_cell_43/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_43/Sigmoid
lstm_cell_43/Sigmoid_1Sigmoidlstm_cell_43/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_43/Sigmoid_1
lstm_cell_43/mulMullstm_cell_43/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_43/mul~
lstm_cell_43/ReluRelulstm_cell_43/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_43/Relu
lstm_cell_43/mul_1Mullstm_cell_43/Sigmoid:y:0lstm_cell_43/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_43/mul_1
lstm_cell_43/add_1AddV2lstm_cell_43/mul:z:0lstm_cell_43/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_43/add_1
lstm_cell_43/Sigmoid_2Sigmoidlstm_cell_43/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_43/Sigmoid_2}
lstm_cell_43/Relu_1Relulstm_cell_43/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_43/Relu_1¡
lstm_cell_43/mul_2Mullstm_cell_43/Sigmoid_2:y:0!lstm_cell_43/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_43/mul_2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_43_matmul_readvariableop_resource-lstm_cell_43_matmul_1_readvariableop_resource,lstm_cell_43_biasadd_readvariableop_resource*
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
while_body_2133785*
condR
while_cond_2133784*M
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
IdentityIdentitystrided_slice_3:output:0$^lstm_cell_43/BiasAdd/ReadVariableOp#^lstm_cell_43/MatMul/ReadVariableOp%^lstm_cell_43/MatMul_1/ReadVariableOp^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_43/BiasAdd/ReadVariableOp#lstm_cell_43/BiasAdd/ReadVariableOp2H
"lstm_cell_43/MatMul/ReadVariableOp"lstm_cell_43/MatMul/ReadVariableOp2L
$lstm_cell_43/MatMul_1/ReadVariableOp$lstm_cell_43/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
	
±
/__inference_sequential_43_layer_call_fn_2132710
lstm_43_input
unknown:	 
	unknown_0:
È 
	unknown_1:	 
	unknown_2:	Èd
	unknown_3:d
	unknown_4:d
	unknown_5:
identity¢StatefulPartitionedCallÂ
StatefulPartitionedCallStatefulPartitionedCalllstm_43_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
J__inference_sequential_43_layer_call_and_return_conditional_losses_21326932
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
_user_specified_namelstm_43_input
Ï

è
lstm_43_while_cond_2133280,
(lstm_43_while_lstm_43_while_loop_counter2
.lstm_43_while_lstm_43_while_maximum_iterations
lstm_43_while_placeholder
lstm_43_while_placeholder_1
lstm_43_while_placeholder_2
lstm_43_while_placeholder_3.
*lstm_43_while_less_lstm_43_strided_slice_1E
Alstm_43_while_lstm_43_while_cond_2133280___redundant_placeholder0E
Alstm_43_while_lstm_43_while_cond_2133280___redundant_placeholder1E
Alstm_43_while_lstm_43_while_cond_2133280___redundant_placeholder2E
Alstm_43_while_lstm_43_while_cond_2133280___redundant_placeholder3
lstm_43_while_identity

lstm_43/while/LessLesslstm_43_while_placeholder*lstm_43_while_less_lstm_43_strided_slice_1*
T0*
_output_shapes
: 2
lstm_43/while/Lessu
lstm_43/while/IdentityIdentitylstm_43/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_43/while/Identity"9
lstm_43_while_identitylstm_43/while/Identity:output:0*(
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
E__inference_dense_86_layer_call_and_return_conditional_losses_2132670

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
ô

(sequential_43_lstm_43_while_cond_2131766H
Dsequential_43_lstm_43_while_sequential_43_lstm_43_while_loop_counterN
Jsequential_43_lstm_43_while_sequential_43_lstm_43_while_maximum_iterations+
'sequential_43_lstm_43_while_placeholder-
)sequential_43_lstm_43_while_placeholder_1-
)sequential_43_lstm_43_while_placeholder_2-
)sequential_43_lstm_43_while_placeholder_3J
Fsequential_43_lstm_43_while_less_sequential_43_lstm_43_strided_slice_1a
]sequential_43_lstm_43_while_sequential_43_lstm_43_while_cond_2131766___redundant_placeholder0a
]sequential_43_lstm_43_while_sequential_43_lstm_43_while_cond_2131766___redundant_placeholder1a
]sequential_43_lstm_43_while_sequential_43_lstm_43_while_cond_2131766___redundant_placeholder2a
]sequential_43_lstm_43_while_sequential_43_lstm_43_while_cond_2131766___redundant_placeholder3(
$sequential_43_lstm_43_while_identity
Þ
 sequential_43/lstm_43/while/LessLess'sequential_43_lstm_43_while_placeholderFsequential_43_lstm_43_while_less_sequential_43_lstm_43_strided_slice_1*
T0*
_output_shapes
: 2"
 sequential_43/lstm_43/while/Less
$sequential_43/lstm_43/while/IdentityIdentity$sequential_43/lstm_43/while/Less:z:0*
T0
*
_output_shapes
: 2&
$sequential_43/lstm_43/while/Identity"U
$sequential_43_lstm_43_while_identity-sequential_43/lstm_43/while/Identity:output:0*(
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
while_cond_2133935
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2133935___redundant_placeholder05
1while_while_cond_2133935___redundant_placeholder15
1while_while_cond_2133935___redundant_placeholder25
1while_while_cond_2133935___redundant_placeholder3
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
Õ
·
)__inference_lstm_43_layer_call_fn_2134064

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
D__inference_lstm_43_layer_call_and_return_conditional_losses_21328942
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
	
±
/__inference_sequential_43_layer_call_fn_2132981
lstm_43_input
unknown:	 
	unknown_0:
È 
	unknown_1:	 
	unknown_2:	Èd
	unknown_3:d
	unknown_4:d
	unknown_5:
identity¢StatefulPartitionedCallÂ
StatefulPartitionedCallStatefulPartitionedCalllstm_43_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
J__inference_sequential_43_layer_call_and_return_conditional_losses_21329452
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
_user_specified_namelstm_43_input
C
Ó
while_body_2133936
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_43_matmul_readvariableop_resource_0:	 I
5while_lstm_cell_43_matmul_1_readvariableop_resource_0:
È C
4while_lstm_cell_43_biasadd_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_43_matmul_readvariableop_resource:	 G
3while_lstm_cell_43_matmul_1_readvariableop_resource:
È A
2while_lstm_cell_43_biasadd_readvariableop_resource:	 ¢)while/lstm_cell_43/BiasAdd/ReadVariableOp¢(while/lstm_cell_43/MatMul/ReadVariableOp¢*while/lstm_cell_43/MatMul_1/ReadVariableOpÃ
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
(while/lstm_cell_43/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_43_matmul_readvariableop_resource_0*
_output_shapes
:	 *
dtype02*
(while/lstm_cell_43/MatMul/ReadVariableOp×
while/lstm_cell_43/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_43/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_43/MatMulÐ
*while/lstm_cell_43/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_43_matmul_1_readvariableop_resource_0* 
_output_shapes
:
È *
dtype02,
*while/lstm_cell_43/MatMul_1/ReadVariableOpÀ
while/lstm_cell_43/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_43/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_43/MatMul_1¸
while/lstm_cell_43/addAddV2#while/lstm_cell_43/MatMul:product:0%while/lstm_cell_43/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_43/addÈ
)while/lstm_cell_43/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_43_biasadd_readvariableop_resource_0*
_output_shapes	
: *
dtype02+
)while/lstm_cell_43/BiasAdd/ReadVariableOpÅ
while/lstm_cell_43/BiasAddBiasAddwhile/lstm_cell_43/add:z:01while/lstm_cell_43/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_43/BiasAdd
"while/lstm_cell_43/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_43/split/split_dim
while/lstm_cell_43/splitSplit+while/lstm_cell_43/split/split_dim:output:0#while/lstm_cell_43/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
while/lstm_cell_43/split
while/lstm_cell_43/SigmoidSigmoid!while/lstm_cell_43/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_43/Sigmoid
while/lstm_cell_43/Sigmoid_1Sigmoid!while/lstm_cell_43/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_43/Sigmoid_1¡
while/lstm_cell_43/mulMul while/lstm_cell_43/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_43/mul
while/lstm_cell_43/ReluRelu!while/lstm_cell_43/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_43/Reluµ
while/lstm_cell_43/mul_1Mulwhile/lstm_cell_43/Sigmoid:y:0%while/lstm_cell_43/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_43/mul_1ª
while/lstm_cell_43/add_1AddV2while/lstm_cell_43/mul:z:0while/lstm_cell_43/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_43/add_1
while/lstm_cell_43/Sigmoid_2Sigmoid!while/lstm_cell_43/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_43/Sigmoid_2
while/lstm_cell_43/Relu_1Reluwhile/lstm_cell_43/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_43/Relu_1¹
while/lstm_cell_43/mul_2Mul while/lstm_cell_43/Sigmoid_2:y:0'while/lstm_cell_43/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_43/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_43/mul_2:z:0*
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
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityõ
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ä
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_43/mul_2:z:0*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_43/add_1:z:0*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*
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
2while_lstm_cell_43_biasadd_readvariableop_resource4while_lstm_cell_43_biasadd_readvariableop_resource_0"l
3while_lstm_cell_43_matmul_1_readvariableop_resource5while_lstm_cell_43_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_43_matmul_readvariableop_resource3while_lstm_cell_43_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : 2V
)while/lstm_cell_43/BiasAdd/ReadVariableOp)while/lstm_cell_43/BiasAdd/ReadVariableOp2T
(while/lstm_cell_43/MatMul/ReadVariableOp(while/lstm_cell_43/MatMul/ReadVariableOp2X
*while/lstm_cell_43/MatMul_1/ReadVariableOp*while/lstm_cell_43/MatMul_1/ReadVariableOp: 
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
while_cond_2133633
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2133633___redundant_placeholder05
1while_while_cond_2133633___redundant_placeholder15
1while_while_cond_2133633___redundant_placeholder25
1while_while_cond_2133633___redundant_placeholder3
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
Ñ	
ö
E__inference_dense_87_layer_call_and_return_conditional_losses_2134094

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
È[

D__inference_lstm_43_layer_call_and_return_conditional_losses_2133567
inputs_0>
+lstm_cell_43_matmul_readvariableop_resource:	 A
-lstm_cell_43_matmul_1_readvariableop_resource:
È ;
,lstm_cell_43_biasadd_readvariableop_resource:	 
identity¢#lstm_cell_43/BiasAdd/ReadVariableOp¢"lstm_cell_43/MatMul/ReadVariableOp¢$lstm_cell_43/MatMul_1/ReadVariableOp¢whileF
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
"lstm_cell_43/MatMul/ReadVariableOpReadVariableOp+lstm_cell_43_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype02$
"lstm_cell_43/MatMul/ReadVariableOp­
lstm_cell_43/MatMulMatMulstrided_slice_2:output:0*lstm_cell_43/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_43/MatMul¼
$lstm_cell_43/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_43_matmul_1_readvariableop_resource* 
_output_shapes
:
È *
dtype02&
$lstm_cell_43/MatMul_1/ReadVariableOp©
lstm_cell_43/MatMul_1MatMulzeros:output:0,lstm_cell_43/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_43/MatMul_1 
lstm_cell_43/addAddV2lstm_cell_43/MatMul:product:0lstm_cell_43/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_43/add´
#lstm_cell_43/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_43_biasadd_readvariableop_resource*
_output_shapes	
: *
dtype02%
#lstm_cell_43/BiasAdd/ReadVariableOp­
lstm_cell_43/BiasAddBiasAddlstm_cell_43/add:z:0+lstm_cell_43/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_43/BiasAdd~
lstm_cell_43/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_43/split/split_dim÷
lstm_cell_43/splitSplit%lstm_cell_43/split/split_dim:output:0lstm_cell_43/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
lstm_cell_43/split
lstm_cell_43/SigmoidSigmoidlstm_cell_43/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_43/Sigmoid
lstm_cell_43/Sigmoid_1Sigmoidlstm_cell_43/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_43/Sigmoid_1
lstm_cell_43/mulMullstm_cell_43/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_43/mul~
lstm_cell_43/ReluRelulstm_cell_43/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_43/Relu
lstm_cell_43/mul_1Mullstm_cell_43/Sigmoid:y:0lstm_cell_43/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_43/mul_1
lstm_cell_43/add_1AddV2lstm_cell_43/mul:z:0lstm_cell_43/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_43/add_1
lstm_cell_43/Sigmoid_2Sigmoidlstm_cell_43/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_43/Sigmoid_2}
lstm_cell_43/Relu_1Relulstm_cell_43/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_43/Relu_1¡
lstm_cell_43/mul_2Mullstm_cell_43/Sigmoid_2:y:0!lstm_cell_43/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_43/mul_2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_43_matmul_readvariableop_resource-lstm_cell_43_matmul_1_readvariableop_resource,lstm_cell_43_biasadd_readvariableop_resource*
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
while_body_2133483*
condR
while_cond_2133482*M
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
IdentityIdentitystrided_slice_3:output:0$^lstm_cell_43/BiasAdd/ReadVariableOp#^lstm_cell_43/MatMul/ReadVariableOp%^lstm_cell_43/MatMul_1/ReadVariableOp^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_43/BiasAdd/ReadVariableOp#lstm_cell_43/BiasAdd/ReadVariableOp2H
"lstm_cell_43/MatMul/ReadVariableOp"lstm_cell_43/MatMul/ReadVariableOp2L
$lstm_cell_43/MatMul_1/ReadVariableOp$lstm_cell_43/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
ø{
È
J__inference_sequential_43_layer_call_and_return_conditional_losses_2133378

inputsF
3lstm_43_lstm_cell_43_matmul_readvariableop_resource:	 I
5lstm_43_lstm_cell_43_matmul_1_readvariableop_resource:
È C
4lstm_43_lstm_cell_43_biasadd_readvariableop_resource:	 :
'dense_86_matmul_readvariableop_resource:	Èd6
(dense_86_biasadd_readvariableop_resource:d9
'dense_87_matmul_readvariableop_resource:d6
(dense_87_biasadd_readvariableop_resource:
identity¢dense_86/BiasAdd/ReadVariableOp¢dense_86/MatMul/ReadVariableOp¢dense_87/BiasAdd/ReadVariableOp¢dense_87/MatMul/ReadVariableOp¢+lstm_43/lstm_cell_43/BiasAdd/ReadVariableOp¢*lstm_43/lstm_cell_43/MatMul/ReadVariableOp¢,lstm_43/lstm_cell_43/MatMul_1/ReadVariableOp¢lstm_43/whileT
lstm_43/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_43/Shape
lstm_43/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_43/strided_slice/stack
lstm_43/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_43/strided_slice/stack_1
lstm_43/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_43/strided_slice/stack_2
lstm_43/strided_sliceStridedSlicelstm_43/Shape:output:0$lstm_43/strided_slice/stack:output:0&lstm_43/strided_slice/stack_1:output:0&lstm_43/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_43/strided_slicem
lstm_43/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :È2
lstm_43/zeros/mul/y
lstm_43/zeros/mulMullstm_43/strided_slice:output:0lstm_43/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_43/zeros/mulo
lstm_43/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_43/zeros/Less/y
lstm_43/zeros/LessLesslstm_43/zeros/mul:z:0lstm_43/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_43/zeros/Lesss
lstm_43/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :È2
lstm_43/zeros/packed/1£
lstm_43/zeros/packedPacklstm_43/strided_slice:output:0lstm_43/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_43/zeros/packedo
lstm_43/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_43/zeros/Const
lstm_43/zerosFilllstm_43/zeros/packed:output:0lstm_43/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_43/zerosq
lstm_43/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :È2
lstm_43/zeros_1/mul/y
lstm_43/zeros_1/mulMullstm_43/strided_slice:output:0lstm_43/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_43/zeros_1/muls
lstm_43/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_43/zeros_1/Less/y
lstm_43/zeros_1/LessLesslstm_43/zeros_1/mul:z:0lstm_43/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_43/zeros_1/Lessw
lstm_43/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :È2
lstm_43/zeros_1/packed/1©
lstm_43/zeros_1/packedPacklstm_43/strided_slice:output:0!lstm_43/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_43/zeros_1/packeds
lstm_43/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_43/zeros_1/Const
lstm_43/zeros_1Filllstm_43/zeros_1/packed:output:0lstm_43/zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_43/zeros_1
lstm_43/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_43/transpose/perm
lstm_43/transpose	Transposeinputslstm_43/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_43/transposeg
lstm_43/Shape_1Shapelstm_43/transpose:y:0*
T0*
_output_shapes
:2
lstm_43/Shape_1
lstm_43/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_43/strided_slice_1/stack
lstm_43/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_43/strided_slice_1/stack_1
lstm_43/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_43/strided_slice_1/stack_2
lstm_43/strided_slice_1StridedSlicelstm_43/Shape_1:output:0&lstm_43/strided_slice_1/stack:output:0(lstm_43/strided_slice_1/stack_1:output:0(lstm_43/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_43/strided_slice_1
#lstm_43/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2%
#lstm_43/TensorArrayV2/element_shapeÒ
lstm_43/TensorArrayV2TensorListReserve,lstm_43/TensorArrayV2/element_shape:output:0 lstm_43/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_43/TensorArrayV2Ï
=lstm_43/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2?
=lstm_43/TensorArrayUnstack/TensorListFromTensor/element_shape
/lstm_43/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_43/transpose:y:0Flstm_43/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_43/TensorArrayUnstack/TensorListFromTensor
lstm_43/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_43/strided_slice_2/stack
lstm_43/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_43/strided_slice_2/stack_1
lstm_43/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_43/strided_slice_2/stack_2¬
lstm_43/strided_slice_2StridedSlicelstm_43/transpose:y:0&lstm_43/strided_slice_2/stack:output:0(lstm_43/strided_slice_2/stack_1:output:0(lstm_43/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_43/strided_slice_2Í
*lstm_43/lstm_cell_43/MatMul/ReadVariableOpReadVariableOp3lstm_43_lstm_cell_43_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype02,
*lstm_43/lstm_cell_43/MatMul/ReadVariableOpÍ
lstm_43/lstm_cell_43/MatMulMatMul lstm_43/strided_slice_2:output:02lstm_43/lstm_cell_43/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_43/lstm_cell_43/MatMulÔ
,lstm_43/lstm_cell_43/MatMul_1/ReadVariableOpReadVariableOp5lstm_43_lstm_cell_43_matmul_1_readvariableop_resource* 
_output_shapes
:
È *
dtype02.
,lstm_43/lstm_cell_43/MatMul_1/ReadVariableOpÉ
lstm_43/lstm_cell_43/MatMul_1MatMullstm_43/zeros:output:04lstm_43/lstm_cell_43/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_43/lstm_cell_43/MatMul_1À
lstm_43/lstm_cell_43/addAddV2%lstm_43/lstm_cell_43/MatMul:product:0'lstm_43/lstm_cell_43/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_43/lstm_cell_43/addÌ
+lstm_43/lstm_cell_43/BiasAdd/ReadVariableOpReadVariableOp4lstm_43_lstm_cell_43_biasadd_readvariableop_resource*
_output_shapes	
: *
dtype02-
+lstm_43/lstm_cell_43/BiasAdd/ReadVariableOpÍ
lstm_43/lstm_cell_43/BiasAddBiasAddlstm_43/lstm_cell_43/add:z:03lstm_43/lstm_cell_43/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_43/lstm_cell_43/BiasAdd
$lstm_43/lstm_cell_43/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_43/lstm_cell_43/split/split_dim
lstm_43/lstm_cell_43/splitSplit-lstm_43/lstm_cell_43/split/split_dim:output:0%lstm_43/lstm_cell_43/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
lstm_43/lstm_cell_43/split
lstm_43/lstm_cell_43/SigmoidSigmoid#lstm_43/lstm_cell_43/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_43/lstm_cell_43/Sigmoid£
lstm_43/lstm_cell_43/Sigmoid_1Sigmoid#lstm_43/lstm_cell_43/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2 
lstm_43/lstm_cell_43/Sigmoid_1¬
lstm_43/lstm_cell_43/mulMul"lstm_43/lstm_cell_43/Sigmoid_1:y:0lstm_43/zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_43/lstm_cell_43/mul
lstm_43/lstm_cell_43/ReluRelu#lstm_43/lstm_cell_43/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_43/lstm_cell_43/Relu½
lstm_43/lstm_cell_43/mul_1Mul lstm_43/lstm_cell_43/Sigmoid:y:0'lstm_43/lstm_cell_43/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_43/lstm_cell_43/mul_1²
lstm_43/lstm_cell_43/add_1AddV2lstm_43/lstm_cell_43/mul:z:0lstm_43/lstm_cell_43/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_43/lstm_cell_43/add_1£
lstm_43/lstm_cell_43/Sigmoid_2Sigmoid#lstm_43/lstm_cell_43/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2 
lstm_43/lstm_cell_43/Sigmoid_2
lstm_43/lstm_cell_43/Relu_1Relulstm_43/lstm_cell_43/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_43/lstm_cell_43/Relu_1Á
lstm_43/lstm_cell_43/mul_2Mul"lstm_43/lstm_cell_43/Sigmoid_2:y:0)lstm_43/lstm_cell_43/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_43/lstm_cell_43/mul_2
%lstm_43/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÈ   2'
%lstm_43/TensorArrayV2_1/element_shapeØ
lstm_43/TensorArrayV2_1TensorListReserve.lstm_43/TensorArrayV2_1/element_shape:output:0 lstm_43/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_43/TensorArrayV2_1^
lstm_43/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_43/time
 lstm_43/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 lstm_43/while/maximum_iterationsz
lstm_43/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_43/while/loop_counterì
lstm_43/whileWhile#lstm_43/while/loop_counter:output:0)lstm_43/while/maximum_iterations:output:0lstm_43/time:output:0 lstm_43/TensorArrayV2_1:handle:0lstm_43/zeros:output:0lstm_43/zeros_1:output:0 lstm_43/strided_slice_1:output:0?lstm_43/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_43_lstm_cell_43_matmul_readvariableop_resource5lstm_43_lstm_cell_43_matmul_1_readvariableop_resource4lstm_43_lstm_cell_43_biasadd_readvariableop_resource*
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
lstm_43_while_body_2133281*&
condR
lstm_43_while_cond_2133280*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : *
parallel_iterations 2
lstm_43/whileÅ
8lstm_43/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÈ   2:
8lstm_43/TensorArrayV2Stack/TensorListStack/element_shape
*lstm_43/TensorArrayV2Stack/TensorListStackTensorListStacklstm_43/while:output:3Alstm_43/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*
element_dtype02,
*lstm_43/TensorArrayV2Stack/TensorListStack
lstm_43/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
lstm_43/strided_slice_3/stack
lstm_43/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_43/strided_slice_3/stack_1
lstm_43/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_43/strided_slice_3/stack_2Ë
lstm_43/strided_slice_3StridedSlice3lstm_43/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_43/strided_slice_3/stack:output:0(lstm_43/strided_slice_3/stack_1:output:0(lstm_43/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*
shrink_axis_mask2
lstm_43/strided_slice_3
lstm_43/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_43/transpose_1/permÆ
lstm_43/transpose_1	Transpose3lstm_43/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_43/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_43/transpose_1v
lstm_43/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_43/runtime©
dense_86/MatMul/ReadVariableOpReadVariableOp'dense_86_matmul_readvariableop_resource*
_output_shapes
:	Èd*
dtype02 
dense_86/MatMul/ReadVariableOp¨
dense_86/MatMulMatMul lstm_43/strided_slice_3:output:0&dense_86/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dense_86/MatMul§
dense_86/BiasAdd/ReadVariableOpReadVariableOp(dense_86_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02!
dense_86/BiasAdd/ReadVariableOp¥
dense_86/BiasAddBiasAdddense_86/MatMul:product:0'dense_86/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dense_86/BiasAdds
dense_86/ReluReludense_86/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dense_86/Relu¨
dense_87/MatMul/ReadVariableOpReadVariableOp'dense_87_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02 
dense_87/MatMul/ReadVariableOp£
dense_87/MatMulMatMuldense_86/Relu:activations:0&dense_87/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_87/MatMul§
dense_87/BiasAdd/ReadVariableOpReadVariableOp(dense_87_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_87/BiasAdd/ReadVariableOp¥
dense_87/BiasAddBiasAdddense_87/MatMul:product:0'dense_87/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_87/BiasAdd
IdentityIdentitydense_87/BiasAdd:output:0 ^dense_86/BiasAdd/ReadVariableOp^dense_86/MatMul/ReadVariableOp ^dense_87/BiasAdd/ReadVariableOp^dense_87/MatMul/ReadVariableOp,^lstm_43/lstm_cell_43/BiasAdd/ReadVariableOp+^lstm_43/lstm_cell_43/MatMul/ReadVariableOp-^lstm_43/lstm_cell_43/MatMul_1/ReadVariableOp^lstm_43/while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2B
dense_86/BiasAdd/ReadVariableOpdense_86/BiasAdd/ReadVariableOp2@
dense_86/MatMul/ReadVariableOpdense_86/MatMul/ReadVariableOp2B
dense_87/BiasAdd/ReadVariableOpdense_87/BiasAdd/ReadVariableOp2@
dense_87/MatMul/ReadVariableOpdense_87/MatMul/ReadVariableOp2Z
+lstm_43/lstm_cell_43/BiasAdd/ReadVariableOp+lstm_43/lstm_cell_43/BiasAdd/ReadVariableOp2X
*lstm_43/lstm_cell_43/MatMul/ReadVariableOp*lstm_43/lstm_cell_43/MatMul/ReadVariableOp2\
,lstm_43/lstm_cell_43/MatMul_1/ReadVariableOp,lstm_43/lstm_cell_43/MatMul_1/ReadVariableOp2
lstm_43/whilelstm_43/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ø
.__inference_lstm_cell_43_layer_call_fn_2134184

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
I__inference_lstm_cell_43_layer_call_and_return_conditional_losses_21319392
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
O
Ó

lstm_43_while_body_2133281,
(lstm_43_while_lstm_43_while_loop_counter2
.lstm_43_while_lstm_43_while_maximum_iterations
lstm_43_while_placeholder
lstm_43_while_placeholder_1
lstm_43_while_placeholder_2
lstm_43_while_placeholder_3+
'lstm_43_while_lstm_43_strided_slice_1_0g
clstm_43_while_tensorarrayv2read_tensorlistgetitem_lstm_43_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_43_while_lstm_cell_43_matmul_readvariableop_resource_0:	 Q
=lstm_43_while_lstm_cell_43_matmul_1_readvariableop_resource_0:
È K
<lstm_43_while_lstm_cell_43_biasadd_readvariableop_resource_0:	 
lstm_43_while_identity
lstm_43_while_identity_1
lstm_43_while_identity_2
lstm_43_while_identity_3
lstm_43_while_identity_4
lstm_43_while_identity_5)
%lstm_43_while_lstm_43_strided_slice_1e
alstm_43_while_tensorarrayv2read_tensorlistgetitem_lstm_43_tensorarrayunstack_tensorlistfromtensorL
9lstm_43_while_lstm_cell_43_matmul_readvariableop_resource:	 O
;lstm_43_while_lstm_cell_43_matmul_1_readvariableop_resource:
È I
:lstm_43_while_lstm_cell_43_biasadd_readvariableop_resource:	 ¢1lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp¢0lstm_43/while/lstm_cell_43/MatMul/ReadVariableOp¢2lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOpÓ
?lstm_43/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2A
?lstm_43/while/TensorArrayV2Read/TensorListGetItem/element_shape
1lstm_43/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_43_while_tensorarrayv2read_tensorlistgetitem_lstm_43_tensorarrayunstack_tensorlistfromtensor_0lstm_43_while_placeholderHlstm_43/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype023
1lstm_43/while/TensorArrayV2Read/TensorListGetItemá
0lstm_43/while/lstm_cell_43/MatMul/ReadVariableOpReadVariableOp;lstm_43_while_lstm_cell_43_matmul_readvariableop_resource_0*
_output_shapes
:	 *
dtype022
0lstm_43/while/lstm_cell_43/MatMul/ReadVariableOp÷
!lstm_43/while/lstm_cell_43/MatMulMatMul8lstm_43/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_43/while/lstm_cell_43/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!lstm_43/while/lstm_cell_43/MatMulè
2lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOpReadVariableOp=lstm_43_while_lstm_cell_43_matmul_1_readvariableop_resource_0* 
_output_shapes
:
È *
dtype024
2lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOpà
#lstm_43/while/lstm_cell_43/MatMul_1MatMullstm_43_while_placeholder_2:lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_43/while/lstm_cell_43/MatMul_1Ø
lstm_43/while/lstm_cell_43/addAddV2+lstm_43/while/lstm_cell_43/MatMul:product:0-lstm_43/while/lstm_cell_43/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_43/while/lstm_cell_43/addà
1lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOpReadVariableOp<lstm_43_while_lstm_cell_43_biasadd_readvariableop_resource_0*
_output_shapes	
: *
dtype023
1lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOpå
"lstm_43/while/lstm_cell_43/BiasAddBiasAdd"lstm_43/while/lstm_cell_43/add:z:09lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_43/while/lstm_cell_43/BiasAdd
*lstm_43/while/lstm_cell_43/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_43/while/lstm_cell_43/split/split_dim¯
 lstm_43/while/lstm_cell_43/splitSplit3lstm_43/while/lstm_cell_43/split/split_dim:output:0+lstm_43/while/lstm_cell_43/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2"
 lstm_43/while/lstm_cell_43/split±
"lstm_43/while/lstm_cell_43/SigmoidSigmoid)lstm_43/while/lstm_cell_43/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2$
"lstm_43/while/lstm_cell_43/Sigmoidµ
$lstm_43/while/lstm_cell_43/Sigmoid_1Sigmoid)lstm_43/while/lstm_cell_43/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2&
$lstm_43/while/lstm_cell_43/Sigmoid_1Á
lstm_43/while/lstm_cell_43/mulMul(lstm_43/while/lstm_cell_43/Sigmoid_1:y:0lstm_43_while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2 
lstm_43/while/lstm_cell_43/mul¨
lstm_43/while/lstm_cell_43/ReluRelu)lstm_43/while/lstm_cell_43/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2!
lstm_43/while/lstm_cell_43/ReluÕ
 lstm_43/while/lstm_cell_43/mul_1Mul&lstm_43/while/lstm_cell_43/Sigmoid:y:0-lstm_43/while/lstm_cell_43/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2"
 lstm_43/while/lstm_cell_43/mul_1Ê
 lstm_43/while/lstm_cell_43/add_1AddV2"lstm_43/while/lstm_cell_43/mul:z:0$lstm_43/while/lstm_cell_43/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2"
 lstm_43/while/lstm_cell_43/add_1µ
$lstm_43/while/lstm_cell_43/Sigmoid_2Sigmoid)lstm_43/while/lstm_cell_43/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2&
$lstm_43/while/lstm_cell_43/Sigmoid_2§
!lstm_43/while/lstm_cell_43/Relu_1Relu$lstm_43/while/lstm_cell_43/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2#
!lstm_43/while/lstm_cell_43/Relu_1Ù
 lstm_43/while/lstm_cell_43/mul_2Mul(lstm_43/while/lstm_cell_43/Sigmoid_2:y:0/lstm_43/while/lstm_cell_43/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2"
 lstm_43/while/lstm_cell_43/mul_2
2lstm_43/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_43_while_placeholder_1lstm_43_while_placeholder$lstm_43/while/lstm_cell_43/mul_2:z:0*
_output_shapes
: *
element_dtype024
2lstm_43/while/TensorArrayV2Write/TensorListSetIteml
lstm_43/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_43/while/add/y
lstm_43/while/addAddV2lstm_43_while_placeholderlstm_43/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_43/while/addp
lstm_43/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_43/while/add_1/y
lstm_43/while/add_1AddV2(lstm_43_while_lstm_43_while_loop_counterlstm_43/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_43/while/add_1
lstm_43/while/IdentityIdentitylstm_43/while/add_1:z:02^lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp1^lstm_43/while/lstm_cell_43/MatMul/ReadVariableOp3^lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_43/while/Identity­
lstm_43/while/Identity_1Identity.lstm_43_while_lstm_43_while_maximum_iterations2^lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp1^lstm_43/while/lstm_cell_43/MatMul/ReadVariableOp3^lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_43/while/Identity_1
lstm_43/while/Identity_2Identitylstm_43/while/add:z:02^lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp1^lstm_43/while/lstm_cell_43/MatMul/ReadVariableOp3^lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_43/while/Identity_2Á
lstm_43/while/Identity_3IdentityBlstm_43/while/TensorArrayV2Write/TensorListSetItem:output_handle:02^lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp1^lstm_43/while/lstm_cell_43/MatMul/ReadVariableOp3^lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_43/while/Identity_3µ
lstm_43/while/Identity_4Identity$lstm_43/while/lstm_cell_43/mul_2:z:02^lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp1^lstm_43/while/lstm_cell_43/MatMul/ReadVariableOp3^lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_43/while/Identity_4µ
lstm_43/while/Identity_5Identity$lstm_43/while/lstm_cell_43/add_1:z:02^lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp1^lstm_43/while/lstm_cell_43/MatMul/ReadVariableOp3^lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_43/while/Identity_5"9
lstm_43_while_identitylstm_43/while/Identity:output:0"=
lstm_43_while_identity_1!lstm_43/while/Identity_1:output:0"=
lstm_43_while_identity_2!lstm_43/while/Identity_2:output:0"=
lstm_43_while_identity_3!lstm_43/while/Identity_3:output:0"=
lstm_43_while_identity_4!lstm_43/while/Identity_4:output:0"=
lstm_43_while_identity_5!lstm_43/while/Identity_5:output:0"P
%lstm_43_while_lstm_43_strided_slice_1'lstm_43_while_lstm_43_strided_slice_1_0"z
:lstm_43_while_lstm_cell_43_biasadd_readvariableop_resource<lstm_43_while_lstm_cell_43_biasadd_readvariableop_resource_0"|
;lstm_43_while_lstm_cell_43_matmul_1_readvariableop_resource=lstm_43_while_lstm_cell_43_matmul_1_readvariableop_resource_0"x
9lstm_43_while_lstm_cell_43_matmul_readvariableop_resource;lstm_43_while_lstm_cell_43_matmul_readvariableop_resource_0"È
alstm_43_while_tensorarrayv2read_tensorlistgetitem_lstm_43_tensorarrayunstack_tensorlistfromtensorclstm_43_while_tensorarrayv2read_tensorlistgetitem_lstm_43_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : 2f
1lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp1lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp2d
0lstm_43/while/lstm_cell_43/MatMul/ReadVariableOp0lstm_43/while/lstm_cell_43/MatMul/ReadVariableOp2h
2lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOp2lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOp: 
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
Ñ	
ö
E__inference_dense_87_layer_call_and_return_conditional_losses_2132686

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
while_cond_2131952
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2131952___redundant_placeholder05
1while_while_cond_2131952___redundant_placeholder15
1while_while_cond_2131952___redundant_placeholder25
1while_while_cond_2131952___redundant_placeholder3
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
Å

I__inference_lstm_cell_43_layer_call_and_return_conditional_losses_2134167

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
í
¹
)__inference_lstm_43_layer_call_fn_2134042
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
D__inference_lstm_43_layer_call_and_return_conditional_losses_21322322
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
C
Ó
while_body_2133483
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_43_matmul_readvariableop_resource_0:	 I
5while_lstm_cell_43_matmul_1_readvariableop_resource_0:
È C
4while_lstm_cell_43_biasadd_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_43_matmul_readvariableop_resource:	 G
3while_lstm_cell_43_matmul_1_readvariableop_resource:
È A
2while_lstm_cell_43_biasadd_readvariableop_resource:	 ¢)while/lstm_cell_43/BiasAdd/ReadVariableOp¢(while/lstm_cell_43/MatMul/ReadVariableOp¢*while/lstm_cell_43/MatMul_1/ReadVariableOpÃ
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
(while/lstm_cell_43/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_43_matmul_readvariableop_resource_0*
_output_shapes
:	 *
dtype02*
(while/lstm_cell_43/MatMul/ReadVariableOp×
while/lstm_cell_43/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_43/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_43/MatMulÐ
*while/lstm_cell_43/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_43_matmul_1_readvariableop_resource_0* 
_output_shapes
:
È *
dtype02,
*while/lstm_cell_43/MatMul_1/ReadVariableOpÀ
while/lstm_cell_43/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_43/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_43/MatMul_1¸
while/lstm_cell_43/addAddV2#while/lstm_cell_43/MatMul:product:0%while/lstm_cell_43/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_43/addÈ
)while/lstm_cell_43/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_43_biasadd_readvariableop_resource_0*
_output_shapes	
: *
dtype02+
)while/lstm_cell_43/BiasAdd/ReadVariableOpÅ
while/lstm_cell_43/BiasAddBiasAddwhile/lstm_cell_43/add:z:01while/lstm_cell_43/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_43/BiasAdd
"while/lstm_cell_43/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_43/split/split_dim
while/lstm_cell_43/splitSplit+while/lstm_cell_43/split/split_dim:output:0#while/lstm_cell_43/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
while/lstm_cell_43/split
while/lstm_cell_43/SigmoidSigmoid!while/lstm_cell_43/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_43/Sigmoid
while/lstm_cell_43/Sigmoid_1Sigmoid!while/lstm_cell_43/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_43/Sigmoid_1¡
while/lstm_cell_43/mulMul while/lstm_cell_43/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_43/mul
while/lstm_cell_43/ReluRelu!while/lstm_cell_43/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_43/Reluµ
while/lstm_cell_43/mul_1Mulwhile/lstm_cell_43/Sigmoid:y:0%while/lstm_cell_43/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_43/mul_1ª
while/lstm_cell_43/add_1AddV2while/lstm_cell_43/mul:z:0while/lstm_cell_43/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_43/add_1
while/lstm_cell_43/Sigmoid_2Sigmoid!while/lstm_cell_43/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_43/Sigmoid_2
while/lstm_cell_43/Relu_1Reluwhile/lstm_cell_43/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_43/Relu_1¹
while/lstm_cell_43/mul_2Mul while/lstm_cell_43/Sigmoid_2:y:0'while/lstm_cell_43/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_43/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_43/mul_2:z:0*
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
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityõ
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ä
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_43/mul_2:z:0*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_43/add_1:z:0*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*
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
2while_lstm_cell_43_biasadd_readvariableop_resource4while_lstm_cell_43_biasadd_readvariableop_resource_0"l
3while_lstm_cell_43_matmul_1_readvariableop_resource5while_lstm_cell_43_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_43_matmul_readvariableop_resource3while_lstm_cell_43_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : 2V
)while/lstm_cell_43/BiasAdd/ReadVariableOp)while/lstm_cell_43/BiasAdd/ReadVariableOp2T
(while/lstm_cell_43/MatMul/ReadVariableOp(while/lstm_cell_43/MatMul/ReadVariableOp2X
*while/lstm_cell_43/MatMul_1/ReadVariableOp*while/lstm_cell_43/MatMul_1/ReadVariableOp: 
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
.__inference_lstm_cell_43_layer_call_fn_2134201

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
I__inference_lstm_cell_43_layer_call_and_return_conditional_losses_21320852
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
ø{
È
J__inference_sequential_43_layer_call_and_return_conditional_losses_2133214

inputsF
3lstm_43_lstm_cell_43_matmul_readvariableop_resource:	 I
5lstm_43_lstm_cell_43_matmul_1_readvariableop_resource:
È C
4lstm_43_lstm_cell_43_biasadd_readvariableop_resource:	 :
'dense_86_matmul_readvariableop_resource:	Èd6
(dense_86_biasadd_readvariableop_resource:d9
'dense_87_matmul_readvariableop_resource:d6
(dense_87_biasadd_readvariableop_resource:
identity¢dense_86/BiasAdd/ReadVariableOp¢dense_86/MatMul/ReadVariableOp¢dense_87/BiasAdd/ReadVariableOp¢dense_87/MatMul/ReadVariableOp¢+lstm_43/lstm_cell_43/BiasAdd/ReadVariableOp¢*lstm_43/lstm_cell_43/MatMul/ReadVariableOp¢,lstm_43/lstm_cell_43/MatMul_1/ReadVariableOp¢lstm_43/whileT
lstm_43/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_43/Shape
lstm_43/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_43/strided_slice/stack
lstm_43/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_43/strided_slice/stack_1
lstm_43/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_43/strided_slice/stack_2
lstm_43/strided_sliceStridedSlicelstm_43/Shape:output:0$lstm_43/strided_slice/stack:output:0&lstm_43/strided_slice/stack_1:output:0&lstm_43/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_43/strided_slicem
lstm_43/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :È2
lstm_43/zeros/mul/y
lstm_43/zeros/mulMullstm_43/strided_slice:output:0lstm_43/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_43/zeros/mulo
lstm_43/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_43/zeros/Less/y
lstm_43/zeros/LessLesslstm_43/zeros/mul:z:0lstm_43/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_43/zeros/Lesss
lstm_43/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :È2
lstm_43/zeros/packed/1£
lstm_43/zeros/packedPacklstm_43/strided_slice:output:0lstm_43/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_43/zeros/packedo
lstm_43/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_43/zeros/Const
lstm_43/zerosFilllstm_43/zeros/packed:output:0lstm_43/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_43/zerosq
lstm_43/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :È2
lstm_43/zeros_1/mul/y
lstm_43/zeros_1/mulMullstm_43/strided_slice:output:0lstm_43/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_43/zeros_1/muls
lstm_43/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_43/zeros_1/Less/y
lstm_43/zeros_1/LessLesslstm_43/zeros_1/mul:z:0lstm_43/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_43/zeros_1/Lessw
lstm_43/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :È2
lstm_43/zeros_1/packed/1©
lstm_43/zeros_1/packedPacklstm_43/strided_slice:output:0!lstm_43/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_43/zeros_1/packeds
lstm_43/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_43/zeros_1/Const
lstm_43/zeros_1Filllstm_43/zeros_1/packed:output:0lstm_43/zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_43/zeros_1
lstm_43/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_43/transpose/perm
lstm_43/transpose	Transposeinputslstm_43/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_43/transposeg
lstm_43/Shape_1Shapelstm_43/transpose:y:0*
T0*
_output_shapes
:2
lstm_43/Shape_1
lstm_43/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_43/strided_slice_1/stack
lstm_43/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_43/strided_slice_1/stack_1
lstm_43/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_43/strided_slice_1/stack_2
lstm_43/strided_slice_1StridedSlicelstm_43/Shape_1:output:0&lstm_43/strided_slice_1/stack:output:0(lstm_43/strided_slice_1/stack_1:output:0(lstm_43/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_43/strided_slice_1
#lstm_43/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2%
#lstm_43/TensorArrayV2/element_shapeÒ
lstm_43/TensorArrayV2TensorListReserve,lstm_43/TensorArrayV2/element_shape:output:0 lstm_43/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_43/TensorArrayV2Ï
=lstm_43/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2?
=lstm_43/TensorArrayUnstack/TensorListFromTensor/element_shape
/lstm_43/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_43/transpose:y:0Flstm_43/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/lstm_43/TensorArrayUnstack/TensorListFromTensor
lstm_43/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_43/strided_slice_2/stack
lstm_43/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_43/strided_slice_2/stack_1
lstm_43/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_43/strided_slice_2/stack_2¬
lstm_43/strided_slice_2StridedSlicelstm_43/transpose:y:0&lstm_43/strided_slice_2/stack:output:0(lstm_43/strided_slice_2/stack_1:output:0(lstm_43/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_43/strided_slice_2Í
*lstm_43/lstm_cell_43/MatMul/ReadVariableOpReadVariableOp3lstm_43_lstm_cell_43_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype02,
*lstm_43/lstm_cell_43/MatMul/ReadVariableOpÍ
lstm_43/lstm_cell_43/MatMulMatMul lstm_43/strided_slice_2:output:02lstm_43/lstm_cell_43/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_43/lstm_cell_43/MatMulÔ
,lstm_43/lstm_cell_43/MatMul_1/ReadVariableOpReadVariableOp5lstm_43_lstm_cell_43_matmul_1_readvariableop_resource* 
_output_shapes
:
È *
dtype02.
,lstm_43/lstm_cell_43/MatMul_1/ReadVariableOpÉ
lstm_43/lstm_cell_43/MatMul_1MatMullstm_43/zeros:output:04lstm_43/lstm_cell_43/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_43/lstm_cell_43/MatMul_1À
lstm_43/lstm_cell_43/addAddV2%lstm_43/lstm_cell_43/MatMul:product:0'lstm_43/lstm_cell_43/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_43/lstm_cell_43/addÌ
+lstm_43/lstm_cell_43/BiasAdd/ReadVariableOpReadVariableOp4lstm_43_lstm_cell_43_biasadd_readvariableop_resource*
_output_shapes	
: *
dtype02-
+lstm_43/lstm_cell_43/BiasAdd/ReadVariableOpÍ
lstm_43/lstm_cell_43/BiasAddBiasAddlstm_43/lstm_cell_43/add:z:03lstm_43/lstm_cell_43/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_43/lstm_cell_43/BiasAdd
$lstm_43/lstm_cell_43/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$lstm_43/lstm_cell_43/split/split_dim
lstm_43/lstm_cell_43/splitSplit-lstm_43/lstm_cell_43/split/split_dim:output:0%lstm_43/lstm_cell_43/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
lstm_43/lstm_cell_43/split
lstm_43/lstm_cell_43/SigmoidSigmoid#lstm_43/lstm_cell_43/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_43/lstm_cell_43/Sigmoid£
lstm_43/lstm_cell_43/Sigmoid_1Sigmoid#lstm_43/lstm_cell_43/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2 
lstm_43/lstm_cell_43/Sigmoid_1¬
lstm_43/lstm_cell_43/mulMul"lstm_43/lstm_cell_43/Sigmoid_1:y:0lstm_43/zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_43/lstm_cell_43/mul
lstm_43/lstm_cell_43/ReluRelu#lstm_43/lstm_cell_43/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_43/lstm_cell_43/Relu½
lstm_43/lstm_cell_43/mul_1Mul lstm_43/lstm_cell_43/Sigmoid:y:0'lstm_43/lstm_cell_43/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_43/lstm_cell_43/mul_1²
lstm_43/lstm_cell_43/add_1AddV2lstm_43/lstm_cell_43/mul:z:0lstm_43/lstm_cell_43/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_43/lstm_cell_43/add_1£
lstm_43/lstm_cell_43/Sigmoid_2Sigmoid#lstm_43/lstm_cell_43/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2 
lstm_43/lstm_cell_43/Sigmoid_2
lstm_43/lstm_cell_43/Relu_1Relulstm_43/lstm_cell_43/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_43/lstm_cell_43/Relu_1Á
lstm_43/lstm_cell_43/mul_2Mul"lstm_43/lstm_cell_43/Sigmoid_2:y:0)lstm_43/lstm_cell_43/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_43/lstm_cell_43/mul_2
%lstm_43/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÈ   2'
%lstm_43/TensorArrayV2_1/element_shapeØ
lstm_43/TensorArrayV2_1TensorListReserve.lstm_43/TensorArrayV2_1/element_shape:output:0 lstm_43/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_43/TensorArrayV2_1^
lstm_43/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_43/time
 lstm_43/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 lstm_43/while/maximum_iterationsz
lstm_43/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_43/while/loop_counterì
lstm_43/whileWhile#lstm_43/while/loop_counter:output:0)lstm_43/while/maximum_iterations:output:0lstm_43/time:output:0 lstm_43/TensorArrayV2_1:handle:0lstm_43/zeros:output:0lstm_43/zeros_1:output:0 lstm_43/strided_slice_1:output:0?lstm_43/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_43_lstm_cell_43_matmul_readvariableop_resource5lstm_43_lstm_cell_43_matmul_1_readvariableop_resource4lstm_43_lstm_cell_43_biasadd_readvariableop_resource*
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
lstm_43_while_body_2133117*&
condR
lstm_43_while_cond_2133116*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : *
parallel_iterations 2
lstm_43/whileÅ
8lstm_43/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÈ   2:
8lstm_43/TensorArrayV2Stack/TensorListStack/element_shape
*lstm_43/TensorArrayV2Stack/TensorListStackTensorListStacklstm_43/while:output:3Alstm_43/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*
element_dtype02,
*lstm_43/TensorArrayV2Stack/TensorListStack
lstm_43/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
lstm_43/strided_slice_3/stack
lstm_43/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
lstm_43/strided_slice_3/stack_1
lstm_43/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
lstm_43/strided_slice_3/stack_2Ë
lstm_43/strided_slice_3StridedSlice3lstm_43/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_43/strided_slice_3/stack:output:0(lstm_43/strided_slice_3/stack_1:output:0(lstm_43/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*
shrink_axis_mask2
lstm_43/strided_slice_3
lstm_43/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_43/transpose_1/permÆ
lstm_43/transpose_1	Transpose3lstm_43/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_43/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_43/transpose_1v
lstm_43/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_43/runtime©
dense_86/MatMul/ReadVariableOpReadVariableOp'dense_86_matmul_readvariableop_resource*
_output_shapes
:	Èd*
dtype02 
dense_86/MatMul/ReadVariableOp¨
dense_86/MatMulMatMul lstm_43/strided_slice_3:output:0&dense_86/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dense_86/MatMul§
dense_86/BiasAdd/ReadVariableOpReadVariableOp(dense_86_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02!
dense_86/BiasAdd/ReadVariableOp¥
dense_86/BiasAddBiasAdddense_86/MatMul:product:0'dense_86/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dense_86/BiasAdds
dense_86/ReluReludense_86/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dense_86/Relu¨
dense_87/MatMul/ReadVariableOpReadVariableOp'dense_87_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02 
dense_87/MatMul/ReadVariableOp£
dense_87/MatMulMatMuldense_86/Relu:activations:0&dense_87/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_87/MatMul§
dense_87/BiasAdd/ReadVariableOpReadVariableOp(dense_87_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_87/BiasAdd/ReadVariableOp¥
dense_87/BiasAddBiasAdddense_87/MatMul:product:0'dense_87/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_87/BiasAdd
IdentityIdentitydense_87/BiasAdd:output:0 ^dense_86/BiasAdd/ReadVariableOp^dense_86/MatMul/ReadVariableOp ^dense_87/BiasAdd/ReadVariableOp^dense_87/MatMul/ReadVariableOp,^lstm_43/lstm_cell_43/BiasAdd/ReadVariableOp+^lstm_43/lstm_cell_43/MatMul/ReadVariableOp-^lstm_43/lstm_cell_43/MatMul_1/ReadVariableOp^lstm_43/while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2B
dense_86/BiasAdd/ReadVariableOpdense_86/BiasAdd/ReadVariableOp2@
dense_86/MatMul/ReadVariableOpdense_86/MatMul/ReadVariableOp2B
dense_87/BiasAdd/ReadVariableOpdense_87/BiasAdd/ReadVariableOp2@
dense_87/MatMul/ReadVariableOpdense_87/MatMul/ReadVariableOp2Z
+lstm_43/lstm_cell_43/BiasAdd/ReadVariableOp+lstm_43/lstm_cell_43/BiasAdd/ReadVariableOp2X
*lstm_43/lstm_cell_43/MatMul/ReadVariableOp*lstm_43/lstm_cell_43/MatMul/ReadVariableOp2\
,lstm_43/lstm_cell_43/MatMul_1/ReadVariableOp,lstm_43/lstm_cell_43/MatMul_1/ReadVariableOp2
lstm_43/whilelstm_43/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
O
Ó

lstm_43_while_body_2133117,
(lstm_43_while_lstm_43_while_loop_counter2
.lstm_43_while_lstm_43_while_maximum_iterations
lstm_43_while_placeholder
lstm_43_while_placeholder_1
lstm_43_while_placeholder_2
lstm_43_while_placeholder_3+
'lstm_43_while_lstm_43_strided_slice_1_0g
clstm_43_while_tensorarrayv2read_tensorlistgetitem_lstm_43_tensorarrayunstack_tensorlistfromtensor_0N
;lstm_43_while_lstm_cell_43_matmul_readvariableop_resource_0:	 Q
=lstm_43_while_lstm_cell_43_matmul_1_readvariableop_resource_0:
È K
<lstm_43_while_lstm_cell_43_biasadd_readvariableop_resource_0:	 
lstm_43_while_identity
lstm_43_while_identity_1
lstm_43_while_identity_2
lstm_43_while_identity_3
lstm_43_while_identity_4
lstm_43_while_identity_5)
%lstm_43_while_lstm_43_strided_slice_1e
alstm_43_while_tensorarrayv2read_tensorlistgetitem_lstm_43_tensorarrayunstack_tensorlistfromtensorL
9lstm_43_while_lstm_cell_43_matmul_readvariableop_resource:	 O
;lstm_43_while_lstm_cell_43_matmul_1_readvariableop_resource:
È I
:lstm_43_while_lstm_cell_43_biasadd_readvariableop_resource:	 ¢1lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp¢0lstm_43/while/lstm_cell_43/MatMul/ReadVariableOp¢2lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOpÓ
?lstm_43/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2A
?lstm_43/while/TensorArrayV2Read/TensorListGetItem/element_shape
1lstm_43/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_43_while_tensorarrayv2read_tensorlistgetitem_lstm_43_tensorarrayunstack_tensorlistfromtensor_0lstm_43_while_placeholderHlstm_43/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype023
1lstm_43/while/TensorArrayV2Read/TensorListGetItemá
0lstm_43/while/lstm_cell_43/MatMul/ReadVariableOpReadVariableOp;lstm_43_while_lstm_cell_43_matmul_readvariableop_resource_0*
_output_shapes
:	 *
dtype022
0lstm_43/while/lstm_cell_43/MatMul/ReadVariableOp÷
!lstm_43/while/lstm_cell_43/MatMulMatMul8lstm_43/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_43/while/lstm_cell_43/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2#
!lstm_43/while/lstm_cell_43/MatMulè
2lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOpReadVariableOp=lstm_43_while_lstm_cell_43_matmul_1_readvariableop_resource_0* 
_output_shapes
:
È *
dtype024
2lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOpà
#lstm_43/while/lstm_cell_43/MatMul_1MatMullstm_43_while_placeholder_2:lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_43/while/lstm_cell_43/MatMul_1Ø
lstm_43/while/lstm_cell_43/addAddV2+lstm_43/while/lstm_cell_43/MatMul:product:0-lstm_43/while/lstm_cell_43/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_43/while/lstm_cell_43/addà
1lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOpReadVariableOp<lstm_43_while_lstm_cell_43_biasadd_readvariableop_resource_0*
_output_shapes	
: *
dtype023
1lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOpå
"lstm_43/while/lstm_cell_43/BiasAddBiasAdd"lstm_43/while/lstm_cell_43/add:z:09lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2$
"lstm_43/while/lstm_cell_43/BiasAdd
*lstm_43/while/lstm_cell_43/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*lstm_43/while/lstm_cell_43/split/split_dim¯
 lstm_43/while/lstm_cell_43/splitSplit3lstm_43/while/lstm_cell_43/split/split_dim:output:0+lstm_43/while/lstm_cell_43/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2"
 lstm_43/while/lstm_cell_43/split±
"lstm_43/while/lstm_cell_43/SigmoidSigmoid)lstm_43/while/lstm_cell_43/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2$
"lstm_43/while/lstm_cell_43/Sigmoidµ
$lstm_43/while/lstm_cell_43/Sigmoid_1Sigmoid)lstm_43/while/lstm_cell_43/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2&
$lstm_43/while/lstm_cell_43/Sigmoid_1Á
lstm_43/while/lstm_cell_43/mulMul(lstm_43/while/lstm_cell_43/Sigmoid_1:y:0lstm_43_while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2 
lstm_43/while/lstm_cell_43/mul¨
lstm_43/while/lstm_cell_43/ReluRelu)lstm_43/while/lstm_cell_43/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2!
lstm_43/while/lstm_cell_43/ReluÕ
 lstm_43/while/lstm_cell_43/mul_1Mul&lstm_43/while/lstm_cell_43/Sigmoid:y:0-lstm_43/while/lstm_cell_43/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2"
 lstm_43/while/lstm_cell_43/mul_1Ê
 lstm_43/while/lstm_cell_43/add_1AddV2"lstm_43/while/lstm_cell_43/mul:z:0$lstm_43/while/lstm_cell_43/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2"
 lstm_43/while/lstm_cell_43/add_1µ
$lstm_43/while/lstm_cell_43/Sigmoid_2Sigmoid)lstm_43/while/lstm_cell_43/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2&
$lstm_43/while/lstm_cell_43/Sigmoid_2§
!lstm_43/while/lstm_cell_43/Relu_1Relu$lstm_43/while/lstm_cell_43/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2#
!lstm_43/while/lstm_cell_43/Relu_1Ù
 lstm_43/while/lstm_cell_43/mul_2Mul(lstm_43/while/lstm_cell_43/Sigmoid_2:y:0/lstm_43/while/lstm_cell_43/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2"
 lstm_43/while/lstm_cell_43/mul_2
2lstm_43/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_43_while_placeholder_1lstm_43_while_placeholder$lstm_43/while/lstm_cell_43/mul_2:z:0*
_output_shapes
: *
element_dtype024
2lstm_43/while/TensorArrayV2Write/TensorListSetIteml
lstm_43/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_43/while/add/y
lstm_43/while/addAddV2lstm_43_while_placeholderlstm_43/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_43/while/addp
lstm_43/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_43/while/add_1/y
lstm_43/while/add_1AddV2(lstm_43_while_lstm_43_while_loop_counterlstm_43/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_43/while/add_1
lstm_43/while/IdentityIdentitylstm_43/while/add_1:z:02^lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp1^lstm_43/while/lstm_cell_43/MatMul/ReadVariableOp3^lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_43/while/Identity­
lstm_43/while/Identity_1Identity.lstm_43_while_lstm_43_while_maximum_iterations2^lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp1^lstm_43/while/lstm_cell_43/MatMul/ReadVariableOp3^lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_43/while/Identity_1
lstm_43/while/Identity_2Identitylstm_43/while/add:z:02^lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp1^lstm_43/while/lstm_cell_43/MatMul/ReadVariableOp3^lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_43/while/Identity_2Á
lstm_43/while/Identity_3IdentityBlstm_43/while/TensorArrayV2Write/TensorListSetItem:output_handle:02^lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp1^lstm_43/while/lstm_cell_43/MatMul/ReadVariableOp3^lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_43/while/Identity_3µ
lstm_43/while/Identity_4Identity$lstm_43/while/lstm_cell_43/mul_2:z:02^lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp1^lstm_43/while/lstm_cell_43/MatMul/ReadVariableOp3^lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_43/while/Identity_4µ
lstm_43/while/Identity_5Identity$lstm_43/while/lstm_cell_43/add_1:z:02^lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp1^lstm_43/while/lstm_cell_43/MatMul/ReadVariableOp3^lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_43/while/Identity_5"9
lstm_43_while_identitylstm_43/while/Identity:output:0"=
lstm_43_while_identity_1!lstm_43/while/Identity_1:output:0"=
lstm_43_while_identity_2!lstm_43/while/Identity_2:output:0"=
lstm_43_while_identity_3!lstm_43/while/Identity_3:output:0"=
lstm_43_while_identity_4!lstm_43/while/Identity_4:output:0"=
lstm_43_while_identity_5!lstm_43/while/Identity_5:output:0"P
%lstm_43_while_lstm_43_strided_slice_1'lstm_43_while_lstm_43_strided_slice_1_0"z
:lstm_43_while_lstm_cell_43_biasadd_readvariableop_resource<lstm_43_while_lstm_cell_43_biasadd_readvariableop_resource_0"|
;lstm_43_while_lstm_cell_43_matmul_1_readvariableop_resource=lstm_43_while_lstm_cell_43_matmul_1_readvariableop_resource_0"x
9lstm_43_while_lstm_cell_43_matmul_readvariableop_resource;lstm_43_while_lstm_cell_43_matmul_readvariableop_resource_0"È
alstm_43_while_tensorarrayv2read_tensorlistgetitem_lstm_43_tensorarrayunstack_tensorlistfromtensorclstm_43_while_tensorarrayv2read_tensorlistgetitem_lstm_43_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : 2f
1lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp1lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp2d
0lstm_43/while/lstm_cell_43/MatMul/ReadVariableOp0lstm_43/while/lstm_cell_43/MatMul/ReadVariableOp2h
2lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOp2lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOp: 
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
while_body_2133785
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_43_matmul_readvariableop_resource_0:	 I
5while_lstm_cell_43_matmul_1_readvariableop_resource_0:
È C
4while_lstm_cell_43_biasadd_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_43_matmul_readvariableop_resource:	 G
3while_lstm_cell_43_matmul_1_readvariableop_resource:
È A
2while_lstm_cell_43_biasadd_readvariableop_resource:	 ¢)while/lstm_cell_43/BiasAdd/ReadVariableOp¢(while/lstm_cell_43/MatMul/ReadVariableOp¢*while/lstm_cell_43/MatMul_1/ReadVariableOpÃ
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
(while/lstm_cell_43/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_43_matmul_readvariableop_resource_0*
_output_shapes
:	 *
dtype02*
(while/lstm_cell_43/MatMul/ReadVariableOp×
while/lstm_cell_43/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_43/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_43/MatMulÐ
*while/lstm_cell_43/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_43_matmul_1_readvariableop_resource_0* 
_output_shapes
:
È *
dtype02,
*while/lstm_cell_43/MatMul_1/ReadVariableOpÀ
while/lstm_cell_43/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_43/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_43/MatMul_1¸
while/lstm_cell_43/addAddV2#while/lstm_cell_43/MatMul:product:0%while/lstm_cell_43/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_43/addÈ
)while/lstm_cell_43/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_43_biasadd_readvariableop_resource_0*
_output_shapes	
: *
dtype02+
)while/lstm_cell_43/BiasAdd/ReadVariableOpÅ
while/lstm_cell_43/BiasAddBiasAddwhile/lstm_cell_43/add:z:01while/lstm_cell_43/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_43/BiasAdd
"while/lstm_cell_43/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_43/split/split_dim
while/lstm_cell_43/splitSplit+while/lstm_cell_43/split/split_dim:output:0#while/lstm_cell_43/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
while/lstm_cell_43/split
while/lstm_cell_43/SigmoidSigmoid!while/lstm_cell_43/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_43/Sigmoid
while/lstm_cell_43/Sigmoid_1Sigmoid!while/lstm_cell_43/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_43/Sigmoid_1¡
while/lstm_cell_43/mulMul while/lstm_cell_43/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_43/mul
while/lstm_cell_43/ReluRelu!while/lstm_cell_43/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_43/Reluµ
while/lstm_cell_43/mul_1Mulwhile/lstm_cell_43/Sigmoid:y:0%while/lstm_cell_43/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_43/mul_1ª
while/lstm_cell_43/add_1AddV2while/lstm_cell_43/mul:z:0while/lstm_cell_43/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_43/add_1
while/lstm_cell_43/Sigmoid_2Sigmoid!while/lstm_cell_43/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_43/Sigmoid_2
while/lstm_cell_43/Relu_1Reluwhile/lstm_cell_43/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_43/Relu_1¹
while/lstm_cell_43/mul_2Mul while/lstm_cell_43/Sigmoid_2:y:0'while/lstm_cell_43/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_43/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_43/mul_2:z:0*
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
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityõ
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ä
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_43/mul_2:z:0*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_43/add_1:z:0*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*
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
2while_lstm_cell_43_biasadd_readvariableop_resource4while_lstm_cell_43_biasadd_readvariableop_resource_0"l
3while_lstm_cell_43_matmul_1_readvariableop_resource5while_lstm_cell_43_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_43_matmul_readvariableop_resource3while_lstm_cell_43_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : 2V
)while/lstm_cell_43/BiasAdd/ReadVariableOp)while/lstm_cell_43/BiasAdd/ReadVariableOp2T
(while/lstm_cell_43/MatMul/ReadVariableOp(while/lstm_cell_43/MatMul/ReadVariableOp2X
*while/lstm_cell_43/MatMul_1/ReadVariableOp*while/lstm_cell_43/MatMul_1/ReadVariableOp: 
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

Ê
J__inference_sequential_43_layer_call_and_return_conditional_losses_2133023
lstm_43_input"
lstm_43_2133005:	 #
lstm_43_2133007:
È 
lstm_43_2133009:	 #
dense_86_2133012:	Èd
dense_86_2133014:d"
dense_87_2133017:d
dense_87_2133019:
identity¢ dense_86/StatefulPartitionedCall¢ dense_87/StatefulPartitionedCall¢lstm_43/StatefulPartitionedCall­
lstm_43/StatefulPartitionedCallStatefulPartitionedCalllstm_43_inputlstm_43_2133005lstm_43_2133007lstm_43_2133009*
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
D__inference_lstm_43_layer_call_and_return_conditional_losses_21328942!
lstm_43/StatefulPartitionedCall¹
 dense_86/StatefulPartitionedCallStatefulPartitionedCall(lstm_43/StatefulPartitionedCall:output:0dense_86_2133012dense_86_2133014*
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
E__inference_dense_86_layer_call_and_return_conditional_losses_21326702"
 dense_86/StatefulPartitionedCallº
 dense_87/StatefulPartitionedCallStatefulPartitionedCall)dense_86/StatefulPartitionedCall:output:0dense_87_2133017dense_87_2133019*
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
E__inference_dense_87_layer_call_and_return_conditional_losses_21326862"
 dense_87/StatefulPartitionedCallå
IdentityIdentity)dense_87/StatefulPartitionedCall:output:0!^dense_86/StatefulPartitionedCall!^dense_87/StatefulPartitionedCall ^lstm_43/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2D
 dense_86/StatefulPartitionedCall dense_86/StatefulPartitionedCall2D
 dense_87/StatefulPartitionedCall dense_87/StatefulPartitionedCall2B
lstm_43/StatefulPartitionedCalllstm_43/StatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelstm_43_input
ÇE

D__inference_lstm_43_layer_call_and_return_conditional_losses_2132232

inputs'
lstm_cell_43_2132150:	 (
lstm_cell_43_2132152:
È #
lstm_cell_43_2132154:	 
identity¢$lstm_cell_43/StatefulPartitionedCall¢whileD
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
$lstm_cell_43/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_43_2132150lstm_cell_43_2132152lstm_cell_43_2132154*
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
I__inference_lstm_cell_43_layer_call_and_return_conditional_losses_21320852&
$lstm_cell_43/StatefulPartitionedCall
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_43_2132150lstm_cell_43_2132152lstm_cell_43_2132154*
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
while_body_2132163*
condR
while_cond_2132162*M
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
IdentityIdentitystrided_slice_3:output:0%^lstm_cell_43/StatefulPartitionedCall^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_43/StatefulPartitionedCall$lstm_cell_43/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
C
Ó
while_body_2132810
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_43_matmul_readvariableop_resource_0:	 I
5while_lstm_cell_43_matmul_1_readvariableop_resource_0:
È C
4while_lstm_cell_43_biasadd_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_43_matmul_readvariableop_resource:	 G
3while_lstm_cell_43_matmul_1_readvariableop_resource:
È A
2while_lstm_cell_43_biasadd_readvariableop_resource:	 ¢)while/lstm_cell_43/BiasAdd/ReadVariableOp¢(while/lstm_cell_43/MatMul/ReadVariableOp¢*while/lstm_cell_43/MatMul_1/ReadVariableOpÃ
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
(while/lstm_cell_43/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_43_matmul_readvariableop_resource_0*
_output_shapes
:	 *
dtype02*
(while/lstm_cell_43/MatMul/ReadVariableOp×
while/lstm_cell_43/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_43/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_43/MatMulÐ
*while/lstm_cell_43/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_43_matmul_1_readvariableop_resource_0* 
_output_shapes
:
È *
dtype02,
*while/lstm_cell_43/MatMul_1/ReadVariableOpÀ
while/lstm_cell_43/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_43/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_43/MatMul_1¸
while/lstm_cell_43/addAddV2#while/lstm_cell_43/MatMul:product:0%while/lstm_cell_43/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_43/addÈ
)while/lstm_cell_43/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_43_biasadd_readvariableop_resource_0*
_output_shapes	
: *
dtype02+
)while/lstm_cell_43/BiasAdd/ReadVariableOpÅ
while/lstm_cell_43/BiasAddBiasAddwhile/lstm_cell_43/add:z:01while/lstm_cell_43/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_43/BiasAdd
"while/lstm_cell_43/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_43/split/split_dim
while/lstm_cell_43/splitSplit+while/lstm_cell_43/split/split_dim:output:0#while/lstm_cell_43/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
while/lstm_cell_43/split
while/lstm_cell_43/SigmoidSigmoid!while/lstm_cell_43/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_43/Sigmoid
while/lstm_cell_43/Sigmoid_1Sigmoid!while/lstm_cell_43/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_43/Sigmoid_1¡
while/lstm_cell_43/mulMul while/lstm_cell_43/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_43/mul
while/lstm_cell_43/ReluRelu!while/lstm_cell_43/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_43/Reluµ
while/lstm_cell_43/mul_1Mulwhile/lstm_cell_43/Sigmoid:y:0%while/lstm_cell_43/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_43/mul_1ª
while/lstm_cell_43/add_1AddV2while/lstm_cell_43/mul:z:0while/lstm_cell_43/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_43/add_1
while/lstm_cell_43/Sigmoid_2Sigmoid!while/lstm_cell_43/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_43/Sigmoid_2
while/lstm_cell_43/Relu_1Reluwhile/lstm_cell_43/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_43/Relu_1¹
while/lstm_cell_43/mul_2Mul while/lstm_cell_43/Sigmoid_2:y:0'while/lstm_cell_43/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_43/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_43/mul_2:z:0*
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
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityõ
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ä
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_43/mul_2:z:0*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_43/add_1:z:0*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*
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
2while_lstm_cell_43_biasadd_readvariableop_resource4while_lstm_cell_43_biasadd_readvariableop_resource_0"l
3while_lstm_cell_43_matmul_1_readvariableop_resource5while_lstm_cell_43_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_43_matmul_readvariableop_resource3while_lstm_cell_43_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : 2V
)while/lstm_cell_43/BiasAdd/ReadVariableOp)while/lstm_cell_43/BiasAdd/ReadVariableOp2T
(while/lstm_cell_43/MatMul/ReadVariableOp(while/lstm_cell_43/MatMul/ReadVariableOp2X
*while/lstm_cell_43/MatMul_1/ReadVariableOp*while/lstm_cell_43/MatMul_1/ReadVariableOp: 
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
while_cond_2132162
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2132162___redundant_placeholder05
1while_while_cond_2132162___redundant_placeholder15
1while_while_cond_2132162___redundant_placeholder25
1while_while_cond_2132162___redundant_placeholder3
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
while_body_2131953
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_43_2131977_0:	 0
while_lstm_cell_43_2131979_0:
È +
while_lstm_cell_43_2131981_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_43_2131977:	 .
while_lstm_cell_43_2131979:
È )
while_lstm_cell_43_2131981:	 ¢*while/lstm_cell_43/StatefulPartitionedCallÃ
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
*while/lstm_cell_43/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_43_2131977_0while_lstm_cell_43_2131979_0while_lstm_cell_43_2131981_0*
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
I__inference_lstm_cell_43_layer_call_and_return_conditional_losses_21319392,
*while/lstm_cell_43/StatefulPartitionedCall÷
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_43/StatefulPartitionedCall:output:0*
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
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_43/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_43/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_43/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2º
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_43/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3Å
while/Identity_4Identity3while/lstm_cell_43/StatefulPartitionedCall:output:1+^while/lstm_cell_43/StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_4Å
while/Identity_5Identity3while/lstm_cell_43/StatefulPartitionedCall:output:2+^while/lstm_cell_43/StatefulPartitionedCall*
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
while_lstm_cell_43_2131977while_lstm_cell_43_2131977_0":
while_lstm_cell_43_2131979while_lstm_cell_43_2131979_0":
while_lstm_cell_43_2131981while_lstm_cell_43_2131981_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : 2X
*while/lstm_cell_43/StatefulPartitionedCall*while/lstm_cell_43/StatefulPartitionedCall: 
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
while_body_2133634
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_43_matmul_readvariableop_resource_0:	 I
5while_lstm_cell_43_matmul_1_readvariableop_resource_0:
È C
4while_lstm_cell_43_biasadd_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_43_matmul_readvariableop_resource:	 G
3while_lstm_cell_43_matmul_1_readvariableop_resource:
È A
2while_lstm_cell_43_biasadd_readvariableop_resource:	 ¢)while/lstm_cell_43/BiasAdd/ReadVariableOp¢(while/lstm_cell_43/MatMul/ReadVariableOp¢*while/lstm_cell_43/MatMul_1/ReadVariableOpÃ
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
(while/lstm_cell_43/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_43_matmul_readvariableop_resource_0*
_output_shapes
:	 *
dtype02*
(while/lstm_cell_43/MatMul/ReadVariableOp×
while/lstm_cell_43/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_43/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_43/MatMulÐ
*while/lstm_cell_43/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_43_matmul_1_readvariableop_resource_0* 
_output_shapes
:
È *
dtype02,
*while/lstm_cell_43/MatMul_1/ReadVariableOpÀ
while/lstm_cell_43/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_43/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_43/MatMul_1¸
while/lstm_cell_43/addAddV2#while/lstm_cell_43/MatMul:product:0%while/lstm_cell_43/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_43/addÈ
)while/lstm_cell_43/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_43_biasadd_readvariableop_resource_0*
_output_shapes	
: *
dtype02+
)while/lstm_cell_43/BiasAdd/ReadVariableOpÅ
while/lstm_cell_43/BiasAddBiasAddwhile/lstm_cell_43/add:z:01while/lstm_cell_43/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_43/BiasAdd
"while/lstm_cell_43/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_43/split/split_dim
while/lstm_cell_43/splitSplit+while/lstm_cell_43/split/split_dim:output:0#while/lstm_cell_43/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
while/lstm_cell_43/split
while/lstm_cell_43/SigmoidSigmoid!while/lstm_cell_43/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_43/Sigmoid
while/lstm_cell_43/Sigmoid_1Sigmoid!while/lstm_cell_43/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_43/Sigmoid_1¡
while/lstm_cell_43/mulMul while/lstm_cell_43/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_43/mul
while/lstm_cell_43/ReluRelu!while/lstm_cell_43/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_43/Reluµ
while/lstm_cell_43/mul_1Mulwhile/lstm_cell_43/Sigmoid:y:0%while/lstm_cell_43/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_43/mul_1ª
while/lstm_cell_43/add_1AddV2while/lstm_cell_43/mul:z:0while/lstm_cell_43/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_43/add_1
while/lstm_cell_43/Sigmoid_2Sigmoid!while/lstm_cell_43/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_43/Sigmoid_2
while/lstm_cell_43/Relu_1Reluwhile/lstm_cell_43/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_43/Relu_1¹
while/lstm_cell_43/mul_2Mul while/lstm_cell_43/Sigmoid_2:y:0'while/lstm_cell_43/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_43/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_43/mul_2:z:0*
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
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityõ
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ä
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_43/mul_2:z:0*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_43/add_1:z:0*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*
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
2while_lstm_cell_43_biasadd_readvariableop_resource4while_lstm_cell_43_biasadd_readvariableop_resource_0"l
3while_lstm_cell_43_matmul_1_readvariableop_resource5while_lstm_cell_43_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_43_matmul_readvariableop_resource3while_lstm_cell_43_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : 2V
)while/lstm_cell_43/BiasAdd/ReadVariableOp)while/lstm_cell_43/BiasAdd/ReadVariableOp2T
(while/lstm_cell_43/MatMul/ReadVariableOp(while/lstm_cell_43/MatMul/ReadVariableOp2X
*while/lstm_cell_43/MatMul_1/ReadVariableOp*while/lstm_cell_43/MatMul_1/ReadVariableOp: 
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
¨A
ã
 __inference__traced_save_2134308
file_prefix.
*savev2_dense_86_kernel_read_readvariableop,
(savev2_dense_86_bias_read_readvariableop.
*savev2_dense_87_kernel_read_readvariableop,
(savev2_dense_87_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop:
6savev2_lstm_43_lstm_cell_43_kernel_read_readvariableopD
@savev2_lstm_43_lstm_cell_43_recurrent_kernel_read_readvariableop8
4savev2_lstm_43_lstm_cell_43_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_86_kernel_m_read_readvariableop3
/savev2_adam_dense_86_bias_m_read_readvariableop5
1savev2_adam_dense_87_kernel_m_read_readvariableop3
/savev2_adam_dense_87_bias_m_read_readvariableopA
=savev2_adam_lstm_43_lstm_cell_43_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_43_lstm_cell_43_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_43_lstm_cell_43_bias_m_read_readvariableop5
1savev2_adam_dense_86_kernel_v_read_readvariableop3
/savev2_adam_dense_86_bias_v_read_readvariableop5
1savev2_adam_dense_87_kernel_v_read_readvariableop3
/savev2_adam_dense_87_bias_v_read_readvariableopA
=savev2_adam_lstm_43_lstm_cell_43_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_43_lstm_cell_43_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_43_lstm_cell_43_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_86_kernel_read_readvariableop(savev2_dense_86_bias_read_readvariableop*savev2_dense_87_kernel_read_readvariableop(savev2_dense_87_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop6savev2_lstm_43_lstm_cell_43_kernel_read_readvariableop@savev2_lstm_43_lstm_cell_43_recurrent_kernel_read_readvariableop4savev2_lstm_43_lstm_cell_43_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_86_kernel_m_read_readvariableop/savev2_adam_dense_86_bias_m_read_readvariableop1savev2_adam_dense_87_kernel_m_read_readvariableop/savev2_adam_dense_87_bias_m_read_readvariableop=savev2_adam_lstm_43_lstm_cell_43_kernel_m_read_readvariableopGsavev2_adam_lstm_43_lstm_cell_43_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_43_lstm_cell_43_bias_m_read_readvariableop1savev2_adam_dense_86_kernel_v_read_readvariableop/savev2_adam_dense_86_bias_v_read_readvariableop1savev2_adam_dense_87_kernel_v_read_readvariableop/savev2_adam_dense_87_bias_v_read_readvariableop=savev2_adam_lstm_43_lstm_cell_43_kernel_v_read_readvariableopGsavev2_adam_lstm_43_lstm_cell_43_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_43_lstm_cell_43_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
[

D__inference_lstm_43_layer_call_and_return_conditional_losses_2132651

inputs>
+lstm_cell_43_matmul_readvariableop_resource:	 A
-lstm_cell_43_matmul_1_readvariableop_resource:
È ;
,lstm_cell_43_biasadd_readvariableop_resource:	 
identity¢#lstm_cell_43/BiasAdd/ReadVariableOp¢"lstm_cell_43/MatMul/ReadVariableOp¢$lstm_cell_43/MatMul_1/ReadVariableOp¢whileD
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
"lstm_cell_43/MatMul/ReadVariableOpReadVariableOp+lstm_cell_43_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype02$
"lstm_cell_43/MatMul/ReadVariableOp­
lstm_cell_43/MatMulMatMulstrided_slice_2:output:0*lstm_cell_43/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_43/MatMul¼
$lstm_cell_43/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_43_matmul_1_readvariableop_resource* 
_output_shapes
:
È *
dtype02&
$lstm_cell_43/MatMul_1/ReadVariableOp©
lstm_cell_43/MatMul_1MatMulzeros:output:0,lstm_cell_43/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_43/MatMul_1 
lstm_cell_43/addAddV2lstm_cell_43/MatMul:product:0lstm_cell_43/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_43/add´
#lstm_cell_43/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_43_biasadd_readvariableop_resource*
_output_shapes	
: *
dtype02%
#lstm_cell_43/BiasAdd/ReadVariableOp­
lstm_cell_43/BiasAddBiasAddlstm_cell_43/add:z:0+lstm_cell_43/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_43/BiasAdd~
lstm_cell_43/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_43/split/split_dim÷
lstm_cell_43/splitSplit%lstm_cell_43/split/split_dim:output:0lstm_cell_43/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
lstm_cell_43/split
lstm_cell_43/SigmoidSigmoidlstm_cell_43/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_43/Sigmoid
lstm_cell_43/Sigmoid_1Sigmoidlstm_cell_43/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_43/Sigmoid_1
lstm_cell_43/mulMullstm_cell_43/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_43/mul~
lstm_cell_43/ReluRelulstm_cell_43/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_43/Relu
lstm_cell_43/mul_1Mullstm_cell_43/Sigmoid:y:0lstm_cell_43/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_43/mul_1
lstm_cell_43/add_1AddV2lstm_cell_43/mul:z:0lstm_cell_43/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_43/add_1
lstm_cell_43/Sigmoid_2Sigmoidlstm_cell_43/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_43/Sigmoid_2}
lstm_cell_43/Relu_1Relulstm_cell_43/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_43/Relu_1¡
lstm_cell_43/mul_2Mullstm_cell_43/Sigmoid_2:y:0!lstm_cell_43/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_43/mul_2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_43_matmul_readvariableop_resource-lstm_cell_43_matmul_1_readvariableop_resource,lstm_cell_43_biasadd_readvariableop_resource*
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
while_body_2132567*
condR
while_cond_2132566*M
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
IdentityIdentitystrided_slice_3:output:0$^lstm_cell_43/BiasAdd/ReadVariableOp#^lstm_cell_43/MatMul/ReadVariableOp%^lstm_cell_43/MatMul_1/ReadVariableOp^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_43/BiasAdd/ReadVariableOp#lstm_cell_43/BiasAdd/ReadVariableOp2H
"lstm_cell_43/MatMul/ReadVariableOp"lstm_cell_43/MatMul/ReadVariableOp2L
$lstm_cell_43/MatMul_1/ReadVariableOp$lstm_cell_43/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
±

÷
E__inference_dense_86_layer_call_and_return_conditional_losses_2134075

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
ÇE

D__inference_lstm_43_layer_call_and_return_conditional_losses_2132022

inputs'
lstm_cell_43_2131940:	 (
lstm_cell_43_2131942:
È #
lstm_cell_43_2131944:	 
identity¢$lstm_cell_43/StatefulPartitionedCall¢whileD
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
$lstm_cell_43/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_43_2131940lstm_cell_43_2131942lstm_cell_43_2131944*
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
I__inference_lstm_cell_43_layer_call_and_return_conditional_losses_21319392&
$lstm_cell_43/StatefulPartitionedCall
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_43_2131940lstm_cell_43_2131942lstm_cell_43_2131944*
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
while_body_2131953*
condR
while_cond_2131952*M
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
IdentityIdentitystrided_slice_3:output:0%^lstm_cell_43/StatefulPartitionedCall^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_43/StatefulPartitionedCall$lstm_cell_43/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
C
Ó
while_body_2132567
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_43_matmul_readvariableop_resource_0:	 I
5while_lstm_cell_43_matmul_1_readvariableop_resource_0:
È C
4while_lstm_cell_43_biasadd_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_43_matmul_readvariableop_resource:	 G
3while_lstm_cell_43_matmul_1_readvariableop_resource:
È A
2while_lstm_cell_43_biasadd_readvariableop_resource:	 ¢)while/lstm_cell_43/BiasAdd/ReadVariableOp¢(while/lstm_cell_43/MatMul/ReadVariableOp¢*while/lstm_cell_43/MatMul_1/ReadVariableOpÃ
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
(while/lstm_cell_43/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_43_matmul_readvariableop_resource_0*
_output_shapes
:	 *
dtype02*
(while/lstm_cell_43/MatMul/ReadVariableOp×
while/lstm_cell_43/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_43/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_43/MatMulÐ
*while/lstm_cell_43/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_43_matmul_1_readvariableop_resource_0* 
_output_shapes
:
È *
dtype02,
*while/lstm_cell_43/MatMul_1/ReadVariableOpÀ
while/lstm_cell_43/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_43/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_43/MatMul_1¸
while/lstm_cell_43/addAddV2#while/lstm_cell_43/MatMul:product:0%while/lstm_cell_43/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_43/addÈ
)while/lstm_cell_43/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_43_biasadd_readvariableop_resource_0*
_output_shapes	
: *
dtype02+
)while/lstm_cell_43/BiasAdd/ReadVariableOpÅ
while/lstm_cell_43/BiasAddBiasAddwhile/lstm_cell_43/add:z:01while/lstm_cell_43/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_43/BiasAdd
"while/lstm_cell_43/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"while/lstm_cell_43/split/split_dim
while/lstm_cell_43/splitSplit+while/lstm_cell_43/split/split_dim:output:0#while/lstm_cell_43/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
while/lstm_cell_43/split
while/lstm_cell_43/SigmoidSigmoid!while/lstm_cell_43/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_43/Sigmoid
while/lstm_cell_43/Sigmoid_1Sigmoid!while/lstm_cell_43/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_43/Sigmoid_1¡
while/lstm_cell_43/mulMul while/lstm_cell_43/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_43/mul
while/lstm_cell_43/ReluRelu!while/lstm_cell_43/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_43/Reluµ
while/lstm_cell_43/mul_1Mulwhile/lstm_cell_43/Sigmoid:y:0%while/lstm_cell_43/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_43/mul_1ª
while/lstm_cell_43/add_1AddV2while/lstm_cell_43/mul:z:0while/lstm_cell_43/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_43/add_1
while/lstm_cell_43/Sigmoid_2Sigmoid!while/lstm_cell_43/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_43/Sigmoid_2
while/lstm_cell_43/Relu_1Reluwhile/lstm_cell_43/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_43/Relu_1¹
while/lstm_cell_43/mul_2Mul while/lstm_cell_43/Sigmoid_2:y:0'while/lstm_cell_43/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_43/mul_2à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_43/mul_2:z:0*
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
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityõ
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ä
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_43/mul_2:z:0*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_43/add_1:z:0*^while/lstm_cell_43/BiasAdd/ReadVariableOp)^while/lstm_cell_43/MatMul/ReadVariableOp+^while/lstm_cell_43/MatMul_1/ReadVariableOp*
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
2while_lstm_cell_43_biasadd_readvariableop_resource4while_lstm_cell_43_biasadd_readvariableop_resource_0"l
3while_lstm_cell_43_matmul_1_readvariableop_resource5while_lstm_cell_43_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_43_matmul_readvariableop_resource3while_lstm_cell_43_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : 2V
)while/lstm_cell_43/BiasAdd/ReadVariableOp)while/lstm_cell_43/BiasAdd/ReadVariableOp2T
(while/lstm_cell_43/MatMul/ReadVariableOp(while/lstm_cell_43/MatMul/ReadVariableOp2X
*while/lstm_cell_43/MatMul_1/ReadVariableOp*while/lstm_cell_43/MatMul_1/ReadVariableOp: 
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
í
¹
)__inference_lstm_43_layer_call_fn_2134031
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
D__inference_lstm_43_layer_call_and_return_conditional_losses_21320222
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
Þ
È
while_cond_2133784
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2133784___redundant_placeholder05
1while_while_cond_2133784___redundant_placeholder15
1while_while_cond_2133784___redundant_placeholder25
1while_while_cond_2133784___redundant_placeholder3
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
ø
Ã
J__inference_sequential_43_layer_call_and_return_conditional_losses_2132945

inputs"
lstm_43_2132927:	 #
lstm_43_2132929:
È 
lstm_43_2132931:	 #
dense_86_2132934:	Èd
dense_86_2132936:d"
dense_87_2132939:d
dense_87_2132941:
identity¢ dense_86/StatefulPartitionedCall¢ dense_87/StatefulPartitionedCall¢lstm_43/StatefulPartitionedCall¦
lstm_43/StatefulPartitionedCallStatefulPartitionedCallinputslstm_43_2132927lstm_43_2132929lstm_43_2132931*
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
D__inference_lstm_43_layer_call_and_return_conditional_losses_21328942!
lstm_43/StatefulPartitionedCall¹
 dense_86/StatefulPartitionedCallStatefulPartitionedCall(lstm_43/StatefulPartitionedCall:output:0dense_86_2132934dense_86_2132936*
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
E__inference_dense_86_layer_call_and_return_conditional_losses_21326702"
 dense_86/StatefulPartitionedCallº
 dense_87/StatefulPartitionedCallStatefulPartitionedCall)dense_86/StatefulPartitionedCall:output:0dense_87_2132939dense_87_2132941*
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
E__inference_dense_87_layer_call_and_return_conditional_losses_21326862"
 dense_87/StatefulPartitionedCallå
IdentityIdentity)dense_87/StatefulPartitionedCall:output:0!^dense_86/StatefulPartitionedCall!^dense_87/StatefulPartitionedCall ^lstm_43/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2D
 dense_86/StatefulPartitionedCall dense_86/StatefulPartitionedCall2D
 dense_87/StatefulPartitionedCall dense_87/StatefulPartitionedCall2B
lstm_43/StatefulPartitionedCalllstm_43/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Þ
È
while_cond_2132809
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2132809___redundant_placeholder05
1while_while_cond_2132809___redundant_placeholder15
1while_while_cond_2132809___redundant_placeholder25
1while_while_cond_2132809___redundant_placeholder3
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

Ê
J__inference_sequential_43_layer_call_and_return_conditional_losses_2133002
lstm_43_input"
lstm_43_2132984:	 #
lstm_43_2132986:
È 
lstm_43_2132988:	 #
dense_86_2132991:	Èd
dense_86_2132993:d"
dense_87_2132996:d
dense_87_2132998:
identity¢ dense_86/StatefulPartitionedCall¢ dense_87/StatefulPartitionedCall¢lstm_43/StatefulPartitionedCall­
lstm_43/StatefulPartitionedCallStatefulPartitionedCalllstm_43_inputlstm_43_2132984lstm_43_2132986lstm_43_2132988*
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
D__inference_lstm_43_layer_call_and_return_conditional_losses_21326512!
lstm_43/StatefulPartitionedCall¹
 dense_86/StatefulPartitionedCallStatefulPartitionedCall(lstm_43/StatefulPartitionedCall:output:0dense_86_2132991dense_86_2132993*
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
E__inference_dense_86_layer_call_and_return_conditional_losses_21326702"
 dense_86/StatefulPartitionedCallº
 dense_87/StatefulPartitionedCallStatefulPartitionedCall)dense_86/StatefulPartitionedCall:output:0dense_87_2132996dense_87_2132998*
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
E__inference_dense_87_layer_call_and_return_conditional_losses_21326862"
 dense_87/StatefulPartitionedCallå
IdentityIdentity)dense_87/StatefulPartitionedCall:output:0!^dense_86/StatefulPartitionedCall!^dense_87/StatefulPartitionedCall ^lstm_43/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2D
 dense_86/StatefulPartitionedCall dense_86/StatefulPartitionedCall2D
 dense_87/StatefulPartitionedCall dense_87/StatefulPartitionedCall2B
lstm_43/StatefulPartitionedCalllstm_43/StatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namelstm_43_input


*__inference_dense_87_layer_call_fn_2134103

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
E__inference_dense_87_layer_call_and_return_conditional_losses_21326862
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
ñz

#__inference__traced_restore_2134402
file_prefix3
 assignvariableop_dense_86_kernel:	Èd.
 assignvariableop_1_dense_86_bias:d4
"assignvariableop_2_dense_87_kernel:d.
 assignvariableop_3_dense_87_bias:&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: A
.assignvariableop_9_lstm_43_lstm_cell_43_kernel:	 M
9assignvariableop_10_lstm_43_lstm_cell_43_recurrent_kernel:
È <
-assignvariableop_11_lstm_43_lstm_cell_43_bias:	 #
assignvariableop_12_total: #
assignvariableop_13_count: =
*assignvariableop_14_adam_dense_86_kernel_m:	Èd6
(assignvariableop_15_adam_dense_86_bias_m:d<
*assignvariableop_16_adam_dense_87_kernel_m:d6
(assignvariableop_17_adam_dense_87_bias_m:I
6assignvariableop_18_adam_lstm_43_lstm_cell_43_kernel_m:	 T
@assignvariableop_19_adam_lstm_43_lstm_cell_43_recurrent_kernel_m:
È C
4assignvariableop_20_adam_lstm_43_lstm_cell_43_bias_m:	 =
*assignvariableop_21_adam_dense_86_kernel_v:	Èd6
(assignvariableop_22_adam_dense_86_bias_v:d<
*assignvariableop_23_adam_dense_87_kernel_v:d6
(assignvariableop_24_adam_dense_87_bias_v:I
6assignvariableop_25_adam_lstm_43_lstm_cell_43_kernel_v:	 T
@assignvariableop_26_adam_lstm_43_lstm_cell_43_recurrent_kernel_v:
È C
4assignvariableop_27_adam_lstm_43_lstm_cell_43_bias_v:	 
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
AssignVariableOpAssignVariableOp assignvariableop_dense_86_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1¥
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_86_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2§
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_87_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3¥
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_87_biasIdentity_3:output:0"/device:CPU:0*
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
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_43_lstm_cell_43_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10Á
AssignVariableOp_10AssignVariableOp9assignvariableop_10_lstm_43_lstm_cell_43_recurrent_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11µ
AssignVariableOp_11AssignVariableOp-assignvariableop_11_lstm_43_lstm_cell_43_biasIdentity_11:output:0"/device:CPU:0*
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
AssignVariableOp_14AssignVariableOp*assignvariableop_14_adam_dense_86_kernel_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15°
AssignVariableOp_15AssignVariableOp(assignvariableop_15_adam_dense_86_bias_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16²
AssignVariableOp_16AssignVariableOp*assignvariableop_16_adam_dense_87_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17°
AssignVariableOp_17AssignVariableOp(assignvariableop_17_adam_dense_87_bias_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18¾
AssignVariableOp_18AssignVariableOp6assignvariableop_18_adam_lstm_43_lstm_cell_43_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19È
AssignVariableOp_19AssignVariableOp@assignvariableop_19_adam_lstm_43_lstm_cell_43_recurrent_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20¼
AssignVariableOp_20AssignVariableOp4assignvariableop_20_adam_lstm_43_lstm_cell_43_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21²
AssignVariableOp_21AssignVariableOp*assignvariableop_21_adam_dense_86_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22°
AssignVariableOp_22AssignVariableOp(assignvariableop_22_adam_dense_86_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23²
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_dense_87_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24°
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_dense_87_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25¾
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_lstm_43_lstm_cell_43_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26È
AssignVariableOp_26AssignVariableOp@assignvariableop_26_adam_lstm_43_lstm_cell_43_recurrent_kernel_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27¼
AssignVariableOp_27AssignVariableOp4assignvariableop_27_adam_lstm_43_lstm_cell_43_bias_vIdentity_27:output:0"/device:CPU:0*
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
æc

(sequential_43_lstm_43_while_body_2131767H
Dsequential_43_lstm_43_while_sequential_43_lstm_43_while_loop_counterN
Jsequential_43_lstm_43_while_sequential_43_lstm_43_while_maximum_iterations+
'sequential_43_lstm_43_while_placeholder-
)sequential_43_lstm_43_while_placeholder_1-
)sequential_43_lstm_43_while_placeholder_2-
)sequential_43_lstm_43_while_placeholder_3G
Csequential_43_lstm_43_while_sequential_43_lstm_43_strided_slice_1_0
sequential_43_lstm_43_while_tensorarrayv2read_tensorlistgetitem_sequential_43_lstm_43_tensorarrayunstack_tensorlistfromtensor_0\
Isequential_43_lstm_43_while_lstm_cell_43_matmul_readvariableop_resource_0:	 _
Ksequential_43_lstm_43_while_lstm_cell_43_matmul_1_readvariableop_resource_0:
È Y
Jsequential_43_lstm_43_while_lstm_cell_43_biasadd_readvariableop_resource_0:	 (
$sequential_43_lstm_43_while_identity*
&sequential_43_lstm_43_while_identity_1*
&sequential_43_lstm_43_while_identity_2*
&sequential_43_lstm_43_while_identity_3*
&sequential_43_lstm_43_while_identity_4*
&sequential_43_lstm_43_while_identity_5E
Asequential_43_lstm_43_while_sequential_43_lstm_43_strided_slice_1
}sequential_43_lstm_43_while_tensorarrayv2read_tensorlistgetitem_sequential_43_lstm_43_tensorarrayunstack_tensorlistfromtensorZ
Gsequential_43_lstm_43_while_lstm_cell_43_matmul_readvariableop_resource:	 ]
Isequential_43_lstm_43_while_lstm_cell_43_matmul_1_readvariableop_resource:
È W
Hsequential_43_lstm_43_while_lstm_cell_43_biasadd_readvariableop_resource:	 ¢?sequential_43/lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp¢>sequential_43/lstm_43/while/lstm_cell_43/MatMul/ReadVariableOp¢@sequential_43/lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOpï
Msequential_43/lstm_43/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2O
Msequential_43/lstm_43/while/TensorArrayV2Read/TensorListGetItem/element_shape×
?sequential_43/lstm_43/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_43_lstm_43_while_tensorarrayv2read_tensorlistgetitem_sequential_43_lstm_43_tensorarrayunstack_tensorlistfromtensor_0'sequential_43_lstm_43_while_placeholderVsequential_43/lstm_43/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02A
?sequential_43/lstm_43/while/TensorArrayV2Read/TensorListGetItem
>sequential_43/lstm_43/while/lstm_cell_43/MatMul/ReadVariableOpReadVariableOpIsequential_43_lstm_43_while_lstm_cell_43_matmul_readvariableop_resource_0*
_output_shapes
:	 *
dtype02@
>sequential_43/lstm_43/while/lstm_cell_43/MatMul/ReadVariableOp¯
/sequential_43/lstm_43/while/lstm_cell_43/MatMulMatMulFsequential_43/lstm_43/while/TensorArrayV2Read/TensorListGetItem:item:0Fsequential_43/lstm_43/while/lstm_cell_43/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 21
/sequential_43/lstm_43/while/lstm_cell_43/MatMul
@sequential_43/lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOpReadVariableOpKsequential_43_lstm_43_while_lstm_cell_43_matmul_1_readvariableop_resource_0* 
_output_shapes
:
È *
dtype02B
@sequential_43/lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOp
1sequential_43/lstm_43/while/lstm_cell_43/MatMul_1MatMul)sequential_43_lstm_43_while_placeholder_2Hsequential_43/lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 23
1sequential_43/lstm_43/while/lstm_cell_43/MatMul_1
,sequential_43/lstm_43/while/lstm_cell_43/addAddV29sequential_43/lstm_43/while/lstm_cell_43/MatMul:product:0;sequential_43/lstm_43/while/lstm_cell_43/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2.
,sequential_43/lstm_43/while/lstm_cell_43/add
?sequential_43/lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOpReadVariableOpJsequential_43_lstm_43_while_lstm_cell_43_biasadd_readvariableop_resource_0*
_output_shapes	
: *
dtype02A
?sequential_43/lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp
0sequential_43/lstm_43/while/lstm_cell_43/BiasAddBiasAdd0sequential_43/lstm_43/while/lstm_cell_43/add:z:0Gsequential_43/lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 22
0sequential_43/lstm_43/while/lstm_cell_43/BiasAdd¶
8sequential_43/lstm_43/while/lstm_cell_43/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2:
8sequential_43/lstm_43/while/lstm_cell_43/split/split_dimç
.sequential_43/lstm_43/while/lstm_cell_43/splitSplitAsequential_43/lstm_43/while/lstm_cell_43/split/split_dim:output:09sequential_43/lstm_43/while/lstm_cell_43/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split20
.sequential_43/lstm_43/while/lstm_cell_43/splitÛ
0sequential_43/lstm_43/while/lstm_cell_43/SigmoidSigmoid7sequential_43/lstm_43/while/lstm_cell_43/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ22
0sequential_43/lstm_43/while/lstm_cell_43/Sigmoidß
2sequential_43/lstm_43/while/lstm_cell_43/Sigmoid_1Sigmoid7sequential_43/lstm_43/while/lstm_cell_43/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ24
2sequential_43/lstm_43/while/lstm_cell_43/Sigmoid_1ù
,sequential_43/lstm_43/while/lstm_cell_43/mulMul6sequential_43/lstm_43/while/lstm_cell_43/Sigmoid_1:y:0)sequential_43_lstm_43_while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2.
,sequential_43/lstm_43/while/lstm_cell_43/mulÒ
-sequential_43/lstm_43/while/lstm_cell_43/ReluRelu7sequential_43/lstm_43/while/lstm_cell_43/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2/
-sequential_43/lstm_43/while/lstm_cell_43/Relu
.sequential_43/lstm_43/while/lstm_cell_43/mul_1Mul4sequential_43/lstm_43/while/lstm_cell_43/Sigmoid:y:0;sequential_43/lstm_43/while/lstm_cell_43/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ20
.sequential_43/lstm_43/while/lstm_cell_43/mul_1
.sequential_43/lstm_43/while/lstm_cell_43/add_1AddV20sequential_43/lstm_43/while/lstm_cell_43/mul:z:02sequential_43/lstm_43/while/lstm_cell_43/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ20
.sequential_43/lstm_43/while/lstm_cell_43/add_1ß
2sequential_43/lstm_43/while/lstm_cell_43/Sigmoid_2Sigmoid7sequential_43/lstm_43/while/lstm_cell_43/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ24
2sequential_43/lstm_43/while/lstm_cell_43/Sigmoid_2Ñ
/sequential_43/lstm_43/while/lstm_cell_43/Relu_1Relu2sequential_43/lstm_43/while/lstm_cell_43/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ21
/sequential_43/lstm_43/while/lstm_cell_43/Relu_1
.sequential_43/lstm_43/while/lstm_cell_43/mul_2Mul6sequential_43/lstm_43/while/lstm_cell_43/Sigmoid_2:y:0=sequential_43/lstm_43/while/lstm_cell_43/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ20
.sequential_43/lstm_43/while/lstm_cell_43/mul_2Î
@sequential_43/lstm_43/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_43_lstm_43_while_placeholder_1'sequential_43_lstm_43_while_placeholder2sequential_43/lstm_43/while/lstm_cell_43/mul_2:z:0*
_output_shapes
: *
element_dtype02B
@sequential_43/lstm_43/while/TensorArrayV2Write/TensorListSetItem
!sequential_43/lstm_43/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_43/lstm_43/while/add/yÁ
sequential_43/lstm_43/while/addAddV2'sequential_43_lstm_43_while_placeholder*sequential_43/lstm_43/while/add/y:output:0*
T0*
_output_shapes
: 2!
sequential_43/lstm_43/while/add
#sequential_43/lstm_43/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#sequential_43/lstm_43/while/add_1/yä
!sequential_43/lstm_43/while/add_1AddV2Dsequential_43_lstm_43_while_sequential_43_lstm_43_while_loop_counter,sequential_43/lstm_43/while/add_1/y:output:0*
T0*
_output_shapes
: 2#
!sequential_43/lstm_43/while/add_1æ
$sequential_43/lstm_43/while/IdentityIdentity%sequential_43/lstm_43/while/add_1:z:0@^sequential_43/lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp?^sequential_43/lstm_43/while/lstm_cell_43/MatMul/ReadVariableOpA^sequential_43/lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_43/lstm_43/while/Identity
&sequential_43/lstm_43/while/Identity_1IdentityJsequential_43_lstm_43_while_sequential_43_lstm_43_while_maximum_iterations@^sequential_43/lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp?^sequential_43/lstm_43/while/lstm_cell_43/MatMul/ReadVariableOpA^sequential_43/lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2(
&sequential_43/lstm_43/while/Identity_1è
&sequential_43/lstm_43/while/Identity_2Identity#sequential_43/lstm_43/while/add:z:0@^sequential_43/lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp?^sequential_43/lstm_43/while/lstm_cell_43/MatMul/ReadVariableOpA^sequential_43/lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2(
&sequential_43/lstm_43/while/Identity_2
&sequential_43/lstm_43/while/Identity_3IdentityPsequential_43/lstm_43/while/TensorArrayV2Write/TensorListSetItem:output_handle:0@^sequential_43/lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp?^sequential_43/lstm_43/while/lstm_cell_43/MatMul/ReadVariableOpA^sequential_43/lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2(
&sequential_43/lstm_43/while/Identity_3
&sequential_43/lstm_43/while/Identity_4Identity2sequential_43/lstm_43/while/lstm_cell_43/mul_2:z:0@^sequential_43/lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp?^sequential_43/lstm_43/while/lstm_cell_43/MatMul/ReadVariableOpA^sequential_43/lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2(
&sequential_43/lstm_43/while/Identity_4
&sequential_43/lstm_43/while/Identity_5Identity2sequential_43/lstm_43/while/lstm_cell_43/add_1:z:0@^sequential_43/lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp?^sequential_43/lstm_43/while/lstm_cell_43/MatMul/ReadVariableOpA^sequential_43/lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2(
&sequential_43/lstm_43/while/Identity_5"U
$sequential_43_lstm_43_while_identity-sequential_43/lstm_43/while/Identity:output:0"Y
&sequential_43_lstm_43_while_identity_1/sequential_43/lstm_43/while/Identity_1:output:0"Y
&sequential_43_lstm_43_while_identity_2/sequential_43/lstm_43/while/Identity_2:output:0"Y
&sequential_43_lstm_43_while_identity_3/sequential_43/lstm_43/while/Identity_3:output:0"Y
&sequential_43_lstm_43_while_identity_4/sequential_43/lstm_43/while/Identity_4:output:0"Y
&sequential_43_lstm_43_while_identity_5/sequential_43/lstm_43/while/Identity_5:output:0"
Hsequential_43_lstm_43_while_lstm_cell_43_biasadd_readvariableop_resourceJsequential_43_lstm_43_while_lstm_cell_43_biasadd_readvariableop_resource_0"
Isequential_43_lstm_43_while_lstm_cell_43_matmul_1_readvariableop_resourceKsequential_43_lstm_43_while_lstm_cell_43_matmul_1_readvariableop_resource_0"
Gsequential_43_lstm_43_while_lstm_cell_43_matmul_readvariableop_resourceIsequential_43_lstm_43_while_lstm_cell_43_matmul_readvariableop_resource_0"
Asequential_43_lstm_43_while_sequential_43_lstm_43_strided_slice_1Csequential_43_lstm_43_while_sequential_43_lstm_43_strided_slice_1_0"
}sequential_43_lstm_43_while_tensorarrayv2read_tensorlistgetitem_sequential_43_lstm_43_tensorarrayunstack_tensorlistfromtensorsequential_43_lstm_43_while_tensorarrayv2read_tensorlistgetitem_sequential_43_lstm_43_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : 2
?sequential_43/lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp?sequential_43/lstm_43/while/lstm_cell_43/BiasAdd/ReadVariableOp2
>sequential_43/lstm_43/while/lstm_cell_43/MatMul/ReadVariableOp>sequential_43/lstm_43/while/lstm_cell_43/MatMul/ReadVariableOp2
@sequential_43/lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOp@sequential_43/lstm_43/while/lstm_cell_43/MatMul_1/ReadVariableOp: 
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
½

I__inference_lstm_cell_43_layer_call_and_return_conditional_losses_2131939

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
Õ
·
)__inference_lstm_43_layer_call_fn_2134053

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
D__inference_lstm_43_layer_call_and_return_conditional_losses_21326512
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
½

I__inference_lstm_cell_43_layer_call_and_return_conditional_losses_2132085

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
[

D__inference_lstm_43_layer_call_and_return_conditional_losses_2134020

inputs>
+lstm_cell_43_matmul_readvariableop_resource:	 A
-lstm_cell_43_matmul_1_readvariableop_resource:
È ;
,lstm_cell_43_biasadd_readvariableop_resource:	 
identity¢#lstm_cell_43/BiasAdd/ReadVariableOp¢"lstm_cell_43/MatMul/ReadVariableOp¢$lstm_cell_43/MatMul_1/ReadVariableOp¢whileD
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
"lstm_cell_43/MatMul/ReadVariableOpReadVariableOp+lstm_cell_43_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype02$
"lstm_cell_43/MatMul/ReadVariableOp­
lstm_cell_43/MatMulMatMulstrided_slice_2:output:0*lstm_cell_43/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_43/MatMul¼
$lstm_cell_43/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_43_matmul_1_readvariableop_resource* 
_output_shapes
:
È *
dtype02&
$lstm_cell_43/MatMul_1/ReadVariableOp©
lstm_cell_43/MatMul_1MatMulzeros:output:0,lstm_cell_43/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_43/MatMul_1 
lstm_cell_43/addAddV2lstm_cell_43/MatMul:product:0lstm_cell_43/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_43/add´
#lstm_cell_43/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_43_biasadd_readvariableop_resource*
_output_shapes	
: *
dtype02%
#lstm_cell_43/BiasAdd/ReadVariableOp­
lstm_cell_43/BiasAddBiasAddlstm_cell_43/add:z:0+lstm_cell_43/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_43/BiasAdd~
lstm_cell_43/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_43/split/split_dim÷
lstm_cell_43/splitSplit%lstm_cell_43/split/split_dim:output:0lstm_cell_43/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
lstm_cell_43/split
lstm_cell_43/SigmoidSigmoidlstm_cell_43/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_43/Sigmoid
lstm_cell_43/Sigmoid_1Sigmoidlstm_cell_43/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_43/Sigmoid_1
lstm_cell_43/mulMullstm_cell_43/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_43/mul~
lstm_cell_43/ReluRelulstm_cell_43/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_43/Relu
lstm_cell_43/mul_1Mullstm_cell_43/Sigmoid:y:0lstm_cell_43/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_43/mul_1
lstm_cell_43/add_1AddV2lstm_cell_43/mul:z:0lstm_cell_43/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_43/add_1
lstm_cell_43/Sigmoid_2Sigmoidlstm_cell_43/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_43/Sigmoid_2}
lstm_cell_43/Relu_1Relulstm_cell_43/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_43/Relu_1¡
lstm_cell_43/mul_2Mullstm_cell_43/Sigmoid_2:y:0!lstm_cell_43/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_43/mul_2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_43_matmul_readvariableop_resource-lstm_cell_43_matmul_1_readvariableop_resource,lstm_cell_43_biasadd_readvariableop_resource*
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
while_body_2133936*
condR
while_cond_2133935*M
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
IdentityIdentitystrided_slice_3:output:0$^lstm_cell_43/BiasAdd/ReadVariableOp#^lstm_cell_43/MatMul/ReadVariableOp%^lstm_cell_43/MatMul_1/ReadVariableOp^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_43/BiasAdd/ReadVariableOp#lstm_cell_43/BiasAdd/ReadVariableOp2H
"lstm_cell_43/MatMul/ReadVariableOp"lstm_cell_43/MatMul/ReadVariableOp2L
$lstm_cell_43/MatMul_1/ReadVariableOp$lstm_cell_43/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Þ
È
while_cond_2132566
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2132566___redundant_placeholder05
1while_while_cond_2132566___redundant_placeholder15
1while_while_cond_2132566___redundant_placeholder25
1while_while_cond_2132566___redundant_placeholder3
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
D__inference_lstm_43_layer_call_and_return_conditional_losses_2133718
inputs_0>
+lstm_cell_43_matmul_readvariableop_resource:	 A
-lstm_cell_43_matmul_1_readvariableop_resource:
È ;
,lstm_cell_43_biasadd_readvariableop_resource:	 
identity¢#lstm_cell_43/BiasAdd/ReadVariableOp¢"lstm_cell_43/MatMul/ReadVariableOp¢$lstm_cell_43/MatMul_1/ReadVariableOp¢whileF
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
"lstm_cell_43/MatMul/ReadVariableOpReadVariableOp+lstm_cell_43_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype02$
"lstm_cell_43/MatMul/ReadVariableOp­
lstm_cell_43/MatMulMatMulstrided_slice_2:output:0*lstm_cell_43/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_43/MatMul¼
$lstm_cell_43/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_43_matmul_1_readvariableop_resource* 
_output_shapes
:
È *
dtype02&
$lstm_cell_43/MatMul_1/ReadVariableOp©
lstm_cell_43/MatMul_1MatMulzeros:output:0,lstm_cell_43/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_43/MatMul_1 
lstm_cell_43/addAddV2lstm_cell_43/MatMul:product:0lstm_cell_43/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_43/add´
#lstm_cell_43/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_43_biasadd_readvariableop_resource*
_output_shapes	
: *
dtype02%
#lstm_cell_43/BiasAdd/ReadVariableOp­
lstm_cell_43/BiasAddBiasAddlstm_cell_43/add:z:0+lstm_cell_43/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_43/BiasAdd~
lstm_cell_43/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_43/split/split_dim÷
lstm_cell_43/splitSplit%lstm_cell_43/split/split_dim:output:0lstm_cell_43/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
lstm_cell_43/split
lstm_cell_43/SigmoidSigmoidlstm_cell_43/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_43/Sigmoid
lstm_cell_43/Sigmoid_1Sigmoidlstm_cell_43/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_43/Sigmoid_1
lstm_cell_43/mulMullstm_cell_43/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_43/mul~
lstm_cell_43/ReluRelulstm_cell_43/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_43/Relu
lstm_cell_43/mul_1Mullstm_cell_43/Sigmoid:y:0lstm_cell_43/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_43/mul_1
lstm_cell_43/add_1AddV2lstm_cell_43/mul:z:0lstm_cell_43/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_43/add_1
lstm_cell_43/Sigmoid_2Sigmoidlstm_cell_43/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_43/Sigmoid_2}
lstm_cell_43/Relu_1Relulstm_cell_43/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_43/Relu_1¡
lstm_cell_43/mul_2Mullstm_cell_43/Sigmoid_2:y:0!lstm_cell_43/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_43/mul_2
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_43_matmul_readvariableop_resource-lstm_cell_43_matmul_1_readvariableop_resource,lstm_cell_43_biasadd_readvariableop_resource*
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
while_body_2133634*
condR
while_cond_2133633*M
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
IdentityIdentitystrided_slice_3:output:0$^lstm_cell_43/BiasAdd/ReadVariableOp#^lstm_cell_43/MatMul/ReadVariableOp%^lstm_cell_43/MatMul_1/ReadVariableOp^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_43/BiasAdd/ReadVariableOp#lstm_cell_43/BiasAdd/ReadVariableOp2H
"lstm_cell_43/MatMul/ReadVariableOp"lstm_cell_43/MatMul/ReadVariableOp2L
$lstm_cell_43/MatMul_1/ReadVariableOp$lstm_cell_43/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0"ÌL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*»
serving_default§
K
lstm_43_input:
serving_default_lstm_43_input:0ÿÿÿÿÿÿÿÿÿ<
dense_870
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
_tf_keras_sequentialÃ*{"name": "sequential_43", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_43", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 2]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "lstm_43_input"}}, {"class_name": "LSTM", "config": {"name": "lstm_43", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 2]}, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 200, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}, {"class_name": "Dense", "config": {"name": "dense_86", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_87", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 12, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 2]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 13}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 7, 2]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 7, 2]}, "float32", "lstm_43_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_43", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 2]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "lstm_43_input"}, "shared_object_id": 0}, {"class_name": "LSTM", "config": {"name": "lstm_43", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 2]}, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 200, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 5}, {"class_name": "Dense", "config": {"name": "dense_86", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 8}, {"class_name": "Dense", "config": {"name": "dense_87", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 11}]}}, "training_config": {"loss": "mse", "metrics": null, "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
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
_tf_keras_rnn_layerá{"name": "lstm_43", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 2]}, "stateful": false, "must_restore_from_config": false, "class_name": "LSTM", "config": {"name": "lstm_43", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 2]}, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 200, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 5, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 2]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 13}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 7, 2]}}
Ò

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
*[&call_and_return_all_conditional_losses
\__call__"­
_tf_keras_layer{"name": "dense_86", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_86", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 8, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 200}}, "shared_object_id": 14}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 200]}}
Ô

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
*]&call_and_return_all_conditional_losses
^__call__"¯
_tf_keras_layer{"name": "dense_87", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_87", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 11, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 100}}, "shared_object_id": 15}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 100]}}
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
_tf_keras_layer²{"name": "lstm_cell_43", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LSTMCell", "config": {"name": "lstm_cell_43", "trainable": true, "dtype": "float32", "units": 200, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 4}
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
": 	Èd2dense_86/kernel
:d2dense_86/bias
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
!:d2dense_87/kernel
:2dense_87/bias
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
.:,	 2lstm_43/lstm_cell_43/kernel
9:7
È 2%lstm_43/lstm_cell_43/recurrent_kernel
(:& 2lstm_43/lstm_cell_43/bias
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
':%	Èd2Adam/dense_86/kernel/m
 :d2Adam/dense_86/bias/m
&:$d2Adam/dense_87/kernel/m
 :2Adam/dense_87/bias/m
3:1	 2"Adam/lstm_43/lstm_cell_43/kernel/m
>:<
È 2,Adam/lstm_43/lstm_cell_43/recurrent_kernel/m
-:+ 2 Adam/lstm_43/lstm_cell_43/bias/m
':%	Èd2Adam/dense_86/kernel/v
 :d2Adam/dense_86/bias/v
&:$d2Adam/dense_87/kernel/v
 :2Adam/dense_87/bias/v
3:1	 2"Adam/lstm_43/lstm_cell_43/kernel/v
>:<
È 2,Adam/lstm_43/lstm_cell_43/recurrent_kernel/v
-:+ 2 Adam/lstm_43/lstm_cell_43/bias/v
ö2ó
J__inference_sequential_43_layer_call_and_return_conditional_losses_2133214
J__inference_sequential_43_layer_call_and_return_conditional_losses_2133378
J__inference_sequential_43_layer_call_and_return_conditional_losses_2133002
J__inference_sequential_43_layer_call_and_return_conditional_losses_2133023À
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
/__inference_sequential_43_layer_call_fn_2132710
/__inference_sequential_43_layer_call_fn_2133397
/__inference_sequential_43_layer_call_fn_2133416
/__inference_sequential_43_layer_call_fn_2132981À
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
"__inference__wrapped_model_2131864À
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
lstm_43_inputÿÿÿÿÿÿÿÿÿ
ó2ð
D__inference_lstm_43_layer_call_and_return_conditional_losses_2133567
D__inference_lstm_43_layer_call_and_return_conditional_losses_2133718
D__inference_lstm_43_layer_call_and_return_conditional_losses_2133869
D__inference_lstm_43_layer_call_and_return_conditional_losses_2134020Õ
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
)__inference_lstm_43_layer_call_fn_2134031
)__inference_lstm_43_layer_call_fn_2134042
)__inference_lstm_43_layer_call_fn_2134053
)__inference_lstm_43_layer_call_fn_2134064Õ
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
E__inference_dense_86_layer_call_and_return_conditional_losses_2134075¢
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
*__inference_dense_86_layer_call_fn_2134084¢
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
E__inference_dense_87_layer_call_and_return_conditional_losses_2134094¢
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
*__inference_dense_87_layer_call_fn_2134103¢
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
%__inference_signature_wrapper_2133050lstm_43_input"
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
I__inference_lstm_cell_43_layer_call_and_return_conditional_losses_2134135
I__inference_lstm_cell_43_layer_call_and_return_conditional_losses_2134167¾
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
.__inference_lstm_cell_43_layer_call_fn_2134184
.__inference_lstm_cell_43_layer_call_fn_2134201¾
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
"__inference__wrapped_model_2131864z!"#:¢7
0¢-
+(
lstm_43_inputÿÿÿÿÿÿÿÿÿ
ª "3ª0
.
dense_87"
dense_87ÿÿÿÿÿÿÿÿÿ¦
E__inference_dense_86_layer_call_and_return_conditional_losses_2134075]0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿÈ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿd
 ~
*__inference_dense_86_layer_call_fn_2134084P0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿÈ
ª "ÿÿÿÿÿÿÿÿÿd¥
E__inference_dense_87_layer_call_and_return_conditional_losses_2134094\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿd
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 }
*__inference_dense_87_layer_call_fn_2134103O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿd
ª "ÿÿÿÿÿÿÿÿÿÆ
D__inference_lstm_43_layer_call_and_return_conditional_losses_2133567~!"#O¢L
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
D__inference_lstm_43_layer_call_and_return_conditional_losses_2133718~!"#O¢L
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
D__inference_lstm_43_layer_call_and_return_conditional_losses_2133869n!"#?¢<
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
D__inference_lstm_43_layer_call_and_return_conditional_losses_2134020n!"#?¢<
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
)__inference_lstm_43_layer_call_fn_2134031q!"#O¢L
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
)__inference_lstm_43_layer_call_fn_2134042q!"#O¢L
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
)__inference_lstm_43_layer_call_fn_2134053a!"#?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿÈ
)__inference_lstm_43_layer_call_fn_2134064a!"#?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿÈÐ
I__inference_lstm_cell_43_layer_call_and_return_conditional_losses_2134135!"#¢
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
I__inference_lstm_cell_43_layer_call_and_return_conditional_losses_2134167!"#¢
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
.__inference_lstm_cell_43_layer_call_fn_2134184ò!"#¢
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
.__inference_lstm_cell_43_layer_call_fn_2134201ò!"#¢
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
J__inference_sequential_43_layer_call_and_return_conditional_losses_2133002t!"#B¢?
8¢5
+(
lstm_43_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Â
J__inference_sequential_43_layer_call_and_return_conditional_losses_2133023t!"#B¢?
8¢5
+(
lstm_43_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 »
J__inference_sequential_43_layer_call_and_return_conditional_losses_2133214m!"#;¢8
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
J__inference_sequential_43_layer_call_and_return_conditional_losses_2133378m!"#;¢8
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
/__inference_sequential_43_layer_call_fn_2132710g!"#B¢?
8¢5
+(
lstm_43_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_43_layer_call_fn_2132981g!"#B¢?
8¢5
+(
lstm_43_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_43_layer_call_fn_2133397`!"#;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_43_layer_call_fn_2133416`!"#;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿµ
%__inference_signature_wrapper_2133050!"#K¢H
¢ 
Aª>
<
lstm_43_input+(
lstm_43_inputÿÿÿÿÿÿÿÿÿ"3ª0
.
dense_87"
dense_87ÿÿÿÿÿÿÿÿÿ