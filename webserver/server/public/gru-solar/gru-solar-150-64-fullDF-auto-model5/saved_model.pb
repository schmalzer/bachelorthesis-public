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
dense_206/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Èd*!
shared_namedense_206/kernel
v
$dense_206/kernel/Read/ReadVariableOpReadVariableOpdense_206/kernel*
_output_shapes
:	Èd*
dtype0
t
dense_206/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*
shared_namedense_206/bias
m
"dense_206/bias/Read/ReadVariableOpReadVariableOpdense_206/bias*
_output_shapes
:d*
dtype0
|
dense_207/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*!
shared_namedense_207/kernel
u
$dense_207/kernel/Read/ReadVariableOpReadVariableOpdense_207/kernel*
_output_shapes

:d*
dtype0
t
dense_207/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_207/bias
m
"dense_207/bias/Read/ReadVariableOpReadVariableOpdense_207/bias*
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
gru_103/gru_cell_103/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ø*,
shared_namegru_103/gru_cell_103/kernel

/gru_103/gru_cell_103/kernel/Read/ReadVariableOpReadVariableOpgru_103/gru_cell_103/kernel*
_output_shapes
:	Ø*
dtype0
¨
%gru_103/gru_cell_103/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ÈØ*6
shared_name'%gru_103/gru_cell_103/recurrent_kernel
¡
9gru_103/gru_cell_103/recurrent_kernel/Read/ReadVariableOpReadVariableOp%gru_103/gru_cell_103/recurrent_kernel* 
_output_shapes
:
ÈØ*
dtype0

gru_103/gru_cell_103/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:Ø**
shared_namegru_103/gru_cell_103/bias

-gru_103/gru_cell_103/bias/Read/ReadVariableOpReadVariableOpgru_103/gru_cell_103/bias*
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
Adam/dense_206/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Èd*(
shared_nameAdam/dense_206/kernel/m

+Adam/dense_206/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_206/kernel/m*
_output_shapes
:	Èd*
dtype0

Adam/dense_206/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*&
shared_nameAdam/dense_206/bias/m
{
)Adam/dense_206/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_206/bias/m*
_output_shapes
:d*
dtype0

Adam/dense_207/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*(
shared_nameAdam/dense_207/kernel/m

+Adam/dense_207/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_207/kernel/m*
_output_shapes

:d*
dtype0

Adam/dense_207/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_207/bias/m
{
)Adam/dense_207/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_207/bias/m*
_output_shapes
:*
dtype0
¡
"Adam/gru_103/gru_cell_103/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ø*3
shared_name$"Adam/gru_103/gru_cell_103/kernel/m

6Adam/gru_103/gru_cell_103/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/gru_103/gru_cell_103/kernel/m*
_output_shapes
:	Ø*
dtype0
¶
,Adam/gru_103/gru_cell_103/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ÈØ*=
shared_name.,Adam/gru_103/gru_cell_103/recurrent_kernel/m
¯
@Adam/gru_103/gru_cell_103/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/gru_103/gru_cell_103/recurrent_kernel/m* 
_output_shapes
:
ÈØ*
dtype0

 Adam/gru_103/gru_cell_103/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:Ø*1
shared_name" Adam/gru_103/gru_cell_103/bias/m

4Adam/gru_103/gru_cell_103/bias/m/Read/ReadVariableOpReadVariableOp Adam/gru_103/gru_cell_103/bias/m*
_output_shapes	
:Ø*
dtype0

Adam/dense_206/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Èd*(
shared_nameAdam/dense_206/kernel/v

+Adam/dense_206/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_206/kernel/v*
_output_shapes
:	Èd*
dtype0

Adam/dense_206/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*&
shared_nameAdam/dense_206/bias/v
{
)Adam/dense_206/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_206/bias/v*
_output_shapes
:d*
dtype0

Adam/dense_207/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*(
shared_nameAdam/dense_207/kernel/v

+Adam/dense_207/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_207/kernel/v*
_output_shapes

:d*
dtype0

Adam/dense_207/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_207/bias/v
{
)Adam/dense_207/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_207/bias/v*
_output_shapes
:*
dtype0
¡
"Adam/gru_103/gru_cell_103/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ø*3
shared_name$"Adam/gru_103/gru_cell_103/kernel/v

6Adam/gru_103/gru_cell_103/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/gru_103/gru_cell_103/kernel/v*
_output_shapes
:	Ø*
dtype0
¶
,Adam/gru_103/gru_cell_103/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ÈØ*=
shared_name.,Adam/gru_103/gru_cell_103/recurrent_kernel/v
¯
@Adam/gru_103/gru_cell_103/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/gru_103/gru_cell_103/recurrent_kernel/v* 
_output_shapes
:
ÈØ*
dtype0

 Adam/gru_103/gru_cell_103/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:Ø*1
shared_name" Adam/gru_103/gru_cell_103/bias/v

4Adam/gru_103/gru_cell_103/bias/v/Read/ReadVariableOpReadVariableOp Adam/gru_103/gru_cell_103/bias/v*
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
VARIABLE_VALUEdense_206/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_206/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_207/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_207/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEgru_103/gru_cell_103/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUE%gru_103/gru_cell_103/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEgru_103/gru_cell_103/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_206/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_206/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_207/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_207/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/gru_103/gru_cell_103/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/gru_103/gru_cell_103/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/gru_103/gru_cell_103/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_206/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_206/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_207/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_207/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE"Adam/gru_103/gru_cell_103/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE,Adam/gru_103/gru_cell_103/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/gru_103/gru_cell_103/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_gru_103_inputPlaceholder*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0* 
shape:ÿÿÿÿÿÿÿÿÿ
ê
StatefulPartitionedCallStatefulPartitionedCallserving_default_gru_103_inputgru_103/gru_cell_103/kernelgru_103/gru_cell_103/bias%gru_103/gru_cell_103/recurrent_kerneldense_206/kerneldense_206/biasdense_207/kerneldense_207/bias*
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
%__inference_signature_wrapper_5225690
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_206/kernel/Read/ReadVariableOp"dense_206/bias/Read/ReadVariableOp$dense_207/kernel/Read/ReadVariableOp"dense_207/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp/gru_103/gru_cell_103/kernel/Read/ReadVariableOp9gru_103/gru_cell_103/recurrent_kernel/Read/ReadVariableOp-gru_103/gru_cell_103/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_206/kernel/m/Read/ReadVariableOp)Adam/dense_206/bias/m/Read/ReadVariableOp+Adam/dense_207/kernel/m/Read/ReadVariableOp)Adam/dense_207/bias/m/Read/ReadVariableOp6Adam/gru_103/gru_cell_103/kernel/m/Read/ReadVariableOp@Adam/gru_103/gru_cell_103/recurrent_kernel/m/Read/ReadVariableOp4Adam/gru_103/gru_cell_103/bias/m/Read/ReadVariableOp+Adam/dense_206/kernel/v/Read/ReadVariableOp)Adam/dense_206/bias/v/Read/ReadVariableOp+Adam/dense_207/kernel/v/Read/ReadVariableOp)Adam/dense_207/bias/v/Read/ReadVariableOp6Adam/gru_103/gru_cell_103/kernel/v/Read/ReadVariableOp@Adam/gru_103/gru_cell_103/recurrent_kernel/v/Read/ReadVariableOp4Adam/gru_103/gru_cell_103/bias/v/Read/ReadVariableOpConst*)
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
 __inference__traced_save_5227090
