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
dense_120/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?d*!
shared_namedense_120/kernel
v
$dense_120/kernel/Read/ReadVariableOpReadVariableOpdense_120/kernel*
_output_shapes
:	?d*
dtype0
t
dense_120/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*
shared_namedense_120/bias
m
"dense_120/bias/Read/ReadVariableOpReadVariableOpdense_120/bias*
_output_shapes
:d*
dtype0
|
dense_121/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*!
shared_namedense_121/kernel
u
$dense_121/kernel/Read/ReadVariableOpReadVariableOpdense_121/kernel*
_output_shapes

:d*
dtype0
t
dense_121/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_121/bias
m
"dense_121/bias/Read/ReadVariableOpReadVariableOpdense_121/bias*
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
gru_60/gru_cell_60/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?**
shared_namegru_60/gru_cell_60/kernel
?
-gru_60/gru_cell_60/kernel/Read/ReadVariableOpReadVariableOpgru_60/gru_cell_60/kernel*
_output_shapes
:	?*
dtype0
?
#gru_60/gru_cell_60/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*4
shared_name%#gru_60/gru_cell_60/recurrent_kernel
?
7gru_60/gru_cell_60/recurrent_kernel/Read/ReadVariableOpReadVariableOp#gru_60/gru_cell_60/recurrent_kernel* 
_output_shapes
:
??*
dtype0
?
gru_60/gru_cell_60/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*(
shared_namegru_60/gru_cell_60/bias
?
+gru_60/gru_cell_60/bias/Read/ReadVariableOpReadVariableOpgru_60/gru_cell_60/bias*
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
Adam/dense_120/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?d*(
shared_nameAdam/dense_120/kernel/m
?
+Adam/dense_120/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_120/kernel/m*
_output_shapes
:	?d*
dtype0
?
Adam/dense_120/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*&
shared_nameAdam/dense_120/bias/m
{
)Adam/dense_120/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_120/bias/m*
_output_shapes
:d*
dtype0
?
Adam/dense_121/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*(
shared_nameAdam/dense_121/kernel/m
?
+Adam/dense_121/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_121/kernel/m*
_output_shapes

:d*
dtype0
?
Adam/dense_121/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_121/bias/m
{
)Adam/dense_121/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_121/bias/m*
_output_shapes
:*
dtype0
?
 Adam/gru_60/gru_cell_60/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*1
shared_name" Adam/gru_60/gru_cell_60/kernel/m
?
4Adam/gru_60/gru_cell_60/kernel/m/Read/ReadVariableOpReadVariableOp Adam/gru_60/gru_cell_60/kernel/m*
_output_shapes
:	?*
dtype0
?
*Adam/gru_60/gru_cell_60/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*;
shared_name,*Adam/gru_60/gru_cell_60/recurrent_kernel/m
?
>Adam/gru_60/gru_cell_60/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp*Adam/gru_60/gru_cell_60/recurrent_kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/gru_60/gru_cell_60/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*/
shared_name Adam/gru_60/gru_cell_60/bias/m
?
2Adam/gru_60/gru_cell_60/bias/m/Read/ReadVariableOpReadVariableOpAdam/gru_60/gru_cell_60/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_120/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?d*(
shared_nameAdam/dense_120/kernel/v
?
+Adam/dense_120/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_120/kernel/v*
_output_shapes
:	?d*
dtype0
?
Adam/dense_120/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*&
shared_nameAdam/dense_120/bias/v
{
)Adam/dense_120/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_120/bias/v*
_output_shapes
:d*
dtype0
?
Adam/dense_121/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*(
shared_nameAdam/dense_121/kernel/v
?
+Adam/dense_121/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_121/kernel/v*
_output_shapes

:d*
dtype0
?
Adam/dense_121/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_121/bias/v
{
)Adam/dense_121/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_121/bias/v*
_output_shapes
:*
dtype0
?
 Adam/gru_60/gru_cell_60/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*1
shared_name" Adam/gru_60/gru_cell_60/kernel/v
?
4Adam/gru_60/gru_cell_60/kernel/v/Read/ReadVariableOpReadVariableOp Adam/gru_60/gru_cell_60/kernel/v*
_output_shapes
:	?*
dtype0
?
*Adam/gru_60/gru_cell_60/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*;
shared_name,*Adam/gru_60/gru_cell_60/recurrent_kernel/v
?
>Adam/gru_60/gru_cell_60/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp*Adam/gru_60/gru_cell_60/recurrent_kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/gru_60/gru_cell_60/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*/
shared_name Adam/gru_60/gru_cell_60/bias/v
?
2Adam/gru_60/gru_cell_60/bias/v/Read/ReadVariableOpReadVariableOpAdam/gru_60/gru_cell_60/bias/v*
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
VARIABLE_VALUEdense_120/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_120/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_121/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_121/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEgru_60/gru_cell_60/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUE#gru_60/gru_cell_60/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEgru_60/gru_cell_60/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_120/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_120/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_121/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_121/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/gru_60/gru_cell_60/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE*Adam/gru_60/gru_cell_60/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/gru_60/gru_cell_60/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_120/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_120/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_121/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_121/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/gru_60/gru_cell_60/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE*Adam/gru_60/gru_cell_60/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/gru_60/gru_cell_60/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_gru_60_inputPlaceholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_gru_60_inputgru_60/gru_cell_60/kernelgru_60/gru_cell_60/bias#gru_60/gru_cell_60/recurrent_kerneldense_120/kerneldense_120/biasdense_121/kerneldense_121/bias*
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
%__inference_signature_wrapper_3028151
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_120/kernel/Read/ReadVariableOp"dense_120/bias/Read/ReadVariableOp$dense_121/kernel/Read/ReadVariableOp"dense_121/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp-gru_60/gru_cell_60/kernel/Read/ReadVariableOp7gru_60/gru_cell_60/recurrent_kernel/Read/ReadVariableOp+gru_60/gru_cell_60/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_120/kernel/m/Read/ReadVariableOp)Adam/dense_120/bias/m/Read/ReadVariableOp+Adam/dense_121/kernel/m/Read/ReadVariableOp)Adam/dense_121/bias/m/Read/ReadVariableOp4Adam/gru_60/gru_cell_60/kernel/m/Read/ReadVariableOp>Adam/gru_60/gru_cell_60/recurrent_kernel/m/Read/ReadVariableOp2Adam/gru_60/gru_cell_60/bias/m/Read/ReadVariableOp+Adam/dense_120/kernel/v/Read/ReadVariableOp)Adam/dense_120/bias/v/Read/ReadVariableOp+Adam/dense_121/kernel/v/Read/ReadVariableOp)Adam/dense_121/bias/v/Read/ReadVariableOp4Adam/gru_60/gru_cell_60/kernel/v/Read/ReadVariableOp>Adam/gru_60/gru_cell_60/recurrent_kernel/v/Read/ReadVariableOp2Adam/gru_60/gru_cell_60/bias/v/Read/ReadVariableOpConst*)
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
 __inference__traced_save_3029551
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_120/kerneldense_120/biasdense_121/kerneldense_121/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rategru_60/gru_cell_60/kernel#gru_60/gru_cell_60/recurrent_kernelgru_60/gru_cell_60/biastotalcountAdam/dense_120/kernel/mAdam/dense_120/bias/mAdam/dense_121/kernel/mAdam/dense_121/bias/m Adam/gru_60/gru_cell_60/kernel/m*Adam/gru_60/gru_cell_60/recurrent_kernel/mAdam/gru_60/gru_cell_60/bias/mAdam/dense_120/kernel/vAdam/dense_120/bias/vAdam/dense_121/kernel/vAdam/dense_121/bias/v Adam/gru_60/gru_cell_60/kernel/v*Adam/gru_60/gru_cell_60/recurrent_kernel/vAdam/gru_60/gru_cell_60/bias/v*(
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
#__inference__traced_restore_3029645??
?h
?
C__inference_gru_60_layer_call_and_return_conditional_losses_3029241

inputs=
*gru_cell_60_matmul_readvariableop_resource:	?:
+gru_cell_60_biasadd_readvariableop_resource:	?7
#gru_cell_60_readvariableop_resource:
??
identity??"gru_cell_60/BiasAdd/ReadVariableOp?!gru_cell_60/MatMul/ReadVariableOp?gru_cell_60/ReadVariableOp?gru_cell_60/ReadVariableOp_1?whileD
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
!gru_cell_60/MatMul/ReadVariableOpReadVariableOp*gru_cell_60_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!gru_cell_60/MatMul/ReadVariableOp?
gru_cell_60/MatMulMatMulstrided_slice_2:output:0)gru_cell_60/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/MatMul?
"gru_cell_60/BiasAdd/ReadVariableOpReadVariableOp+gru_cell_60_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"gru_cell_60/BiasAdd/ReadVariableOp?
gru_cell_60/BiasAddBiasAddgru_cell_60/MatMul:product:0*gru_cell_60/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/BiasAdd?
gru_cell_60/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_60/split/split_dim?
gru_cell_60/splitSplit$gru_cell_60/split/split_dim:output:0gru_cell_60/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
gru_cell_60/split?
gru_cell_60/ReadVariableOpReadVariableOp#gru_cell_60_readvariableop_resource* 
_output_shapes
:
??*
dtype02
gru_cell_60/ReadVariableOp?
gru_cell_60/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
gru_cell_60/strided_slice/stack?
!gru_cell_60/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2#
!gru_cell_60/strided_slice/stack_1?
!gru_cell_60/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!gru_cell_60/strided_slice/stack_2?
gru_cell_60/strided_sliceStridedSlice"gru_cell_60/ReadVariableOp:value:0(gru_cell_60/strided_slice/stack:output:0*gru_cell_60/strided_slice/stack_1:output:0*gru_cell_60/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
gru_cell_60/strided_slice?
gru_cell_60/MatMul_1MatMulzeros:output:0"gru_cell_60/strided_slice:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/MatMul_1{
gru_cell_60/ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2
gru_cell_60/Const?
gru_cell_60/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_60/split_1/split_dim?
gru_cell_60/split_1SplitVgru_cell_60/MatMul_1:product:0gru_cell_60/Const:output:0&gru_cell_60/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:??????????:??????????:????????? *
	num_split2