Ñ
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_206/kerneldense_206/biasdense_207/kerneldense_207/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rategru_103/gru_cell_103/kernel%gru_103/gru_cell_103/recurrent_kernelgru_103/gru_cell_103/biastotalcountAdam/dense_206/kernel/mAdam/dense_206/bias/mAdam/dense_207/kernel/mAdam/dense_207/bias/m"Adam/gru_103/gru_cell_103/kernel/m,Adam/gru_103/gru_cell_103/recurrent_kernel/m Adam/gru_103/gru_cell_103/bias/mAdam/dense_206/kernel/vAdam/dense_206/bias/vAdam/dense_207/kernel/vAdam/dense_207/bias/v"Adam/gru_103/gru_cell_103/kernel/v,Adam/gru_103/gru_cell_103/recurrent_kernel/v Adam/gru_103/gru_cell_103/bias/v*(
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
#__inference__traced_restore_5227184 
Þ*
ë
I__inference_gru_cell_103_layer_call_and_return_conditional_losses_5226909

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


+__inference_dense_207_layer_call_fn_5226863

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
F__inference_dense_207_layer_call_and_return_conditional_losses_52253062
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
¦
Ñ
K__inference_sequential_103_layer_call_and_return_conditional_losses_5225663
gru_103_input"
gru_103_5225645:	Ø
gru_103_5225647:	Ø#
gru_103_5225649:
ÈØ$
dense_206_5225652:	Èd
dense_206_5225654:d#
dense_207_5225657:d
dense_207_5225659:
identity¢!dense_206/StatefulPartitionedCall¢!dense_207/StatefulPartitionedCall¢gru_103/StatefulPartitionedCall­
gru_103/StatefulPartitionedCallStatefulPartitionedCallgru_103_inputgru_103_5225645gru_103_5225647gru_103_5225649*
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
D__inference_gru_103_layer_call_and_return_conditional_losses_52255342!
gru_103/StatefulPartitionedCall¾
!dense_206/StatefulPartitionedCallStatefulPartitionedCall(gru_103/StatefulPartitionedCall:output:0dense_206_5225652dense_206_5225654*
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
F__inference_dense_206_layer_call_and_return_conditional_losses_52252902#
!dense_206/StatefulPartitionedCallÀ
!dense_207/StatefulPartitionedCallStatefulPartitionedCall*dense_206/StatefulPartitionedCall:output:0dense_207_5225657dense_207_5225659*
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
F__inference_dense_207_layer_call_and_return_conditional_losses_52253062#
!dense_207/StatefulPartitionedCallè
IdentityIdentity*dense_207/StatefulPartitionedCall:output:0"^dense_206/StatefulPartitionedCall"^dense_207/StatefulPartitionedCall ^gru_103/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2F
!dense_206/StatefulPartitionedCall!dense_206/StatefulPartitionedCall2F
!dense_207/StatefulPartitionedCall!dense_207/StatefulPartitionedCall2B
gru_103/StatefulPartitionedCallgru_103/StatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namegru_103_input
í
¹
)__inference_gru_103_layer_call_fn_5226802
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
D__inference_gru_103_layer_call_and_return_conditional_losses_52248602
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
¶

Ú
.__inference_gru_cell_103_layer_call_fn_5226983

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
I__inference_gru_cell_103_layer_call_and_return_conditional_losses_52247292
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

¯
while_cond_5224795
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_5224795___redundant_placeholder05
1while_while_cond_5224795___redundant_placeholder15
1while_while_cond_5224795___redundant_placeholder25
1while_while_cond_5224795___redundant_placeholder3
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
F__inference_dense_206_layer_call_and_return_conditional_losses_5225290

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
Ôi
«
D__inference_gru_103_layer_call_and_return_conditional_losses_5225534

inputs>
+gru_cell_103_matmul_readvariableop_resource:	Ø;
,gru_cell_103_biasadd_readvariableop_resource:	Ø8
$gru_cell_103_readvariableop_resource:
ÈØ
identity¢#gru_cell_103/BiasAdd/ReadVariableOp¢"gru_cell_103/MatMul/ReadVariableOp¢gru_cell_103/ReadVariableOp¢gru_cell_103/ReadVariableOp_1¢whileD
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
"gru_cell_103/MatMul/ReadVariableOpReadVariableOp+gru_cell_103_matmul_readvariableop_resource*
_output_shapes
:	Ø*
dtype02$
"gru_cell_103/MatMul/ReadVariableOp­
gru_cell_103/MatMulMatMulstrided_slice_2:output:0*gru_cell_103/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_cell_103/MatMul´
#gru_cell_103/BiasAdd/ReadVariableOpReadVariableOp,gru_cell_103_biasadd_readvariableop_resource*
_output_shapes	
:Ø*
dtype02%
#gru_cell_103/BiasAdd/ReadVariableOp¶
gru_cell_103/BiasAddBiasAddgru_cell_103/MatMul:product:0+gru_cell_103/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_cell_103/BiasAdd
gru_cell_103/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
gru_cell_103/split/split_dimã
gru_cell_103/splitSplit%gru_cell_103/split/split_dim:output:0gru_cell_103/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
gru_cell_103/split¡
gru_cell_103/ReadVariableOpReadVariableOp$gru_cell_103_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02
gru_cell_103/ReadVariableOp
 gru_cell_103/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 gru_cell_103/strided_slice/stack
"gru_cell_103/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_103/strided_slice/stack_1
"gru_cell_103/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_103/strided_slice/stack_2Ì
gru_cell_103/strided_sliceStridedSlice#gru_cell_103/ReadVariableOp:value:0)gru_cell_103/strided_slice/stack:output:0+gru_cell_103/strided_slice/stack_1:output:0+gru_cell_103/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2
gru_cell_103/strided_slice 
gru_cell_103/MatMul_1MatMulzeros:output:0#gru_cell_103/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_103/MatMul_1}
gru_cell_103/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2
gru_cell_103/Const
gru_cell_103/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2 
gru_cell_103/split_1/split_dim
gru_cell_103/split_1SplitVgru_cell_103/MatMul_1:product:0gru_cell_103/Const:output:0'gru_cell_103/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2
gru_cell_103/split_1
gru_cell_103/addAddV2gru_cell_103/split:output:0gru_cell_103/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_103/add
gru_cell_103/SigmoidSigmoidgru_cell_103/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_103/Sigmoid 
gru_cell_103/add_1AddV2gru_cell_103/split:output:1gru_cell_103/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_103/add_1
gru_cell_103/Sigmoid_1Sigmoidgru_cell_103/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_103/Sigmoid_1
gru_cell_103/mulMulgru_cell_103/Sigmoid_1:y:0zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_103/mul¥
gru_cell_103/ReadVariableOp_1ReadVariableOp$gru_cell_103_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02
gru_cell_103/ReadVariableOp_1
"gru_cell_103/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_103/strided_slice_1/stack
$gru_cell_103/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$gru_cell_103/strided_slice_1/stack_1
$gru_cell_103/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$gru_cell_103/strided_slice_1/stack_2Ø
gru_cell_103/strided_slice_1StridedSlice%gru_cell_103/ReadVariableOp_1:value:0+gru_cell_103/strided_slice_1/stack:output:0-gru_cell_103/strided_slice_1/stack_1:output:0-gru_cell_103/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2
gru_cell_103/strided_slice_1¨
gru_cell_103/MatMul_2MatMulgru_cell_103/mul:z:0%gru_cell_103/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_103/MatMul_2¢
gru_cell_103/add_2AddV2gru_cell_103/split:output:2gru_cell_103/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_103/add_2y
gru_cell_103/ReluRelugru_cell_103/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_103/Relu
gru_cell_103/mul_1Mulgru_cell_103/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_103/mul_1m
gru_cell_103/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_103/sub/x
gru_cell_103/subSubgru_cell_103/sub/x:output:0gru_cell_103/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_103/sub
gru_cell_103/mul_2Mulgru_cell_103/sub:z:0gru_cell_103/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_103/mul_2
gru_cell_103/add_3AddV2gru_cell_103/mul_1:z:0gru_cell_103/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_103/add_3
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+gru_cell_103_matmul_readvariableop_resource,gru_cell_103_biasadd_readvariableop_resource$gru_cell_103_readvariableop_resource*
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
while_body_5225438*
condR
while_cond_5225437*9
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
IdentityIdentitystrided_slice_3:output:0$^gru_cell_103/BiasAdd/ReadVariableOp#^gru_cell_103/MatMul/ReadVariableOp^gru_cell_103/ReadVariableOp^gru_cell_103/ReadVariableOp_1^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#gru_cell_103/BiasAdd/ReadVariableOp#gru_cell_103/BiasAdd/ReadVariableOp2H
"gru_cell_103/MatMul/ReadVariableOp"gru_cell_103/MatMul/ReadVariableOp2:
gru_cell_103/ReadVariableOpgru_cell_103/ReadVariableOp2>
gru_cell_103/ReadVariableOp_1gru_cell_103/ReadVariableOp_12
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ê	
Ç
gru_103_while_cond_5225948,
(gru_103_while_gru_103_while_loop_counter2
.gru_103_while_gru_103_while_maximum_iterations
gru_103_while_placeholder
gru_103_while_placeholder_1
gru_103_while_placeholder_2.
*gru_103_while_less_gru_103_strided_slice_1E
Agru_103_while_gru_103_while_cond_5225948___redundant_placeholder0E
Agru_103_while_gru_103_while_cond_5225948___redundant_placeholder1E
Agru_103_while_gru_103_while_cond_5225948___redundant_placeholder2E
Agru_103_while_gru_103_while_cond_5225948___redundant_placeholder3
gru_103_while_identity

gru_103/while/LessLessgru_103_while_placeholder*gru_103_while_less_gru_103_strided_slice_1*
T0*
_output_shapes
: 2
gru_103/while/Lessu
gru_103/while/IdentityIdentitygru_103/while/Less:z:0*
T0
*
_output_shapes
: 2
gru_103/while/Identity"9
gru_103_while_identitygru_103/while/Identity:output:0*(
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
while_body_5226513
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_gru_cell_103_matmul_readvariableop_resource_0:	ØC
4while_gru_cell_103_biasadd_readvariableop_resource_0:	Ø@
,while_gru_cell_103_readvariableop_resource_0:
ÈØ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_gru_cell_103_matmul_readvariableop_resource:	ØA
2while_gru_cell_103_biasadd_readvariableop_resource:	Ø>
*while_gru_cell_103_readvariableop_resource:
ÈØ¢)while/gru_cell_103/BiasAdd/ReadVariableOp¢(while/gru_cell_103/MatMul/ReadVariableOp¢!while/gru_cell_103/ReadVariableOp¢#while/gru_cell_103/ReadVariableOp_1Ã
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
(while/gru_cell_103/MatMul/ReadVariableOpReadVariableOp3while_gru_cell_103_matmul_readvariableop_resource_0*
_output_shapes
:	Ø*
dtype02*
(while/gru_cell_103/MatMul/ReadVariableOp×
while/gru_cell_103/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/gru_cell_103/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
while/gru_cell_103/MatMulÈ
)while/gru_cell_103/BiasAdd/ReadVariableOpReadVariableOp4while_gru_cell_103_biasadd_readvariableop_resource_0*
_output_shapes	
:Ø*
dtype02+
)while/gru_cell_103/BiasAdd/ReadVariableOpÎ
while/gru_cell_103/BiasAddBiasAdd#while/gru_cell_103/MatMul:product:01while/gru_cell_103/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
while/gru_cell_103/BiasAdd
"while/gru_cell_103/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2$
"while/gru_cell_103/split/split_dimû
while/gru_cell_103/splitSplit+while/gru_cell_103/split/split_dim:output:0#while/gru_cell_103/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
while/gru_cell_103/splitµ
!while/gru_cell_103/ReadVariableOpReadVariableOp,while_gru_cell_103_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02#
!while/gru_cell_103/ReadVariableOp¡
&while/gru_cell_103/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/gru_cell_103/strided_slice/stack¥
(while/gru_cell_103/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_103/strided_slice/stack_1¥
(while/gru_cell_103/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_103/strided_slice/stack_2ð
 while/gru_cell_103/strided_sliceStridedSlice)while/gru_cell_103/ReadVariableOp:value:0/while/gru_cell_103/strided_slice/stack:output:01while/gru_cell_103/strided_slice/stack_1:output:01while/gru_cell_103/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2"
 while/gru_cell_103/strided_slice·
while/gru_cell_103/MatMul_1MatMulwhile_placeholder_2)while/gru_cell_103/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_103/MatMul_1
while/gru_cell_103/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2
while/gru_cell_103/Const
$while/gru_cell_103/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2&
$while/gru_cell_103/split_1/split_dim°
while/gru_cell_103/split_1SplitV%while/gru_cell_103/MatMul_1:product:0!while/gru_cell_103/Const:output:0-while/gru_cell_103/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2
while/gru_cell_103/split_1´
while/gru_cell_103/addAddV2!while/gru_cell_103/split:output:0#while/gru_cell_103/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_103/add
while/gru_cell_103/SigmoidSigmoidwhile/gru_cell_103/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_103/Sigmoid¸
while/gru_cell_103/add_1AddV2!while/gru_cell_103/split:output:1#while/gru_cell_103/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_103/add_1
while/gru_cell_103/Sigmoid_1Sigmoidwhile/gru_cell_103/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_103/Sigmoid_1¡
while/gru_cell_103/mulMul while/gru_cell_103/Sigmoid_1:y:0while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_103/mul¹
#while/gru_cell_103/ReadVariableOp_1ReadVariableOp,while_gru_cell_103_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02%
#while/gru_cell_103/ReadVariableOp_1¥
(while/gru_cell_103/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_103/strided_slice_1/stack©
*while/gru_cell_103/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/gru_cell_103/strided_slice_1/stack_1©
*while/gru_cell_103/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/gru_cell_103/strided_slice_1/stack_2ü
"while/gru_cell_103/strided_slice_1StridedSlice+while/gru_cell_103/ReadVariableOp_1:value:01while/gru_cell_103/strided_slice_1/stack:output:03while/gru_cell_103/strided_slice_1/stack_1:output:03while/gru_cell_103/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2$
"while/gru_cell_103/strided_slice_1À
while/gru_cell_103/MatMul_2MatMulwhile/gru_cell_103/mul:z:0+while/gru_cell_103/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_103/MatMul_2º
while/gru_cell_103/add_2AddV2!while/gru_cell_103/split:output:2%while/gru_cell_103/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_103/add_2
while/gru_cell_103/ReluReluwhile/gru_cell_103/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_103/Relu£
while/gru_cell_103/mul_1Mulwhile/gru_cell_103/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_103/mul_1y
while/gru_cell_103/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
while/gru_cell_103/sub/x­
while/gru_cell_103/subSub!while/gru_cell_103/sub/x:output:0while/gru_cell_103/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_103/sub±
while/gru_cell_103/mul_2Mulwhile/gru_cell_103/sub:z:0%while/gru_cell_103/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_103/mul_2¬
while/gru_cell_103/add_3AddV2while/gru_cell_103/mul_1:z:0while/gru_cell_103/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_103/add_3à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_103/add_3:z:0*
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
while/IdentityIdentitywhile/add_1:z:0*^while/gru_cell_103/BiasAdd/ReadVariableOp)^while/gru_cell_103/MatMul/ReadVariableOp"^while/gru_cell_103/ReadVariableOp$^while/gru_cell_103/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations*^while/gru_cell_103/BiasAdd/ReadVariableOp)^while/gru_cell_103/MatMul/ReadVariableOp"^while/gru_cell_103/ReadVariableOp$^while/gru_cell_103/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:0*^while/gru_cell_103/BiasAdd/ReadVariableOp)^while/gru_cell_103/MatMul/ReadVariableOp"^while/gru_cell_103/ReadVariableOp$^while/gru_cell_103/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_2®
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/gru_cell_103/BiasAdd/ReadVariableOp)^while/gru_cell_103/MatMul/ReadVariableOp"^while/gru_cell_103/ReadVariableOp$^while/gru_cell_103/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_3¢
while/Identity_4Identitywhile/gru_cell_103/add_3:z:0*^while/gru_cell_103/BiasAdd/ReadVariableOp)^while/gru_cell_103/MatMul/ReadVariableOp"^while/gru_cell_103/ReadVariableOp$^while/gru_cell_103/ReadVariableOp_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_4"j
2while_gru_cell_103_biasadd_readvariableop_resource4while_gru_cell_103_biasadd_readvariableop_resource_0"h
1while_gru_cell_103_matmul_readvariableop_resource3while_gru_cell_103_matmul_readvariableop_resource_0"Z
*while_gru_cell_103_readvariableop_resource,while_gru_cell_103_readvariableop_resource_0")
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
)while/gru_cell_103/BiasAdd/ReadVariableOp)while/gru_cell_103/BiasAdd/ReadVariableOp2T
(while/gru_cell_103/MatMul/ReadVariableOp(while/gru_cell_103/MatMul/ReadVariableOp2F
!while/gru_cell_103/ReadVariableOp!while/gru_cell_103/ReadVariableOp2J
#while/gru_cell_103/ReadVariableOp_1#while/gru_cell_103/ReadVariableOp_1: 
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
while_cond_5226683
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_5226683___redundant_placeholder05
1while_while_cond_5226683___redundant_placeholder15
1while_while_cond_5226683___redundant_placeholder25
1while_while_cond_5226683___redundant_placeholder3
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
#
½
while_body_5224592
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_gru_cell_103_5224614_0:	Ø+
while_gru_cell_103_5224616_0:	Ø0
while_gru_cell_103_5224618_0:
ÈØ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_gru_cell_103_5224614:	Ø)
while_gru_cell_103_5224616:	Ø.
while_gru_cell_103_5224618:
ÈØ¢*while/gru_cell_103/StatefulPartitionedCallÃ
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
*while/gru_cell_103/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_gru_cell_103_5224614_0while_gru_cell_103_5224616_0while_gru_cell_103_5224618_0*
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
I__inference_gru_cell_103_layer_call_and_return_conditional_losses_52245792,
*while/gru_cell_103/StatefulPartitionedCall÷
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/gru_cell_103/StatefulPartitionedCall:output:0*
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
while/IdentityIdentitywhile/add_1:z:0+^while/gru_cell_103/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations+^while/gru_cell_103/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:0+^while/gru_cell_103/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2º
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/gru_cell_103/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3Å
while/Identity_4Identity3while/gru_cell_103/StatefulPartitionedCall:output:1+^while/gru_cell_103/StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_4":
while_gru_cell_103_5224614while_gru_cell_103_5224614_0":
while_gru_cell_103_5224616while_gru_cell_103_5224616_0":
while_gru_cell_103_5224618while_gru_cell_103_5224618_0")
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
*while/gru_cell_103/StatefulPartitionedCall*while/gru_cell_103/StatefulPartitionedCall: 
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
Â
ç
K__inference_sequential_103_layer_call_and_return_conditional_losses_5226058

inputsF
3gru_103_gru_cell_103_matmul_readvariableop_resource:	ØC
4gru_103_gru_cell_103_biasadd_readvariableop_resource:	Ø@
,gru_103_gru_cell_103_readvariableop_resource:
ÈØ;
(dense_206_matmul_readvariableop_resource:	Èd7
)dense_206_biasadd_readvariableop_resource:d:
(dense_207_matmul_readvariableop_resource:d7
)dense_207_biasadd_readvariableop_resource:
identity¢ dense_206/BiasAdd/ReadVariableOp¢dense_206/MatMul/ReadVariableOp¢ dense_207/BiasAdd/ReadVariableOp¢dense_207/MatMul/ReadVariableOp¢+gru_103/gru_cell_103/BiasAdd/ReadVariableOp¢*gru_103/gru_cell_103/MatMul/ReadVariableOp¢#gru_103/gru_cell_103/ReadVariableOp¢%gru_103/gru_cell_103/ReadVariableOp_1¢gru_103/whileT
gru_103/ShapeShapeinputs*
T0*
_output_shapes
:2
gru_103/Shape
gru_103/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_103/strided_slice/stack
gru_103/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_103/strided_slice/stack_1
gru_103/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_103/strided_slice/stack_2
gru_103/strided_sliceStridedSlicegru_103/Shape:output:0$gru_103/strided_slice/stack:output:0&gru_103/strided_slice/stack_1:output:0&gru_103/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru_103/strided_slicem
gru_103/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :È2
gru_103/zeros/mul/y
gru_103/zeros/mulMulgru_103/strided_slice:output:0gru_103/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
gru_103/zeros/mulo
gru_103/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
gru_103/zeros/Less/y
gru_103/zeros/LessLessgru_103/zeros/mul:z:0gru_103/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
gru_103/zeros/Lesss
gru_103/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :È2
gru_103/zeros/packed/1£
gru_103/zeros/packedPackgru_103/strided_slice:output:0gru_103/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
gru_103/zeros/packedo
gru_103/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_103/zeros/Const
gru_103/zerosFillgru_103/zeros/packed:output:0gru_103/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_103/zeros
gru_103/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_103/transpose/perm
gru_103/transpose	Transposeinputsgru_103/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_103/transposeg
gru_103/Shape_1Shapegru_103/transpose:y:0*
T0*
_output_shapes
:2
gru_103/Shape_1
gru_103/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_103/strided_slice_1/stack
gru_103/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
gru_103/strided_slice_1/stack_1
gru_103/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
gru_103/strided_slice_1/stack_2
gru_103/strided_slice_1StridedSlicegru_103/Shape_1:output:0&gru_103/strided_slice_1/stack:output:0(gru_103/strided_slice_1/stack_1:output:0(gru_103/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru_103/strided_slice_1
#gru_103/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2%
#gru_103/TensorArrayV2/element_shapeÒ
gru_103/TensorArrayV2TensorListReserve,gru_103/TensorArrayV2/element_shape:output:0 gru_103/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_103/TensorArrayV2Ï
=gru_103/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2?
=gru_103/TensorArrayUnstack/TensorListFromTensor/element_shape
/gru_103/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorgru_103/transpose:y:0Fgru_103/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/gru_103/TensorArrayUnstack/TensorListFromTensor
gru_103/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_103/strided_slice_2/stack
gru_103/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
gru_103/strided_slice_2/stack_1
gru_103/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
gru_103/strided_slice_2/stack_2¬
gru_103/strided_slice_2StridedSlicegru_103/transpose:y:0&gru_103/strided_slice_2/stack:output:0(gru_103/strided_slice_2/stack_1:output:0(gru_103/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
gru_103/strided_slice_2Í
*gru_103/gru_cell_103/MatMul/ReadVariableOpReadVariableOp3gru_103_gru_cell_103_matmul_readvariableop_resource*
_output_shapes
:	Ø*
dtype02,
*gru_103/gru_cell_103/MatMul/ReadVariableOpÍ
gru_103/gru_cell_103/MatMulMatMul gru_103/strided_slice_2:output:02gru_103/gru_cell_103/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_103/gru_cell_103/MatMulÌ
+gru_103/gru_cell_103/BiasAdd/ReadVariableOpReadVariableOp4gru_103_gru_cell_103_biasadd_readvariableop_resource*
_output_shapes	
:Ø*
dtype02-
+gru_103/gru_cell_103/BiasAdd/ReadVariableOpÖ
gru_103/gru_cell_103/BiasAddBiasAdd%gru_103/gru_cell_103/MatMul:product:03gru_103/gru_cell_103/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_103/gru_cell_103/BiasAdd
$gru_103/gru_cell_103/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2&
$gru_103/gru_cell_103/split/split_dim
gru_103/gru_cell_103/splitSplit-gru_103/gru_cell_103/split/split_dim:output:0%gru_103/gru_cell_103/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
gru_103/gru_cell_103/split¹
#gru_103/gru_cell_103/ReadVariableOpReadVariableOp,gru_103_gru_cell_103_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02%
#gru_103/gru_cell_103/ReadVariableOp¥
(gru_103/gru_cell_103/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(gru_103/gru_cell_103/strided_slice/stack©
*gru_103/gru_cell_103/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2,
*gru_103/gru_cell_103/strided_slice/stack_1©
*gru_103/gru_cell_103/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*gru_103/gru_cell_103/strided_slice/stack_2ü
"gru_103/gru_cell_103/strided_sliceStridedSlice+gru_103/gru_cell_103/ReadVariableOp:value:01gru_103/gru_cell_103/strided_slice/stack:output:03gru_103/gru_cell_103/strided_slice/stack_1:output:03gru_103/gru_cell_103/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2$
"gru_103/gru_cell_103/strided_sliceÀ
gru_103/gru_cell_103/MatMul_1MatMulgru_103/zeros:output:0+gru_103/gru_cell_103/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_103/gru_cell_103/MatMul_1
gru_103/gru_cell_103/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2
gru_103/gru_cell_103/Const
&gru_103/gru_cell_103/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2(
&gru_103/gru_cell_103/split_1/split_dimº
gru_103/gru_cell_103/split_1SplitV'gru_103/gru_cell_103/MatMul_1:product:0#gru_103/gru_cell_103/Const:output:0/gru_103/gru_cell_103/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2
gru_103/gru_cell_103/split_1¼
gru_103/gru_cell_103/addAddV2#gru_103/gru_cell_103/split:output:0%gru_103/gru_cell_103/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_103/gru_cell_103/add
gru_103/gru_cell_103/SigmoidSigmoidgru_103/gru_cell_103/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_103/gru_cell_103/SigmoidÀ
gru_103/gru_cell_103/add_1AddV2#gru_103/gru_cell_103/split:output:1%gru_103/gru_cell_103/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_103/gru_cell_103/add_1
gru_103/gru_cell_103/Sigmoid_1Sigmoidgru_103/gru_cell_103/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2 
gru_103/gru_cell_103/Sigmoid_1ª
gru_103/gru_cell_103/mulMul"gru_103/gru_cell_103/Sigmoid_1:y:0gru_103/zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_103/gru_cell_103/mul½
%gru_103/gru_cell_103/ReadVariableOp_1ReadVariableOp,gru_103_gru_cell_103_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02'
%gru_103/gru_cell_103/ReadVariableOp_1©
*gru_103/gru_cell_103/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2,
*gru_103/gru_cell_103/strided_slice_1/stack­
,gru_103/gru_cell_103/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2.
,gru_103/gru_cell_103/strided_slice_1/stack_1­
,gru_103/gru_cell_103/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,gru_103/gru_cell_103/strided_slice_1/stack_2
$gru_103/gru_cell_103/strided_slice_1StridedSlice-gru_103/gru_cell_103/ReadVariableOp_1:value:03gru_103/gru_cell_103/strided_slice_1/stack:output:05gru_103/gru_cell_103/strided_slice_1/stack_1:output:05gru_103/gru_cell_103/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2&
$gru_103/gru_cell_103/strided_slice_1È
gru_103/gru_cell_103/MatMul_2MatMulgru_103/gru_cell_103/mul:z:0-gru_103/gru_cell_103/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_103/gru_cell_103/MatMul_2Â
gru_103/gru_cell_103/add_2AddV2#gru_103/gru_cell_103/split:output:2'gru_103/gru_cell_103/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_103/gru_cell_103/add_2
gru_103/gru_cell_103/ReluRelugru_103/gru_cell_103/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_103/gru_cell_103/Relu¬
gru_103/gru_cell_103/mul_1Mul gru_103/gru_cell_103/Sigmoid:y:0gru_103/zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_103/gru_cell_103/mul_1}
gru_103/gru_cell_103/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_103/gru_cell_103/sub/xµ
gru_103/gru_cell_103/subSub#gru_103/gru_cell_103/sub/x:output:0 gru_103/gru_cell_103/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_103/gru_cell_103/sub¹
gru_103/gru_cell_103/mul_2Mulgru_103/gru_cell_103/sub:z:0'gru_103/gru_cell_103/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_103/gru_cell_103/mul_2´
gru_103/gru_cell_103/add_3AddV2gru_103/gru_cell_103/mul_1:z:0gru_103/gru_cell_103/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_103/gru_cell_103/add_3
%gru_103/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÈ   2'
%gru_103/TensorArrayV2_1/element_shapeØ
gru_103/TensorArrayV2_1TensorListReserve.gru_103/TensorArrayV2_1/element_shape:output:0 gru_103/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_103/TensorArrayV2_1^
gru_103/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
gru_103/time
 gru_103/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 gru_103/while/maximum_iterationsz
gru_103/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
gru_103/while/loop_counter 
gru_103/whileWhile#gru_103/while/loop_counter:output:0)gru_103/while/maximum_iterations:output:0gru_103/time:output:0 gru_103/TensorArrayV2_1:handle:0gru_103/zeros:output:0 gru_103/strided_slice_1:output:0?gru_103/TensorArrayUnstack/TensorListFromTensor:output_handle:03gru_103_gru_cell_103_matmul_readvariableop_resource4gru_103_gru_cell_103_biasadd_readvariableop_resource,gru_103_gru_cell_103_readvariableop_resource*
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
gru_103_while_body_5225949*&
condR
gru_103_while_cond_5225948*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿÈ: : : : : *
parallel_iterations 2
gru_103/whileÅ
8gru_103/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÈ   2:
8gru_103/TensorArrayV2Stack/TensorListStack/element_shape
*gru_103/TensorArrayV2Stack/TensorListStackTensorListStackgru_103/while:output:3Agru_103/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*
element_dtype02,
*gru_103/TensorArrayV2Stack/TensorListStack
gru_103/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
gru_103/strided_slice_3/stack
gru_103/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
gru_103/strided_slice_3/stack_1
gru_103/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
gru_103/strided_slice_3/stack_2Ë
gru_103/strided_slice_3StridedSlice3gru_103/TensorArrayV2Stack/TensorListStack:tensor:0&gru_103/strided_slice_3/stack:output:0(gru_103/strided_slice_3/stack_1:output:0(gru_103/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*
shrink_axis_mask2
gru_103/strided_slice_3
gru_103/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_103/transpose_1/permÆ
gru_103/transpose_1	Transpose3gru_103/TensorArrayV2Stack/TensorListStack:tensor:0!gru_103/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_103/transpose_1v
gru_103/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_103/runtime¬
dense_206/MatMul/ReadVariableOpReadVariableOp(dense_206_matmul_readvariableop_resource*
_output_shapes
:	Èd*
dtype02!
dense_206/MatMul/ReadVariableOp«
dense_206/MatMulMatMul gru_103/strided_slice_3:output:0'dense_206/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dense_206/MatMulª
 dense_206/BiasAdd/ReadVariableOpReadVariableOp)dense_206_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02"
 dense_206/BiasAdd/ReadVariableOp©
dense_206/BiasAddBiasAdddense_206/MatMul:product:0(dense_206/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dense_206/BiasAddv
dense_206/ReluReludense_206/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dense_206/Relu«
dense_207/MatMul/ReadVariableOpReadVariableOp(dense_207_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02!
dense_207/MatMul/ReadVariableOp§
dense_207/MatMulMatMuldense_206/Relu:activations:0'dense_207/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_207/MatMulª
 dense_207/BiasAdd/ReadVariableOpReadVariableOp)dense_207_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_207/BiasAdd/ReadVariableOp©
dense_207/BiasAddBiasAdddense_207/MatMul:product:0(dense_207/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_207/BiasAdd±
IdentityIdentitydense_207/BiasAdd:output:0!^dense_206/BiasAdd/ReadVariableOp ^dense_206/MatMul/ReadVariableOp!^dense_207/BiasAdd/ReadVariableOp ^dense_207/MatMul/ReadVariableOp,^gru_103/gru_cell_103/BiasAdd/ReadVariableOp+^gru_103/gru_cell_103/MatMul/ReadVariableOp$^gru_103/gru_cell_103/ReadVariableOp&^gru_103/gru_cell_103/ReadVariableOp_1^gru_103/while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2D
 dense_206/BiasAdd/ReadVariableOp dense_206/BiasAdd/ReadVariableOp2B
dense_206/MatMul/ReadVariableOpdense_206/MatMul/ReadVariableOp2D
 dense_207/BiasAdd/ReadVariableOp dense_207/BiasAdd/ReadVariableOp2B
dense_207/MatMul/ReadVariableOpdense_207/MatMul/ReadVariableOp2Z
+gru_103/gru_cell_103/BiasAdd/ReadVariableOp+gru_103/gru_cell_103/BiasAdd/ReadVariableOp2X
*gru_103/gru_cell_103/MatMul/ReadVariableOp*gru_103/gru_cell_103/MatMul/ReadVariableOp2J
#gru_103/gru_cell_103/ReadVariableOp#gru_103/gru_cell_103/ReadVariableOp2N
%gru_103/gru_cell_103/ReadVariableOp_1%gru_103/gru_cell_103/ReadVariableOp_12
gru_103/whilegru_103/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ò	
÷
F__inference_dense_207_layer_call_and_return_conditional_losses_5225306

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
	
²
0__inference_sequential_103_layer_call_fn_5225330
gru_103_input
unknown:	Ø
	unknown_0:	Ø
	unknown_1:
ÈØ
	unknown_2:	Èd
	unknown_3:d
	unknown_4:d
	unknown_5:
identity¢StatefulPartitionedCallÃ
StatefulPartitionedCallStatefulPartitionedCallgru_103_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
K__inference_sequential_103_layer_call_and_return_conditional_losses_52253132
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
_user_specified_namegru_103_input

¯
while_cond_5226341
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_5226341___redundant_placeholder05
1while_while_cond_5226341___redundant_placeholder15
1while_while_cond_5226341___redundant_placeholder25
1while_while_cond_5226341___redundant_placeholder3
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
Ô*
é
I__inference_gru_cell_103_layer_call_and_return_conditional_losses_5224729

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
j
­
D__inference_gru_103_layer_call_and_return_conditional_losses_5226438
inputs_0>
+gru_cell_103_matmul_readvariableop_resource:	Ø;
,gru_cell_103_biasadd_readvariableop_resource:	Ø8
$gru_cell_103_readvariableop_resource:
ÈØ
identity¢#gru_cell_103/BiasAdd/ReadVariableOp¢"gru_cell_103/MatMul/ReadVariableOp¢gru_cell_103/ReadVariableOp¢gru_cell_103/ReadVariableOp_1¢whileF
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
"gru_cell_103/MatMul/ReadVariableOpReadVariableOp+gru_cell_103_matmul_readvariableop_resource*
_output_shapes
:	Ø*
dtype02$
"gru_cell_103/MatMul/ReadVariableOp­
gru_cell_103/MatMulMatMulstrided_slice_2:output:0*gru_cell_103/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_cell_103/MatMul´
#gru_cell_103/BiasAdd/ReadVariableOpReadVariableOp,gru_cell_103_biasadd_readvariableop_resource*
_output_shapes	
:Ø*
dtype02%
#gru_cell_103/BiasAdd/ReadVariableOp¶
gru_cell_103/BiasAddBiasAddgru_cell_103/MatMul:product:0+gru_cell_103/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_cell_103/BiasAdd
gru_cell_103/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
gru_cell_103/split/split_dimã
gru_cell_103/splitSplit%gru_cell_103/split/split_dim:output:0gru_cell_103/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
gru_cell_103/split¡
gru_cell_103/ReadVariableOpReadVariableOp$gru_cell_103_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02
gru_cell_103/ReadVariableOp
 gru_cell_103/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 gru_cell_103/strided_slice/stack
"gru_cell_103/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_103/strided_slice/stack_1
"gru_cell_103/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_103/strided_slice/stack_2Ì
gru_cell_103/strided_sliceStridedSlice#gru_cell_103/ReadVariableOp:value:0)gru_cell_103/strided_slice/stack:output:0+gru_cell_103/strided_slice/stack_1:output:0+gru_cell_103/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2
gru_cell_103/strided_slice 
gru_cell_103/MatMul_1MatMulzeros:output:0#gru_cell_103/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_103/MatMul_1}
gru_cell_103/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2
gru_cell_103/Const
gru_cell_103/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2 
gru_cell_103/split_1/split_dim
gru_cell_103/split_1SplitVgru_cell_103/MatMul_1:product:0gru_cell_103/Const:output:0'gru_cell_103/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2
gru_cell_103/split_1
gru_cell_103/addAddV2gru_cell_103/split:output:0gru_cell_103/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_103/add
gru_cell_103/SigmoidSigmoidgru_cell_103/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_103/Sigmoid 
gru_cell_103/add_1AddV2gru_cell_103/split:output:1gru_cell_103/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_103/add_1
gru_cell_103/Sigmoid_1Sigmoidgru_cell_103/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_103/Sigmoid_1
gru_cell_103/mulMulgru_cell_103/Sigmoid_1:y:0zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_103/mul¥
gru_cell_103/ReadVariableOp_1ReadVariableOp$gru_cell_103_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02
gru_cell_103/ReadVariableOp_1
"gru_cell_103/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_103/strided_slice_1/stack
$gru_cell_103/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$gru_cell_103/strided_slice_1/stack_1
$gru_cell_103/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$gru_cell_103/strided_slice_1/stack_2Ø
gru_cell_103/strided_slice_1StridedSlice%gru_cell_103/ReadVariableOp_1:value:0+gru_cell_103/strided_slice_1/stack:output:0-gru_cell_103/strided_slice_1/stack_1:output:0-gru_cell_103/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2
gru_cell_103/strided_slice_1¨
gru_cell_103/MatMul_2MatMulgru_cell_103/mul:z:0%gru_cell_103/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_103/MatMul_2¢
gru_cell_103/add_2AddV2gru_cell_103/split:output:2gru_cell_103/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_103/add_2y
gru_cell_103/ReluRelugru_cell_103/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_103/Relu
gru_cell_103/mul_1Mulgru_cell_103/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_103/mul_1m
gru_cell_103/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_103/sub/x
gru_cell_103/subSubgru_cell_103/sub/x:output:0gru_cell_103/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_103/sub
gru_cell_103/mul_2Mulgru_cell_103/sub:z:0gru_cell_103/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_103/mul_2
gru_cell_103/add_3AddV2gru_cell_103/mul_1:z:0gru_cell_103/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_103/add_3
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+gru_cell_103_matmul_readvariableop_resource,gru_cell_103_biasadd_readvariableop_resource$gru_cell_103_readvariableop_resource*
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
while_body_5226342*
condR
while_cond_5226341*9
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
IdentityIdentitystrided_slice_3:output:0$^gru_cell_103/BiasAdd/ReadVariableOp#^gru_cell_103/MatMul/ReadVariableOp^gru_cell_103/ReadVariableOp^gru_cell_103/ReadVariableOp_1^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2J
#gru_cell_103/BiasAdd/ReadVariableOp#gru_cell_103/BiasAdd/ReadVariableOp2H
"gru_cell_103/MatMul/ReadVariableOp"gru_cell_103/MatMul/ReadVariableOp2:
gru_cell_103/ReadVariableOpgru_cell_103/ReadVariableOp2>
gru_cell_103/ReadVariableOp_1gru_cell_103/ReadVariableOp_12
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
ï±
µ
"__inference__wrapped_model_5224498
gru_103_inputU
Bsequential_103_gru_103_gru_cell_103_matmul_readvariableop_resource:	ØR
Csequential_103_gru_103_gru_cell_103_biasadd_readvariableop_resource:	ØO
;sequential_103_gru_103_gru_cell_103_readvariableop_resource:
ÈØJ
7sequential_103_dense_206_matmul_readvariableop_resource:	ÈdF
8sequential_103_dense_206_biasadd_readvariableop_resource:dI
7sequential_103_dense_207_matmul_readvariableop_resource:dF
8sequential_103_dense_207_biasadd_readvariableop_resource:
identity¢/sequential_103/dense_206/BiasAdd/ReadVariableOp¢.sequential_103/dense_206/MatMul/ReadVariableOp¢/sequential_103/dense_207/BiasAdd/ReadVariableOp¢.sequential_103/dense_207/MatMul/ReadVariableOp¢:sequential_103/gru_103/gru_cell_103/BiasAdd/ReadVariableOp¢9sequential_103/gru_103/gru_cell_103/MatMul/ReadVariableOp¢2sequential_103/gru_103/gru_cell_103/ReadVariableOp¢4sequential_103/gru_103/gru_cell_103/ReadVariableOp_1¢sequential_103/gru_103/whiley
sequential_103/gru_103/ShapeShapegru_103_input*
T0*
_output_shapes
:2
sequential_103/gru_103/Shape¢
*sequential_103/gru_103/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_103/gru_103/strided_slice/stack¦
,sequential_103/gru_103/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_103/gru_103/strided_slice/stack_1¦
,sequential_103/gru_103/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_103/gru_103/strided_slice/stack_2ì
$sequential_103/gru_103/strided_sliceStridedSlice%sequential_103/gru_103/Shape:output:03sequential_103/gru_103/strided_slice/stack:output:05sequential_103/gru_103/strided_slice/stack_1:output:05sequential_103/gru_103/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$sequential_103/gru_103/strided_slice
"sequential_103/gru_103/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :È2$
"sequential_103/gru_103/zeros/mul/yÈ
 sequential_103/gru_103/zeros/mulMul-sequential_103/gru_103/strided_slice:output:0+sequential_103/gru_103/zeros/mul/y:output:0*
T0*
_output_shapes
: 2"
 sequential_103/gru_103/zeros/mul
#sequential_103/gru_103/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2%
#sequential_103/gru_103/zeros/Less/yÃ
!sequential_103/gru_103/zeros/LessLess$sequential_103/gru_103/zeros/mul:z:0,sequential_103/gru_103/zeros/Less/y:output:0*
T0*
_output_shapes
: 2#
!sequential_103/gru_103/zeros/Less
%sequential_103/gru_103/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :È2'
%sequential_103/gru_103/zeros/packed/1ß
#sequential_103/gru_103/zeros/packedPack-sequential_103/gru_103/strided_slice:output:0.sequential_103/gru_103/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2%
#sequential_103/gru_103/zeros/packed
"sequential_103/gru_103/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"sequential_103/gru_103/zeros/ConstÒ
sequential_103/gru_103/zerosFill,sequential_103/gru_103/zeros/packed:output:0+sequential_103/gru_103/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
sequential_103/gru_103/zeros£
%sequential_103/gru_103/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2'
%sequential_103/gru_103/transpose/permÆ
 sequential_103/gru_103/transpose	Transposegru_103_input.sequential_103/gru_103/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 sequential_103/gru_103/transpose
sequential_103/gru_103/Shape_1Shape$sequential_103/gru_103/transpose:y:0*
T0*
_output_shapes
:2 
sequential_103/gru_103/Shape_1¦
,sequential_103/gru_103/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_103/gru_103/strided_slice_1/stackª
.sequential_103/gru_103/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_103/gru_103/strided_slice_1/stack_1ª
.sequential_103/gru_103/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_103/gru_103/strided_slice_1/stack_2ø
&sequential_103/gru_103/strided_slice_1StridedSlice'sequential_103/gru_103/Shape_1:output:05sequential_103/gru_103/strided_slice_1/stack:output:07sequential_103/gru_103/strided_slice_1/stack_1:output:07sequential_103/gru_103/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&sequential_103/gru_103/strided_slice_1³
2sequential_103/gru_103/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ24
2sequential_103/gru_103/TensorArrayV2/element_shape
$sequential_103/gru_103/TensorArrayV2TensorListReserve;sequential_103/gru_103/TensorArrayV2/element_shape:output:0/sequential_103/gru_103/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02&
$sequential_103/gru_103/TensorArrayV2í
Lsequential_103/gru_103/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2N
Lsequential_103/gru_103/TensorArrayUnstack/TensorListFromTensor/element_shapeÔ
>sequential_103/gru_103/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor$sequential_103/gru_103/transpose:y:0Usequential_103/gru_103/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02@
>sequential_103/gru_103/TensorArrayUnstack/TensorListFromTensor¦
,sequential_103/gru_103/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_103/gru_103/strided_slice_2/stackª
.sequential_103/gru_103/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_103/gru_103/strided_slice_2/stack_1ª
.sequential_103/gru_103/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_103/gru_103/strided_slice_2/stack_2
&sequential_103/gru_103/strided_slice_2StridedSlice$sequential_103/gru_103/transpose:y:05sequential_103/gru_103/strided_slice_2/stack:output:07sequential_103/gru_103/strided_slice_2/stack_1:output:07sequential_103/gru_103/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2(
&sequential_103/gru_103/strided_slice_2ú
9sequential_103/gru_103/gru_cell_103/MatMul/ReadVariableOpReadVariableOpBsequential_103_gru_103_gru_cell_103_matmul_readvariableop_resource*
_output_shapes
:	Ø*
dtype02;
9sequential_103/gru_103/gru_cell_103/MatMul/ReadVariableOp
*sequential_103/gru_103/gru_cell_103/MatMulMatMul/sequential_103/gru_103/strided_slice_2:output:0Asequential_103/gru_103/gru_cell_103/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2,
*sequential_103/gru_103/gru_cell_103/MatMulù
:sequential_103/gru_103/gru_cell_103/BiasAdd/ReadVariableOpReadVariableOpCsequential_103_gru_103_gru_cell_103_biasadd_readvariableop_resource*
_output_shapes	
:Ø*
dtype02<
:sequential_103/gru_103/gru_cell_103/BiasAdd/ReadVariableOp
+sequential_103/gru_103/gru_cell_103/BiasAddBiasAdd4sequential_103/gru_103/gru_cell_103/MatMul:product:0Bsequential_103/gru_103/gru_cell_103/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2-
+sequential_103/gru_103/gru_cell_103/BiasAddµ
3sequential_103/gru_103/gru_cell_103/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ25
3sequential_103/gru_103/gru_cell_103/split/split_dim¿
)sequential_103/gru_103/gru_cell_103/splitSplit<sequential_103/gru_103/gru_cell_103/split/split_dim:output:04sequential_103/gru_103/gru_cell_103/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2+
)sequential_103/gru_103/gru_cell_103/splitæ
2sequential_103/gru_103/gru_cell_103/ReadVariableOpReadVariableOp;sequential_103_gru_103_gru_cell_103_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype024
2sequential_103/gru_103/gru_cell_103/ReadVariableOpÃ
7sequential_103/gru_103/gru_cell_103/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        29
7sequential_103/gru_103/gru_cell_103/strided_slice/stackÇ
9sequential_103/gru_103/gru_cell_103/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2;
9sequential_103/gru_103/gru_cell_103/strided_slice/stack_1Ç
9sequential_103/gru_103/gru_cell_103/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9sequential_103/gru_103/gru_cell_103/strided_slice/stack_2Ö
1sequential_103/gru_103/gru_cell_103/strided_sliceStridedSlice:sequential_103/gru_103/gru_cell_103/ReadVariableOp:value:0@sequential_103/gru_103/gru_cell_103/strided_slice/stack:output:0Bsequential_103/gru_103/gru_cell_103/strided_slice/stack_1:output:0Bsequential_103/gru_103/gru_cell_103/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask23
1sequential_103/gru_103/gru_cell_103/strided_sliceü
,sequential_103/gru_103/gru_cell_103/MatMul_1MatMul%sequential_103/gru_103/zeros:output:0:sequential_103/gru_103/gru_cell_103/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2.
,sequential_103/gru_103/gru_cell_103/MatMul_1«
)sequential_103/gru_103/gru_cell_103/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2+
)sequential_103/gru_103/gru_cell_103/Const¹
5sequential_103/gru_103/gru_cell_103/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ27
5sequential_103/gru_103/gru_cell_103/split_1/split_dim
+sequential_103/gru_103/gru_cell_103/split_1SplitV6sequential_103/gru_103/gru_cell_103/MatMul_1:product:02sequential_103/gru_103/gru_cell_103/Const:output:0>sequential_103/gru_103/gru_cell_103/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2-
+sequential_103/gru_103/gru_cell_103/split_1ø
'sequential_103/gru_103/gru_cell_103/addAddV22sequential_103/gru_103/gru_cell_103/split:output:04sequential_103/gru_103/gru_cell_103/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2)
'sequential_103/gru_103/gru_cell_103/addÅ
+sequential_103/gru_103/gru_cell_103/SigmoidSigmoid+sequential_103/gru_103/gru_cell_103/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2-
+sequential_103/gru_103/gru_cell_103/Sigmoidü
)sequential_103/gru_103/gru_cell_103/add_1AddV22sequential_103/gru_103/gru_cell_103/split:output:14sequential_103/gru_103/gru_cell_103/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2+
)sequential_103/gru_103/gru_cell_103/add_1Ë
-sequential_103/gru_103/gru_cell_103/Sigmoid_1Sigmoid-sequential_103/gru_103/gru_cell_103/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2/
-sequential_103/gru_103/gru_cell_103/Sigmoid_1æ
'sequential_103/gru_103/gru_cell_103/mulMul1sequential_103/gru_103/gru_cell_103/Sigmoid_1:y:0%sequential_103/gru_103/zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2)
'sequential_103/gru_103/gru_cell_103/mulê
4sequential_103/gru_103/gru_cell_103/ReadVariableOp_1ReadVariableOp;sequential_103_gru_103_gru_cell_103_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype026
4sequential_103/gru_103/gru_cell_103/ReadVariableOp_1Ç
9sequential_103/gru_103/gru_cell_103/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2;
9sequential_103/gru_103/gru_cell_103/strided_slice_1/stackË
;sequential_103/gru_103/gru_cell_103/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2=
;sequential_103/gru_103/gru_cell_103/strided_slice_1/stack_1Ë
;sequential_103/gru_103/gru_cell_103/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;sequential_103/gru_103/gru_cell_103/strided_slice_1/stack_2â
3sequential_103/gru_103/gru_cell_103/strided_slice_1StridedSlice<sequential_103/gru_103/gru_cell_103/ReadVariableOp_1:value:0Bsequential_103/gru_103/gru_cell_103/strided_slice_1/stack:output:0Dsequential_103/gru_103/gru_cell_103/strided_slice_1/stack_1:output:0Dsequential_103/gru_103/gru_cell_103/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask25
3sequential_103/gru_103/gru_cell_103/strided_slice_1
,sequential_103/gru_103/gru_cell_103/MatMul_2MatMul+sequential_103/gru_103/gru_cell_103/mul:z:0<sequential_103/gru_103/gru_cell_103/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2.
,sequential_103/gru_103/gru_cell_103/MatMul_2þ
)sequential_103/gru_103/gru_cell_103/add_2AddV22sequential_103/gru_103/gru_cell_103/split:output:26sequential_103/gru_103/gru_cell_103/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2+
)sequential_103/gru_103/gru_cell_103/add_2¾
(sequential_103/gru_103/gru_cell_103/ReluRelu-sequential_103/gru_103/gru_cell_103/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2*
(sequential_103/gru_103/gru_cell_103/Reluè
)sequential_103/gru_103/gru_cell_103/mul_1Mul/sequential_103/gru_103/gru_cell_103/Sigmoid:y:0%sequential_103/gru_103/zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2+
)sequential_103/gru_103/gru_cell_103/mul_1
)sequential_103/gru_103/gru_cell_103/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2+
)sequential_103/gru_103/gru_cell_103/sub/xñ
'sequential_103/gru_103/gru_cell_103/subSub2sequential_103/gru_103/gru_cell_103/sub/x:output:0/sequential_103/gru_103/gru_cell_103/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2)
'sequential_103/gru_103/gru_cell_103/subõ
)sequential_103/gru_103/gru_cell_103/mul_2Mul+sequential_103/gru_103/gru_cell_103/sub:z:06sequential_103/gru_103/gru_cell_103/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2+
)sequential_103/gru_103/gru_cell_103/mul_2ð
)sequential_103/gru_103/gru_cell_103/add_3AddV2-sequential_103/gru_103/gru_cell_103/mul_1:z:0-sequential_103/gru_103/gru_cell_103/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2+
)sequential_103/gru_103/gru_cell_103/add_3½
4sequential_103/gru_103/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÈ   26
4sequential_103/gru_103/TensorArrayV2_1/element_shape
&sequential_103/gru_103/TensorArrayV2_1TensorListReserve=sequential_103/gru_103/TensorArrayV2_1/element_shape:output:0/sequential_103/gru_103/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02(
&sequential_103/gru_103/TensorArrayV2_1|
sequential_103/gru_103/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_103/gru_103/time­
/sequential_103/gru_103/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ21
/sequential_103/gru_103/while/maximum_iterations
)sequential_103/gru_103/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2+
)sequential_103/gru_103/while/loop_counterò
sequential_103/gru_103/whileWhile2sequential_103/gru_103/while/loop_counter:output:08sequential_103/gru_103/while/maximum_iterations:output:0$sequential_103/gru_103/time:output:0/sequential_103/gru_103/TensorArrayV2_1:handle:0%sequential_103/gru_103/zeros:output:0/sequential_103/gru_103/strided_slice_1:output:0Nsequential_103/gru_103/TensorArrayUnstack/TensorListFromTensor:output_handle:0Bsequential_103_gru_103_gru_cell_103_matmul_readvariableop_resourceCsequential_103_gru_103_gru_cell_103_biasadd_readvariableop_resource;sequential_103_gru_103_gru_cell_103_readvariableop_resource*
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
)sequential_103_gru_103_while_body_5224389*5
cond-R+
)sequential_103_gru_103_while_cond_5224388*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿÈ: : : : : *
parallel_iterations 2
sequential_103/gru_103/whileã
Gsequential_103/gru_103/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÈ   2I
Gsequential_103/gru_103/TensorArrayV2Stack/TensorListStack/element_shapeÅ
9sequential_103/gru_103/TensorArrayV2Stack/TensorListStackTensorListStack%sequential_103/gru_103/while:output:3Psequential_103/gru_103/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*
element_dtype02;
9sequential_103/gru_103/TensorArrayV2Stack/TensorListStack¯
,sequential_103/gru_103/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2.
,sequential_103/gru_103/strided_slice_3/stackª
.sequential_103/gru_103/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 20
.sequential_103/gru_103/strided_slice_3/stack_1ª
.sequential_103/gru_103/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_103/gru_103/strided_slice_3/stack_2¥
&sequential_103/gru_103/strided_slice_3StridedSliceBsequential_103/gru_103/TensorArrayV2Stack/TensorListStack:tensor:05sequential_103/gru_103/strided_slice_3/stack:output:07sequential_103/gru_103/strided_slice_3/stack_1:output:07sequential_103/gru_103/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*
shrink_axis_mask2(
&sequential_103/gru_103/strided_slice_3§
'sequential_103/gru_103/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2)
'sequential_103/gru_103/transpose_1/perm
"sequential_103/gru_103/transpose_1	TransposeBsequential_103/gru_103/TensorArrayV2Stack/TensorListStack:tensor:00sequential_103/gru_103/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2$
"sequential_103/gru_103/transpose_1
sequential_103/gru_103/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2 
sequential_103/gru_103/runtimeÙ
.sequential_103/dense_206/MatMul/ReadVariableOpReadVariableOp7sequential_103_dense_206_matmul_readvariableop_resource*
_output_shapes
:	Èd*
dtype020
.sequential_103/dense_206/MatMul/ReadVariableOpç
sequential_103/dense_206/MatMulMatMul/sequential_103/gru_103/strided_slice_3:output:06sequential_103/dense_206/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2!
sequential_103/dense_206/MatMul×
/sequential_103/dense_206/BiasAdd/ReadVariableOpReadVariableOp8sequential_103_dense_206_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype021
/sequential_103/dense_206/BiasAdd/ReadVariableOpå
 sequential_103/dense_206/BiasAddBiasAdd)sequential_103/dense_206/MatMul:product:07sequential_103/dense_206/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2"
 sequential_103/dense_206/BiasAdd£
sequential_103/dense_206/ReluRelu)sequential_103/dense_206/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
sequential_103/dense_206/ReluØ
.sequential_103/dense_207/MatMul/ReadVariableOpReadVariableOp7sequential_103_dense_207_matmul_readvariableop_resource*
_output_shapes

:d*
dtype020
.sequential_103/dense_207/MatMul/ReadVariableOpã
sequential_103/dense_207/MatMulMatMul+sequential_103/dense_206/Relu:activations:06sequential_103/dense_207/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
sequential_103/dense_207/MatMul×
/sequential_103/dense_207/BiasAdd/ReadVariableOpReadVariableOp8sequential_103_dense_207_biasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/sequential_103/dense_207/BiasAdd/ReadVariableOpå
 sequential_103/dense_207/BiasAddBiasAdd)sequential_103/dense_207/MatMul:product:07sequential_103/dense_207/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 sequential_103/dense_207/BiasAddÇ
IdentityIdentity)sequential_103/dense_207/BiasAdd:output:00^sequential_103/dense_206/BiasAdd/ReadVariableOp/^sequential_103/dense_206/MatMul/ReadVariableOp0^sequential_103/dense_207/BiasAdd/ReadVariableOp/^sequential_103/dense_207/MatMul/ReadVariableOp;^sequential_103/gru_103/gru_cell_103/BiasAdd/ReadVariableOp:^sequential_103/gru_103/gru_cell_103/MatMul/ReadVariableOp3^sequential_103/gru_103/gru_cell_103/ReadVariableOp5^sequential_103/gru_103/gru_cell_103/ReadVariableOp_1^sequential_103/gru_103/while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2b
/sequential_103/dense_206/BiasAdd/ReadVariableOp/sequential_103/dense_206/BiasAdd/ReadVariableOp2`
.sequential_103/dense_206/MatMul/ReadVariableOp.sequential_103/dense_206/MatMul/ReadVariableOp2b
/sequential_103/dense_207/BiasAdd/ReadVariableOp/sequential_103/dense_207/BiasAdd/ReadVariableOp2`
.sequential_103/dense_207/MatMul/ReadVariableOp.sequential_103/dense_207/MatMul/ReadVariableOp2x
:sequential_103/gru_103/gru_cell_103/BiasAdd/ReadVariableOp:sequential_103/gru_103/gru_cell_103/BiasAdd/ReadVariableOp2v
9sequential_103/gru_103/gru_cell_103/MatMul/ReadVariableOp9sequential_103/gru_103/gru_cell_103/MatMul/ReadVariableOp2h
2sequential_103/gru_103/gru_cell_103/ReadVariableOp2sequential_103/gru_103/gru_cell_103/ReadVariableOp2l
4sequential_103/gru_103/gru_cell_103/ReadVariableOp_14sequential_103/gru_103/gru_cell_103/ReadVariableOp_12<
sequential_103/gru_103/whilesequential_103/gru_103/while:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namegru_103_input

¯
while_cond_5226512
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_5226512___redundant_placeholder05
1while_while_cond_5226512___redundant_placeholder15
1while_while_cond_5226512___redundant_placeholder25
1while_while_cond_5226512___redundant_placeholder3
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
Þ*
ë
I__inference_gru_cell_103_layer_call_and_return_conditional_losses_5226955

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

Ê
K__inference_sequential_103_layer_call_and_return_conditional_losses_5225585