gru_cell_60/split_1?
gru_cell_60/addAddV2gru_cell_60/split:output:0gru_cell_60/split_1:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/add}
gru_cell_60/SigmoidSigmoidgru_cell_60/add:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/Sigmoid?
gru_cell_60/add_1AddV2gru_cell_60/split:output:1gru_cell_60/split_1:output:1*
T0*(
_output_shapes
:??????????2
gru_cell_60/add_1?
gru_cell_60/Sigmoid_1Sigmoidgru_cell_60/add_1:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/Sigmoid_1?
gru_cell_60/mulMulgru_cell_60/Sigmoid_1:y:0zeros:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/mul?
gru_cell_60/ReadVariableOp_1ReadVariableOp#gru_cell_60_readvariableop_resource* 
_output_shapes
:
??*
dtype02
gru_cell_60/ReadVariableOp_1?
!gru_cell_60/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2#
!gru_cell_60/strided_slice_1/stack?
#gru_cell_60/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#gru_cell_60/strided_slice_1/stack_1?
#gru_cell_60/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gru_cell_60/strided_slice_1/stack_2?
gru_cell_60/strided_slice_1StridedSlice$gru_cell_60/ReadVariableOp_1:value:0*gru_cell_60/strided_slice_1/stack:output:0,gru_cell_60/strided_slice_1/stack_1:output:0,gru_cell_60/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
gru_cell_60/strided_slice_1?
gru_cell_60/MatMul_2MatMulgru_cell_60/mul:z:0$gru_cell_60/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/MatMul_2?
gru_cell_60/add_2AddV2gru_cell_60/split:output:2gru_cell_60/MatMul_2:product:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/add_2v
gru_cell_60/ReluRelugru_cell_60/add_2:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/Relu?
gru_cell_60/mul_1Mulgru_cell_60/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/mul_1k
gru_cell_60/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_cell_60/sub/x?
gru_cell_60/subSubgru_cell_60/sub/x:output:0gru_cell_60/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/sub?
gru_cell_60/mul_2Mulgru_cell_60/sub:z:0gru_cell_60/Relu:activations:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/mul_2?
gru_cell_60/add_3AddV2gru_cell_60/mul_1:z:0gru_cell_60/mul_2:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/add_3?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*gru_cell_60_matmul_readvariableop_resource+gru_cell_60_biasadd_readvariableop_resource#gru_cell_60_readvariableop_resource*
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
while_body_3029145*
condR
while_cond_3029144*9
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
IdentityIdentitystrided_slice_3:output:0#^gru_cell_60/BiasAdd/ReadVariableOp"^gru_cell_60/MatMul/ReadVariableOp^gru_cell_60/ReadVariableOp^gru_cell_60/ReadVariableOp_1^while*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2H
"gru_cell_60/BiasAdd/ReadVariableOp"gru_cell_60/BiasAdd/ReadVariableOp2F
!gru_cell_60/MatMul/ReadVariableOp!gru_cell_60/MatMul/ReadVariableOp28
gru_cell_60/ReadVariableOpgru_cell_60/ReadVariableOp2<
gru_cell_60/ReadVariableOp_1gru_cell_60/ReadVariableOp_12
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
(__inference_gru_60_layer_call_fn_3029263
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
C__inference_gru_60_layer_call_and_return_conditional_losses_30273212
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
?W
?
while_body_3028632
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_gru_cell_60_matmul_readvariableop_resource_0:	?B
3while_gru_cell_60_biasadd_readvariableop_resource_0:	??
+while_gru_cell_60_readvariableop_resource_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_gru_cell_60_matmul_readvariableop_resource:	?@
1while_gru_cell_60_biasadd_readvariableop_resource:	?=
)while_gru_cell_60_readvariableop_resource:
????(while/gru_cell_60/BiasAdd/ReadVariableOp?'while/gru_cell_60/MatMul/ReadVariableOp? while/gru_cell_60/ReadVariableOp?"while/gru_cell_60/ReadVariableOp_1?
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
'while/gru_cell_60/MatMul/ReadVariableOpReadVariableOp2while_gru_cell_60_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02)
'while/gru_cell_60/MatMul/ReadVariableOp?
while/gru_cell_60/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/gru_cell_60/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/MatMul?
(while/gru_cell_60/BiasAdd/ReadVariableOpReadVariableOp3while_gru_cell_60_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/gru_cell_60/BiasAdd/ReadVariableOp?
while/gru_cell_60/BiasAddBiasAdd"while/gru_cell_60/MatMul:product:00while/gru_cell_60/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/BiasAdd?
!while/gru_cell_60/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2#
!while/gru_cell_60/split/split_dim?
while/gru_cell_60/splitSplit*while/gru_cell_60/split/split_dim:output:0"while/gru_cell_60/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
while/gru_cell_60/split?
 while/gru_cell_60/ReadVariableOpReadVariableOp+while_gru_cell_60_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02"
 while/gru_cell_60/ReadVariableOp?
%while/gru_cell_60/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/gru_cell_60/strided_slice/stack?
'while/gru_cell_60/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2)
'while/gru_cell_60/strided_slice/stack_1?
'while/gru_cell_60/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/gru_cell_60/strided_slice/stack_2?
while/gru_cell_60/strided_sliceStridedSlice(while/gru_cell_60/ReadVariableOp:value:0.while/gru_cell_60/strided_slice/stack:output:00while/gru_cell_60/strided_slice/stack_1:output:00while/gru_cell_60/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2!
while/gru_cell_60/strided_slice?
while/gru_cell_60/MatMul_1MatMulwhile_placeholder_2(while/gru_cell_60/strided_slice:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/MatMul_1?
while/gru_cell_60/ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2
while/gru_cell_60/Const?
#while/gru_cell_60/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2%
#while/gru_cell_60/split_1/split_dim?
while/gru_cell_60/split_1SplitV$while/gru_cell_60/MatMul_1:product:0 while/gru_cell_60/Const:output:0,while/gru_cell_60/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:??????????:??????????:????????? *
	num_split2
while/gru_cell_60/split_1?
while/gru_cell_60/addAddV2 while/gru_cell_60/split:output:0"while/gru_cell_60/split_1:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/add?
while/gru_cell_60/SigmoidSigmoidwhile/gru_cell_60/add:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/Sigmoid?
while/gru_cell_60/add_1AddV2 while/gru_cell_60/split:output:1"while/gru_cell_60/split_1:output:1*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/add_1?
while/gru_cell_60/Sigmoid_1Sigmoidwhile/gru_cell_60/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/Sigmoid_1?
while/gru_cell_60/mulMulwhile/gru_cell_60/Sigmoid_1:y:0while_placeholder_2*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/mul?
"while/gru_cell_60/ReadVariableOp_1ReadVariableOp+while_gru_cell_60_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02$
"while/gru_cell_60/ReadVariableOp_1?
'while/gru_cell_60/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2)
'while/gru_cell_60/strided_slice_1/stack?
)while/gru_cell_60/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/gru_cell_60/strided_slice_1/stack_1?
)while/gru_cell_60/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/gru_cell_60/strided_slice_1/stack_2?
!while/gru_cell_60/strided_slice_1StridedSlice*while/gru_cell_60/ReadVariableOp_1:value:00while/gru_cell_60/strided_slice_1/stack:output:02while/gru_cell_60/strided_slice_1/stack_1:output:02while/gru_cell_60/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2#
!while/gru_cell_60/strided_slice_1?
while/gru_cell_60/MatMul_2MatMulwhile/gru_cell_60/mul:z:0*while/gru_cell_60/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/MatMul_2?
while/gru_cell_60/add_2AddV2 while/gru_cell_60/split:output:2$while/gru_cell_60/MatMul_2:product:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/add_2?
while/gru_cell_60/ReluReluwhile/gru_cell_60/add_2:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/Relu?
while/gru_cell_60/mul_1Mulwhile/gru_cell_60/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/mul_1w
while/gru_cell_60/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/gru_cell_60/sub/x?
while/gru_cell_60/subSub while/gru_cell_60/sub/x:output:0while/gru_cell_60/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/sub?
while/gru_cell_60/mul_2Mulwhile/gru_cell_60/sub:z:0$while/gru_cell_60/Relu:activations:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/mul_2?
while/gru_cell_60/add_3AddV2while/gru_cell_60/mul_1:z:0while/gru_cell_60/mul_2:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/add_3?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_60/add_3:z:0*
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
while/IdentityIdentitywhile/add_1:z:0)^while/gru_cell_60/BiasAdd/ReadVariableOp(^while/gru_cell_60/MatMul/ReadVariableOp!^while/gru_cell_60/ReadVariableOp#^while/gru_cell_60/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations)^while/gru_cell_60/BiasAdd/ReadVariableOp(^while/gru_cell_60/MatMul/ReadVariableOp!^while/gru_cell_60/ReadVariableOp#^while/gru_cell_60/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0)^while/gru_cell_60/BiasAdd/ReadVariableOp(^while/gru_cell_60/MatMul/ReadVariableOp!^while/gru_cell_60/ReadVariableOp#^while/gru_cell_60/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/gru_cell_60/BiasAdd/ReadVariableOp(^while/gru_cell_60/MatMul/ReadVariableOp!^while/gru_cell_60/ReadVariableOp#^while/gru_cell_60/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/gru_cell_60/add_3:z:0)^while/gru_cell_60/BiasAdd/ReadVariableOp(^while/gru_cell_60/MatMul/ReadVariableOp!^while/gru_cell_60/ReadVariableOp#^while/gru_cell_60/ReadVariableOp_1*
T0*(
_output_shapes
:??????????2
while/Identity_4"h
1while_gru_cell_60_biasadd_readvariableop_resource3while_gru_cell_60_biasadd_readvariableop_resource_0"f
0while_gru_cell_60_matmul_readvariableop_resource2while_gru_cell_60_matmul_readvariableop_resource_0"X
)while_gru_cell_60_readvariableop_resource+while_gru_cell_60_readvariableop_resource_0")
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
(while/gru_cell_60/BiasAdd/ReadVariableOp(while/gru_cell_60/BiasAdd/ReadVariableOp2R
'while/gru_cell_60/MatMul/ReadVariableOp'while/gru_cell_60/MatMul/ReadVariableOp2D
 while/gru_cell_60/ReadVariableOp while/gru_cell_60/ReadVariableOp2H
"while/gru_cell_60/ReadVariableOp_1"while/gru_cell_60/ReadVariableOp_1: 
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
 __inference__traced_save_3029551
file_prefix/
+savev2_dense_120_kernel_read_readvariableop-
)savev2_dense_120_bias_read_readvariableop/
+savev2_dense_121_kernel_read_readvariableop-
)savev2_dense_121_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop8
4savev2_gru_60_gru_cell_60_kernel_read_readvariableopB
>savev2_gru_60_gru_cell_60_recurrent_kernel_read_readvariableop6
2savev2_gru_60_gru_cell_60_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_120_kernel_m_read_readvariableop4
0savev2_adam_dense_120_bias_m_read_readvariableop6
2savev2_adam_dense_121_kernel_m_read_readvariableop4
0savev2_adam_dense_121_bias_m_read_readvariableop?
;savev2_adam_gru_60_gru_cell_60_kernel_m_read_readvariableopI
Esavev2_adam_gru_60_gru_cell_60_recurrent_kernel_m_read_readvariableop=
9savev2_adam_gru_60_gru_cell_60_bias_m_read_readvariableop6
2savev2_adam_dense_120_kernel_v_read_readvariableop4
0savev2_adam_dense_120_bias_v_read_readvariableop6
2savev2_adam_dense_121_kernel_v_read_readvariableop4
0savev2_adam_dense_121_bias_v_read_readvariableop?
;savev2_adam_gru_60_gru_cell_60_kernel_v_read_readvariableopI
Esavev2_adam_gru_60_gru_cell_60_recurrent_kernel_v_read_readvariableop=
9savev2_adam_gru_60_gru_cell_60_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_120_kernel_read_readvariableop)savev2_dense_120_bias_read_readvariableop+savev2_dense_121_kernel_read_readvariableop)savev2_dense_121_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop4savev2_gru_60_gru_cell_60_kernel_read_readvariableop>savev2_gru_60_gru_cell_60_recurrent_kernel_read_readvariableop2savev2_gru_60_gru_cell_60_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_120_kernel_m_read_readvariableop0savev2_adam_dense_120_bias_m_read_readvariableop2savev2_adam_dense_121_kernel_m_read_readvariableop0savev2_adam_dense_121_bias_m_read_readvariableop;savev2_adam_gru_60_gru_cell_60_kernel_m_read_readvariableopEsavev2_adam_gru_60_gru_cell_60_recurrent_kernel_m_read_readvariableop9savev2_adam_gru_60_gru_cell_60_bias_m_read_readvariableop2savev2_adam_dense_120_kernel_v_read_readvariableop0savev2_adam_dense_120_bias_v_read_readvariableop2savev2_adam_dense_121_kernel_v_read_readvariableop0savev2_adam_dense_121_bias_v_read_readvariableop;savev2_adam_gru_60_gru_cell_60_kernel_v_read_readvariableopEsavev2_adam_gru_60_gru_cell_60_recurrent_kernel_v_read_readvariableop9savev2_adam_gru_60_gru_cell_60_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
??
?
J__inference_sequential_60_layer_call_and_return_conditional_losses_3028335

inputsD
1gru_60_gru_cell_60_matmul_readvariableop_resource:	?A
2gru_60_gru_cell_60_biasadd_readvariableop_resource:	?>
*gru_60_gru_cell_60_readvariableop_resource:
??;
(dense_120_matmul_readvariableop_resource:	?d7
)dense_120_biasadd_readvariableop_resource:d:
(dense_121_matmul_readvariableop_resource:d7
)dense_121_biasadd_readvariableop_resource:
identity?? dense_120/BiasAdd/ReadVariableOp?dense_120/MatMul/ReadVariableOp? dense_121/BiasAdd/ReadVariableOp?dense_121/MatMul/ReadVariableOp?)gru_60/gru_cell_60/BiasAdd/ReadVariableOp?(gru_60/gru_cell_60/MatMul/ReadVariableOp?!gru_60/gru_cell_60/ReadVariableOp?#gru_60/gru_cell_60/ReadVariableOp_1?gru_60/whileR
gru_60/ShapeShapeinputs*
T0*
_output_shapes
:2
gru_60/Shape?
gru_60/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_60/strided_slice/stack?
gru_60/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_60/strided_slice/stack_1?
gru_60/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_60/strided_slice/stack_2?
gru_60/strided_sliceStridedSlicegru_60/Shape:output:0#gru_60/strided_slice/stack:output:0%gru_60/strided_slice/stack_1:output:0%gru_60/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru_60/strided_slicek
gru_60/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
gru_60/zeros/mul/y?
gru_60/zeros/mulMulgru_60/strided_slice:output:0gru_60/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
gru_60/zeros/mulm
gru_60/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
gru_60/zeros/Less/y?
gru_60/zeros/LessLessgru_60/zeros/mul:z:0gru_60/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
gru_60/zeros/Lessq
gru_60/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
gru_60/zeros/packed/1?
gru_60/zeros/packedPackgru_60/strided_slice:output:0gru_60/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
gru_60/zeros/packedm
gru_60/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_60/zeros/Const?
gru_60/zerosFillgru_60/zeros/packed:output:0gru_60/zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
gru_60/zeros?
gru_60/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_60/transpose/perm?
gru_60/transpose	Transposeinputsgru_60/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2
gru_60/transposed
gru_60/Shape_1Shapegru_60/transpose:y:0*
T0*
_output_shapes
:2
gru_60/Shape_1?
gru_60/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_60/strided_slice_1/stack?
gru_60/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
gru_60/strided_slice_1/stack_1?
gru_60/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
gru_60/strided_slice_1/stack_2?
gru_60/strided_slice_1StridedSlicegru_60/Shape_1:output:0%gru_60/strided_slice_1/stack:output:0'gru_60/strided_slice_1/stack_1:output:0'gru_60/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru_60/strided_slice_1?
"gru_60/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"gru_60/TensorArrayV2/element_shape?
gru_60/TensorArrayV2TensorListReserve+gru_60/TensorArrayV2/element_shape:output:0gru_60/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_60/TensorArrayV2?
<gru_60/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2>
<gru_60/TensorArrayUnstack/TensorListFromTensor/element_shape?
.gru_60/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorgru_60/transpose:y:0Egru_60/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.gru_60/TensorArrayUnstack/TensorListFromTensor?
gru_60/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_60/strided_slice_2/stack?
gru_60/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
gru_60/strided_slice_2/stack_1?
gru_60/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
gru_60/strided_slice_2/stack_2?
gru_60/strided_slice_2StridedSlicegru_60/transpose:y:0%gru_60/strided_slice_2/stack:output:0'gru_60/strided_slice_2/stack_1:output:0'gru_60/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
gru_60/strided_slice_2?
(gru_60/gru_cell_60/MatMul/ReadVariableOpReadVariableOp1gru_60_gru_cell_60_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02*
(gru_60/gru_cell_60/MatMul/ReadVariableOp?
gru_60/gru_cell_60/MatMulMatMulgru_60/strided_slice_2:output:00gru_60/gru_cell_60/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_60/gru_cell_60/MatMul?
)gru_60/gru_cell_60/BiasAdd/ReadVariableOpReadVariableOp2gru_60_gru_cell_60_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)gru_60/gru_cell_60/BiasAdd/ReadVariableOp?
gru_60/gru_cell_60/BiasAddBiasAdd#gru_60/gru_cell_60/MatMul:product:01gru_60/gru_cell_60/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_60/gru_cell_60/BiasAdd?
"gru_60/gru_cell_60/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"gru_60/gru_cell_60/split/split_dim?
gru_60/gru_cell_60/splitSplit+gru_60/gru_cell_60/split/split_dim:output:0#gru_60/gru_cell_60/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
gru_60/gru_cell_60/split?
!gru_60/gru_cell_60/ReadVariableOpReadVariableOp*gru_60_gru_cell_60_readvariableop_resource* 
_output_shapes
:
??*
dtype02#
!gru_60/gru_cell_60/ReadVariableOp?
&gru_60/gru_cell_60/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&gru_60/gru_cell_60/strided_slice/stack?
(gru_60/gru_cell_60/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2*
(gru_60/gru_cell_60/strided_slice/stack_1?
(gru_60/gru_cell_60/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(gru_60/gru_cell_60/strided_slice/stack_2?
 gru_60/gru_cell_60/strided_sliceStridedSlice)gru_60/gru_cell_60/ReadVariableOp:value:0/gru_60/gru_cell_60/strided_slice/stack:output:01gru_60/gru_cell_60/strided_slice/stack_1:output:01gru_60/gru_cell_60/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2"
 gru_60/gru_cell_60/strided_slice?
gru_60/gru_cell_60/MatMul_1MatMulgru_60/zeros:output:0)gru_60/gru_cell_60/strided_slice:output:0*
T0*(
_output_shapes
:??????????2
gru_60/gru_cell_60/MatMul_1?
gru_60/gru_cell_60/ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2
gru_60/gru_cell_60/Const?
$gru_60/gru_cell_60/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2&
$gru_60/gru_cell_60/split_1/split_dim?
gru_60/gru_cell_60/split_1SplitV%gru_60/gru_cell_60/MatMul_1:product:0!gru_60/gru_cell_60/Const:output:0-gru_60/gru_cell_60/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:??????????:??????????:????????? *
	num_split2
gru_60/gru_cell_60/split_1?
gru_60/gru_cell_60/addAddV2!gru_60/gru_cell_60/split:output:0#gru_60/gru_cell_60/split_1:output:0*
T0*(
_output_shapes
:??????????2
gru_60/gru_cell_60/add?
gru_60/gru_cell_60/SigmoidSigmoidgru_60/gru_cell_60/add:z:0*
T0*(
_output_shapes
:??????????2
gru_60/gru_cell_60/Sigmoid?
gru_60/gru_cell_60/add_1AddV2!gru_60/gru_cell_60/split:output:1#gru_60/gru_cell_60/split_1:output:1*
T0*(
_output_shapes
:??????????2
gru_60/gru_cell_60/add_1?
gru_60/gru_cell_60/Sigmoid_1Sigmoidgru_60/gru_cell_60/add_1:z:0*
T0*(
_output_shapes
:??????????2
gru_60/gru_cell_60/Sigmoid_1?
gru_60/gru_cell_60/mulMul gru_60/gru_cell_60/Sigmoid_1:y:0gru_60/zeros:output:0*
T0*(
_output_shapes
:??????????2
gru_60/gru_cell_60/mul?
#gru_60/gru_cell_60/ReadVariableOp_1ReadVariableOp*gru_60_gru_cell_60_readvariableop_resource* 
_output_shapes
:
??*
dtype02%
#gru_60/gru_cell_60/ReadVariableOp_1?
(gru_60/gru_cell_60/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2*
(gru_60/gru_cell_60/strided_slice_1/stack?
*gru_60/gru_cell_60/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*gru_60/gru_cell_60/strided_slice_1/stack_1?
*gru_60/gru_cell_60/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*gru_60/gru_cell_60/strided_slice_1/stack_2?
"gru_60/gru_cell_60/strided_slice_1StridedSlice+gru_60/gru_cell_60/ReadVariableOp_1:value:01gru_60/gru_cell_60/strided_slice_1/stack:output:03gru_60/gru_cell_60/strided_slice_1/stack_1:output:03gru_60/gru_cell_60/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2$
"gru_60/gru_cell_60/strided_slice_1?
gru_60/gru_cell_60/MatMul_2MatMulgru_60/gru_cell_60/mul:z:0+gru_60/gru_cell_60/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2
gru_60/gru_cell_60/MatMul_2?
gru_60/gru_cell_60/add_2AddV2!gru_60/gru_cell_60/split:output:2%gru_60/gru_cell_60/MatMul_2:product:0*
T0*(
_output_shapes
:??????????2
gru_60/gru_cell_60/add_2?
gru_60/gru_cell_60/ReluRelugru_60/gru_cell_60/add_2:z:0*
T0*(
_output_shapes
:??????????2
gru_60/gru_cell_60/Relu?
gru_60/gru_cell_60/mul_1Mulgru_60/gru_cell_60/Sigmoid:y:0gru_60/zeros:output:0*
T0*(
_output_shapes
:??????????2
gru_60/gru_cell_60/mul_1y
gru_60/gru_cell_60/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_60/gru_cell_60/sub/x?
gru_60/gru_cell_60/subSub!gru_60/gru_cell_60/sub/x:output:0gru_60/gru_cell_60/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
gru_60/gru_cell_60/sub?
gru_60/gru_cell_60/mul_2Mulgru_60/gru_cell_60/sub:z:0%gru_60/gru_cell_60/Relu:activations:0*
T0*(
_output_shapes
:??????????2
gru_60/gru_cell_60/mul_2?
gru_60/gru_cell_60/add_3AddV2gru_60/gru_cell_60/mul_1:z:0gru_60/gru_cell_60/mul_2:z:0*
T0*(
_output_shapes
:??????????2
gru_60/gru_cell_60/add_3?
$gru_60/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2&
$gru_60/TensorArrayV2_1/element_shape?
gru_60/TensorArrayV2_1TensorListReserve-gru_60/TensorArrayV2_1/element_shape:output:0gru_60/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_60/TensorArrayV2_1\
gru_60/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
gru_60/time?
gru_60/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2!
gru_60/while/maximum_iterationsx
gru_60/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
gru_60/while/loop_counter?
gru_60/whileWhile"gru_60/while/loop_counter:output:0(gru_60/while/maximum_iterations:output:0gru_60/time:output:0gru_60/TensorArrayV2_1:handle:0gru_60/zeros:output:0gru_60/strided_slice_1:output:0>gru_60/TensorArrayUnstack/TensorListFromTensor:output_handle:01gru_60_gru_cell_60_matmul_readvariableop_resource2gru_60_gru_cell_60_biasadd_readvariableop_resource*gru_60_gru_cell_60_readvariableop_resource*
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
gru_60_while_body_3028226*%
condR
gru_60_while_cond_3028225*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations 2
gru_60/while?
7gru_60/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   29
7gru_60/TensorArrayV2Stack/TensorListStack/element_shape?
)gru_60/TensorArrayV2Stack/TensorListStackTensorListStackgru_60/while:output:3@gru_60/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02+
)gru_60/TensorArrayV2Stack/TensorListStack?
gru_60/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
gru_60/strided_slice_3/stack?
gru_60/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
gru_60/strided_slice_3/stack_1?
gru_60/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
gru_60/strided_slice_3/stack_2?
gru_60/strided_slice_3StridedSlice2gru_60/TensorArrayV2Stack/TensorListStack:tensor:0%gru_60/strided_slice_3/stack:output:0'gru_60/strided_slice_3/stack_1:output:0'gru_60/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
gru_60/strided_slice_3?
gru_60/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_60/transpose_1/perm?
gru_60/transpose_1	Transpose2gru_60/TensorArrayV2Stack/TensorListStack:tensor:0 gru_60/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
gru_60/transpose_1t
gru_60/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_60/runtime?
dense_120/MatMul/ReadVariableOpReadVariableOp(dense_120_matmul_readvariableop_resource*
_output_shapes
:	?d*
dtype02!
dense_120/MatMul/ReadVariableOp?
dense_120/MatMulMatMulgru_60/strided_slice_3:output:0'dense_120/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_120/MatMul?
 dense_120/BiasAdd/ReadVariableOpReadVariableOp)dense_120_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02"
 dense_120/BiasAdd/ReadVariableOp?
dense_120/BiasAddBiasAdddense_120/MatMul:product:0(dense_120/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_120/BiasAddv
dense_120/ReluReludense_120/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
dense_120/Relu?
dense_121/MatMul/ReadVariableOpReadVariableOp(dense_121_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02!
dense_121/MatMul/ReadVariableOp?
dense_121/MatMulMatMuldense_120/Relu:activations:0'dense_121/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_121/MatMul?
 dense_121/BiasAdd/ReadVariableOpReadVariableOp)dense_121_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_121/BiasAdd/ReadVariableOp?
dense_121/BiasAddBiasAdddense_121/MatMul:product:0(dense_121/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_121/BiasAdd?
IdentityIdentitydense_121/BiasAdd:output:0!^dense_120/BiasAdd/ReadVariableOp ^dense_120/MatMul/ReadVariableOp!^dense_121/BiasAdd/ReadVariableOp ^dense_121/MatMul/ReadVariableOp*^gru_60/gru_cell_60/BiasAdd/ReadVariableOp)^gru_60/gru_cell_60/MatMul/ReadVariableOp"^gru_60/gru_cell_60/ReadVariableOp$^gru_60/gru_cell_60/ReadVariableOp_1^gru_60/while*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2D
 dense_120/BiasAdd/ReadVariableOp dense_120/BiasAdd/ReadVariableOp2B
dense_120/MatMul/ReadVariableOpdense_120/MatMul/ReadVariableOp2D
 dense_121/BiasAdd/ReadVariableOp dense_121/BiasAdd/ReadVariableOp2B
dense_121/MatMul/ReadVariableOpdense_121/MatMul/ReadVariableOp2V
)gru_60/gru_cell_60/BiasAdd/ReadVariableOp)gru_60/gru_cell_60/BiasAdd/ReadVariableOp2T
(gru_60/gru_cell_60/MatMul/ReadVariableOp(gru_60/gru_cell_60/MatMul/ReadVariableOp2F
!gru_60/gru_cell_60/ReadVariableOp!gru_60/gru_cell_60/ReadVariableOp2J
#gru_60/gru_cell_60/ReadVariableOp_1#gru_60/gru_cell_60/ReadVariableOp_12
gru_60/whilegru_60/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
"__inference__wrapped_model_3026959
gru_60_inputR
?sequential_60_gru_60_gru_cell_60_matmul_readvariableop_resource:	?O
@sequential_60_gru_60_gru_cell_60_biasadd_readvariableop_resource:	?L
8sequential_60_gru_60_gru_cell_60_readvariableop_resource:
??I
6sequential_60_dense_120_matmul_readvariableop_resource:	?dE
7sequential_60_dense_120_biasadd_readvariableop_resource:dH
6sequential_60_dense_121_matmul_readvariableop_resource:dE
7sequential_60_dense_121_biasadd_readvariableop_resource:
identity??.sequential_60/dense_120/BiasAdd/ReadVariableOp?-sequential_60/dense_120/MatMul/ReadVariableOp?.sequential_60/dense_121/BiasAdd/ReadVariableOp?-sequential_60/dense_121/MatMul/ReadVariableOp?7sequential_60/gru_60/gru_cell_60/BiasAdd/ReadVariableOp?6sequential_60/gru_60/gru_cell_60/MatMul/ReadVariableOp?/sequential_60/gru_60/gru_cell_60/ReadVariableOp?1sequential_60/gru_60/gru_cell_60/ReadVariableOp_1?sequential_60/gru_60/whilet
sequential_60/gru_60/ShapeShapegru_60_input*
T0*
_output_shapes
:2
sequential_60/gru_60/Shape?
(sequential_60/gru_60/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(sequential_60/gru_60/strided_slice/stack?
*sequential_60/gru_60/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_60/gru_60/strided_slice/stack_1?
*sequential_60/gru_60/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_60/gru_60/strided_slice/stack_2?
"sequential_60/gru_60/strided_sliceStridedSlice#sequential_60/gru_60/Shape:output:01sequential_60/gru_60/strided_slice/stack:output:03sequential_60/gru_60/strided_slice/stack_1:output:03sequential_60/gru_60/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"sequential_60/gru_60/strided_slice?
 sequential_60/gru_60/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2"
 sequential_60/gru_60/zeros/mul/y?
sequential_60/gru_60/zeros/mulMul+sequential_60/gru_60/strided_slice:output:0)sequential_60/gru_60/zeros/mul/y:output:0*
T0*
_output_shapes
: 2 
sequential_60/gru_60/zeros/mul?
!sequential_60/gru_60/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2#
!sequential_60/gru_60/zeros/Less/y?
sequential_60/gru_60/zeros/LessLess"sequential_60/gru_60/zeros/mul:z:0*sequential_60/gru_60/zeros/Less/y:output:0*
T0*
_output_shapes
: 2!
sequential_60/gru_60/zeros/Less?
#sequential_60/gru_60/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2%
#sequential_60/gru_60/zeros/packed/1?
!sequential_60/gru_60/zeros/packedPack+sequential_60/gru_60/strided_slice:output:0,sequential_60/gru_60/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2#
!sequential_60/gru_60/zeros/packed?
 sequential_60/gru_60/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2"
 sequential_60/gru_60/zeros/Const?
sequential_60/gru_60/zerosFill*sequential_60/gru_60/zeros/packed:output:0)sequential_60/gru_60/zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
sequential_60/gru_60/zeros?
#sequential_60/gru_60/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2%
#sequential_60/gru_60/transpose/perm?
sequential_60/gru_60/transpose	Transposegru_60_input,sequential_60/gru_60/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2 
sequential_60/gru_60/transpose?
sequential_60/gru_60/Shape_1Shape"sequential_60/gru_60/transpose:y:0*
T0*
_output_shapes
:2
sequential_60/gru_60/Shape_1?
*sequential_60/gru_60/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_60/gru_60/strided_slice_1/stack?
,sequential_60/gru_60/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_60/gru_60/strided_slice_1/stack_1?
,sequential_60/gru_60/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_60/gru_60/strided_slice_1/stack_2?
$sequential_60/gru_60/strided_slice_1StridedSlice%sequential_60/gru_60/Shape_1:output:03sequential_60/gru_60/strided_slice_1/stack:output:05sequential_60/gru_60/strided_slice_1/stack_1:output:05sequential_60/gru_60/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$sequential_60/gru_60/strided_slice_1?
0sequential_60/gru_60/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????22
0sequential_60/gru_60/TensorArrayV2/element_shape?
"sequential_60/gru_60/TensorArrayV2TensorListReserve9sequential_60/gru_60/TensorArrayV2/element_shape:output:0-sequential_60/gru_60/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02$
"sequential_60/gru_60/TensorArrayV2?
Jsequential_60/gru_60/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2L
Jsequential_60/gru_60/TensorArrayUnstack/TensorListFromTensor/element_shape?
<sequential_60/gru_60/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"sequential_60/gru_60/transpose:y:0Ssequential_60/gru_60/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02>
<sequential_60/gru_60/TensorArrayUnstack/TensorListFromTensor?
*sequential_60/gru_60/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_60/gru_60/strided_slice_2/stack?
,sequential_60/gru_60/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_60/gru_60/strided_slice_2/stack_1?
,sequential_60/gru_60/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_60/gru_60/strided_slice_2/stack_2?
$sequential_60/gru_60/strided_slice_2StridedSlice"sequential_60/gru_60/transpose:y:03sequential_60/gru_60/strided_slice_2/stack:output:05sequential_60/gru_60/strided_slice_2/stack_1:output:05sequential_60/gru_60/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2&
$sequential_60/gru_60/strided_slice_2?
6sequential_60/gru_60/gru_cell_60/MatMul/ReadVariableOpReadVariableOp?sequential_60_gru_60_gru_cell_60_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype028
6sequential_60/gru_60/gru_cell_60/MatMul/ReadVariableOp?
'sequential_60/gru_60/gru_cell_60/MatMulMatMul-sequential_60/gru_60/strided_slice_2:output:0>sequential_60/gru_60/gru_cell_60/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2)
'sequential_60/gru_60/gru_cell_60/MatMul?
7sequential_60/gru_60/gru_cell_60/BiasAdd/ReadVariableOpReadVariableOp@sequential_60_gru_60_gru_cell_60_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype029
7sequential_60/gru_60/gru_cell_60/BiasAdd/ReadVariableOp?
(sequential_60/gru_60/gru_cell_60/BiasAddBiasAdd1sequential_60/gru_60/gru_cell_60/MatMul:product:0?sequential_60/gru_60/gru_cell_60/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2*
(sequential_60/gru_60/gru_cell_60/BiasAdd?
0sequential_60/gru_60/gru_cell_60/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????22
0sequential_60/gru_60/gru_cell_60/split/split_dim?
&sequential_60/gru_60/gru_cell_60/splitSplit9sequential_60/gru_60/gru_cell_60/split/split_dim:output:01sequential_60/gru_60/gru_cell_60/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2(
&sequential_60/gru_60/gru_cell_60/split?
/sequential_60/gru_60/gru_cell_60/ReadVariableOpReadVariableOp8sequential_60_gru_60_gru_cell_60_readvariableop_resource* 
_output_shapes
:
??*
dtype021
/sequential_60/gru_60/gru_cell_60/ReadVariableOp?
4sequential_60/gru_60/gru_cell_60/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        26
4sequential_60/gru_60/gru_cell_60/strided_slice/stack?
6sequential_60/gru_60/gru_cell_60/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  28
6sequential_60/gru_60/gru_cell_60/strided_slice/stack_1?
6sequential_60/gru_60/gru_cell_60/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      28
6sequential_60/gru_60/gru_cell_60/strided_slice/stack_2?
.sequential_60/gru_60/gru_cell_60/strided_sliceStridedSlice7sequential_60/gru_60/gru_cell_60/ReadVariableOp:value:0=sequential_60/gru_60/gru_cell_60/strided_slice/stack:output:0?sequential_60/gru_60/gru_cell_60/strided_slice/stack_1:output:0?sequential_60/gru_60/gru_cell_60/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask20
.sequential_60/gru_60/gru_cell_60/strided_slice?
)sequential_60/gru_60/gru_cell_60/MatMul_1MatMul#sequential_60/gru_60/zeros:output:07sequential_60/gru_60/gru_cell_60/strided_slice:output:0*
T0*(
_output_shapes
:??????????2+
)sequential_60/gru_60/gru_cell_60/MatMul_1?
&sequential_60/gru_60/gru_cell_60/ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2(
&sequential_60/gru_60/gru_cell_60/Const?
2sequential_60/gru_60/gru_cell_60/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????24
2sequential_60/gru_60/gru_cell_60/split_1/split_dim?
(sequential_60/gru_60/gru_cell_60/split_1SplitV3sequential_60/gru_60/gru_cell_60/MatMul_1:product:0/sequential_60/gru_60/gru_cell_60/Const:output:0;sequential_60/gru_60/gru_cell_60/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:??????????:??????????:????????? *
	num_split2*
(sequential_60/gru_60/gru_cell_60/split_1?
$sequential_60/gru_60/gru_cell_60/addAddV2/sequential_60/gru_60/gru_cell_60/split:output:01sequential_60/gru_60/gru_cell_60/split_1:output:0*
T0*(
_output_shapes
:??????????2&
$sequential_60/gru_60/gru_cell_60/add?
(sequential_60/gru_60/gru_cell_60/SigmoidSigmoid(sequential_60/gru_60/gru_cell_60/add:z:0*
T0*(
_output_shapes
:??????????2*
(sequential_60/gru_60/gru_cell_60/Sigmoid?
&sequential_60/gru_60/gru_cell_60/add_1AddV2/sequential_60/gru_60/gru_cell_60/split:output:11sequential_60/gru_60/gru_cell_60/split_1:output:1*
T0*(
_output_shapes
:??????????2(
&sequential_60/gru_60/gru_cell_60/add_1?
*sequential_60/gru_60/gru_cell_60/Sigmoid_1Sigmoid*sequential_60/gru_60/gru_cell_60/add_1:z:0*
T0*(
_output_shapes
:??????????2,
*sequential_60/gru_60/gru_cell_60/Sigmoid_1?
$sequential_60/gru_60/gru_cell_60/mulMul.sequential_60/gru_60/gru_cell_60/Sigmoid_1:y:0#sequential_60/gru_60/zeros:output:0*
T0*(
_output_shapes
:??????????2&
$sequential_60/gru_60/gru_cell_60/mul?
1sequential_60/gru_60/gru_cell_60/ReadVariableOp_1ReadVariableOp8sequential_60_gru_60_gru_cell_60_readvariableop_resource* 
_output_shapes
:
??*
dtype023
1sequential_60/gru_60/gru_cell_60/ReadVariableOp_1?
6sequential_60/gru_60/gru_cell_60/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  28
6sequential_60/gru_60/gru_cell_60/strided_slice_1/stack?
8sequential_60/gru_60/gru_cell_60/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2:
8sequential_60/gru_60/gru_cell_60/strided_slice_1/stack_1?
8sequential_60/gru_60/gru_cell_60/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2:
8sequential_60/gru_60/gru_cell_60/strided_slice_1/stack_2?
0sequential_60/gru_60/gru_cell_60/strided_slice_1StridedSlice9sequential_60/gru_60/gru_cell_60/ReadVariableOp_1:value:0?sequential_60/gru_60/gru_cell_60/strided_slice_1/stack:output:0Asequential_60/gru_60/gru_cell_60/strided_slice_1/stack_1:output:0Asequential_60/gru_60/gru_cell_60/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask22
0sequential_60/gru_60/gru_cell_60/strided_slice_1?
)sequential_60/gru_60/gru_cell_60/MatMul_2MatMul(sequential_60/gru_60/gru_cell_60/mul:z:09sequential_60/gru_60/gru_cell_60/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2+
)sequential_60/gru_60/gru_cell_60/MatMul_2?
&sequential_60/gru_60/gru_cell_60/add_2AddV2/sequential_60/gru_60/gru_cell_60/split:output:23sequential_60/gru_60/gru_cell_60/MatMul_2:product:0*
T0*(
_output_shapes
:??????????2(
&sequential_60/gru_60/gru_cell_60/add_2?
%sequential_60/gru_60/gru_cell_60/ReluRelu*sequential_60/gru_60/gru_cell_60/add_2:z:0*
T0*(
_output_shapes
:??????????2'
%sequential_60/gru_60/gru_cell_60/Relu?
&sequential_60/gru_60/gru_cell_60/mul_1Mul,sequential_60/gru_60/gru_cell_60/Sigmoid:y:0#sequential_60/gru_60/zeros:output:0*
T0*(
_output_shapes
:??????????2(
&sequential_60/gru_60/gru_cell_60/mul_1?
&sequential_60/gru_60/gru_cell_60/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2(
&sequential_60/gru_60/gru_cell_60/sub/x?
$sequential_60/gru_60/gru_cell_60/subSub/sequential_60/gru_60/gru_cell_60/sub/x:output:0,sequential_60/gru_60/gru_cell_60/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2&
$sequential_60/gru_60/gru_cell_60/sub?
&sequential_60/gru_60/gru_cell_60/mul_2Mul(sequential_60/gru_60/gru_cell_60/sub:z:03sequential_60/gru_60/gru_cell_60/Relu:activations:0*
T0*(
_output_shapes
:??????????2(
&sequential_60/gru_60/gru_cell_60/mul_2?
&sequential_60/gru_60/gru_cell_60/add_3AddV2*sequential_60/gru_60/gru_cell_60/mul_1:z:0*sequential_60/gru_60/gru_cell_60/mul_2:z:0*
T0*(
_output_shapes
:??????????2(
&sequential_60/gru_60/gru_cell_60/add_3?
2sequential_60/gru_60/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   24
2sequential_60/gru_60/TensorArrayV2_1/element_shape?
$sequential_60/gru_60/TensorArrayV2_1TensorListReserve;sequential_60/gru_60/TensorArrayV2_1/element_shape:output:0-sequential_60/gru_60/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02&
$sequential_60/gru_60/TensorArrayV2_1x
sequential_60/gru_60/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_60/gru_60/time?
-sequential_60/gru_60/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2/
-sequential_60/gru_60/while/maximum_iterations?
'sequential_60/gru_60/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2)
'sequential_60/gru_60/while/loop_counter?
sequential_60/gru_60/whileWhile0sequential_60/gru_60/while/loop_counter:output:06sequential_60/gru_60/while/maximum_iterations:output:0"sequential_60/gru_60/time:output:0-sequential_60/gru_60/TensorArrayV2_1:handle:0#sequential_60/gru_60/zeros:output:0-sequential_60/gru_60/strided_slice_1:output:0Lsequential_60/gru_60/TensorArrayUnstack/TensorListFromTensor:output_handle:0?sequential_60_gru_60_gru_cell_60_matmul_readvariableop_resource@sequential_60_gru_60_gru_cell_60_biasadd_readvariableop_resource8sequential_60_gru_60_gru_cell_60_readvariableop_resource*
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
'sequential_60_gru_60_while_body_3026850*3
cond+R)
'sequential_60_gru_60_while_cond_3026849*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations 2
sequential_60/gru_60/while?
Esequential_60/gru_60/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2G
Esequential_60/gru_60/TensorArrayV2Stack/TensorListStack/element_shape?
7sequential_60/gru_60/TensorArrayV2Stack/TensorListStackTensorListStack#sequential_60/gru_60/while:output:3Nsequential_60/gru_60/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype029
7sequential_60/gru_60/TensorArrayV2Stack/TensorListStack?
*sequential_60/gru_60/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2,
*sequential_60/gru_60/strided_slice_3/stack?
,sequential_60/gru_60/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_60/gru_60/strided_slice_3/stack_1?
,sequential_60/gru_60/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_60/gru_60/strided_slice_3/stack_2?
$sequential_60/gru_60/strided_slice_3StridedSlice@sequential_60/gru_60/TensorArrayV2Stack/TensorListStack:tensor:03sequential_60/gru_60/strided_slice_3/stack:output:05sequential_60/gru_60/strided_slice_3/stack_1:output:05sequential_60/gru_60/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2&
$sequential_60/gru_60/strided_slice_3?
%sequential_60/gru_60/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2'
%sequential_60/gru_60/transpose_1/perm?
 sequential_60/gru_60/transpose_1	Transpose@sequential_60/gru_60/TensorArrayV2Stack/TensorListStack:tensor:0.sequential_60/gru_60/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2"
 sequential_60/gru_60/transpose_1?
sequential_60/gru_60/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_60/gru_60/runtime?
-sequential_60/dense_120/MatMul/ReadVariableOpReadVariableOp6sequential_60_dense_120_matmul_readvariableop_resource*
_output_shapes
:	?d*
dtype02/
-sequential_60/dense_120/MatMul/ReadVariableOp?
sequential_60/dense_120/MatMulMatMul-sequential_60/gru_60/strided_slice_3:output:05sequential_60/dense_120/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2 
sequential_60/dense_120/MatMul?
.sequential_60/dense_120/BiasAdd/ReadVariableOpReadVariableOp7sequential_60_dense_120_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype020
.sequential_60/dense_120/BiasAdd/ReadVariableOp?
sequential_60/dense_120/BiasAddBiasAdd(sequential_60/dense_120/MatMul:product:06sequential_60/dense_120/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2!
sequential_60/dense_120/BiasAdd?
sequential_60/dense_120/ReluRelu(sequential_60/dense_120/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
sequential_60/dense_120/Relu?
-sequential_60/dense_121/MatMul/ReadVariableOpReadVariableOp6sequential_60_dense_121_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02/
-sequential_60/dense_121/MatMul/ReadVariableOp?
sequential_60/dense_121/MatMulMatMul*sequential_60/dense_120/Relu:activations:05sequential_60/dense_121/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2 
sequential_60/dense_121/MatMul?
.sequential_60/dense_121/BiasAdd/ReadVariableOpReadVariableOp7sequential_60_dense_121_biasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.sequential_60/dense_121/BiasAdd/ReadVariableOp?
sequential_60/dense_121/BiasAddBiasAdd(sequential_60/dense_121/MatMul:product:06sequential_60/dense_121/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2!
sequential_60/dense_121/BiasAdd?
IdentityIdentity(sequential_60/dense_121/BiasAdd:output:0/^sequential_60/dense_120/BiasAdd/ReadVariableOp.^sequential_60/dense_120/MatMul/ReadVariableOp/^sequential_60/dense_121/BiasAdd/ReadVariableOp.^sequential_60/dense_121/MatMul/ReadVariableOp8^sequential_60/gru_60/gru_cell_60/BiasAdd/ReadVariableOp7^sequential_60/gru_60/gru_cell_60/MatMul/ReadVariableOp0^sequential_60/gru_60/gru_cell_60/ReadVariableOp2^sequential_60/gru_60/gru_cell_60/ReadVariableOp_1^sequential_60/gru_60/while*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2`
.sequential_60/dense_120/BiasAdd/ReadVariableOp.sequential_60/dense_120/BiasAdd/ReadVariableOp2^
-sequential_60/dense_120/MatMul/ReadVariableOp-sequential_60/dense_120/MatMul/ReadVariableOp2`
.sequential_60/dense_121/BiasAdd/ReadVariableOp.sequential_60/dense_121/BiasAdd/ReadVariableOp2^
-sequential_60/dense_121/MatMul/ReadVariableOp-sequential_60/dense_121/MatMul/ReadVariableOp2r
7sequential_60/gru_60/gru_cell_60/BiasAdd/ReadVariableOp7sequential_60/gru_60/gru_cell_60/BiasAdd/ReadVariableOp2p
6sequential_60/gru_60/gru_cell_60/MatMul/ReadVariableOp6sequential_60/gru_60/gru_cell_60/MatMul/ReadVariableOp2b
/sequential_60/gru_60/gru_cell_60/ReadVariableOp/sequential_60/gru_60/gru_cell_60/ReadVariableOp2f
1sequential_60/gru_60/gru_cell_60/ReadVariableOp_11sequential_60/gru_60/gru_cell_60/ReadVariableOp_128
sequential_60/gru_60/whilesequential_60/gru_60/while:Y U
+
_output_shapes
:?????????
&
_user_specified_namegru_60_input
?*
?
H__inference_gru_cell_60_layer_call_and_return_conditional_losses_3027190

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
?=
?
C__inference_gru_60_layer_call_and_return_conditional_losses_3027117

inputs&
gru_cell_60_3027041:	?"
gru_cell_60_3027043:	?'
gru_cell_60_3027045:
??
identity??#gru_cell_60/StatefulPartitionedCall?whileD
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
#gru_cell_60/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0gru_cell_60_3027041gru_cell_60_3027043gru_cell_60_3027045*
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
H__inference_gru_cell_60_layer_call_and_return_conditional_losses_30270402%
#gru_cell_60/StatefulPartitionedCall?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0gru_cell_60_3027041gru_cell_60_3027043gru_cell_60_3027045*
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
while_body_3027053*
condR
while_cond_3027052*9
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
IdentityIdentitystrided_slice_3:output:0$^gru_cell_60/StatefulPartitionedCall^while*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2J
#gru_cell_60/StatefulPartitionedCall#gru_cell_60/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?W
?
while_body_3029145
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_gru_cell_60_matmul_readvariableop_resource_0:	?B
3while_gru_cell_60_biasadd_readvariableop_resource_0:	??
+while_gru_cell_60_readvariableop_resource_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_gru_cell_60_matmul_readvariableop_resource:	?@
1while_gru_cell_60_biasadd_readvariableop_resource:	?=
)while_gru_cell_60_readvariableop_resource:
????(while/gru_cell_60/BiasAdd/ReadVariableOp?'while/gru_cell_60/MatMul/ReadVariableOp? while/gru_cell_60/ReadVariableOp?"while/gru_cell_60/ReadVariableOp_1?
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
'while/gru_cell_60/MatMul/ReadVariableOpReadVariableOp2while_gru_cell_60_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02)
'while/gru_cell_60/MatMul/ReadVariableOp?
while/gru_cell_60/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/gru_cell_60/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/MatMul?
(while/gru_cell_60/BiasAdd/ReadVariableOpReadVariableOp3while_gru_cell_60_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/gru_cell_60/BiasAdd/ReadVariableOp?
while/gru_cell_60/BiasAddBiasAdd"while/gru_cell_60/MatMul:product:00while/gru_cell_60/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/BiasAdd?
!while/gru_cell_60/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2#
!while/gru_cell_60/split/split_dim?
while/gru_cell_60/splitSplit*while/gru_cell_60/split/split_dim:output:0"while/gru_cell_60/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
while/gru_cell_60/split?
 while/gru_cell_60/ReadVariableOpReadVariableOp+while_gru_cell_60_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02"
 while/gru_cell_60/ReadVariableOp?
%while/gru_cell_60/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/gru_cell_60/strided_slice/stack?
'while/gru_cell_60/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2)
'while/gru_cell_60/strided_slice/stack_1?
'while/gru_cell_60/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/gru_cell_60/strided_slice/stack_2?
while/gru_cell_60/strided_sliceStridedSlice(while/gru_cell_60/ReadVariableOp:value:0.while/gru_cell_60/strided_slice/stack:output:00while/gru_cell_60/strided_slice/stack_1:output:00while/gru_cell_60/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2!
while/gru_cell_60/strided_slice?
while/gru_cell_60/MatMul_1MatMulwhile_placeholder_2(while/gru_cell_60/strided_slice:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/MatMul_1?
while/gru_cell_60/ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2
while/gru_cell_60/Const?
#while/gru_cell_60/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2%
#while/gru_cell_60/split_1/split_dim?
while/gru_cell_60/split_1SplitV$while/gru_cell_60/MatMul_1:product:0 while/gru_cell_60/Const:output:0,while/gru_cell_60/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:??????????:??????????:????????? *
	num_split2
while/gru_cell_60/split_1?
while/gru_cell_60/addAddV2 while/gru_cell_60/split:output:0"while/gru_cell_60/split_1:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/add?
while/gru_cell_60/SigmoidSigmoidwhile/gru_cell_60/add:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/Sigmoid?
while/gru_cell_60/add_1AddV2 while/gru_cell_60/split:output:1"while/gru_cell_60/split_1:output:1*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/add_1?
while/gru_cell_60/Sigmoid_1Sigmoidwhile/gru_cell_60/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/Sigmoid_1?
while/gru_cell_60/mulMulwhile/gru_cell_60/Sigmoid_1:y:0while_placeholder_2*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/mul?
"while/gru_cell_60/ReadVariableOp_1ReadVariableOp+while_gru_cell_60_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02$
"while/gru_cell_60/ReadVariableOp_1?
'while/gru_cell_60/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2)
'while/gru_cell_60/strided_slice_1/stack?
)while/gru_cell_60/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/gru_cell_60/strided_slice_1/stack_1?
)while/gru_cell_60/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/gru_cell_60/strided_slice_1/stack_2?
!while/gru_cell_60/strided_slice_1StridedSlice*while/gru_cell_60/ReadVariableOp_1:value:00while/gru_cell_60/strided_slice_1/stack:output:02while/gru_cell_60/strided_slice_1/stack_1:output:02while/gru_cell_60/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2#
!while/gru_cell_60/strided_slice_1?
while/gru_cell_60/MatMul_2MatMulwhile/gru_cell_60/mul:z:0*while/gru_cell_60/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/MatMul_2?
while/gru_cell_60/add_2AddV2 while/gru_cell_60/split:output:2$while/gru_cell_60/MatMul_2:product:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/add_2?
while/gru_cell_60/ReluReluwhile/gru_cell_60/add_2:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/Relu?
while/gru_cell_60/mul_1Mulwhile/gru_cell_60/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/mul_1w
while/gru_cell_60/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/gru_cell_60/sub/x?
while/gru_cell_60/subSub while/gru_cell_60/sub/x:output:0while/gru_cell_60/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/sub?
while/gru_cell_60/mul_2Mulwhile/gru_cell_60/sub:z:0$while/gru_cell_60/Relu:activations:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/mul_2?
while/gru_cell_60/add_3AddV2while/gru_cell_60/mul_1:z:0while/gru_cell_60/mul_2:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/add_3?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_60/add_3:z:0*
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
while/IdentityIdentitywhile/add_1:z:0)^while/gru_cell_60/BiasAdd/ReadVariableOp(^while/gru_cell_60/MatMul/ReadVariableOp!^while/gru_cell_60/ReadVariableOp#^while/gru_cell_60/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations)^while/gru_cell_60/BiasAdd/ReadVariableOp(^while/gru_cell_60/MatMul/ReadVariableOp!^while/gru_cell_60/ReadVariableOp#^while/gru_cell_60/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0)^while/gru_cell_60/BiasAdd/ReadVariableOp(^while/gru_cell_60/MatMul/ReadVariableOp!^while/gru_cell_60/ReadVariableOp#^while/gru_cell_60/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/gru_cell_60/BiasAdd/ReadVariableOp(^while/gru_cell_60/MatMul/ReadVariableOp!^while/gru_cell_60/ReadVariableOp#^while/gru_cell_60/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/gru_cell_60/add_3:z:0)^while/gru_cell_60/BiasAdd/ReadVariableOp(^while/gru_cell_60/MatMul/ReadVariableOp!^while/gru_cell_60/ReadVariableOp#^while/gru_cell_60/ReadVariableOp_1*
T0*(
_output_shapes
:??????????2
while/Identity_4"h
1while_gru_cell_60_biasadd_readvariableop_resource3while_gru_cell_60_biasadd_readvariableop_resource_0"f
0while_gru_cell_60_matmul_readvariableop_resource2while_gru_cell_60_matmul_readvariableop_resource_0"X
)while_gru_cell_60_readvariableop_resource+while_gru_cell_60_readvariableop_resource_0")
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
(while/gru_cell_60/BiasAdd/ReadVariableOp(while/gru_cell_60/BiasAdd/ReadVariableOp2R
'while/gru_cell_60/MatMul/ReadVariableOp'while/gru_cell_60/MatMul/ReadVariableOp2D
 while/gru_cell_60/ReadVariableOp while/gru_cell_60/ReadVariableOp2H
"while/gru_cell_60/ReadVariableOp_1"while/gru_cell_60/ReadVariableOp_1: 
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
+__inference_dense_121_layer_call_fn_3029324

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
F__inference_dense_121_layer_call_and_return_conditional_losses_30277672
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
?
'sequential_60_gru_60_while_body_3026850F
Bsequential_60_gru_60_while_sequential_60_gru_60_while_loop_counterL
Hsequential_60_gru_60_while_sequential_60_gru_60_while_maximum_iterations*
&sequential_60_gru_60_while_placeholder,
(sequential_60_gru_60_while_placeholder_1,
(sequential_60_gru_60_while_placeholder_2E
Asequential_60_gru_60_while_sequential_60_gru_60_strided_slice_1_0?
}sequential_60_gru_60_while_tensorarrayv2read_tensorlistgetitem_sequential_60_gru_60_tensorarrayunstack_tensorlistfromtensor_0Z
Gsequential_60_gru_60_while_gru_cell_60_matmul_readvariableop_resource_0:	?W
Hsequential_60_gru_60_while_gru_cell_60_biasadd_readvariableop_resource_0:	?T
@sequential_60_gru_60_while_gru_cell_60_readvariableop_resource_0:
??'
#sequential_60_gru_60_while_identity)
%sequential_60_gru_60_while_identity_1)
%sequential_60_gru_60_while_identity_2)
%sequential_60_gru_60_while_identity_3)
%sequential_60_gru_60_while_identity_4C
?sequential_60_gru_60_while_sequential_60_gru_60_strided_slice_1
{sequential_60_gru_60_while_tensorarrayv2read_tensorlistgetitem_sequential_60_gru_60_tensorarrayunstack_tensorlistfromtensorX
Esequential_60_gru_60_while_gru_cell_60_matmul_readvariableop_resource:	?U
Fsequential_60_gru_60_while_gru_cell_60_biasadd_readvariableop_resource:	?R
>sequential_60_gru_60_while_gru_cell_60_readvariableop_resource:
????=sequential_60/gru_60/while/gru_cell_60/BiasAdd/ReadVariableOp?<sequential_60/gru_60/while/gru_cell_60/MatMul/ReadVariableOp?5sequential_60/gru_60/while/gru_cell_60/ReadVariableOp?7sequential_60/gru_60/while/gru_cell_60/ReadVariableOp_1?
Lsequential_60/gru_60/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2N
Lsequential_60/gru_60/while/TensorArrayV2Read/TensorListGetItem/element_shape?
>sequential_60/gru_60/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem}sequential_60_gru_60_while_tensorarrayv2read_tensorlistgetitem_sequential_60_gru_60_tensorarrayunstack_tensorlistfromtensor_0&sequential_60_gru_60_while_placeholderUsequential_60/gru_60/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype02@
>sequential_60/gru_60/while/TensorArrayV2Read/TensorListGetItem?
<sequential_60/gru_60/while/gru_cell_60/MatMul/ReadVariableOpReadVariableOpGsequential_60_gru_60_while_gru_cell_60_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02>
<sequential_60/gru_60/while/gru_cell_60/MatMul/ReadVariableOp?
-sequential_60/gru_60/while/gru_cell_60/MatMulMatMulEsequential_60/gru_60/while/TensorArrayV2Read/TensorListGetItem:item:0Dsequential_60/gru_60/while/gru_cell_60/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2/
-sequential_60/gru_60/while/gru_cell_60/MatMul?
=sequential_60/gru_60/while/gru_cell_60/BiasAdd/ReadVariableOpReadVariableOpHsequential_60_gru_60_while_gru_cell_60_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02?
=sequential_60/gru_60/while/gru_cell_60/BiasAdd/ReadVariableOp?
.sequential_60/gru_60/while/gru_cell_60/BiasAddBiasAdd7sequential_60/gru_60/while/gru_cell_60/MatMul:product:0Esequential_60/gru_60/while/gru_cell_60/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????20
.sequential_60/gru_60/while/gru_cell_60/BiasAdd?
6sequential_60/gru_60/while/gru_cell_60/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????28
6sequential_60/gru_60/while/gru_cell_60/split/split_dim?
,sequential_60/gru_60/while/gru_cell_60/splitSplit?sequential_60/gru_60/while/gru_cell_60/split/split_dim:output:07sequential_60/gru_60/while/gru_cell_60/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2.
,sequential_60/gru_60/while/gru_cell_60/split?
5sequential_60/gru_60/while/gru_cell_60/ReadVariableOpReadVariableOp@sequential_60_gru_60_while_gru_cell_60_readvariableop_resource_0* 
_output_shapes
:
??*
dtype027
5sequential_60/gru_60/while/gru_cell_60/ReadVariableOp?
:sequential_60/gru_60/while/gru_cell_60/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2<
:sequential_60/gru_60/while/gru_cell_60/strided_slice/stack?
<sequential_60/gru_60/while/gru_cell_60/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2>
<sequential_60/gru_60/while/gru_cell_60/strided_slice/stack_1?
<sequential_60/gru_60/while/gru_cell_60/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2>
<sequential_60/gru_60/while/gru_cell_60/strided_slice/stack_2?
4sequential_60/gru_60/while/gru_cell_60/strided_sliceStridedSlice=sequential_60/gru_60/while/gru_cell_60/ReadVariableOp:value:0Csequential_60/gru_60/while/gru_cell_60/strided_slice/stack:output:0Esequential_60/gru_60/while/gru_cell_60/strided_slice/stack_1:output:0Esequential_60/gru_60/while/gru_cell_60/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask26
4sequential_60/gru_60/while/gru_cell_60/strided_slice?
/sequential_60/gru_60/while/gru_cell_60/MatMul_1MatMul(sequential_60_gru_60_while_placeholder_2=sequential_60/gru_60/while/gru_cell_60/strided_slice:output:0*
T0*(
_output_shapes
:??????????21
/sequential_60/gru_60/while/gru_cell_60/MatMul_1?
,sequential_60/gru_60/while/gru_cell_60/ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2.
,sequential_60/gru_60/while/gru_cell_60/Const?
8sequential_60/gru_60/while/gru_cell_60/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2:
8sequential_60/gru_60/while/gru_cell_60/split_1/split_dim?
.sequential_60/gru_60/while/gru_cell_60/split_1SplitV9sequential_60/gru_60/while/gru_cell_60/MatMul_1:product:05sequential_60/gru_60/while/gru_cell_60/Const:output:0Asequential_60/gru_60/while/gru_cell_60/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:??????????:??????????:????????? *
	num_split20
.sequential_60/gru_60/while/gru_cell_60/split_1?
*sequential_60/gru_60/while/gru_cell_60/addAddV25sequential_60/gru_60/while/gru_cell_60/split:output:07sequential_60/gru_60/while/gru_cell_60/split_1:output:0*
T0*(
_output_shapes
:??????????2,
*sequential_60/gru_60/while/gru_cell_60/add?
.sequential_60/gru_60/while/gru_cell_60/SigmoidSigmoid.sequential_60/gru_60/while/gru_cell_60/add:z:0*
T0*(
_output_shapes
:??????????20
.sequential_60/gru_60/while/gru_cell_60/Sigmoid?
,sequential_60/gru_60/while/gru_cell_60/add_1AddV25sequential_60/gru_60/while/gru_cell_60/split:output:17sequential_60/gru_60/while/gru_cell_60/split_1:output:1*
T0*(
_output_shapes
:??????????2.
,sequential_60/gru_60/while/gru_cell_60/add_1?
0sequential_60/gru_60/while/gru_cell_60/Sigmoid_1Sigmoid0sequential_60/gru_60/while/gru_cell_60/add_1:z:0*
T0*(
_output_shapes
:??????????22
0sequential_60/gru_60/while/gru_cell_60/Sigmoid_1?
*sequential_60/gru_60/while/gru_cell_60/mulMul4sequential_60/gru_60/while/gru_cell_60/Sigmoid_1:y:0(sequential_60_gru_60_while_placeholder_2*
T0*(
_output_shapes
:??????????2,
*sequential_60/gru_60/while/gru_cell_60/mul?
7sequential_60/gru_60/while/gru_cell_60/ReadVariableOp_1ReadVariableOp@sequential_60_gru_60_while_gru_cell_60_readvariableop_resource_0* 
_output_shapes
:
??*
dtype029
7sequential_60/gru_60/while/gru_cell_60/ReadVariableOp_1?
<sequential_60/gru_60/while/gru_cell_60/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2>
<sequential_60/gru_60/while/gru_cell_60/strided_slice_1/stack?
>sequential_60/gru_60/while/gru_cell_60/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2@
>sequential_60/gru_60/while/gru_cell_60/strided_slice_1/stack_1?
>sequential_60/gru_60/while/gru_cell_60/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2@
>sequential_60/gru_60/while/gru_cell_60/strided_slice_1/stack_2?
6sequential_60/gru_60/while/gru_cell_60/strided_slice_1StridedSlice?sequential_60/gru_60/while/gru_cell_60/ReadVariableOp_1:value:0Esequential_60/gru_60/while/gru_cell_60/strided_slice_1/stack:output:0Gsequential_60/gru_60/while/gru_cell_60/strided_slice_1/stack_1:output:0Gsequential_60/gru_60/while/gru_cell_60/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask28
6sequential_60/gru_60/while/gru_cell_60/strided_slice_1?
/sequential_60/gru_60/while/gru_cell_60/MatMul_2MatMul.sequential_60/gru_60/while/gru_cell_60/mul:z:0?sequential_60/gru_60/while/gru_cell_60/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????21
/sequential_60/gru_60/while/gru_cell_60/MatMul_2?
,sequential_60/gru_60/while/gru_cell_60/add_2AddV25sequential_60/gru_60/while/gru_cell_60/split:output:29sequential_60/gru_60/while/gru_cell_60/MatMul_2:product:0*
T0*(
_output_shapes
:??????????2.
,sequential_60/gru_60/while/gru_cell_60/add_2?
+sequential_60/gru_60/while/gru_cell_60/ReluRelu0sequential_60/gru_60/while/gru_cell_60/add_2:z:0*
T0*(
_output_shapes
:??????????2-
+sequential_60/gru_60/while/gru_cell_60/Relu?
,sequential_60/gru_60/while/gru_cell_60/mul_1Mul2sequential_60/gru_60/while/gru_cell_60/Sigmoid:y:0(sequential_60_gru_60_while_placeholder_2*
T0*(
_output_shapes
:??????????2.
,sequential_60/gru_60/while/gru_cell_60/mul_1?
,sequential_60/gru_60/while/gru_cell_60/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2.
,sequential_60/gru_60/while/gru_cell_60/sub/x?
*sequential_60/gru_60/while/gru_cell_60/subSub5sequential_60/gru_60/while/gru_cell_60/sub/x:output:02sequential_60/gru_60/while/gru_cell_60/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2,
*sequential_60/gru_60/while/gru_cell_60/sub?
,sequential_60/gru_60/while/gru_cell_60/mul_2Mul.sequential_60/gru_60/while/gru_cell_60/sub:z:09sequential_60/gru_60/while/gru_cell_60/Relu:activations:0*
T0*(
_output_shapes
:??????????2.
,sequential_60/gru_60/while/gru_cell_60/mul_2?
,sequential_60/gru_60/while/gru_cell_60/add_3AddV20sequential_60/gru_60/while/gru_cell_60/mul_1:z:00sequential_60/gru_60/while/gru_cell_60/mul_2:z:0*
T0*(
_output_shapes
:??????????2.
,sequential_60/gru_60/while/gru_cell_60/add_3?
?sequential_60/gru_60/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem(sequential_60_gru_60_while_placeholder_1&sequential_60_gru_60_while_placeholder0sequential_60/gru_60/while/gru_cell_60/add_3:z:0*
_output_shapes
: *
element_dtype02A
?sequential_60/gru_60/while/TensorArrayV2Write/TensorListSetItem?
 sequential_60/gru_60/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2"
 sequential_60/gru_60/while/add/y?
sequential_60/gru_60/while/addAddV2&sequential_60_gru_60_while_placeholder)sequential_60/gru_60/while/add/y:output:0*
T0*
_output_shapes
: 2 
sequential_60/gru_60/while/add?
"sequential_60/gru_60/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2$
"sequential_60/gru_60/while/add_1/y?
 sequential_60/gru_60/while/add_1AddV2Bsequential_60_gru_60_while_sequential_60_gru_60_while_loop_counter+sequential_60/gru_60/while/add_1/y:output:0*
T0*
_output_shapes
: 2"
 sequential_60/gru_60/while/add_1?
#sequential_60/gru_60/while/IdentityIdentity$sequential_60/gru_60/while/add_1:z:0>^sequential_60/gru_60/while/gru_cell_60/BiasAdd/ReadVariableOp=^sequential_60/gru_60/while/gru_cell_60/MatMul/ReadVariableOp6^sequential_60/gru_60/while/gru_cell_60/ReadVariableOp8^sequential_60/gru_60/while/gru_cell_60/ReadVariableOp_1*
T0*
_output_shapes
: 2%
#sequential_60/gru_60/while/Identity?
%sequential_60/gru_60/while/Identity_1IdentityHsequential_60_gru_60_while_sequential_60_gru_60_while_maximum_iterations>^sequential_60/gru_60/while/gru_cell_60/BiasAdd/ReadVariableOp=^sequential_60/gru_60/while/gru_cell_60/MatMul/ReadVariableOp6^sequential_60/gru_60/while/gru_cell_60/ReadVariableOp8^sequential_60/gru_60/while/gru_cell_60/ReadVariableOp_1*
T0*
_output_shapes
: 2'
%sequential_60/gru_60/while/Identity_1?
%sequential_60/gru_60/while/Identity_2Identity"sequential_60/gru_60/while/add:z:0>^sequential_60/gru_60/while/gru_cell_60/BiasAdd/ReadVariableOp=^sequential_60/gru_60/while/gru_cell_60/MatMul/ReadVariableOp6^sequential_60/gru_60/while/gru_cell_60/ReadVariableOp8^sequential_60/gru_60/while/gru_cell_60/ReadVariableOp_1*
T0*
_output_shapes
: 2'
%sequential_60/gru_60/while/Identity_2?
%sequential_60/gru_60/while/Identity_3IdentityOsequential_60/gru_60/while/TensorArrayV2Write/TensorListSetItem:output_handle:0>^sequential_60/gru_60/while/gru_cell_60/BiasAdd/ReadVariableOp=^sequential_60/gru_60/while/gru_cell_60/MatMul/ReadVariableOp6^sequential_60/gru_60/while/gru_cell_60/ReadVariableOp8^sequential_60/gru_60/while/gru_cell_60/ReadVariableOp_1*
T0*
_output_shapes
: 2'
%sequential_60/gru_60/while/Identity_3?
%sequential_60/gru_60/while/Identity_4Identity0sequential_60/gru_60/while/gru_cell_60/add_3:z:0>^sequential_60/gru_60/while/gru_cell_60/BiasAdd/ReadVariableOp=^sequential_60/gru_60/while/gru_cell_60/MatMul/ReadVariableOp6^sequential_60/gru_60/while/gru_cell_60/ReadVariableOp8^sequential_60/gru_60/while/gru_cell_60/ReadVariableOp_1*
T0*(
_output_shapes
:??????????2'
%sequential_60/gru_60/while/Identity_4"?
Fsequential_60_gru_60_while_gru_cell_60_biasadd_readvariableop_resourceHsequential_60_gru_60_while_gru_cell_60_biasadd_readvariableop_resource_0"?
Esequential_60_gru_60_while_gru_cell_60_matmul_readvariableop_resourceGsequential_60_gru_60_while_gru_cell_60_matmul_readvariableop_resource_0"?
>sequential_60_gru_60_while_gru_cell_60_readvariableop_resource@sequential_60_gru_60_while_gru_cell_60_readvariableop_resource_0"S
#sequential_60_gru_60_while_identity,sequential_60/gru_60/while/Identity:output:0"W
%sequential_60_gru_60_while_identity_1.sequential_60/gru_60/while/Identity_1:output:0"W
%sequential_60_gru_60_while_identity_2.sequential_60/gru_60/while/Identity_2:output:0"W
%sequential_60_gru_60_while_identity_3.sequential_60/gru_60/while/Identity_3:output:0"W
%sequential_60_gru_60_while_identity_4.sequential_60/gru_60/while/Identity_4:output:0"?
?sequential_60_gru_60_while_sequential_60_gru_60_strided_slice_1Asequential_60_gru_60_while_sequential_60_gru_60_strided_slice_1_0"?
{sequential_60_gru_60_while_tensorarrayv2read_tensorlistgetitem_sequential_60_gru_60_tensorarrayunstack_tensorlistfromtensor}sequential_60_gru_60_while_tensorarrayv2read_tensorlistgetitem_sequential_60_gru_60_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2~
=sequential_60/gru_60/while/gru_cell_60/BiasAdd/ReadVariableOp=sequential_60/gru_60/while/gru_cell_60/BiasAdd/ReadVariableOp2|
<sequential_60/gru_60/while/gru_cell_60/MatMul/ReadVariableOp<sequential_60/gru_60/while/gru_cell_60/MatMul/ReadVariableOp2n
5sequential_60/gru_60/while/gru_cell_60/ReadVariableOp5sequential_60/gru_60/while/gru_cell_60/ReadVariableOp2r
7sequential_60/gru_60/while/gru_cell_60/ReadVariableOp_17sequential_60/gru_60/while/gru_cell_60/ReadVariableOp_1: 
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
C__inference_gru_60_layer_call_and_return_conditional_losses_3027732

inputs=
*gru_cell_60_matmul_readvariableop_resource:	?:
+gru_cell_60_biasadd_readvariableop_resource:	?7
#gru_cell_60_readvariableop_resource:
??
identity??"gru_cell_60/BiasAdd/ReadVariableOp?!gru_cell_60/MatMul/ReadVariableOp?gru_cell_60/ReadVariableOp?gru_cell_60/ReadVariableOp_1?whileD
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
!gru_cell_60/MatMul/ReadVariableOpReadVariableOp*gru_cell_60_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!gru_cell_60/MatMul/ReadVariableOp?
gru_cell_60/MatMulMatMulstrided_slice_2:output:0)gru_cell_60/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/MatMul?
"gru_cell_60/BiasAdd/ReadVariableOpReadVariableOp+gru_cell_60_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"gru_cell_60/BiasAdd/ReadVariableOp?
gru_cell_60/BiasAddBiasAddgru_cell_60/MatMul:product:0*gru_cell_60/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/BiasAdd?
gru_cell_60/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_60/split/split_dim?
gru_cell_60/splitSplit$gru_cell_60/split/split_dim:output:0gru_cell_60/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
gru_cell_60/split?
gru_cell_60/ReadVariableOpReadVariableOp#gru_cell_60_readvariableop_resource* 
_output_shapes
:
??*
dtype02
gru_cell_60/ReadVariableOp?
gru_cell_60/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
gru_cell_60/strided_slice/stack?
!gru_cell_60/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2#
!gru_cell_60/strided_slice/stack_1?
!gru_cell_60/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!gru_cell_60/strided_slice/stack_2?
gru_cell_60/strided_sliceStridedSlice"gru_cell_60/ReadVariableOp:value:0(gru_cell_60/strided_slice/stack:output:0*gru_cell_60/strided_slice/stack_1:output:0*gru_cell_60/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
gru_cell_60/strided_slice?
gru_cell_60/MatMul_1MatMulzeros:output:0"gru_cell_60/strided_slice:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/MatMul_1{
gru_cell_60/ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2
gru_cell_60/Const?
gru_cell_60/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_60/split_1/split_dim?
gru_cell_60/split_1SplitVgru_cell_60/MatMul_1:product:0gru_cell_60/Const:output:0&gru_cell_60/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:??????????:??????????:????????? *
	num_split2
gru_cell_60/split_1?
gru_cell_60/addAddV2gru_cell_60/split:output:0gru_cell_60/split_1:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/add}
gru_cell_60/SigmoidSigmoidgru_cell_60/add:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/Sigmoid?
gru_cell_60/add_1AddV2gru_cell_60/split:output:1gru_cell_60/split_1:output:1*
T0*(
_output_shapes
:??????????2
gru_cell_60/add_1?
gru_cell_60/Sigmoid_1Sigmoidgru_cell_60/add_1:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/Sigmoid_1?
gru_cell_60/mulMulgru_cell_60/Sigmoid_1:y:0zeros:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/mul?
gru_cell_60/ReadVariableOp_1ReadVariableOp#gru_cell_60_readvariableop_resource* 
_output_shapes
:
??*
dtype02
gru_cell_60/ReadVariableOp_1?
!gru_cell_60/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2#
!gru_cell_60/strided_slice_1/stack?
#gru_cell_60/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#gru_cell_60/strided_slice_1/stack_1?
#gru_cell_60/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gru_cell_60/strided_slice_1/stack_2?
gru_cell_60/strided_slice_1StridedSlice$gru_cell_60/ReadVariableOp_1:value:0*gru_cell_60/strided_slice_1/stack:output:0,gru_cell_60/strided_slice_1/stack_1:output:0,gru_cell_60/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
gru_cell_60/strided_slice_1?
gru_cell_60/MatMul_2MatMulgru_cell_60/mul:z:0$gru_cell_60/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/MatMul_2?
gru_cell_60/add_2AddV2gru_cell_60/split:output:2gru_cell_60/MatMul_2:product:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/add_2v
gru_cell_60/ReluRelugru_cell_60/add_2:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/Relu?
gru_cell_60/mul_1Mulgru_cell_60/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/mul_1k
gru_cell_60/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_cell_60/sub/x?
gru_cell_60/subSubgru_cell_60/sub/x:output:0gru_cell_60/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/sub?
gru_cell_60/mul_2Mulgru_cell_60/sub:z:0gru_cell_60/Relu:activations:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/mul_2?
gru_cell_60/add_3AddV2gru_cell_60/mul_1:z:0gru_cell_60/mul_2:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/add_3?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*gru_cell_60_matmul_readvariableop_resource+gru_cell_60_biasadd_readvariableop_resource#gru_cell_60_readvariableop_resource*
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
while_body_3027636*
condR
while_cond_3027635*9
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
IdentityIdentitystrided_slice_3:output:0#^gru_cell_60/BiasAdd/ReadVariableOp"^gru_cell_60/MatMul/ReadVariableOp^gru_cell_60/ReadVariableOp^gru_cell_60/ReadVariableOp_1^while*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2H
"gru_cell_60/BiasAdd/ReadVariableOp"gru_cell_60/BiasAdd/ReadVariableOp2F
!gru_cell_60/MatMul/ReadVariableOp!gru_cell_60/MatMul/ReadVariableOp28
gru_cell_60/ReadVariableOpgru_cell_60/ReadVariableOp2<
gru_cell_60/ReadVariableOp_1gru_cell_60/ReadVariableOp_12
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_3027256
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_3027256___redundant_placeholder05
1while_while_cond_3027256___redundant_placeholder15
1while_while_cond_3027256___redundant_placeholder25
1while_while_cond_3027256___redundant_placeholder3
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
?"
?
while_body_3027257
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_gru_cell_60_3027279_0:	?*
while_gru_cell_60_3027281_0:	?/
while_gru_cell_60_3027283_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_gru_cell_60_3027279:	?(
while_gru_cell_60_3027281:	?-
while_gru_cell_60_3027283:
????)while/gru_cell_60/StatefulPartitionedCall?
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
)while/gru_cell_60/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_gru_cell_60_3027279_0while_gru_cell_60_3027281_0while_gru_cell_60_3027283_0*
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
H__inference_gru_cell_60_layer_call_and_return_conditional_losses_30271902+
)while/gru_cell_60/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/gru_cell_60/StatefulPartitionedCall:output:0*
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
while/IdentityIdentitywhile/add_1:z:0*^while/gru_cell_60/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations*^while/gru_cell_60/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0*^while/gru_cell_60/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/gru_cell_60/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity2while/gru_cell_60/StatefulPartitionedCall:output:1*^while/gru_cell_60/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
while/Identity_4"8
while_gru_cell_60_3027279while_gru_cell_60_3027279_0"8
while_gru_cell_60_3027281while_gru_cell_60_3027281_0"8
while_gru_cell_60_3027283while_gru_cell_60_3027283_0")
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
)while/gru_cell_60/StatefulPartitionedCall)while/gru_cell_60/StatefulPartitionedCall: 
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
/__inference_sequential_60_layer_call_fn_3027791
gru_60_input
unknown:	?
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?d
	unknown_3:d
	unknown_4:d
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallgru_60_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
J__inference_sequential_60_layer_call_and_return_conditional_losses_30277742
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
_user_specified_namegru_60_input
?i
?
C__inference_gru_60_layer_call_and_return_conditional_losses_3028728
inputs_0=
*gru_cell_60_matmul_readvariableop_resource:	?:
+gru_cell_60_biasadd_readvariableop_resource:	?7
#gru_cell_60_readvariableop_resource:
??
identity??"gru_cell_60/BiasAdd/ReadVariableOp?!gru_cell_60/MatMul/ReadVariableOp?gru_cell_60/ReadVariableOp?gru_cell_60/ReadVariableOp_1?whileF
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
!gru_cell_60/MatMul/ReadVariableOpReadVariableOp*gru_cell_60_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!gru_cell_60/MatMul/ReadVariableOp?
gru_cell_60/MatMulMatMulstrided_slice_2:output:0)gru_cell_60/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/MatMul?
"gru_cell_60/BiasAdd/ReadVariableOpReadVariableOp+gru_cell_60_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"gru_cell_60/BiasAdd/ReadVariableOp?
gru_cell_60/BiasAddBiasAddgru_cell_60/MatMul:product:0*gru_cell_60/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/BiasAdd?
gru_cell_60/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_60/split/split_dim?
gru_cell_60/splitSplit$gru_cell_60/split/split_dim:output:0gru_cell_60/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
gru_cell_60/split?
gru_cell_60/ReadVariableOpReadVariableOp#gru_cell_60_readvariableop_resource* 
_output_shapes
:
??*
dtype02
gru_cell_60/ReadVariableOp?
gru_cell_60/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
gru_cell_60/strided_slice/stack?
!gru_cell_60/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2#
!gru_cell_60/strided_slice/stack_1?
!gru_cell_60/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!gru_cell_60/strided_slice/stack_2?
gru_cell_60/strided_sliceStridedSlice"gru_cell_60/ReadVariableOp:value:0(gru_cell_60/strided_slice/stack:output:0*gru_cell_60/strided_slice/stack_1:output:0*gru_cell_60/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
gru_cell_60/strided_slice?
gru_cell_60/MatMul_1MatMulzeros:output:0"gru_cell_60/strided_slice:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/MatMul_1{
gru_cell_60/ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2
gru_cell_60/Const?
gru_cell_60/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_60/split_1/split_dim?
gru_cell_60/split_1SplitVgru_cell_60/MatMul_1:product:0gru_cell_60/Const:output:0&gru_cell_60/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:??????????:??????????:????????? *
	num_split2
gru_cell_60/split_1?
gru_cell_60/addAddV2gru_cell_60/split:output:0gru_cell_60/split_1:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/add}
gru_cell_60/SigmoidSigmoidgru_cell_60/add:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/Sigmoid?
gru_cell_60/add_1AddV2gru_cell_60/split:output:1gru_cell_60/split_1:output:1*
T0*(
_output_shapes
:??????????2
gru_cell_60/add_1?
gru_cell_60/Sigmoid_1Sigmoidgru_cell_60/add_1:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/Sigmoid_1?
gru_cell_60/mulMulgru_cell_60/Sigmoid_1:y:0zeros:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/mul?
gru_cell_60/ReadVariableOp_1ReadVariableOp#gru_cell_60_readvariableop_resource* 
_output_shapes
:
??*
dtype02
gru_cell_60/ReadVariableOp_1?
!gru_cell_60/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2#
!gru_cell_60/strided_slice_1/stack?
#gru_cell_60/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#gru_cell_60/strided_slice_1/stack_1?
#gru_cell_60/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gru_cell_60/strided_slice_1/stack_2?
gru_cell_60/strided_slice_1StridedSlice$gru_cell_60/ReadVariableOp_1:value:0*gru_cell_60/strided_slice_1/stack:output:0,gru_cell_60/strided_slice_1/stack_1:output:0,gru_cell_60/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
gru_cell_60/strided_slice_1?
gru_cell_60/MatMul_2MatMulgru_cell_60/mul:z:0$gru_cell_60/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/MatMul_2?
gru_cell_60/add_2AddV2gru_cell_60/split:output:2gru_cell_60/MatMul_2:product:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/add_2v
gru_cell_60/ReluRelugru_cell_60/add_2:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/Relu?
gru_cell_60/mul_1Mulgru_cell_60/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/mul_1k
gru_cell_60/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_cell_60/sub/x?
gru_cell_60/subSubgru_cell_60/sub/x:output:0gru_cell_60/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/sub?
gru_cell_60/mul_2Mulgru_cell_60/sub:z:0gru_cell_60/Relu:activations:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/mul_2?
gru_cell_60/add_3AddV2gru_cell_60/mul_1:z:0gru_cell_60/mul_2:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/add_3?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*gru_cell_60_matmul_readvariableop_resource+gru_cell_60_biasadd_readvariableop_resource#gru_cell_60_readvariableop_resource*
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
while_body_3028632*
condR
while_cond_3028631*9
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
IdentityIdentitystrided_slice_3:output:0#^gru_cell_60/BiasAdd/ReadVariableOp"^gru_cell_60/MatMul/ReadVariableOp^gru_cell_60/ReadVariableOp^gru_cell_60/ReadVariableOp_1^while*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2H
"gru_cell_60/BiasAdd/ReadVariableOp"gru_cell_60/BiasAdd/ReadVariableOp2F
!gru_cell_60/MatMul/ReadVariableOp!gru_cell_60/MatMul/ReadVariableOp28
gru_cell_60/ReadVariableOpgru_cell_60/ReadVariableOp2<
gru_cell_60/ReadVariableOp_1gru_cell_60/ReadVariableOp_12
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?
?
while_cond_3027052
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_3027052___redundant_placeholder05
1while_while_cond_3027052___redundant_placeholder15
1while_while_cond_3027052___redundant_placeholder25
1while_while_cond_3027052___redundant_placeholder3
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
?
?
while_cond_3027635
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_3027635___redundant_placeholder05
1while_while_cond_3027635___redundant_placeholder15
1while_while_cond_3027635___redundant_placeholder25
1while_while_cond_3027635___redundant_placeholder3
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
H__inference_gru_cell_60_layer_call_and_return_conditional_losses_3027040

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
?"
?
while_body_3027053
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_gru_cell_60_3027075_0:	?*
while_gru_cell_60_3027077_0:	?/
while_gru_cell_60_3027079_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_gru_cell_60_3027075:	?(
while_gru_cell_60_3027077:	?-
while_gru_cell_60_3027079:
????)while/gru_cell_60/StatefulPartitionedCall?
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
)while/gru_cell_60/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_gru_cell_60_3027075_0while_gru_cell_60_3027077_0while_gru_cell_60_3027079_0*
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
H__inference_gru_cell_60_layer_call_and_return_conditional_losses_30270402+
)while/gru_cell_60/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/gru_cell_60/StatefulPartitionedCall:output:0*
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
while/IdentityIdentitywhile/add_1:z:0*^while/gru_cell_60/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations*^while/gru_cell_60/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0*^while/gru_cell_60/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/gru_cell_60/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity2while/gru_cell_60/StatefulPartitionedCall:output:1*^while/gru_cell_60/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
while/Identity_4"8
while_gru_cell_60_3027075while_gru_cell_60_3027075_0"8
while_gru_cell_60_3027077while_gru_cell_60_3027077_0"8
while_gru_cell_60_3027079while_gru_cell_60_3027079_0")
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
)while/gru_cell_60/StatefulPartitionedCall)while/gru_cell_60/StatefulPartitionedCall: 
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
J__inference_sequential_60_layer_call_and_return_conditional_losses_3027774

inputs!
gru_60_3027733:	?
gru_60_3027735:	?"
gru_60_3027737:
??$
dense_120_3027752:	?d
dense_120_3027754:d#
dense_121_3027768:d
dense_121_3027770:
identity??!dense_120/StatefulPartitionedCall?!dense_121/StatefulPartitionedCall?gru_60/StatefulPartitionedCall?
gru_60/StatefulPartitionedCallStatefulPartitionedCallinputsgru_60_3027733gru_60_3027735gru_60_3027737*
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
C__inference_gru_60_layer_call_and_return_conditional_losses_30277322 
gru_60/StatefulPartitionedCall?
!dense_120/StatefulPartitionedCallStatefulPartitionedCall'gru_60/StatefulPartitionedCall:output:0dense_120_3027752dense_120_3027754*
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
F__inference_dense_120_layer_call_and_return_conditional_losses_30277512#
!dense_120/StatefulPartitionedCall?
!dense_121/StatefulPartitionedCallStatefulPartitionedCall*dense_120/StatefulPartitionedCall:output:0dense_121_3027768dense_121_3027770*
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
F__inference_dense_121_layer_call_and_return_conditional_losses_30277672#
!dense_121/StatefulPartitionedCall?
IdentityIdentity*dense_121/StatefulPartitionedCall:output:0"^dense_120/StatefulPartitionedCall"^dense_121/StatefulPartitionedCall^gru_60/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2F
!dense_120/StatefulPartitionedCall!dense_120/StatefulPartitionedCall2F
!dense_121/StatefulPartitionedCall!dense_121/StatefulPartitionedCall2@
gru_60/StatefulPartitionedCallgru_60/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_3028802
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_3028802___redundant_placeholder05
1while_while_cond_3028802___redundant_placeholder15
1while_while_cond_3028802___redundant_placeholder25
1while_while_cond_3028802___redundant_placeholder3
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
gru_60_while_cond_3028225*
&gru_60_while_gru_60_while_loop_counter0
,gru_60_while_gru_60_while_maximum_iterations
gru_60_while_placeholder
gru_60_while_placeholder_1
gru_60_while_placeholder_2,
(gru_60_while_less_gru_60_strided_slice_1C
?gru_60_while_gru_60_while_cond_3028225___redundant_placeholder0C
?gru_60_while_gru_60_while_cond_3028225___redundant_placeholder1C
?gru_60_while_gru_60_while_cond_3028225___redundant_placeholder2C
?gru_60_while_gru_60_while_cond_3028225___redundant_placeholder3
gru_60_while_identity
?
gru_60/while/LessLessgru_60_while_placeholder(gru_60_while_less_gru_60_strided_slice_1*
T0*
_output_shapes
: 2
gru_60/while/Lessr
gru_60/while/IdentityIdentitygru_60/while/Less:z:0*
T0
*
_output_shapes
: 2
gru_60/while/Identity"7
gru_60_while_identitygru_60/while/Identity:output:0*(
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
while_body_3028974
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_gru_cell_60_matmul_readvariableop_resource_0:	?B
3while_gru_cell_60_biasadd_readvariableop_resource_0:	??
+while_gru_cell_60_readvariableop_resource_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_gru_cell_60_matmul_readvariableop_resource:	?@
1while_gru_cell_60_biasadd_readvariableop_resource:	?=
)while_gru_cell_60_readvariableop_resource:
????(while/gru_cell_60/BiasAdd/ReadVariableOp?'while/gru_cell_60/MatMul/ReadVariableOp? while/gru_cell_60/ReadVariableOp?"while/gru_cell_60/ReadVariableOp_1?
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
'while/gru_cell_60/MatMul/ReadVariableOpReadVariableOp2while_gru_cell_60_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02)
'while/gru_cell_60/MatMul/ReadVariableOp?
while/gru_cell_60/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/gru_cell_60/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/MatMul?
(while/gru_cell_60/BiasAdd/ReadVariableOpReadVariableOp3while_gru_cell_60_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/gru_cell_60/BiasAdd/ReadVariableOp?
while/gru_cell_60/BiasAddBiasAdd"while/gru_cell_60/MatMul:product:00while/gru_cell_60/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/BiasAdd?
!while/gru_cell_60/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2#
!while/gru_cell_60/split/split_dim?
while/gru_cell_60/splitSplit*while/gru_cell_60/split/split_dim:output:0"while/gru_cell_60/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
while/gru_cell_60/split?
 while/gru_cell_60/ReadVariableOpReadVariableOp+while_gru_cell_60_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02"
 while/gru_cell_60/ReadVariableOp?
%while/gru_cell_60/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/gru_cell_60/strided_slice/stack?
'while/gru_cell_60/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2)
'while/gru_cell_60/strided_slice/stack_1?
'while/gru_cell_60/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/gru_cell_60/strided_slice/stack_2?
while/gru_cell_60/strided_sliceStridedSlice(while/gru_cell_60/ReadVariableOp:value:0.while/gru_cell_60/strided_slice/stack:output:00while/gru_cell_60/strided_slice/stack_1:output:00while/gru_cell_60/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2!
while/gru_cell_60/strided_slice?
while/gru_cell_60/MatMul_1MatMulwhile_placeholder_2(while/gru_cell_60/strided_slice:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/MatMul_1?
while/gru_cell_60/ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2
while/gru_cell_60/Const?
#while/gru_cell_60/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2%
#while/gru_cell_60/split_1/split_dim?
while/gru_cell_60/split_1SplitV$while/gru_cell_60/MatMul_1:product:0 while/gru_cell_60/Const:output:0,while/gru_cell_60/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:??????????:??????????:????????? *
	num_split2
while/gru_cell_60/split_1?
while/gru_cell_60/addAddV2 while/gru_cell_60/split:output:0"while/gru_cell_60/split_1:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/add?
while/gru_cell_60/SigmoidSigmoidwhile/gru_cell_60/add:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/Sigmoid?
while/gru_cell_60/add_1AddV2 while/gru_cell_60/split:output:1"while/gru_cell_60/split_1:output:1*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/add_1?
while/gru_cell_60/Sigmoid_1Sigmoidwhile/gru_cell_60/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/Sigmoid_1?
while/gru_cell_60/mulMulwhile/gru_cell_60/Sigmoid_1:y:0while_placeholder_2*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/mul?
"while/gru_cell_60/ReadVariableOp_1ReadVariableOp+while_gru_cell_60_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02$
"while/gru_cell_60/ReadVariableOp_1?
'while/gru_cell_60/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2)
'while/gru_cell_60/strided_slice_1/stack?
)while/gru_cell_60/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/gru_cell_60/strided_slice_1/stack_1?
)while/gru_cell_60/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/gru_cell_60/strided_slice_1/stack_2?
!while/gru_cell_60/strided_slice_1StridedSlice*while/gru_cell_60/ReadVariableOp_1:value:00while/gru_cell_60/strided_slice_1/stack:output:02while/gru_cell_60/strided_slice_1/stack_1:output:02while/gru_cell_60/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2#
!while/gru_cell_60/strided_slice_1?
while/gru_cell_60/MatMul_2MatMulwhile/gru_cell_60/mul:z:0*while/gru_cell_60/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/MatMul_2?
while/gru_cell_60/add_2AddV2 while/gru_cell_60/split:output:2$while/gru_cell_60/MatMul_2:product:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/add_2?
while/gru_cell_60/ReluReluwhile/gru_cell_60/add_2:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/Relu?
while/gru_cell_60/mul_1Mulwhile/gru_cell_60/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/mul_1w
while/gru_cell_60/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/gru_cell_60/sub/x?
while/gru_cell_60/subSub while/gru_cell_60/sub/x:output:0while/gru_cell_60/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/sub?
while/gru_cell_60/mul_2Mulwhile/gru_cell_60/sub:z:0$while/gru_cell_60/Relu:activations:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/mul_2?
while/gru_cell_60/add_3AddV2while/gru_cell_60/mul_1:z:0while/gru_cell_60/mul_2:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/add_3?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_60/add_3:z:0*
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
while/IdentityIdentitywhile/add_1:z:0)^while/gru_cell_60/BiasAdd/ReadVariableOp(^while/gru_cell_60/MatMul/ReadVariableOp!^while/gru_cell_60/ReadVariableOp#^while/gru_cell_60/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations)^while/gru_cell_60/BiasAdd/ReadVariableOp(^while/gru_cell_60/MatMul/ReadVariableOp!^while/gru_cell_60/ReadVariableOp#^while/gru_cell_60/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0)^while/gru_cell_60/BiasAdd/ReadVariableOp(^while/gru_cell_60/MatMul/ReadVariableOp!^while/gru_cell_60/ReadVariableOp#^while/gru_cell_60/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/gru_cell_60/BiasAdd/ReadVariableOp(^while/gru_cell_60/MatMul/ReadVariableOp!^while/gru_cell_60/ReadVariableOp#^while/gru_cell_60/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/gru_cell_60/add_3:z:0)^while/gru_cell_60/BiasAdd/ReadVariableOp(^while/gru_cell_60/MatMul/ReadVariableOp!^while/gru_cell_60/ReadVariableOp#^while/gru_cell_60/ReadVariableOp_1*
T0*(
_output_shapes
:??????????2
while/Identity_4"h
1while_gru_cell_60_biasadd_readvariableop_resource3while_gru_cell_60_biasadd_readvariableop_resource_0"f
0while_gru_cell_60_matmul_readvariableop_resource2while_gru_cell_60_matmul_readvariableop_resource_0"X
)while_gru_cell_60_readvariableop_resource+while_gru_cell_60_readvariableop_resource_0")
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
(while/gru_cell_60/BiasAdd/ReadVariableOp(while/gru_cell_60/BiasAdd/ReadVariableOp2R
'while/gru_cell_60/MatMul/ReadVariableOp'while/gru_cell_60/MatMul/ReadVariableOp2D
 while/gru_cell_60/ReadVariableOp while/gru_cell_60/ReadVariableOp2H
"while/gru_cell_60/ReadVariableOp_1"while/gru_cell_60/ReadVariableOp_1: 
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
?z
?
#__inference__traced_restore_3029645
file_prefix4
!assignvariableop_dense_120_kernel:	?d/
!assignvariableop_1_dense_120_bias:d5
#assignvariableop_2_dense_121_kernel:d/
!assignvariableop_3_dense_121_bias:&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: ?
,assignvariableop_9_gru_60_gru_cell_60_kernel:	?K
7assignvariableop_10_gru_60_gru_cell_60_recurrent_kernel:
??:
+assignvariableop_11_gru_60_gru_cell_60_bias:	?#
assignvariableop_12_total: #
assignvariableop_13_count: >
+assignvariableop_14_adam_dense_120_kernel_m:	?d7
)assignvariableop_15_adam_dense_120_bias_m:d=
+assignvariableop_16_adam_dense_121_kernel_m:d7
)assignvariableop_17_adam_dense_121_bias_m:G
4assignvariableop_18_adam_gru_60_gru_cell_60_kernel_m:	?R
>assignvariableop_19_adam_gru_60_gru_cell_60_recurrent_kernel_m:
??A
2assignvariableop_20_adam_gru_60_gru_cell_60_bias_m:	?>
+assignvariableop_21_adam_dense_120_kernel_v:	?d7
)assignvariableop_22_adam_dense_120_bias_v:d=
+assignvariableop_23_adam_dense_121_kernel_v:d7
)assignvariableop_24_adam_dense_121_bias_v:G
4assignvariableop_25_adam_gru_60_gru_cell_60_kernel_v:	?R
>assignvariableop_26_adam_gru_60_gru_cell_60_recurrent_kernel_v:
??A
2assignvariableop_27_adam_gru_60_gru_cell_60_bias_v:	?
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_120_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_120_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp#assignvariableop_2_dense_121_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_121_biasIdentity_3:output:0"/device:CPU:0*
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
AssignVariableOp_9AssignVariableOp,assignvariableop_9_gru_60_gru_cell_60_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp7assignvariableop_10_gru_60_gru_cell_60_recurrent_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp+assignvariableop_11_gru_60_gru_cell_60_biasIdentity_11:output:0"/device:CPU:0*
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
AssignVariableOp_14AssignVariableOp+assignvariableop_14_adam_dense_120_kernel_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp)assignvariableop_15_adam_dense_120_bias_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp+assignvariableop_16_adam_dense_121_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp)assignvariableop_17_adam_dense_121_bias_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp4assignvariableop_18_adam_gru_60_gru_cell_60_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp>assignvariableop_19_adam_gru_60_gru_cell_60_recurrent_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp2assignvariableop_20_adam_gru_60_gru_cell_60_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp+assignvariableop_21_adam_dense_120_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp)assignvariableop_22_adam_dense_120_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp+assignvariableop_23_adam_dense_121_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp)assignvariableop_24_adam_dense_121_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp4assignvariableop_25_adam_gru_60_gru_cell_60_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp>assignvariableop_26_adam_gru_60_gru_cell_60_recurrent_kernel_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp2assignvariableop_27_adam_gru_60_gru_cell_60_bias_vIdentity_27:output:0"/device:CPU:0*
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
while_cond_3027898
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_3027898___redundant_placeholder05
1while_while_cond_3027898___redundant_placeholder15
1while_while_cond_3027898___redundant_placeholder25
1while_while_cond_3027898___redundant_placeholder3
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
while_body_3027899
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_gru_cell_60_matmul_readvariableop_resource_0:	?B
3while_gru_cell_60_biasadd_readvariableop_resource_0:	??
+while_gru_cell_60_readvariableop_resource_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_gru_cell_60_matmul_readvariableop_resource:	?@
1while_gru_cell_60_biasadd_readvariableop_resource:	?=
)while_gru_cell_60_readvariableop_resource:
????(while/gru_cell_60/BiasAdd/ReadVariableOp?'while/gru_cell_60/MatMul/ReadVariableOp? while/gru_cell_60/ReadVariableOp?"while/gru_cell_60/ReadVariableOp_1?
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
'while/gru_cell_60/MatMul/ReadVariableOpReadVariableOp2while_gru_cell_60_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02)
'while/gru_cell_60/MatMul/ReadVariableOp?
while/gru_cell_60/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/gru_cell_60/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/MatMul?
(while/gru_cell_60/BiasAdd/ReadVariableOpReadVariableOp3while_gru_cell_60_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/gru_cell_60/BiasAdd/ReadVariableOp?
while/gru_cell_60/BiasAddBiasAdd"while/gru_cell_60/MatMul:product:00while/gru_cell_60/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/BiasAdd?
!while/gru_cell_60/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2#
!while/gru_cell_60/split/split_dim?
while/gru_cell_60/splitSplit*while/gru_cell_60/split/split_dim:output:0"while/gru_cell_60/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
while/gru_cell_60/split?
 while/gru_cell_60/ReadVariableOpReadVariableOp+while_gru_cell_60_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02"
 while/gru_cell_60/ReadVariableOp?
%while/gru_cell_60/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/gru_cell_60/strided_slice/stack?
'while/gru_cell_60/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2)
'while/gru_cell_60/strided_slice/stack_1?
'while/gru_cell_60/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/gru_cell_60/strided_slice/stack_2?
while/gru_cell_60/strided_sliceStridedSlice(while/gru_cell_60/ReadVariableOp:value:0.while/gru_cell_60/strided_slice/stack:output:00while/gru_cell_60/strided_slice/stack_1:output:00while/gru_cell_60/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2!
while/gru_cell_60/strided_slice?
while/gru_cell_60/MatMul_1MatMulwhile_placeholder_2(while/gru_cell_60/strided_slice:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/MatMul_1?
while/gru_cell_60/ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2
while/gru_cell_60/Const?
#while/gru_cell_60/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2%
#while/gru_cell_60/split_1/split_dim?
while/gru_cell_60/split_1SplitV$while/gru_cell_60/MatMul_1:product:0 while/gru_cell_60/Const:output:0,while/gru_cell_60/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:??????????:??????????:????????? *
	num_split2
while/gru_cell_60/split_1?
while/gru_cell_60/addAddV2 while/gru_cell_60/split:output:0"while/gru_cell_60/split_1:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/add?
while/gru_cell_60/SigmoidSigmoidwhile/gru_cell_60/add:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/Sigmoid?
while/gru_cell_60/add_1AddV2 while/gru_cell_60/split:output:1"while/gru_cell_60/split_1:output:1*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/add_1?
while/gru_cell_60/Sigmoid_1Sigmoidwhile/gru_cell_60/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/Sigmoid_1?
while/gru_cell_60/mulMulwhile/gru_cell_60/Sigmoid_1:y:0while_placeholder_2*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/mul?
"while/gru_cell_60/ReadVariableOp_1ReadVariableOp+while_gru_cell_60_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02$
"while/gru_cell_60/ReadVariableOp_1?
'while/gru_cell_60/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2)
'while/gru_cell_60/strided_slice_1/stack?
)while/gru_cell_60/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/gru_cell_60/strided_slice_1/stack_1?
)while/gru_cell_60/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/gru_cell_60/strided_slice_1/stack_2?
!while/gru_cell_60/strided_slice_1StridedSlice*while/gru_cell_60/ReadVariableOp_1:value:00while/gru_cell_60/strided_slice_1/stack:output:02while/gru_cell_60/strided_slice_1/stack_1:output:02while/gru_cell_60/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2#
!while/gru_cell_60/strided_slice_1?
while/gru_cell_60/MatMul_2MatMulwhile/gru_cell_60/mul:z:0*while/gru_cell_60/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/MatMul_2?
while/gru_cell_60/add_2AddV2 while/gru_cell_60/split:output:2$while/gru_cell_60/MatMul_2:product:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/add_2?
while/gru_cell_60/ReluReluwhile/gru_cell_60/add_2:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/Relu?
while/gru_cell_60/mul_1Mulwhile/gru_cell_60/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/mul_1w
while/gru_cell_60/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/gru_cell_60/sub/x?
while/gru_cell_60/subSub while/gru_cell_60/sub/x:output:0while/gru_cell_60/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/sub?
while/gru_cell_60/mul_2Mulwhile/gru_cell_60/sub:z:0$while/gru_cell_60/Relu:activations:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/mul_2?
while/gru_cell_60/add_3AddV2while/gru_cell_60/mul_1:z:0while/gru_cell_60/mul_2:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/add_3?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_60/add_3:z:0*
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
while/IdentityIdentitywhile/add_1:z:0)^while/gru_cell_60/BiasAdd/ReadVariableOp(^while/gru_cell_60/MatMul/ReadVariableOp!^while/gru_cell_60/ReadVariableOp#^while/gru_cell_60/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations)^while/gru_cell_60/BiasAdd/ReadVariableOp(^while/gru_cell_60/MatMul/ReadVariableOp!^while/gru_cell_60/ReadVariableOp#^while/gru_cell_60/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0)^while/gru_cell_60/BiasAdd/ReadVariableOp(^while/gru_cell_60/MatMul/ReadVariableOp!^while/gru_cell_60/ReadVariableOp#^while/gru_cell_60/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/gru_cell_60/BiasAdd/ReadVariableOp(^while/gru_cell_60/MatMul/ReadVariableOp!^while/gru_cell_60/ReadVariableOp#^while/gru_cell_60/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/gru_cell_60/add_3:z:0)^while/gru_cell_60/BiasAdd/ReadVariableOp(^while/gru_cell_60/MatMul/ReadVariableOp!^while/gru_cell_60/ReadVariableOp#^while/gru_cell_60/ReadVariableOp_1*
T0*(
_output_shapes
:??????????2
while/Identity_4"h
1while_gru_cell_60_biasadd_readvariableop_resource3while_gru_cell_60_biasadd_readvariableop_resource_0"f
0while_gru_cell_60_matmul_readvariableop_resource2while_gru_cell_60_matmul_readvariableop_resource_0"X
)while_gru_cell_60_readvariableop_resource+while_gru_cell_60_readvariableop_resource_0")
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
(while/gru_cell_60/BiasAdd/ReadVariableOp(while/gru_cell_60/BiasAdd/ReadVariableOp2R
'while/gru_cell_60/MatMul/ReadVariableOp'while/gru_cell_60/MatMul/ReadVariableOp2D
 while/gru_cell_60/ReadVariableOp while/gru_cell_60/ReadVariableOp2H
"while/gru_cell_60/ReadVariableOp_1"while/gru_cell_60/ReadVariableOp_1: 
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
/__inference_sequential_60_layer_call_fn_3028082
gru_60_input
unknown:	?
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?d
	unknown_3:d
	unknown_4:d
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallgru_60_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
J__inference_sequential_60_layer_call_and_return_conditional_losses_30280462
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
_user_specified_namegru_60_input
?
?
J__inference_sequential_60_layer_call_and_return_conditional_losses_3028124
gru_60_input!
gru_60_3028106:	?
gru_60_3028108:	?"
gru_60_3028110:
??$
dense_120_3028113:	?d
dense_120_3028115:d#
dense_121_3028118:d
dense_121_3028120:
identity??!dense_120/StatefulPartitionedCall?!dense_121/StatefulPartitionedCall?gru_60/StatefulPartitionedCall?
gru_60/StatefulPartitionedCallStatefulPartitionedCallgru_60_inputgru_60_3028106gru_60_3028108gru_60_3028110*
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
C__inference_gru_60_layer_call_and_return_conditional_losses_30279952 
gru_60/StatefulPartitionedCall?
!dense_120/StatefulPartitionedCallStatefulPartitionedCall'gru_60/StatefulPartitionedCall:output:0dense_120_3028113dense_120_3028115*
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
F__inference_dense_120_layer_call_and_return_conditional_losses_30277512#
!dense_120/StatefulPartitionedCall?
!dense_121/StatefulPartitionedCallStatefulPartitionedCall*dense_120/StatefulPartitionedCall:output:0dense_121_3028118dense_121_3028120*
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
F__inference_dense_121_layer_call_and_return_conditional_losses_30277672#
!dense_121/StatefulPartitionedCall?
IdentityIdentity*dense_121/StatefulPartitionedCall:output:0"^dense_120/StatefulPartitionedCall"^dense_121/StatefulPartitionedCall^gru_60/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2F
!dense_120/StatefulPartitionedCall!dense_120/StatefulPartitionedCall2F
!dense_121/StatefulPartitionedCall!dense_121/StatefulPartitionedCall2@
gru_60/StatefulPartitionedCallgru_60/StatefulPartitionedCall:Y U
+
_output_shapes
:?????????
&
_user_specified_namegru_60_input
?

?
F__inference_dense_120_layer_call_and_return_conditional_losses_3027751

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
/__inference_sequential_60_layer_call_fn_3028557

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
J__inference_sequential_60_layer_call_and_return_conditional_losses_30280462
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
?
?
(__inference_gru_60_layer_call_fn_3029252
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
C__inference_gru_60_layer_call_and_return_conditional_losses_30271172
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
?i
?
C__inference_gru_60_layer_call_and_return_conditional_losses_3028899
inputs_0=
*gru_cell_60_matmul_readvariableop_resource:	?:
+gru_cell_60_biasadd_readvariableop_resource:	?7
#gru_cell_60_readvariableop_resource:
??
identity??"gru_cell_60/BiasAdd/ReadVariableOp?!gru_cell_60/MatMul/ReadVariableOp?gru_cell_60/ReadVariableOp?gru_cell_60/ReadVariableOp_1?whileF
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
!gru_cell_60/MatMul/ReadVariableOpReadVariableOp*gru_cell_60_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!gru_cell_60/MatMul/ReadVariableOp?
gru_cell_60/MatMulMatMulstrided_slice_2:output:0)gru_cell_60/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/MatMul?
"gru_cell_60/BiasAdd/ReadVariableOpReadVariableOp+gru_cell_60_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"gru_cell_60/BiasAdd/ReadVariableOp?
gru_cell_60/BiasAddBiasAddgru_cell_60/MatMul:product:0*gru_cell_60/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/BiasAdd?
gru_cell_60/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_60/split/split_dim?
gru_cell_60/splitSplit$gru_cell_60/split/split_dim:output:0gru_cell_60/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
gru_cell_60/split?
gru_cell_60/ReadVariableOpReadVariableOp#gru_cell_60_readvariableop_resource* 
_output_shapes
:
??*
dtype02
gru_cell_60/ReadVariableOp?
gru_cell_60/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
gru_cell_60/strided_slice/stack?
!gru_cell_60/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2#
!gru_cell_60/strided_slice/stack_1?
!gru_cell_60/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!gru_cell_60/strided_slice/stack_2?
gru_cell_60/strided_sliceStridedSlice"gru_cell_60/ReadVariableOp:value:0(gru_cell_60/strided_slice/stack:output:0*gru_cell_60/strided_slice/stack_1:output:0*gru_cell_60/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
gru_cell_60/strided_slice?
gru_cell_60/MatMul_1MatMulzeros:output:0"gru_cell_60/strided_slice:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/MatMul_1{
gru_cell_60/ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2
gru_cell_60/Const?
gru_cell_60/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_60/split_1/split_dim?
gru_cell_60/split_1SplitVgru_cell_60/MatMul_1:product:0gru_cell_60/Const:output:0&gru_cell_60/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:??????????:??????????:????????? *
	num_split2
gru_cell_60/split_1?
gru_cell_60/addAddV2gru_cell_60/split:output:0gru_cell_60/split_1:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/add}
gru_cell_60/SigmoidSigmoidgru_cell_60/add:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/Sigmoid?
gru_cell_60/add_1AddV2gru_cell_60/split:output:1gru_cell_60/split_1:output:1*
T0*(
_output_shapes
:??????????2
gru_cell_60/add_1?
gru_cell_60/Sigmoid_1Sigmoidgru_cell_60/add_1:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/Sigmoid_1?
gru_cell_60/mulMulgru_cell_60/Sigmoid_1:y:0zeros:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/mul?
gru_cell_60/ReadVariableOp_1ReadVariableOp#gru_cell_60_readvariableop_resource* 
_output_shapes
:
??*
dtype02
gru_cell_60/ReadVariableOp_1?
!gru_cell_60/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2#
!gru_cell_60/strided_slice_1/stack?
#gru_cell_60/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#gru_cell_60/strided_slice_1/stack_1?
#gru_cell_60/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gru_cell_60/strided_slice_1/stack_2?
gru_cell_60/strided_slice_1StridedSlice$gru_cell_60/ReadVariableOp_1:value:0*gru_cell_60/strided_slice_1/stack:output:0,gru_cell_60/strided_slice_1/stack_1:output:0,gru_cell_60/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
gru_cell_60/strided_slice_1?
gru_cell_60/MatMul_2MatMulgru_cell_60/mul:z:0$gru_cell_60/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/MatMul_2?
gru_cell_60/add_2AddV2gru_cell_60/split:output:2gru_cell_60/MatMul_2:product:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/add_2v
gru_cell_60/ReluRelugru_cell_60/add_2:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/Relu?
gru_cell_60/mul_1Mulgru_cell_60/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/mul_1k
gru_cell_60/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_cell_60/sub/x?
gru_cell_60/subSubgru_cell_60/sub/x:output:0gru_cell_60/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/sub?
gru_cell_60/mul_2Mulgru_cell_60/sub:z:0gru_cell_60/Relu:activations:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/mul_2?
gru_cell_60/add_3AddV2gru_cell_60/mul_1:z:0gru_cell_60/mul_2:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/add_3?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*gru_cell_60_matmul_readvariableop_resource+gru_cell_60_biasadd_readvariableop_resource#gru_cell_60_readvariableop_resource*
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
while_body_3028803*
condR
while_cond_3028802*9
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
IdentityIdentitystrided_slice_3:output:0#^gru_cell_60/BiasAdd/ReadVariableOp"^gru_cell_60/MatMul/ReadVariableOp^gru_cell_60/ReadVariableOp^gru_cell_60/ReadVariableOp_1^while*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2H
"gru_cell_60/BiasAdd/ReadVariableOp"gru_cell_60/BiasAdd/ReadVariableOp2F
!gru_cell_60/MatMul/ReadVariableOp!gru_cell_60/MatMul/ReadVariableOp28
gru_cell_60/ReadVariableOpgru_cell_60/ReadVariableOp2<
gru_cell_60/ReadVariableOp_1gru_cell_60/ReadVariableOp_12
whilewhile:^ Z
4
_output_shapes"
 :??????????????????
"
_user_specified_name
inputs/0
?*
?
H__inference_gru_cell_60_layer_call_and_return_conditional_losses_3029416

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
?
F__inference_dense_121_layer_call_and_return_conditional_losses_3027767

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
?
?
(__inference_gru_60_layer_call_fn_3029285

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
C__inference_gru_60_layer_call_and_return_conditional_losses_30279952
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
?W
?
while_body_3027636
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_gru_cell_60_matmul_readvariableop_resource_0:	?B
3while_gru_cell_60_biasadd_readvariableop_resource_0:	??
+while_gru_cell_60_readvariableop_resource_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_gru_cell_60_matmul_readvariableop_resource:	?@
1while_gru_cell_60_biasadd_readvariableop_resource:	?=
)while_gru_cell_60_readvariableop_resource:
????(while/gru_cell_60/BiasAdd/ReadVariableOp?'while/gru_cell_60/MatMul/ReadVariableOp? while/gru_cell_60/ReadVariableOp?"while/gru_cell_60/ReadVariableOp_1?
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
'while/gru_cell_60/MatMul/ReadVariableOpReadVariableOp2while_gru_cell_60_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02)
'while/gru_cell_60/MatMul/ReadVariableOp?
while/gru_cell_60/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/gru_cell_60/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/MatMul?
(while/gru_cell_60/BiasAdd/ReadVariableOpReadVariableOp3while_gru_cell_60_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/gru_cell_60/BiasAdd/ReadVariableOp?
while/gru_cell_60/BiasAddBiasAdd"while/gru_cell_60/MatMul:product:00while/gru_cell_60/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/BiasAdd?
!while/gru_cell_60/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2#
!while/gru_cell_60/split/split_dim?
while/gru_cell_60/splitSplit*while/gru_cell_60/split/split_dim:output:0"while/gru_cell_60/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
while/gru_cell_60/split?
 while/gru_cell_60/ReadVariableOpReadVariableOp+while_gru_cell_60_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02"
 while/gru_cell_60/ReadVariableOp?
%while/gru_cell_60/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/gru_cell_60/strided_slice/stack?
'while/gru_cell_60/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2)
'while/gru_cell_60/strided_slice/stack_1?
'while/gru_cell_60/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/gru_cell_60/strided_slice/stack_2?
while/gru_cell_60/strided_sliceStridedSlice(while/gru_cell_60/ReadVariableOp:value:0.while/gru_cell_60/strided_slice/stack:output:00while/gru_cell_60/strided_slice/stack_1:output:00while/gru_cell_60/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2!
while/gru_cell_60/strided_slice?
while/gru_cell_60/MatMul_1MatMulwhile_placeholder_2(while/gru_cell_60/strided_slice:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/MatMul_1?
while/gru_cell_60/ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2
while/gru_cell_60/Const?
#while/gru_cell_60/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2%
#while/gru_cell_60/split_1/split_dim?
while/gru_cell_60/split_1SplitV$while/gru_cell_60/MatMul_1:product:0 while/gru_cell_60/Const:output:0,while/gru_cell_60/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:??????????:??????????:????????? *
	num_split2
while/gru_cell_60/split_1?
while/gru_cell_60/addAddV2 while/gru_cell_60/split:output:0"while/gru_cell_60/split_1:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/add?
while/gru_cell_60/SigmoidSigmoidwhile/gru_cell_60/add:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/Sigmoid?
while/gru_cell_60/add_1AddV2 while/gru_cell_60/split:output:1"while/gru_cell_60/split_1:output:1*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/add_1?
while/gru_cell_60/Sigmoid_1Sigmoidwhile/gru_cell_60/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/Sigmoid_1?
while/gru_cell_60/mulMulwhile/gru_cell_60/Sigmoid_1:y:0while_placeholder_2*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/mul?
"while/gru_cell_60/ReadVariableOp_1ReadVariableOp+while_gru_cell_60_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02$
"while/gru_cell_60/ReadVariableOp_1?
'while/gru_cell_60/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2)
'while/gru_cell_60/strided_slice_1/stack?
)while/gru_cell_60/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/gru_cell_60/strided_slice_1/stack_1?
)while/gru_cell_60/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/gru_cell_60/strided_slice_1/stack_2?
!while/gru_cell_60/strided_slice_1StridedSlice*while/gru_cell_60/ReadVariableOp_1:value:00while/gru_cell_60/strided_slice_1/stack:output:02while/gru_cell_60/strided_slice_1/stack_1:output:02while/gru_cell_60/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2#
!while/gru_cell_60/strided_slice_1?
while/gru_cell_60/MatMul_2MatMulwhile/gru_cell_60/mul:z:0*while/gru_cell_60/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/MatMul_2?
while/gru_cell_60/add_2AddV2 while/gru_cell_60/split:output:2$while/gru_cell_60/MatMul_2:product:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/add_2?
while/gru_cell_60/ReluReluwhile/gru_cell_60/add_2:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/Relu?
while/gru_cell_60/mul_1Mulwhile/gru_cell_60/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/mul_1w
while/gru_cell_60/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/gru_cell_60/sub/x?
while/gru_cell_60/subSub while/gru_cell_60/sub/x:output:0while/gru_cell_60/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/sub?
while/gru_cell_60/mul_2Mulwhile/gru_cell_60/sub:z:0$while/gru_cell_60/Relu:activations:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/mul_2?
while/gru_cell_60/add_3AddV2while/gru_cell_60/mul_1:z:0while/gru_cell_60/mul_2:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/add_3?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_60/add_3:z:0*
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
while/IdentityIdentitywhile/add_1:z:0)^while/gru_cell_60/BiasAdd/ReadVariableOp(^while/gru_cell_60/MatMul/ReadVariableOp!^while/gru_cell_60/ReadVariableOp#^while/gru_cell_60/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations)^while/gru_cell_60/BiasAdd/ReadVariableOp(^while/gru_cell_60/MatMul/ReadVariableOp!^while/gru_cell_60/ReadVariableOp#^while/gru_cell_60/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0)^while/gru_cell_60/BiasAdd/ReadVariableOp(^while/gru_cell_60/MatMul/ReadVariableOp!^while/gru_cell_60/ReadVariableOp#^while/gru_cell_60/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/gru_cell_60/BiasAdd/ReadVariableOp(^while/gru_cell_60/MatMul/ReadVariableOp!^while/gru_cell_60/ReadVariableOp#^while/gru_cell_60/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/gru_cell_60/add_3:z:0)^while/gru_cell_60/BiasAdd/ReadVariableOp(^while/gru_cell_60/MatMul/ReadVariableOp!^while/gru_cell_60/ReadVariableOp#^while/gru_cell_60/ReadVariableOp_1*
T0*(
_output_shapes
:??????????2
while/Identity_4"h
1while_gru_cell_60_biasadd_readvariableop_resource3while_gru_cell_60_biasadd_readvariableop_resource_0"f
0while_gru_cell_60_matmul_readvariableop_resource2while_gru_cell_60_matmul_readvariableop_resource_0"X
)while_gru_cell_60_readvariableop_resource+while_gru_cell_60_readvariableop_resource_0")
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
(while/gru_cell_60/BiasAdd/ReadVariableOp(while/gru_cell_60/BiasAdd/ReadVariableOp2R
'while/gru_cell_60/MatMul/ReadVariableOp'while/gru_cell_60/MatMul/ReadVariableOp2D
 while/gru_cell_60/ReadVariableOp while/gru_cell_60/ReadVariableOp2H
"while/gru_cell_60/ReadVariableOp_1"while/gru_cell_60/ReadVariableOp_1: 
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
J__inference_sequential_60_layer_call_and_return_conditional_losses_3028103
gru_60_input!
gru_60_3028085:	?
gru_60_3028087:	?"
gru_60_3028089:
??$
dense_120_3028092:	?d
dense_120_3028094:d#
dense_121_3028097:d
dense_121_3028099:
identity??!dense_120/StatefulPartitionedCall?!dense_121/StatefulPartitionedCall?gru_60/StatefulPartitionedCall?
gru_60/StatefulPartitionedCallStatefulPartitionedCallgru_60_inputgru_60_3028085gru_60_3028087gru_60_3028089*
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
C__inference_gru_60_layer_call_and_return_conditional_losses_30277322 
gru_60/StatefulPartitionedCall?
!dense_120/StatefulPartitionedCallStatefulPartitionedCall'gru_60/StatefulPartitionedCall:output:0dense_120_3028092dense_120_3028094*
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
F__inference_dense_120_layer_call_and_return_conditional_losses_30277512#
!dense_120/StatefulPartitionedCall?
!dense_121/StatefulPartitionedCallStatefulPartitionedCall*dense_120/StatefulPartitionedCall:output:0dense_121_3028097dense_121_3028099*
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
F__inference_dense_121_layer_call_and_return_conditional_losses_30277672#
!dense_121/StatefulPartitionedCall?
IdentityIdentity*dense_121/StatefulPartitionedCall:output:0"^dense_120/StatefulPartitionedCall"^dense_121/StatefulPartitionedCall^gru_60/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2F
!dense_120/StatefulPartitionedCall!dense_120/StatefulPartitionedCall2F
!dense_121/StatefulPartitionedCall!dense_121/StatefulPartitionedCall2@
gru_60/StatefulPartitionedCallgru_60/StatefulPartitionedCall:Y U
+
_output_shapes
:?????????
&
_user_specified_namegru_60_input
?W
?
while_body_3028803
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_gru_cell_60_matmul_readvariableop_resource_0:	?B
3while_gru_cell_60_biasadd_readvariableop_resource_0:	??
+while_gru_cell_60_readvariableop_resource_0:
??
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_gru_cell_60_matmul_readvariableop_resource:	?@
1while_gru_cell_60_biasadd_readvariableop_resource:	?=
)while_gru_cell_60_readvariableop_resource:
????(while/gru_cell_60/BiasAdd/ReadVariableOp?'while/gru_cell_60/MatMul/ReadVariableOp? while/gru_cell_60/ReadVariableOp?"while/gru_cell_60/ReadVariableOp_1?
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
'while/gru_cell_60/MatMul/ReadVariableOpReadVariableOp2while_gru_cell_60_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype02)
'while/gru_cell_60/MatMul/ReadVariableOp?
while/gru_cell_60/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/gru_cell_60/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/MatMul?
(while/gru_cell_60/BiasAdd/ReadVariableOpReadVariableOp3while_gru_cell_60_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype02*
(while/gru_cell_60/BiasAdd/ReadVariableOp?
while/gru_cell_60/BiasAddBiasAdd"while/gru_cell_60/MatMul:product:00while/gru_cell_60/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/BiasAdd?
!while/gru_cell_60/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2#
!while/gru_cell_60/split/split_dim?
while/gru_cell_60/splitSplit*while/gru_cell_60/split/split_dim:output:0"while/gru_cell_60/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
while/gru_cell_60/split?
 while/gru_cell_60/ReadVariableOpReadVariableOp+while_gru_cell_60_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02"
 while/gru_cell_60/ReadVariableOp?
%while/gru_cell_60/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/gru_cell_60/strided_slice/stack?
'while/gru_cell_60/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2)
'while/gru_cell_60/strided_slice/stack_1?
'while/gru_cell_60/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/gru_cell_60/strided_slice/stack_2?
while/gru_cell_60/strided_sliceStridedSlice(while/gru_cell_60/ReadVariableOp:value:0.while/gru_cell_60/strided_slice/stack:output:00while/gru_cell_60/strided_slice/stack_1:output:00while/gru_cell_60/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2!
while/gru_cell_60/strided_slice?
while/gru_cell_60/MatMul_1MatMulwhile_placeholder_2(while/gru_cell_60/strided_slice:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/MatMul_1?
while/gru_cell_60/ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2
while/gru_cell_60/Const?
#while/gru_cell_60/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2%
#while/gru_cell_60/split_1/split_dim?
while/gru_cell_60/split_1SplitV$while/gru_cell_60/MatMul_1:product:0 while/gru_cell_60/Const:output:0,while/gru_cell_60/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:??????????:??????????:????????? *
	num_split2
while/gru_cell_60/split_1?
while/gru_cell_60/addAddV2 while/gru_cell_60/split:output:0"while/gru_cell_60/split_1:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/add?
while/gru_cell_60/SigmoidSigmoidwhile/gru_cell_60/add:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/Sigmoid?
while/gru_cell_60/add_1AddV2 while/gru_cell_60/split:output:1"while/gru_cell_60/split_1:output:1*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/add_1?
while/gru_cell_60/Sigmoid_1Sigmoidwhile/gru_cell_60/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/Sigmoid_1?
while/gru_cell_60/mulMulwhile/gru_cell_60/Sigmoid_1:y:0while_placeholder_2*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/mul?
"while/gru_cell_60/ReadVariableOp_1ReadVariableOp+while_gru_cell_60_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02$
"while/gru_cell_60/ReadVariableOp_1?
'while/gru_cell_60/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2)
'while/gru_cell_60/strided_slice_1/stack?
)while/gru_cell_60/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/gru_cell_60/strided_slice_1/stack_1?
)while/gru_cell_60/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/gru_cell_60/strided_slice_1/stack_2?
!while/gru_cell_60/strided_slice_1StridedSlice*while/gru_cell_60/ReadVariableOp_1:value:00while/gru_cell_60/strided_slice_1/stack:output:02while/gru_cell_60/strided_slice_1/stack_1:output:02while/gru_cell_60/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2#
!while/gru_cell_60/strided_slice_1?
while/gru_cell_60/MatMul_2MatMulwhile/gru_cell_60/mul:z:0*while/gru_cell_60/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/MatMul_2?
while/gru_cell_60/add_2AddV2 while/gru_cell_60/split:output:2$while/gru_cell_60/MatMul_2:product:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/add_2?
while/gru_cell_60/ReluReluwhile/gru_cell_60/add_2:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/Relu?
while/gru_cell_60/mul_1Mulwhile/gru_cell_60/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/mul_1w
while/gru_cell_60/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/gru_cell_60/sub/x?
while/gru_cell_60/subSub while/gru_cell_60/sub/x:output:0while/gru_cell_60/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/sub?
while/gru_cell_60/mul_2Mulwhile/gru_cell_60/sub:z:0$while/gru_cell_60/Relu:activations:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/mul_2?
while/gru_cell_60/add_3AddV2while/gru_cell_60/mul_1:z:0while/gru_cell_60/mul_2:z:0*
T0*(
_output_shapes
:??????????2
while/gru_cell_60/add_3?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_60/add_3:z:0*
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
while/IdentityIdentitywhile/add_1:z:0)^while/gru_cell_60/BiasAdd/ReadVariableOp(^while/gru_cell_60/MatMul/ReadVariableOp!^while/gru_cell_60/ReadVariableOp#^while/gru_cell_60/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations)^while/gru_cell_60/BiasAdd/ReadVariableOp(^while/gru_cell_60/MatMul/ReadVariableOp!^while/gru_cell_60/ReadVariableOp#^while/gru_cell_60/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0)^while/gru_cell_60/BiasAdd/ReadVariableOp(^while/gru_cell_60/MatMul/ReadVariableOp!^while/gru_cell_60/ReadVariableOp#^while/gru_cell_60/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/gru_cell_60/BiasAdd/ReadVariableOp(^while/gru_cell_60/MatMul/ReadVariableOp!^while/gru_cell_60/ReadVariableOp#^while/gru_cell_60/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/gru_cell_60/add_3:z:0)^while/gru_cell_60/BiasAdd/ReadVariableOp(^while/gru_cell_60/MatMul/ReadVariableOp!^while/gru_cell_60/ReadVariableOp#^while/gru_cell_60/ReadVariableOp_1*
T0*(
_output_shapes
:??????????2
while/Identity_4"h
1while_gru_cell_60_biasadd_readvariableop_resource3while_gru_cell_60_biasadd_readvariableop_resource_0"f
0while_gru_cell_60_matmul_readvariableop_resource2while_gru_cell_60_matmul_readvariableop_resource_0"X
)while_gru_cell_60_readvariableop_resource+while_gru_cell_60_readvariableop_resource_0")
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
(while/gru_cell_60/BiasAdd/ReadVariableOp(while/gru_cell_60/BiasAdd/ReadVariableOp2R
'while/gru_cell_60/MatMul/ReadVariableOp'while/gru_cell_60/MatMul/ReadVariableOp2D
 while/gru_cell_60/ReadVariableOp while/gru_cell_60/ReadVariableOp2H
"while/gru_cell_60/ReadVariableOp_1"while/gru_cell_60/ReadVariableOp_1: 
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
?d
?	
gru_60_while_body_3028410*
&gru_60_while_gru_60_while_loop_counter0
,gru_60_while_gru_60_while_maximum_iterations
gru_60_while_placeholder
gru_60_while_placeholder_1
gru_60_while_placeholder_2)
%gru_60_while_gru_60_strided_slice_1_0e
agru_60_while_tensorarrayv2read_tensorlistgetitem_gru_60_tensorarrayunstack_tensorlistfromtensor_0L
9gru_60_while_gru_cell_60_matmul_readvariableop_resource_0:	?I
:gru_60_while_gru_cell_60_biasadd_readvariableop_resource_0:	?F
2gru_60_while_gru_cell_60_readvariableop_resource_0:
??
gru_60_while_identity
gru_60_while_identity_1
gru_60_while_identity_2
gru_60_while_identity_3
gru_60_while_identity_4'
#gru_60_while_gru_60_strided_slice_1c
_gru_60_while_tensorarrayv2read_tensorlistgetitem_gru_60_tensorarrayunstack_tensorlistfromtensorJ
7gru_60_while_gru_cell_60_matmul_readvariableop_resource:	?G
8gru_60_while_gru_cell_60_biasadd_readvariableop_resource:	?D
0gru_60_while_gru_cell_60_readvariableop_resource:
????/gru_60/while/gru_cell_60/BiasAdd/ReadVariableOp?.gru_60/while/gru_cell_60/MatMul/ReadVariableOp?'gru_60/while/gru_cell_60/ReadVariableOp?)gru_60/while/gru_cell_60/ReadVariableOp_1?
>gru_60/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2@
>gru_60/while/TensorArrayV2Read/TensorListGetItem/element_shape?
0gru_60/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemagru_60_while_tensorarrayv2read_tensorlistgetitem_gru_60_tensorarrayunstack_tensorlistfromtensor_0gru_60_while_placeholderGgru_60/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype022
0gru_60/while/TensorArrayV2Read/TensorListGetItem?
.gru_60/while/gru_cell_60/MatMul/ReadVariableOpReadVariableOp9gru_60_while_gru_cell_60_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype020
.gru_60/while/gru_cell_60/MatMul/ReadVariableOp?
gru_60/while/gru_cell_60/MatMulMatMul7gru_60/while/TensorArrayV2Read/TensorListGetItem:item:06gru_60/while/gru_cell_60/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2!
gru_60/while/gru_cell_60/MatMul?
/gru_60/while/gru_cell_60/BiasAdd/ReadVariableOpReadVariableOp:gru_60_while_gru_cell_60_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype021
/gru_60/while/gru_cell_60/BiasAdd/ReadVariableOp?
 gru_60/while/gru_cell_60/BiasAddBiasAdd)gru_60/while/gru_cell_60/MatMul:product:07gru_60/while/gru_cell_60/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2"
 gru_60/while/gru_cell_60/BiasAdd?
(gru_60/while/gru_cell_60/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2*
(gru_60/while/gru_cell_60/split/split_dim?
gru_60/while/gru_cell_60/splitSplit1gru_60/while/gru_cell_60/split/split_dim:output:0)gru_60/while/gru_cell_60/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2 
gru_60/while/gru_cell_60/split?
'gru_60/while/gru_cell_60/ReadVariableOpReadVariableOp2gru_60_while_gru_cell_60_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02)
'gru_60/while/gru_cell_60/ReadVariableOp?
,gru_60/while/gru_cell_60/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2.
,gru_60/while/gru_cell_60/strided_slice/stack?
.gru_60/while/gru_cell_60/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  20
.gru_60/while/gru_cell_60/strided_slice/stack_1?
.gru_60/while/gru_cell_60/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.gru_60/while/gru_cell_60/strided_slice/stack_2?
&gru_60/while/gru_cell_60/strided_sliceStridedSlice/gru_60/while/gru_cell_60/ReadVariableOp:value:05gru_60/while/gru_cell_60/strided_slice/stack:output:07gru_60/while/gru_cell_60/strided_slice/stack_1:output:07gru_60/while/gru_cell_60/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2(
&gru_60/while/gru_cell_60/strided_slice?
!gru_60/while/gru_cell_60/MatMul_1MatMulgru_60_while_placeholder_2/gru_60/while/gru_cell_60/strided_slice:output:0*
T0*(
_output_shapes
:??????????2#
!gru_60/while/gru_cell_60/MatMul_1?
gru_60/while/gru_cell_60/ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2 
gru_60/while/gru_cell_60/Const?
*gru_60/while/gru_cell_60/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2,
*gru_60/while/gru_cell_60/split_1/split_dim?
 gru_60/while/gru_cell_60/split_1SplitV+gru_60/while/gru_cell_60/MatMul_1:product:0'gru_60/while/gru_cell_60/Const:output:03gru_60/while/gru_cell_60/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:??????????:??????????:????????? *
	num_split2"
 gru_60/while/gru_cell_60/split_1?
gru_60/while/gru_cell_60/addAddV2'gru_60/while/gru_cell_60/split:output:0)gru_60/while/gru_cell_60/split_1:output:0*
T0*(
_output_shapes
:??????????2
gru_60/while/gru_cell_60/add?
 gru_60/while/gru_cell_60/SigmoidSigmoid gru_60/while/gru_cell_60/add:z:0*
T0*(
_output_shapes
:??????????2"
 gru_60/while/gru_cell_60/Sigmoid?
gru_60/while/gru_cell_60/add_1AddV2'gru_60/while/gru_cell_60/split:output:1)gru_60/while/gru_cell_60/split_1:output:1*
T0*(
_output_shapes
:??????????2 
gru_60/while/gru_cell_60/add_1?
"gru_60/while/gru_cell_60/Sigmoid_1Sigmoid"gru_60/while/gru_cell_60/add_1:z:0*
T0*(
_output_shapes
:??????????2$
"gru_60/while/gru_cell_60/Sigmoid_1?
gru_60/while/gru_cell_60/mulMul&gru_60/while/gru_cell_60/Sigmoid_1:y:0gru_60_while_placeholder_2*
T0*(
_output_shapes
:??????????2
gru_60/while/gru_cell_60/mul?
)gru_60/while/gru_cell_60/ReadVariableOp_1ReadVariableOp2gru_60_while_gru_cell_60_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02+
)gru_60/while/gru_cell_60/ReadVariableOp_1?
.gru_60/while/gru_cell_60/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  20
.gru_60/while/gru_cell_60/strided_slice_1/stack?
0gru_60/while/gru_cell_60/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        22
0gru_60/while/gru_cell_60/strided_slice_1/stack_1?
0gru_60/while/gru_cell_60/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0gru_60/while/gru_cell_60/strided_slice_1/stack_2?
(gru_60/while/gru_cell_60/strided_slice_1StridedSlice1gru_60/while/gru_cell_60/ReadVariableOp_1:value:07gru_60/while/gru_cell_60/strided_slice_1/stack:output:09gru_60/while/gru_cell_60/strided_slice_1/stack_1:output:09gru_60/while/gru_cell_60/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2*
(gru_60/while/gru_cell_60/strided_slice_1?
!gru_60/while/gru_cell_60/MatMul_2MatMul gru_60/while/gru_cell_60/mul:z:01gru_60/while/gru_cell_60/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2#
!gru_60/while/gru_cell_60/MatMul_2?
gru_60/while/gru_cell_60/add_2AddV2'gru_60/while/gru_cell_60/split:output:2+gru_60/while/gru_cell_60/MatMul_2:product:0*
T0*(
_output_shapes
:??????????2 
gru_60/while/gru_cell_60/add_2?
gru_60/while/gru_cell_60/ReluRelu"gru_60/while/gru_cell_60/add_2:z:0*
T0*(
_output_shapes
:??????????2
gru_60/while/gru_cell_60/Relu?
gru_60/while/gru_cell_60/mul_1Mul$gru_60/while/gru_cell_60/Sigmoid:y:0gru_60_while_placeholder_2*
T0*(
_output_shapes
:??????????2 
gru_60/while/gru_cell_60/mul_1?
gru_60/while/gru_cell_60/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2 
gru_60/while/gru_cell_60/sub/x?
gru_60/while/gru_cell_60/subSub'gru_60/while/gru_cell_60/sub/x:output:0$gru_60/while/gru_cell_60/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
gru_60/while/gru_cell_60/sub?
gru_60/while/gru_cell_60/mul_2Mul gru_60/while/gru_cell_60/sub:z:0+gru_60/while/gru_cell_60/Relu:activations:0*
T0*(
_output_shapes
:??????????2 
gru_60/while/gru_cell_60/mul_2?
gru_60/while/gru_cell_60/add_3AddV2"gru_60/while/gru_cell_60/mul_1:z:0"gru_60/while/gru_cell_60/mul_2:z:0*
T0*(
_output_shapes
:??????????2 
gru_60/while/gru_cell_60/add_3?
1gru_60/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemgru_60_while_placeholder_1gru_60_while_placeholder"gru_60/while/gru_cell_60/add_3:z:0*
_output_shapes
: *
element_dtype023
1gru_60/while/TensorArrayV2Write/TensorListSetItemj
gru_60/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru_60/while/add/y?
gru_60/while/addAddV2gru_60_while_placeholdergru_60/while/add/y:output:0*
T0*
_output_shapes
: 2
gru_60/while/addn
gru_60/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru_60/while/add_1/y?
gru_60/while/add_1AddV2&gru_60_while_gru_60_while_loop_countergru_60/while/add_1/y:output:0*
T0*
_output_shapes
: 2
gru_60/while/add_1?
gru_60/while/IdentityIdentitygru_60/while/add_1:z:00^gru_60/while/gru_cell_60/BiasAdd/ReadVariableOp/^gru_60/while/gru_cell_60/MatMul/ReadVariableOp(^gru_60/while/gru_cell_60/ReadVariableOp*^gru_60/while/gru_cell_60/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_60/while/Identity?
gru_60/while/Identity_1Identity,gru_60_while_gru_60_while_maximum_iterations0^gru_60/while/gru_cell_60/BiasAdd/ReadVariableOp/^gru_60/while/gru_cell_60/MatMul/ReadVariableOp(^gru_60/while/gru_cell_60/ReadVariableOp*^gru_60/while/gru_cell_60/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_60/while/Identity_1?
gru_60/while/Identity_2Identitygru_60/while/add:z:00^gru_60/while/gru_cell_60/BiasAdd/ReadVariableOp/^gru_60/while/gru_cell_60/MatMul/ReadVariableOp(^gru_60/while/gru_cell_60/ReadVariableOp*^gru_60/while/gru_cell_60/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_60/while/Identity_2?
gru_60/while/Identity_3IdentityAgru_60/while/TensorArrayV2Write/TensorListSetItem:output_handle:00^gru_60/while/gru_cell_60/BiasAdd/ReadVariableOp/^gru_60/while/gru_cell_60/MatMul/ReadVariableOp(^gru_60/while/gru_cell_60/ReadVariableOp*^gru_60/while/gru_cell_60/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_60/while/Identity_3?
gru_60/while/Identity_4Identity"gru_60/while/gru_cell_60/add_3:z:00^gru_60/while/gru_cell_60/BiasAdd/ReadVariableOp/^gru_60/while/gru_cell_60/MatMul/ReadVariableOp(^gru_60/while/gru_cell_60/ReadVariableOp*^gru_60/while/gru_cell_60/ReadVariableOp_1*
T0*(
_output_shapes
:??????????2
gru_60/while/Identity_4"L
#gru_60_while_gru_60_strided_slice_1%gru_60_while_gru_60_strided_slice_1_0"v
8gru_60_while_gru_cell_60_biasadd_readvariableop_resource:gru_60_while_gru_cell_60_biasadd_readvariableop_resource_0"t
7gru_60_while_gru_cell_60_matmul_readvariableop_resource9gru_60_while_gru_cell_60_matmul_readvariableop_resource_0"f
0gru_60_while_gru_cell_60_readvariableop_resource2gru_60_while_gru_cell_60_readvariableop_resource_0"7
gru_60_while_identitygru_60/while/Identity:output:0";
gru_60_while_identity_1 gru_60/while/Identity_1:output:0";
gru_60_while_identity_2 gru_60/while/Identity_2:output:0";
gru_60_while_identity_3 gru_60/while/Identity_3:output:0";
gru_60_while_identity_4 gru_60/while/Identity_4:output:0"?
_gru_60_while_tensorarrayv2read_tensorlistgetitem_gru_60_tensorarrayunstack_tensorlistfromtensoragru_60_while_tensorarrayv2read_tensorlistgetitem_gru_60_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2b
/gru_60/while/gru_cell_60/BiasAdd/ReadVariableOp/gru_60/while/gru_cell_60/BiasAdd/ReadVariableOp2`
.gru_60/while/gru_cell_60/MatMul/ReadVariableOp.gru_60/while/gru_cell_60/MatMul/ReadVariableOp2R
'gru_60/while/gru_cell_60/ReadVariableOp'gru_60/while/gru_cell_60/ReadVariableOp2V
)gru_60/while/gru_cell_60/ReadVariableOp_1)gru_60/while/gru_cell_60/ReadVariableOp_1: 
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
F__inference_dense_120_layer_call_and_return_conditional_losses_3029296

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
?
'sequential_60_gru_60_while_cond_3026849F
Bsequential_60_gru_60_while_sequential_60_gru_60_while_loop_counterL
Hsequential_60_gru_60_while_sequential_60_gru_60_while_maximum_iterations*
&sequential_60_gru_60_while_placeholder,
(sequential_60_gru_60_while_placeholder_1,
(sequential_60_gru_60_while_placeholder_2H
Dsequential_60_gru_60_while_less_sequential_60_gru_60_strided_slice_1_
[sequential_60_gru_60_while_sequential_60_gru_60_while_cond_3026849___redundant_placeholder0_
[sequential_60_gru_60_while_sequential_60_gru_60_while_cond_3026849___redundant_placeholder1_
[sequential_60_gru_60_while_sequential_60_gru_60_while_cond_3026849___redundant_placeholder2_
[sequential_60_gru_60_while_sequential_60_gru_60_while_cond_3026849___redundant_placeholder3'
#sequential_60_gru_60_while_identity
?
sequential_60/gru_60/while/LessLess&sequential_60_gru_60_while_placeholderDsequential_60_gru_60_while_less_sequential_60_gru_60_strided_slice_1*
T0*
_output_shapes
: 2!
sequential_60/gru_60/while/Less?
#sequential_60/gru_60/while/IdentityIdentity#sequential_60/gru_60/while/Less:z:0*
T0
*
_output_shapes
: 2%
#sequential_60/gru_60/while/Identity"S
#sequential_60_gru_60_while_identity,sequential_60/gru_60/while/Identity:output:0*(
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
C__inference_gru_60_layer_call_and_return_conditional_losses_3027321

inputs&
gru_cell_60_3027245:	?"
gru_cell_60_3027247:	?'
gru_cell_60_3027249:
??
identity??#gru_cell_60/StatefulPartitionedCall?whileD
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
#gru_cell_60/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0gru_cell_60_3027245gru_cell_60_3027247gru_cell_60_3027249*
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
H__inference_gru_cell_60_layer_call_and_return_conditional_losses_30271902%
#gru_cell_60/StatefulPartitionedCall?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0gru_cell_60_3027245gru_cell_60_3027247gru_cell_60_3027249*
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
while_body_3027257*
condR
while_cond_3027256*9
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
IdentityIdentitystrided_slice_3:output:0$^gru_cell_60/StatefulPartitionedCall^while*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:??????????????????: : : 2J
#gru_cell_60/StatefulPartitionedCall#gru_cell_60/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :??????????????????
 
_user_specified_nameinputs
?
?
while_cond_3028631
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_3028631___redundant_placeholder05
1while_while_cond_3028631___redundant_placeholder15
1while_while_cond_3028631___redundant_placeholder25
1while_while_cond_3028631___redundant_placeholder3
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
-__inference_gru_cell_60_layer_call_fn_3029430

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
H__inference_gru_cell_60_layer_call_and_return_conditional_losses_30270402
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
??
?
J__inference_sequential_60_layer_call_and_return_conditional_losses_3028519

inputsD
1gru_60_gru_cell_60_matmul_readvariableop_resource:	?A
2gru_60_gru_cell_60_biasadd_readvariableop_resource:	?>
*gru_60_gru_cell_60_readvariableop_resource:
??;
(dense_120_matmul_readvariableop_resource:	?d7
)dense_120_biasadd_readvariableop_resource:d:
(dense_121_matmul_readvariableop_resource:d7
)dense_121_biasadd_readvariableop_resource:
identity?? dense_120/BiasAdd/ReadVariableOp?dense_120/MatMul/ReadVariableOp? dense_121/BiasAdd/ReadVariableOp?dense_121/MatMul/ReadVariableOp?)gru_60/gru_cell_60/BiasAdd/ReadVariableOp?(gru_60/gru_cell_60/MatMul/ReadVariableOp?!gru_60/gru_cell_60/ReadVariableOp?#gru_60/gru_cell_60/ReadVariableOp_1?gru_60/whileR
gru_60/ShapeShapeinputs*
T0*
_output_shapes
:2
gru_60/Shape?
gru_60/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_60/strided_slice/stack?
gru_60/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_60/strided_slice/stack_1?
gru_60/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_60/strided_slice/stack_2?
gru_60/strided_sliceStridedSlicegru_60/Shape:output:0#gru_60/strided_slice/stack:output:0%gru_60/strided_slice/stack_1:output:0%gru_60/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru_60/strided_slicek
gru_60/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
gru_60/zeros/mul/y?
gru_60/zeros/mulMulgru_60/strided_slice:output:0gru_60/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
gru_60/zeros/mulm
gru_60/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
gru_60/zeros/Less/y?
gru_60/zeros/LessLessgru_60/zeros/mul:z:0gru_60/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
gru_60/zeros/Lessq
gru_60/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
gru_60/zeros/packed/1?
gru_60/zeros/packedPackgru_60/strided_slice:output:0gru_60/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
gru_60/zeros/packedm
gru_60/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_60/zeros/Const?
gru_60/zerosFillgru_60/zeros/packed:output:0gru_60/zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
gru_60/zeros?
gru_60/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_60/transpose/perm?
gru_60/transpose	Transposeinputsgru_60/transpose/perm:output:0*
T0*+
_output_shapes
:?????????2
gru_60/transposed
gru_60/Shape_1Shapegru_60/transpose:y:0*
T0*
_output_shapes
:2
gru_60/Shape_1?
gru_60/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_60/strided_slice_1/stack?
gru_60/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
gru_60/strided_slice_1/stack_1?
gru_60/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
gru_60/strided_slice_1/stack_2?
gru_60/strided_slice_1StridedSlicegru_60/Shape_1:output:0%gru_60/strided_slice_1/stack:output:0'gru_60/strided_slice_1/stack_1:output:0'gru_60/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru_60/strided_slice_1?
"gru_60/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"gru_60/TensorArrayV2/element_shape?
gru_60/TensorArrayV2TensorListReserve+gru_60/TensorArrayV2/element_shape:output:0gru_60/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_60/TensorArrayV2?
<gru_60/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2>
<gru_60/TensorArrayUnstack/TensorListFromTensor/element_shape?
.gru_60/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorgru_60/transpose:y:0Egru_60/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.gru_60/TensorArrayUnstack/TensorListFromTensor?
gru_60/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_60/strided_slice_2/stack?
gru_60/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
gru_60/strided_slice_2/stack_1?
gru_60/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
gru_60/strided_slice_2/stack_2?
gru_60/strided_slice_2StridedSlicegru_60/transpose:y:0%gru_60/strided_slice_2/stack:output:0'gru_60/strided_slice_2/stack_1:output:0'gru_60/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*
shrink_axis_mask2
gru_60/strided_slice_2?
(gru_60/gru_cell_60/MatMul/ReadVariableOpReadVariableOp1gru_60_gru_cell_60_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02*
(gru_60/gru_cell_60/MatMul/ReadVariableOp?
gru_60/gru_cell_60/MatMulMatMulgru_60/strided_slice_2:output:00gru_60/gru_cell_60/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_60/gru_cell_60/MatMul?
)gru_60/gru_cell_60/BiasAdd/ReadVariableOpReadVariableOp2gru_60_gru_cell_60_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)gru_60/gru_cell_60/BiasAdd/ReadVariableOp?
gru_60/gru_cell_60/BiasAddBiasAdd#gru_60/gru_cell_60/MatMul:product:01gru_60/gru_cell_60/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_60/gru_cell_60/BiasAdd?
"gru_60/gru_cell_60/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2$
"gru_60/gru_cell_60/split/split_dim?
gru_60/gru_cell_60/splitSplit+gru_60/gru_cell_60/split/split_dim:output:0#gru_60/gru_cell_60/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
gru_60/gru_cell_60/split?
!gru_60/gru_cell_60/ReadVariableOpReadVariableOp*gru_60_gru_cell_60_readvariableop_resource* 
_output_shapes
:
??*
dtype02#
!gru_60/gru_cell_60/ReadVariableOp?
&gru_60/gru_cell_60/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&gru_60/gru_cell_60/strided_slice/stack?
(gru_60/gru_cell_60/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2*
(gru_60/gru_cell_60/strided_slice/stack_1?
(gru_60/gru_cell_60/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(gru_60/gru_cell_60/strided_slice/stack_2?
 gru_60/gru_cell_60/strided_sliceStridedSlice)gru_60/gru_cell_60/ReadVariableOp:value:0/gru_60/gru_cell_60/strided_slice/stack:output:01gru_60/gru_cell_60/strided_slice/stack_1:output:01gru_60/gru_cell_60/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2"
 gru_60/gru_cell_60/strided_slice?
gru_60/gru_cell_60/MatMul_1MatMulgru_60/zeros:output:0)gru_60/gru_cell_60/strided_slice:output:0*
T0*(
_output_shapes
:??????????2
gru_60/gru_cell_60/MatMul_1?
gru_60/gru_cell_60/ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2
gru_60/gru_cell_60/Const?
$gru_60/gru_cell_60/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2&
$gru_60/gru_cell_60/split_1/split_dim?
gru_60/gru_cell_60/split_1SplitV%gru_60/gru_cell_60/MatMul_1:product:0!gru_60/gru_cell_60/Const:output:0-gru_60/gru_cell_60/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:??????????:??????????:????????? *
	num_split2
gru_60/gru_cell_60/split_1?
gru_60/gru_cell_60/addAddV2!gru_60/gru_cell_60/split:output:0#gru_60/gru_cell_60/split_1:output:0*
T0*(
_output_shapes
:??????????2
gru_60/gru_cell_60/add?
gru_60/gru_cell_60/SigmoidSigmoidgru_60/gru_cell_60/add:z:0*
T0*(
_output_shapes
:??????????2
gru_60/gru_cell_60/Sigmoid?
gru_60/gru_cell_60/add_1AddV2!gru_60/gru_cell_60/split:output:1#gru_60/gru_cell_60/split_1:output:1*
T0*(
_output_shapes
:??????????2
gru_60/gru_cell_60/add_1?
gru_60/gru_cell_60/Sigmoid_1Sigmoidgru_60/gru_cell_60/add_1:z:0*
T0*(
_output_shapes
:??????????2
gru_60/gru_cell_60/Sigmoid_1?
gru_60/gru_cell_60/mulMul gru_60/gru_cell_60/Sigmoid_1:y:0gru_60/zeros:output:0*
T0*(
_output_shapes
:??????????2
gru_60/gru_cell_60/mul?
#gru_60/gru_cell_60/ReadVariableOp_1ReadVariableOp*gru_60_gru_cell_60_readvariableop_resource* 
_output_shapes
:
??*
dtype02%
#gru_60/gru_cell_60/ReadVariableOp_1?
(gru_60/gru_cell_60/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2*
(gru_60/gru_cell_60/strided_slice_1/stack?
*gru_60/gru_cell_60/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*gru_60/gru_cell_60/strided_slice_1/stack_1?
*gru_60/gru_cell_60/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*gru_60/gru_cell_60/strided_slice_1/stack_2?
"gru_60/gru_cell_60/strided_slice_1StridedSlice+gru_60/gru_cell_60/ReadVariableOp_1:value:01gru_60/gru_cell_60/strided_slice_1/stack:output:03gru_60/gru_cell_60/strided_slice_1/stack_1:output:03gru_60/gru_cell_60/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2$
"gru_60/gru_cell_60/strided_slice_1?
gru_60/gru_cell_60/MatMul_2MatMulgru_60/gru_cell_60/mul:z:0+gru_60/gru_cell_60/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2
gru_60/gru_cell_60/MatMul_2?
gru_60/gru_cell_60/add_2AddV2!gru_60/gru_cell_60/split:output:2%gru_60/gru_cell_60/MatMul_2:product:0*
T0*(
_output_shapes
:??????????2
gru_60/gru_cell_60/add_2?
gru_60/gru_cell_60/ReluRelugru_60/gru_cell_60/add_2:z:0*
T0*(
_output_shapes
:??????????2
gru_60/gru_cell_60/Relu?
gru_60/gru_cell_60/mul_1Mulgru_60/gru_cell_60/Sigmoid:y:0gru_60/zeros:output:0*
T0*(
_output_shapes
:??????????2
gru_60/gru_cell_60/mul_1y
gru_60/gru_cell_60/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_60/gru_cell_60/sub/x?
gru_60/gru_cell_60/subSub!gru_60/gru_cell_60/sub/x:output:0gru_60/gru_cell_60/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
gru_60/gru_cell_60/sub?
gru_60/gru_cell_60/mul_2Mulgru_60/gru_cell_60/sub:z:0%gru_60/gru_cell_60/Relu:activations:0*
T0*(
_output_shapes
:??????????2
gru_60/gru_cell_60/mul_2?
gru_60/gru_cell_60/add_3AddV2gru_60/gru_cell_60/mul_1:z:0gru_60/gru_cell_60/mul_2:z:0*
T0*(
_output_shapes
:??????????2
gru_60/gru_cell_60/add_3?
$gru_60/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2&
$gru_60/TensorArrayV2_1/element_shape?
gru_60/TensorArrayV2_1TensorListReserve-gru_60/TensorArrayV2_1/element_shape:output:0gru_60/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_60/TensorArrayV2_1\
gru_60/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
gru_60/time?
gru_60/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2!
gru_60/while/maximum_iterationsx
gru_60/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
gru_60/while/loop_counter?
gru_60/whileWhile"gru_60/while/loop_counter:output:0(gru_60/while/maximum_iterations:output:0gru_60/time:output:0gru_60/TensorArrayV2_1:handle:0gru_60/zeros:output:0gru_60/strided_slice_1:output:0>gru_60/TensorArrayUnstack/TensorListFromTensor:output_handle:01gru_60_gru_cell_60_matmul_readvariableop_resource2gru_60_gru_cell_60_biasadd_readvariableop_resource*gru_60_gru_cell_60_readvariableop_resource*
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
gru_60_while_body_3028410*%
condR
gru_60_while_cond_3028409*9
output_shapes(
&: : : : :??????????: : : : : *
parallel_iterations 2
gru_60/while?
7gru_60/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   29
7gru_60/TensorArrayV2Stack/TensorListStack/element_shape?
)gru_60/TensorArrayV2Stack/TensorListStackTensorListStackgru_60/while:output:3@gru_60/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02+
)gru_60/TensorArrayV2Stack/TensorListStack?
gru_60/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
gru_60/strided_slice_3/stack?
gru_60/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
gru_60/strided_slice_3/stack_1?
gru_60/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
gru_60/strided_slice_3/stack_2?
gru_60/strided_slice_3StridedSlice2gru_60/TensorArrayV2Stack/TensorListStack:tensor:0%gru_60/strided_slice_3/stack:output:0'gru_60/strided_slice_3/stack_1:output:0'gru_60/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
gru_60/strided_slice_3?
gru_60/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_60/transpose_1/perm?
gru_60/transpose_1	Transpose2gru_60/TensorArrayV2Stack/TensorListStack:tensor:0 gru_60/transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
gru_60/transpose_1t
gru_60/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_60/runtime?
dense_120/MatMul/ReadVariableOpReadVariableOp(dense_120_matmul_readvariableop_resource*
_output_shapes
:	?d*
dtype02!
dense_120/MatMul/ReadVariableOp?
dense_120/MatMulMatMulgru_60/strided_slice_3:output:0'dense_120/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_120/MatMul?
 dense_120/BiasAdd/ReadVariableOpReadVariableOp)dense_120_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02"
 dense_120/BiasAdd/ReadVariableOp?
dense_120/BiasAddBiasAdddense_120/MatMul:product:0(dense_120/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_120/BiasAddv
dense_120/ReluReludense_120/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
dense_120/Relu?
dense_121/MatMul/ReadVariableOpReadVariableOp(dense_121_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02!
dense_121/MatMul/ReadVariableOp?
dense_121/MatMulMatMuldense_120/Relu:activations:0'dense_121/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_121/MatMul?
 dense_121/BiasAdd/ReadVariableOpReadVariableOp)dense_121_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_121/BiasAdd/ReadVariableOp?
dense_121/BiasAddBiasAdddense_121/MatMul:product:0(dense_121/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_121/BiasAdd?
IdentityIdentitydense_121/BiasAdd:output:0!^dense_120/BiasAdd/ReadVariableOp ^dense_120/MatMul/ReadVariableOp!^dense_121/BiasAdd/ReadVariableOp ^dense_121/MatMul/ReadVariableOp*^gru_60/gru_cell_60/BiasAdd/ReadVariableOp)^gru_60/gru_cell_60/MatMul/ReadVariableOp"^gru_60/gru_cell_60/ReadVariableOp$^gru_60/gru_cell_60/ReadVariableOp_1^gru_60/while*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2D
 dense_120/BiasAdd/ReadVariableOp dense_120/BiasAdd/ReadVariableOp2B
dense_120/MatMul/ReadVariableOpdense_120/MatMul/ReadVariableOp2D
 dense_121/BiasAdd/ReadVariableOp dense_121/BiasAdd/ReadVariableOp2B
dense_121/MatMul/ReadVariableOpdense_121/MatMul/ReadVariableOp2V
)gru_60/gru_cell_60/BiasAdd/ReadVariableOp)gru_60/gru_cell_60/BiasAdd/ReadVariableOp2T
(gru_60/gru_cell_60/MatMul/ReadVariableOp(gru_60/gru_cell_60/MatMul/ReadVariableOp2F
!gru_60/gru_cell_60/ReadVariableOp!gru_60/gru_cell_60/ReadVariableOp2J
#gru_60/gru_cell_60/ReadVariableOp_1#gru_60/gru_cell_60/ReadVariableOp_12
gru_60/whilegru_60/while:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
-__inference_gru_cell_60_layer_call_fn_3029444

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
H__inference_gru_cell_60_layer_call_and_return_conditional_losses_30271902
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
?
?
%__inference_signature_wrapper_3028151
gru_60_input
unknown:	?
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?d
	unknown_3:d
	unknown_4:d
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallgru_60_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
"__inference__wrapped_model_30269592
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
_user_specified_namegru_60_input
?
?
J__inference_sequential_60_layer_call_and_return_conditional_losses_3028046

inputs!
gru_60_3028028:	?
gru_60_3028030:	?"
gru_60_3028032:
??$
dense_120_3028035:	?d
dense_120_3028037:d#
dense_121_3028040:d
dense_121_3028042:
identity??!dense_120/StatefulPartitionedCall?!dense_121/StatefulPartitionedCall?gru_60/StatefulPartitionedCall?
gru_60/StatefulPartitionedCallStatefulPartitionedCallinputsgru_60_3028028gru_60_3028030gru_60_3028032*
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
C__inference_gru_60_layer_call_and_return_conditional_losses_30279952 
gru_60/StatefulPartitionedCall?
!dense_120/StatefulPartitionedCallStatefulPartitionedCall'gru_60/StatefulPartitionedCall:output:0dense_120_3028035dense_120_3028037*
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
F__inference_dense_120_layer_call_and_return_conditional_losses_30277512#
!dense_120/StatefulPartitionedCall?
!dense_121/StatefulPartitionedCallStatefulPartitionedCall*dense_120/StatefulPartitionedCall:output:0dense_121_3028040dense_121_3028042*
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
F__inference_dense_121_layer_call_and_return_conditional_losses_30277672#
!dense_121/StatefulPartitionedCall?
IdentityIdentity*dense_121/StatefulPartitionedCall:output:0"^dense_120/StatefulPartitionedCall"^dense_121/StatefulPartitionedCall^gru_60/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:?????????: : : : : : : 2F
!dense_120/StatefulPartitionedCall!dense_120/StatefulPartitionedCall2F
!dense_121/StatefulPartitionedCall!dense_121/StatefulPartitionedCall2@
gru_60/StatefulPartitionedCallgru_60/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?h
?
C__inference_gru_60_layer_call_and_return_conditional_losses_3027995

inputs=
*gru_cell_60_matmul_readvariableop_resource:	?:
+gru_cell_60_biasadd_readvariableop_resource:	?7
#gru_cell_60_readvariableop_resource:
??
identity??"gru_cell_60/BiasAdd/ReadVariableOp?!gru_cell_60/MatMul/ReadVariableOp?gru_cell_60/ReadVariableOp?gru_cell_60/ReadVariableOp_1?whileD
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
!gru_cell_60/MatMul/ReadVariableOpReadVariableOp*gru_cell_60_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!gru_cell_60/MatMul/ReadVariableOp?
gru_cell_60/MatMulMatMulstrided_slice_2:output:0)gru_cell_60/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/MatMul?
"gru_cell_60/BiasAdd/ReadVariableOpReadVariableOp+gru_cell_60_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"gru_cell_60/BiasAdd/ReadVariableOp?
gru_cell_60/BiasAddBiasAddgru_cell_60/MatMul:product:0*gru_cell_60/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/BiasAdd?
gru_cell_60/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_60/split/split_dim?
gru_cell_60/splitSplit$gru_cell_60/split/split_dim:output:0gru_cell_60/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
gru_cell_60/split?
gru_cell_60/ReadVariableOpReadVariableOp#gru_cell_60_readvariableop_resource* 
_output_shapes
:
??*
dtype02
gru_cell_60/ReadVariableOp?
gru_cell_60/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
gru_cell_60/strided_slice/stack?
!gru_cell_60/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2#
!gru_cell_60/strided_slice/stack_1?
!gru_cell_60/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!gru_cell_60/strided_slice/stack_2?
gru_cell_60/strided_sliceStridedSlice"gru_cell_60/ReadVariableOp:value:0(gru_cell_60/strided_slice/stack:output:0*gru_cell_60/strided_slice/stack_1:output:0*gru_cell_60/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
gru_cell_60/strided_slice?
gru_cell_60/MatMul_1MatMulzeros:output:0"gru_cell_60/strided_slice:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/MatMul_1{
gru_cell_60/ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2
gru_cell_60/Const?
gru_cell_60/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_60/split_1/split_dim?
gru_cell_60/split_1SplitVgru_cell_60/MatMul_1:product:0gru_cell_60/Const:output:0&gru_cell_60/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:??????????:??????????:????????? *
	num_split2
gru_cell_60/split_1?
gru_cell_60/addAddV2gru_cell_60/split:output:0gru_cell_60/split_1:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/add}
gru_cell_60/SigmoidSigmoidgru_cell_60/add:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/Sigmoid?
gru_cell_60/add_1AddV2gru_cell_60/split:output:1gru_cell_60/split_1:output:1*
T0*(
_output_shapes
:??????????2
gru_cell_60/add_1?
gru_cell_60/Sigmoid_1Sigmoidgru_cell_60/add_1:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/Sigmoid_1?
gru_cell_60/mulMulgru_cell_60/Sigmoid_1:y:0zeros:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/mul?
gru_cell_60/ReadVariableOp_1ReadVariableOp#gru_cell_60_readvariableop_resource* 
_output_shapes
:
??*
dtype02
gru_cell_60/ReadVariableOp_1?
!gru_cell_60/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2#
!gru_cell_60/strided_slice_1/stack?
#gru_cell_60/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#gru_cell_60/strided_slice_1/stack_1?
#gru_cell_60/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gru_cell_60/strided_slice_1/stack_2?
gru_cell_60/strided_slice_1StridedSlice$gru_cell_60/ReadVariableOp_1:value:0*gru_cell_60/strided_slice_1/stack:output:0,gru_cell_60/strided_slice_1/stack_1:output:0,gru_cell_60/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
gru_cell_60/strided_slice_1?
gru_cell_60/MatMul_2MatMulgru_cell_60/mul:z:0$gru_cell_60/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/MatMul_2?
gru_cell_60/add_2AddV2gru_cell_60/split:output:2gru_cell_60/MatMul_2:product:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/add_2v
gru_cell_60/ReluRelugru_cell_60/add_2:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/Relu?
gru_cell_60/mul_1Mulgru_cell_60/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/mul_1k
gru_cell_60/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_cell_60/sub/x?
gru_cell_60/subSubgru_cell_60/sub/x:output:0gru_cell_60/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/sub?
gru_cell_60/mul_2Mulgru_cell_60/sub:z:0gru_cell_60/Relu:activations:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/mul_2?
gru_cell_60/add_3AddV2gru_cell_60/mul_1:z:0gru_cell_60/mul_2:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/add_3?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*gru_cell_60_matmul_readvariableop_resource+gru_cell_60_biasadd_readvariableop_resource#gru_cell_60_readvariableop_resource*
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
while_body_3027899*
condR
while_cond_3027898*9
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
IdentityIdentitystrided_slice_3:output:0#^gru_cell_60/BiasAdd/ReadVariableOp"^gru_cell_60/MatMul/ReadVariableOp^gru_cell_60/ReadVariableOp^gru_cell_60/ReadVariableOp_1^while*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2H
"gru_cell_60/BiasAdd/ReadVariableOp"gru_cell_60/BiasAdd/ReadVariableOp2F
!gru_cell_60/MatMul/ReadVariableOp!gru_cell_60/MatMul/ReadVariableOp28
gru_cell_60/ReadVariableOpgru_cell_60/ReadVariableOp2<
gru_cell_60/ReadVariableOp_1gru_cell_60/ReadVariableOp_12
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
while_cond_3028973
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_3028973___redundant_placeholder05
1while_while_cond_3028973___redundant_placeholder15
1while_while_cond_3028973___redundant_placeholder25
1while_while_cond_3028973___redundant_placeholder3
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
?
?
while_cond_3029144
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_3029144___redundant_placeholder05
1while_while_cond_3029144___redundant_placeholder15
1while_while_cond_3029144___redundant_placeholder25
1while_while_cond_3029144___redundant_placeholder3
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
F__inference_dense_121_layer_call_and_return_conditional_losses_3029315

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
?
?
(__inference_gru_60_layer_call_fn_3029274

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
C__inference_gru_60_layer_call_and_return_conditional_losses_30277322
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
?
?
+__inference_dense_120_layer_call_fn_3029305

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
F__inference_dense_120_layer_call_and_return_conditional_losses_30277512
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
?d
?	
gru_60_while_body_3028226*
&gru_60_while_gru_60_while_loop_counter0
,gru_60_while_gru_60_while_maximum_iterations
gru_60_while_placeholder
gru_60_while_placeholder_1
gru_60_while_placeholder_2)
%gru_60_while_gru_60_strided_slice_1_0e
agru_60_while_tensorarrayv2read_tensorlistgetitem_gru_60_tensorarrayunstack_tensorlistfromtensor_0L
9gru_60_while_gru_cell_60_matmul_readvariableop_resource_0:	?I
:gru_60_while_gru_cell_60_biasadd_readvariableop_resource_0:	?F
2gru_60_while_gru_cell_60_readvariableop_resource_0:
??
gru_60_while_identity
gru_60_while_identity_1
gru_60_while_identity_2
gru_60_while_identity_3
gru_60_while_identity_4'
#gru_60_while_gru_60_strided_slice_1c
_gru_60_while_tensorarrayv2read_tensorlistgetitem_gru_60_tensorarrayunstack_tensorlistfromtensorJ
7gru_60_while_gru_cell_60_matmul_readvariableop_resource:	?G
8gru_60_while_gru_cell_60_biasadd_readvariableop_resource:	?D
0gru_60_while_gru_cell_60_readvariableop_resource:
????/gru_60/while/gru_cell_60/BiasAdd/ReadVariableOp?.gru_60/while/gru_cell_60/MatMul/ReadVariableOp?'gru_60/while/gru_cell_60/ReadVariableOp?)gru_60/while/gru_cell_60/ReadVariableOp_1?
>gru_60/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2@
>gru_60/while/TensorArrayV2Read/TensorListGetItem/element_shape?
0gru_60/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemagru_60_while_tensorarrayv2read_tensorlistgetitem_gru_60_tensorarrayunstack_tensorlistfromtensor_0gru_60_while_placeholderGgru_60/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:?????????*
element_dtype022
0gru_60/while/TensorArrayV2Read/TensorListGetItem?
.gru_60/while/gru_cell_60/MatMul/ReadVariableOpReadVariableOp9gru_60_while_gru_cell_60_matmul_readvariableop_resource_0*
_output_shapes
:	?*
dtype020
.gru_60/while/gru_cell_60/MatMul/ReadVariableOp?
gru_60/while/gru_cell_60/MatMulMatMul7gru_60/while/TensorArrayV2Read/TensorListGetItem:item:06gru_60/while/gru_cell_60/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2!
gru_60/while/gru_cell_60/MatMul?
/gru_60/while/gru_cell_60/BiasAdd/ReadVariableOpReadVariableOp:gru_60_while_gru_cell_60_biasadd_readvariableop_resource_0*
_output_shapes	
:?*
dtype021
/gru_60/while/gru_cell_60/BiasAdd/ReadVariableOp?
 gru_60/while/gru_cell_60/BiasAddBiasAdd)gru_60/while/gru_cell_60/MatMul:product:07gru_60/while/gru_cell_60/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2"
 gru_60/while/gru_cell_60/BiasAdd?
(gru_60/while/gru_cell_60/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2*
(gru_60/while/gru_cell_60/split/split_dim?
gru_60/while/gru_cell_60/splitSplit1gru_60/while/gru_cell_60/split/split_dim:output:0)gru_60/while/gru_cell_60/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2 
gru_60/while/gru_cell_60/split?
'gru_60/while/gru_cell_60/ReadVariableOpReadVariableOp2gru_60_while_gru_cell_60_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02)
'gru_60/while/gru_cell_60/ReadVariableOp?
,gru_60/while/gru_cell_60/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2.
,gru_60/while/gru_cell_60/strided_slice/stack?
.gru_60/while/gru_cell_60/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  20
.gru_60/while/gru_cell_60/strided_slice/stack_1?
.gru_60/while/gru_cell_60/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.gru_60/while/gru_cell_60/strided_slice/stack_2?
&gru_60/while/gru_cell_60/strided_sliceStridedSlice/gru_60/while/gru_cell_60/ReadVariableOp:value:05gru_60/while/gru_cell_60/strided_slice/stack:output:07gru_60/while/gru_cell_60/strided_slice/stack_1:output:07gru_60/while/gru_cell_60/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2(
&gru_60/while/gru_cell_60/strided_slice?
!gru_60/while/gru_cell_60/MatMul_1MatMulgru_60_while_placeholder_2/gru_60/while/gru_cell_60/strided_slice:output:0*
T0*(
_output_shapes
:??????????2#
!gru_60/while/gru_cell_60/MatMul_1?
gru_60/while/gru_cell_60/ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2 
gru_60/while/gru_cell_60/Const?
*gru_60/while/gru_cell_60/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2,
*gru_60/while/gru_cell_60/split_1/split_dim?
 gru_60/while/gru_cell_60/split_1SplitV+gru_60/while/gru_cell_60/MatMul_1:product:0'gru_60/while/gru_cell_60/Const:output:03gru_60/while/gru_cell_60/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:??????????:??????????:????????? *
	num_split2"
 gru_60/while/gru_cell_60/split_1?
gru_60/while/gru_cell_60/addAddV2'gru_60/while/gru_cell_60/split:output:0)gru_60/while/gru_cell_60/split_1:output:0*
T0*(
_output_shapes
:??????????2
gru_60/while/gru_cell_60/add?
 gru_60/while/gru_cell_60/SigmoidSigmoid gru_60/while/gru_cell_60/add:z:0*
T0*(
_output_shapes
:??????????2"
 gru_60/while/gru_cell_60/Sigmoid?
gru_60/while/gru_cell_60/add_1AddV2'gru_60/while/gru_cell_60/split:output:1)gru_60/while/gru_cell_60/split_1:output:1*
T0*(
_output_shapes
:??????????2 
gru_60/while/gru_cell_60/add_1?
"gru_60/while/gru_cell_60/Sigmoid_1Sigmoid"gru_60/while/gru_cell_60/add_1:z:0*
T0*(
_output_shapes
:??????????2$
"gru_60/while/gru_cell_60/Sigmoid_1?
gru_60/while/gru_cell_60/mulMul&gru_60/while/gru_cell_60/Sigmoid_1:y:0gru_60_while_placeholder_2*
T0*(
_output_shapes
:??????????2
gru_60/while/gru_cell_60/mul?
)gru_60/while/gru_cell_60/ReadVariableOp_1ReadVariableOp2gru_60_while_gru_cell_60_readvariableop_resource_0* 
_output_shapes
:
??*
dtype02+
)gru_60/while/gru_cell_60/ReadVariableOp_1?
.gru_60/while/gru_cell_60/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  20
.gru_60/while/gru_cell_60/strided_slice_1/stack?
0gru_60/while/gru_cell_60/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        22
0gru_60/while/gru_cell_60/strided_slice_1/stack_1?
0gru_60/while/gru_cell_60/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0gru_60/while/gru_cell_60/strided_slice_1/stack_2?
(gru_60/while/gru_cell_60/strided_slice_1StridedSlice1gru_60/while/gru_cell_60/ReadVariableOp_1:value:07gru_60/while/gru_cell_60/strided_slice_1/stack:output:09gru_60/while/gru_cell_60/strided_slice_1/stack_1:output:09gru_60/while/gru_cell_60/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2*
(gru_60/while/gru_cell_60/strided_slice_1?
!gru_60/while/gru_cell_60/MatMul_2MatMul gru_60/while/gru_cell_60/mul:z:01gru_60/while/gru_cell_60/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2#
!gru_60/while/gru_cell_60/MatMul_2?
gru_60/while/gru_cell_60/add_2AddV2'gru_60/while/gru_cell_60/split:output:2+gru_60/while/gru_cell_60/MatMul_2:product:0*
T0*(
_output_shapes
:??????????2 
gru_60/while/gru_cell_60/add_2?
gru_60/while/gru_cell_60/ReluRelu"gru_60/while/gru_cell_60/add_2:z:0*
T0*(
_output_shapes
:??????????2
gru_60/while/gru_cell_60/Relu?
gru_60/while/gru_cell_60/mul_1Mul$gru_60/while/gru_cell_60/Sigmoid:y:0gru_60_while_placeholder_2*
T0*(
_output_shapes
:??????????2 
gru_60/while/gru_cell_60/mul_1?
gru_60/while/gru_cell_60/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2 
gru_60/while/gru_cell_60/sub/x?
gru_60/while/gru_cell_60/subSub'gru_60/while/gru_cell_60/sub/x:output:0$gru_60/while/gru_cell_60/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
gru_60/while/gru_cell_60/sub?
gru_60/while/gru_cell_60/mul_2Mul gru_60/while/gru_cell_60/sub:z:0+gru_60/while/gru_cell_60/Relu:activations:0*
T0*(
_output_shapes
:??????????2 
gru_60/while/gru_cell_60/mul_2?
gru_60/while/gru_cell_60/add_3AddV2"gru_60/while/gru_cell_60/mul_1:z:0"gru_60/while/gru_cell_60/mul_2:z:0*
T0*(
_output_shapes
:??????????2 
gru_60/while/gru_cell_60/add_3?
1gru_60/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemgru_60_while_placeholder_1gru_60_while_placeholder"gru_60/while/gru_cell_60/add_3:z:0*
_output_shapes
: *
element_dtype023
1gru_60/while/TensorArrayV2Write/TensorListSetItemj
gru_60/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru_60/while/add/y?
gru_60/while/addAddV2gru_60_while_placeholdergru_60/while/add/y:output:0*
T0*
_output_shapes
: 2
gru_60/while/addn
gru_60/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru_60/while/add_1/y?
gru_60/while/add_1AddV2&gru_60_while_gru_60_while_loop_countergru_60/while/add_1/y:output:0*
T0*
_output_shapes
: 2
gru_60/while/add_1?
gru_60/while/IdentityIdentitygru_60/while/add_1:z:00^gru_60/while/gru_cell_60/BiasAdd/ReadVariableOp/^gru_60/while/gru_cell_60/MatMul/ReadVariableOp(^gru_60/while/gru_cell_60/ReadVariableOp*^gru_60/while/gru_cell_60/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_60/while/Identity?
gru_60/while/Identity_1Identity,gru_60_while_gru_60_while_maximum_iterations0^gru_60/while/gru_cell_60/BiasAdd/ReadVariableOp/^gru_60/while/gru_cell_60/MatMul/ReadVariableOp(^gru_60/while/gru_cell_60/ReadVariableOp*^gru_60/while/gru_cell_60/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_60/while/Identity_1?
gru_60/while/Identity_2Identitygru_60/while/add:z:00^gru_60/while/gru_cell_60/BiasAdd/ReadVariableOp/^gru_60/while/gru_cell_60/MatMul/ReadVariableOp(^gru_60/while/gru_cell_60/ReadVariableOp*^gru_60/while/gru_cell_60/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_60/while/Identity_2?
gru_60/while/Identity_3IdentityAgru_60/while/TensorArrayV2Write/TensorListSetItem:output_handle:00^gru_60/while/gru_cell_60/BiasAdd/ReadVariableOp/^gru_60/while/gru_cell_60/MatMul/ReadVariableOp(^gru_60/while/gru_cell_60/ReadVariableOp*^gru_60/while/gru_cell_60/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_60/while/Identity_3?
gru_60/while/Identity_4Identity"gru_60/while/gru_cell_60/add_3:z:00^gru_60/while/gru_cell_60/BiasAdd/ReadVariableOp/^gru_60/while/gru_cell_60/MatMul/ReadVariableOp(^gru_60/while/gru_cell_60/ReadVariableOp*^gru_60/while/gru_cell_60/ReadVariableOp_1*
T0*(
_output_shapes
:??????????2
gru_60/while/Identity_4"L
#gru_60_while_gru_60_strided_slice_1%gru_60_while_gru_60_strided_slice_1_0"v
8gru_60_while_gru_cell_60_biasadd_readvariableop_resource:gru_60_while_gru_cell_60_biasadd_readvariableop_resource_0"t
7gru_60_while_gru_cell_60_matmul_readvariableop_resource9gru_60_while_gru_cell_60_matmul_readvariableop_resource_0"f
0gru_60_while_gru_cell_60_readvariableop_resource2gru_60_while_gru_cell_60_readvariableop_resource_0"7
gru_60_while_identitygru_60/while/Identity:output:0";
gru_60_while_identity_1 gru_60/while/Identity_1:output:0";
gru_60_while_identity_2 gru_60/while/Identity_2:output:0";
gru_60_while_identity_3 gru_60/while/Identity_3:output:0";
gru_60_while_identity_4 gru_60/while/Identity_4:output:0"?
_gru_60_while_tensorarrayv2read_tensorlistgetitem_gru_60_tensorarrayunstack_tensorlistfromtensoragru_60_while_tensorarrayv2read_tensorlistgetitem_gru_60_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :??????????: : : : : 2b
/gru_60/while/gru_cell_60/BiasAdd/ReadVariableOp/gru_60/while/gru_cell_60/BiasAdd/ReadVariableOp2`
.gru_60/while/gru_cell_60/MatMul/ReadVariableOp.gru_60/while/gru_cell_60/MatMul/ReadVariableOp2R
'gru_60/while/gru_cell_60/ReadVariableOp'gru_60/while/gru_cell_60/ReadVariableOp2V
)gru_60/while/gru_cell_60/ReadVariableOp_1)gru_60/while/gru_cell_60/ReadVariableOp_1: 
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
?
gru_60_while_cond_3028409*
&gru_60_while_gru_60_while_loop_counter0
,gru_60_while_gru_60_while_maximum_iterations
gru_60_while_placeholder
gru_60_while_placeholder_1
gru_60_while_placeholder_2,
(gru_60_while_less_gru_60_strided_slice_1C
?gru_60_while_gru_60_while_cond_3028409___redundant_placeholder0C
?gru_60_while_gru_60_while_cond_3028409___redundant_placeholder1C
?gru_60_while_gru_60_while_cond_3028409___redundant_placeholder2C
?gru_60_while_gru_60_while_cond_3028409___redundant_placeholder3
gru_60_while_identity
?
gru_60/while/LessLessgru_60_while_placeholder(gru_60_while_less_gru_60_strided_slice_1*
T0*
_output_shapes
: 2
gru_60/while/Lessr
gru_60/while/IdentityIdentitygru_60/while/Less:z:0*
T0
*
_output_shapes
: 2
gru_60/while/Identity"7
gru_60_while_identitygru_60/while/Identity:output:0*(
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
H__inference_gru_cell_60_layer_call_and_return_conditional_losses_3029370

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
?h
?
C__inference_gru_60_layer_call_and_return_conditional_losses_3029070

inputs=
*gru_cell_60_matmul_readvariableop_resource:	?:
+gru_cell_60_biasadd_readvariableop_resource:	?7
#gru_cell_60_readvariableop_resource:
??
identity??"gru_cell_60/BiasAdd/ReadVariableOp?!gru_cell_60/MatMul/ReadVariableOp?gru_cell_60/ReadVariableOp?gru_cell_60/ReadVariableOp_1?whileD
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
!gru_cell_60/MatMul/ReadVariableOpReadVariableOp*gru_cell_60_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02#
!gru_cell_60/MatMul/ReadVariableOp?
gru_cell_60/MatMulMatMulstrided_slice_2:output:0)gru_cell_60/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/MatMul?
"gru_cell_60/BiasAdd/ReadVariableOpReadVariableOp+gru_cell_60_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"gru_cell_60/BiasAdd/ReadVariableOp?
gru_cell_60/BiasAddBiasAddgru_cell_60/MatMul:product:0*gru_cell_60/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/BiasAdd?
gru_cell_60/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_60/split/split_dim?
gru_cell_60/splitSplit$gru_cell_60/split/split_dim:output:0gru_cell_60/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
gru_cell_60/split?
gru_cell_60/ReadVariableOpReadVariableOp#gru_cell_60_readvariableop_resource* 
_output_shapes
:
??*
dtype02
gru_cell_60/ReadVariableOp?
gru_cell_60/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
gru_cell_60/strided_slice/stack?
!gru_cell_60/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ?  2#
!gru_cell_60/strided_slice/stack_1?
!gru_cell_60/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!gru_cell_60/strided_slice/stack_2?
gru_cell_60/strided_sliceStridedSlice"gru_cell_60/ReadVariableOp:value:0(gru_cell_60/strided_slice/stack:output:0*gru_cell_60/strided_slice/stack_1:output:0*gru_cell_60/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
gru_cell_60/strided_slice?
gru_cell_60/MatMul_1MatMulzeros:output:0"gru_cell_60/strided_slice:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/MatMul_1{
gru_cell_60/ConstConst*
_output_shapes
:*
dtype0*!
valueB"?   ?   ????2
gru_cell_60/Const?
gru_cell_60/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
gru_cell_60/split_1/split_dim?
gru_cell_60/split_1SplitVgru_cell_60/MatMul_1:product:0gru_cell_60/Const:output:0&gru_cell_60/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:??????????:??????????:????????? *
	num_split2
gru_cell_60/split_1?
gru_cell_60/addAddV2gru_cell_60/split:output:0gru_cell_60/split_1:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/add}
gru_cell_60/SigmoidSigmoidgru_cell_60/add:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/Sigmoid?
gru_cell_60/add_1AddV2gru_cell_60/split:output:1gru_cell_60/split_1:output:1*
T0*(
_output_shapes
:??????????2
gru_cell_60/add_1?
gru_cell_60/Sigmoid_1Sigmoidgru_cell_60/add_1:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/Sigmoid_1?
gru_cell_60/mulMulgru_cell_60/Sigmoid_1:y:0zeros:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/mul?
gru_cell_60/ReadVariableOp_1ReadVariableOp#gru_cell_60_readvariableop_resource* 
_output_shapes
:
??*
dtype02
gru_cell_60/ReadVariableOp_1?
!gru_cell_60/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ?  2#
!gru_cell_60/strided_slice_1/stack?
#gru_cell_60/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#gru_cell_60/strided_slice_1/stack_1?
#gru_cell_60/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gru_cell_60/strided_slice_1/stack_2?
gru_cell_60/strided_slice_1StridedSlice$gru_cell_60/ReadVariableOp_1:value:0*gru_cell_60/strided_slice_1/stack:output:0,gru_cell_60/strided_slice_1/stack_1:output:0,gru_cell_60/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
??*

begin_mask*
end_mask2
gru_cell_60/strided_slice_1?
gru_cell_60/MatMul_2MatMulgru_cell_60/mul:z:0$gru_cell_60/strided_slice_1:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/MatMul_2?
gru_cell_60/add_2AddV2gru_cell_60/split:output:2gru_cell_60/MatMul_2:product:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/add_2v
gru_cell_60/ReluRelugru_cell_60/add_2:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/Relu?
gru_cell_60/mul_1Mulgru_cell_60/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/mul_1k
gru_cell_60/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
gru_cell_60/sub/x?
gru_cell_60/subSubgru_cell_60/sub/x:output:0gru_cell_60/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/sub?
gru_cell_60/mul_2Mulgru_cell_60/sub:z:0gru_cell_60/Relu:activations:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/mul_2?
gru_cell_60/add_3AddV2gru_cell_60/mul_1:z:0gru_cell_60/mul_2:z:0*
T0*(
_output_shapes
:??????????2
gru_cell_60/add_3?
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*gru_cell_60_matmul_readvariableop_resource+gru_cell_60_biasadd_readvariableop_resource#gru_cell_60_readvariableop_resource*
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
while_body_3028974*
condR
while_cond_3028973*9
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
IdentityIdentitystrided_slice_3:output:0#^gru_cell_60/BiasAdd/ReadVariableOp"^gru_cell_60/MatMul/ReadVariableOp^gru_cell_60/ReadVariableOp^gru_cell_60/ReadVariableOp_1^while*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????: : : 2H
"gru_cell_60/BiasAdd/ReadVariableOp"gru_cell_60/BiasAdd/ReadVariableOp2F
!gru_cell_60/MatMul/ReadVariableOp!gru_cell_60/MatMul/ReadVariableOp28
gru_cell_60/ReadVariableOpgru_cell_60/ReadVariableOp2<
gru_cell_60/ReadVariableOp_1gru_cell_60/ReadVariableOp_12
whilewhile:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
/__inference_sequential_60_layer_call_fn_3028538

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
J__inference_sequential_60_layer_call_and_return_conditional_losses_30277742
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
gru_60_input9
serving_default_gru_60_input:0?????????=
	dense_1210
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
_tf_keras_sequential?*{"name": "sequential_60", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_60", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 2]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "gru_60_input"}}, {"class_name": "GRU", "config": {"name": "gru_60", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 2]}, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 200, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2, "reset_after": false}}, {"class_name": "Dense", "config": {"name": "dense_120", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_121", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 12, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 2]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 13}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 7, 2]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 7, 2]}, "float32", "gru_60_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_60", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 2]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "gru_60_input"}, "shared_object_id": 0}, {"class_name": "GRU", "config": {"name": "gru_60", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 2]}, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 200, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2, "reset_after": false}, "shared_object_id": 5}, {"class_name": "Dense", "config": {"name": "dense_120", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 8}, {"class_name": "Dense", "config": {"name": "dense_121", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 11}]}}, "training_config": {"loss": "mse", "metrics": null, "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
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
_tf_keras_rnn_layer?{"name": "gru_60", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 2]}, "stateful": false, "must_restore_from_config": false, "class_name": "GRU", "config": {"name": "gru_60", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 2]}, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 200, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2, "reset_after": false}, "shared_object_id": 5, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 2]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 13}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 7, 2]}}
?

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
*Z&call_and_return_all_conditional_losses
[__call__"?
_tf_keras_layer?{"name": "dense_120", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_120", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 8, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 200}}, "shared_object_id": 14}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 200]}}
?

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
*\&call_and_return_all_conditional_losses
]__call__"?
_tf_keras_layer?{"name": "dense_121", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_121", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 11, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 100}}, "shared_object_id": 15}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 100]}}
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
_tf_keras_layer?{"name": "gru_cell_60", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "GRUCell", "config": {"name": "gru_cell_60", "trainable": true, "dtype": "float32", "units": 200, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2, "reset_after": false}, "shared_object_id": 4}
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
#:!	?d2dense_120/kernel
:d2dense_120/bias
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
": d2dense_121/kernel
:2dense_121/bias
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
,:*	?2gru_60/gru_cell_60/kernel
7:5
??2#gru_60/gru_cell_60/recurrent_kernel
&:$?2gru_60/gru_cell_60/bias
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
(:&	?d2Adam/dense_120/kernel/m
!:d2Adam/dense_120/bias/m
':%d2Adam/dense_121/kernel/m
!:2Adam/dense_121/bias/m
1:/	?2 Adam/gru_60/gru_cell_60/kernel/m
<::
??2*Adam/gru_60/gru_cell_60/recurrent_kernel/m
+:)?2Adam/gru_60/gru_cell_60/bias/m
(:&	?d2Adam/dense_120/kernel/v
!:d2Adam/dense_120/bias/v
':%d2Adam/dense_121/kernel/v
!:2Adam/dense_121/bias/v
1:/	?2 Adam/gru_60/gru_cell_60/kernel/v
<::
??2*Adam/gru_60/gru_cell_60/recurrent_kernel/v
+:)?2Adam/gru_60/gru_cell_60/bias/v
?2?
"__inference__wrapped_model_3026959?
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
gru_60_input?????????
?2?
J__inference_sequential_60_layer_call_and_return_conditional_losses_3028335
J__inference_sequential_60_layer_call_and_return_conditional_losses_3028519
J__inference_sequential_60_layer_call_and_return_conditional_losses_3028103
J__inference_sequential_60_layer_call_and_return_conditional_losses_3028124?
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
/__inference_sequential_60_layer_call_fn_3027791
/__inference_sequential_60_layer_call_fn_3028538
/__inference_sequential_60_layer_call_fn_3028557
/__inference_sequential_60_layer_call_fn_3028082?
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
C__inference_gru_60_layer_call_and_return_conditional_losses_3028728
C__inference_gru_60_layer_call_and_return_conditional_losses_3028899
C__inference_gru_60_layer_call_and_return_conditional_losses_3029070
C__inference_gru_60_layer_call_and_return_conditional_losses_3029241?
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
(__inference_gru_60_layer_call_fn_3029252
(__inference_gru_60_layer_call_fn_3029263
(__inference_gru_60_layer_call_fn_3029274
(__inference_gru_60_layer_call_fn_3029285?
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
F__inference_dense_120_layer_call_and_return_conditional_losses_3029296?
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
+__inference_dense_120_layer_call_fn_3029305?
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
F__inference_dense_121_layer_call_and_return_conditional_losses_3029315?
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
+__inference_dense_121_layer_call_fn_3029324?
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
%__inference_signature_wrapper_3028151gru_60_input"?
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
H__inference_gru_cell_60_layer_call_and_return_conditional_losses_3029370
H__inference_gru_cell_60_layer_call_and_return_conditional_losses_3029416?
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
-__inference_gru_cell_60_layer_call_fn_3029430
-__inference_gru_cell_60_layer_call_fn_3029444?
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
"__inference__wrapped_model_3026959{!#"9?6
/?,
*?'
gru_60_input?????????
? "5?2
0
	dense_121#? 
	dense_121??????????
F__inference_dense_120_layer_call_and_return_conditional_losses_3029296]0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????d
? 
+__inference_dense_120_layer_call_fn_3029305P0?-
&?#
!?
inputs??????????
? "??????????d?
F__inference_dense_121_layer_call_and_return_conditional_losses_3029315\/?,
%?"
 ?
inputs?????????d
? "%?"
?
0?????????
? ~
+__inference_dense_121_layer_call_fn_3029324O/?,
%?"
 ?
inputs?????????d
? "???????????
C__inference_gru_60_layer_call_and_return_conditional_losses_3028728~!#"O?L
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
C__inference_gru_60_layer_call_and_return_conditional_losses_3028899~!#"O?L
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
C__inference_gru_60_layer_call_and_return_conditional_losses_3029070n!#"??<
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
C__inference_gru_60_layer_call_and_return_conditional_losses_3029241n!#"??<
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
(__inference_gru_60_layer_call_fn_3029252q!#"O?L
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
(__inference_gru_60_layer_call_fn_3029263q!#"O?L
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
(__inference_gru_60_layer_call_fn_3029274a!#"??<
5?2
$?!
inputs?????????

 
p 

 
? "????????????
(__inference_gru_60_layer_call_fn_3029285a!#"??<
5?2
$?!
inputs?????????

 
p

 
? "????????????
H__inference_gru_cell_60_layer_call_and_return_conditional_losses_3029370?!#"]?Z
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
H__inference_gru_cell_60_layer_call_and_return_conditional_losses_3029416?!#"]?Z
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
-__inference_gru_cell_60_layer_call_fn_3029430?!#"]?Z
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
-__inference_gru_cell_60_layer_call_fn_3029444?!#"]?Z
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
J__inference_sequential_60_layer_call_and_return_conditional_losses_3028103s!#"A?>
7?4
*?'
gru_60_input?????????
p 

 
? "%?"
?
0?????????
? ?
J__inference_sequential_60_layer_call_and_return_conditional_losses_3028124s!#"A?>
7?4
*?'
gru_60_input?????????
p

 
? "%?"
?
0?????????
? ?
J__inference_sequential_60_layer_call_and_return_conditional_losses_3028335m!#";?8
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
J__inference_sequential_60_layer_call_and_return_conditional_losses_3028519m!#";?8
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
/__inference_sequential_60_layer_call_fn_3027791f!#"A?>
7?4
*?'
gru_60_input?????????
p 

 
? "???????????
/__inference_sequential_60_layer_call_fn_3028082f!#"A?>
7?4
*?'
gru_60_input?????????
p

 
? "???????????
/__inference_sequential_60_layer_call_fn_3028538`!#";?8
1?.
$?!
inputs?????????
p 

 
? "???????????
/__inference_sequential_60_layer_call_fn_3028557`!#";?8
1?.
$?!
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_3028151?!#"I?F
? 
??<
:
gru_60_input*?'
gru_60_input?????????"5?2
0
	dense_121#? 
	dense_121?????????