inputs"
gru_103_5225567:	Ø
gru_103_5225569:	Ø#
gru_103_5225571:
ÈØ$
dense_206_5225574:	Èd
dense_206_5225576:d#
dense_207_5225579:d
dense_207_5225581:
identity¢!dense_206/StatefulPartitionedCall¢!dense_207/StatefulPartitionedCall¢gru_103/StatefulPartitionedCall¦
gru_103/StatefulPartitionedCallStatefulPartitionedCallinputsgru_103_5225567gru_103_5225569gru_103_5225571*
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
D__inference_gru_103_layer_call_and_return_conditional_losses_52255342!
gru_103/StatefulPartitionedCall¾
!dense_206/StatefulPartitionedCallStatefulPartitionedCall(gru_103/StatefulPartitionedCall:output:0dense_206_5225574dense_206_5225576*
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
F__inference_dense_206_layer_call_and_return_conditional_losses_52252902#
!dense_206/StatefulPartitionedCallÀ
!dense_207/StatefulPartitionedCallStatefulPartitionedCall*dense_206/StatefulPartitionedCall:output:0dense_207_5225579dense_207_5225581*
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
F__inference_dense_207_layer_call_and_return_conditional_losses_52253062#
!dense_207/StatefulPartitionedCallè
IdentityIdentity*dense_207/StatefulPartitionedCall:output:0"^dense_206/StatefulPartitionedCall"^dense_207/StatefulPartitionedCall ^gru_103/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2F
!dense_206/StatefulPartitionedCall!dense_206/StatefulPartitionedCall2F
!dense_207/StatefulPartitionedCall!dense_207/StatefulPartitionedCall2B
gru_103/StatefulPartitionedCallgru_103/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

¯
while_cond_5224591
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_5224591___redundant_placeholder05
1while_while_cond_5224591___redundant_placeholder15
1while_while_cond_5224591___redundant_placeholder25
1while_while_cond_5224591___redundant_placeholder3
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
j
­
D__inference_gru_103_layer_call_and_return_conditional_losses_5226267
inputs_0>
+gru_cell_103_matmul_readvariableop_resource:	Ø;
,gru_cell_103_biasadd_readvariableop_resource:	Ø8
$gru_cell_103_readvariableop_resource:
ÈØ
identity¢#gru_cell_103/BiasAdd/ReadVariableOp¢"gru_cell_103/MatMul/ReadVariableOp¢gru_cell_103/ReadVariableOp¢gru_cell_103/ReadVariableOp_1¢whileF
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
"gru_cell_103/MatMul/ReadVariableOpReadVariableOp+gru_cell_103_matmul_readvariableop_resource*
_output_shapes
:	Ø*
dtype02$
"gru_cell_103/MatMul/ReadVariableOp­
gru_cell_103/MatMulMatMulstrided_slice_2:output:0*gru_cell_103/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_cell_103/MatMul´
#gru_cell_103/BiasAdd/ReadVariableOpReadVariableOp,gru_cell_103_biasadd_readvariableop_resource*
_output_shapes	
:Ø*
dtype02%
#gru_cell_103/BiasAdd/ReadVariableOp¶
gru_cell_103/BiasAddBiasAddgru_cell_103/MatMul:product:0+gru_cell_103/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_cell_103/BiasAdd
gru_cell_103/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
gru_cell_103/split/split_dimã
gru_cell_103/splitSplit%gru_cell_103/split/split_dim:output:0gru_cell_103/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
gru_cell_103/split¡
gru_cell_103/ReadVariableOpReadVariableOp$gru_cell_103_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02
gru_cell_103/ReadVariableOp
 gru_cell_103/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 gru_cell_103/strided_slice/stack
"gru_cell_103/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_103/strided_slice/stack_1
"gru_cell_103/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_103/strided_slice/stack_2Ì
gru_cell_103/strided_sliceStridedSlice#gru_cell_103/ReadVariableOp:value:0)gru_cell_103/strided_slice/stack:output:0+gru_cell_103/strided_slice/stack_1:output:0+gru_cell_103/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2
gru_cell_103/strided_slice 
gru_cell_103/MatMul_1MatMulzeros:output:0#gru_cell_103/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_103/MatMul_1}
gru_cell_103/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2
gru_cell_103/Const
gru_cell_103/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2 
gru_cell_103/split_1/split_dim
gru_cell_103/split_1SplitVgru_cell_103/MatMul_1:product:0gru_cell_103/Const:output:0'gru_cell_103/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2
gru_cell_103/split_1
gru_cell_103/addAddV2gru_cell_103/split:output:0gru_cell_103/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_103/add
gru_cell_103/SigmoidSigmoidgru_cell_103/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_103/Sigmoid 
gru_cell_103/add_1AddV2gru_cell_103/split:output:1gru_cell_103/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_103/add_1
gru_cell_103/Sigmoid_1Sigmoidgru_cell_103/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_103/Sigmoid_1
gru_cell_103/mulMulgru_cell_103/Sigmoid_1:y:0zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_103/mul¥
gru_cell_103/ReadVariableOp_1ReadVariableOp$gru_cell_103_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02
gru_cell_103/ReadVariableOp_1
"gru_cell_103/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_103/strided_slice_1/stack
$gru_cell_103/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$gru_cell_103/strided_slice_1/stack_1
$gru_cell_103/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$gru_cell_103/strided_slice_1/stack_2Ø
gru_cell_103/strided_slice_1StridedSlice%gru_cell_103/ReadVariableOp_1:value:0+gru_cell_103/strided_slice_1/stack:output:0-gru_cell_103/strided_slice_1/stack_1:output:0-gru_cell_103/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2
gru_cell_103/strided_slice_1¨
gru_cell_103/MatMul_2MatMulgru_cell_103/mul:z:0%gru_cell_103/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_103/MatMul_2¢
gru_cell_103/add_2AddV2gru_cell_103/split:output:2gru_cell_103/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_103/add_2y
gru_cell_103/ReluRelugru_cell_103/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_103/Relu
gru_cell_103/mul_1Mulgru_cell_103/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_103/mul_1m
gru_cell_103/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_103/sub/x
gru_cell_103/subSubgru_cell_103/sub/x:output:0gru_cell_103/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_103/sub
gru_cell_103/mul_2Mulgru_cell_103/sub:z:0gru_cell_103/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_103/mul_2
gru_cell_103/add_3AddV2gru_cell_103/mul_1:z:0gru_cell_103/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_103/add_3
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+gru_cell_103_matmul_readvariableop_resource,gru_cell_103_biasadd_readvariableop_resource$gru_cell_103_readvariableop_resource*
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
while_body_5226171*
condR
while_cond_5226170*9
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
IdentityIdentitystrided_slice_3:output:0$^gru_cell_103/BiasAdd/ReadVariableOp#^gru_cell_103/MatMul/ReadVariableOp^gru_cell_103/ReadVariableOp^gru_cell_103/ReadVariableOp_1^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2J
#gru_cell_103/BiasAdd/ReadVariableOp#gru_cell_103/BiasAdd/ReadVariableOp2H
"gru_cell_103/MatMul/ReadVariableOp"gru_cell_103/MatMul/ReadVariableOp2:
gru_cell_103/ReadVariableOpgru_cell_103/ReadVariableOp2>
gru_cell_103/ReadVariableOp_1gru_cell_103/ReadVariableOp_12
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
Y
¯
while_body_5225438
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_gru_cell_103_matmul_readvariableop_resource_0:	ØC
4while_gru_cell_103_biasadd_readvariableop_resource_0:	Ø@
,while_gru_cell_103_readvariableop_resource_0:
ÈØ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_gru_cell_103_matmul_readvariableop_resource:	ØA
2while_gru_cell_103_biasadd_readvariableop_resource:	Ø>
*while_gru_cell_103_readvariableop_resource:
ÈØ¢)while/gru_cell_103/BiasAdd/ReadVariableOp¢(while/gru_cell_103/MatMul/ReadVariableOp¢!while/gru_cell_103/ReadVariableOp¢#while/gru_cell_103/ReadVariableOp_1Ã
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
(while/gru_cell_103/MatMul/ReadVariableOpReadVariableOp3while_gru_cell_103_matmul_readvariableop_resource_0*
_output_shapes
:	Ø*
dtype02*
(while/gru_cell_103/MatMul/ReadVariableOp×
while/gru_cell_103/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/gru_cell_103/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
while/gru_cell_103/MatMulÈ
)while/gru_cell_103/BiasAdd/ReadVariableOpReadVariableOp4while_gru_cell_103_biasadd_readvariableop_resource_0*
_output_shapes	
:Ø*
dtype02+
)while/gru_cell_103/BiasAdd/ReadVariableOpÎ
while/gru_cell_103/BiasAddBiasAdd#while/gru_cell_103/MatMul:product:01while/gru_cell_103/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
while/gru_cell_103/BiasAdd
"while/gru_cell_103/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2$
"while/gru_cell_103/split/split_dimû
while/gru_cell_103/splitSplit+while/gru_cell_103/split/split_dim:output:0#while/gru_cell_103/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
while/gru_cell_103/splitµ
!while/gru_cell_103/ReadVariableOpReadVariableOp,while_gru_cell_103_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02#
!while/gru_cell_103/ReadVariableOp¡
&while/gru_cell_103/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/gru_cell_103/strided_slice/stack¥
(while/gru_cell_103/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_103/strided_slice/stack_1¥
(while/gru_cell_103/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_103/strided_slice/stack_2ð
 while/gru_cell_103/strided_sliceStridedSlice)while/gru_cell_103/ReadVariableOp:value:0/while/gru_cell_103/strided_slice/stack:output:01while/gru_cell_103/strided_slice/stack_1:output:01while/gru_cell_103/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2"
 while/gru_cell_103/strided_slice·
while/gru_cell_103/MatMul_1MatMulwhile_placeholder_2)while/gru_cell_103/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_103/MatMul_1
while/gru_cell_103/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2
while/gru_cell_103/Const
$while/gru_cell_103/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2&
$while/gru_cell_103/split_1/split_dim°
while/gru_cell_103/split_1SplitV%while/gru_cell_103/MatMul_1:product:0!while/gru_cell_103/Const:output:0-while/gru_cell_103/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2
while/gru_cell_103/split_1´
while/gru_cell_103/addAddV2!while/gru_cell_103/split:output:0#while/gru_cell_103/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_103/add
while/gru_cell_103/SigmoidSigmoidwhile/gru_cell_103/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_103/Sigmoid¸
while/gru_cell_103/add_1AddV2!while/gru_cell_103/split:output:1#while/gru_cell_103/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_103/add_1
while/gru_cell_103/Sigmoid_1Sigmoidwhile/gru_cell_103/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_103/Sigmoid_1¡
while/gru_cell_103/mulMul while/gru_cell_103/Sigmoid_1:y:0while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_103/mul¹
#while/gru_cell_103/ReadVariableOp_1ReadVariableOp,while_gru_cell_103_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02%
#while/gru_cell_103/ReadVariableOp_1¥
(while/gru_cell_103/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_103/strided_slice_1/stack©
*while/gru_cell_103/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/gru_cell_103/strided_slice_1/stack_1©
*while/gru_cell_103/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/gru_cell_103/strided_slice_1/stack_2ü
"while/gru_cell_103/strided_slice_1StridedSlice+while/gru_cell_103/ReadVariableOp_1:value:01while/gru_cell_103/strided_slice_1/stack:output:03while/gru_cell_103/strided_slice_1/stack_1:output:03while/gru_cell_103/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2$
"while/gru_cell_103/strided_slice_1À
while/gru_cell_103/MatMul_2MatMulwhile/gru_cell_103/mul:z:0+while/gru_cell_103/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_103/MatMul_2º
while/gru_cell_103/add_2AddV2!while/gru_cell_103/split:output:2%while/gru_cell_103/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_103/add_2
while/gru_cell_103/ReluReluwhile/gru_cell_103/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_103/Relu£
while/gru_cell_103/mul_1Mulwhile/gru_cell_103/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_103/mul_1y
while/gru_cell_103/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
while/gru_cell_103/sub/x­
while/gru_cell_103/subSub!while/gru_cell_103/sub/x:output:0while/gru_cell_103/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_103/sub±
while/gru_cell_103/mul_2Mulwhile/gru_cell_103/sub:z:0%while/gru_cell_103/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_103/mul_2¬
while/gru_cell_103/add_3AddV2while/gru_cell_103/mul_1:z:0while/gru_cell_103/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_103/add_3à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_103/add_3:z:0*
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
while/IdentityIdentitywhile/add_1:z:0*^while/gru_cell_103/BiasAdd/ReadVariableOp)^while/gru_cell_103/MatMul/ReadVariableOp"^while/gru_cell_103/ReadVariableOp$^while/gru_cell_103/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations*^while/gru_cell_103/BiasAdd/ReadVariableOp)^while/gru_cell_103/MatMul/ReadVariableOp"^while/gru_cell_103/ReadVariableOp$^while/gru_cell_103/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:0*^while/gru_cell_103/BiasAdd/ReadVariableOp)^while/gru_cell_103/MatMul/ReadVariableOp"^while/gru_cell_103/ReadVariableOp$^while/gru_cell_103/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_2®
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/gru_cell_103/BiasAdd/ReadVariableOp)^while/gru_cell_103/MatMul/ReadVariableOp"^while/gru_cell_103/ReadVariableOp$^while/gru_cell_103/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_3¢
while/Identity_4Identitywhile/gru_cell_103/add_3:z:0*^while/gru_cell_103/BiasAdd/ReadVariableOp)^while/gru_cell_103/MatMul/ReadVariableOp"^while/gru_cell_103/ReadVariableOp$^while/gru_cell_103/ReadVariableOp_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_4"j
2while_gru_cell_103_biasadd_readvariableop_resource4while_gru_cell_103_biasadd_readvariableop_resource_0"h
1while_gru_cell_103_matmul_readvariableop_resource3while_gru_cell_103_matmul_readvariableop_resource_0"Z
*while_gru_cell_103_readvariableop_resource,while_gru_cell_103_readvariableop_resource_0")
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
)while/gru_cell_103/BiasAdd/ReadVariableOp)while/gru_cell_103/BiasAdd/ReadVariableOp2T
(while/gru_cell_103/MatMul/ReadVariableOp(while/gru_cell_103/MatMul/ReadVariableOp2F
!while/gru_cell_103/ReadVariableOp!while/gru_cell_103/ReadVariableOp2J
#while/gru_cell_103/ReadVariableOp_1#while/gru_cell_103/ReadVariableOp_1: 
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
Ý=

D__inference_gru_103_layer_call_and_return_conditional_losses_5224860

inputs'
gru_cell_103_5224784:	Ø#
gru_cell_103_5224786:	Ø(
gru_cell_103_5224788:
ÈØ
identity¢$gru_cell_103/StatefulPartitionedCall¢whileD
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
$gru_cell_103/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0gru_cell_103_5224784gru_cell_103_5224786gru_cell_103_5224788*
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
I__inference_gru_cell_103_layer_call_and_return_conditional_losses_52247292&
$gru_cell_103/StatefulPartitionedCall
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0gru_cell_103_5224784gru_cell_103_5224786gru_cell_103_5224788*
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
while_body_5224796*
condR
while_cond_5224795*9
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
IdentityIdentitystrided_slice_3:output:0%^gru_cell_103/StatefulPartitionedCall^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2L
$gru_cell_103/StatefulPartitionedCall$gru_cell_103/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Õ
·
)__inference_gru_103_layer_call_fn_5226813

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
D__inference_gru_103_layer_call_and_return_conditional_losses_52252712
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
¾
û
)sequential_103_gru_103_while_body_5224389J
Fsequential_103_gru_103_while_sequential_103_gru_103_while_loop_counterP
Lsequential_103_gru_103_while_sequential_103_gru_103_while_maximum_iterations,
(sequential_103_gru_103_while_placeholder.
*sequential_103_gru_103_while_placeholder_1.
*sequential_103_gru_103_while_placeholder_2I
Esequential_103_gru_103_while_sequential_103_gru_103_strided_slice_1_0
sequential_103_gru_103_while_tensorarrayv2read_tensorlistgetitem_sequential_103_gru_103_tensorarrayunstack_tensorlistfromtensor_0]
Jsequential_103_gru_103_while_gru_cell_103_matmul_readvariableop_resource_0:	ØZ
Ksequential_103_gru_103_while_gru_cell_103_biasadd_readvariableop_resource_0:	ØW
Csequential_103_gru_103_while_gru_cell_103_readvariableop_resource_0:
ÈØ)
%sequential_103_gru_103_while_identity+
'sequential_103_gru_103_while_identity_1+
'sequential_103_gru_103_while_identity_2+
'sequential_103_gru_103_while_identity_3+
'sequential_103_gru_103_while_identity_4G
Csequential_103_gru_103_while_sequential_103_gru_103_strided_slice_1
sequential_103_gru_103_while_tensorarrayv2read_tensorlistgetitem_sequential_103_gru_103_tensorarrayunstack_tensorlistfromtensor[
Hsequential_103_gru_103_while_gru_cell_103_matmul_readvariableop_resource:	ØX
Isequential_103_gru_103_while_gru_cell_103_biasadd_readvariableop_resource:	ØU
Asequential_103_gru_103_while_gru_cell_103_readvariableop_resource:
ÈØ¢@sequential_103/gru_103/while/gru_cell_103/BiasAdd/ReadVariableOp¢?sequential_103/gru_103/while/gru_cell_103/MatMul/ReadVariableOp¢8sequential_103/gru_103/while/gru_cell_103/ReadVariableOp¢:sequential_103/gru_103/while/gru_cell_103/ReadVariableOp_1ñ
Nsequential_103/gru_103/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2P
Nsequential_103/gru_103/while/TensorArrayV2Read/TensorListGetItem/element_shapeÞ
@sequential_103/gru_103/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_103_gru_103_while_tensorarrayv2read_tensorlistgetitem_sequential_103_gru_103_tensorarrayunstack_tensorlistfromtensor_0(sequential_103_gru_103_while_placeholderWsequential_103/gru_103/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02B
@sequential_103/gru_103/while/TensorArrayV2Read/TensorListGetItem
?sequential_103/gru_103/while/gru_cell_103/MatMul/ReadVariableOpReadVariableOpJsequential_103_gru_103_while_gru_cell_103_matmul_readvariableop_resource_0*
_output_shapes
:	Ø*
dtype02A
?sequential_103/gru_103/while/gru_cell_103/MatMul/ReadVariableOp³
0sequential_103/gru_103/while/gru_cell_103/MatMulMatMulGsequential_103/gru_103/while/TensorArrayV2Read/TensorListGetItem:item:0Gsequential_103/gru_103/while/gru_cell_103/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ22
0sequential_103/gru_103/while/gru_cell_103/MatMul
@sequential_103/gru_103/while/gru_cell_103/BiasAdd/ReadVariableOpReadVariableOpKsequential_103_gru_103_while_gru_cell_103_biasadd_readvariableop_resource_0*
_output_shapes	
:Ø*
dtype02B
@sequential_103/gru_103/while/gru_cell_103/BiasAdd/ReadVariableOpª
1sequential_103/gru_103/while/gru_cell_103/BiasAddBiasAdd:sequential_103/gru_103/while/gru_cell_103/MatMul:product:0Hsequential_103/gru_103/while/gru_cell_103/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ23
1sequential_103/gru_103/while/gru_cell_103/BiasAddÁ
9sequential_103/gru_103/while/gru_cell_103/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2;
9sequential_103/gru_103/while/gru_cell_103/split/split_dim×
/sequential_103/gru_103/while/gru_cell_103/splitSplitBsequential_103/gru_103/while/gru_cell_103/split/split_dim:output:0:sequential_103/gru_103/while/gru_cell_103/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split21
/sequential_103/gru_103/while/gru_cell_103/splitú
8sequential_103/gru_103/while/gru_cell_103/ReadVariableOpReadVariableOpCsequential_103_gru_103_while_gru_cell_103_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02:
8sequential_103/gru_103/while/gru_cell_103/ReadVariableOpÏ
=sequential_103/gru_103/while/gru_cell_103/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2?
=sequential_103/gru_103/while/gru_cell_103/strided_slice/stackÓ
?sequential_103/gru_103/while/gru_cell_103/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2A
?sequential_103/gru_103/while/gru_cell_103/strided_slice/stack_1Ó
?sequential_103/gru_103/while/gru_cell_103/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2A
?sequential_103/gru_103/while/gru_cell_103/strided_slice/stack_2ú
7sequential_103/gru_103/while/gru_cell_103/strided_sliceStridedSlice@sequential_103/gru_103/while/gru_cell_103/ReadVariableOp:value:0Fsequential_103/gru_103/while/gru_cell_103/strided_slice/stack:output:0Hsequential_103/gru_103/while/gru_cell_103/strided_slice/stack_1:output:0Hsequential_103/gru_103/while/gru_cell_103/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask29
7sequential_103/gru_103/while/gru_cell_103/strided_slice
2sequential_103/gru_103/while/gru_cell_103/MatMul_1MatMul*sequential_103_gru_103_while_placeholder_2@sequential_103/gru_103/while/gru_cell_103/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ24
2sequential_103/gru_103/while/gru_cell_103/MatMul_1·
/sequential_103/gru_103/while/gru_cell_103/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ21
/sequential_103/gru_103/while/gru_cell_103/ConstÅ
;sequential_103/gru_103/while/gru_cell_103/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2=
;sequential_103/gru_103/while/gru_cell_103/split_1/split_dim£
1sequential_103/gru_103/while/gru_cell_103/split_1SplitV<sequential_103/gru_103/while/gru_cell_103/MatMul_1:product:08sequential_103/gru_103/while/gru_cell_103/Const:output:0Dsequential_103/gru_103/while/gru_cell_103/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split23
1sequential_103/gru_103/while/gru_cell_103/split_1
-sequential_103/gru_103/while/gru_cell_103/addAddV28sequential_103/gru_103/while/gru_cell_103/split:output:0:sequential_103/gru_103/while/gru_cell_103/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2/
-sequential_103/gru_103/while/gru_cell_103/add×
1sequential_103/gru_103/while/gru_cell_103/SigmoidSigmoid1sequential_103/gru_103/while/gru_cell_103/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ23
1sequential_103/gru_103/while/gru_cell_103/Sigmoid
/sequential_103/gru_103/while/gru_cell_103/add_1AddV28sequential_103/gru_103/while/gru_cell_103/split:output:1:sequential_103/gru_103/while/gru_cell_103/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ21
/sequential_103/gru_103/while/gru_cell_103/add_1Ý
3sequential_103/gru_103/while/gru_cell_103/Sigmoid_1Sigmoid3sequential_103/gru_103/while/gru_cell_103/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ25
3sequential_103/gru_103/while/gru_cell_103/Sigmoid_1ý
-sequential_103/gru_103/while/gru_cell_103/mulMul7sequential_103/gru_103/while/gru_cell_103/Sigmoid_1:y:0*sequential_103_gru_103_while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2/
-sequential_103/gru_103/while/gru_cell_103/mulþ
:sequential_103/gru_103/while/gru_cell_103/ReadVariableOp_1ReadVariableOpCsequential_103_gru_103_while_gru_cell_103_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02<
:sequential_103/gru_103/while/gru_cell_103/ReadVariableOp_1Ó
?sequential_103/gru_103/while/gru_cell_103/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2A
?sequential_103/gru_103/while/gru_cell_103/strided_slice_1/stack×
Asequential_103/gru_103/while/gru_cell_103/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2C
Asequential_103/gru_103/while/gru_cell_103/strided_slice_1/stack_1×
Asequential_103/gru_103/while/gru_cell_103/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2C
Asequential_103/gru_103/while/gru_cell_103/strided_slice_1/stack_2
9sequential_103/gru_103/while/gru_cell_103/strided_slice_1StridedSliceBsequential_103/gru_103/while/gru_cell_103/ReadVariableOp_1:value:0Hsequential_103/gru_103/while/gru_cell_103/strided_slice_1/stack:output:0Jsequential_103/gru_103/while/gru_cell_103/strided_slice_1/stack_1:output:0Jsequential_103/gru_103/while/gru_cell_103/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2;
9sequential_103/gru_103/while/gru_cell_103/strided_slice_1
2sequential_103/gru_103/while/gru_cell_103/MatMul_2MatMul1sequential_103/gru_103/while/gru_cell_103/mul:z:0Bsequential_103/gru_103/while/gru_cell_103/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ24
2sequential_103/gru_103/while/gru_cell_103/MatMul_2
/sequential_103/gru_103/while/gru_cell_103/add_2AddV28sequential_103/gru_103/while/gru_cell_103/split:output:2<sequential_103/gru_103/while/gru_cell_103/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ21
/sequential_103/gru_103/while/gru_cell_103/add_2Ð
.sequential_103/gru_103/while/gru_cell_103/ReluRelu3sequential_103/gru_103/while/gru_cell_103/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ20
.sequential_103/gru_103/while/gru_cell_103/Reluÿ
/sequential_103/gru_103/while/gru_cell_103/mul_1Mul5sequential_103/gru_103/while/gru_cell_103/Sigmoid:y:0*sequential_103_gru_103_while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ21
/sequential_103/gru_103/while/gru_cell_103/mul_1§
/sequential_103/gru_103/while/gru_cell_103/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?21
/sequential_103/gru_103/while/gru_cell_103/sub/x
-sequential_103/gru_103/while/gru_cell_103/subSub8sequential_103/gru_103/while/gru_cell_103/sub/x:output:05sequential_103/gru_103/while/gru_cell_103/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2/
-sequential_103/gru_103/while/gru_cell_103/sub
/sequential_103/gru_103/while/gru_cell_103/mul_2Mul1sequential_103/gru_103/while/gru_cell_103/sub:z:0<sequential_103/gru_103/while/gru_cell_103/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ21
/sequential_103/gru_103/while/gru_cell_103/mul_2
/sequential_103/gru_103/while/gru_cell_103/add_3AddV23sequential_103/gru_103/while/gru_cell_103/mul_1:z:03sequential_103/gru_103/while/gru_cell_103/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ21
/sequential_103/gru_103/while/gru_cell_103/add_3Ó
Asequential_103/gru_103/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem*sequential_103_gru_103_while_placeholder_1(sequential_103_gru_103_while_placeholder3sequential_103/gru_103/while/gru_cell_103/add_3:z:0*
_output_shapes
: *
element_dtype02C
Asequential_103/gru_103/while/TensorArrayV2Write/TensorListSetItem
"sequential_103/gru_103/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2$
"sequential_103/gru_103/while/add/yÅ
 sequential_103/gru_103/while/addAddV2(sequential_103_gru_103_while_placeholder+sequential_103/gru_103/while/add/y:output:0*
T0*
_output_shapes
: 2"
 sequential_103/gru_103/while/add
$sequential_103/gru_103/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2&
$sequential_103/gru_103/while/add_1/yé
"sequential_103/gru_103/while/add_1AddV2Fsequential_103_gru_103_while_sequential_103_gru_103_while_loop_counter-sequential_103/gru_103/while/add_1/y:output:0*
T0*
_output_shapes
: 2$
"sequential_103/gru_103/while/add_1 
%sequential_103/gru_103/while/IdentityIdentity&sequential_103/gru_103/while/add_1:z:0A^sequential_103/gru_103/while/gru_cell_103/BiasAdd/ReadVariableOp@^sequential_103/gru_103/while/gru_cell_103/MatMul/ReadVariableOp9^sequential_103/gru_103/while/gru_cell_103/ReadVariableOp;^sequential_103/gru_103/while/gru_cell_103/ReadVariableOp_1*
T0*
_output_shapes
: 2'
%sequential_103/gru_103/while/IdentityÊ
'sequential_103/gru_103/while/Identity_1IdentityLsequential_103_gru_103_while_sequential_103_gru_103_while_maximum_iterationsA^sequential_103/gru_103/while/gru_cell_103/BiasAdd/ReadVariableOp@^sequential_103/gru_103/while/gru_cell_103/MatMul/ReadVariableOp9^sequential_103/gru_103/while/gru_cell_103/ReadVariableOp;^sequential_103/gru_103/while/gru_cell_103/ReadVariableOp_1*
T0*
_output_shapes
: 2)
'sequential_103/gru_103/while/Identity_1¢
'sequential_103/gru_103/while/Identity_2Identity$sequential_103/gru_103/while/add:z:0A^sequential_103/gru_103/while/gru_cell_103/BiasAdd/ReadVariableOp@^sequential_103/gru_103/while/gru_cell_103/MatMul/ReadVariableOp9^sequential_103/gru_103/while/gru_cell_103/ReadVariableOp;^sequential_103/gru_103/while/gru_cell_103/ReadVariableOp_1*
T0*
_output_shapes
: 2)
'sequential_103/gru_103/while/Identity_2Ï
'sequential_103/gru_103/while/Identity_3IdentityQsequential_103/gru_103/while/TensorArrayV2Write/TensorListSetItem:output_handle:0A^sequential_103/gru_103/while/gru_cell_103/BiasAdd/ReadVariableOp@^sequential_103/gru_103/while/gru_cell_103/MatMul/ReadVariableOp9^sequential_103/gru_103/while/gru_cell_103/ReadVariableOp;^sequential_103/gru_103/while/gru_cell_103/ReadVariableOp_1*
T0*
_output_shapes
: 2)
'sequential_103/gru_103/while/Identity_3Ã
'sequential_103/gru_103/while/Identity_4Identity3sequential_103/gru_103/while/gru_cell_103/add_3:z:0A^sequential_103/gru_103/while/gru_cell_103/BiasAdd/ReadVariableOp@^sequential_103/gru_103/while/gru_cell_103/MatMul/ReadVariableOp9^sequential_103/gru_103/while/gru_cell_103/ReadVariableOp;^sequential_103/gru_103/while/gru_cell_103/ReadVariableOp_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2)
'sequential_103/gru_103/while/Identity_4"
Isequential_103_gru_103_while_gru_cell_103_biasadd_readvariableop_resourceKsequential_103_gru_103_while_gru_cell_103_biasadd_readvariableop_resource_0"
Hsequential_103_gru_103_while_gru_cell_103_matmul_readvariableop_resourceJsequential_103_gru_103_while_gru_cell_103_matmul_readvariableop_resource_0"
Asequential_103_gru_103_while_gru_cell_103_readvariableop_resourceCsequential_103_gru_103_while_gru_cell_103_readvariableop_resource_0"W
%sequential_103_gru_103_while_identity.sequential_103/gru_103/while/Identity:output:0"[
'sequential_103_gru_103_while_identity_10sequential_103/gru_103/while/Identity_1:output:0"[
'sequential_103_gru_103_while_identity_20sequential_103/gru_103/while/Identity_2:output:0"[
'sequential_103_gru_103_while_identity_30sequential_103/gru_103/while/Identity_3:output:0"[
'sequential_103_gru_103_while_identity_40sequential_103/gru_103/while/Identity_4:output:0"
Csequential_103_gru_103_while_sequential_103_gru_103_strided_slice_1Esequential_103_gru_103_while_sequential_103_gru_103_strided_slice_1_0"
sequential_103_gru_103_while_tensorarrayv2read_tensorlistgetitem_sequential_103_gru_103_tensorarrayunstack_tensorlistfromtensorsequential_103_gru_103_while_tensorarrayv2read_tensorlistgetitem_sequential_103_gru_103_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿÈ: : : : : 2
@sequential_103/gru_103/while/gru_cell_103/BiasAdd/ReadVariableOp@sequential_103/gru_103/while/gru_cell_103/BiasAdd/ReadVariableOp2
?sequential_103/gru_103/while/gru_cell_103/MatMul/ReadVariableOp?sequential_103/gru_103/while/gru_cell_103/MatMul/ReadVariableOp2t
8sequential_103/gru_103/while/gru_cell_103/ReadVariableOp8sequential_103/gru_103/while/gru_cell_103/ReadVariableOp2x
:sequential_103/gru_103/while/gru_cell_103/ReadVariableOp_1:sequential_103/gru_103/while/gru_cell_103/ReadVariableOp_1: 
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
	
«
0__inference_sequential_103_layer_call_fn_5226096

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
K__inference_sequential_103_layer_call_and_return_conditional_losses_52255852
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
Ôi
«
D__inference_gru_103_layer_call_and_return_conditional_losses_5225271

inputs>
+gru_cell_103_matmul_readvariableop_resource:	Ø;
,gru_cell_103_biasadd_readvariableop_resource:	Ø8
$gru_cell_103_readvariableop_resource:
ÈØ
identity¢#gru_cell_103/BiasAdd/ReadVariableOp¢"gru_cell_103/MatMul/ReadVariableOp¢gru_cell_103/ReadVariableOp¢gru_cell_103/ReadVariableOp_1¢whileD
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
"gru_cell_103/MatMul/ReadVariableOpReadVariableOp+gru_cell_103_matmul_readvariableop_resource*
_output_shapes
:	Ø*
dtype02$
"gru_cell_103/MatMul/ReadVariableOp­
gru_cell_103/MatMulMatMulstrided_slice_2:output:0*gru_cell_103/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_cell_103/MatMul´
#gru_cell_103/BiasAdd/ReadVariableOpReadVariableOp,gru_cell_103_biasadd_readvariableop_resource*
_output_shapes	
:Ø*
dtype02%
#gru_cell_103/BiasAdd/ReadVariableOp¶
gru_cell_103/BiasAddBiasAddgru_cell_103/MatMul:product:0+gru_cell_103/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_cell_103/BiasAdd
gru_cell_103/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
gru_cell_103/split/split_dimã
gru_cell_103/splitSplit%gru_cell_103/split/split_dim:output:0gru_cell_103/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
gru_cell_103/split¡
gru_cell_103/ReadVariableOpReadVariableOp$gru_cell_103_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02
gru_cell_103/ReadVariableOp
 gru_cell_103/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 gru_cell_103/strided_slice/stack
"gru_cell_103/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_103/strided_slice/stack_1
"gru_cell_103/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_103/strided_slice/stack_2Ì
gru_cell_103/strided_sliceStridedSlice#gru_cell_103/ReadVariableOp:value:0)gru_cell_103/strided_slice/stack:output:0+gru_cell_103/strided_slice/stack_1:output:0+gru_cell_103/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2
gru_cell_103/strided_slice 
gru_cell_103/MatMul_1MatMulzeros:output:0#gru_cell_103/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_103/MatMul_1}
gru_cell_103/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2
gru_cell_103/Const
gru_cell_103/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2 
gru_cell_103/split_1/split_dim
gru_cell_103/split_1SplitVgru_cell_103/MatMul_1:product:0gru_cell_103/Const:output:0'gru_cell_103/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2
gru_cell_103/split_1
gru_cell_103/addAddV2gru_cell_103/split:output:0gru_cell_103/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_103/add
gru_cell_103/SigmoidSigmoidgru_cell_103/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_103/Sigmoid 
gru_cell_103/add_1AddV2gru_cell_103/split:output:1gru_cell_103/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_103/add_1
gru_cell_103/Sigmoid_1Sigmoidgru_cell_103/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_103/Sigmoid_1
gru_cell_103/mulMulgru_cell_103/Sigmoid_1:y:0zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_103/mul¥
gru_cell_103/ReadVariableOp_1ReadVariableOp$gru_cell_103_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02
gru_cell_103/ReadVariableOp_1
"gru_cell_103/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_103/strided_slice_1/stack
$gru_cell_103/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$gru_cell_103/strided_slice_1/stack_1
$gru_cell_103/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$gru_cell_103/strided_slice_1/stack_2Ø
gru_cell_103/strided_slice_1StridedSlice%gru_cell_103/ReadVariableOp_1:value:0+gru_cell_103/strided_slice_1/stack:output:0-gru_cell_103/strided_slice_1/stack_1:output:0-gru_cell_103/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2
gru_cell_103/strided_slice_1¨
gru_cell_103/MatMul_2MatMulgru_cell_103/mul:z:0%gru_cell_103/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_103/MatMul_2¢
gru_cell_103/add_2AddV2gru_cell_103/split:output:2gru_cell_103/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_103/add_2y
gru_cell_103/ReluRelugru_cell_103/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_103/Relu
gru_cell_103/mul_1Mulgru_cell_103/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_103/mul_1m
gru_cell_103/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_103/sub/x
gru_cell_103/subSubgru_cell_103/sub/x:output:0gru_cell_103/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_103/sub
gru_cell_103/mul_2Mulgru_cell_103/sub:z:0gru_cell_103/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_103/mul_2
gru_cell_103/add_3AddV2gru_cell_103/mul_1:z:0gru_cell_103/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_103/add_3
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+gru_cell_103_matmul_readvariableop_resource,gru_cell_103_biasadd_readvariableop_resource$gru_cell_103_readvariableop_resource*
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
while_body_5225175*
condR
while_cond_5225174*9
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
IdentityIdentitystrided_slice_3:output:0$^gru_cell_103/BiasAdd/ReadVariableOp#^gru_cell_103/MatMul/ReadVariableOp^gru_cell_103/ReadVariableOp^gru_cell_103/ReadVariableOp_1^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#gru_cell_103/BiasAdd/ReadVariableOp#gru_cell_103/BiasAdd/ReadVariableOp2H
"gru_cell_103/MatMul/ReadVariableOp"gru_cell_103/MatMul/ReadVariableOp2:
gru_cell_103/ReadVariableOpgru_cell_103/ReadVariableOp2>
gru_cell_103/ReadVariableOp_1gru_cell_103/ReadVariableOp_12
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ý=

D__inference_gru_103_layer_call_and_return_conditional_losses_5224656

inputs'
gru_cell_103_5224580:	Ø#
gru_cell_103_5224582:	Ø(
gru_cell_103_5224584:
ÈØ
identity¢$gru_cell_103/StatefulPartitionedCall¢whileD
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
$gru_cell_103/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0gru_cell_103_5224580gru_cell_103_5224582gru_cell_103_5224584*
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
I__inference_gru_cell_103_layer_call_and_return_conditional_losses_52245792&
$gru_cell_103/StatefulPartitionedCall
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0gru_cell_103_5224580gru_cell_103_5224582gru_cell_103_5224584*
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
while_body_5224592*
condR
while_cond_5224591*9
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
IdentityIdentitystrided_slice_3:output:0%^gru_cell_103/StatefulPartitionedCall^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2L
$gru_cell_103/StatefulPartitionedCall$gru_cell_103/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ô*
é
I__inference_gru_cell_103_layer_call_and_return_conditional_losses_5224579

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
	
²
0__inference_sequential_103_layer_call_fn_5225621
gru_103_input
unknown:	Ø
	unknown_0:	Ø
	unknown_1:
ÈØ
	unknown_2:	Èd
	unknown_3:d
	unknown_4:d
	unknown_5:
identity¢StatefulPartitionedCallÃ
StatefulPartitionedCallStatefulPartitionedCallgru_103_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
K__inference_sequential_103_layer_call_and_return_conditional_losses_52255852
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
_user_specified_namegru_103_input
ÀA
ï
 __inference__traced_save_5227090
file_prefix/
+savev2_dense_206_kernel_read_readvariableop-
)savev2_dense_206_bias_read_readvariableop/
+savev2_dense_207_kernel_read_readvariableop-
)savev2_dense_207_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop:
6savev2_gru_103_gru_cell_103_kernel_read_readvariableopD
@savev2_gru_103_gru_cell_103_recurrent_kernel_read_readvariableop8
4savev2_gru_103_gru_cell_103_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_206_kernel_m_read_readvariableop4
0savev2_adam_dense_206_bias_m_read_readvariableop6
2savev2_adam_dense_207_kernel_m_read_readvariableop4
0savev2_adam_dense_207_bias_m_read_readvariableopA
=savev2_adam_gru_103_gru_cell_103_kernel_m_read_readvariableopK
Gsavev2_adam_gru_103_gru_cell_103_recurrent_kernel_m_read_readvariableop?
;savev2_adam_gru_103_gru_cell_103_bias_m_read_readvariableop6
2savev2_adam_dense_206_kernel_v_read_readvariableop4
0savev2_adam_dense_206_bias_v_read_readvariableop6
2savev2_adam_dense_207_kernel_v_read_readvariableop4
0savev2_adam_dense_207_bias_v_read_readvariableopA
=savev2_adam_gru_103_gru_cell_103_kernel_v_read_readvariableopK
Gsavev2_adam_gru_103_gru_cell_103_recurrent_kernel_v_read_readvariableop?
;savev2_adam_gru_103_gru_cell_103_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_206_kernel_read_readvariableop)savev2_dense_206_bias_read_readvariableop+savev2_dense_207_kernel_read_readvariableop)savev2_dense_207_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop6savev2_gru_103_gru_cell_103_kernel_read_readvariableop@savev2_gru_103_gru_cell_103_recurrent_kernel_read_readvariableop4savev2_gru_103_gru_cell_103_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_206_kernel_m_read_readvariableop0savev2_adam_dense_206_bias_m_read_readvariableop2savev2_adam_dense_207_kernel_m_read_readvariableop0savev2_adam_dense_207_bias_m_read_readvariableop=savev2_adam_gru_103_gru_cell_103_kernel_m_read_readvariableopGsavev2_adam_gru_103_gru_cell_103_recurrent_kernel_m_read_readvariableop;savev2_adam_gru_103_gru_cell_103_bias_m_read_readvariableop2savev2_adam_dense_206_kernel_v_read_readvariableop0savev2_adam_dense_206_bias_v_read_readvariableop2savev2_adam_dense_207_kernel_v_read_readvariableop0savev2_adam_dense_207_bias_v_read_readvariableop=savev2_adam_gru_103_gru_cell_103_kernel_v_read_readvariableopGsavev2_adam_gru_103_gru_cell_103_recurrent_kernel_v_read_readvariableop;savev2_adam_gru_103_gru_cell_103_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
Y
¯
while_body_5226684
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_gru_cell_103_matmul_readvariableop_resource_0:	ØC
4while_gru_cell_103_biasadd_readvariableop_resource_0:	Ø@
,while_gru_cell_103_readvariableop_resource_0:
ÈØ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_gru_cell_103_matmul_readvariableop_resource:	ØA
2while_gru_cell_103_biasadd_readvariableop_resource:	Ø>
*while_gru_cell_103_readvariableop_resource:
ÈØ¢)while/gru_cell_103/BiasAdd/ReadVariableOp¢(while/gru_cell_103/MatMul/ReadVariableOp¢!while/gru_cell_103/ReadVariableOp¢#while/gru_cell_103/ReadVariableOp_1Ã
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
(while/gru_cell_103/MatMul/ReadVariableOpReadVariableOp3while_gru_cell_103_matmul_readvariableop_resource_0*
_output_shapes
:	Ø*
dtype02*
(while/gru_cell_103/MatMul/ReadVariableOp×
while/gru_cell_103/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/gru_cell_103/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
while/gru_cell_103/MatMulÈ
)while/gru_cell_103/BiasAdd/ReadVariableOpReadVariableOp4while_gru_cell_103_biasadd_readvariableop_resource_0*
_output_shapes	
:Ø*
dtype02+
)while/gru_cell_103/BiasAdd/ReadVariableOpÎ
while/gru_cell_103/BiasAddBiasAdd#while/gru_cell_103/MatMul:product:01while/gru_cell_103/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
while/gru_cell_103/BiasAdd
"while/gru_cell_103/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2$
"while/gru_cell_103/split/split_dimû
while/gru_cell_103/splitSplit+while/gru_cell_103/split/split_dim:output:0#while/gru_cell_103/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
while/gru_cell_103/splitµ
!while/gru_cell_103/ReadVariableOpReadVariableOp,while_gru_cell_103_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02#
!while/gru_cell_103/ReadVariableOp¡
&while/gru_cell_103/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/gru_cell_103/strided_slice/stack¥
(while/gru_cell_103/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_103/strided_slice/stack_1¥
(while/gru_cell_103/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_103/strided_slice/stack_2ð
 while/gru_cell_103/strided_sliceStridedSlice)while/gru_cell_103/ReadVariableOp:value:0/while/gru_cell_103/strided_slice/stack:output:01while/gru_cell_103/strided_slice/stack_1:output:01while/gru_cell_103/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2"
 while/gru_cell_103/strided_slice·
while/gru_cell_103/MatMul_1MatMulwhile_placeholder_2)while/gru_cell_103/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_103/MatMul_1
while/gru_cell_103/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2
while/gru_cell_103/Const
$while/gru_cell_103/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2&
$while/gru_cell_103/split_1/split_dim°
while/gru_cell_103/split_1SplitV%while/gru_cell_103/MatMul_1:product:0!while/gru_cell_103/Const:output:0-while/gru_cell_103/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2
while/gru_cell_103/split_1´
while/gru_cell_103/addAddV2!while/gru_cell_103/split:output:0#while/gru_cell_103/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_103/add
while/gru_cell_103/SigmoidSigmoidwhile/gru_cell_103/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_103/Sigmoid¸
while/gru_cell_103/add_1AddV2!while/gru_cell_103/split:output:1#while/gru_cell_103/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_103/add_1
while/gru_cell_103/Sigmoid_1Sigmoidwhile/gru_cell_103/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_103/Sigmoid_1¡
while/gru_cell_103/mulMul while/gru_cell_103/Sigmoid_1:y:0while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_103/mul¹
#while/gru_cell_103/ReadVariableOp_1ReadVariableOp,while_gru_cell_103_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02%
#while/gru_cell_103/ReadVariableOp_1¥
(while/gru_cell_103/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_103/strided_slice_1/stack©
*while/gru_cell_103/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/gru_cell_103/strided_slice_1/stack_1©
*while/gru_cell_103/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/gru_cell_103/strided_slice_1/stack_2ü
"while/gru_cell_103/strided_slice_1StridedSlice+while/gru_cell_103/ReadVariableOp_1:value:01while/gru_cell_103/strided_slice_1/stack:output:03while/gru_cell_103/strided_slice_1/stack_1:output:03while/gru_cell_103/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2$
"while/gru_cell_103/strided_slice_1À
while/gru_cell_103/MatMul_2MatMulwhile/gru_cell_103/mul:z:0+while/gru_cell_103/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_103/MatMul_2º
while/gru_cell_103/add_2AddV2!while/gru_cell_103/split:output:2%while/gru_cell_103/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_103/add_2
while/gru_cell_103/ReluReluwhile/gru_cell_103/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_103/Relu£
while/gru_cell_103/mul_1Mulwhile/gru_cell_103/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_103/mul_1y
while/gru_cell_103/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
while/gru_cell_103/sub/x­
while/gru_cell_103/subSub!while/gru_cell_103/sub/x:output:0while/gru_cell_103/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_103/sub±
while/gru_cell_103/mul_2Mulwhile/gru_cell_103/sub:z:0%while/gru_cell_103/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_103/mul_2¬
while/gru_cell_103/add_3AddV2while/gru_cell_103/mul_1:z:0while/gru_cell_103/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_103/add_3à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_103/add_3:z:0*
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
while/IdentityIdentitywhile/add_1:z:0*^while/gru_cell_103/BiasAdd/ReadVariableOp)^while/gru_cell_103/MatMul/ReadVariableOp"^while/gru_cell_103/ReadVariableOp$^while/gru_cell_103/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations*^while/gru_cell_103/BiasAdd/ReadVariableOp)^while/gru_cell_103/MatMul/ReadVariableOp"^while/gru_cell_103/ReadVariableOp$^while/gru_cell_103/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:0*^while/gru_cell_103/BiasAdd/ReadVariableOp)^while/gru_cell_103/MatMul/ReadVariableOp"^while/gru_cell_103/ReadVariableOp$^while/gru_cell_103/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_2®
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/gru_cell_103/BiasAdd/ReadVariableOp)^while/gru_cell_103/MatMul/ReadVariableOp"^while/gru_cell_103/ReadVariableOp$^while/gru_cell_103/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_3¢
while/Identity_4Identitywhile/gru_cell_103/add_3:z:0*^while/gru_cell_103/BiasAdd/ReadVariableOp)^while/gru_cell_103/MatMul/ReadVariableOp"^while/gru_cell_103/ReadVariableOp$^while/gru_cell_103/ReadVariableOp_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_4"j
2while_gru_cell_103_biasadd_readvariableop_resource4while_gru_cell_103_biasadd_readvariableop_resource_0"h
1while_gru_cell_103_matmul_readvariableop_resource3while_gru_cell_103_matmul_readvariableop_resource_0"Z
*while_gru_cell_103_readvariableop_resource,while_gru_cell_103_readvariableop_resource_0")
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
)while/gru_cell_103/BiasAdd/ReadVariableOp)while/gru_cell_103/BiasAdd/ReadVariableOp2T
(while/gru_cell_103/MatMul/ReadVariableOp(while/gru_cell_103/MatMul/ReadVariableOp2F
!while/gru_cell_103/ReadVariableOp!while/gru_cell_103/ReadVariableOp2J
#while/gru_cell_103/ReadVariableOp_1#while/gru_cell_103/ReadVariableOp_1: 
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
D__inference_gru_103_layer_call_and_return_conditional_losses_5226780

inputs>
+gru_cell_103_matmul_readvariableop_resource:	Ø;
,gru_cell_103_biasadd_readvariableop_resource:	Ø8
$gru_cell_103_readvariableop_resource:
ÈØ
identity¢#gru_cell_103/BiasAdd/ReadVariableOp¢"gru_cell_103/MatMul/ReadVariableOp¢gru_cell_103/ReadVariableOp¢gru_cell_103/ReadVariableOp_1¢whileD
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
"gru_cell_103/MatMul/ReadVariableOpReadVariableOp+gru_cell_103_matmul_readvariableop_resource*
_output_shapes
:	Ø*
dtype02$
"gru_cell_103/MatMul/ReadVariableOp­
gru_cell_103/MatMulMatMulstrided_slice_2:output:0*gru_cell_103/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_cell_103/MatMul´
#gru_cell_103/BiasAdd/ReadVariableOpReadVariableOp,gru_cell_103_biasadd_readvariableop_resource*
_output_shapes	
:Ø*
dtype02%
#gru_cell_103/BiasAdd/ReadVariableOp¶
gru_cell_103/BiasAddBiasAddgru_cell_103/MatMul:product:0+gru_cell_103/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_cell_103/BiasAdd
gru_cell_103/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
gru_cell_103/split/split_dimã
gru_cell_103/splitSplit%gru_cell_103/split/split_dim:output:0gru_cell_103/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
gru_cell_103/split¡
gru_cell_103/ReadVariableOpReadVariableOp$gru_cell_103_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02
gru_cell_103/ReadVariableOp
 gru_cell_103/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 gru_cell_103/strided_slice/stack
"gru_cell_103/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_103/strided_slice/stack_1
"gru_cell_103/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_103/strided_slice/stack_2Ì
gru_cell_103/strided_sliceStridedSlice#gru_cell_103/ReadVariableOp:value:0)gru_cell_103/strided_slice/stack:output:0+gru_cell_103/strided_slice/stack_1:output:0+gru_cell_103/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2
gru_cell_103/strided_slice 
gru_cell_103/MatMul_1MatMulzeros:output:0#gru_cell_103/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_103/MatMul_1}
gru_cell_103/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2
gru_cell_103/Const
gru_cell_103/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2 
gru_cell_103/split_1/split_dim
gru_cell_103/split_1SplitVgru_cell_103/MatMul_1:product:0gru_cell_103/Const:output:0'gru_cell_103/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2
gru_cell_103/split_1
gru_cell_103/addAddV2gru_cell_103/split:output:0gru_cell_103/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_103/add
gru_cell_103/SigmoidSigmoidgru_cell_103/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_103/Sigmoid 
gru_cell_103/add_1AddV2gru_cell_103/split:output:1gru_cell_103/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_103/add_1
gru_cell_103/Sigmoid_1Sigmoidgru_cell_103/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_103/Sigmoid_1
gru_cell_103/mulMulgru_cell_103/Sigmoid_1:y:0zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_103/mul¥
gru_cell_103/ReadVariableOp_1ReadVariableOp$gru_cell_103_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02
gru_cell_103/ReadVariableOp_1
"gru_cell_103/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_103/strided_slice_1/stack
$gru_cell_103/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$gru_cell_103/strided_slice_1/stack_1
$gru_cell_103/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$gru_cell_103/strided_slice_1/stack_2Ø
gru_cell_103/strided_slice_1StridedSlice%gru_cell_103/ReadVariableOp_1:value:0+gru_cell_103/strided_slice_1/stack:output:0-gru_cell_103/strided_slice_1/stack_1:output:0-gru_cell_103/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2
gru_cell_103/strided_slice_1¨
gru_cell_103/MatMul_2MatMulgru_cell_103/mul:z:0%gru_cell_103/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_103/MatMul_2¢
gru_cell_103/add_2AddV2gru_cell_103/split:output:2gru_cell_103/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_103/add_2y
gru_cell_103/ReluRelugru_cell_103/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_103/Relu
gru_cell_103/mul_1Mulgru_cell_103/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_103/mul_1m
gru_cell_103/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_103/sub/x
gru_cell_103/subSubgru_cell_103/sub/x:output:0gru_cell_103/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_103/sub
gru_cell_103/mul_2Mulgru_cell_103/sub:z:0gru_cell_103/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_103/mul_2
gru_cell_103/add_3AddV2gru_cell_103/mul_1:z:0gru_cell_103/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_103/add_3
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+gru_cell_103_matmul_readvariableop_resource,gru_cell_103_biasadd_readvariableop_resource$gru_cell_103_readvariableop_resource*
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
while_body_5226684*
condR
while_cond_5226683*9
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
IdentityIdentitystrided_slice_3:output:0$^gru_cell_103/BiasAdd/ReadVariableOp#^gru_cell_103/MatMul/ReadVariableOp^gru_cell_103/ReadVariableOp^gru_cell_103/ReadVariableOp_1^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#gru_cell_103/BiasAdd/ReadVariableOp#gru_cell_103/BiasAdd/ReadVariableOp2H
"gru_cell_103/MatMul/ReadVariableOp"gru_cell_103/MatMul/ReadVariableOp2:
gru_cell_103/ReadVariableOpgru_cell_103/ReadVariableOp2>
gru_cell_103/ReadVariableOp_1gru_cell_103/ReadVariableOp_12
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Y
¯
while_body_5226171
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_gru_cell_103_matmul_readvariableop_resource_0:	ØC
4while_gru_cell_103_biasadd_readvariableop_resource_0:	Ø@
,while_gru_cell_103_readvariableop_resource_0:
ÈØ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_gru_cell_103_matmul_readvariableop_resource:	ØA
2while_gru_cell_103_biasadd_readvariableop_resource:	Ø>
*while_gru_cell_103_readvariableop_resource:
ÈØ¢)while/gru_cell_103/BiasAdd/ReadVariableOp¢(while/gru_cell_103/MatMul/ReadVariableOp¢!while/gru_cell_103/ReadVariableOp¢#while/gru_cell_103/ReadVariableOp_1Ã
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
(while/gru_cell_103/MatMul/ReadVariableOpReadVariableOp3while_gru_cell_103_matmul_readvariableop_resource_0*
_output_shapes
:	Ø*
dtype02*
(while/gru_cell_103/MatMul/ReadVariableOp×
while/gru_cell_103/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/gru_cell_103/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
while/gru_cell_103/MatMulÈ
)while/gru_cell_103/BiasAdd/ReadVariableOpReadVariableOp4while_gru_cell_103_biasadd_readvariableop_resource_0*
_output_shapes	
:Ø*
dtype02+
)while/gru_cell_103/BiasAdd/ReadVariableOpÎ
while/gru_cell_103/BiasAddBiasAdd#while/gru_cell_103/MatMul:product:01while/gru_cell_103/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
while/gru_cell_103/BiasAdd
"while/gru_cell_103/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2$
"while/gru_cell_103/split/split_dimû
while/gru_cell_103/splitSplit+while/gru_cell_103/split/split_dim:output:0#while/gru_cell_103/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
while/gru_cell_103/splitµ
!while/gru_cell_103/ReadVariableOpReadVariableOp,while_gru_cell_103_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02#
!while/gru_cell_103/ReadVariableOp¡
&while/gru_cell_103/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/gru_cell_103/strided_slice/stack¥
(while/gru_cell_103/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_103/strided_slice/stack_1¥
(while/gru_cell_103/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_103/strided_slice/stack_2ð
 while/gru_cell_103/strided_sliceStridedSlice)while/gru_cell_103/ReadVariableOp:value:0/while/gru_cell_103/strided_slice/stack:output:01while/gru_cell_103/strided_slice/stack_1:output:01while/gru_cell_103/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2"
 while/gru_cell_103/strided_slice·
while/gru_cell_103/MatMul_1MatMulwhile_placeholder_2)while/gru_cell_103/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_103/MatMul_1
while/gru_cell_103/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2
while/gru_cell_103/Const
$while/gru_cell_103/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2&
$while/gru_cell_103/split_1/split_dim°
while/gru_cell_103/split_1SplitV%while/gru_cell_103/MatMul_1:product:0!while/gru_cell_103/Const:output:0-while/gru_cell_103/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2
while/gru_cell_103/split_1´
while/gru_cell_103/addAddV2!while/gru_cell_103/split:output:0#while/gru_cell_103/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_103/add
while/gru_cell_103/SigmoidSigmoidwhile/gru_cell_103/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_103/Sigmoid¸
while/gru_cell_103/add_1AddV2!while/gru_cell_103/split:output:1#while/gru_cell_103/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_103/add_1
while/gru_cell_103/Sigmoid_1Sigmoidwhile/gru_cell_103/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_103/Sigmoid_1¡
while/gru_cell_103/mulMul while/gru_cell_103/Sigmoid_1:y:0while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_103/mul¹
#while/gru_cell_103/ReadVariableOp_1ReadVariableOp,while_gru_cell_103_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02%
#while/gru_cell_103/ReadVariableOp_1¥
(while/gru_cell_103/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_103/strided_slice_1/stack©
*while/gru_cell_103/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/gru_cell_103/strided_slice_1/stack_1©
*while/gru_cell_103/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/gru_cell_103/strided_slice_1/stack_2ü
"while/gru_cell_103/strided_slice_1StridedSlice+while/gru_cell_103/ReadVariableOp_1:value:01while/gru_cell_103/strided_slice_1/stack:output:03while/gru_cell_103/strided_slice_1/stack_1:output:03while/gru_cell_103/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2$
"while/gru_cell_103/strided_slice_1À
while/gru_cell_103/MatMul_2MatMulwhile/gru_cell_103/mul:z:0+while/gru_cell_103/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_103/MatMul_2º
while/gru_cell_103/add_2AddV2!while/gru_cell_103/split:output:2%while/gru_cell_103/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_103/add_2
while/gru_cell_103/ReluReluwhile/gru_cell_103/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_103/Relu£
while/gru_cell_103/mul_1Mulwhile/gru_cell_103/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_103/mul_1y
while/gru_cell_103/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
while/gru_cell_103/sub/x­
while/gru_cell_103/subSub!while/gru_cell_103/sub/x:output:0while/gru_cell_103/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_103/sub±
while/gru_cell_103/mul_2Mulwhile/gru_cell_103/sub:z:0%while/gru_cell_103/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_103/mul_2¬
while/gru_cell_103/add_3AddV2while/gru_cell_103/mul_1:z:0while/gru_cell_103/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_103/add_3à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_103/add_3:z:0*
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
while/IdentityIdentitywhile/add_1:z:0*^while/gru_cell_103/BiasAdd/ReadVariableOp)^while/gru_cell_103/MatMul/ReadVariableOp"^while/gru_cell_103/ReadVariableOp$^while/gru_cell_103/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations*^while/gru_cell_103/BiasAdd/ReadVariableOp)^while/gru_cell_103/MatMul/ReadVariableOp"^while/gru_cell_103/ReadVariableOp$^while/gru_cell_103/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:0*^while/gru_cell_103/BiasAdd/ReadVariableOp)^while/gru_cell_103/MatMul/ReadVariableOp"^while/gru_cell_103/ReadVariableOp$^while/gru_cell_103/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_2®
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/gru_cell_103/BiasAdd/ReadVariableOp)^while/gru_cell_103/MatMul/ReadVariableOp"^while/gru_cell_103/ReadVariableOp$^while/gru_cell_103/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_3¢
while/Identity_4Identitywhile/gru_cell_103/add_3:z:0*^while/gru_cell_103/BiasAdd/ReadVariableOp)^while/gru_cell_103/MatMul/ReadVariableOp"^while/gru_cell_103/ReadVariableOp$^while/gru_cell_103/ReadVariableOp_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_4"j
2while_gru_cell_103_biasadd_readvariableop_resource4while_gru_cell_103_biasadd_readvariableop_resource_0"h
1while_gru_cell_103_matmul_readvariableop_resource3while_gru_cell_103_matmul_readvariableop_resource_0"Z
*while_gru_cell_103_readvariableop_resource,while_gru_cell_103_readvariableop_resource_0")
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
)while/gru_cell_103/BiasAdd/ReadVariableOp)while/gru_cell_103/BiasAdd/ReadVariableOp2T
(while/gru_cell_103/MatMul/ReadVariableOp(while/gru_cell_103/MatMul/ReadVariableOp2F
!while/gru_cell_103/ReadVariableOp!while/gru_cell_103/ReadVariableOp2J
#while/gru_cell_103/ReadVariableOp_1#while/gru_cell_103/ReadVariableOp_1: 
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
¢

+__inference_dense_206_layer_call_fn_5226844

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
F__inference_dense_206_layer_call_and_return_conditional_losses_52252902
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
ìg
§

gru_103_while_body_5225949,
(gru_103_while_gru_103_while_loop_counter2
.gru_103_while_gru_103_while_maximum_iterations
gru_103_while_placeholder
gru_103_while_placeholder_1
gru_103_while_placeholder_2+
'gru_103_while_gru_103_strided_slice_1_0g
cgru_103_while_tensorarrayv2read_tensorlistgetitem_gru_103_tensorarrayunstack_tensorlistfromtensor_0N
;gru_103_while_gru_cell_103_matmul_readvariableop_resource_0:	ØK
<gru_103_while_gru_cell_103_biasadd_readvariableop_resource_0:	ØH
4gru_103_while_gru_cell_103_readvariableop_resource_0:
ÈØ
gru_103_while_identity
gru_103_while_identity_1
gru_103_while_identity_2
gru_103_while_identity_3
gru_103_while_identity_4)
%gru_103_while_gru_103_strided_slice_1e
agru_103_while_tensorarrayv2read_tensorlistgetitem_gru_103_tensorarrayunstack_tensorlistfromtensorL
9gru_103_while_gru_cell_103_matmul_readvariableop_resource:	ØI
:gru_103_while_gru_cell_103_biasadd_readvariableop_resource:	ØF
2gru_103_while_gru_cell_103_readvariableop_resource:
ÈØ¢1gru_103/while/gru_cell_103/BiasAdd/ReadVariableOp¢0gru_103/while/gru_cell_103/MatMul/ReadVariableOp¢)gru_103/while/gru_cell_103/ReadVariableOp¢+gru_103/while/gru_cell_103/ReadVariableOp_1Ó
?gru_103/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2A
?gru_103/while/TensorArrayV2Read/TensorListGetItem/element_shape
1gru_103/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemcgru_103_while_tensorarrayv2read_tensorlistgetitem_gru_103_tensorarrayunstack_tensorlistfromtensor_0gru_103_while_placeholderHgru_103/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype023
1gru_103/while/TensorArrayV2Read/TensorListGetItemá
0gru_103/while/gru_cell_103/MatMul/ReadVariableOpReadVariableOp;gru_103_while_gru_cell_103_matmul_readvariableop_resource_0*
_output_shapes
:	Ø*
dtype022
0gru_103/while/gru_cell_103/MatMul/ReadVariableOp÷
!gru_103/while/gru_cell_103/MatMulMatMul8gru_103/while/TensorArrayV2Read/TensorListGetItem:item:08gru_103/while/gru_cell_103/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2#
!gru_103/while/gru_cell_103/MatMulà
1gru_103/while/gru_cell_103/BiasAdd/ReadVariableOpReadVariableOp<gru_103_while_gru_cell_103_biasadd_readvariableop_resource_0*
_output_shapes	
:Ø*
dtype023
1gru_103/while/gru_cell_103/BiasAdd/ReadVariableOpî
"gru_103/while/gru_cell_103/BiasAddBiasAdd+gru_103/while/gru_cell_103/MatMul:product:09gru_103/while/gru_cell_103/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2$
"gru_103/while/gru_cell_103/BiasAdd£
*gru_103/while/gru_cell_103/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2,
*gru_103/while/gru_cell_103/split/split_dim
 gru_103/while/gru_cell_103/splitSplit3gru_103/while/gru_cell_103/split/split_dim:output:0+gru_103/while/gru_cell_103/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2"
 gru_103/while/gru_cell_103/splitÍ
)gru_103/while/gru_cell_103/ReadVariableOpReadVariableOp4gru_103_while_gru_cell_103_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02+
)gru_103/while/gru_cell_103/ReadVariableOp±
.gru_103/while/gru_cell_103/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        20
.gru_103/while/gru_cell_103/strided_slice/stackµ
0gru_103/while/gru_cell_103/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      22
0gru_103/while/gru_cell_103/strided_slice/stack_1µ
0gru_103/while/gru_cell_103/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0gru_103/while/gru_cell_103/strided_slice/stack_2 
(gru_103/while/gru_cell_103/strided_sliceStridedSlice1gru_103/while/gru_cell_103/ReadVariableOp:value:07gru_103/while/gru_cell_103/strided_slice/stack:output:09gru_103/while/gru_cell_103/strided_slice/stack_1:output:09gru_103/while/gru_cell_103/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2*
(gru_103/while/gru_cell_103/strided_slice×
#gru_103/while/gru_cell_103/MatMul_1MatMulgru_103_while_placeholder_21gru_103/while/gru_cell_103/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2%
#gru_103/while/gru_cell_103/MatMul_1
 gru_103/while/gru_cell_103/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2"
 gru_103/while/gru_cell_103/Const§
,gru_103/while/gru_cell_103/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2.
,gru_103/while/gru_cell_103/split_1/split_dimØ
"gru_103/while/gru_cell_103/split_1SplitV-gru_103/while/gru_cell_103/MatMul_1:product:0)gru_103/while/gru_cell_103/Const:output:05gru_103/while/gru_cell_103/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2$
"gru_103/while/gru_cell_103/split_1Ô
gru_103/while/gru_cell_103/addAddV2)gru_103/while/gru_cell_103/split:output:0+gru_103/while/gru_cell_103/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2 
gru_103/while/gru_cell_103/addª
"gru_103/while/gru_cell_103/SigmoidSigmoid"gru_103/while/gru_cell_103/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2$
"gru_103/while/gru_cell_103/SigmoidØ
 gru_103/while/gru_cell_103/add_1AddV2)gru_103/while/gru_cell_103/split:output:1+gru_103/while/gru_cell_103/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2"
 gru_103/while/gru_cell_103/add_1°
$gru_103/while/gru_cell_103/Sigmoid_1Sigmoid$gru_103/while/gru_cell_103/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2&
$gru_103/while/gru_cell_103/Sigmoid_1Á
gru_103/while/gru_cell_103/mulMul(gru_103/while/gru_cell_103/Sigmoid_1:y:0gru_103_while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2 
gru_103/while/gru_cell_103/mulÑ
+gru_103/while/gru_cell_103/ReadVariableOp_1ReadVariableOp4gru_103_while_gru_cell_103_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02-
+gru_103/while/gru_cell_103/ReadVariableOp_1µ
0gru_103/while/gru_cell_103/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      22
0gru_103/while/gru_cell_103/strided_slice_1/stack¹
2gru_103/while/gru_cell_103/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        24
2gru_103/while/gru_cell_103/strided_slice_1/stack_1¹
2gru_103/while/gru_cell_103/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2gru_103/while/gru_cell_103/strided_slice_1/stack_2¬
*gru_103/while/gru_cell_103/strided_slice_1StridedSlice3gru_103/while/gru_cell_103/ReadVariableOp_1:value:09gru_103/while/gru_cell_103/strided_slice_1/stack:output:0;gru_103/while/gru_cell_103/strided_slice_1/stack_1:output:0;gru_103/while/gru_cell_103/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2,
*gru_103/while/gru_cell_103/strided_slice_1à
#gru_103/while/gru_cell_103/MatMul_2MatMul"gru_103/while/gru_cell_103/mul:z:03gru_103/while/gru_cell_103/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2%
#gru_103/while/gru_cell_103/MatMul_2Ú
 gru_103/while/gru_cell_103/add_2AddV2)gru_103/while/gru_cell_103/split:output:2-gru_103/while/gru_cell_103/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2"
 gru_103/while/gru_cell_103/add_2£
gru_103/while/gru_cell_103/ReluRelu$gru_103/while/gru_cell_103/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2!
gru_103/while/gru_cell_103/ReluÃ
 gru_103/while/gru_cell_103/mul_1Mul&gru_103/while/gru_cell_103/Sigmoid:y:0gru_103_while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2"
 gru_103/while/gru_cell_103/mul_1
 gru_103/while/gru_cell_103/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2"
 gru_103/while/gru_cell_103/sub/xÍ
gru_103/while/gru_cell_103/subSub)gru_103/while/gru_cell_103/sub/x:output:0&gru_103/while/gru_cell_103/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2 
gru_103/while/gru_cell_103/subÑ
 gru_103/while/gru_cell_103/mul_2Mul"gru_103/while/gru_cell_103/sub:z:0-gru_103/while/gru_cell_103/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2"
 gru_103/while/gru_cell_103/mul_2Ì
 gru_103/while/gru_cell_103/add_3AddV2$gru_103/while/gru_cell_103/mul_1:z:0$gru_103/while/gru_cell_103/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2"
 gru_103/while/gru_cell_103/add_3
2gru_103/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemgru_103_while_placeholder_1gru_103_while_placeholder$gru_103/while/gru_cell_103/add_3:z:0*
_output_shapes
: *
element_dtype024
2gru_103/while/TensorArrayV2Write/TensorListSetIteml
gru_103/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru_103/while/add/y
gru_103/while/addAddV2gru_103_while_placeholdergru_103/while/add/y:output:0*
T0*
_output_shapes
: 2
gru_103/while/addp
gru_103/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru_103/while/add_1/y
gru_103/while/add_1AddV2(gru_103_while_gru_103_while_loop_countergru_103/while/add_1/y:output:0*
T0*
_output_shapes
: 2
gru_103/while/add_1·
gru_103/while/IdentityIdentitygru_103/while/add_1:z:02^gru_103/while/gru_cell_103/BiasAdd/ReadVariableOp1^gru_103/while/gru_cell_103/MatMul/ReadVariableOp*^gru_103/while/gru_cell_103/ReadVariableOp,^gru_103/while/gru_cell_103/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_103/while/IdentityÒ
gru_103/while/Identity_1Identity.gru_103_while_gru_103_while_maximum_iterations2^gru_103/while/gru_cell_103/BiasAdd/ReadVariableOp1^gru_103/while/gru_cell_103/MatMul/ReadVariableOp*^gru_103/while/gru_cell_103/ReadVariableOp,^gru_103/while/gru_cell_103/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_103/while/Identity_1¹
gru_103/while/Identity_2Identitygru_103/while/add:z:02^gru_103/while/gru_cell_103/BiasAdd/ReadVariableOp1^gru_103/while/gru_cell_103/MatMul/ReadVariableOp*^gru_103/while/gru_cell_103/ReadVariableOp,^gru_103/while/gru_cell_103/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_103/while/Identity_2æ
gru_103/while/Identity_3IdentityBgru_103/while/TensorArrayV2Write/TensorListSetItem:output_handle:02^gru_103/while/gru_cell_103/BiasAdd/ReadVariableOp1^gru_103/while/gru_cell_103/MatMul/ReadVariableOp*^gru_103/while/gru_cell_103/ReadVariableOp,^gru_103/while/gru_cell_103/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_103/while/Identity_3Ú
gru_103/while/Identity_4Identity$gru_103/while/gru_cell_103/add_3:z:02^gru_103/while/gru_cell_103/BiasAdd/ReadVariableOp1^gru_103/while/gru_cell_103/MatMul/ReadVariableOp*^gru_103/while/gru_cell_103/ReadVariableOp,^gru_103/while/gru_cell_103/ReadVariableOp_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_103/while/Identity_4"P
%gru_103_while_gru_103_strided_slice_1'gru_103_while_gru_103_strided_slice_1_0"z
:gru_103_while_gru_cell_103_biasadd_readvariableop_resource<gru_103_while_gru_cell_103_biasadd_readvariableop_resource_0"x
9gru_103_while_gru_cell_103_matmul_readvariableop_resource;gru_103_while_gru_cell_103_matmul_readvariableop_resource_0"j
2gru_103_while_gru_cell_103_readvariableop_resource4gru_103_while_gru_cell_103_readvariableop_resource_0"9
gru_103_while_identitygru_103/while/Identity:output:0"=
gru_103_while_identity_1!gru_103/while/Identity_1:output:0"=
gru_103_while_identity_2!gru_103/while/Identity_2:output:0"=
gru_103_while_identity_3!gru_103/while/Identity_3:output:0"=
gru_103_while_identity_4!gru_103/while/Identity_4:output:0"È
agru_103_while_tensorarrayv2read_tensorlistgetitem_gru_103_tensorarrayunstack_tensorlistfromtensorcgru_103_while_tensorarrayv2read_tensorlistgetitem_gru_103_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿÈ: : : : : 2f
1gru_103/while/gru_cell_103/BiasAdd/ReadVariableOp1gru_103/while/gru_cell_103/BiasAdd/ReadVariableOp2d
0gru_103/while/gru_cell_103/MatMul/ReadVariableOp0gru_103/while/gru_cell_103/MatMul/ReadVariableOp2V
)gru_103/while/gru_cell_103/ReadVariableOp)gru_103/while/gru_cell_103/ReadVariableOp2Z
+gru_103/while/gru_cell_103/ReadVariableOp_1+gru_103/while/gru_cell_103/ReadVariableOp_1: 
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
while_body_5226342
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_gru_cell_103_matmul_readvariableop_resource_0:	ØC
4while_gru_cell_103_biasadd_readvariableop_resource_0:	Ø@
,while_gru_cell_103_readvariableop_resource_0:
ÈØ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_gru_cell_103_matmul_readvariableop_resource:	ØA
2while_gru_cell_103_biasadd_readvariableop_resource:	Ø>
*while_gru_cell_103_readvariableop_resource:
ÈØ¢)while/gru_cell_103/BiasAdd/ReadVariableOp¢(while/gru_cell_103/MatMul/ReadVariableOp¢!while/gru_cell_103/ReadVariableOp¢#while/gru_cell_103/ReadVariableOp_1Ã
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
(while/gru_cell_103/MatMul/ReadVariableOpReadVariableOp3while_gru_cell_103_matmul_readvariableop_resource_0*
_output_shapes
:	Ø*
dtype02*
(while/gru_cell_103/MatMul/ReadVariableOp×
while/gru_cell_103/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/gru_cell_103/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
while/gru_cell_103/MatMulÈ
)while/gru_cell_103/BiasAdd/ReadVariableOpReadVariableOp4while_gru_cell_103_biasadd_readvariableop_resource_0*
_output_shapes	
:Ø*
dtype02+
)while/gru_cell_103/BiasAdd/ReadVariableOpÎ
while/gru_cell_103/BiasAddBiasAdd#while/gru_cell_103/MatMul:product:01while/gru_cell_103/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
while/gru_cell_103/BiasAdd
"while/gru_cell_103/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2$
"while/gru_cell_103/split/split_dimû
while/gru_cell_103/splitSplit+while/gru_cell_103/split/split_dim:output:0#while/gru_cell_103/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
while/gru_cell_103/splitµ
!while/gru_cell_103/ReadVariableOpReadVariableOp,while_gru_cell_103_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02#
!while/gru_cell_103/ReadVariableOp¡
&while/gru_cell_103/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/gru_cell_103/strided_slice/stack¥
(while/gru_cell_103/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_103/strided_slice/stack_1¥
(while/gru_cell_103/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_103/strided_slice/stack_2ð
 while/gru_cell_103/strided_sliceStridedSlice)while/gru_cell_103/ReadVariableOp:value:0/while/gru_cell_103/strided_slice/stack:output:01while/gru_cell_103/strided_slice/stack_1:output:01while/gru_cell_103/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2"
 while/gru_cell_103/strided_slice·
while/gru_cell_103/MatMul_1MatMulwhile_placeholder_2)while/gru_cell_103/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_103/MatMul_1
while/gru_cell_103/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2
while/gru_cell_103/Const
$while/gru_cell_103/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2&
$while/gru_cell_103/split_1/split_dim°
while/gru_cell_103/split_1SplitV%while/gru_cell_103/MatMul_1:product:0!while/gru_cell_103/Const:output:0-while/gru_cell_103/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2
while/gru_cell_103/split_1´
while/gru_cell_103/addAddV2!while/gru_cell_103/split:output:0#while/gru_cell_103/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_103/add
while/gru_cell_103/SigmoidSigmoidwhile/gru_cell_103/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_103/Sigmoid¸
while/gru_cell_103/add_1AddV2!while/gru_cell_103/split:output:1#while/gru_cell_103/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_103/add_1
while/gru_cell_103/Sigmoid_1Sigmoidwhile/gru_cell_103/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_103/Sigmoid_1¡
while/gru_cell_103/mulMul while/gru_cell_103/Sigmoid_1:y:0while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_103/mul¹
#while/gru_cell_103/ReadVariableOp_1ReadVariableOp,while_gru_cell_103_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02%
#while/gru_cell_103/ReadVariableOp_1¥
(while/gru_cell_103/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_103/strided_slice_1/stack©
*while/gru_cell_103/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/gru_cell_103/strided_slice_1/stack_1©
*while/gru_cell_103/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/gru_cell_103/strided_slice_1/stack_2ü
"while/gru_cell_103/strided_slice_1StridedSlice+while/gru_cell_103/ReadVariableOp_1:value:01while/gru_cell_103/strided_slice_1/stack:output:03while/gru_cell_103/strided_slice_1/stack_1:output:03while/gru_cell_103/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2$
"while/gru_cell_103/strided_slice_1À
while/gru_cell_103/MatMul_2MatMulwhile/gru_cell_103/mul:z:0+while/gru_cell_103/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_103/MatMul_2º
while/gru_cell_103/add_2AddV2!while/gru_cell_103/split:output:2%while/gru_cell_103/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_103/add_2
while/gru_cell_103/ReluReluwhile/gru_cell_103/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_103/Relu£
while/gru_cell_103/mul_1Mulwhile/gru_cell_103/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_103/mul_1y
while/gru_cell_103/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
while/gru_cell_103/sub/x­
while/gru_cell_103/subSub!while/gru_cell_103/sub/x:output:0while/gru_cell_103/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_103/sub±
while/gru_cell_103/mul_2Mulwhile/gru_cell_103/sub:z:0%while/gru_cell_103/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_103/mul_2¬
while/gru_cell_103/add_3AddV2while/gru_cell_103/mul_1:z:0while/gru_cell_103/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_103/add_3à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_103/add_3:z:0*
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
while/IdentityIdentitywhile/add_1:z:0*^while/gru_cell_103/BiasAdd/ReadVariableOp)^while/gru_cell_103/MatMul/ReadVariableOp"^while/gru_cell_103/ReadVariableOp$^while/gru_cell_103/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations*^while/gru_cell_103/BiasAdd/ReadVariableOp)^while/gru_cell_103/MatMul/ReadVariableOp"^while/gru_cell_103/ReadVariableOp$^while/gru_cell_103/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:0*^while/gru_cell_103/BiasAdd/ReadVariableOp)^while/gru_cell_103/MatMul/ReadVariableOp"^while/gru_cell_103/ReadVariableOp$^while/gru_cell_103/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_2®
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/gru_cell_103/BiasAdd/ReadVariableOp)^while/gru_cell_103/MatMul/ReadVariableOp"^while/gru_cell_103/ReadVariableOp$^while/gru_cell_103/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_3¢
while/Identity_4Identitywhile/gru_cell_103/add_3:z:0*^while/gru_cell_103/BiasAdd/ReadVariableOp)^while/gru_cell_103/MatMul/ReadVariableOp"^while/gru_cell_103/ReadVariableOp$^while/gru_cell_103/ReadVariableOp_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_4"j
2while_gru_cell_103_biasadd_readvariableop_resource4while_gru_cell_103_biasadd_readvariableop_resource_0"h
1while_gru_cell_103_matmul_readvariableop_resource3while_gru_cell_103_matmul_readvariableop_resource_0"Z
*while_gru_cell_103_readvariableop_resource,while_gru_cell_103_readvariableop_resource_0")
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
)while/gru_cell_103/BiasAdd/ReadVariableOp)while/gru_cell_103/BiasAdd/ReadVariableOp2T
(while/gru_cell_103/MatMul/ReadVariableOp(while/gru_cell_103/MatMul/ReadVariableOp2F
!while/gru_cell_103/ReadVariableOp!while/gru_cell_103/ReadVariableOp2J
#while/gru_cell_103/ReadVariableOp_1#while/gru_cell_103/ReadVariableOp_1: 
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
gru_103_while_cond_5225764,
(gru_103_while_gru_103_while_loop_counter2
.gru_103_while_gru_103_while_maximum_iterations
gru_103_while_placeholder
gru_103_while_placeholder_1
gru_103_while_placeholder_2.
*gru_103_while_less_gru_103_strided_slice_1E
Agru_103_while_gru_103_while_cond_5225764___redundant_placeholder0E
Agru_103_while_gru_103_while_cond_5225764___redundant_placeholder1E
Agru_103_while_gru_103_while_cond_5225764___redundant_placeholder2E
Agru_103_while_gru_103_while_cond_5225764___redundant_placeholder3
gru_103_while_identity

gru_103/while/LessLessgru_103_while_placeholder*gru_103_while_less_gru_103_strided_slice_1*
T0*
_output_shapes
: 2
gru_103/while/Lessu
gru_103/while/IdentityIdentitygru_103/while/Less:z:0*
T0
*
_output_shapes
: 2
gru_103/while/Identity"9
gru_103_while_identitygru_103/while/Identity:output:0*(
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
¶

Ú
.__inference_gru_cell_103_layer_call_fn_5226969

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
I__inference_gru_cell_103_layer_call_and_return_conditional_losses_52245792
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
#
½
while_body_5224796
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_gru_cell_103_5224818_0:	Ø+
while_gru_cell_103_5224820_0:	Ø0
while_gru_cell_103_5224822_0:
ÈØ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_gru_cell_103_5224818:	Ø)
while_gru_cell_103_5224820:	Ø.
while_gru_cell_103_5224822:
ÈØ¢*while/gru_cell_103/StatefulPartitionedCallÃ
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
*while/gru_cell_103/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_gru_cell_103_5224818_0while_gru_cell_103_5224820_0while_gru_cell_103_5224822_0*
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
I__inference_gru_cell_103_layer_call_and_return_conditional_losses_52247292,
*while/gru_cell_103/StatefulPartitionedCall÷
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/gru_cell_103/StatefulPartitionedCall:output:0*
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
while/IdentityIdentitywhile/add_1:z:0+^while/gru_cell_103/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations+^while/gru_cell_103/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:0+^while/gru_cell_103/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2º
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/gru_cell_103/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3Å
while/Identity_4Identity3while/gru_cell_103/StatefulPartitionedCall:output:1+^while/gru_cell_103/StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_4":
while_gru_cell_103_5224818while_gru_cell_103_5224818_0":
while_gru_cell_103_5224820while_gru_cell_103_5224820_0":
while_gru_cell_103_5224822while_gru_cell_103_5224822_0")
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
*while/gru_cell_103/StatefulPartitionedCall*while/gru_cell_103/StatefulPartitionedCall: 
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
K__inference_sequential_103_layer_call_and_return_conditional_losses_5225642
gru_103_input"
gru_103_5225624:	Ø
gru_103_5225626:	Ø#
gru_103_5225628:
ÈØ$
dense_206_5225631:	Èd
dense_206_5225633:d#
dense_207_5225636:d
dense_207_5225638:
identity¢!dense_206/StatefulPartitionedCall¢!dense_207/StatefulPartitionedCall¢gru_103/StatefulPartitionedCall­
gru_103/StatefulPartitionedCallStatefulPartitionedCallgru_103_inputgru_103_5225624gru_103_5225626gru_103_5225628*
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
D__inference_gru_103_layer_call_and_return_conditional_losses_52252712!
gru_103/StatefulPartitionedCall¾
!dense_206/StatefulPartitionedCallStatefulPartitionedCall(gru_103/StatefulPartitionedCall:output:0dense_206_5225631dense_206_5225633*
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
F__inference_dense_206_layer_call_and_return_conditional_losses_52252902#
!dense_206/StatefulPartitionedCallÀ
!dense_207/StatefulPartitionedCallStatefulPartitionedCall*dense_206/StatefulPartitionedCall:output:0dense_207_5225636dense_207_5225638*
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
F__inference_dense_207_layer_call_and_return_conditional_losses_52253062#
!dense_207/StatefulPartitionedCallè
IdentityIdentity*dense_207/StatefulPartitionedCall:output:0"^dense_206/StatefulPartitionedCall"^dense_207/StatefulPartitionedCall ^gru_103/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2F
!dense_206/StatefulPartitionedCall!dense_206/StatefulPartitionedCall2F
!dense_207/StatefulPartitionedCall!dense_207/StatefulPartitionedCall2B
gru_103/StatefulPartitionedCallgru_103/StatefulPartitionedCall:Z V
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'
_user_specified_namegru_103_input

¯
while_cond_5226170
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_5226170___redundant_placeholder05
1while_while_cond_5226170___redundant_placeholder15
1while_while_cond_5226170___redundant_placeholder25
1while_while_cond_5226170___redundant_placeholder3
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

Ê
K__inference_sequential_103_layer_call_and_return_conditional_losses_5225313

inputs"
gru_103_5225272:	Ø
gru_103_5225274:	Ø#
gru_103_5225276:
ÈØ$
dense_206_5225291:	Èd
dense_206_5225293:d#
dense_207_5225307:d
dense_207_5225309:
identity¢!dense_206/StatefulPartitionedCall¢!dense_207/StatefulPartitionedCall¢gru_103/StatefulPartitionedCall¦
gru_103/StatefulPartitionedCallStatefulPartitionedCallinputsgru_103_5225272gru_103_5225274gru_103_5225276*
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
D__inference_gru_103_layer_call_and_return_conditional_losses_52252712!
gru_103/StatefulPartitionedCall¾
!dense_206/StatefulPartitionedCallStatefulPartitionedCall(gru_103/StatefulPartitionedCall:output:0dense_206_5225291dense_206_5225293*
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
F__inference_dense_206_layer_call_and_return_conditional_losses_52252902#
!dense_206/StatefulPartitionedCallÀ
!dense_207/StatefulPartitionedCallStatefulPartitionedCall*dense_206/StatefulPartitionedCall:output:0dense_207_5225307dense_207_5225309*
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
F__inference_dense_207_layer_call_and_return_conditional_losses_52253062#
!dense_207/StatefulPartitionedCallè
IdentityIdentity*dense_207/StatefulPartitionedCall:output:0"^dense_206/StatefulPartitionedCall"^dense_207/StatefulPartitionedCall ^gru_103/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2F
!dense_206/StatefulPartitionedCall!dense_206/StatefulPartitionedCall2F
!dense_207/StatefulPartitionedCall!dense_207/StatefulPartitionedCall2B
gru_103/StatefulPartitionedCallgru_103/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ôi
«
D__inference_gru_103_layer_call_and_return_conditional_losses_5226609

inputs>
+gru_cell_103_matmul_readvariableop_resource:	Ø;
,gru_cell_103_biasadd_readvariableop_resource:	Ø8
$gru_cell_103_readvariableop_resource:
ÈØ
identity¢#gru_cell_103/BiasAdd/ReadVariableOp¢"gru_cell_103/MatMul/ReadVariableOp¢gru_cell_103/ReadVariableOp¢gru_cell_103/ReadVariableOp_1¢whileD
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
"gru_cell_103/MatMul/ReadVariableOpReadVariableOp+gru_cell_103_matmul_readvariableop_resource*
_output_shapes
:	Ø*
dtype02$
"gru_cell_103/MatMul/ReadVariableOp­
gru_cell_103/MatMulMatMulstrided_slice_2:output:0*gru_cell_103/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_cell_103/MatMul´
#gru_cell_103/BiasAdd/ReadVariableOpReadVariableOp,gru_cell_103_biasadd_readvariableop_resource*
_output_shapes	
:Ø*
dtype02%
#gru_cell_103/BiasAdd/ReadVariableOp¶
gru_cell_103/BiasAddBiasAddgru_cell_103/MatMul:product:0+gru_cell_103/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_cell_103/BiasAdd
gru_cell_103/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
gru_cell_103/split/split_dimã
gru_cell_103/splitSplit%gru_cell_103/split/split_dim:output:0gru_cell_103/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
gru_cell_103/split¡
gru_cell_103/ReadVariableOpReadVariableOp$gru_cell_103_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02
gru_cell_103/ReadVariableOp
 gru_cell_103/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2"
 gru_cell_103/strided_slice/stack
"gru_cell_103/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_103/strided_slice/stack_1
"gru_cell_103/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_103/strided_slice/stack_2Ì
gru_cell_103/strided_sliceStridedSlice#gru_cell_103/ReadVariableOp:value:0)gru_cell_103/strided_slice/stack:output:0+gru_cell_103/strided_slice/stack_1:output:0+gru_cell_103/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2
gru_cell_103/strided_slice 
gru_cell_103/MatMul_1MatMulzeros:output:0#gru_cell_103/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_103/MatMul_1}
gru_cell_103/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2
gru_cell_103/Const
gru_cell_103/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2 
gru_cell_103/split_1/split_dim
gru_cell_103/split_1SplitVgru_cell_103/MatMul_1:product:0gru_cell_103/Const:output:0'gru_cell_103/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2
gru_cell_103/split_1
gru_cell_103/addAddV2gru_cell_103/split:output:0gru_cell_103/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_103/add
gru_cell_103/SigmoidSigmoidgru_cell_103/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_103/Sigmoid 
gru_cell_103/add_1AddV2gru_cell_103/split:output:1gru_cell_103/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_103/add_1
gru_cell_103/Sigmoid_1Sigmoidgru_cell_103/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_103/Sigmoid_1
gru_cell_103/mulMulgru_cell_103/Sigmoid_1:y:0zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_103/mul¥
gru_cell_103/ReadVariableOp_1ReadVariableOp$gru_cell_103_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02
gru_cell_103/ReadVariableOp_1
"gru_cell_103/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2$
"gru_cell_103/strided_slice_1/stack
$gru_cell_103/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2&
$gru_cell_103/strided_slice_1/stack_1
$gru_cell_103/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2&
$gru_cell_103/strided_slice_1/stack_2Ø
gru_cell_103/strided_slice_1StridedSlice%gru_cell_103/ReadVariableOp_1:value:0+gru_cell_103/strided_slice_1/stack:output:0-gru_cell_103/strided_slice_1/stack_1:output:0-gru_cell_103/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2
gru_cell_103/strided_slice_1¨
gru_cell_103/MatMul_2MatMulgru_cell_103/mul:z:0%gru_cell_103/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_103/MatMul_2¢
gru_cell_103/add_2AddV2gru_cell_103/split:output:2gru_cell_103/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_103/add_2y
gru_cell_103/ReluRelugru_cell_103/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_103/Relu
gru_cell_103/mul_1Mulgru_cell_103/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_103/mul_1m
gru_cell_103/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_103/sub/x
gru_cell_103/subSubgru_cell_103/sub/x:output:0gru_cell_103/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_103/sub
gru_cell_103/mul_2Mulgru_cell_103/sub:z:0gru_cell_103/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_103/mul_2
gru_cell_103/add_3AddV2gru_cell_103/mul_1:z:0gru_cell_103/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_103/add_3
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+gru_cell_103_matmul_readvariableop_resource,gru_cell_103_biasadd_readvariableop_resource$gru_cell_103_readvariableop_resource*
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
while_body_5226513*
condR
while_cond_5226512*9
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
IdentityIdentitystrided_slice_3:output:0$^gru_cell_103/BiasAdd/ReadVariableOp#^gru_cell_103/MatMul/ReadVariableOp^gru_cell_103/ReadVariableOp^gru_cell_103/ReadVariableOp_1^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2J
#gru_cell_103/BiasAdd/ReadVariableOp#gru_cell_103/BiasAdd/ReadVariableOp2H
"gru_cell_103/MatMul/ReadVariableOp"gru_cell_103/MatMul/ReadVariableOp2:
gru_cell_103/ReadVariableOpgru_cell_103/ReadVariableOp2>
gru_cell_103/ReadVariableOp_1gru_cell_103/ReadVariableOp_12
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

¯
while_cond_5225174
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_5225174___redundant_placeholder05
1while_while_cond_5225174___redundant_placeholder15
1while_while_cond_5225174___redundant_placeholder25
1while_while_cond_5225174___redundant_placeholder3
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
Y
¯
while_body_5225175
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_gru_cell_103_matmul_readvariableop_resource_0:	ØC
4while_gru_cell_103_biasadd_readvariableop_resource_0:	Ø@
,while_gru_cell_103_readvariableop_resource_0:
ÈØ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_gru_cell_103_matmul_readvariableop_resource:	ØA
2while_gru_cell_103_biasadd_readvariableop_resource:	Ø>
*while_gru_cell_103_readvariableop_resource:
ÈØ¢)while/gru_cell_103/BiasAdd/ReadVariableOp¢(while/gru_cell_103/MatMul/ReadVariableOp¢!while/gru_cell_103/ReadVariableOp¢#while/gru_cell_103/ReadVariableOp_1Ã
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
(while/gru_cell_103/MatMul/ReadVariableOpReadVariableOp3while_gru_cell_103_matmul_readvariableop_resource_0*
_output_shapes
:	Ø*
dtype02*
(while/gru_cell_103/MatMul/ReadVariableOp×
while/gru_cell_103/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/gru_cell_103/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
while/gru_cell_103/MatMulÈ
)while/gru_cell_103/BiasAdd/ReadVariableOpReadVariableOp4while_gru_cell_103_biasadd_readvariableop_resource_0*
_output_shapes	
:Ø*
dtype02+
)while/gru_cell_103/BiasAdd/ReadVariableOpÎ
while/gru_cell_103/BiasAddBiasAdd#while/gru_cell_103/MatMul:product:01while/gru_cell_103/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
while/gru_cell_103/BiasAdd
"while/gru_cell_103/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2$
"while/gru_cell_103/split/split_dimû
while/gru_cell_103/splitSplit+while/gru_cell_103/split/split_dim:output:0#while/gru_cell_103/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
while/gru_cell_103/splitµ
!while/gru_cell_103/ReadVariableOpReadVariableOp,while_gru_cell_103_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02#
!while/gru_cell_103/ReadVariableOp¡
&while/gru_cell_103/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&while/gru_cell_103/strided_slice/stack¥
(while/gru_cell_103/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_103/strided_slice/stack_1¥
(while/gru_cell_103/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_103/strided_slice/stack_2ð
 while/gru_cell_103/strided_sliceStridedSlice)while/gru_cell_103/ReadVariableOp:value:0/while/gru_cell_103/strided_slice/stack:output:01while/gru_cell_103/strided_slice/stack_1:output:01while/gru_cell_103/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2"
 while/gru_cell_103/strided_slice·
while/gru_cell_103/MatMul_1MatMulwhile_placeholder_2)while/gru_cell_103/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_103/MatMul_1
while/gru_cell_103/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2
while/gru_cell_103/Const
$while/gru_cell_103/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2&
$while/gru_cell_103/split_1/split_dim°
while/gru_cell_103/split_1SplitV%while/gru_cell_103/MatMul_1:product:0!while/gru_cell_103/Const:output:0-while/gru_cell_103/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2
while/gru_cell_103/split_1´
while/gru_cell_103/addAddV2!while/gru_cell_103/split:output:0#while/gru_cell_103/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_103/add
while/gru_cell_103/SigmoidSigmoidwhile/gru_cell_103/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_103/Sigmoid¸
while/gru_cell_103/add_1AddV2!while/gru_cell_103/split:output:1#while/gru_cell_103/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_103/add_1
while/gru_cell_103/Sigmoid_1Sigmoidwhile/gru_cell_103/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_103/Sigmoid_1¡
while/gru_cell_103/mulMul while/gru_cell_103/Sigmoid_1:y:0while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_103/mul¹
#while/gru_cell_103/ReadVariableOp_1ReadVariableOp,while_gru_cell_103_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02%
#while/gru_cell_103/ReadVariableOp_1¥
(while/gru_cell_103/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2*
(while/gru_cell_103/strided_slice_1/stack©
*while/gru_cell_103/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*while/gru_cell_103/strided_slice_1/stack_1©
*while/gru_cell_103/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*while/gru_cell_103/strided_slice_1/stack_2ü
"while/gru_cell_103/strided_slice_1StridedSlice+while/gru_cell_103/ReadVariableOp_1:value:01while/gru_cell_103/strided_slice_1/stack:output:03while/gru_cell_103/strided_slice_1/stack_1:output:03while/gru_cell_103/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2$
"while/gru_cell_103/strided_slice_1À
while/gru_cell_103/MatMul_2MatMulwhile/gru_cell_103/mul:z:0+while/gru_cell_103/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_103/MatMul_2º
while/gru_cell_103/add_2AddV2!while/gru_cell_103/split:output:2%while/gru_cell_103/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_103/add_2
while/gru_cell_103/ReluReluwhile/gru_cell_103/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_103/Relu£
while/gru_cell_103/mul_1Mulwhile/gru_cell_103/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_103/mul_1y
while/gru_cell_103/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
while/gru_cell_103/sub/x­
while/gru_cell_103/subSub!while/gru_cell_103/sub/x:output:0while/gru_cell_103/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_103/sub±
while/gru_cell_103/mul_2Mulwhile/gru_cell_103/sub:z:0%while/gru_cell_103/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_103/mul_2¬
while/gru_cell_103/add_3AddV2while/gru_cell_103/mul_1:z:0while/gru_cell_103/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_103/add_3à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_103/add_3:z:0*
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
while/IdentityIdentitywhile/add_1:z:0*^while/gru_cell_103/BiasAdd/ReadVariableOp)^while/gru_cell_103/MatMul/ReadVariableOp"^while/gru_cell_103/ReadVariableOp$^while/gru_cell_103/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations*^while/gru_cell_103/BiasAdd/ReadVariableOp)^while/gru_cell_103/MatMul/ReadVariableOp"^while/gru_cell_103/ReadVariableOp$^while/gru_cell_103/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:0*^while/gru_cell_103/BiasAdd/ReadVariableOp)^while/gru_cell_103/MatMul/ReadVariableOp"^while/gru_cell_103/ReadVariableOp$^while/gru_cell_103/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_2®
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/gru_cell_103/BiasAdd/ReadVariableOp)^while/gru_cell_103/MatMul/ReadVariableOp"^while/gru_cell_103/ReadVariableOp$^while/gru_cell_103/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_3¢
while/Identity_4Identitywhile/gru_cell_103/add_3:z:0*^while/gru_cell_103/BiasAdd/ReadVariableOp)^while/gru_cell_103/MatMul/ReadVariableOp"^while/gru_cell_103/ReadVariableOp$^while/gru_cell_103/ReadVariableOp_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_4"j
2while_gru_cell_103_biasadd_readvariableop_resource4while_gru_cell_103_biasadd_readvariableop_resource_0"h
1while_gru_cell_103_matmul_readvariableop_resource3while_gru_cell_103_matmul_readvariableop_resource_0"Z
*while_gru_cell_103_readvariableop_resource,while_gru_cell_103_readvariableop_resource_0")
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
)while/gru_cell_103/BiasAdd/ReadVariableOp)while/gru_cell_103/BiasAdd/ReadVariableOp2T
(while/gru_cell_103/MatMul/ReadVariableOp(while/gru_cell_103/MatMul/ReadVariableOp2F
!while/gru_cell_103/ReadVariableOp!while/gru_cell_103/ReadVariableOp2J
#while/gru_cell_103/ReadVariableOp_1#while/gru_cell_103/ReadVariableOp_1: 
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
while_cond_5225437
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_5225437___redundant_placeholder05
1while_while_cond_5225437___redundant_placeholder15
1while_while_cond_5225437___redundant_placeholder25
1while_while_cond_5225437___redundant_placeholder3
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
í
¹
)__inference_gru_103_layer_call_fn_5226791
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
D__inference_gru_103_layer_call_and_return_conditional_losses_52246562
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
{

#__inference__traced_restore_5227184
file_prefix4
!assignvariableop_dense_206_kernel:	Èd/
!assignvariableop_1_dense_206_bias:d5
#assignvariableop_2_dense_207_kernel:d/
!assignvariableop_3_dense_207_bias:&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: A
.assignvariableop_9_gru_103_gru_cell_103_kernel:	ØM
9assignvariableop_10_gru_103_gru_cell_103_recurrent_kernel:
ÈØ<
-assignvariableop_11_gru_103_gru_cell_103_bias:	Ø#
assignvariableop_12_total: #
assignvariableop_13_count: >
+assignvariableop_14_adam_dense_206_kernel_m:	Èd7
)assignvariableop_15_adam_dense_206_bias_m:d=
+assignvariableop_16_adam_dense_207_kernel_m:d7
)assignvariableop_17_adam_dense_207_bias_m:I
6assignvariableop_18_adam_gru_103_gru_cell_103_kernel_m:	ØT
@assignvariableop_19_adam_gru_103_gru_cell_103_recurrent_kernel_m:
ÈØC
4assignvariableop_20_adam_gru_103_gru_cell_103_bias_m:	Ø>
+assignvariableop_21_adam_dense_206_kernel_v:	Èd7
)assignvariableop_22_adam_dense_206_bias_v:d=
+assignvariableop_23_adam_dense_207_kernel_v:d7
)assignvariableop_24_adam_dense_207_bias_v:I
6assignvariableop_25_adam_gru_103_gru_cell_103_kernel_v:	ØT
@assignvariableop_26_adam_gru_103_gru_cell_103_recurrent_kernel_v:
ÈØC
4assignvariableop_27_adam_gru_103_gru_cell_103_bias_v:	Ø
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_206_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1¦
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_206_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2¨
AssignVariableOp_2AssignVariableOp#assignvariableop_2_dense_207_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3¦
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_207_biasIdentity_3:output:0"/device:CPU:0*
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
AssignVariableOp_9AssignVariableOp.assignvariableop_9_gru_103_gru_cell_103_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10Á
AssignVariableOp_10AssignVariableOp9assignvariableop_10_gru_103_gru_cell_103_recurrent_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11µ
AssignVariableOp_11AssignVariableOp-assignvariableop_11_gru_103_gru_cell_103_biasIdentity_11:output:0"/device:CPU:0*
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
AssignVariableOp_14AssignVariableOp+assignvariableop_14_adam_dense_206_kernel_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15±
AssignVariableOp_15AssignVariableOp)assignvariableop_15_adam_dense_206_bias_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16³
AssignVariableOp_16AssignVariableOp+assignvariableop_16_adam_dense_207_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17±
AssignVariableOp_17AssignVariableOp)assignvariableop_17_adam_dense_207_bias_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18¾
AssignVariableOp_18AssignVariableOp6assignvariableop_18_adam_gru_103_gru_cell_103_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19È
AssignVariableOp_19AssignVariableOp@assignvariableop_19_adam_gru_103_gru_cell_103_recurrent_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20¼
AssignVariableOp_20AssignVariableOp4assignvariableop_20_adam_gru_103_gru_cell_103_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21³
AssignVariableOp_21AssignVariableOp+assignvariableop_21_adam_dense_206_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22±
AssignVariableOp_22AssignVariableOp)assignvariableop_22_adam_dense_206_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23³
AssignVariableOp_23AssignVariableOp+assignvariableop_23_adam_dense_207_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24±
AssignVariableOp_24AssignVariableOp)assignvariableop_24_adam_dense_207_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25¾
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_gru_103_gru_cell_103_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26È
AssignVariableOp_26AssignVariableOp@assignvariableop_26_adam_gru_103_gru_cell_103_recurrent_kernel_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27¼
AssignVariableOp_27AssignVariableOp4assignvariableop_27_adam_gru_103_gru_cell_103_bias_vIdentity_27:output:0"/device:CPU:0*
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
ë
§
%__inference_signature_wrapper_5225690
gru_103_input
unknown:	Ø
	unknown_0:	Ø
	unknown_1:
ÈØ
	unknown_2:	Èd
	unknown_3:d
	unknown_4:d
	unknown_5:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallgru_103_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
"__inference__wrapped_model_52244982
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
_user_specified_namegru_103_input
Õ
·
)__inference_gru_103_layer_call_fn_5226824

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
D__inference_gru_103_layer_call_and_return_conditional_losses_52255342
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
Â
ç
K__inference_sequential_103_layer_call_and_return_conditional_losses_5225874

inputsF
3gru_103_gru_cell_103_matmul_readvariableop_resource:	ØC
4gru_103_gru_cell_103_biasadd_readvariableop_resource:	Ø@
,gru_103_gru_cell_103_readvariableop_resource:
ÈØ;
(dense_206_matmul_readvariableop_resource:	Èd7
)dense_206_biasadd_readvariableop_resource:d:
(dense_207_matmul_readvariableop_resource:d7
)dense_207_biasadd_readvariableop_resource:
identity¢ dense_206/BiasAdd/ReadVariableOp¢dense_206/MatMul/ReadVariableOp¢ dense_207/BiasAdd/ReadVariableOp¢dense_207/MatMul/ReadVariableOp¢+gru_103/gru_cell_103/BiasAdd/ReadVariableOp¢*gru_103/gru_cell_103/MatMul/ReadVariableOp¢#gru_103/gru_cell_103/ReadVariableOp¢%gru_103/gru_cell_103/ReadVariableOp_1¢gru_103/whileT
gru_103/ShapeShapeinputs*
T0*
_output_shapes
:2
gru_103/Shape
gru_103/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_103/strided_slice/stack
gru_103/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_103/strided_slice/stack_1
gru_103/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_103/strided_slice/stack_2
gru_103/strided_sliceStridedSlicegru_103/Shape:output:0$gru_103/strided_slice/stack:output:0&gru_103/strided_slice/stack_1:output:0&gru_103/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru_103/strided_slicem
gru_103/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :È2
gru_103/zeros/mul/y
gru_103/zeros/mulMulgru_103/strided_slice:output:0gru_103/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
gru_103/zeros/mulo
gru_103/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
gru_103/zeros/Less/y
gru_103/zeros/LessLessgru_103/zeros/mul:z:0gru_103/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
gru_103/zeros/Lesss
gru_103/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :È2
gru_103/zeros/packed/1£
gru_103/zeros/packedPackgru_103/strided_slice:output:0gru_103/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
gru_103/zeros/packedo
gru_103/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_103/zeros/Const
gru_103/zerosFillgru_103/zeros/packed:output:0gru_103/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_103/zeros
gru_103/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_103/transpose/perm
gru_103/transpose	Transposeinputsgru_103/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_103/transposeg
gru_103/Shape_1Shapegru_103/transpose:y:0*
T0*
_output_shapes
:2
gru_103/Shape_1
gru_103/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_103/strided_slice_1/stack
gru_103/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
gru_103/strided_slice_1/stack_1
gru_103/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
gru_103/strided_slice_1/stack_2
gru_103/strided_slice_1StridedSlicegru_103/Shape_1:output:0&gru_103/strided_slice_1/stack:output:0(gru_103/strided_slice_1/stack_1:output:0(gru_103/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru_103/strided_slice_1
#gru_103/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2%
#gru_103/TensorArrayV2/element_shapeÒ
gru_103/TensorArrayV2TensorListReserve,gru_103/TensorArrayV2/element_shape:output:0 gru_103/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_103/TensorArrayV2Ï
=gru_103/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2?
=gru_103/TensorArrayUnstack/TensorListFromTensor/element_shape
/gru_103/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorgru_103/transpose:y:0Fgru_103/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type021
/gru_103/TensorArrayUnstack/TensorListFromTensor
gru_103/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_103/strided_slice_2/stack
gru_103/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
gru_103/strided_slice_2/stack_1
gru_103/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
gru_103/strided_slice_2/stack_2¬
gru_103/strided_slice_2StridedSlicegru_103/transpose:y:0&gru_103/strided_slice_2/stack:output:0(gru_103/strided_slice_2/stack_1:output:0(gru_103/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
gru_103/strided_slice_2Í
*gru_103/gru_cell_103/MatMul/ReadVariableOpReadVariableOp3gru_103_gru_cell_103_matmul_readvariableop_resource*
_output_shapes
:	Ø*
dtype02,
*gru_103/gru_cell_103/MatMul/ReadVariableOpÍ
gru_103/gru_cell_103/MatMulMatMul gru_103/strided_slice_2:output:02gru_103/gru_cell_103/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_103/gru_cell_103/MatMulÌ
+gru_103/gru_cell_103/BiasAdd/ReadVariableOpReadVariableOp4gru_103_gru_cell_103_biasadd_readvariableop_resource*
_output_shapes	
:Ø*
dtype02-
+gru_103/gru_cell_103/BiasAdd/ReadVariableOpÖ
gru_103/gru_cell_103/BiasAddBiasAdd%gru_103/gru_cell_103/MatMul:product:03gru_103/gru_cell_103/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_103/gru_cell_103/BiasAdd
$gru_103/gru_cell_103/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2&
$gru_103/gru_cell_103/split/split_dim
gru_103/gru_cell_103/splitSplit-gru_103/gru_cell_103/split/split_dim:output:0%gru_103/gru_cell_103/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
gru_103/gru_cell_103/split¹
#gru_103/gru_cell_103/ReadVariableOpReadVariableOp,gru_103_gru_cell_103_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02%
#gru_103/gru_cell_103/ReadVariableOp¥
(gru_103/gru_cell_103/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2*
(gru_103/gru_cell_103/strided_slice/stack©
*gru_103/gru_cell_103/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2,
*gru_103/gru_cell_103/strided_slice/stack_1©
*gru_103/gru_cell_103/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*gru_103/gru_cell_103/strided_slice/stack_2ü
"gru_103/gru_cell_103/strided_sliceStridedSlice+gru_103/gru_cell_103/ReadVariableOp:value:01gru_103/gru_cell_103/strided_slice/stack:output:03gru_103/gru_cell_103/strided_slice/stack_1:output:03gru_103/gru_cell_103/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2$
"gru_103/gru_cell_103/strided_sliceÀ
gru_103/gru_cell_103/MatMul_1MatMulgru_103/zeros:output:0+gru_103/gru_cell_103/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_103/gru_cell_103/MatMul_1
gru_103/gru_cell_103/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2
gru_103/gru_cell_103/Const
&gru_103/gru_cell_103/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2(
&gru_103/gru_cell_103/split_1/split_dimº
gru_103/gru_cell_103/split_1SplitV'gru_103/gru_cell_103/MatMul_1:product:0#gru_103/gru_cell_103/Const:output:0/gru_103/gru_cell_103/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2
gru_103/gru_cell_103/split_1¼
gru_103/gru_cell_103/addAddV2#gru_103/gru_cell_103/split:output:0%gru_103/gru_cell_103/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_103/gru_cell_103/add
gru_103/gru_cell_103/SigmoidSigmoidgru_103/gru_cell_103/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_103/gru_cell_103/SigmoidÀ
gru_103/gru_cell_103/add_1AddV2#gru_103/gru_cell_103/split:output:1%gru_103/gru_cell_103/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_103/gru_cell_103/add_1
gru_103/gru_cell_103/Sigmoid_1Sigmoidgru_103/gru_cell_103/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2 
gru_103/gru_cell_103/Sigmoid_1ª
gru_103/gru_cell_103/mulMul"gru_103/gru_cell_103/Sigmoid_1:y:0gru_103/zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_103/gru_cell_103/mul½
%gru_103/gru_cell_103/ReadVariableOp_1ReadVariableOp,gru_103_gru_cell_103_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02'
%gru_103/gru_cell_103/ReadVariableOp_1©
*gru_103/gru_cell_103/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2,
*gru_103/gru_cell_103/strided_slice_1/stack­
,gru_103/gru_cell_103/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2.
,gru_103/gru_cell_103/strided_slice_1/stack_1­
,gru_103/gru_cell_103/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2.
,gru_103/gru_cell_103/strided_slice_1/stack_2
$gru_103/gru_cell_103/strided_slice_1StridedSlice-gru_103/gru_cell_103/ReadVariableOp_1:value:03gru_103/gru_cell_103/strided_slice_1/stack:output:05gru_103/gru_cell_103/strided_slice_1/stack_1:output:05gru_103/gru_cell_103/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2&
$gru_103/gru_cell_103/strided_slice_1È
gru_103/gru_cell_103/MatMul_2MatMulgru_103/gru_cell_103/mul:z:0-gru_103/gru_cell_103/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_103/gru_cell_103/MatMul_2Â
gru_103/gru_cell_103/add_2AddV2#gru_103/gru_cell_103/split:output:2'gru_103/gru_cell_103/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_103/gru_cell_103/add_2
gru_103/gru_cell_103/ReluRelugru_103/gru_cell_103/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_103/gru_cell_103/Relu¬
gru_103/gru_cell_103/mul_1Mul gru_103/gru_cell_103/Sigmoid:y:0gru_103/zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_103/gru_cell_103/mul_1}
gru_103/gru_cell_103/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_103/gru_cell_103/sub/xµ
gru_103/gru_cell_103/subSub#gru_103/gru_cell_103/sub/x:output:0 gru_103/gru_cell_103/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_103/gru_cell_103/sub¹
gru_103/gru_cell_103/mul_2Mulgru_103/gru_cell_103/sub:z:0'gru_103/gru_cell_103/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_103/gru_cell_103/mul_2´
gru_103/gru_cell_103/add_3AddV2gru_103/gru_cell_103/mul_1:z:0gru_103/gru_cell_103/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_103/gru_cell_103/add_3
%gru_103/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÈ   2'
%gru_103/TensorArrayV2_1/element_shapeØ
gru_103/TensorArrayV2_1TensorListReserve.gru_103/TensorArrayV2_1/element_shape:output:0 gru_103/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_103/TensorArrayV2_1^
gru_103/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
gru_103/time
 gru_103/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2"
 gru_103/while/maximum_iterationsz
gru_103/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
gru_103/while/loop_counter 
gru_103/whileWhile#gru_103/while/loop_counter:output:0)gru_103/while/maximum_iterations:output:0gru_103/time:output:0 gru_103/TensorArrayV2_1:handle:0gru_103/zeros:output:0 gru_103/strided_slice_1:output:0?gru_103/TensorArrayUnstack/TensorListFromTensor:output_handle:03gru_103_gru_cell_103_matmul_readvariableop_resource4gru_103_gru_cell_103_biasadd_readvariableop_resource,gru_103_gru_cell_103_readvariableop_resource*
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
gru_103_while_body_5225765*&
condR
gru_103_while_cond_5225764*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿÈ: : : : : *
parallel_iterations 2
gru_103/whileÅ
8gru_103/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÈ   2:
8gru_103/TensorArrayV2Stack/TensorListStack/element_shape
*gru_103/TensorArrayV2Stack/TensorListStackTensorListStackgru_103/while:output:3Agru_103/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*
element_dtype02,
*gru_103/TensorArrayV2Stack/TensorListStack
gru_103/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
gru_103/strided_slice_3/stack
gru_103/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2!
gru_103/strided_slice_3/stack_1
gru_103/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
gru_103/strided_slice_3/stack_2Ë
gru_103/strided_slice_3StridedSlice3gru_103/TensorArrayV2Stack/TensorListStack:tensor:0&gru_103/strided_slice_3/stack:output:0(gru_103/strided_slice_3/stack_1:output:0(gru_103/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*
shrink_axis_mask2
gru_103/strided_slice_3
gru_103/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_103/transpose_1/permÆ
gru_103/transpose_1	Transpose3gru_103/TensorArrayV2Stack/TensorListStack:tensor:0!gru_103/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_103/transpose_1v
gru_103/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_103/runtime¬
dense_206/MatMul/ReadVariableOpReadVariableOp(dense_206_matmul_readvariableop_resource*
_output_shapes
:	Èd*
dtype02!
dense_206/MatMul/ReadVariableOp«
dense_206/MatMulMatMul gru_103/strided_slice_3:output:0'dense_206/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dense_206/MatMulª
 dense_206/BiasAdd/ReadVariableOpReadVariableOp)dense_206_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02"
 dense_206/BiasAdd/ReadVariableOp©
dense_206/BiasAddBiasAdddense_206/MatMul:product:0(dense_206/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dense_206/BiasAddv
dense_206/ReluReludense_206/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dense_206/Relu«
dense_207/MatMul/ReadVariableOpReadVariableOp(dense_207_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02!
dense_207/MatMul/ReadVariableOp§
dense_207/MatMulMatMuldense_206/Relu:activations:0'dense_207/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_207/MatMulª
 dense_207/BiasAdd/ReadVariableOpReadVariableOp)dense_207_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_207/BiasAdd/ReadVariableOp©
dense_207/BiasAddBiasAdddense_207/MatMul:product:0(dense_207/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_207/BiasAdd±
IdentityIdentitydense_207/BiasAdd:output:0!^dense_206/BiasAdd/ReadVariableOp ^dense_206/MatMul/ReadVariableOp!^dense_207/BiasAdd/ReadVariableOp ^dense_207/MatMul/ReadVariableOp,^gru_103/gru_cell_103/BiasAdd/ReadVariableOp+^gru_103/gru_cell_103/MatMul/ReadVariableOp$^gru_103/gru_cell_103/ReadVariableOp&^gru_103/gru_cell_103/ReadVariableOp_1^gru_103/while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2D
 dense_206/BiasAdd/ReadVariableOp dense_206/BiasAdd/ReadVariableOp2B
dense_206/MatMul/ReadVariableOpdense_206/MatMul/ReadVariableOp2D
 dense_207/BiasAdd/ReadVariableOp dense_207/BiasAdd/ReadVariableOp2B
dense_207/MatMul/ReadVariableOpdense_207/MatMul/ReadVariableOp2Z
+gru_103/gru_cell_103/BiasAdd/ReadVariableOp+gru_103/gru_cell_103/BiasAdd/ReadVariableOp2X
*gru_103/gru_cell_103/MatMul/ReadVariableOp*gru_103/gru_cell_103/MatMul/ReadVariableOp2J
#gru_103/gru_cell_103/ReadVariableOp#gru_103/gru_cell_103/ReadVariableOp2N
%gru_103/gru_cell_103/ReadVariableOp_1%gru_103/gru_cell_103/ReadVariableOp_12
gru_103/whilegru_103/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ä
)sequential_103_gru_103_while_cond_5224388J
Fsequential_103_gru_103_while_sequential_103_gru_103_while_loop_counterP
Lsequential_103_gru_103_while_sequential_103_gru_103_while_maximum_iterations,
(sequential_103_gru_103_while_placeholder.
*sequential_103_gru_103_while_placeholder_1.
*sequential_103_gru_103_while_placeholder_2L
Hsequential_103_gru_103_while_less_sequential_103_gru_103_strided_slice_1c
_sequential_103_gru_103_while_sequential_103_gru_103_while_cond_5224388___redundant_placeholder0c
_sequential_103_gru_103_while_sequential_103_gru_103_while_cond_5224388___redundant_placeholder1c
_sequential_103_gru_103_while_sequential_103_gru_103_while_cond_5224388___redundant_placeholder2c
_sequential_103_gru_103_while_sequential_103_gru_103_while_cond_5224388___redundant_placeholder3)
%sequential_103_gru_103_while_identity
ã
!sequential_103/gru_103/while/LessLess(sequential_103_gru_103_while_placeholderHsequential_103_gru_103_while_less_sequential_103_gru_103_strided_slice_1*
T0*
_output_shapes
: 2#
!sequential_103/gru_103/while/Less¢
%sequential_103/gru_103/while/IdentityIdentity%sequential_103/gru_103/while/Less:z:0*
T0
*
_output_shapes
: 2'
%sequential_103/gru_103/while/Identity"W
%sequential_103_gru_103_while_identity.sequential_103/gru_103/while/Identity:output:0*(
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

gru_103_while_body_5225765,
(gru_103_while_gru_103_while_loop_counter2
.gru_103_while_gru_103_while_maximum_iterations
gru_103_while_placeholder
gru_103_while_placeholder_1
gru_103_while_placeholder_2+
'gru_103_while_gru_103_strided_slice_1_0g
cgru_103_while_tensorarrayv2read_tensorlistgetitem_gru_103_tensorarrayunstack_tensorlistfromtensor_0N
;gru_103_while_gru_cell_103_matmul_readvariableop_resource_0:	ØK
<gru_103_while_gru_cell_103_biasadd_readvariableop_resource_0:	ØH
4gru_103_while_gru_cell_103_readvariableop_resource_0:
ÈØ
gru_103_while_identity
gru_103_while_identity_1
gru_103_while_identity_2
gru_103_while_identity_3
gru_103_while_identity_4)
%gru_103_while_gru_103_strided_slice_1e
agru_103_while_tensorarrayv2read_tensorlistgetitem_gru_103_tensorarrayunstack_tensorlistfromtensorL
9gru_103_while_gru_cell_103_matmul_readvariableop_resource:	ØI
:gru_103_while_gru_cell_103_biasadd_readvariableop_resource:	ØF
2gru_103_while_gru_cell_103_readvariableop_resource:
ÈØ¢1gru_103/while/gru_cell_103/BiasAdd/ReadVariableOp¢0gru_103/while/gru_cell_103/MatMul/ReadVariableOp¢)gru_103/while/gru_cell_103/ReadVariableOp¢+gru_103/while/gru_cell_103/ReadVariableOp_1Ó
?gru_103/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2A
?gru_103/while/TensorArrayV2Read/TensorListGetItem/element_shape
1gru_103/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemcgru_103_while_tensorarrayv2read_tensorlistgetitem_gru_103_tensorarrayunstack_tensorlistfromtensor_0gru_103_while_placeholderHgru_103/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype023
1gru_103/while/TensorArrayV2Read/TensorListGetItemá
0gru_103/while/gru_cell_103/MatMul/ReadVariableOpReadVariableOp;gru_103_while_gru_cell_103_matmul_readvariableop_resource_0*
_output_shapes
:	Ø*
dtype022
0gru_103/while/gru_cell_103/MatMul/ReadVariableOp÷
!gru_103/while/gru_cell_103/MatMulMatMul8gru_103/while/TensorArrayV2Read/TensorListGetItem:item:08gru_103/while/gru_cell_103/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2#
!gru_103/while/gru_cell_103/MatMulà
1gru_103/while/gru_cell_103/BiasAdd/ReadVariableOpReadVariableOp<gru_103_while_gru_cell_103_biasadd_readvariableop_resource_0*
_output_shapes	
:Ø*
dtype023
1gru_103/while/gru_cell_103/BiasAdd/ReadVariableOpî
"gru_103/while/gru_cell_103/BiasAddBiasAdd+gru_103/while/gru_cell_103/MatMul:product:09gru_103/while/gru_cell_103/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2$
"gru_103/while/gru_cell_103/BiasAdd£
*gru_103/while/gru_cell_103/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2,
*gru_103/while/gru_cell_103/split/split_dim
 gru_103/while/gru_cell_103/splitSplit3gru_103/while/gru_cell_103/split/split_dim:output:0+gru_103/while/gru_cell_103/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2"
 gru_103/while/gru_cell_103/splitÍ
)gru_103/while/gru_cell_103/ReadVariableOpReadVariableOp4gru_103_while_gru_cell_103_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02+
)gru_103/while/gru_cell_103/ReadVariableOp±
.gru_103/while/gru_cell_103/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        20
.gru_103/while/gru_cell_103/strided_slice/stackµ
0gru_103/while/gru_cell_103/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      22
0gru_103/while/gru_cell_103/strided_slice/stack_1µ
0gru_103/while/gru_cell_103/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0gru_103/while/gru_cell_103/strided_slice/stack_2 
(gru_103/while/gru_cell_103/strided_sliceStridedSlice1gru_103/while/gru_cell_103/ReadVariableOp:value:07gru_103/while/gru_cell_103/strided_slice/stack:output:09gru_103/while/gru_cell_103/strided_slice/stack_1:output:09gru_103/while/gru_cell_103/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2*
(gru_103/while/gru_cell_103/strided_slice×
#gru_103/while/gru_cell_103/MatMul_1MatMulgru_103_while_placeholder_21gru_103/while/gru_cell_103/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2%
#gru_103/while/gru_cell_103/MatMul_1
 gru_103/while/gru_cell_103/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2"
 gru_103/while/gru_cell_103/Const§
,gru_103/while/gru_cell_103/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2.
,gru_103/while/gru_cell_103/split_1/split_dimØ
"gru_103/while/gru_cell_103/split_1SplitV-gru_103/while/gru_cell_103/MatMul_1:product:0)gru_103/while/gru_cell_103/Const:output:05gru_103/while/gru_cell_103/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2$
"gru_103/while/gru_cell_103/split_1Ô
gru_103/while/gru_cell_103/addAddV2)gru_103/while/gru_cell_103/split:output:0+gru_103/while/gru_cell_103/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2 
gru_103/while/gru_cell_103/addª
"gru_103/while/gru_cell_103/SigmoidSigmoid"gru_103/while/gru_cell_103/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2$
"gru_103/while/gru_cell_103/SigmoidØ
 gru_103/while/gru_cell_103/add_1AddV2)gru_103/while/gru_cell_103/split:output:1+gru_103/while/gru_cell_103/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2"
 gru_103/while/gru_cell_103/add_1°
$gru_103/while/gru_cell_103/Sigmoid_1Sigmoid$gru_103/while/gru_cell_103/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2&
$gru_103/while/gru_cell_103/Sigmoid_1Á
gru_103/while/gru_cell_103/mulMul(gru_103/while/gru_cell_103/Sigmoid_1:y:0gru_103_while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2 
gru_103/while/gru_cell_103/mulÑ
+gru_103/while/gru_cell_103/ReadVariableOp_1ReadVariableOp4gru_103_while_gru_cell_103_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02-
+gru_103/while/gru_cell_103/ReadVariableOp_1µ
0gru_103/while/gru_cell_103/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      22
0gru_103/while/gru_cell_103/strided_slice_1/stack¹
2gru_103/while/gru_cell_103/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        24
2gru_103/while/gru_cell_103/strided_slice_1/stack_1¹
2gru_103/while/gru_cell_103/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      24
2gru_103/while/gru_cell_103/strided_slice_1/stack_2¬
*gru_103/while/gru_cell_103/strided_slice_1StridedSlice3gru_103/while/gru_cell_103/ReadVariableOp_1:value:09gru_103/while/gru_cell_103/strided_slice_1/stack:output:0;gru_103/while/gru_cell_103/strided_slice_1/stack_1:output:0;gru_103/while/gru_cell_103/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2,
*gru_103/while/gru_cell_103/strided_slice_1à
#gru_103/while/gru_cell_103/MatMul_2MatMul"gru_103/while/gru_cell_103/mul:z:03gru_103/while/gru_cell_103/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2%
#gru_103/while/gru_cell_103/MatMul_2Ú
 gru_103/while/gru_cell_103/add_2AddV2)gru_103/while/gru_cell_103/split:output:2-gru_103/while/gru_cell_103/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2"
 gru_103/while/gru_cell_103/add_2£
gru_103/while/gru_cell_103/ReluRelu$gru_103/while/gru_cell_103/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2!
gru_103/while/gru_cell_103/ReluÃ
 gru_103/while/gru_cell_103/mul_1Mul&gru_103/while/gru_cell_103/Sigmoid:y:0gru_103_while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2"
 gru_103/while/gru_cell_103/mul_1
 gru_103/while/gru_cell_103/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2"
 gru_103/while/gru_cell_103/sub/xÍ
gru_103/while/gru_cell_103/subSub)gru_103/while/gru_cell_103/sub/x:output:0&gru_103/while/gru_cell_103/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2 
gru_103/while/gru_cell_103/subÑ
 gru_103/while/gru_cell_103/mul_2Mul"gru_103/while/gru_cell_103/sub:z:0-gru_103/while/gru_cell_103/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2"
 gru_103/while/gru_cell_103/mul_2Ì
 gru_103/while/gru_cell_103/add_3AddV2$gru_103/while/gru_cell_103/mul_1:z:0$gru_103/while/gru_cell_103/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2"
 gru_103/while/gru_cell_103/add_3
2gru_103/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemgru_103_while_placeholder_1gru_103_while_placeholder$gru_103/while/gru_cell_103/add_3:z:0*
_output_shapes
: *
element_dtype024
2gru_103/while/TensorArrayV2Write/TensorListSetIteml
gru_103/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru_103/while/add/y
gru_103/while/addAddV2gru_103_while_placeholdergru_103/while/add/y:output:0*
T0*
_output_shapes
: 2
gru_103/while/addp
gru_103/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru_103/while/add_1/y
gru_103/while/add_1AddV2(gru_103_while_gru_103_while_loop_countergru_103/while/add_1/y:output:0*
T0*
_output_shapes
: 2
gru_103/while/add_1·
gru_103/while/IdentityIdentitygru_103/while/add_1:z:02^gru_103/while/gru_cell_103/BiasAdd/ReadVariableOp1^gru_103/while/gru_cell_103/MatMul/ReadVariableOp*^gru_103/while/gru_cell_103/ReadVariableOp,^gru_103/while/gru_cell_103/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_103/while/IdentityÒ
gru_103/while/Identity_1Identity.gru_103_while_gru_103_while_maximum_iterations2^gru_103/while/gru_cell_103/BiasAdd/ReadVariableOp1^gru_103/while/gru_cell_103/MatMul/ReadVariableOp*^gru_103/while/gru_cell_103/ReadVariableOp,^gru_103/while/gru_cell_103/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_103/while/Identity_1¹
gru_103/while/Identity_2Identitygru_103/while/add:z:02^gru_103/while/gru_cell_103/BiasAdd/ReadVariableOp1^gru_103/while/gru_cell_103/MatMul/ReadVariableOp*^gru_103/while/gru_cell_103/ReadVariableOp,^gru_103/while/gru_cell_103/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_103/while/Identity_2æ
gru_103/while/Identity_3IdentityBgru_103/while/TensorArrayV2Write/TensorListSetItem:output_handle:02^gru_103/while/gru_cell_103/BiasAdd/ReadVariableOp1^gru_103/while/gru_cell_103/MatMul/ReadVariableOp*^gru_103/while/gru_cell_103/ReadVariableOp,^gru_103/while/gru_cell_103/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_103/while/Identity_3Ú
gru_103/while/Identity_4Identity$gru_103/while/gru_cell_103/add_3:z:02^gru_103/while/gru_cell_103/BiasAdd/ReadVariableOp1^gru_103/while/gru_cell_103/MatMul/ReadVariableOp*^gru_103/while/gru_cell_103/ReadVariableOp,^gru_103/while/gru_cell_103/ReadVariableOp_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_103/while/Identity_4"P
%gru_103_while_gru_103_strided_slice_1'gru_103_while_gru_103_strided_slice_1_0"z
:gru_103_while_gru_cell_103_biasadd_readvariableop_resource<gru_103_while_gru_cell_103_biasadd_readvariableop_resource_0"x
9gru_103_while_gru_cell_103_matmul_readvariableop_resource;gru_103_while_gru_cell_103_matmul_readvariableop_resource_0"j
2gru_103_while_gru_cell_103_readvariableop_resource4gru_103_while_gru_cell_103_readvariableop_resource_0"9
gru_103_while_identitygru_103/while/Identity:output:0"=
gru_103_while_identity_1!gru_103/while/Identity_1:output:0"=
gru_103_while_identity_2!gru_103/while/Identity_2:output:0"=
gru_103_while_identity_3!gru_103/while/Identity_3:output:0"=
gru_103_while_identity_4!gru_103/while/Identity_4:output:0"È
agru_103_while_tensorarrayv2read_tensorlistgetitem_gru_103_tensorarrayunstack_tensorlistfromtensorcgru_103_while_tensorarrayv2read_tensorlistgetitem_gru_103_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿÈ: : : : : 2f
1gru_103/while/gru_cell_103/BiasAdd/ReadVariableOp1gru_103/while/gru_cell_103/BiasAdd/ReadVariableOp2d
0gru_103/while/gru_cell_103/MatMul/ReadVariableOp0gru_103/while/gru_cell_103/MatMul/ReadVariableOp2V
)gru_103/while/gru_cell_103/ReadVariableOp)gru_103/while/gru_cell_103/ReadVariableOp2Z
+gru_103/while/gru_cell_103/ReadVariableOp_1+gru_103/while/gru_cell_103/ReadVariableOp_1: 
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
Ò	
÷
F__inference_dense_207_layer_call_and_return_conditional_losses_5226854

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
²

ø
F__inference_dense_206_layer_call_and_return_conditional_losses_5226835

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
0__inference_sequential_103_layer_call_fn_5226077

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
K__inference_sequential_103_layer_call_and_return_conditional_losses_52253132
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
 
_user_specified_nameinputs"ÌL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*¼
serving_default¨
K
gru_103_input:
serving_default_gru_103_input:0ÿÿÿÿÿÿÿÿÿ=
	dense_2070
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
_tf_keras_sequentialÀ*{"name": "sequential_103", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_103", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 2]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "gru_103_input"}}, {"class_name": "GRU", "config": {"name": "gru_103", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 2]}, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 200, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2, "reset_after": false}}, {"class_name": "Dense", "config": {"name": "dense_206", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_207", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 12, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 2]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 13}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 7, 2]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 7, 2]}, "float32", "gru_103_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_103", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 2]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "gru_103_input"}, "shared_object_id": 0}, {"class_name": "GRU", "config": {"name": "gru_103", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 2]}, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 200, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2, "reset_after": false}, "shared_object_id": 5}, {"class_name": "Dense", "config": {"name": "dense_206", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 8}, {"class_name": "Dense", "config": {"name": "dense_207", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 11}]}}, "training_config": {"loss": "mse", "metrics": null, "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
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
_tf_keras_rnn_layerÜ{"name": "gru_103", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 2]}, "stateful": false, "must_restore_from_config": false, "class_name": "GRU", "config": {"name": "gru_103", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 2]}, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 200, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2, "reset_after": false}, "shared_object_id": 5, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 2]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 13}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 7, 2]}}
Ô

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
*Z&call_and_return_all_conditional_losses
[__call__"¯
_tf_keras_layer{"name": "dense_206", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_206", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 8, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 200}}, "shared_object_id": 14}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 200]}}
Ö

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
*\&call_and_return_all_conditional_losses
]__call__"±
_tf_keras_layer{"name": "dense_207", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_207", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 11, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 100}}, "shared_object_id": 15}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 100]}}
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
_tf_keras_layer­{"name": "gru_cell_103", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "GRUCell", "config": {"name": "gru_cell_103", "trainable": true, "dtype": "float32", "units": 200, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2, "reset_after": false}, "shared_object_id": 4}
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
#:!	Èd2dense_206/kernel
:d2dense_206/bias
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
": d2dense_207/kernel
:2dense_207/bias
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
.:,	Ø2gru_103/gru_cell_103/kernel
9:7
ÈØ2%gru_103/gru_cell_103/recurrent_kernel
(:&Ø2gru_103/gru_cell_103/bias
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
(:&	Èd2Adam/dense_206/kernel/m
!:d2Adam/dense_206/bias/m
':%d2Adam/dense_207/kernel/m
!:2Adam/dense_207/bias/m
3:1	Ø2"Adam/gru_103/gru_cell_103/kernel/m
>:<
ÈØ2,Adam/gru_103/gru_cell_103/recurrent_kernel/m
-:+Ø2 Adam/gru_103/gru_cell_103/bias/m
(:&	Èd2Adam/dense_206/kernel/v
!:d2Adam/dense_206/bias/v
':%d2Adam/dense_207/kernel/v
!:2Adam/dense_207/bias/v
3:1	Ø2"Adam/gru_103/gru_cell_103/kernel/v
>:<
ÈØ2,Adam/gru_103/gru_cell_103/recurrent_kernel/v
-:+Ø2 Adam/gru_103/gru_cell_103/bias/v
ê2ç
"__inference__wrapped_model_5224498À
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
gru_103_inputÿÿÿÿÿÿÿÿÿ
ú2÷
K__inference_sequential_103_layer_call_and_return_conditional_losses_5225874
K__inference_sequential_103_layer_call_and_return_conditional_losses_5226058
K__inference_sequential_103_layer_call_and_return_conditional_losses_5225642
K__inference_sequential_103_layer_call_and_return_conditional_losses_5225663À
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
0__inference_sequential_103_layer_call_fn_5225330
0__inference_sequential_103_layer_call_fn_5226077
0__inference_sequential_103_layer_call_fn_5226096
0__inference_sequential_103_layer_call_fn_5225621À
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
D__inference_gru_103_layer_call_and_return_conditional_losses_5226267
D__inference_gru_103_layer_call_and_return_conditional_losses_5226438
D__inference_gru_103_layer_call_and_return_conditional_losses_5226609
D__inference_gru_103_layer_call_and_return_conditional_losses_5226780Õ
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
)__inference_gru_103_layer_call_fn_5226791
)__inference_gru_103_layer_call_fn_5226802
)__inference_gru_103_layer_call_fn_5226813
)__inference_gru_103_layer_call_fn_5226824Õ
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
F__inference_dense_206_layer_call_and_return_conditional_losses_5226835¢
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
+__inference_dense_206_layer_call_fn_5226844¢
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
F__inference_dense_207_layer_call_and_return_conditional_losses_5226854¢
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
+__inference_dense_207_layer_call_fn_5226863¢
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
%__inference_signature_wrapper_5225690gru_103_input"
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
I__inference_gru_cell_103_layer_call_and_return_conditional_losses_5226909
I__inference_gru_cell_103_layer_call_and_return_conditional_losses_5226955¾
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
.__inference_gru_cell_103_layer_call_fn_5226969
.__inference_gru_cell_103_layer_call_fn_5226983¾
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
"__inference__wrapped_model_5224498|!#":¢7
0¢-
+(
gru_103_inputÿÿÿÿÿÿÿÿÿ
ª "5ª2
0
	dense_207# 
	dense_207ÿÿÿÿÿÿÿÿÿ§
F__inference_dense_206_layer_call_and_return_conditional_losses_5226835]0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿÈ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿd
 
+__inference_dense_206_layer_call_fn_5226844P0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿÈ
ª "ÿÿÿÿÿÿÿÿÿd¦
F__inference_dense_207_layer_call_and_return_conditional_losses_5226854\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿd
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ~
+__inference_dense_207_layer_call_fn_5226863O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿd
ª "ÿÿÿÿÿÿÿÿÿÆ
D__inference_gru_103_layer_call_and_return_conditional_losses_5226267~!#"O¢L
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
D__inference_gru_103_layer_call_and_return_conditional_losses_5226438~!#"O¢L
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
D__inference_gru_103_layer_call_and_return_conditional_losses_5226609n!#"?¢<
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
D__inference_gru_103_layer_call_and_return_conditional_losses_5226780n!#"?¢<
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
)__inference_gru_103_layer_call_fn_5226791q!#"O¢L
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
)__inference_gru_103_layer_call_fn_5226802q!#"O¢L
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
)__inference_gru_103_layer_call_fn_5226813a!#"?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿÈ
)__inference_gru_103_layer_call_fn_5226824a!#"?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿÈ
I__inference_gru_cell_103_layer_call_and_return_conditional_losses_5226909º!#"]¢Z
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
I__inference_gru_cell_103_layer_call_and_return_conditional_losses_5226955º!#"]¢Z
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
.__inference_gru_cell_103_layer_call_fn_5226969¬!#"]¢Z
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
.__inference_gru_cell_103_layer_call_fn_5226983¬!#"]¢Z
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
K__inference_sequential_103_layer_call_and_return_conditional_losses_5225642t!#"B¢?
8¢5
+(
gru_103_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Ã
K__inference_sequential_103_layer_call_and_return_conditional_losses_5225663t!#"B¢?
8¢5
+(
gru_103_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¼
K__inference_sequential_103_layer_call_and_return_conditional_losses_5225874m!#";¢8
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
K__inference_sequential_103_layer_call_and_return_conditional_losses_5226058m!#";¢8
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
0__inference_sequential_103_layer_call_fn_5225330g!#"B¢?
8¢5
+(
gru_103_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
0__inference_sequential_103_layer_call_fn_5225621g!#"B¢?
8¢5
+(
gru_103_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
0__inference_sequential_103_layer_call_fn_5226077`!#";¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
0__inference_sequential_103_layer_call_fn_5226096`!#";¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ·
%__inference_signature_wrapper_5225690!#"K¢H
¢ 
Aª>
<
gru_103_input+(
gru_103_inputÿÿÿÿÿÿÿÿÿ"5ª2
0
	dense_207# 
	dense_207ÿÿÿÿÿÿÿÿÿ