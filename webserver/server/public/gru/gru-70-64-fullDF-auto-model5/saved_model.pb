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
dense_194/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Èd*!
shared_namedense_194/kernel
v
$dense_194/kernel/Read/ReadVariableOpReadVariableOpdense_194/kernel*
_output_shapes
:	Èd*
dtype0
t
dense_194/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*
shared_namedense_194/bias
m
"dense_194/bias/Read/ReadVariableOpReadVariableOpdense_194/bias*
_output_shapes
:d*
dtype0
|
dense_195/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*!
shared_namedense_195/kernel
u
$dense_195/kernel/Read/ReadVariableOpReadVariableOpdense_195/kernel*
_output_shapes

:d*
dtype0
t
dense_195/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_195/bias
m
"dense_195/bias/Read/ReadVariableOpReadVariableOpdense_195/bias*
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
gru_97/gru_cell_97/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ø**
shared_namegru_97/gru_cell_97/kernel

-gru_97/gru_cell_97/kernel/Read/ReadVariableOpReadVariableOpgru_97/gru_cell_97/kernel*
_output_shapes
:	Ø*
dtype0
¤
#gru_97/gru_cell_97/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ÈØ*4
shared_name%#gru_97/gru_cell_97/recurrent_kernel

7gru_97/gru_cell_97/recurrent_kernel/Read/ReadVariableOpReadVariableOp#gru_97/gru_cell_97/recurrent_kernel* 
_output_shapes
:
ÈØ*
dtype0

gru_97/gru_cell_97/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:Ø*(
shared_namegru_97/gru_cell_97/bias

+gru_97/gru_cell_97/bias/Read/ReadVariableOpReadVariableOpgru_97/gru_cell_97/bias*
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
Adam/dense_194/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Èd*(
shared_nameAdam/dense_194/kernel/m

+Adam/dense_194/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_194/kernel/m*
_output_shapes
:	Èd*
dtype0

Adam/dense_194/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*&
shared_nameAdam/dense_194/bias/m
{
)Adam/dense_194/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_194/bias/m*
_output_shapes
:d*
dtype0

Adam/dense_195/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*(
shared_nameAdam/dense_195/kernel/m

+Adam/dense_195/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_195/kernel/m*
_output_shapes

:d*
dtype0

Adam/dense_195/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_195/bias/m
{
)Adam/dense_195/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_195/bias/m*
_output_shapes
:*
dtype0

 Adam/gru_97/gru_cell_97/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ø*1
shared_name" Adam/gru_97/gru_cell_97/kernel/m

4Adam/gru_97/gru_cell_97/kernel/m/Read/ReadVariableOpReadVariableOp Adam/gru_97/gru_cell_97/kernel/m*
_output_shapes
:	Ø*
dtype0
²
*Adam/gru_97/gru_cell_97/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ÈØ*;
shared_name,*Adam/gru_97/gru_cell_97/recurrent_kernel/m
«
>Adam/gru_97/gru_cell_97/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp*Adam/gru_97/gru_cell_97/recurrent_kernel/m* 
_output_shapes
:
ÈØ*
dtype0

Adam/gru_97/gru_cell_97/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:Ø*/
shared_name Adam/gru_97/gru_cell_97/bias/m

2Adam/gru_97/gru_cell_97/bias/m/Read/ReadVariableOpReadVariableOpAdam/gru_97/gru_cell_97/bias/m*
_output_shapes	
:Ø*
dtype0

Adam/dense_194/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Èd*(
shared_nameAdam/dense_194/kernel/v

+Adam/dense_194/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_194/kernel/v*
_output_shapes
:	Èd*
dtype0

Adam/dense_194/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*&
shared_nameAdam/dense_194/bias/v
{
)Adam/dense_194/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_194/bias/v*
_output_shapes
:d*
dtype0

Adam/dense_195/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*(
shared_nameAdam/dense_195/kernel/v

+Adam/dense_195/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_195/kernel/v*
_output_shapes

:d*
dtype0

Adam/dense_195/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_195/bias/v
{
)Adam/dense_195/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_195/bias/v*
_output_shapes
:*
dtype0

 Adam/gru_97/gru_cell_97/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ø*1
shared_name" Adam/gru_97/gru_cell_97/kernel/v

4Adam/gru_97/gru_cell_97/kernel/v/Read/ReadVariableOpReadVariableOp Adam/gru_97/gru_cell_97/kernel/v*
_output_shapes
:	Ø*
dtype0
²
*Adam/gru_97/gru_cell_97/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ÈØ*;
shared_name,*Adam/gru_97/gru_cell_97/recurrent_kernel/v
«
>Adam/gru_97/gru_cell_97/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp*Adam/gru_97/gru_cell_97/recurrent_kernel/v* 
_output_shapes
:
ÈØ*
dtype0

Adam/gru_97/gru_cell_97/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:Ø*/
shared_name Adam/gru_97/gru_cell_97/bias/v

2Adam/gru_97/gru_cell_97/bias/v/Read/ReadVariableOpReadVariableOpAdam/gru_97/gru_cell_97/bias/v*
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
VARIABLE_VALUEdense_194/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_194/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_195/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_195/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEgru_97/gru_cell_97/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUE#gru_97/gru_cell_97/recurrent_kernel0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUEgru_97/gru_cell_97/bias0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_194/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_194/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_195/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_195/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/gru_97/gru_cell_97/kernel/mLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE*Adam/gru_97/gru_cell_97/recurrent_kernel/mLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/gru_97/gru_cell_97/bias/mLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_194/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_194/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_195/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_195/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/gru_97/gru_cell_97/kernel/vLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE*Adam/gru_97/gru_cell_97/recurrent_kernel/vLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/gru_97/gru_cell_97/bias/vLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_gru_97_inputPlaceholder*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0* 
shape:ÿÿÿÿÿÿÿÿÿ
ã
StatefulPartitionedCallStatefulPartitionedCallserving_default_gru_97_inputgru_97/gru_cell_97/kernelgru_97/gru_cell_97/bias#gru_97/gru_cell_97/recurrent_kerneldense_194/kerneldense_194/biasdense_195/kerneldense_195/bias*
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
%__inference_signature_wrapper_4738400
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ô
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_194/kernel/Read/ReadVariableOp"dense_194/bias/Read/ReadVariableOp$dense_195/kernel/Read/ReadVariableOp"dense_195/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp-gru_97/gru_cell_97/kernel/Read/ReadVariableOp7gru_97/gru_cell_97/recurrent_kernel/Read/ReadVariableOp+gru_97/gru_cell_97/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_194/kernel/m/Read/ReadVariableOp)Adam/dense_194/bias/m/Read/ReadVariableOp+Adam/dense_195/kernel/m/Read/ReadVariableOp)Adam/dense_195/bias/m/Read/ReadVariableOp4Adam/gru_97/gru_cell_97/kernel/m/Read/ReadVariableOp>Adam/gru_97/gru_cell_97/recurrent_kernel/m/Read/ReadVariableOp2Adam/gru_97/gru_cell_97/bias/m/Read/ReadVariableOp+Adam/dense_194/kernel/v/Read/ReadVariableOp)Adam/dense_194/bias/v/Read/ReadVariableOp+Adam/dense_195/kernel/v/Read/ReadVariableOp)Adam/dense_195/bias/v/Read/ReadVariableOp4Adam/gru_97/gru_cell_97/kernel/v/Read/ReadVariableOp>Adam/gru_97/gru_cell_97/recurrent_kernel/v/Read/ReadVariableOp2Adam/gru_97/gru_cell_97/bias/v/Read/ReadVariableOpConst*)
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
 __inference__traced_save_4739800
¿
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_194/kerneldense_194/biasdense_195/kerneldense_195/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rategru_97/gru_cell_97/kernel#gru_97/gru_cell_97/recurrent_kernelgru_97/gru_cell_97/biastotalcountAdam/dense_194/kernel/mAdam/dense_194/bias/mAdam/dense_195/kernel/mAdam/dense_195/bias/m Adam/gru_97/gru_cell_97/kernel/m*Adam/gru_97/gru_cell_97/recurrent_kernel/mAdam/gru_97/gru_cell_97/bias/mAdam/dense_194/kernel/vAdam/dense_194/bias/vAdam/dense_195/kernel/vAdam/dense_195/bias/v Adam/gru_97/gru_cell_97/kernel/v*Adam/gru_97/gru_cell_97/recurrent_kernel/vAdam/gru_97/gru_cell_97/bias/v*(
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
#__inference__traced_restore_4739894»ú
è
¦
%__inference_signature_wrapper_4738400
gru_97_input
unknown:	Ø
	unknown_0:	Ø
	unknown_1:
ÈØ
	unknown_2:	Èd
	unknown_3:d
	unknown_4:d
	unknown_5:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallgru_97_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
"__inference__wrapped_model_47372082
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
_user_specified_namegru_97_input

Ë
J__inference_sequential_97_layer_call_and_return_conditional_losses_4738373
gru_97_input!
gru_97_4738355:	Ø
gru_97_4738357:	Ø"
gru_97_4738359:
ÈØ$
dense_194_4738362:	Èd
dense_194_4738364:d#
dense_195_4738367:d
dense_195_4738369:
identity¢!dense_194/StatefulPartitionedCall¢!dense_195/StatefulPartitionedCall¢gru_97/StatefulPartitionedCall¦
gru_97/StatefulPartitionedCallStatefulPartitionedCallgru_97_inputgru_97_4738355gru_97_4738357gru_97_4738359*
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
C__inference_gru_97_layer_call_and_return_conditional_losses_47382442 
gru_97/StatefulPartitionedCall½
!dense_194/StatefulPartitionedCallStatefulPartitionedCall'gru_97/StatefulPartitionedCall:output:0dense_194_4738362dense_194_4738364*
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
F__inference_dense_194_layer_call_and_return_conditional_losses_47380002#
!dense_194/StatefulPartitionedCallÀ
!dense_195/StatefulPartitionedCallStatefulPartitionedCall*dense_194/StatefulPartitionedCall:output:0dense_195_4738367dense_195_4738369*
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
F__inference_dense_195_layer_call_and_return_conditional_losses_47380162#
!dense_195/StatefulPartitionedCallç
IdentityIdentity*dense_195/StatefulPartitionedCall:output:0"^dense_194/StatefulPartitionedCall"^dense_195/StatefulPartitionedCall^gru_97/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2F
!dense_194/StatefulPartitionedCall!dense_194/StatefulPartitionedCall2F
!dense_195/StatefulPartitionedCall!dense_195/StatefulPartitionedCall2@
gru_97/StatefulPartitionedCallgru_97/StatefulPartitionedCall:Y U
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&
_user_specified_namegru_97_input
ùW
¥
while_body_4739096
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_gru_cell_97_matmul_readvariableop_resource_0:	ØB
3while_gru_cell_97_biasadd_readvariableop_resource_0:	Ø?
+while_gru_cell_97_readvariableop_resource_0:
ÈØ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_gru_cell_97_matmul_readvariableop_resource:	Ø@
1while_gru_cell_97_biasadd_readvariableop_resource:	Ø=
)while_gru_cell_97_readvariableop_resource:
ÈØ¢(while/gru_cell_97/BiasAdd/ReadVariableOp¢'while/gru_cell_97/MatMul/ReadVariableOp¢ while/gru_cell_97/ReadVariableOp¢"while/gru_cell_97/ReadVariableOp_1Ã
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
'while/gru_cell_97/MatMul/ReadVariableOpReadVariableOp2while_gru_cell_97_matmul_readvariableop_resource_0*
_output_shapes
:	Ø*
dtype02)
'while/gru_cell_97/MatMul/ReadVariableOpÔ
while/gru_cell_97/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/gru_cell_97/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
while/gru_cell_97/MatMulÅ
(while/gru_cell_97/BiasAdd/ReadVariableOpReadVariableOp3while_gru_cell_97_biasadd_readvariableop_resource_0*
_output_shapes	
:Ø*
dtype02*
(while/gru_cell_97/BiasAdd/ReadVariableOpÊ
while/gru_cell_97/BiasAddBiasAdd"while/gru_cell_97/MatMul:product:00while/gru_cell_97/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
while/gru_cell_97/BiasAdd
!while/gru_cell_97/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2#
!while/gru_cell_97/split/split_dim÷
while/gru_cell_97/splitSplit*while/gru_cell_97/split/split_dim:output:0"while/gru_cell_97/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
while/gru_cell_97/split²
 while/gru_cell_97/ReadVariableOpReadVariableOp+while_gru_cell_97_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02"
 while/gru_cell_97/ReadVariableOp
%while/gru_cell_97/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/gru_cell_97/strided_slice/stack£
'while/gru_cell_97/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/gru_cell_97/strided_slice/stack_1£
'while/gru_cell_97/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/gru_cell_97/strided_slice/stack_2ê
while/gru_cell_97/strided_sliceStridedSlice(while/gru_cell_97/ReadVariableOp:value:0.while/gru_cell_97/strided_slice/stack:output:00while/gru_cell_97/strided_slice/stack_1:output:00while/gru_cell_97/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2!
while/gru_cell_97/strided_slice´
while/gru_cell_97/MatMul_1MatMulwhile_placeholder_2(while/gru_cell_97/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_97/MatMul_1
while/gru_cell_97/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2
while/gru_cell_97/Const
#while/gru_cell_97/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2%
#while/gru_cell_97/split_1/split_dim«
while/gru_cell_97/split_1SplitV$while/gru_cell_97/MatMul_1:product:0 while/gru_cell_97/Const:output:0,while/gru_cell_97/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2
while/gru_cell_97/split_1°
while/gru_cell_97/addAddV2 while/gru_cell_97/split:output:0"while/gru_cell_97/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_97/add
while/gru_cell_97/SigmoidSigmoidwhile/gru_cell_97/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_97/Sigmoid´
while/gru_cell_97/add_1AddV2 while/gru_cell_97/split:output:1"while/gru_cell_97/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_97/add_1
while/gru_cell_97/Sigmoid_1Sigmoidwhile/gru_cell_97/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_97/Sigmoid_1
while/gru_cell_97/mulMulwhile/gru_cell_97/Sigmoid_1:y:0while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_97/mul¶
"while/gru_cell_97/ReadVariableOp_1ReadVariableOp+while_gru_cell_97_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02$
"while/gru_cell_97/ReadVariableOp_1£
'while/gru_cell_97/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2)
'while/gru_cell_97/strided_slice_1/stack§
)while/gru_cell_97/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/gru_cell_97/strided_slice_1/stack_1§
)while/gru_cell_97/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/gru_cell_97/strided_slice_1/stack_2ö
!while/gru_cell_97/strided_slice_1StridedSlice*while/gru_cell_97/ReadVariableOp_1:value:00while/gru_cell_97/strided_slice_1/stack:output:02while/gru_cell_97/strided_slice_1/stack_1:output:02while/gru_cell_97/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2#
!while/gru_cell_97/strided_slice_1¼
while/gru_cell_97/MatMul_2MatMulwhile/gru_cell_97/mul:z:0*while/gru_cell_97/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_97/MatMul_2¶
while/gru_cell_97/add_2AddV2 while/gru_cell_97/split:output:2$while/gru_cell_97/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_97/add_2
while/gru_cell_97/ReluReluwhile/gru_cell_97/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_97/Relu 
while/gru_cell_97/mul_1Mulwhile/gru_cell_97/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_97/mul_1w
while/gru_cell_97/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
while/gru_cell_97/sub/x©
while/gru_cell_97/subSub while/gru_cell_97/sub/x:output:0while/gru_cell_97/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_97/sub­
while/gru_cell_97/mul_2Mulwhile/gru_cell_97/sub:z:0$while/gru_cell_97/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_97/mul_2¨
while/gru_cell_97/add_3AddV2while/gru_cell_97/mul_1:z:0while/gru_cell_97/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_97/add_3ß
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_97/add_3:z:0*
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
while/IdentityIdentitywhile/add_1:z:0)^while/gru_cell_97/BiasAdd/ReadVariableOp(^while/gru_cell_97/MatMul/ReadVariableOp!^while/gru_cell_97/ReadVariableOp#^while/gru_cell_97/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations)^while/gru_cell_97/BiasAdd/ReadVariableOp(^while/gru_cell_97/MatMul/ReadVariableOp!^while/gru_cell_97/ReadVariableOp#^while/gru_cell_97/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_1ý
while/Identity_2Identitywhile/add:z:0)^while/gru_cell_97/BiasAdd/ReadVariableOp(^while/gru_cell_97/MatMul/ReadVariableOp!^while/gru_cell_97/ReadVariableOp#^while/gru_cell_97/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_2ª
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/gru_cell_97/BiasAdd/ReadVariableOp(^while/gru_cell_97/MatMul/ReadVariableOp!^while/gru_cell_97/ReadVariableOp#^while/gru_cell_97/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/gru_cell_97/add_3:z:0)^while/gru_cell_97/BiasAdd/ReadVariableOp(^while/gru_cell_97/MatMul/ReadVariableOp!^while/gru_cell_97/ReadVariableOp#^while/gru_cell_97/ReadVariableOp_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_4"h
1while_gru_cell_97_biasadd_readvariableop_resource3while_gru_cell_97_biasadd_readvariableop_resource_0"f
0while_gru_cell_97_matmul_readvariableop_resource2while_gru_cell_97_matmul_readvariableop_resource_0"X
)while_gru_cell_97_readvariableop_resource+while_gru_cell_97_readvariableop_resource_0")
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
(while/gru_cell_97/BiasAdd/ReadVariableOp(while/gru_cell_97/BiasAdd/ReadVariableOp2R
'while/gru_cell_97/MatMul/ReadVariableOp'while/gru_cell_97/MatMul/ReadVariableOp2D
 while/gru_cell_97/ReadVariableOp while/gru_cell_97/ReadVariableOp2H
"while/gru_cell_97/ReadVariableOp_1"while/gru_cell_97/ReadVariableOp_1: 
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
+__inference_dense_194_layer_call_fn_4739543

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
F__inference_dense_194_layer_call_and_return_conditional_losses_47380002
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
i
¥
C__inference_gru_97_layer_call_and_return_conditional_losses_4739192
inputs_0=
*gru_cell_97_matmul_readvariableop_resource:	Ø:
+gru_cell_97_biasadd_readvariableop_resource:	Ø7
#gru_cell_97_readvariableop_resource:
ÈØ
identity¢"gru_cell_97/BiasAdd/ReadVariableOp¢!gru_cell_97/MatMul/ReadVariableOp¢gru_cell_97/ReadVariableOp¢gru_cell_97/ReadVariableOp_1¢whileF
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
!gru_cell_97/MatMul/ReadVariableOpReadVariableOp*gru_cell_97_matmul_readvariableop_resource*
_output_shapes
:	Ø*
dtype02#
!gru_cell_97/MatMul/ReadVariableOpª
gru_cell_97/MatMulMatMulstrided_slice_2:output:0)gru_cell_97/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_cell_97/MatMul±
"gru_cell_97/BiasAdd/ReadVariableOpReadVariableOp+gru_cell_97_biasadd_readvariableop_resource*
_output_shapes	
:Ø*
dtype02$
"gru_cell_97/BiasAdd/ReadVariableOp²
gru_cell_97/BiasAddBiasAddgru_cell_97/MatMul:product:0*gru_cell_97/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_cell_97/BiasAdd
gru_cell_97/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
gru_cell_97/split/split_dimß
gru_cell_97/splitSplit$gru_cell_97/split/split_dim:output:0gru_cell_97/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
gru_cell_97/split
gru_cell_97/ReadVariableOpReadVariableOp#gru_cell_97_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02
gru_cell_97/ReadVariableOp
gru_cell_97/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
gru_cell_97/strided_slice/stack
!gru_cell_97/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2#
!gru_cell_97/strided_slice/stack_1
!gru_cell_97/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!gru_cell_97/strided_slice/stack_2Æ
gru_cell_97/strided_sliceStridedSlice"gru_cell_97/ReadVariableOp:value:0(gru_cell_97/strided_slice/stack:output:0*gru_cell_97/strided_slice/stack_1:output:0*gru_cell_97/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2
gru_cell_97/strided_slice
gru_cell_97/MatMul_1MatMulzeros:output:0"gru_cell_97/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_97/MatMul_1{
gru_cell_97/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2
gru_cell_97/Const
gru_cell_97/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
gru_cell_97/split_1/split_dim
gru_cell_97/split_1SplitVgru_cell_97/MatMul_1:product:0gru_cell_97/Const:output:0&gru_cell_97/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2
gru_cell_97/split_1
gru_cell_97/addAddV2gru_cell_97/split:output:0gru_cell_97/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_97/add}
gru_cell_97/SigmoidSigmoidgru_cell_97/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_97/Sigmoid
gru_cell_97/add_1AddV2gru_cell_97/split:output:1gru_cell_97/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_97/add_1
gru_cell_97/Sigmoid_1Sigmoidgru_cell_97/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_97/Sigmoid_1
gru_cell_97/mulMulgru_cell_97/Sigmoid_1:y:0zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_97/mul¢
gru_cell_97/ReadVariableOp_1ReadVariableOp#gru_cell_97_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02
gru_cell_97/ReadVariableOp_1
!gru_cell_97/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2#
!gru_cell_97/strided_slice_1/stack
#gru_cell_97/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#gru_cell_97/strided_slice_1/stack_1
#gru_cell_97/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gru_cell_97/strided_slice_1/stack_2Ò
gru_cell_97/strided_slice_1StridedSlice$gru_cell_97/ReadVariableOp_1:value:0*gru_cell_97/strided_slice_1/stack:output:0,gru_cell_97/strided_slice_1/stack_1:output:0,gru_cell_97/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2
gru_cell_97/strided_slice_1¤
gru_cell_97/MatMul_2MatMulgru_cell_97/mul:z:0$gru_cell_97/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_97/MatMul_2
gru_cell_97/add_2AddV2gru_cell_97/split:output:2gru_cell_97/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_97/add_2v
gru_cell_97/ReluRelugru_cell_97/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_97/Relu
gru_cell_97/mul_1Mulgru_cell_97/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_97/mul_1k
gru_cell_97/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_97/sub/x
gru_cell_97/subSubgru_cell_97/sub/x:output:0gru_cell_97/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_97/sub
gru_cell_97/mul_2Mulgru_cell_97/sub:z:0gru_cell_97/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_97/mul_2
gru_cell_97/add_3AddV2gru_cell_97/mul_1:z:0gru_cell_97/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_97/add_3
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*gru_cell_97_matmul_readvariableop_resource+gru_cell_97_biasadd_readvariableop_resource#gru_cell_97_readvariableop_resource*
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
while_body_4739096*
condR
while_cond_4739095*9
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
IdentityIdentitystrided_slice_3:output:0#^gru_cell_97/BiasAdd/ReadVariableOp"^gru_cell_97/MatMul/ReadVariableOp^gru_cell_97/ReadVariableOp^gru_cell_97/ReadVariableOp_1^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2H
"gru_cell_97/BiasAdd/ReadVariableOp"gru_cell_97/BiasAdd/ReadVariableOp2F
!gru_cell_97/MatMul/ReadVariableOp!gru_cell_97/MatMul/ReadVariableOp28
gru_cell_97/ReadVariableOpgru_cell_97/ReadVariableOp2<
gru_cell_97/ReadVariableOp_1gru_cell_97/ReadVariableOp_12
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0

¯
while_cond_4739437
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_4739437___redundant_placeholder05
1while_while_cond_4739437___redundant_placeholder15
1while_while_cond_4739437___redundant_placeholder25
1while_while_cond_4739437___redundant_placeholder3
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
Òh
£
C__inference_gru_97_layer_call_and_return_conditional_losses_4739363

inputs=
*gru_cell_97_matmul_readvariableop_resource:	Ø:
+gru_cell_97_biasadd_readvariableop_resource:	Ø7
#gru_cell_97_readvariableop_resource:
ÈØ
identity¢"gru_cell_97/BiasAdd/ReadVariableOp¢!gru_cell_97/MatMul/ReadVariableOp¢gru_cell_97/ReadVariableOp¢gru_cell_97/ReadVariableOp_1¢whileD
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
!gru_cell_97/MatMul/ReadVariableOpReadVariableOp*gru_cell_97_matmul_readvariableop_resource*
_output_shapes
:	Ø*
dtype02#
!gru_cell_97/MatMul/ReadVariableOpª
gru_cell_97/MatMulMatMulstrided_slice_2:output:0)gru_cell_97/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_cell_97/MatMul±
"gru_cell_97/BiasAdd/ReadVariableOpReadVariableOp+gru_cell_97_biasadd_readvariableop_resource*
_output_shapes	
:Ø*
dtype02$
"gru_cell_97/BiasAdd/ReadVariableOp²
gru_cell_97/BiasAddBiasAddgru_cell_97/MatMul:product:0*gru_cell_97/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_cell_97/BiasAdd
gru_cell_97/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
gru_cell_97/split/split_dimß
gru_cell_97/splitSplit$gru_cell_97/split/split_dim:output:0gru_cell_97/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
gru_cell_97/split
gru_cell_97/ReadVariableOpReadVariableOp#gru_cell_97_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02
gru_cell_97/ReadVariableOp
gru_cell_97/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
gru_cell_97/strided_slice/stack
!gru_cell_97/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2#
!gru_cell_97/strided_slice/stack_1
!gru_cell_97/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!gru_cell_97/strided_slice/stack_2Æ
gru_cell_97/strided_sliceStridedSlice"gru_cell_97/ReadVariableOp:value:0(gru_cell_97/strided_slice/stack:output:0*gru_cell_97/strided_slice/stack_1:output:0*gru_cell_97/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2
gru_cell_97/strided_slice
gru_cell_97/MatMul_1MatMulzeros:output:0"gru_cell_97/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_97/MatMul_1{
gru_cell_97/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2
gru_cell_97/Const
gru_cell_97/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
gru_cell_97/split_1/split_dim
gru_cell_97/split_1SplitVgru_cell_97/MatMul_1:product:0gru_cell_97/Const:output:0&gru_cell_97/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2
gru_cell_97/split_1
gru_cell_97/addAddV2gru_cell_97/split:output:0gru_cell_97/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_97/add}
gru_cell_97/SigmoidSigmoidgru_cell_97/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_97/Sigmoid
gru_cell_97/add_1AddV2gru_cell_97/split:output:1gru_cell_97/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_97/add_1
gru_cell_97/Sigmoid_1Sigmoidgru_cell_97/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_97/Sigmoid_1
gru_cell_97/mulMulgru_cell_97/Sigmoid_1:y:0zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_97/mul¢
gru_cell_97/ReadVariableOp_1ReadVariableOp#gru_cell_97_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02
gru_cell_97/ReadVariableOp_1
!gru_cell_97/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2#
!gru_cell_97/strided_slice_1/stack
#gru_cell_97/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#gru_cell_97/strided_slice_1/stack_1
#gru_cell_97/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gru_cell_97/strided_slice_1/stack_2Ò
gru_cell_97/strided_slice_1StridedSlice$gru_cell_97/ReadVariableOp_1:value:0*gru_cell_97/strided_slice_1/stack:output:0,gru_cell_97/strided_slice_1/stack_1:output:0,gru_cell_97/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2
gru_cell_97/strided_slice_1¤
gru_cell_97/MatMul_2MatMulgru_cell_97/mul:z:0$gru_cell_97/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_97/MatMul_2
gru_cell_97/add_2AddV2gru_cell_97/split:output:2gru_cell_97/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_97/add_2v
gru_cell_97/ReluRelugru_cell_97/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_97/Relu
gru_cell_97/mul_1Mulgru_cell_97/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_97/mul_1k
gru_cell_97/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_97/sub/x
gru_cell_97/subSubgru_cell_97/sub/x:output:0gru_cell_97/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_97/sub
gru_cell_97/mul_2Mulgru_cell_97/sub:z:0gru_cell_97/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_97/mul_2
gru_cell_97/add_3AddV2gru_cell_97/mul_1:z:0gru_cell_97/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_97/add_3
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*gru_cell_97_matmul_readvariableop_resource+gru_cell_97_biasadd_readvariableop_resource#gru_cell_97_readvariableop_resource*
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
while_body_4739267*
condR
while_cond_4739266*9
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
IdentityIdentitystrided_slice_3:output:0#^gru_cell_97/BiasAdd/ReadVariableOp"^gru_cell_97/MatMul/ReadVariableOp^gru_cell_97/ReadVariableOp^gru_cell_97/ReadVariableOp_1^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2H
"gru_cell_97/BiasAdd/ReadVariableOp"gru_cell_97/BiasAdd/ReadVariableOp2F
!gru_cell_97/MatMul/ReadVariableOp!gru_cell_97/MatMul/ReadVariableOp28
gru_cell_97/ReadVariableOpgru_cell_97/ReadVariableOp2<
gru_cell_97/ReadVariableOp_1gru_cell_97/ReadVariableOp_12
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ùW
¥
while_body_4739267
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_gru_cell_97_matmul_readvariableop_resource_0:	ØB
3while_gru_cell_97_biasadd_readvariableop_resource_0:	Ø?
+while_gru_cell_97_readvariableop_resource_0:
ÈØ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_gru_cell_97_matmul_readvariableop_resource:	Ø@
1while_gru_cell_97_biasadd_readvariableop_resource:	Ø=
)while_gru_cell_97_readvariableop_resource:
ÈØ¢(while/gru_cell_97/BiasAdd/ReadVariableOp¢'while/gru_cell_97/MatMul/ReadVariableOp¢ while/gru_cell_97/ReadVariableOp¢"while/gru_cell_97/ReadVariableOp_1Ã
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
'while/gru_cell_97/MatMul/ReadVariableOpReadVariableOp2while_gru_cell_97_matmul_readvariableop_resource_0*
_output_shapes
:	Ø*
dtype02)
'while/gru_cell_97/MatMul/ReadVariableOpÔ
while/gru_cell_97/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/gru_cell_97/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
while/gru_cell_97/MatMulÅ
(while/gru_cell_97/BiasAdd/ReadVariableOpReadVariableOp3while_gru_cell_97_biasadd_readvariableop_resource_0*
_output_shapes	
:Ø*
dtype02*
(while/gru_cell_97/BiasAdd/ReadVariableOpÊ
while/gru_cell_97/BiasAddBiasAdd"while/gru_cell_97/MatMul:product:00while/gru_cell_97/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
while/gru_cell_97/BiasAdd
!while/gru_cell_97/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2#
!while/gru_cell_97/split/split_dim÷
while/gru_cell_97/splitSplit*while/gru_cell_97/split/split_dim:output:0"while/gru_cell_97/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
while/gru_cell_97/split²
 while/gru_cell_97/ReadVariableOpReadVariableOp+while_gru_cell_97_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02"
 while/gru_cell_97/ReadVariableOp
%while/gru_cell_97/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/gru_cell_97/strided_slice/stack£
'while/gru_cell_97/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/gru_cell_97/strided_slice/stack_1£
'while/gru_cell_97/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/gru_cell_97/strided_slice/stack_2ê
while/gru_cell_97/strided_sliceStridedSlice(while/gru_cell_97/ReadVariableOp:value:0.while/gru_cell_97/strided_slice/stack:output:00while/gru_cell_97/strided_slice/stack_1:output:00while/gru_cell_97/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2!
while/gru_cell_97/strided_slice´
while/gru_cell_97/MatMul_1MatMulwhile_placeholder_2(while/gru_cell_97/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_97/MatMul_1
while/gru_cell_97/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2
while/gru_cell_97/Const
#while/gru_cell_97/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2%
#while/gru_cell_97/split_1/split_dim«
while/gru_cell_97/split_1SplitV$while/gru_cell_97/MatMul_1:product:0 while/gru_cell_97/Const:output:0,while/gru_cell_97/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2
while/gru_cell_97/split_1°
while/gru_cell_97/addAddV2 while/gru_cell_97/split:output:0"while/gru_cell_97/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_97/add
while/gru_cell_97/SigmoidSigmoidwhile/gru_cell_97/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_97/Sigmoid´
while/gru_cell_97/add_1AddV2 while/gru_cell_97/split:output:1"while/gru_cell_97/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_97/add_1
while/gru_cell_97/Sigmoid_1Sigmoidwhile/gru_cell_97/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_97/Sigmoid_1
while/gru_cell_97/mulMulwhile/gru_cell_97/Sigmoid_1:y:0while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_97/mul¶
"while/gru_cell_97/ReadVariableOp_1ReadVariableOp+while_gru_cell_97_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02$
"while/gru_cell_97/ReadVariableOp_1£
'while/gru_cell_97/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2)
'while/gru_cell_97/strided_slice_1/stack§
)while/gru_cell_97/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/gru_cell_97/strided_slice_1/stack_1§
)while/gru_cell_97/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/gru_cell_97/strided_slice_1/stack_2ö
!while/gru_cell_97/strided_slice_1StridedSlice*while/gru_cell_97/ReadVariableOp_1:value:00while/gru_cell_97/strided_slice_1/stack:output:02while/gru_cell_97/strided_slice_1/stack_1:output:02while/gru_cell_97/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2#
!while/gru_cell_97/strided_slice_1¼
while/gru_cell_97/MatMul_2MatMulwhile/gru_cell_97/mul:z:0*while/gru_cell_97/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_97/MatMul_2¶
while/gru_cell_97/add_2AddV2 while/gru_cell_97/split:output:2$while/gru_cell_97/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_97/add_2
while/gru_cell_97/ReluReluwhile/gru_cell_97/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_97/Relu 
while/gru_cell_97/mul_1Mulwhile/gru_cell_97/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_97/mul_1w
while/gru_cell_97/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
while/gru_cell_97/sub/x©
while/gru_cell_97/subSub while/gru_cell_97/sub/x:output:0while/gru_cell_97/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_97/sub­
while/gru_cell_97/mul_2Mulwhile/gru_cell_97/sub:z:0$while/gru_cell_97/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_97/mul_2¨
while/gru_cell_97/add_3AddV2while/gru_cell_97/mul_1:z:0while/gru_cell_97/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_97/add_3ß
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_97/add_3:z:0*
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
while/IdentityIdentitywhile/add_1:z:0)^while/gru_cell_97/BiasAdd/ReadVariableOp(^while/gru_cell_97/MatMul/ReadVariableOp!^while/gru_cell_97/ReadVariableOp#^while/gru_cell_97/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations)^while/gru_cell_97/BiasAdd/ReadVariableOp(^while/gru_cell_97/MatMul/ReadVariableOp!^while/gru_cell_97/ReadVariableOp#^while/gru_cell_97/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_1ý
while/Identity_2Identitywhile/add:z:0)^while/gru_cell_97/BiasAdd/ReadVariableOp(^while/gru_cell_97/MatMul/ReadVariableOp!^while/gru_cell_97/ReadVariableOp#^while/gru_cell_97/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_2ª
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/gru_cell_97/BiasAdd/ReadVariableOp(^while/gru_cell_97/MatMul/ReadVariableOp!^while/gru_cell_97/ReadVariableOp#^while/gru_cell_97/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/gru_cell_97/add_3:z:0)^while/gru_cell_97/BiasAdd/ReadVariableOp(^while/gru_cell_97/MatMul/ReadVariableOp!^while/gru_cell_97/ReadVariableOp#^while/gru_cell_97/ReadVariableOp_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_4"h
1while_gru_cell_97_biasadd_readvariableop_resource3while_gru_cell_97_biasadd_readvariableop_resource_0"f
0while_gru_cell_97_matmul_readvariableop_resource2while_gru_cell_97_matmul_readvariableop_resource_0"X
)while_gru_cell_97_readvariableop_resource+while_gru_cell_97_readvariableop_resource_0")
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
(while/gru_cell_97/BiasAdd/ReadVariableOp(while/gru_cell_97/BiasAdd/ReadVariableOp2R
'while/gru_cell_97/MatMul/ReadVariableOp'while/gru_cell_97/MatMul/ReadVariableOp2D
 while/gru_cell_97/ReadVariableOp while/gru_cell_97/ReadVariableOp2H
"while/gru_cell_97/ReadVariableOp_1"while/gru_cell_97/ReadVariableOp_1: 
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
/__inference_sequential_97_layer_call_fn_4738331
gru_97_input
unknown:	Ø
	unknown_0:	Ø
	unknown_1:
ÈØ
	unknown_2:	Èd
	unknown_3:d
	unknown_4:d
	unknown_5:
identity¢StatefulPartitionedCallÁ
StatefulPartitionedCallStatefulPartitionedCallgru_97_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
J__inference_sequential_97_layer_call_and_return_conditional_losses_47382952
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
_user_specified_namegru_97_input
Ý*
ê
H__inference_gru_cell_97_layer_call_and_return_conditional_losses_4739693

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
éd
þ	
gru_97_while_body_4738513*
&gru_97_while_gru_97_while_loop_counter0
,gru_97_while_gru_97_while_maximum_iterations
gru_97_while_placeholder
gru_97_while_placeholder_1
gru_97_while_placeholder_2)
%gru_97_while_gru_97_strided_slice_1_0e
agru_97_while_tensorarrayv2read_tensorlistgetitem_gru_97_tensorarrayunstack_tensorlistfromtensor_0L
9gru_97_while_gru_cell_97_matmul_readvariableop_resource_0:	ØI
:gru_97_while_gru_cell_97_biasadd_readvariableop_resource_0:	ØF
2gru_97_while_gru_cell_97_readvariableop_resource_0:
ÈØ
gru_97_while_identity
gru_97_while_identity_1
gru_97_while_identity_2
gru_97_while_identity_3
gru_97_while_identity_4'
#gru_97_while_gru_97_strided_slice_1c
_gru_97_while_tensorarrayv2read_tensorlistgetitem_gru_97_tensorarrayunstack_tensorlistfromtensorJ
7gru_97_while_gru_cell_97_matmul_readvariableop_resource:	ØG
8gru_97_while_gru_cell_97_biasadd_readvariableop_resource:	ØD
0gru_97_while_gru_cell_97_readvariableop_resource:
ÈØ¢/gru_97/while/gru_cell_97/BiasAdd/ReadVariableOp¢.gru_97/while/gru_cell_97/MatMul/ReadVariableOp¢'gru_97/while/gru_cell_97/ReadVariableOp¢)gru_97/while/gru_cell_97/ReadVariableOp_1Ñ
>gru_97/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2@
>gru_97/while/TensorArrayV2Read/TensorListGetItem/element_shapeý
0gru_97/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemagru_97_while_tensorarrayv2read_tensorlistgetitem_gru_97_tensorarrayunstack_tensorlistfromtensor_0gru_97_while_placeholderGgru_97/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype022
0gru_97/while/TensorArrayV2Read/TensorListGetItemÛ
.gru_97/while/gru_cell_97/MatMul/ReadVariableOpReadVariableOp9gru_97_while_gru_cell_97_matmul_readvariableop_resource_0*
_output_shapes
:	Ø*
dtype020
.gru_97/while/gru_cell_97/MatMul/ReadVariableOpð
gru_97/while/gru_cell_97/MatMulMatMul7gru_97/while/TensorArrayV2Read/TensorListGetItem:item:06gru_97/while/gru_cell_97/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2!
gru_97/while/gru_cell_97/MatMulÚ
/gru_97/while/gru_cell_97/BiasAdd/ReadVariableOpReadVariableOp:gru_97_while_gru_cell_97_biasadd_readvariableop_resource_0*
_output_shapes	
:Ø*
dtype021
/gru_97/while/gru_cell_97/BiasAdd/ReadVariableOpæ
 gru_97/while/gru_cell_97/BiasAddBiasAdd)gru_97/while/gru_cell_97/MatMul:product:07gru_97/while/gru_cell_97/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2"
 gru_97/while/gru_cell_97/BiasAdd
(gru_97/while/gru_cell_97/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2*
(gru_97/while/gru_cell_97/split/split_dim
gru_97/while/gru_cell_97/splitSplit1gru_97/while/gru_cell_97/split/split_dim:output:0)gru_97/while/gru_cell_97/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2 
gru_97/while/gru_cell_97/splitÇ
'gru_97/while/gru_cell_97/ReadVariableOpReadVariableOp2gru_97_while_gru_cell_97_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02)
'gru_97/while/gru_cell_97/ReadVariableOp­
,gru_97/while/gru_cell_97/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2.
,gru_97/while/gru_cell_97/strided_slice/stack±
.gru_97/while/gru_cell_97/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      20
.gru_97/while/gru_cell_97/strided_slice/stack_1±
.gru_97/while/gru_cell_97/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.gru_97/while/gru_cell_97/strided_slice/stack_2
&gru_97/while/gru_cell_97/strided_sliceStridedSlice/gru_97/while/gru_cell_97/ReadVariableOp:value:05gru_97/while/gru_cell_97/strided_slice/stack:output:07gru_97/while/gru_cell_97/strided_slice/stack_1:output:07gru_97/while/gru_cell_97/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2(
&gru_97/while/gru_cell_97/strided_sliceÐ
!gru_97/while/gru_cell_97/MatMul_1MatMulgru_97_while_placeholder_2/gru_97/while/gru_cell_97/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!gru_97/while/gru_cell_97/MatMul_1
gru_97/while/gru_cell_97/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2 
gru_97/while/gru_cell_97/Const£
*gru_97/while/gru_cell_97/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2,
*gru_97/while/gru_cell_97/split_1/split_dimÎ
 gru_97/while/gru_cell_97/split_1SplitV+gru_97/while/gru_cell_97/MatMul_1:product:0'gru_97/while/gru_cell_97/Const:output:03gru_97/while/gru_cell_97/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2"
 gru_97/while/gru_cell_97/split_1Ì
gru_97/while/gru_cell_97/addAddV2'gru_97/while/gru_cell_97/split:output:0)gru_97/while/gru_cell_97/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_97/while/gru_cell_97/add¤
 gru_97/while/gru_cell_97/SigmoidSigmoid gru_97/while/gru_cell_97/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2"
 gru_97/while/gru_cell_97/SigmoidÐ
gru_97/while/gru_cell_97/add_1AddV2'gru_97/while/gru_cell_97/split:output:1)gru_97/while/gru_cell_97/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2 
gru_97/while/gru_cell_97/add_1ª
"gru_97/while/gru_cell_97/Sigmoid_1Sigmoid"gru_97/while/gru_cell_97/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2$
"gru_97/while/gru_cell_97/Sigmoid_1º
gru_97/while/gru_cell_97/mulMul&gru_97/while/gru_cell_97/Sigmoid_1:y:0gru_97_while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_97/while/gru_cell_97/mulË
)gru_97/while/gru_cell_97/ReadVariableOp_1ReadVariableOp2gru_97_while_gru_cell_97_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02+
)gru_97/while/gru_cell_97/ReadVariableOp_1±
.gru_97/while/gru_cell_97/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      20
.gru_97/while/gru_cell_97/strided_slice_1/stackµ
0gru_97/while/gru_cell_97/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        22
0gru_97/while/gru_cell_97/strided_slice_1/stack_1µ
0gru_97/while/gru_cell_97/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0gru_97/while/gru_cell_97/strided_slice_1/stack_2 
(gru_97/while/gru_cell_97/strided_slice_1StridedSlice1gru_97/while/gru_cell_97/ReadVariableOp_1:value:07gru_97/while/gru_cell_97/strided_slice_1/stack:output:09gru_97/while/gru_cell_97/strided_slice_1/stack_1:output:09gru_97/while/gru_cell_97/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2*
(gru_97/while/gru_cell_97/strided_slice_1Ø
!gru_97/while/gru_cell_97/MatMul_2MatMul gru_97/while/gru_cell_97/mul:z:01gru_97/while/gru_cell_97/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2#
!gru_97/while/gru_cell_97/MatMul_2Ò
gru_97/while/gru_cell_97/add_2AddV2'gru_97/while/gru_cell_97/split:output:2+gru_97/while/gru_cell_97/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2 
gru_97/while/gru_cell_97/add_2
gru_97/while/gru_cell_97/ReluRelu"gru_97/while/gru_cell_97/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_97/while/gru_cell_97/Relu¼
gru_97/while/gru_cell_97/mul_1Mul$gru_97/while/gru_cell_97/Sigmoid:y:0gru_97_while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2 
gru_97/while/gru_cell_97/mul_1
gru_97/while/gru_cell_97/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2 
gru_97/while/gru_cell_97/sub/xÅ
gru_97/while/gru_cell_97/subSub'gru_97/while/gru_cell_97/sub/x:output:0$gru_97/while/gru_cell_97/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_97/while/gru_cell_97/subÉ
gru_97/while/gru_cell_97/mul_2Mul gru_97/while/gru_cell_97/sub:z:0+gru_97/while/gru_cell_97/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2 
gru_97/while/gru_cell_97/mul_2Ä
gru_97/while/gru_cell_97/add_3AddV2"gru_97/while/gru_cell_97/mul_1:z:0"gru_97/while/gru_cell_97/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2 
gru_97/while/gru_cell_97/add_3
1gru_97/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemgru_97_while_placeholder_1gru_97_while_placeholder"gru_97/while/gru_cell_97/add_3:z:0*
_output_shapes
: *
element_dtype023
1gru_97/while/TensorArrayV2Write/TensorListSetItemj
gru_97/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru_97/while/add/y
gru_97/while/addAddV2gru_97_while_placeholdergru_97/while/add/y:output:0*
T0*
_output_shapes
: 2
gru_97/while/addn
gru_97/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru_97/while/add_1/y
gru_97/while/add_1AddV2&gru_97_while_gru_97_while_loop_countergru_97/while/add_1/y:output:0*
T0*
_output_shapes
: 2
gru_97/while/add_1¬
gru_97/while/IdentityIdentitygru_97/while/add_1:z:00^gru_97/while/gru_cell_97/BiasAdd/ReadVariableOp/^gru_97/while/gru_cell_97/MatMul/ReadVariableOp(^gru_97/while/gru_cell_97/ReadVariableOp*^gru_97/while/gru_cell_97/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_97/while/IdentityÆ
gru_97/while/Identity_1Identity,gru_97_while_gru_97_while_maximum_iterations0^gru_97/while/gru_cell_97/BiasAdd/ReadVariableOp/^gru_97/while/gru_cell_97/MatMul/ReadVariableOp(^gru_97/while/gru_cell_97/ReadVariableOp*^gru_97/while/gru_cell_97/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_97/while/Identity_1®
gru_97/while/Identity_2Identitygru_97/while/add:z:00^gru_97/while/gru_cell_97/BiasAdd/ReadVariableOp/^gru_97/while/gru_cell_97/MatMul/ReadVariableOp(^gru_97/while/gru_cell_97/ReadVariableOp*^gru_97/while/gru_cell_97/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_97/while/Identity_2Û
gru_97/while/Identity_3IdentityAgru_97/while/TensorArrayV2Write/TensorListSetItem:output_handle:00^gru_97/while/gru_cell_97/BiasAdd/ReadVariableOp/^gru_97/while/gru_cell_97/MatMul/ReadVariableOp(^gru_97/while/gru_cell_97/ReadVariableOp*^gru_97/while/gru_cell_97/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_97/while/Identity_3Î
gru_97/while/Identity_4Identity"gru_97/while/gru_cell_97/add_3:z:00^gru_97/while/gru_cell_97/BiasAdd/ReadVariableOp/^gru_97/while/gru_cell_97/MatMul/ReadVariableOp(^gru_97/while/gru_cell_97/ReadVariableOp*^gru_97/while/gru_cell_97/ReadVariableOp_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_97/while/Identity_4"L
#gru_97_while_gru_97_strided_slice_1%gru_97_while_gru_97_strided_slice_1_0"v
8gru_97_while_gru_cell_97_biasadd_readvariableop_resource:gru_97_while_gru_cell_97_biasadd_readvariableop_resource_0"t
7gru_97_while_gru_cell_97_matmul_readvariableop_resource9gru_97_while_gru_cell_97_matmul_readvariableop_resource_0"f
0gru_97_while_gru_cell_97_readvariableop_resource2gru_97_while_gru_cell_97_readvariableop_resource_0"7
gru_97_while_identitygru_97/while/Identity:output:0";
gru_97_while_identity_1 gru_97/while/Identity_1:output:0";
gru_97_while_identity_2 gru_97/while/Identity_2:output:0";
gru_97_while_identity_3 gru_97/while/Identity_3:output:0";
gru_97_while_identity_4 gru_97/while/Identity_4:output:0"Ä
_gru_97_while_tensorarrayv2read_tensorlistgetitem_gru_97_tensorarrayunstack_tensorlistfromtensoragru_97_while_tensorarrayv2read_tensorlistgetitem_gru_97_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿÈ: : : : : 2b
/gru_97/while/gru_cell_97/BiasAdd/ReadVariableOp/gru_97/while/gru_cell_97/BiasAdd/ReadVariableOp2`
.gru_97/while/gru_cell_97/MatMul/ReadVariableOp.gru_97/while/gru_cell_97/MatMul/ReadVariableOp2R
'gru_97/while/gru_cell_97/ReadVariableOp'gru_97/while/gru_cell_97/ReadVariableOp2V
)gru_97/while/gru_cell_97/ReadVariableOp_1)gru_97/while/gru_cell_97/ReadVariableOp_1: 
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
Ì=

C__inference_gru_97_layer_call_and_return_conditional_losses_4737570

inputs&
gru_cell_97_4737494:	Ø"
gru_cell_97_4737496:	Ø'
gru_cell_97_4737498:
ÈØ
identity¢#gru_cell_97/StatefulPartitionedCall¢whileD
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
#gru_cell_97/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0gru_cell_97_4737494gru_cell_97_4737496gru_cell_97_4737498*
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
H__inference_gru_cell_97_layer_call_and_return_conditional_losses_47374392%
#gru_cell_97/StatefulPartitionedCall
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0gru_cell_97_4737494gru_cell_97_4737496gru_cell_97_4737498*
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
while_body_4737506*
condR
while_cond_4737505*9
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
IdentityIdentitystrided_slice_3:output:0$^gru_cell_97/StatefulPartitionedCall^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2J
#gru_cell_97/StatefulPartitionedCall#gru_cell_97/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
	
ª
/__inference_sequential_97_layer_call_fn_4738438

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
J__inference_sequential_97_layer_call_and_return_conditional_losses_47382952
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
while_body_4737302
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_gru_cell_97_4737324_0:	Ø*
while_gru_cell_97_4737326_0:	Ø/
while_gru_cell_97_4737328_0:
ÈØ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_gru_cell_97_4737324:	Ø(
while_gru_cell_97_4737326:	Ø-
while_gru_cell_97_4737328:
ÈØ¢)while/gru_cell_97/StatefulPartitionedCallÃ
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
)while/gru_cell_97/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_gru_cell_97_4737324_0while_gru_cell_97_4737326_0while_gru_cell_97_4737328_0*
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
H__inference_gru_cell_97_layer_call_and_return_conditional_losses_47372892+
)while/gru_cell_97/StatefulPartitionedCallö
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/gru_cell_97/StatefulPartitionedCall:output:0*
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
while/IdentityIdentitywhile/add_1:z:0*^while/gru_cell_97/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations*^while/gru_cell_97/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:0*^while/gru_cell_97/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2¹
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/gru_cell_97/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3Ã
while/Identity_4Identity2while/gru_cell_97/StatefulPartitionedCall:output:1*^while/gru_cell_97/StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_4"8
while_gru_cell_97_4737324while_gru_cell_97_4737324_0"8
while_gru_cell_97_4737326while_gru_cell_97_4737326_0"8
while_gru_cell_97_4737328while_gru_cell_97_4737328_0")
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
)while/gru_cell_97/StatefulPartitionedCall)while/gru_cell_97/StatefulPartitionedCall: 
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
´

Ù
-__inference_gru_cell_97_layer_call_fn_4739587

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
H__inference_gru_cell_97_layer_call_and_return_conditional_losses_47372892
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
ü"
¶
while_body_4737506
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_gru_cell_97_4737528_0:	Ø*
while_gru_cell_97_4737530_0:	Ø/
while_gru_cell_97_4737532_0:
ÈØ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_gru_cell_97_4737528:	Ø(
while_gru_cell_97_4737530:	Ø-
while_gru_cell_97_4737532:
ÈØ¢)while/gru_cell_97/StatefulPartitionedCallÃ
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
)while/gru_cell_97/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_gru_cell_97_4737528_0while_gru_cell_97_4737530_0while_gru_cell_97_4737532_0*
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
H__inference_gru_cell_97_layer_call_and_return_conditional_losses_47374392+
)while/gru_cell_97/StatefulPartitionedCallö
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/gru_cell_97/StatefulPartitionedCall:output:0*
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
while/IdentityIdentitywhile/add_1:z:0*^while/gru_cell_97/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations*^while/gru_cell_97/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:0*^while/gru_cell_97/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2¹
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/gru_cell_97/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3Ã
while/Identity_4Identity2while/gru_cell_97/StatefulPartitionedCall:output:1*^while/gru_cell_97/StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_4"8
while_gru_cell_97_4737528while_gru_cell_97_4737528_0"8
while_gru_cell_97_4737530while_gru_cell_97_4737530_0"8
while_gru_cell_97_4737532while_gru_cell_97_4737532_0")
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
)while/gru_cell_97/StatefulPartitionedCall)while/gru_cell_97/StatefulPartitionedCall: 
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
ùW
¥
while_body_4738148
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_gru_cell_97_matmul_readvariableop_resource_0:	ØB
3while_gru_cell_97_biasadd_readvariableop_resource_0:	Ø?
+while_gru_cell_97_readvariableop_resource_0:
ÈØ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_gru_cell_97_matmul_readvariableop_resource:	Ø@
1while_gru_cell_97_biasadd_readvariableop_resource:	Ø=
)while_gru_cell_97_readvariableop_resource:
ÈØ¢(while/gru_cell_97/BiasAdd/ReadVariableOp¢'while/gru_cell_97/MatMul/ReadVariableOp¢ while/gru_cell_97/ReadVariableOp¢"while/gru_cell_97/ReadVariableOp_1Ã
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
'while/gru_cell_97/MatMul/ReadVariableOpReadVariableOp2while_gru_cell_97_matmul_readvariableop_resource_0*
_output_shapes
:	Ø*
dtype02)
'while/gru_cell_97/MatMul/ReadVariableOpÔ
while/gru_cell_97/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/gru_cell_97/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
while/gru_cell_97/MatMulÅ
(while/gru_cell_97/BiasAdd/ReadVariableOpReadVariableOp3while_gru_cell_97_biasadd_readvariableop_resource_0*
_output_shapes	
:Ø*
dtype02*
(while/gru_cell_97/BiasAdd/ReadVariableOpÊ
while/gru_cell_97/BiasAddBiasAdd"while/gru_cell_97/MatMul:product:00while/gru_cell_97/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
while/gru_cell_97/BiasAdd
!while/gru_cell_97/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2#
!while/gru_cell_97/split/split_dim÷
while/gru_cell_97/splitSplit*while/gru_cell_97/split/split_dim:output:0"while/gru_cell_97/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
while/gru_cell_97/split²
 while/gru_cell_97/ReadVariableOpReadVariableOp+while_gru_cell_97_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02"
 while/gru_cell_97/ReadVariableOp
%while/gru_cell_97/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/gru_cell_97/strided_slice/stack£
'while/gru_cell_97/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/gru_cell_97/strided_slice/stack_1£
'while/gru_cell_97/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/gru_cell_97/strided_slice/stack_2ê
while/gru_cell_97/strided_sliceStridedSlice(while/gru_cell_97/ReadVariableOp:value:0.while/gru_cell_97/strided_slice/stack:output:00while/gru_cell_97/strided_slice/stack_1:output:00while/gru_cell_97/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2!
while/gru_cell_97/strided_slice´
while/gru_cell_97/MatMul_1MatMulwhile_placeholder_2(while/gru_cell_97/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_97/MatMul_1
while/gru_cell_97/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2
while/gru_cell_97/Const
#while/gru_cell_97/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2%
#while/gru_cell_97/split_1/split_dim«
while/gru_cell_97/split_1SplitV$while/gru_cell_97/MatMul_1:product:0 while/gru_cell_97/Const:output:0,while/gru_cell_97/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2
while/gru_cell_97/split_1°
while/gru_cell_97/addAddV2 while/gru_cell_97/split:output:0"while/gru_cell_97/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_97/add
while/gru_cell_97/SigmoidSigmoidwhile/gru_cell_97/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_97/Sigmoid´
while/gru_cell_97/add_1AddV2 while/gru_cell_97/split:output:1"while/gru_cell_97/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_97/add_1
while/gru_cell_97/Sigmoid_1Sigmoidwhile/gru_cell_97/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_97/Sigmoid_1
while/gru_cell_97/mulMulwhile/gru_cell_97/Sigmoid_1:y:0while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_97/mul¶
"while/gru_cell_97/ReadVariableOp_1ReadVariableOp+while_gru_cell_97_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02$
"while/gru_cell_97/ReadVariableOp_1£
'while/gru_cell_97/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2)
'while/gru_cell_97/strided_slice_1/stack§
)while/gru_cell_97/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/gru_cell_97/strided_slice_1/stack_1§
)while/gru_cell_97/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/gru_cell_97/strided_slice_1/stack_2ö
!while/gru_cell_97/strided_slice_1StridedSlice*while/gru_cell_97/ReadVariableOp_1:value:00while/gru_cell_97/strided_slice_1/stack:output:02while/gru_cell_97/strided_slice_1/stack_1:output:02while/gru_cell_97/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2#
!while/gru_cell_97/strided_slice_1¼
while/gru_cell_97/MatMul_2MatMulwhile/gru_cell_97/mul:z:0*while/gru_cell_97/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_97/MatMul_2¶
while/gru_cell_97/add_2AddV2 while/gru_cell_97/split:output:2$while/gru_cell_97/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_97/add_2
while/gru_cell_97/ReluReluwhile/gru_cell_97/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_97/Relu 
while/gru_cell_97/mul_1Mulwhile/gru_cell_97/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_97/mul_1w
while/gru_cell_97/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
while/gru_cell_97/sub/x©
while/gru_cell_97/subSub while/gru_cell_97/sub/x:output:0while/gru_cell_97/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_97/sub­
while/gru_cell_97/mul_2Mulwhile/gru_cell_97/sub:z:0$while/gru_cell_97/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_97/mul_2¨
while/gru_cell_97/add_3AddV2while/gru_cell_97/mul_1:z:0while/gru_cell_97/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_97/add_3ß
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_97/add_3:z:0*
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
while/IdentityIdentitywhile/add_1:z:0)^while/gru_cell_97/BiasAdd/ReadVariableOp(^while/gru_cell_97/MatMul/ReadVariableOp!^while/gru_cell_97/ReadVariableOp#^while/gru_cell_97/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations)^while/gru_cell_97/BiasAdd/ReadVariableOp(^while/gru_cell_97/MatMul/ReadVariableOp!^while/gru_cell_97/ReadVariableOp#^while/gru_cell_97/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_1ý
while/Identity_2Identitywhile/add:z:0)^while/gru_cell_97/BiasAdd/ReadVariableOp(^while/gru_cell_97/MatMul/ReadVariableOp!^while/gru_cell_97/ReadVariableOp#^while/gru_cell_97/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_2ª
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/gru_cell_97/BiasAdd/ReadVariableOp(^while/gru_cell_97/MatMul/ReadVariableOp!^while/gru_cell_97/ReadVariableOp#^while/gru_cell_97/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/gru_cell_97/add_3:z:0)^while/gru_cell_97/BiasAdd/ReadVariableOp(^while/gru_cell_97/MatMul/ReadVariableOp!^while/gru_cell_97/ReadVariableOp#^while/gru_cell_97/ReadVariableOp_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_4"h
1while_gru_cell_97_biasadd_readvariableop_resource3while_gru_cell_97_biasadd_readvariableop_resource_0"f
0while_gru_cell_97_matmul_readvariableop_resource2while_gru_cell_97_matmul_readvariableop_resource_0"X
)while_gru_cell_97_readvariableop_resource+while_gru_cell_97_readvariableop_resource_0")
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
(while/gru_cell_97/BiasAdd/ReadVariableOp(while/gru_cell_97/BiasAdd/ReadVariableOp2R
'while/gru_cell_97/MatMul/ReadVariableOp'while/gru_cell_97/MatMul/ReadVariableOp2D
 while/gru_cell_97/ReadVariableOp while/gru_cell_97/ReadVariableOp2H
"while/gru_cell_97/ReadVariableOp_1"while/gru_cell_97/ReadVariableOp_1: 
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
¿{

#__inference__traced_restore_4739894
file_prefix4
!assignvariableop_dense_194_kernel:	Èd/
!assignvariableop_1_dense_194_bias:d5
#assignvariableop_2_dense_195_kernel:d/
!assignvariableop_3_dense_195_bias:&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: ?
,assignvariableop_9_gru_97_gru_cell_97_kernel:	ØK
7assignvariableop_10_gru_97_gru_cell_97_recurrent_kernel:
ÈØ:
+assignvariableop_11_gru_97_gru_cell_97_bias:	Ø#
assignvariableop_12_total: #
assignvariableop_13_count: >
+assignvariableop_14_adam_dense_194_kernel_m:	Èd7
)assignvariableop_15_adam_dense_194_bias_m:d=
+assignvariableop_16_adam_dense_195_kernel_m:d7
)assignvariableop_17_adam_dense_195_bias_m:G
4assignvariableop_18_adam_gru_97_gru_cell_97_kernel_m:	ØR
>assignvariableop_19_adam_gru_97_gru_cell_97_recurrent_kernel_m:
ÈØA
2assignvariableop_20_adam_gru_97_gru_cell_97_bias_m:	Ø>
+assignvariableop_21_adam_dense_194_kernel_v:	Èd7
)assignvariableop_22_adam_dense_194_bias_v:d=
+assignvariableop_23_adam_dense_195_kernel_v:d7
)assignvariableop_24_adam_dense_195_bias_v:G
4assignvariableop_25_adam_gru_97_gru_cell_97_kernel_v:	ØR
>assignvariableop_26_adam_gru_97_gru_cell_97_recurrent_kernel_v:
ÈØA
2assignvariableop_27_adam_gru_97_gru_cell_97_bias_v:	Ø
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_194_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1¦
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_194_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2¨
AssignVariableOp_2AssignVariableOp#assignvariableop_2_dense_195_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3¦
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_195_biasIdentity_3:output:0"/device:CPU:0*
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
AssignVariableOp_9AssignVariableOp,assignvariableop_9_gru_97_gru_cell_97_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10¿
AssignVariableOp_10AssignVariableOp7assignvariableop_10_gru_97_gru_cell_97_recurrent_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11³
AssignVariableOp_11AssignVariableOp+assignvariableop_11_gru_97_gru_cell_97_biasIdentity_11:output:0"/device:CPU:0*
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
AssignVariableOp_14AssignVariableOp+assignvariableop_14_adam_dense_194_kernel_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15±
AssignVariableOp_15AssignVariableOp)assignvariableop_15_adam_dense_194_bias_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16³
AssignVariableOp_16AssignVariableOp+assignvariableop_16_adam_dense_195_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17±
AssignVariableOp_17AssignVariableOp)assignvariableop_17_adam_dense_195_bias_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18¼
AssignVariableOp_18AssignVariableOp4assignvariableop_18_adam_gru_97_gru_cell_97_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19Æ
AssignVariableOp_19AssignVariableOp>assignvariableop_19_adam_gru_97_gru_cell_97_recurrent_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20º
AssignVariableOp_20AssignVariableOp2assignvariableop_20_adam_gru_97_gru_cell_97_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21³
AssignVariableOp_21AssignVariableOp+assignvariableop_21_adam_dense_194_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22±
AssignVariableOp_22AssignVariableOp)assignvariableop_22_adam_dense_194_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23³
AssignVariableOp_23AssignVariableOp+assignvariableop_23_adam_dense_195_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24±
AssignVariableOp_24AssignVariableOp)assignvariableop_24_adam_dense_195_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25¼
AssignVariableOp_25AssignVariableOp4assignvariableop_25_adam_gru_97_gru_cell_97_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26Æ
AssignVariableOp_26AssignVariableOp>assignvariableop_26_adam_gru_97_gru_cell_97_recurrent_kernel_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27º
AssignVariableOp_27AssignVariableOp2assignvariableop_27_adam_gru_97_gru_cell_97_bias_vIdentity_27:output:0"/device:CPU:0*
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
Ó*
è
H__inference_gru_cell_97_layer_call_and_return_conditional_losses_4737439

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
while_body_4739438
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_gru_cell_97_matmul_readvariableop_resource_0:	ØB
3while_gru_cell_97_biasadd_readvariableop_resource_0:	Ø?
+while_gru_cell_97_readvariableop_resource_0:
ÈØ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_gru_cell_97_matmul_readvariableop_resource:	Ø@
1while_gru_cell_97_biasadd_readvariableop_resource:	Ø=
)while_gru_cell_97_readvariableop_resource:
ÈØ¢(while/gru_cell_97/BiasAdd/ReadVariableOp¢'while/gru_cell_97/MatMul/ReadVariableOp¢ while/gru_cell_97/ReadVariableOp¢"while/gru_cell_97/ReadVariableOp_1Ã
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
'while/gru_cell_97/MatMul/ReadVariableOpReadVariableOp2while_gru_cell_97_matmul_readvariableop_resource_0*
_output_shapes
:	Ø*
dtype02)
'while/gru_cell_97/MatMul/ReadVariableOpÔ
while/gru_cell_97/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/gru_cell_97/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
while/gru_cell_97/MatMulÅ
(while/gru_cell_97/BiasAdd/ReadVariableOpReadVariableOp3while_gru_cell_97_biasadd_readvariableop_resource_0*
_output_shapes	
:Ø*
dtype02*
(while/gru_cell_97/BiasAdd/ReadVariableOpÊ
while/gru_cell_97/BiasAddBiasAdd"while/gru_cell_97/MatMul:product:00while/gru_cell_97/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
while/gru_cell_97/BiasAdd
!while/gru_cell_97/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2#
!while/gru_cell_97/split/split_dim÷
while/gru_cell_97/splitSplit*while/gru_cell_97/split/split_dim:output:0"while/gru_cell_97/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
while/gru_cell_97/split²
 while/gru_cell_97/ReadVariableOpReadVariableOp+while_gru_cell_97_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02"
 while/gru_cell_97/ReadVariableOp
%while/gru_cell_97/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/gru_cell_97/strided_slice/stack£
'while/gru_cell_97/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/gru_cell_97/strided_slice/stack_1£
'while/gru_cell_97/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/gru_cell_97/strided_slice/stack_2ê
while/gru_cell_97/strided_sliceStridedSlice(while/gru_cell_97/ReadVariableOp:value:0.while/gru_cell_97/strided_slice/stack:output:00while/gru_cell_97/strided_slice/stack_1:output:00while/gru_cell_97/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2!
while/gru_cell_97/strided_slice´
while/gru_cell_97/MatMul_1MatMulwhile_placeholder_2(while/gru_cell_97/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_97/MatMul_1
while/gru_cell_97/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2
while/gru_cell_97/Const
#while/gru_cell_97/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2%
#while/gru_cell_97/split_1/split_dim«
while/gru_cell_97/split_1SplitV$while/gru_cell_97/MatMul_1:product:0 while/gru_cell_97/Const:output:0,while/gru_cell_97/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2
while/gru_cell_97/split_1°
while/gru_cell_97/addAddV2 while/gru_cell_97/split:output:0"while/gru_cell_97/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_97/add
while/gru_cell_97/SigmoidSigmoidwhile/gru_cell_97/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_97/Sigmoid´
while/gru_cell_97/add_1AddV2 while/gru_cell_97/split:output:1"while/gru_cell_97/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_97/add_1
while/gru_cell_97/Sigmoid_1Sigmoidwhile/gru_cell_97/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_97/Sigmoid_1
while/gru_cell_97/mulMulwhile/gru_cell_97/Sigmoid_1:y:0while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_97/mul¶
"while/gru_cell_97/ReadVariableOp_1ReadVariableOp+while_gru_cell_97_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02$
"while/gru_cell_97/ReadVariableOp_1£
'while/gru_cell_97/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2)
'while/gru_cell_97/strided_slice_1/stack§
)while/gru_cell_97/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/gru_cell_97/strided_slice_1/stack_1§
)while/gru_cell_97/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/gru_cell_97/strided_slice_1/stack_2ö
!while/gru_cell_97/strided_slice_1StridedSlice*while/gru_cell_97/ReadVariableOp_1:value:00while/gru_cell_97/strided_slice_1/stack:output:02while/gru_cell_97/strided_slice_1/stack_1:output:02while/gru_cell_97/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2#
!while/gru_cell_97/strided_slice_1¼
while/gru_cell_97/MatMul_2MatMulwhile/gru_cell_97/mul:z:0*while/gru_cell_97/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_97/MatMul_2¶
while/gru_cell_97/add_2AddV2 while/gru_cell_97/split:output:2$while/gru_cell_97/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_97/add_2
while/gru_cell_97/ReluReluwhile/gru_cell_97/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_97/Relu 
while/gru_cell_97/mul_1Mulwhile/gru_cell_97/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_97/mul_1w
while/gru_cell_97/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
while/gru_cell_97/sub/x©
while/gru_cell_97/subSub while/gru_cell_97/sub/x:output:0while/gru_cell_97/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_97/sub­
while/gru_cell_97/mul_2Mulwhile/gru_cell_97/sub:z:0$while/gru_cell_97/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_97/mul_2¨
while/gru_cell_97/add_3AddV2while/gru_cell_97/mul_1:z:0while/gru_cell_97/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_97/add_3ß
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_97/add_3:z:0*
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
while/IdentityIdentitywhile/add_1:z:0)^while/gru_cell_97/BiasAdd/ReadVariableOp(^while/gru_cell_97/MatMul/ReadVariableOp!^while/gru_cell_97/ReadVariableOp#^while/gru_cell_97/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations)^while/gru_cell_97/BiasAdd/ReadVariableOp(^while/gru_cell_97/MatMul/ReadVariableOp!^while/gru_cell_97/ReadVariableOp#^while/gru_cell_97/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_1ý
while/Identity_2Identitywhile/add:z:0)^while/gru_cell_97/BiasAdd/ReadVariableOp(^while/gru_cell_97/MatMul/ReadVariableOp!^while/gru_cell_97/ReadVariableOp#^while/gru_cell_97/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_2ª
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/gru_cell_97/BiasAdd/ReadVariableOp(^while/gru_cell_97/MatMul/ReadVariableOp!^while/gru_cell_97/ReadVariableOp#^while/gru_cell_97/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/gru_cell_97/add_3:z:0)^while/gru_cell_97/BiasAdd/ReadVariableOp(^while/gru_cell_97/MatMul/ReadVariableOp!^while/gru_cell_97/ReadVariableOp#^while/gru_cell_97/ReadVariableOp_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_4"h
1while_gru_cell_97_biasadd_readvariableop_resource3while_gru_cell_97_biasadd_readvariableop_resource_0"f
0while_gru_cell_97_matmul_readvariableop_resource2while_gru_cell_97_matmul_readvariableop_resource_0"X
)while_gru_cell_97_readvariableop_resource+while_gru_cell_97_readvariableop_resource_0")
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
(while/gru_cell_97/BiasAdd/ReadVariableOp(while/gru_cell_97/BiasAdd/ReadVariableOp2R
'while/gru_cell_97/MatMul/ReadVariableOp'while/gru_cell_97/MatMul/ReadVariableOp2D
 while/gru_cell_97/ReadVariableOp while/gru_cell_97/ReadVariableOp2H
"while/gru_cell_97/ReadVariableOp_1"while/gru_cell_97/ReadVariableOp_1: 
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
ä
¾
'sequential_97_gru_97_while_cond_4737098F
Bsequential_97_gru_97_while_sequential_97_gru_97_while_loop_counterL
Hsequential_97_gru_97_while_sequential_97_gru_97_while_maximum_iterations*
&sequential_97_gru_97_while_placeholder,
(sequential_97_gru_97_while_placeholder_1,
(sequential_97_gru_97_while_placeholder_2H
Dsequential_97_gru_97_while_less_sequential_97_gru_97_strided_slice_1_
[sequential_97_gru_97_while_sequential_97_gru_97_while_cond_4737098___redundant_placeholder0_
[sequential_97_gru_97_while_sequential_97_gru_97_while_cond_4737098___redundant_placeholder1_
[sequential_97_gru_97_while_sequential_97_gru_97_while_cond_4737098___redundant_placeholder2_
[sequential_97_gru_97_while_sequential_97_gru_97_while_cond_4737098___redundant_placeholder3'
#sequential_97_gru_97_while_identity
Ù
sequential_97/gru_97/while/LessLess&sequential_97_gru_97_while_placeholderDsequential_97_gru_97_while_less_sequential_97_gru_97_strided_slice_1*
T0*
_output_shapes
: 2!
sequential_97/gru_97/while/Less
#sequential_97/gru_97/while/IdentityIdentity#sequential_97/gru_97/while/Less:z:0*
T0
*
_output_shapes
: 2%
#sequential_97/gru_97/while/Identity"S
#sequential_97_gru_97_while_identity,sequential_97/gru_97/while/Identity:output:0*(
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
C__inference_gru_97_layer_call_and_return_conditional_losses_4737981

inputs=
*gru_cell_97_matmul_readvariableop_resource:	Ø:
+gru_cell_97_biasadd_readvariableop_resource:	Ø7
#gru_cell_97_readvariableop_resource:
ÈØ
identity¢"gru_cell_97/BiasAdd/ReadVariableOp¢!gru_cell_97/MatMul/ReadVariableOp¢gru_cell_97/ReadVariableOp¢gru_cell_97/ReadVariableOp_1¢whileD
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
!gru_cell_97/MatMul/ReadVariableOpReadVariableOp*gru_cell_97_matmul_readvariableop_resource*
_output_shapes
:	Ø*
dtype02#
!gru_cell_97/MatMul/ReadVariableOpª
gru_cell_97/MatMulMatMulstrided_slice_2:output:0)gru_cell_97/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_cell_97/MatMul±
"gru_cell_97/BiasAdd/ReadVariableOpReadVariableOp+gru_cell_97_biasadd_readvariableop_resource*
_output_shapes	
:Ø*
dtype02$
"gru_cell_97/BiasAdd/ReadVariableOp²
gru_cell_97/BiasAddBiasAddgru_cell_97/MatMul:product:0*gru_cell_97/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_cell_97/BiasAdd
gru_cell_97/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
gru_cell_97/split/split_dimß
gru_cell_97/splitSplit$gru_cell_97/split/split_dim:output:0gru_cell_97/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
gru_cell_97/split
gru_cell_97/ReadVariableOpReadVariableOp#gru_cell_97_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02
gru_cell_97/ReadVariableOp
gru_cell_97/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
gru_cell_97/strided_slice/stack
!gru_cell_97/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2#
!gru_cell_97/strided_slice/stack_1
!gru_cell_97/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!gru_cell_97/strided_slice/stack_2Æ
gru_cell_97/strided_sliceStridedSlice"gru_cell_97/ReadVariableOp:value:0(gru_cell_97/strided_slice/stack:output:0*gru_cell_97/strided_slice/stack_1:output:0*gru_cell_97/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2
gru_cell_97/strided_slice
gru_cell_97/MatMul_1MatMulzeros:output:0"gru_cell_97/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_97/MatMul_1{
gru_cell_97/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2
gru_cell_97/Const
gru_cell_97/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
gru_cell_97/split_1/split_dim
gru_cell_97/split_1SplitVgru_cell_97/MatMul_1:product:0gru_cell_97/Const:output:0&gru_cell_97/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2
gru_cell_97/split_1
gru_cell_97/addAddV2gru_cell_97/split:output:0gru_cell_97/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_97/add}
gru_cell_97/SigmoidSigmoidgru_cell_97/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_97/Sigmoid
gru_cell_97/add_1AddV2gru_cell_97/split:output:1gru_cell_97/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_97/add_1
gru_cell_97/Sigmoid_1Sigmoidgru_cell_97/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_97/Sigmoid_1
gru_cell_97/mulMulgru_cell_97/Sigmoid_1:y:0zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_97/mul¢
gru_cell_97/ReadVariableOp_1ReadVariableOp#gru_cell_97_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02
gru_cell_97/ReadVariableOp_1
!gru_cell_97/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2#
!gru_cell_97/strided_slice_1/stack
#gru_cell_97/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#gru_cell_97/strided_slice_1/stack_1
#gru_cell_97/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gru_cell_97/strided_slice_1/stack_2Ò
gru_cell_97/strided_slice_1StridedSlice$gru_cell_97/ReadVariableOp_1:value:0*gru_cell_97/strided_slice_1/stack:output:0,gru_cell_97/strided_slice_1/stack_1:output:0,gru_cell_97/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2
gru_cell_97/strided_slice_1¤
gru_cell_97/MatMul_2MatMulgru_cell_97/mul:z:0$gru_cell_97/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_97/MatMul_2
gru_cell_97/add_2AddV2gru_cell_97/split:output:2gru_cell_97/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_97/add_2v
gru_cell_97/ReluRelugru_cell_97/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_97/Relu
gru_cell_97/mul_1Mulgru_cell_97/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_97/mul_1k
gru_cell_97/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_97/sub/x
gru_cell_97/subSubgru_cell_97/sub/x:output:0gru_cell_97/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_97/sub
gru_cell_97/mul_2Mulgru_cell_97/sub:z:0gru_cell_97/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_97/mul_2
gru_cell_97/add_3AddV2gru_cell_97/mul_1:z:0gru_cell_97/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_97/add_3
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*gru_cell_97_matmul_readvariableop_resource+gru_cell_97_biasadd_readvariableop_resource#gru_cell_97_readvariableop_resource*
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
while_body_4737885*
condR
while_cond_4737884*9
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
IdentityIdentitystrided_slice_3:output:0#^gru_cell_97/BiasAdd/ReadVariableOp"^gru_cell_97/MatMul/ReadVariableOp^gru_cell_97/ReadVariableOp^gru_cell_97/ReadVariableOp_1^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2H
"gru_cell_97/BiasAdd/ReadVariableOp"gru_cell_97/BiasAdd/ReadVariableOp2F
!gru_cell_97/MatMul/ReadVariableOp!gru_cell_97/MatMul/ReadVariableOp28
gru_cell_97/ReadVariableOpgru_cell_97/ReadVariableOp2<
gru_cell_97/ReadVariableOp_1gru_cell_97/ReadVariableOp_12
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

¯
while_cond_4737884
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_4737884___redundant_placeholder05
1while_while_cond_4737884___redundant_placeholder15
1while_while_cond_4737884___redundant_placeholder25
1while_while_cond_4737884___redundant_placeholder3
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
while_cond_4739095
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_4739095___redundant_placeholder05
1while_while_cond_4739095___redundant_placeholder15
1while_while_cond_4739095___redundant_placeholder25
1while_while_cond_4739095___redundant_placeholder3
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
Ó
¶
(__inference_gru_97_layer_call_fn_4738839

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
C__inference_gru_97_layer_call_and_return_conditional_losses_47379812
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
while_cond_4739266
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_4739266___redundant_placeholder05
1while_while_cond_4739266___redundant_placeholder15
1while_while_cond_4739266___redundant_placeholder25
1while_while_cond_4739266___redundant_placeholder3
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
ùW
¥
while_body_4737885
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_gru_cell_97_matmul_readvariableop_resource_0:	ØB
3while_gru_cell_97_biasadd_readvariableop_resource_0:	Ø?
+while_gru_cell_97_readvariableop_resource_0:
ÈØ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_gru_cell_97_matmul_readvariableop_resource:	Ø@
1while_gru_cell_97_biasadd_readvariableop_resource:	Ø=
)while_gru_cell_97_readvariableop_resource:
ÈØ¢(while/gru_cell_97/BiasAdd/ReadVariableOp¢'while/gru_cell_97/MatMul/ReadVariableOp¢ while/gru_cell_97/ReadVariableOp¢"while/gru_cell_97/ReadVariableOp_1Ã
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
'while/gru_cell_97/MatMul/ReadVariableOpReadVariableOp2while_gru_cell_97_matmul_readvariableop_resource_0*
_output_shapes
:	Ø*
dtype02)
'while/gru_cell_97/MatMul/ReadVariableOpÔ
while/gru_cell_97/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/gru_cell_97/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
while/gru_cell_97/MatMulÅ
(while/gru_cell_97/BiasAdd/ReadVariableOpReadVariableOp3while_gru_cell_97_biasadd_readvariableop_resource_0*
_output_shapes	
:Ø*
dtype02*
(while/gru_cell_97/BiasAdd/ReadVariableOpÊ
while/gru_cell_97/BiasAddBiasAdd"while/gru_cell_97/MatMul:product:00while/gru_cell_97/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
while/gru_cell_97/BiasAdd
!while/gru_cell_97/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2#
!while/gru_cell_97/split/split_dim÷
while/gru_cell_97/splitSplit*while/gru_cell_97/split/split_dim:output:0"while/gru_cell_97/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
while/gru_cell_97/split²
 while/gru_cell_97/ReadVariableOpReadVariableOp+while_gru_cell_97_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02"
 while/gru_cell_97/ReadVariableOp
%while/gru_cell_97/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/gru_cell_97/strided_slice/stack£
'while/gru_cell_97/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/gru_cell_97/strided_slice/stack_1£
'while/gru_cell_97/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/gru_cell_97/strided_slice/stack_2ê
while/gru_cell_97/strided_sliceStridedSlice(while/gru_cell_97/ReadVariableOp:value:0.while/gru_cell_97/strided_slice/stack:output:00while/gru_cell_97/strided_slice/stack_1:output:00while/gru_cell_97/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2!
while/gru_cell_97/strided_slice´
while/gru_cell_97/MatMul_1MatMulwhile_placeholder_2(while/gru_cell_97/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_97/MatMul_1
while/gru_cell_97/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2
while/gru_cell_97/Const
#while/gru_cell_97/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2%
#while/gru_cell_97/split_1/split_dim«
while/gru_cell_97/split_1SplitV$while/gru_cell_97/MatMul_1:product:0 while/gru_cell_97/Const:output:0,while/gru_cell_97/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2
while/gru_cell_97/split_1°
while/gru_cell_97/addAddV2 while/gru_cell_97/split:output:0"while/gru_cell_97/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_97/add
while/gru_cell_97/SigmoidSigmoidwhile/gru_cell_97/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_97/Sigmoid´
while/gru_cell_97/add_1AddV2 while/gru_cell_97/split:output:1"while/gru_cell_97/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_97/add_1
while/gru_cell_97/Sigmoid_1Sigmoidwhile/gru_cell_97/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_97/Sigmoid_1
while/gru_cell_97/mulMulwhile/gru_cell_97/Sigmoid_1:y:0while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_97/mul¶
"while/gru_cell_97/ReadVariableOp_1ReadVariableOp+while_gru_cell_97_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02$
"while/gru_cell_97/ReadVariableOp_1£
'while/gru_cell_97/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2)
'while/gru_cell_97/strided_slice_1/stack§
)while/gru_cell_97/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/gru_cell_97/strided_slice_1/stack_1§
)while/gru_cell_97/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/gru_cell_97/strided_slice_1/stack_2ö
!while/gru_cell_97/strided_slice_1StridedSlice*while/gru_cell_97/ReadVariableOp_1:value:00while/gru_cell_97/strided_slice_1/stack:output:02while/gru_cell_97/strided_slice_1/stack_1:output:02while/gru_cell_97/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2#
!while/gru_cell_97/strided_slice_1¼
while/gru_cell_97/MatMul_2MatMulwhile/gru_cell_97/mul:z:0*while/gru_cell_97/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_97/MatMul_2¶
while/gru_cell_97/add_2AddV2 while/gru_cell_97/split:output:2$while/gru_cell_97/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_97/add_2
while/gru_cell_97/ReluReluwhile/gru_cell_97/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_97/Relu 
while/gru_cell_97/mul_1Mulwhile/gru_cell_97/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_97/mul_1w
while/gru_cell_97/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
while/gru_cell_97/sub/x©
while/gru_cell_97/subSub while/gru_cell_97/sub/x:output:0while/gru_cell_97/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_97/sub­
while/gru_cell_97/mul_2Mulwhile/gru_cell_97/sub:z:0$while/gru_cell_97/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_97/mul_2¨
while/gru_cell_97/add_3AddV2while/gru_cell_97/mul_1:z:0while/gru_cell_97/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_97/add_3ß
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_97/add_3:z:0*
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
while/IdentityIdentitywhile/add_1:z:0)^while/gru_cell_97/BiasAdd/ReadVariableOp(^while/gru_cell_97/MatMul/ReadVariableOp!^while/gru_cell_97/ReadVariableOp#^while/gru_cell_97/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations)^while/gru_cell_97/BiasAdd/ReadVariableOp(^while/gru_cell_97/MatMul/ReadVariableOp!^while/gru_cell_97/ReadVariableOp#^while/gru_cell_97/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_1ý
while/Identity_2Identitywhile/add:z:0)^while/gru_cell_97/BiasAdd/ReadVariableOp(^while/gru_cell_97/MatMul/ReadVariableOp!^while/gru_cell_97/ReadVariableOp#^while/gru_cell_97/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_2ª
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/gru_cell_97/BiasAdd/ReadVariableOp(^while/gru_cell_97/MatMul/ReadVariableOp!^while/gru_cell_97/ReadVariableOp#^while/gru_cell_97/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/gru_cell_97/add_3:z:0)^while/gru_cell_97/BiasAdd/ReadVariableOp(^while/gru_cell_97/MatMul/ReadVariableOp!^while/gru_cell_97/ReadVariableOp#^while/gru_cell_97/ReadVariableOp_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_4"h
1while_gru_cell_97_biasadd_readvariableop_resource3while_gru_cell_97_biasadd_readvariableop_resource_0"f
0while_gru_cell_97_matmul_readvariableop_resource2while_gru_cell_97_matmul_readvariableop_resource_0"X
)while_gru_cell_97_readvariableop_resource+while_gru_cell_97_readvariableop_resource_0")
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
(while/gru_cell_97/BiasAdd/ReadVariableOp(while/gru_cell_97/BiasAdd/ReadVariableOp2R
'while/gru_cell_97/MatMul/ReadVariableOp'while/gru_cell_97/MatMul/ReadVariableOp2D
 while/gru_cell_97/ReadVariableOp while/gru_cell_97/ReadVariableOp2H
"while/gru_cell_97/ReadVariableOp_1"while/gru_cell_97/ReadVariableOp_1: 
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
while_cond_4737505
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_4737505___redundant_placeholder05
1while_while_cond_4737505___redundant_placeholder15
1while_while_cond_4737505___redundant_placeholder25
1while_while_cond_4737505___redundant_placeholder3
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
F__inference_dense_194_layer_call_and_return_conditional_losses_4739554

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
ùW
¥
while_body_4738925
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_gru_cell_97_matmul_readvariableop_resource_0:	ØB
3while_gru_cell_97_biasadd_readvariableop_resource_0:	Ø?
+while_gru_cell_97_readvariableop_resource_0:
ÈØ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_gru_cell_97_matmul_readvariableop_resource:	Ø@
1while_gru_cell_97_biasadd_readvariableop_resource:	Ø=
)while_gru_cell_97_readvariableop_resource:
ÈØ¢(while/gru_cell_97/BiasAdd/ReadVariableOp¢'while/gru_cell_97/MatMul/ReadVariableOp¢ while/gru_cell_97/ReadVariableOp¢"while/gru_cell_97/ReadVariableOp_1Ã
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
'while/gru_cell_97/MatMul/ReadVariableOpReadVariableOp2while_gru_cell_97_matmul_readvariableop_resource_0*
_output_shapes
:	Ø*
dtype02)
'while/gru_cell_97/MatMul/ReadVariableOpÔ
while/gru_cell_97/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/gru_cell_97/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
while/gru_cell_97/MatMulÅ
(while/gru_cell_97/BiasAdd/ReadVariableOpReadVariableOp3while_gru_cell_97_biasadd_readvariableop_resource_0*
_output_shapes	
:Ø*
dtype02*
(while/gru_cell_97/BiasAdd/ReadVariableOpÊ
while/gru_cell_97/BiasAddBiasAdd"while/gru_cell_97/MatMul:product:00while/gru_cell_97/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
while/gru_cell_97/BiasAdd
!while/gru_cell_97/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2#
!while/gru_cell_97/split/split_dim÷
while/gru_cell_97/splitSplit*while/gru_cell_97/split/split_dim:output:0"while/gru_cell_97/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
while/gru_cell_97/split²
 while/gru_cell_97/ReadVariableOpReadVariableOp+while_gru_cell_97_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02"
 while/gru_cell_97/ReadVariableOp
%while/gru_cell_97/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/gru_cell_97/strided_slice/stack£
'while/gru_cell_97/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/gru_cell_97/strided_slice/stack_1£
'while/gru_cell_97/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/gru_cell_97/strided_slice/stack_2ê
while/gru_cell_97/strided_sliceStridedSlice(while/gru_cell_97/ReadVariableOp:value:0.while/gru_cell_97/strided_slice/stack:output:00while/gru_cell_97/strided_slice/stack_1:output:00while/gru_cell_97/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2!
while/gru_cell_97/strided_slice´
while/gru_cell_97/MatMul_1MatMulwhile_placeholder_2(while/gru_cell_97/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/gru_cell_97/MatMul_1
while/gru_cell_97/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2
while/gru_cell_97/Const
#while/gru_cell_97/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2%
#while/gru_cell_97/split_1/split_dim«
while/gru_cell_97/split_1SplitV$while/gru_cell_97/MatMul_1:product:0 while/gru_cell_97/Const:output:0,while/gru_cell_97/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2
while/gru_cell_97/split_1°
while/gru_cell_97/addAddV2 while/gru_cell_97/split:output:0"while/gru_cell_97/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_97/add
while/gru_cell_97/SigmoidSigmoidwhile/gru_cell_97/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_97/Sigmoid´
while/gru_cell_97/add_1AddV2 while/gru_cell_97/split:output:1"while/gru_cell_97/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_97/add_1
while/gru_cell_97/Sigmoid_1Sigmoidwhile/gru_cell_97/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_97/Sigmoid_1
while/gru_cell_97/mulMulwhile/gru_cell_97/Sigmoid_1:y:0while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_97/mul¶
"while/gru_cell_97/ReadVariableOp_1ReadVariableOp+while_gru_cell_97_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02$
"while/gru_cell_97/ReadVariableOp_1£
'while/gru_cell_97/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2)
'while/gru_cell_97/strided_slice_1/stack§
)while/gru_cell_97/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/gru_cell_97/strided_slice_1/stack_1§
)while/gru_cell_97/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/gru_cell_97/strided_slice_1/stack_2ö
!while/gru_cell_97/strided_slice_1StridedSlice*while/gru_cell_97/ReadVariableOp_1:value:00while/gru_cell_97/strided_slice_1/stack:output:02while/gru_cell_97/strided_slice_1/stack_1:output:02while/gru_cell_97/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2#
!while/gru_cell_97/strided_slice_1¼
while/gru_cell_97/MatMul_2MatMulwhile/gru_cell_97/mul:z:0*while/gru_cell_97/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_97/MatMul_2¶
while/gru_cell_97/add_2AddV2 while/gru_cell_97/split:output:2$while/gru_cell_97/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_97/add_2
while/gru_cell_97/ReluReluwhile/gru_cell_97/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_97/Relu 
while/gru_cell_97/mul_1Mulwhile/gru_cell_97/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_97/mul_1w
while/gru_cell_97/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
while/gru_cell_97/sub/x©
while/gru_cell_97/subSub while/gru_cell_97/sub/x:output:0while/gru_cell_97/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_97/sub­
while/gru_cell_97/mul_2Mulwhile/gru_cell_97/sub:z:0$while/gru_cell_97/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_97/mul_2¨
while/gru_cell_97/add_3AddV2while/gru_cell_97/mul_1:z:0while/gru_cell_97/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/gru_cell_97/add_3ß
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/gru_cell_97/add_3:z:0*
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
while/IdentityIdentitywhile/add_1:z:0)^while/gru_cell_97/BiasAdd/ReadVariableOp(^while/gru_cell_97/MatMul/ReadVariableOp!^while/gru_cell_97/ReadVariableOp#^while/gru_cell_97/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations)^while/gru_cell_97/BiasAdd/ReadVariableOp(^while/gru_cell_97/MatMul/ReadVariableOp!^while/gru_cell_97/ReadVariableOp#^while/gru_cell_97/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_1ý
while/Identity_2Identitywhile/add:z:0)^while/gru_cell_97/BiasAdd/ReadVariableOp(^while/gru_cell_97/MatMul/ReadVariableOp!^while/gru_cell_97/ReadVariableOp#^while/gru_cell_97/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_2ª
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^while/gru_cell_97/BiasAdd/ReadVariableOp(^while/gru_cell_97/MatMul/ReadVariableOp!^while/gru_cell_97/ReadVariableOp#^while/gru_cell_97/ReadVariableOp_1*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/gru_cell_97/add_3:z:0)^while/gru_cell_97/BiasAdd/ReadVariableOp(^while/gru_cell_97/MatMul/ReadVariableOp!^while/gru_cell_97/ReadVariableOp#^while/gru_cell_97/ReadVariableOp_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_4"h
1while_gru_cell_97_biasadd_readvariableop_resource3while_gru_cell_97_biasadd_readvariableop_resource_0"f
0while_gru_cell_97_matmul_readvariableop_resource2while_gru_cell_97_matmul_readvariableop_resource_0"X
)while_gru_cell_97_readvariableop_resource+while_gru_cell_97_readvariableop_resource_0")
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
(while/gru_cell_97/BiasAdd/ReadVariableOp(while/gru_cell_97/BiasAdd/ReadVariableOp2R
'while/gru_cell_97/MatMul/ReadVariableOp'while/gru_cell_97/MatMul/ReadVariableOp2D
 while/gru_cell_97/ReadVariableOp while/gru_cell_97/ReadVariableOp2H
"while/gru_cell_97/ReadVariableOp_1"while/gru_cell_97/ReadVariableOp_1: 
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
/__inference_sequential_97_layer_call_fn_4738040
gru_97_input
unknown:	Ø
	unknown_0:	Ø
	unknown_1:
ÈØ
	unknown_2:	Èd
	unknown_3:d
	unknown_4:d
	unknown_5:
identity¢StatefulPartitionedCallÁ
StatefulPartitionedCallStatefulPartitionedCallgru_97_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
J__inference_sequential_97_layer_call_and_return_conditional_losses_47380232
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
_user_specified_namegru_97_input
Òh
£
C__inference_gru_97_layer_call_and_return_conditional_losses_4738244

inputs=
*gru_cell_97_matmul_readvariableop_resource:	Ø:
+gru_cell_97_biasadd_readvariableop_resource:	Ø7
#gru_cell_97_readvariableop_resource:
ÈØ
identity¢"gru_cell_97/BiasAdd/ReadVariableOp¢!gru_cell_97/MatMul/ReadVariableOp¢gru_cell_97/ReadVariableOp¢gru_cell_97/ReadVariableOp_1¢whileD
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
!gru_cell_97/MatMul/ReadVariableOpReadVariableOp*gru_cell_97_matmul_readvariableop_resource*
_output_shapes
:	Ø*
dtype02#
!gru_cell_97/MatMul/ReadVariableOpª
gru_cell_97/MatMulMatMulstrided_slice_2:output:0)gru_cell_97/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_cell_97/MatMul±
"gru_cell_97/BiasAdd/ReadVariableOpReadVariableOp+gru_cell_97_biasadd_readvariableop_resource*
_output_shapes	
:Ø*
dtype02$
"gru_cell_97/BiasAdd/ReadVariableOp²
gru_cell_97/BiasAddBiasAddgru_cell_97/MatMul:product:0*gru_cell_97/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_cell_97/BiasAdd
gru_cell_97/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
gru_cell_97/split/split_dimß
gru_cell_97/splitSplit$gru_cell_97/split/split_dim:output:0gru_cell_97/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
gru_cell_97/split
gru_cell_97/ReadVariableOpReadVariableOp#gru_cell_97_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02
gru_cell_97/ReadVariableOp
gru_cell_97/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
gru_cell_97/strided_slice/stack
!gru_cell_97/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2#
!gru_cell_97/strided_slice/stack_1
!gru_cell_97/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!gru_cell_97/strided_slice/stack_2Æ
gru_cell_97/strided_sliceStridedSlice"gru_cell_97/ReadVariableOp:value:0(gru_cell_97/strided_slice/stack:output:0*gru_cell_97/strided_slice/stack_1:output:0*gru_cell_97/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2
gru_cell_97/strided_slice
gru_cell_97/MatMul_1MatMulzeros:output:0"gru_cell_97/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_97/MatMul_1{
gru_cell_97/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2
gru_cell_97/Const
gru_cell_97/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
gru_cell_97/split_1/split_dim
gru_cell_97/split_1SplitVgru_cell_97/MatMul_1:product:0gru_cell_97/Const:output:0&gru_cell_97/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2
gru_cell_97/split_1
gru_cell_97/addAddV2gru_cell_97/split:output:0gru_cell_97/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_97/add}
gru_cell_97/SigmoidSigmoidgru_cell_97/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_97/Sigmoid
gru_cell_97/add_1AddV2gru_cell_97/split:output:1gru_cell_97/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_97/add_1
gru_cell_97/Sigmoid_1Sigmoidgru_cell_97/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_97/Sigmoid_1
gru_cell_97/mulMulgru_cell_97/Sigmoid_1:y:0zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_97/mul¢
gru_cell_97/ReadVariableOp_1ReadVariableOp#gru_cell_97_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02
gru_cell_97/ReadVariableOp_1
!gru_cell_97/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2#
!gru_cell_97/strided_slice_1/stack
#gru_cell_97/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#gru_cell_97/strided_slice_1/stack_1
#gru_cell_97/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gru_cell_97/strided_slice_1/stack_2Ò
gru_cell_97/strided_slice_1StridedSlice$gru_cell_97/ReadVariableOp_1:value:0*gru_cell_97/strided_slice_1/stack:output:0,gru_cell_97/strided_slice_1/stack_1:output:0,gru_cell_97/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2
gru_cell_97/strided_slice_1¤
gru_cell_97/MatMul_2MatMulgru_cell_97/mul:z:0$gru_cell_97/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_97/MatMul_2
gru_cell_97/add_2AddV2gru_cell_97/split:output:2gru_cell_97/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_97/add_2v
gru_cell_97/ReluRelugru_cell_97/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_97/Relu
gru_cell_97/mul_1Mulgru_cell_97/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_97/mul_1k
gru_cell_97/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_97/sub/x
gru_cell_97/subSubgru_cell_97/sub/x:output:0gru_cell_97/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_97/sub
gru_cell_97/mul_2Mulgru_cell_97/sub:z:0gru_cell_97/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_97/mul_2
gru_cell_97/add_3AddV2gru_cell_97/mul_1:z:0gru_cell_97/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_97/add_3
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*gru_cell_97_matmul_readvariableop_resource+gru_cell_97_biasadd_readvariableop_resource#gru_cell_97_readvariableop_resource*
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
while_body_4738148*
condR
while_cond_4738147*9
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
IdentityIdentitystrided_slice_3:output:0#^gru_cell_97/BiasAdd/ReadVariableOp"^gru_cell_97/MatMul/ReadVariableOp^gru_cell_97/ReadVariableOp^gru_cell_97/ReadVariableOp_1^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2H
"gru_cell_97/BiasAdd/ReadVariableOp"gru_cell_97/BiasAdd/ReadVariableOp2F
!gru_cell_97/MatMul/ReadVariableOp!gru_cell_97/MatMul/ReadVariableOp28
gru_cell_97/ReadVariableOpgru_cell_97/ReadVariableOp2<
gru_cell_97/ReadVariableOp_1gru_cell_97/ReadVariableOp_12
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ò	
÷
F__inference_dense_195_layer_call_and_return_conditional_losses_4738016

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

¯
while_cond_4738924
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_4738924___redundant_placeholder05
1while_while_cond_4738924___redundant_placeholder15
1while_while_cond_4738924___redundant_placeholder25
1while_while_cond_4738924___redundant_placeholder3
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
éd
þ	
gru_97_while_body_4738697*
&gru_97_while_gru_97_while_loop_counter0
,gru_97_while_gru_97_while_maximum_iterations
gru_97_while_placeholder
gru_97_while_placeholder_1
gru_97_while_placeholder_2)
%gru_97_while_gru_97_strided_slice_1_0e
agru_97_while_tensorarrayv2read_tensorlistgetitem_gru_97_tensorarrayunstack_tensorlistfromtensor_0L
9gru_97_while_gru_cell_97_matmul_readvariableop_resource_0:	ØI
:gru_97_while_gru_cell_97_biasadd_readvariableop_resource_0:	ØF
2gru_97_while_gru_cell_97_readvariableop_resource_0:
ÈØ
gru_97_while_identity
gru_97_while_identity_1
gru_97_while_identity_2
gru_97_while_identity_3
gru_97_while_identity_4'
#gru_97_while_gru_97_strided_slice_1c
_gru_97_while_tensorarrayv2read_tensorlistgetitem_gru_97_tensorarrayunstack_tensorlistfromtensorJ
7gru_97_while_gru_cell_97_matmul_readvariableop_resource:	ØG
8gru_97_while_gru_cell_97_biasadd_readvariableop_resource:	ØD
0gru_97_while_gru_cell_97_readvariableop_resource:
ÈØ¢/gru_97/while/gru_cell_97/BiasAdd/ReadVariableOp¢.gru_97/while/gru_cell_97/MatMul/ReadVariableOp¢'gru_97/while/gru_cell_97/ReadVariableOp¢)gru_97/while/gru_cell_97/ReadVariableOp_1Ñ
>gru_97/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2@
>gru_97/while/TensorArrayV2Read/TensorListGetItem/element_shapeý
0gru_97/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemagru_97_while_tensorarrayv2read_tensorlistgetitem_gru_97_tensorarrayunstack_tensorlistfromtensor_0gru_97_while_placeholderGgru_97/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype022
0gru_97/while/TensorArrayV2Read/TensorListGetItemÛ
.gru_97/while/gru_cell_97/MatMul/ReadVariableOpReadVariableOp9gru_97_while_gru_cell_97_matmul_readvariableop_resource_0*
_output_shapes
:	Ø*
dtype020
.gru_97/while/gru_cell_97/MatMul/ReadVariableOpð
gru_97/while/gru_cell_97/MatMulMatMul7gru_97/while/TensorArrayV2Read/TensorListGetItem:item:06gru_97/while/gru_cell_97/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2!
gru_97/while/gru_cell_97/MatMulÚ
/gru_97/while/gru_cell_97/BiasAdd/ReadVariableOpReadVariableOp:gru_97_while_gru_cell_97_biasadd_readvariableop_resource_0*
_output_shapes	
:Ø*
dtype021
/gru_97/while/gru_cell_97/BiasAdd/ReadVariableOpæ
 gru_97/while/gru_cell_97/BiasAddBiasAdd)gru_97/while/gru_cell_97/MatMul:product:07gru_97/while/gru_cell_97/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2"
 gru_97/while/gru_cell_97/BiasAdd
(gru_97/while/gru_cell_97/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2*
(gru_97/while/gru_cell_97/split/split_dim
gru_97/while/gru_cell_97/splitSplit1gru_97/while/gru_cell_97/split/split_dim:output:0)gru_97/while/gru_cell_97/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2 
gru_97/while/gru_cell_97/splitÇ
'gru_97/while/gru_cell_97/ReadVariableOpReadVariableOp2gru_97_while_gru_cell_97_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02)
'gru_97/while/gru_cell_97/ReadVariableOp­
,gru_97/while/gru_cell_97/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2.
,gru_97/while/gru_cell_97/strided_slice/stack±
.gru_97/while/gru_cell_97/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      20
.gru_97/while/gru_cell_97/strided_slice/stack_1±
.gru_97/while/gru_cell_97/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.gru_97/while/gru_cell_97/strided_slice/stack_2
&gru_97/while/gru_cell_97/strided_sliceStridedSlice/gru_97/while/gru_cell_97/ReadVariableOp:value:05gru_97/while/gru_cell_97/strided_slice/stack:output:07gru_97/while/gru_cell_97/strided_slice/stack_1:output:07gru_97/while/gru_cell_97/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2(
&gru_97/while/gru_cell_97/strided_sliceÐ
!gru_97/while/gru_cell_97/MatMul_1MatMulgru_97_while_placeholder_2/gru_97/while/gru_cell_97/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!gru_97/while/gru_cell_97/MatMul_1
gru_97/while/gru_cell_97/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2 
gru_97/while/gru_cell_97/Const£
*gru_97/while/gru_cell_97/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2,
*gru_97/while/gru_cell_97/split_1/split_dimÎ
 gru_97/while/gru_cell_97/split_1SplitV+gru_97/while/gru_cell_97/MatMul_1:product:0'gru_97/while/gru_cell_97/Const:output:03gru_97/while/gru_cell_97/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2"
 gru_97/while/gru_cell_97/split_1Ì
gru_97/while/gru_cell_97/addAddV2'gru_97/while/gru_cell_97/split:output:0)gru_97/while/gru_cell_97/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_97/while/gru_cell_97/add¤
 gru_97/while/gru_cell_97/SigmoidSigmoid gru_97/while/gru_cell_97/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2"
 gru_97/while/gru_cell_97/SigmoidÐ
gru_97/while/gru_cell_97/add_1AddV2'gru_97/while/gru_cell_97/split:output:1)gru_97/while/gru_cell_97/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2 
gru_97/while/gru_cell_97/add_1ª
"gru_97/while/gru_cell_97/Sigmoid_1Sigmoid"gru_97/while/gru_cell_97/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2$
"gru_97/while/gru_cell_97/Sigmoid_1º
gru_97/while/gru_cell_97/mulMul&gru_97/while/gru_cell_97/Sigmoid_1:y:0gru_97_while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_97/while/gru_cell_97/mulË
)gru_97/while/gru_cell_97/ReadVariableOp_1ReadVariableOp2gru_97_while_gru_cell_97_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype02+
)gru_97/while/gru_cell_97/ReadVariableOp_1±
.gru_97/while/gru_cell_97/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      20
.gru_97/while/gru_cell_97/strided_slice_1/stackµ
0gru_97/while/gru_cell_97/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        22
0gru_97/while/gru_cell_97/strided_slice_1/stack_1µ
0gru_97/while/gru_cell_97/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0gru_97/while/gru_cell_97/strided_slice_1/stack_2 
(gru_97/while/gru_cell_97/strided_slice_1StridedSlice1gru_97/while/gru_cell_97/ReadVariableOp_1:value:07gru_97/while/gru_cell_97/strided_slice_1/stack:output:09gru_97/while/gru_cell_97/strided_slice_1/stack_1:output:09gru_97/while/gru_cell_97/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2*
(gru_97/while/gru_cell_97/strided_slice_1Ø
!gru_97/while/gru_cell_97/MatMul_2MatMul gru_97/while/gru_cell_97/mul:z:01gru_97/while/gru_cell_97/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2#
!gru_97/while/gru_cell_97/MatMul_2Ò
gru_97/while/gru_cell_97/add_2AddV2'gru_97/while/gru_cell_97/split:output:2+gru_97/while/gru_cell_97/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2 
gru_97/while/gru_cell_97/add_2
gru_97/while/gru_cell_97/ReluRelu"gru_97/while/gru_cell_97/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_97/while/gru_cell_97/Relu¼
gru_97/while/gru_cell_97/mul_1Mul$gru_97/while/gru_cell_97/Sigmoid:y:0gru_97_while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2 
gru_97/while/gru_cell_97/mul_1
gru_97/while/gru_cell_97/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2 
gru_97/while/gru_cell_97/sub/xÅ
gru_97/while/gru_cell_97/subSub'gru_97/while/gru_cell_97/sub/x:output:0$gru_97/while/gru_cell_97/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_97/while/gru_cell_97/subÉ
gru_97/while/gru_cell_97/mul_2Mul gru_97/while/gru_cell_97/sub:z:0+gru_97/while/gru_cell_97/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2 
gru_97/while/gru_cell_97/mul_2Ä
gru_97/while/gru_cell_97/add_3AddV2"gru_97/while/gru_cell_97/mul_1:z:0"gru_97/while/gru_cell_97/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2 
gru_97/while/gru_cell_97/add_3
1gru_97/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemgru_97_while_placeholder_1gru_97_while_placeholder"gru_97/while/gru_cell_97/add_3:z:0*
_output_shapes
: *
element_dtype023
1gru_97/while/TensorArrayV2Write/TensorListSetItemj
gru_97/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru_97/while/add/y
gru_97/while/addAddV2gru_97_while_placeholdergru_97/while/add/y:output:0*
T0*
_output_shapes
: 2
gru_97/while/addn
gru_97/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
gru_97/while/add_1/y
gru_97/while/add_1AddV2&gru_97_while_gru_97_while_loop_countergru_97/while/add_1/y:output:0*
T0*
_output_shapes
: 2
gru_97/while/add_1¬
gru_97/while/IdentityIdentitygru_97/while/add_1:z:00^gru_97/while/gru_cell_97/BiasAdd/ReadVariableOp/^gru_97/while/gru_cell_97/MatMul/ReadVariableOp(^gru_97/while/gru_cell_97/ReadVariableOp*^gru_97/while/gru_cell_97/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_97/while/IdentityÆ
gru_97/while/Identity_1Identity,gru_97_while_gru_97_while_maximum_iterations0^gru_97/while/gru_cell_97/BiasAdd/ReadVariableOp/^gru_97/while/gru_cell_97/MatMul/ReadVariableOp(^gru_97/while/gru_cell_97/ReadVariableOp*^gru_97/while/gru_cell_97/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_97/while/Identity_1®
gru_97/while/Identity_2Identitygru_97/while/add:z:00^gru_97/while/gru_cell_97/BiasAdd/ReadVariableOp/^gru_97/while/gru_cell_97/MatMul/ReadVariableOp(^gru_97/while/gru_cell_97/ReadVariableOp*^gru_97/while/gru_cell_97/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_97/while/Identity_2Û
gru_97/while/Identity_3IdentityAgru_97/while/TensorArrayV2Write/TensorListSetItem:output_handle:00^gru_97/while/gru_cell_97/BiasAdd/ReadVariableOp/^gru_97/while/gru_cell_97/MatMul/ReadVariableOp(^gru_97/while/gru_cell_97/ReadVariableOp*^gru_97/while/gru_cell_97/ReadVariableOp_1*
T0*
_output_shapes
: 2
gru_97/while/Identity_3Î
gru_97/while/Identity_4Identity"gru_97/while/gru_cell_97/add_3:z:00^gru_97/while/gru_cell_97/BiasAdd/ReadVariableOp/^gru_97/while/gru_cell_97/MatMul/ReadVariableOp(^gru_97/while/gru_cell_97/ReadVariableOp*^gru_97/while/gru_cell_97/ReadVariableOp_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_97/while/Identity_4"L
#gru_97_while_gru_97_strided_slice_1%gru_97_while_gru_97_strided_slice_1_0"v
8gru_97_while_gru_cell_97_biasadd_readvariableop_resource:gru_97_while_gru_cell_97_biasadd_readvariableop_resource_0"t
7gru_97_while_gru_cell_97_matmul_readvariableop_resource9gru_97_while_gru_cell_97_matmul_readvariableop_resource_0"f
0gru_97_while_gru_cell_97_readvariableop_resource2gru_97_while_gru_cell_97_readvariableop_resource_0"7
gru_97_while_identitygru_97/while/Identity:output:0";
gru_97_while_identity_1 gru_97/while/Identity_1:output:0";
gru_97_while_identity_2 gru_97/while/Identity_2:output:0";
gru_97_while_identity_3 gru_97/while/Identity_3:output:0";
gru_97_while_identity_4 gru_97/while/Identity_4:output:0"Ä
_gru_97_while_tensorarrayv2read_tensorlistgetitem_gru_97_tensorarrayunstack_tensorlistfromtensoragru_97_while_tensorarrayv2read_tensorlistgetitem_gru_97_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿÈ: : : : : 2b
/gru_97/while/gru_cell_97/BiasAdd/ReadVariableOp/gru_97/while/gru_cell_97/BiasAdd/ReadVariableOp2`
.gru_97/while/gru_cell_97/MatMul/ReadVariableOp.gru_97/while/gru_cell_97/MatMul/ReadVariableOp2R
'gru_97/while/gru_cell_97/ReadVariableOp'gru_97/while/gru_cell_97/ReadVariableOp2V
)gru_97/while/gru_cell_97/ReadVariableOp_1)gru_97/while/gru_cell_97/ReadVariableOp_1: 
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
H__inference_gru_cell_97_layer_call_and_return_conditional_losses_4737289

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
´

Ù
-__inference_gru_cell_97_layer_call_fn_4739601

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
H__inference_gru_cell_97_layer_call_and_return_conditional_losses_47374392
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
Ò	
÷
F__inference_dense_195_layer_call_and_return_conditional_losses_4739573

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

Å
J__inference_sequential_97_layer_call_and_return_conditional_losses_4738295

inputs!
gru_97_4738277:	Ø
gru_97_4738279:	Ø"
gru_97_4738281:
ÈØ$
dense_194_4738284:	Èd
dense_194_4738286:d#
dense_195_4738289:d
dense_195_4738291:
identity¢!dense_194/StatefulPartitionedCall¢!dense_195/StatefulPartitionedCall¢gru_97/StatefulPartitionedCall 
gru_97/StatefulPartitionedCallStatefulPartitionedCallinputsgru_97_4738277gru_97_4738279gru_97_4738281*
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
C__inference_gru_97_layer_call_and_return_conditional_losses_47382442 
gru_97/StatefulPartitionedCall½
!dense_194/StatefulPartitionedCallStatefulPartitionedCall'gru_97/StatefulPartitionedCall:output:0dense_194_4738284dense_194_4738286*
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
F__inference_dense_194_layer_call_and_return_conditional_losses_47380002#
!dense_194/StatefulPartitionedCallÀ
!dense_195/StatefulPartitionedCallStatefulPartitionedCall*dense_194/StatefulPartitionedCall:output:0dense_195_4738289dense_195_4738291*
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
F__inference_dense_195_layer_call_and_return_conditional_losses_47380162#
!dense_195/StatefulPartitionedCallç
IdentityIdentity*dense_195/StatefulPartitionedCall:output:0"^dense_194/StatefulPartitionedCall"^dense_195/StatefulPartitionedCall^gru_97/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2F
!dense_194/StatefulPartitionedCall!dense_194/StatefulPartitionedCall2F
!dense_195/StatefulPartitionedCall!dense_195/StatefulPartitionedCall2@
gru_97/StatefulPartitionedCallgru_97/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ë
¸
(__inference_gru_97_layer_call_fn_4738828
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
C__inference_gru_97_layer_call_and_return_conditional_losses_47375702
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
ë
¸
(__inference_gru_97_layer_call_fn_4738817
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
C__inference_gru_97_layer_call_and_return_conditional_losses_47373662
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
Ó
¶
(__inference_gru_97_layer_call_fn_4738850

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
C__inference_gru_97_layer_call_and_return_conditional_losses_47382442
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
Òh
£
C__inference_gru_97_layer_call_and_return_conditional_losses_4739534

inputs=
*gru_cell_97_matmul_readvariableop_resource:	Ø:
+gru_cell_97_biasadd_readvariableop_resource:	Ø7
#gru_cell_97_readvariableop_resource:
ÈØ
identity¢"gru_cell_97/BiasAdd/ReadVariableOp¢!gru_cell_97/MatMul/ReadVariableOp¢gru_cell_97/ReadVariableOp¢gru_cell_97/ReadVariableOp_1¢whileD
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
!gru_cell_97/MatMul/ReadVariableOpReadVariableOp*gru_cell_97_matmul_readvariableop_resource*
_output_shapes
:	Ø*
dtype02#
!gru_cell_97/MatMul/ReadVariableOpª
gru_cell_97/MatMulMatMulstrided_slice_2:output:0)gru_cell_97/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_cell_97/MatMul±
"gru_cell_97/BiasAdd/ReadVariableOpReadVariableOp+gru_cell_97_biasadd_readvariableop_resource*
_output_shapes	
:Ø*
dtype02$
"gru_cell_97/BiasAdd/ReadVariableOp²
gru_cell_97/BiasAddBiasAddgru_cell_97/MatMul:product:0*gru_cell_97/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_cell_97/BiasAdd
gru_cell_97/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
gru_cell_97/split/split_dimß
gru_cell_97/splitSplit$gru_cell_97/split/split_dim:output:0gru_cell_97/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
gru_cell_97/split
gru_cell_97/ReadVariableOpReadVariableOp#gru_cell_97_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02
gru_cell_97/ReadVariableOp
gru_cell_97/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
gru_cell_97/strided_slice/stack
!gru_cell_97/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2#
!gru_cell_97/strided_slice/stack_1
!gru_cell_97/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!gru_cell_97/strided_slice/stack_2Æ
gru_cell_97/strided_sliceStridedSlice"gru_cell_97/ReadVariableOp:value:0(gru_cell_97/strided_slice/stack:output:0*gru_cell_97/strided_slice/stack_1:output:0*gru_cell_97/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2
gru_cell_97/strided_slice
gru_cell_97/MatMul_1MatMulzeros:output:0"gru_cell_97/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_97/MatMul_1{
gru_cell_97/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2
gru_cell_97/Const
gru_cell_97/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
gru_cell_97/split_1/split_dim
gru_cell_97/split_1SplitVgru_cell_97/MatMul_1:product:0gru_cell_97/Const:output:0&gru_cell_97/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2
gru_cell_97/split_1
gru_cell_97/addAddV2gru_cell_97/split:output:0gru_cell_97/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_97/add}
gru_cell_97/SigmoidSigmoidgru_cell_97/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_97/Sigmoid
gru_cell_97/add_1AddV2gru_cell_97/split:output:1gru_cell_97/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_97/add_1
gru_cell_97/Sigmoid_1Sigmoidgru_cell_97/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_97/Sigmoid_1
gru_cell_97/mulMulgru_cell_97/Sigmoid_1:y:0zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_97/mul¢
gru_cell_97/ReadVariableOp_1ReadVariableOp#gru_cell_97_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02
gru_cell_97/ReadVariableOp_1
!gru_cell_97/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2#
!gru_cell_97/strided_slice_1/stack
#gru_cell_97/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#gru_cell_97/strided_slice_1/stack_1
#gru_cell_97/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gru_cell_97/strided_slice_1/stack_2Ò
gru_cell_97/strided_slice_1StridedSlice$gru_cell_97/ReadVariableOp_1:value:0*gru_cell_97/strided_slice_1/stack:output:0,gru_cell_97/strided_slice_1/stack_1:output:0,gru_cell_97/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2
gru_cell_97/strided_slice_1¤
gru_cell_97/MatMul_2MatMulgru_cell_97/mul:z:0$gru_cell_97/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_97/MatMul_2
gru_cell_97/add_2AddV2gru_cell_97/split:output:2gru_cell_97/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_97/add_2v
gru_cell_97/ReluRelugru_cell_97/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_97/Relu
gru_cell_97/mul_1Mulgru_cell_97/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_97/mul_1k
gru_cell_97/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_97/sub/x
gru_cell_97/subSubgru_cell_97/sub/x:output:0gru_cell_97/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_97/sub
gru_cell_97/mul_2Mulgru_cell_97/sub:z:0gru_cell_97/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_97/mul_2
gru_cell_97/add_3AddV2gru_cell_97/mul_1:z:0gru_cell_97/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_97/add_3
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*gru_cell_97_matmul_readvariableop_resource+gru_cell_97_biasadd_readvariableop_resource#gru_cell_97_readvariableop_resource*
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
while_body_4739438*
condR
while_cond_4739437*9
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
IdentityIdentitystrided_slice_3:output:0#^gru_cell_97/BiasAdd/ReadVariableOp"^gru_cell_97/MatMul/ReadVariableOp^gru_cell_97/ReadVariableOp^gru_cell_97/ReadVariableOp_1^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2H
"gru_cell_97/BiasAdd/ReadVariableOp"gru_cell_97/BiasAdd/ReadVariableOp2F
!gru_cell_97/MatMul/ReadVariableOp!gru_cell_97/MatMul/ReadVariableOp28
gru_cell_97/ReadVariableOpgru_cell_97/ReadVariableOp2<
gru_cell_97/ReadVariableOp_1gru_cell_97/ReadVariableOp_12
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Í	
´
gru_97_while_cond_4738696*
&gru_97_while_gru_97_while_loop_counter0
,gru_97_while_gru_97_while_maximum_iterations
gru_97_while_placeholder
gru_97_while_placeholder_1
gru_97_while_placeholder_2,
(gru_97_while_less_gru_97_strided_slice_1C
?gru_97_while_gru_97_while_cond_4738696___redundant_placeholder0C
?gru_97_while_gru_97_while_cond_4738696___redundant_placeholder1C
?gru_97_while_gru_97_while_cond_4738696___redundant_placeholder2C
?gru_97_while_gru_97_while_cond_4738696___redundant_placeholder3
gru_97_while_identity

gru_97/while/LessLessgru_97_while_placeholder(gru_97_while_less_gru_97_strided_slice_1*
T0*
_output_shapes
: 2
gru_97/while/Lessr
gru_97/while/IdentityIdentitygru_97/while/Less:z:0*
T0
*
_output_shapes
: 2
gru_97/while/Identity"7
gru_97_while_identitygru_97/while/Identity:output:0*(
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
F__inference_dense_194_layer_call_and_return_conditional_losses_4738000

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
Í	
´
gru_97_while_cond_4738512*
&gru_97_while_gru_97_while_loop_counter0
,gru_97_while_gru_97_while_maximum_iterations
gru_97_while_placeholder
gru_97_while_placeholder_1
gru_97_while_placeholder_2,
(gru_97_while_less_gru_97_strided_slice_1C
?gru_97_while_gru_97_while_cond_4738512___redundant_placeholder0C
?gru_97_while_gru_97_while_cond_4738512___redundant_placeholder1C
?gru_97_while_gru_97_while_cond_4738512___redundant_placeholder2C
?gru_97_while_gru_97_while_cond_4738512___redundant_placeholder3
gru_97_while_identity

gru_97/while/LessLessgru_97_while_placeholder(gru_97_while_less_gru_97_strided_slice_1*
T0*
_output_shapes
: 2
gru_97/while/Lessr
gru_97/while/IdentityIdentitygru_97/while/Less:z:0*
T0
*
_output_shapes
: 2
gru_97/while/Identity"7
gru_97_while_identitygru_97/while/Identity:output:0*(
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
C__inference_gru_97_layer_call_and_return_conditional_losses_4737366

inputs&
gru_cell_97_4737290:	Ø"
gru_cell_97_4737292:	Ø'
gru_cell_97_4737294:
ÈØ
identity¢#gru_cell_97/StatefulPartitionedCall¢whileD
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
#gru_cell_97/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0gru_cell_97_4737290gru_cell_97_4737292gru_cell_97_4737294*
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
H__inference_gru_cell_97_layer_call_and_return_conditional_losses_47372892%
#gru_cell_97/StatefulPartitionedCall
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0gru_cell_97_4737290gru_cell_97_4737292gru_cell_97_4737294*
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
while_body_4737302*
condR
while_cond_4737301*9
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
IdentityIdentitystrided_slice_3:output:0$^gru_cell_97/StatefulPartitionedCall^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2J
#gru_cell_97/StatefulPartitionedCall#gru_cell_97/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
i
¥
C__inference_gru_97_layer_call_and_return_conditional_losses_4739021
inputs_0=
*gru_cell_97_matmul_readvariableop_resource:	Ø:
+gru_cell_97_biasadd_readvariableop_resource:	Ø7
#gru_cell_97_readvariableop_resource:
ÈØ
identity¢"gru_cell_97/BiasAdd/ReadVariableOp¢!gru_cell_97/MatMul/ReadVariableOp¢gru_cell_97/ReadVariableOp¢gru_cell_97/ReadVariableOp_1¢whileF
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
!gru_cell_97/MatMul/ReadVariableOpReadVariableOp*gru_cell_97_matmul_readvariableop_resource*
_output_shapes
:	Ø*
dtype02#
!gru_cell_97/MatMul/ReadVariableOpª
gru_cell_97/MatMulMatMulstrided_slice_2:output:0)gru_cell_97/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_cell_97/MatMul±
"gru_cell_97/BiasAdd/ReadVariableOpReadVariableOp+gru_cell_97_biasadd_readvariableop_resource*
_output_shapes	
:Ø*
dtype02$
"gru_cell_97/BiasAdd/ReadVariableOp²
gru_cell_97/BiasAddBiasAddgru_cell_97/MatMul:product:0*gru_cell_97/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_cell_97/BiasAdd
gru_cell_97/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
gru_cell_97/split/split_dimß
gru_cell_97/splitSplit$gru_cell_97/split/split_dim:output:0gru_cell_97/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
gru_cell_97/split
gru_cell_97/ReadVariableOpReadVariableOp#gru_cell_97_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02
gru_cell_97/ReadVariableOp
gru_cell_97/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
gru_cell_97/strided_slice/stack
!gru_cell_97/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2#
!gru_cell_97/strided_slice/stack_1
!gru_cell_97/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!gru_cell_97/strided_slice/stack_2Æ
gru_cell_97/strided_sliceStridedSlice"gru_cell_97/ReadVariableOp:value:0(gru_cell_97/strided_slice/stack:output:0*gru_cell_97/strided_slice/stack_1:output:0*gru_cell_97/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2
gru_cell_97/strided_slice
gru_cell_97/MatMul_1MatMulzeros:output:0"gru_cell_97/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_cell_97/MatMul_1{
gru_cell_97/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2
gru_cell_97/Const
gru_cell_97/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
gru_cell_97/split_1/split_dim
gru_cell_97/split_1SplitVgru_cell_97/MatMul_1:product:0gru_cell_97/Const:output:0&gru_cell_97/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2
gru_cell_97/split_1
gru_cell_97/addAddV2gru_cell_97/split:output:0gru_cell_97/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_97/add}
gru_cell_97/SigmoidSigmoidgru_cell_97/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_97/Sigmoid
gru_cell_97/add_1AddV2gru_cell_97/split:output:1gru_cell_97/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_97/add_1
gru_cell_97/Sigmoid_1Sigmoidgru_cell_97/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_97/Sigmoid_1
gru_cell_97/mulMulgru_cell_97/Sigmoid_1:y:0zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_97/mul¢
gru_cell_97/ReadVariableOp_1ReadVariableOp#gru_cell_97_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02
gru_cell_97/ReadVariableOp_1
!gru_cell_97/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2#
!gru_cell_97/strided_slice_1/stack
#gru_cell_97/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#gru_cell_97/strided_slice_1/stack_1
#gru_cell_97/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#gru_cell_97/strided_slice_1/stack_2Ò
gru_cell_97/strided_slice_1StridedSlice$gru_cell_97/ReadVariableOp_1:value:0*gru_cell_97/strided_slice_1/stack:output:0,gru_cell_97/strided_slice_1/stack_1:output:0,gru_cell_97/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2
gru_cell_97/strided_slice_1¤
gru_cell_97/MatMul_2MatMulgru_cell_97/mul:z:0$gru_cell_97/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_97/MatMul_2
gru_cell_97/add_2AddV2gru_cell_97/split:output:2gru_cell_97/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_97/add_2v
gru_cell_97/ReluRelugru_cell_97/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_97/Relu
gru_cell_97/mul_1Mulgru_cell_97/Sigmoid:y:0zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_97/mul_1k
gru_cell_97/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_cell_97/sub/x
gru_cell_97/subSubgru_cell_97/sub/x:output:0gru_cell_97/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_97/sub
gru_cell_97/mul_2Mulgru_cell_97/sub:z:0gru_cell_97/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_97/mul_2
gru_cell_97/add_3AddV2gru_cell_97/mul_1:z:0gru_cell_97/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_cell_97/add_3
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*gru_cell_97_matmul_readvariableop_resource+gru_cell_97_biasadd_readvariableop_resource#gru_cell_97_readvariableop_resource*
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
while_body_4738925*
condR
while_cond_4738924*9
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
IdentityIdentitystrided_slice_3:output:0#^gru_cell_97/BiasAdd/ReadVariableOp"^gru_cell_97/MatMul/ReadVariableOp^gru_cell_97/ReadVariableOp^gru_cell_97/ReadVariableOp_1^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2H
"gru_cell_97/BiasAdd/ReadVariableOp"gru_cell_97/BiasAdd/ReadVariableOp2F
!gru_cell_97/MatMul/ReadVariableOp!gru_cell_97/MatMul/ReadVariableOp28
gru_cell_97/ReadVariableOpgru_cell_97/ReadVariableOp2<
gru_cell_97/ReadVariableOp_1gru_cell_97/ReadVariableOp_12
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0


+__inference_dense_195_layer_call_fn_4739563

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
F__inference_dense_195_layer_call_and_return_conditional_losses_47380162
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
Ý*
ê
H__inference_gru_cell_97_layer_call_and_return_conditional_losses_4739647

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
öA
Ý
 __inference__traced_save_4739800
file_prefix/
+savev2_dense_194_kernel_read_readvariableop-
)savev2_dense_194_bias_read_readvariableop/
+savev2_dense_195_kernel_read_readvariableop-
)savev2_dense_195_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop8
4savev2_gru_97_gru_cell_97_kernel_read_readvariableopB
>savev2_gru_97_gru_cell_97_recurrent_kernel_read_readvariableop6
2savev2_gru_97_gru_cell_97_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_194_kernel_m_read_readvariableop4
0savev2_adam_dense_194_bias_m_read_readvariableop6
2savev2_adam_dense_195_kernel_m_read_readvariableop4
0savev2_adam_dense_195_bias_m_read_readvariableop?
;savev2_adam_gru_97_gru_cell_97_kernel_m_read_readvariableopI
Esavev2_adam_gru_97_gru_cell_97_recurrent_kernel_m_read_readvariableop=
9savev2_adam_gru_97_gru_cell_97_bias_m_read_readvariableop6
2savev2_adam_dense_194_kernel_v_read_readvariableop4
0savev2_adam_dense_194_bias_v_read_readvariableop6
2savev2_adam_dense_195_kernel_v_read_readvariableop4
0savev2_adam_dense_195_bias_v_read_readvariableop?
;savev2_adam_gru_97_gru_cell_97_kernel_v_read_readvariableopI
Esavev2_adam_gru_97_gru_cell_97_recurrent_kernel_v_read_readvariableop=
9savev2_adam_gru_97_gru_cell_97_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_194_kernel_read_readvariableop)savev2_dense_194_bias_read_readvariableop+savev2_dense_195_kernel_read_readvariableop)savev2_dense_195_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop4savev2_gru_97_gru_cell_97_kernel_read_readvariableop>savev2_gru_97_gru_cell_97_recurrent_kernel_read_readvariableop2savev2_gru_97_gru_cell_97_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_194_kernel_m_read_readvariableop0savev2_adam_dense_194_bias_m_read_readvariableop2savev2_adam_dense_195_kernel_m_read_readvariableop0savev2_adam_dense_195_bias_m_read_readvariableop;savev2_adam_gru_97_gru_cell_97_kernel_m_read_readvariableopEsavev2_adam_gru_97_gru_cell_97_recurrent_kernel_m_read_readvariableop9savev2_adam_gru_97_gru_cell_97_bias_m_read_readvariableop2savev2_adam_dense_194_kernel_v_read_readvariableop0savev2_adam_dense_194_bias_v_read_readvariableop2savev2_adam_dense_195_kernel_v_read_readvariableop0savev2_adam_dense_195_bias_v_read_readvariableop;savev2_adam_gru_97_gru_cell_97_kernel_v_read_readvariableopEsavev2_adam_gru_97_gru_cell_97_recurrent_kernel_v_read_readvariableop9savev2_adam_gru_97_gru_cell_97_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
: 

Ë
J__inference_sequential_97_layer_call_and_return_conditional_losses_4738352
gru_97_input!
gru_97_4738334:	Ø
gru_97_4738336:	Ø"
gru_97_4738338:
ÈØ$
dense_194_4738341:	Èd
dense_194_4738343:d#
dense_195_4738346:d
dense_195_4738348:
identity¢!dense_194/StatefulPartitionedCall¢!dense_195/StatefulPartitionedCall¢gru_97/StatefulPartitionedCall¦
gru_97/StatefulPartitionedCallStatefulPartitionedCallgru_97_inputgru_97_4738334gru_97_4738336gru_97_4738338*
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
C__inference_gru_97_layer_call_and_return_conditional_losses_47379812 
gru_97/StatefulPartitionedCall½
!dense_194/StatefulPartitionedCallStatefulPartitionedCall'gru_97/StatefulPartitionedCall:output:0dense_194_4738341dense_194_4738343*
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
F__inference_dense_194_layer_call_and_return_conditional_losses_47380002#
!dense_194/StatefulPartitionedCallÀ
!dense_195/StatefulPartitionedCallStatefulPartitionedCall*dense_194/StatefulPartitionedCall:output:0dense_195_4738346dense_195_4738348*
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
F__inference_dense_195_layer_call_and_return_conditional_losses_47380162#
!dense_195/StatefulPartitionedCallç
IdentityIdentity*dense_195/StatefulPartitionedCall:output:0"^dense_194/StatefulPartitionedCall"^dense_195/StatefulPartitionedCall^gru_97/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2F
!dense_194/StatefulPartitionedCall!dense_194/StatefulPartitionedCall2F
!dense_195/StatefulPartitionedCall!dense_195/StatefulPartitionedCall2@
gru_97/StatefulPartitionedCallgru_97/StatefulPartitionedCall:Y U
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&
_user_specified_namegru_97_input
µ
×
J__inference_sequential_97_layer_call_and_return_conditional_losses_4738622

inputsD
1gru_97_gru_cell_97_matmul_readvariableop_resource:	ØA
2gru_97_gru_cell_97_biasadd_readvariableop_resource:	Ø>
*gru_97_gru_cell_97_readvariableop_resource:
ÈØ;
(dense_194_matmul_readvariableop_resource:	Èd7
)dense_194_biasadd_readvariableop_resource:d:
(dense_195_matmul_readvariableop_resource:d7
)dense_195_biasadd_readvariableop_resource:
identity¢ dense_194/BiasAdd/ReadVariableOp¢dense_194/MatMul/ReadVariableOp¢ dense_195/BiasAdd/ReadVariableOp¢dense_195/MatMul/ReadVariableOp¢)gru_97/gru_cell_97/BiasAdd/ReadVariableOp¢(gru_97/gru_cell_97/MatMul/ReadVariableOp¢!gru_97/gru_cell_97/ReadVariableOp¢#gru_97/gru_cell_97/ReadVariableOp_1¢gru_97/whileR
gru_97/ShapeShapeinputs*
T0*
_output_shapes
:2
gru_97/Shape
gru_97/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_97/strided_slice/stack
gru_97/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_97/strided_slice/stack_1
gru_97/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_97/strided_slice/stack_2
gru_97/strided_sliceStridedSlicegru_97/Shape:output:0#gru_97/strided_slice/stack:output:0%gru_97/strided_slice/stack_1:output:0%gru_97/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru_97/strided_slicek
gru_97/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :È2
gru_97/zeros/mul/y
gru_97/zeros/mulMulgru_97/strided_slice:output:0gru_97/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
gru_97/zeros/mulm
gru_97/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
gru_97/zeros/Less/y
gru_97/zeros/LessLessgru_97/zeros/mul:z:0gru_97/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
gru_97/zeros/Lessq
gru_97/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :È2
gru_97/zeros/packed/1
gru_97/zeros/packedPackgru_97/strided_slice:output:0gru_97/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
gru_97/zeros/packedm
gru_97/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_97/zeros/Const
gru_97/zerosFillgru_97/zeros/packed:output:0gru_97/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_97/zeros
gru_97/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_97/transpose/perm
gru_97/transpose	Transposeinputsgru_97/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_97/transposed
gru_97/Shape_1Shapegru_97/transpose:y:0*
T0*
_output_shapes
:2
gru_97/Shape_1
gru_97/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_97/strided_slice_1/stack
gru_97/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
gru_97/strided_slice_1/stack_1
gru_97/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
gru_97/strided_slice_1/stack_2
gru_97/strided_slice_1StridedSlicegru_97/Shape_1:output:0%gru_97/strided_slice_1/stack:output:0'gru_97/strided_slice_1/stack_1:output:0'gru_97/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru_97/strided_slice_1
"gru_97/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2$
"gru_97/TensorArrayV2/element_shapeÎ
gru_97/TensorArrayV2TensorListReserve+gru_97/TensorArrayV2/element_shape:output:0gru_97/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_97/TensorArrayV2Í
<gru_97/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2>
<gru_97/TensorArrayUnstack/TensorListFromTensor/element_shape
.gru_97/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorgru_97/transpose:y:0Egru_97/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.gru_97/TensorArrayUnstack/TensorListFromTensor
gru_97/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_97/strided_slice_2/stack
gru_97/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
gru_97/strided_slice_2/stack_1
gru_97/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
gru_97/strided_slice_2/stack_2¦
gru_97/strided_slice_2StridedSlicegru_97/transpose:y:0%gru_97/strided_slice_2/stack:output:0'gru_97/strided_slice_2/stack_1:output:0'gru_97/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
gru_97/strided_slice_2Ç
(gru_97/gru_cell_97/MatMul/ReadVariableOpReadVariableOp1gru_97_gru_cell_97_matmul_readvariableop_resource*
_output_shapes
:	Ø*
dtype02*
(gru_97/gru_cell_97/MatMul/ReadVariableOpÆ
gru_97/gru_cell_97/MatMulMatMulgru_97/strided_slice_2:output:00gru_97/gru_cell_97/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_97/gru_cell_97/MatMulÆ
)gru_97/gru_cell_97/BiasAdd/ReadVariableOpReadVariableOp2gru_97_gru_cell_97_biasadd_readvariableop_resource*
_output_shapes	
:Ø*
dtype02+
)gru_97/gru_cell_97/BiasAdd/ReadVariableOpÎ
gru_97/gru_cell_97/BiasAddBiasAdd#gru_97/gru_cell_97/MatMul:product:01gru_97/gru_cell_97/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_97/gru_cell_97/BiasAdd
"gru_97/gru_cell_97/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2$
"gru_97/gru_cell_97/split/split_dimû
gru_97/gru_cell_97/splitSplit+gru_97/gru_cell_97/split/split_dim:output:0#gru_97/gru_cell_97/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
gru_97/gru_cell_97/split³
!gru_97/gru_cell_97/ReadVariableOpReadVariableOp*gru_97_gru_cell_97_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02#
!gru_97/gru_cell_97/ReadVariableOp¡
&gru_97/gru_cell_97/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&gru_97/gru_cell_97/strided_slice/stack¥
(gru_97/gru_cell_97/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2*
(gru_97/gru_cell_97/strided_slice/stack_1¥
(gru_97/gru_cell_97/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(gru_97/gru_cell_97/strided_slice/stack_2ð
 gru_97/gru_cell_97/strided_sliceStridedSlice)gru_97/gru_cell_97/ReadVariableOp:value:0/gru_97/gru_cell_97/strided_slice/stack:output:01gru_97/gru_cell_97/strided_slice/stack_1:output:01gru_97/gru_cell_97/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2"
 gru_97/gru_cell_97/strided_slice¹
gru_97/gru_cell_97/MatMul_1MatMulgru_97/zeros:output:0)gru_97/gru_cell_97/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_97/gru_cell_97/MatMul_1
gru_97/gru_cell_97/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2
gru_97/gru_cell_97/Const
$gru_97/gru_cell_97/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2&
$gru_97/gru_cell_97/split_1/split_dim°
gru_97/gru_cell_97/split_1SplitV%gru_97/gru_cell_97/MatMul_1:product:0!gru_97/gru_cell_97/Const:output:0-gru_97/gru_cell_97/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2
gru_97/gru_cell_97/split_1´
gru_97/gru_cell_97/addAddV2!gru_97/gru_cell_97/split:output:0#gru_97/gru_cell_97/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_97/gru_cell_97/add
gru_97/gru_cell_97/SigmoidSigmoidgru_97/gru_cell_97/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_97/gru_cell_97/Sigmoid¸
gru_97/gru_cell_97/add_1AddV2!gru_97/gru_cell_97/split:output:1#gru_97/gru_cell_97/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_97/gru_cell_97/add_1
gru_97/gru_cell_97/Sigmoid_1Sigmoidgru_97/gru_cell_97/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_97/gru_cell_97/Sigmoid_1£
gru_97/gru_cell_97/mulMul gru_97/gru_cell_97/Sigmoid_1:y:0gru_97/zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_97/gru_cell_97/mul·
#gru_97/gru_cell_97/ReadVariableOp_1ReadVariableOp*gru_97_gru_cell_97_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02%
#gru_97/gru_cell_97/ReadVariableOp_1¥
(gru_97/gru_cell_97/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2*
(gru_97/gru_cell_97/strided_slice_1/stack©
*gru_97/gru_cell_97/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*gru_97/gru_cell_97/strided_slice_1/stack_1©
*gru_97/gru_cell_97/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*gru_97/gru_cell_97/strided_slice_1/stack_2ü
"gru_97/gru_cell_97/strided_slice_1StridedSlice+gru_97/gru_cell_97/ReadVariableOp_1:value:01gru_97/gru_cell_97/strided_slice_1/stack:output:03gru_97/gru_cell_97/strided_slice_1/stack_1:output:03gru_97/gru_cell_97/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2$
"gru_97/gru_cell_97/strided_slice_1À
gru_97/gru_cell_97/MatMul_2MatMulgru_97/gru_cell_97/mul:z:0+gru_97/gru_cell_97/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_97/gru_cell_97/MatMul_2º
gru_97/gru_cell_97/add_2AddV2!gru_97/gru_cell_97/split:output:2%gru_97/gru_cell_97/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_97/gru_cell_97/add_2
gru_97/gru_cell_97/ReluRelugru_97/gru_cell_97/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_97/gru_cell_97/Relu¥
gru_97/gru_cell_97/mul_1Mulgru_97/gru_cell_97/Sigmoid:y:0gru_97/zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_97/gru_cell_97/mul_1y
gru_97/gru_cell_97/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_97/gru_cell_97/sub/x­
gru_97/gru_cell_97/subSub!gru_97/gru_cell_97/sub/x:output:0gru_97/gru_cell_97/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_97/gru_cell_97/sub±
gru_97/gru_cell_97/mul_2Mulgru_97/gru_cell_97/sub:z:0%gru_97/gru_cell_97/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_97/gru_cell_97/mul_2¬
gru_97/gru_cell_97/add_3AddV2gru_97/gru_cell_97/mul_1:z:0gru_97/gru_cell_97/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_97/gru_cell_97/add_3
$gru_97/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÈ   2&
$gru_97/TensorArrayV2_1/element_shapeÔ
gru_97/TensorArrayV2_1TensorListReserve-gru_97/TensorArrayV2_1/element_shape:output:0gru_97/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_97/TensorArrayV2_1\
gru_97/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
gru_97/time
gru_97/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2!
gru_97/while/maximum_iterationsx
gru_97/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
gru_97/while/loop_counter
gru_97/whileWhile"gru_97/while/loop_counter:output:0(gru_97/while/maximum_iterations:output:0gru_97/time:output:0gru_97/TensorArrayV2_1:handle:0gru_97/zeros:output:0gru_97/strided_slice_1:output:0>gru_97/TensorArrayUnstack/TensorListFromTensor:output_handle:01gru_97_gru_cell_97_matmul_readvariableop_resource2gru_97_gru_cell_97_biasadd_readvariableop_resource*gru_97_gru_cell_97_readvariableop_resource*
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
gru_97_while_body_4738513*%
condR
gru_97_while_cond_4738512*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿÈ: : : : : *
parallel_iterations 2
gru_97/whileÃ
7gru_97/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÈ   29
7gru_97/TensorArrayV2Stack/TensorListStack/element_shape
)gru_97/TensorArrayV2Stack/TensorListStackTensorListStackgru_97/while:output:3@gru_97/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*
element_dtype02+
)gru_97/TensorArrayV2Stack/TensorListStack
gru_97/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
gru_97/strided_slice_3/stack
gru_97/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
gru_97/strided_slice_3/stack_1
gru_97/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
gru_97/strided_slice_3/stack_2Å
gru_97/strided_slice_3StridedSlice2gru_97/TensorArrayV2Stack/TensorListStack:tensor:0%gru_97/strided_slice_3/stack:output:0'gru_97/strided_slice_3/stack_1:output:0'gru_97/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*
shrink_axis_mask2
gru_97/strided_slice_3
gru_97/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_97/transpose_1/permÂ
gru_97/transpose_1	Transpose2gru_97/TensorArrayV2Stack/TensorListStack:tensor:0 gru_97/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_97/transpose_1t
gru_97/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_97/runtime¬
dense_194/MatMul/ReadVariableOpReadVariableOp(dense_194_matmul_readvariableop_resource*
_output_shapes
:	Èd*
dtype02!
dense_194/MatMul/ReadVariableOpª
dense_194/MatMulMatMulgru_97/strided_slice_3:output:0'dense_194/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dense_194/MatMulª
 dense_194/BiasAdd/ReadVariableOpReadVariableOp)dense_194_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02"
 dense_194/BiasAdd/ReadVariableOp©
dense_194/BiasAddBiasAdddense_194/MatMul:product:0(dense_194/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dense_194/BiasAddv
dense_194/ReluReludense_194/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dense_194/Relu«
dense_195/MatMul/ReadVariableOpReadVariableOp(dense_195_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02!
dense_195/MatMul/ReadVariableOp§
dense_195/MatMulMatMuldense_194/Relu:activations:0'dense_195/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_195/MatMulª
 dense_195/BiasAdd/ReadVariableOpReadVariableOp)dense_195_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_195/BiasAdd/ReadVariableOp©
dense_195/BiasAddBiasAdddense_195/MatMul:product:0(dense_195/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_195/BiasAdd¨
IdentityIdentitydense_195/BiasAdd:output:0!^dense_194/BiasAdd/ReadVariableOp ^dense_194/MatMul/ReadVariableOp!^dense_195/BiasAdd/ReadVariableOp ^dense_195/MatMul/ReadVariableOp*^gru_97/gru_cell_97/BiasAdd/ReadVariableOp)^gru_97/gru_cell_97/MatMul/ReadVariableOp"^gru_97/gru_cell_97/ReadVariableOp$^gru_97/gru_cell_97/ReadVariableOp_1^gru_97/while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2D
 dense_194/BiasAdd/ReadVariableOp dense_194/BiasAdd/ReadVariableOp2B
dense_194/MatMul/ReadVariableOpdense_194/MatMul/ReadVariableOp2D
 dense_195/BiasAdd/ReadVariableOp dense_195/BiasAdd/ReadVariableOp2B
dense_195/MatMul/ReadVariableOpdense_195/MatMul/ReadVariableOp2V
)gru_97/gru_cell_97/BiasAdd/ReadVariableOp)gru_97/gru_cell_97/BiasAdd/ReadVariableOp2T
(gru_97/gru_cell_97/MatMul/ReadVariableOp(gru_97/gru_cell_97/MatMul/ReadVariableOp2F
!gru_97/gru_cell_97/ReadVariableOp!gru_97/gru_cell_97/ReadVariableOp2J
#gru_97/gru_cell_97/ReadVariableOp_1#gru_97/gru_cell_97/ReadVariableOp_12
gru_97/whilegru_97/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

¯
while_cond_4737301
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_4737301___redundant_placeholder05
1while_while_cond_4737301___redundant_placeholder15
1while_while_cond_4737301___redundant_placeholder25
1while_while_cond_4737301___redundant_placeholder3
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
 ¬

"__inference__wrapped_model_4737208
gru_97_inputR
?sequential_97_gru_97_gru_cell_97_matmul_readvariableop_resource:	ØO
@sequential_97_gru_97_gru_cell_97_biasadd_readvariableop_resource:	ØL
8sequential_97_gru_97_gru_cell_97_readvariableop_resource:
ÈØI
6sequential_97_dense_194_matmul_readvariableop_resource:	ÈdE
7sequential_97_dense_194_biasadd_readvariableop_resource:dH
6sequential_97_dense_195_matmul_readvariableop_resource:dE
7sequential_97_dense_195_biasadd_readvariableop_resource:
identity¢.sequential_97/dense_194/BiasAdd/ReadVariableOp¢-sequential_97/dense_194/MatMul/ReadVariableOp¢.sequential_97/dense_195/BiasAdd/ReadVariableOp¢-sequential_97/dense_195/MatMul/ReadVariableOp¢7sequential_97/gru_97/gru_cell_97/BiasAdd/ReadVariableOp¢6sequential_97/gru_97/gru_cell_97/MatMul/ReadVariableOp¢/sequential_97/gru_97/gru_cell_97/ReadVariableOp¢1sequential_97/gru_97/gru_cell_97/ReadVariableOp_1¢sequential_97/gru_97/whilet
sequential_97/gru_97/ShapeShapegru_97_input*
T0*
_output_shapes
:2
sequential_97/gru_97/Shape
(sequential_97/gru_97/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(sequential_97/gru_97/strided_slice/stack¢
*sequential_97/gru_97/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_97/gru_97/strided_slice/stack_1¢
*sequential_97/gru_97/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*sequential_97/gru_97/strided_slice/stack_2à
"sequential_97/gru_97/strided_sliceStridedSlice#sequential_97/gru_97/Shape:output:01sequential_97/gru_97/strided_slice/stack:output:03sequential_97/gru_97/strided_slice/stack_1:output:03sequential_97/gru_97/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"sequential_97/gru_97/strided_slice
 sequential_97/gru_97/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :È2"
 sequential_97/gru_97/zeros/mul/yÀ
sequential_97/gru_97/zeros/mulMul+sequential_97/gru_97/strided_slice:output:0)sequential_97/gru_97/zeros/mul/y:output:0*
T0*
_output_shapes
: 2 
sequential_97/gru_97/zeros/mul
!sequential_97/gru_97/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2#
!sequential_97/gru_97/zeros/Less/y»
sequential_97/gru_97/zeros/LessLess"sequential_97/gru_97/zeros/mul:z:0*sequential_97/gru_97/zeros/Less/y:output:0*
T0*
_output_shapes
: 2!
sequential_97/gru_97/zeros/Less
#sequential_97/gru_97/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :È2%
#sequential_97/gru_97/zeros/packed/1×
!sequential_97/gru_97/zeros/packedPack+sequential_97/gru_97/strided_slice:output:0,sequential_97/gru_97/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2#
!sequential_97/gru_97/zeros/packed
 sequential_97/gru_97/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2"
 sequential_97/gru_97/zeros/ConstÊ
sequential_97/gru_97/zerosFill*sequential_97/gru_97/zeros/packed:output:0)sequential_97/gru_97/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
sequential_97/gru_97/zeros
#sequential_97/gru_97/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2%
#sequential_97/gru_97/transpose/perm¿
sequential_97/gru_97/transpose	Transposegru_97_input,sequential_97/gru_97/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
sequential_97/gru_97/transpose
sequential_97/gru_97/Shape_1Shape"sequential_97/gru_97/transpose:y:0*
T0*
_output_shapes
:2
sequential_97/gru_97/Shape_1¢
*sequential_97/gru_97/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_97/gru_97/strided_slice_1/stack¦
,sequential_97/gru_97/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_97/gru_97/strided_slice_1/stack_1¦
,sequential_97/gru_97/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_97/gru_97/strided_slice_1/stack_2ì
$sequential_97/gru_97/strided_slice_1StridedSlice%sequential_97/gru_97/Shape_1:output:03sequential_97/gru_97/strided_slice_1/stack:output:05sequential_97/gru_97/strided_slice_1/stack_1:output:05sequential_97/gru_97/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$sequential_97/gru_97/strided_slice_1¯
0sequential_97/gru_97/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ22
0sequential_97/gru_97/TensorArrayV2/element_shape
"sequential_97/gru_97/TensorArrayV2TensorListReserve9sequential_97/gru_97/TensorArrayV2/element_shape:output:0-sequential_97/gru_97/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02$
"sequential_97/gru_97/TensorArrayV2é
Jsequential_97/gru_97/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2L
Jsequential_97/gru_97/TensorArrayUnstack/TensorListFromTensor/element_shapeÌ
<sequential_97/gru_97/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"sequential_97/gru_97/transpose:y:0Ssequential_97/gru_97/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02>
<sequential_97/gru_97/TensorArrayUnstack/TensorListFromTensor¢
*sequential_97/gru_97/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*sequential_97/gru_97/strided_slice_2/stack¦
,sequential_97/gru_97/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_97/gru_97/strided_slice_2/stack_1¦
,sequential_97/gru_97/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_97/gru_97/strided_slice_2/stack_2ú
$sequential_97/gru_97/strided_slice_2StridedSlice"sequential_97/gru_97/transpose:y:03sequential_97/gru_97/strided_slice_2/stack:output:05sequential_97/gru_97/strided_slice_2/stack_1:output:05sequential_97/gru_97/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2&
$sequential_97/gru_97/strided_slice_2ñ
6sequential_97/gru_97/gru_cell_97/MatMul/ReadVariableOpReadVariableOp?sequential_97_gru_97_gru_cell_97_matmul_readvariableop_resource*
_output_shapes
:	Ø*
dtype028
6sequential_97/gru_97/gru_cell_97/MatMul/ReadVariableOpþ
'sequential_97/gru_97/gru_cell_97/MatMulMatMul-sequential_97/gru_97/strided_slice_2:output:0>sequential_97/gru_97/gru_cell_97/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2)
'sequential_97/gru_97/gru_cell_97/MatMulð
7sequential_97/gru_97/gru_cell_97/BiasAdd/ReadVariableOpReadVariableOp@sequential_97_gru_97_gru_cell_97_biasadd_readvariableop_resource*
_output_shapes	
:Ø*
dtype029
7sequential_97/gru_97/gru_cell_97/BiasAdd/ReadVariableOp
(sequential_97/gru_97/gru_cell_97/BiasAddBiasAdd1sequential_97/gru_97/gru_cell_97/MatMul:product:0?sequential_97/gru_97/gru_cell_97/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2*
(sequential_97/gru_97/gru_cell_97/BiasAdd¯
0sequential_97/gru_97/gru_cell_97/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ22
0sequential_97/gru_97/gru_cell_97/split/split_dim³
&sequential_97/gru_97/gru_cell_97/splitSplit9sequential_97/gru_97/gru_cell_97/split/split_dim:output:01sequential_97/gru_97/gru_cell_97/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2(
&sequential_97/gru_97/gru_cell_97/splitÝ
/sequential_97/gru_97/gru_cell_97/ReadVariableOpReadVariableOp8sequential_97_gru_97_gru_cell_97_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype021
/sequential_97/gru_97/gru_cell_97/ReadVariableOp½
4sequential_97/gru_97/gru_cell_97/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        26
4sequential_97/gru_97/gru_cell_97/strided_slice/stackÁ
6sequential_97/gru_97/gru_cell_97/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      28
6sequential_97/gru_97/gru_cell_97/strided_slice/stack_1Á
6sequential_97/gru_97/gru_cell_97/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      28
6sequential_97/gru_97/gru_cell_97/strided_slice/stack_2Ä
.sequential_97/gru_97/gru_cell_97/strided_sliceStridedSlice7sequential_97/gru_97/gru_cell_97/ReadVariableOp:value:0=sequential_97/gru_97/gru_cell_97/strided_slice/stack:output:0?sequential_97/gru_97/gru_cell_97/strided_slice/stack_1:output:0?sequential_97/gru_97/gru_cell_97/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask20
.sequential_97/gru_97/gru_cell_97/strided_sliceñ
)sequential_97/gru_97/gru_cell_97/MatMul_1MatMul#sequential_97/gru_97/zeros:output:07sequential_97/gru_97/gru_cell_97/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)sequential_97/gru_97/gru_cell_97/MatMul_1¥
&sequential_97/gru_97/gru_cell_97/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2(
&sequential_97/gru_97/gru_cell_97/Const³
2sequential_97/gru_97/gru_cell_97/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ24
2sequential_97/gru_97/gru_cell_97/split_1/split_dimö
(sequential_97/gru_97/gru_cell_97/split_1SplitV3sequential_97/gru_97/gru_cell_97/MatMul_1:product:0/sequential_97/gru_97/gru_cell_97/Const:output:0;sequential_97/gru_97/gru_cell_97/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2*
(sequential_97/gru_97/gru_cell_97/split_1ì
$sequential_97/gru_97/gru_cell_97/addAddV2/sequential_97/gru_97/gru_cell_97/split:output:01sequential_97/gru_97/gru_cell_97/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2&
$sequential_97/gru_97/gru_cell_97/add¼
(sequential_97/gru_97/gru_cell_97/SigmoidSigmoid(sequential_97/gru_97/gru_cell_97/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2*
(sequential_97/gru_97/gru_cell_97/Sigmoidð
&sequential_97/gru_97/gru_cell_97/add_1AddV2/sequential_97/gru_97/gru_cell_97/split:output:11sequential_97/gru_97/gru_cell_97/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2(
&sequential_97/gru_97/gru_cell_97/add_1Â
*sequential_97/gru_97/gru_cell_97/Sigmoid_1Sigmoid*sequential_97/gru_97/gru_cell_97/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2,
*sequential_97/gru_97/gru_cell_97/Sigmoid_1Û
$sequential_97/gru_97/gru_cell_97/mulMul.sequential_97/gru_97/gru_cell_97/Sigmoid_1:y:0#sequential_97/gru_97/zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2&
$sequential_97/gru_97/gru_cell_97/mulá
1sequential_97/gru_97/gru_cell_97/ReadVariableOp_1ReadVariableOp8sequential_97_gru_97_gru_cell_97_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype023
1sequential_97/gru_97/gru_cell_97/ReadVariableOp_1Á
6sequential_97/gru_97/gru_cell_97/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      28
6sequential_97/gru_97/gru_cell_97/strided_slice_1/stackÅ
8sequential_97/gru_97/gru_cell_97/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2:
8sequential_97/gru_97/gru_cell_97/strided_slice_1/stack_1Å
8sequential_97/gru_97/gru_cell_97/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2:
8sequential_97/gru_97/gru_cell_97/strided_slice_1/stack_2Ð
0sequential_97/gru_97/gru_cell_97/strided_slice_1StridedSlice9sequential_97/gru_97/gru_cell_97/ReadVariableOp_1:value:0?sequential_97/gru_97/gru_cell_97/strided_slice_1/stack:output:0Asequential_97/gru_97/gru_cell_97/strided_slice_1/stack_1:output:0Asequential_97/gru_97/gru_cell_97/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask22
0sequential_97/gru_97/gru_cell_97/strided_slice_1ø
)sequential_97/gru_97/gru_cell_97/MatMul_2MatMul(sequential_97/gru_97/gru_cell_97/mul:z:09sequential_97/gru_97/gru_cell_97/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2+
)sequential_97/gru_97/gru_cell_97/MatMul_2ò
&sequential_97/gru_97/gru_cell_97/add_2AddV2/sequential_97/gru_97/gru_cell_97/split:output:23sequential_97/gru_97/gru_cell_97/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2(
&sequential_97/gru_97/gru_cell_97/add_2µ
%sequential_97/gru_97/gru_cell_97/ReluRelu*sequential_97/gru_97/gru_cell_97/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2'
%sequential_97/gru_97/gru_cell_97/ReluÝ
&sequential_97/gru_97/gru_cell_97/mul_1Mul,sequential_97/gru_97/gru_cell_97/Sigmoid:y:0#sequential_97/gru_97/zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2(
&sequential_97/gru_97/gru_cell_97/mul_1
&sequential_97/gru_97/gru_cell_97/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2(
&sequential_97/gru_97/gru_cell_97/sub/xå
$sequential_97/gru_97/gru_cell_97/subSub/sequential_97/gru_97/gru_cell_97/sub/x:output:0,sequential_97/gru_97/gru_cell_97/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2&
$sequential_97/gru_97/gru_cell_97/subé
&sequential_97/gru_97/gru_cell_97/mul_2Mul(sequential_97/gru_97/gru_cell_97/sub:z:03sequential_97/gru_97/gru_cell_97/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2(
&sequential_97/gru_97/gru_cell_97/mul_2ä
&sequential_97/gru_97/gru_cell_97/add_3AddV2*sequential_97/gru_97/gru_cell_97/mul_1:z:0*sequential_97/gru_97/gru_cell_97/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2(
&sequential_97/gru_97/gru_cell_97/add_3¹
2sequential_97/gru_97/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÈ   24
2sequential_97/gru_97/TensorArrayV2_1/element_shape
$sequential_97/gru_97/TensorArrayV2_1TensorListReserve;sequential_97/gru_97/TensorArrayV2_1/element_shape:output:0-sequential_97/gru_97/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02&
$sequential_97/gru_97/TensorArrayV2_1x
sequential_97/gru_97/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_97/gru_97/time©
-sequential_97/gru_97/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2/
-sequential_97/gru_97/while/maximum_iterations
'sequential_97/gru_97/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2)
'sequential_97/gru_97/while/loop_counterÓ
sequential_97/gru_97/whileWhile0sequential_97/gru_97/while/loop_counter:output:06sequential_97/gru_97/while/maximum_iterations:output:0"sequential_97/gru_97/time:output:0-sequential_97/gru_97/TensorArrayV2_1:handle:0#sequential_97/gru_97/zeros:output:0-sequential_97/gru_97/strided_slice_1:output:0Lsequential_97/gru_97/TensorArrayUnstack/TensorListFromTensor:output_handle:0?sequential_97_gru_97_gru_cell_97_matmul_readvariableop_resource@sequential_97_gru_97_gru_cell_97_biasadd_readvariableop_resource8sequential_97_gru_97_gru_cell_97_readvariableop_resource*
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
'sequential_97_gru_97_while_body_4737099*3
cond+R)
'sequential_97_gru_97_while_cond_4737098*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿÈ: : : : : *
parallel_iterations 2
sequential_97/gru_97/whileß
Esequential_97/gru_97/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÈ   2G
Esequential_97/gru_97/TensorArrayV2Stack/TensorListStack/element_shape½
7sequential_97/gru_97/TensorArrayV2Stack/TensorListStackTensorListStack#sequential_97/gru_97/while:output:3Nsequential_97/gru_97/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*
element_dtype029
7sequential_97/gru_97/TensorArrayV2Stack/TensorListStack«
*sequential_97/gru_97/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2,
*sequential_97/gru_97/strided_slice_3/stack¦
,sequential_97/gru_97/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_97/gru_97/strided_slice_3/stack_1¦
,sequential_97/gru_97/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,sequential_97/gru_97/strided_slice_3/stack_2
$sequential_97/gru_97/strided_slice_3StridedSlice@sequential_97/gru_97/TensorArrayV2Stack/TensorListStack:tensor:03sequential_97/gru_97/strided_slice_3/stack:output:05sequential_97/gru_97/strided_slice_3/stack_1:output:05sequential_97/gru_97/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*
shrink_axis_mask2&
$sequential_97/gru_97/strided_slice_3£
%sequential_97/gru_97/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2'
%sequential_97/gru_97/transpose_1/permú
 sequential_97/gru_97/transpose_1	Transpose@sequential_97/gru_97/TensorArrayV2Stack/TensorListStack:tensor:0.sequential_97/gru_97/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2"
 sequential_97/gru_97/transpose_1
sequential_97/gru_97/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_97/gru_97/runtimeÖ
-sequential_97/dense_194/MatMul/ReadVariableOpReadVariableOp6sequential_97_dense_194_matmul_readvariableop_resource*
_output_shapes
:	Èd*
dtype02/
-sequential_97/dense_194/MatMul/ReadVariableOpâ
sequential_97/dense_194/MatMulMatMul-sequential_97/gru_97/strided_slice_3:output:05sequential_97/dense_194/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2 
sequential_97/dense_194/MatMulÔ
.sequential_97/dense_194/BiasAdd/ReadVariableOpReadVariableOp7sequential_97_dense_194_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype020
.sequential_97/dense_194/BiasAdd/ReadVariableOpá
sequential_97/dense_194/BiasAddBiasAdd(sequential_97/dense_194/MatMul:product:06sequential_97/dense_194/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2!
sequential_97/dense_194/BiasAdd 
sequential_97/dense_194/ReluRelu(sequential_97/dense_194/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
sequential_97/dense_194/ReluÕ
-sequential_97/dense_195/MatMul/ReadVariableOpReadVariableOp6sequential_97_dense_195_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02/
-sequential_97/dense_195/MatMul/ReadVariableOpß
sequential_97/dense_195/MatMulMatMul*sequential_97/dense_194/Relu:activations:05sequential_97/dense_195/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
sequential_97/dense_195/MatMulÔ
.sequential_97/dense_195/BiasAdd/ReadVariableOpReadVariableOp7sequential_97_dense_195_biasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.sequential_97/dense_195/BiasAdd/ReadVariableOpá
sequential_97/dense_195/BiasAddBiasAdd(sequential_97/dense_195/MatMul:product:06sequential_97/dense_195/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
sequential_97/dense_195/BiasAdd´
IdentityIdentity(sequential_97/dense_195/BiasAdd:output:0/^sequential_97/dense_194/BiasAdd/ReadVariableOp.^sequential_97/dense_194/MatMul/ReadVariableOp/^sequential_97/dense_195/BiasAdd/ReadVariableOp.^sequential_97/dense_195/MatMul/ReadVariableOp8^sequential_97/gru_97/gru_cell_97/BiasAdd/ReadVariableOp7^sequential_97/gru_97/gru_cell_97/MatMul/ReadVariableOp0^sequential_97/gru_97/gru_cell_97/ReadVariableOp2^sequential_97/gru_97/gru_cell_97/ReadVariableOp_1^sequential_97/gru_97/while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2`
.sequential_97/dense_194/BiasAdd/ReadVariableOp.sequential_97/dense_194/BiasAdd/ReadVariableOp2^
-sequential_97/dense_194/MatMul/ReadVariableOp-sequential_97/dense_194/MatMul/ReadVariableOp2`
.sequential_97/dense_195/BiasAdd/ReadVariableOp.sequential_97/dense_195/BiasAdd/ReadVariableOp2^
-sequential_97/dense_195/MatMul/ReadVariableOp-sequential_97/dense_195/MatMul/ReadVariableOp2r
7sequential_97/gru_97/gru_cell_97/BiasAdd/ReadVariableOp7sequential_97/gru_97/gru_cell_97/BiasAdd/ReadVariableOp2p
6sequential_97/gru_97/gru_cell_97/MatMul/ReadVariableOp6sequential_97/gru_97/gru_cell_97/MatMul/ReadVariableOp2b
/sequential_97/gru_97/gru_cell_97/ReadVariableOp/sequential_97/gru_97/gru_cell_97/ReadVariableOp2f
1sequential_97/gru_97/gru_cell_97/ReadVariableOp_11sequential_97/gru_97/gru_cell_97/ReadVariableOp_128
sequential_97/gru_97/whilesequential_97/gru_97/while:Y U
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&
_user_specified_namegru_97_input

¯
while_cond_4738147
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_15
1while_while_cond_4738147___redundant_placeholder05
1while_while_cond_4738147___redundant_placeholder15
1while_while_cond_4738147___redundant_placeholder25
1while_while_cond_4738147___redundant_placeholder3
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
/__inference_sequential_97_layer_call_fn_4738419

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
J__inference_sequential_97_layer_call_and_return_conditional_losses_47380232
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
Ê~
±
'sequential_97_gru_97_while_body_4737099F
Bsequential_97_gru_97_while_sequential_97_gru_97_while_loop_counterL
Hsequential_97_gru_97_while_sequential_97_gru_97_while_maximum_iterations*
&sequential_97_gru_97_while_placeholder,
(sequential_97_gru_97_while_placeholder_1,
(sequential_97_gru_97_while_placeholder_2E
Asequential_97_gru_97_while_sequential_97_gru_97_strided_slice_1_0
}sequential_97_gru_97_while_tensorarrayv2read_tensorlistgetitem_sequential_97_gru_97_tensorarrayunstack_tensorlistfromtensor_0Z
Gsequential_97_gru_97_while_gru_cell_97_matmul_readvariableop_resource_0:	ØW
Hsequential_97_gru_97_while_gru_cell_97_biasadd_readvariableop_resource_0:	ØT
@sequential_97_gru_97_while_gru_cell_97_readvariableop_resource_0:
ÈØ'
#sequential_97_gru_97_while_identity)
%sequential_97_gru_97_while_identity_1)
%sequential_97_gru_97_while_identity_2)
%sequential_97_gru_97_while_identity_3)
%sequential_97_gru_97_while_identity_4C
?sequential_97_gru_97_while_sequential_97_gru_97_strided_slice_1
{sequential_97_gru_97_while_tensorarrayv2read_tensorlistgetitem_sequential_97_gru_97_tensorarrayunstack_tensorlistfromtensorX
Esequential_97_gru_97_while_gru_cell_97_matmul_readvariableop_resource:	ØU
Fsequential_97_gru_97_while_gru_cell_97_biasadd_readvariableop_resource:	ØR
>sequential_97_gru_97_while_gru_cell_97_readvariableop_resource:
ÈØ¢=sequential_97/gru_97/while/gru_cell_97/BiasAdd/ReadVariableOp¢<sequential_97/gru_97/while/gru_cell_97/MatMul/ReadVariableOp¢5sequential_97/gru_97/while/gru_cell_97/ReadVariableOp¢7sequential_97/gru_97/while/gru_cell_97/ReadVariableOp_1í
Lsequential_97/gru_97/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2N
Lsequential_97/gru_97/while/TensorArrayV2Read/TensorListGetItem/element_shapeÑ
>sequential_97/gru_97/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem}sequential_97_gru_97_while_tensorarrayv2read_tensorlistgetitem_sequential_97_gru_97_tensorarrayunstack_tensorlistfromtensor_0&sequential_97_gru_97_while_placeholderUsequential_97/gru_97/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02@
>sequential_97/gru_97/while/TensorArrayV2Read/TensorListGetItem
<sequential_97/gru_97/while/gru_cell_97/MatMul/ReadVariableOpReadVariableOpGsequential_97_gru_97_while_gru_cell_97_matmul_readvariableop_resource_0*
_output_shapes
:	Ø*
dtype02>
<sequential_97/gru_97/while/gru_cell_97/MatMul/ReadVariableOp¨
-sequential_97/gru_97/while/gru_cell_97/MatMulMatMulEsequential_97/gru_97/while/TensorArrayV2Read/TensorListGetItem:item:0Dsequential_97/gru_97/while/gru_cell_97/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2/
-sequential_97/gru_97/while/gru_cell_97/MatMul
=sequential_97/gru_97/while/gru_cell_97/BiasAdd/ReadVariableOpReadVariableOpHsequential_97_gru_97_while_gru_cell_97_biasadd_readvariableop_resource_0*
_output_shapes	
:Ø*
dtype02?
=sequential_97/gru_97/while/gru_cell_97/BiasAdd/ReadVariableOp
.sequential_97/gru_97/while/gru_cell_97/BiasAddBiasAdd7sequential_97/gru_97/while/gru_cell_97/MatMul:product:0Esequential_97/gru_97/while/gru_cell_97/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ20
.sequential_97/gru_97/while/gru_cell_97/BiasAdd»
6sequential_97/gru_97/while/gru_cell_97/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ28
6sequential_97/gru_97/while/gru_cell_97/split/split_dimË
,sequential_97/gru_97/while/gru_cell_97/splitSplit?sequential_97/gru_97/while/gru_cell_97/split/split_dim:output:07sequential_97/gru_97/while/gru_cell_97/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2.
,sequential_97/gru_97/while/gru_cell_97/splitñ
5sequential_97/gru_97/while/gru_cell_97/ReadVariableOpReadVariableOp@sequential_97_gru_97_while_gru_cell_97_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype027
5sequential_97/gru_97/while/gru_cell_97/ReadVariableOpÉ
:sequential_97/gru_97/while/gru_cell_97/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2<
:sequential_97/gru_97/while/gru_cell_97/strided_slice/stackÍ
<sequential_97/gru_97/while/gru_cell_97/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2>
<sequential_97/gru_97/while/gru_cell_97/strided_slice/stack_1Í
<sequential_97/gru_97/while/gru_cell_97/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2>
<sequential_97/gru_97/while/gru_cell_97/strided_slice/stack_2è
4sequential_97/gru_97/while/gru_cell_97/strided_sliceStridedSlice=sequential_97/gru_97/while/gru_cell_97/ReadVariableOp:value:0Csequential_97/gru_97/while/gru_cell_97/strided_slice/stack:output:0Esequential_97/gru_97/while/gru_cell_97/strided_slice/stack_1:output:0Esequential_97/gru_97/while/gru_cell_97/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask26
4sequential_97/gru_97/while/gru_cell_97/strided_slice
/sequential_97/gru_97/while/gru_cell_97/MatMul_1MatMul(sequential_97_gru_97_while_placeholder_2=sequential_97/gru_97/while/gru_cell_97/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ21
/sequential_97/gru_97/while/gru_cell_97/MatMul_1±
,sequential_97/gru_97/while/gru_cell_97/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2.
,sequential_97/gru_97/while/gru_cell_97/Const¿
8sequential_97/gru_97/while/gru_cell_97/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2:
8sequential_97/gru_97/while/gru_cell_97/split_1/split_dim
.sequential_97/gru_97/while/gru_cell_97/split_1SplitV9sequential_97/gru_97/while/gru_cell_97/MatMul_1:product:05sequential_97/gru_97/while/gru_cell_97/Const:output:0Asequential_97/gru_97/while/gru_cell_97/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split20
.sequential_97/gru_97/while/gru_cell_97/split_1
*sequential_97/gru_97/while/gru_cell_97/addAddV25sequential_97/gru_97/while/gru_cell_97/split:output:07sequential_97/gru_97/while/gru_cell_97/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2,
*sequential_97/gru_97/while/gru_cell_97/addÎ
.sequential_97/gru_97/while/gru_cell_97/SigmoidSigmoid.sequential_97/gru_97/while/gru_cell_97/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ20
.sequential_97/gru_97/while/gru_cell_97/Sigmoid
,sequential_97/gru_97/while/gru_cell_97/add_1AddV25sequential_97/gru_97/while/gru_cell_97/split:output:17sequential_97/gru_97/while/gru_cell_97/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2.
,sequential_97/gru_97/while/gru_cell_97/add_1Ô
0sequential_97/gru_97/while/gru_cell_97/Sigmoid_1Sigmoid0sequential_97/gru_97/while/gru_cell_97/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ22
0sequential_97/gru_97/while/gru_cell_97/Sigmoid_1ò
*sequential_97/gru_97/while/gru_cell_97/mulMul4sequential_97/gru_97/while/gru_cell_97/Sigmoid_1:y:0(sequential_97_gru_97_while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2,
*sequential_97/gru_97/while/gru_cell_97/mulõ
7sequential_97/gru_97/while/gru_cell_97/ReadVariableOp_1ReadVariableOp@sequential_97_gru_97_while_gru_cell_97_readvariableop_resource_0* 
_output_shapes
:
ÈØ*
dtype029
7sequential_97/gru_97/while/gru_cell_97/ReadVariableOp_1Í
<sequential_97/gru_97/while/gru_cell_97/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2>
<sequential_97/gru_97/while/gru_cell_97/strided_slice_1/stackÑ
>sequential_97/gru_97/while/gru_cell_97/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2@
>sequential_97/gru_97/while/gru_cell_97/strided_slice_1/stack_1Ñ
>sequential_97/gru_97/while/gru_cell_97/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2@
>sequential_97/gru_97/while/gru_cell_97/strided_slice_1/stack_2ô
6sequential_97/gru_97/while/gru_cell_97/strided_slice_1StridedSlice?sequential_97/gru_97/while/gru_cell_97/ReadVariableOp_1:value:0Esequential_97/gru_97/while/gru_cell_97/strided_slice_1/stack:output:0Gsequential_97/gru_97/while/gru_cell_97/strided_slice_1/stack_1:output:0Gsequential_97/gru_97/while/gru_cell_97/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask28
6sequential_97/gru_97/while/gru_cell_97/strided_slice_1
/sequential_97/gru_97/while/gru_cell_97/MatMul_2MatMul.sequential_97/gru_97/while/gru_cell_97/mul:z:0?sequential_97/gru_97/while/gru_cell_97/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ21
/sequential_97/gru_97/while/gru_cell_97/MatMul_2
,sequential_97/gru_97/while/gru_cell_97/add_2AddV25sequential_97/gru_97/while/gru_cell_97/split:output:29sequential_97/gru_97/while/gru_cell_97/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2.
,sequential_97/gru_97/while/gru_cell_97/add_2Ç
+sequential_97/gru_97/while/gru_cell_97/ReluRelu0sequential_97/gru_97/while/gru_cell_97/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2-
+sequential_97/gru_97/while/gru_cell_97/Reluô
,sequential_97/gru_97/while/gru_cell_97/mul_1Mul2sequential_97/gru_97/while/gru_cell_97/Sigmoid:y:0(sequential_97_gru_97_while_placeholder_2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2.
,sequential_97/gru_97/while/gru_cell_97/mul_1¡
,sequential_97/gru_97/while/gru_cell_97/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2.
,sequential_97/gru_97/while/gru_cell_97/sub/xý
*sequential_97/gru_97/while/gru_cell_97/subSub5sequential_97/gru_97/while/gru_cell_97/sub/x:output:02sequential_97/gru_97/while/gru_cell_97/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2,
*sequential_97/gru_97/while/gru_cell_97/sub
,sequential_97/gru_97/while/gru_cell_97/mul_2Mul.sequential_97/gru_97/while/gru_cell_97/sub:z:09sequential_97/gru_97/while/gru_cell_97/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2.
,sequential_97/gru_97/while/gru_cell_97/mul_2ü
,sequential_97/gru_97/while/gru_cell_97/add_3AddV20sequential_97/gru_97/while/gru_cell_97/mul_1:z:00sequential_97/gru_97/while/gru_cell_97/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2.
,sequential_97/gru_97/while/gru_cell_97/add_3È
?sequential_97/gru_97/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem(sequential_97_gru_97_while_placeholder_1&sequential_97_gru_97_while_placeholder0sequential_97/gru_97/while/gru_cell_97/add_3:z:0*
_output_shapes
: *
element_dtype02A
?sequential_97/gru_97/while/TensorArrayV2Write/TensorListSetItem
 sequential_97/gru_97/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2"
 sequential_97/gru_97/while/add/y½
sequential_97/gru_97/while/addAddV2&sequential_97_gru_97_while_placeholder)sequential_97/gru_97/while/add/y:output:0*
T0*
_output_shapes
: 2 
sequential_97/gru_97/while/add
"sequential_97/gru_97/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2$
"sequential_97/gru_97/while/add_1/yß
 sequential_97/gru_97/while/add_1AddV2Bsequential_97_gru_97_while_sequential_97_gru_97_while_loop_counter+sequential_97/gru_97/while/add_1/y:output:0*
T0*
_output_shapes
: 2"
 sequential_97/gru_97/while/add_1
#sequential_97/gru_97/while/IdentityIdentity$sequential_97/gru_97/while/add_1:z:0>^sequential_97/gru_97/while/gru_cell_97/BiasAdd/ReadVariableOp=^sequential_97/gru_97/while/gru_cell_97/MatMul/ReadVariableOp6^sequential_97/gru_97/while/gru_cell_97/ReadVariableOp8^sequential_97/gru_97/while/gru_cell_97/ReadVariableOp_1*
T0*
_output_shapes
: 2%
#sequential_97/gru_97/while/Identity¶
%sequential_97/gru_97/while/Identity_1IdentityHsequential_97_gru_97_while_sequential_97_gru_97_while_maximum_iterations>^sequential_97/gru_97/while/gru_cell_97/BiasAdd/ReadVariableOp=^sequential_97/gru_97/while/gru_cell_97/MatMul/ReadVariableOp6^sequential_97/gru_97/while/gru_cell_97/ReadVariableOp8^sequential_97/gru_97/while/gru_cell_97/ReadVariableOp_1*
T0*
_output_shapes
: 2'
%sequential_97/gru_97/while/Identity_1
%sequential_97/gru_97/while/Identity_2Identity"sequential_97/gru_97/while/add:z:0>^sequential_97/gru_97/while/gru_cell_97/BiasAdd/ReadVariableOp=^sequential_97/gru_97/while/gru_cell_97/MatMul/ReadVariableOp6^sequential_97/gru_97/while/gru_cell_97/ReadVariableOp8^sequential_97/gru_97/while/gru_cell_97/ReadVariableOp_1*
T0*
_output_shapes
: 2'
%sequential_97/gru_97/while/Identity_2½
%sequential_97/gru_97/while/Identity_3IdentityOsequential_97/gru_97/while/TensorArrayV2Write/TensorListSetItem:output_handle:0>^sequential_97/gru_97/while/gru_cell_97/BiasAdd/ReadVariableOp=^sequential_97/gru_97/while/gru_cell_97/MatMul/ReadVariableOp6^sequential_97/gru_97/while/gru_cell_97/ReadVariableOp8^sequential_97/gru_97/while/gru_cell_97/ReadVariableOp_1*
T0*
_output_shapes
: 2'
%sequential_97/gru_97/while/Identity_3°
%sequential_97/gru_97/while/Identity_4Identity0sequential_97/gru_97/while/gru_cell_97/add_3:z:0>^sequential_97/gru_97/while/gru_cell_97/BiasAdd/ReadVariableOp=^sequential_97/gru_97/while/gru_cell_97/MatMul/ReadVariableOp6^sequential_97/gru_97/while/gru_cell_97/ReadVariableOp8^sequential_97/gru_97/while/gru_cell_97/ReadVariableOp_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2'
%sequential_97/gru_97/while/Identity_4"
Fsequential_97_gru_97_while_gru_cell_97_biasadd_readvariableop_resourceHsequential_97_gru_97_while_gru_cell_97_biasadd_readvariableop_resource_0"
Esequential_97_gru_97_while_gru_cell_97_matmul_readvariableop_resourceGsequential_97_gru_97_while_gru_cell_97_matmul_readvariableop_resource_0"
>sequential_97_gru_97_while_gru_cell_97_readvariableop_resource@sequential_97_gru_97_while_gru_cell_97_readvariableop_resource_0"S
#sequential_97_gru_97_while_identity,sequential_97/gru_97/while/Identity:output:0"W
%sequential_97_gru_97_while_identity_1.sequential_97/gru_97/while/Identity_1:output:0"W
%sequential_97_gru_97_while_identity_2.sequential_97/gru_97/while/Identity_2:output:0"W
%sequential_97_gru_97_while_identity_3.sequential_97/gru_97/while/Identity_3:output:0"W
%sequential_97_gru_97_while_identity_4.sequential_97/gru_97/while/Identity_4:output:0"
?sequential_97_gru_97_while_sequential_97_gru_97_strided_slice_1Asequential_97_gru_97_while_sequential_97_gru_97_strided_slice_1_0"ü
{sequential_97_gru_97_while_tensorarrayv2read_tensorlistgetitem_sequential_97_gru_97_tensorarrayunstack_tensorlistfromtensor}sequential_97_gru_97_while_tensorarrayv2read_tensorlistgetitem_sequential_97_gru_97_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿÈ: : : : : 2~
=sequential_97/gru_97/while/gru_cell_97/BiasAdd/ReadVariableOp=sequential_97/gru_97/while/gru_cell_97/BiasAdd/ReadVariableOp2|
<sequential_97/gru_97/while/gru_cell_97/MatMul/ReadVariableOp<sequential_97/gru_97/while/gru_cell_97/MatMul/ReadVariableOp2n
5sequential_97/gru_97/while/gru_cell_97/ReadVariableOp5sequential_97/gru_97/while/gru_cell_97/ReadVariableOp2r
7sequential_97/gru_97/while/gru_cell_97/ReadVariableOp_17sequential_97/gru_97/while/gru_cell_97/ReadVariableOp_1: 
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
J__inference_sequential_97_layer_call_and_return_conditional_losses_4738806

inputsD
1gru_97_gru_cell_97_matmul_readvariableop_resource:	ØA
2gru_97_gru_cell_97_biasadd_readvariableop_resource:	Ø>
*gru_97_gru_cell_97_readvariableop_resource:
ÈØ;
(dense_194_matmul_readvariableop_resource:	Èd7
)dense_194_biasadd_readvariableop_resource:d:
(dense_195_matmul_readvariableop_resource:d7
)dense_195_biasadd_readvariableop_resource:
identity¢ dense_194/BiasAdd/ReadVariableOp¢dense_194/MatMul/ReadVariableOp¢ dense_195/BiasAdd/ReadVariableOp¢dense_195/MatMul/ReadVariableOp¢)gru_97/gru_cell_97/BiasAdd/ReadVariableOp¢(gru_97/gru_cell_97/MatMul/ReadVariableOp¢!gru_97/gru_cell_97/ReadVariableOp¢#gru_97/gru_cell_97/ReadVariableOp_1¢gru_97/whileR
gru_97/ShapeShapeinputs*
T0*
_output_shapes
:2
gru_97/Shape
gru_97/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_97/strided_slice/stack
gru_97/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru_97/strided_slice/stack_1
gru_97/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru_97/strided_slice/stack_2
gru_97/strided_sliceStridedSlicegru_97/Shape:output:0#gru_97/strided_slice/stack:output:0%gru_97/strided_slice/stack_1:output:0%gru_97/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru_97/strided_slicek
gru_97/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :È2
gru_97/zeros/mul/y
gru_97/zeros/mulMulgru_97/strided_slice:output:0gru_97/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
gru_97/zeros/mulm
gru_97/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
gru_97/zeros/Less/y
gru_97/zeros/LessLessgru_97/zeros/mul:z:0gru_97/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
gru_97/zeros/Lessq
gru_97/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :È2
gru_97/zeros/packed/1
gru_97/zeros/packedPackgru_97/strided_slice:output:0gru_97/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
gru_97/zeros/packedm
gru_97/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_97/zeros/Const
gru_97/zerosFillgru_97/zeros/packed:output:0gru_97/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_97/zeros
gru_97/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_97/transpose/perm
gru_97/transpose	Transposeinputsgru_97/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_97/transposed
gru_97/Shape_1Shapegru_97/transpose:y:0*
T0*
_output_shapes
:2
gru_97/Shape_1
gru_97/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_97/strided_slice_1/stack
gru_97/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
gru_97/strided_slice_1/stack_1
gru_97/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
gru_97/strided_slice_1/stack_2
gru_97/strided_slice_1StridedSlicegru_97/Shape_1:output:0%gru_97/strided_slice_1/stack:output:0'gru_97/strided_slice_1/stack_1:output:0'gru_97/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru_97/strided_slice_1
"gru_97/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2$
"gru_97/TensorArrayV2/element_shapeÎ
gru_97/TensorArrayV2TensorListReserve+gru_97/TensorArrayV2/element_shape:output:0gru_97/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_97/TensorArrayV2Í
<gru_97/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2>
<gru_97/TensorArrayUnstack/TensorListFromTensor/element_shape
.gru_97/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorgru_97/transpose:y:0Egru_97/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.gru_97/TensorArrayUnstack/TensorListFromTensor
gru_97/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru_97/strided_slice_2/stack
gru_97/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
gru_97/strided_slice_2/stack_1
gru_97/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
gru_97/strided_slice_2/stack_2¦
gru_97/strided_slice_2StridedSlicegru_97/transpose:y:0%gru_97/strided_slice_2/stack:output:0'gru_97/strided_slice_2/stack_1:output:0'gru_97/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
gru_97/strided_slice_2Ç
(gru_97/gru_cell_97/MatMul/ReadVariableOpReadVariableOp1gru_97_gru_cell_97_matmul_readvariableop_resource*
_output_shapes
:	Ø*
dtype02*
(gru_97/gru_cell_97/MatMul/ReadVariableOpÆ
gru_97/gru_cell_97/MatMulMatMulgru_97/strided_slice_2:output:00gru_97/gru_cell_97/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_97/gru_cell_97/MatMulÆ
)gru_97/gru_cell_97/BiasAdd/ReadVariableOpReadVariableOp2gru_97_gru_cell_97_biasadd_readvariableop_resource*
_output_shapes	
:Ø*
dtype02+
)gru_97/gru_cell_97/BiasAdd/ReadVariableOpÎ
gru_97/gru_cell_97/BiasAddBiasAdd#gru_97/gru_cell_97/MatMul:product:01gru_97/gru_cell_97/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ2
gru_97/gru_cell_97/BiasAdd
"gru_97/gru_cell_97/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2$
"gru_97/gru_cell_97/split/split_dimû
gru_97/gru_cell_97/splitSplit+gru_97/gru_cell_97/split/split_dim:output:0#gru_97/gru_cell_97/BiasAdd:output:0*
T0*P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
gru_97/gru_cell_97/split³
!gru_97/gru_cell_97/ReadVariableOpReadVariableOp*gru_97_gru_cell_97_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02#
!gru_97/gru_cell_97/ReadVariableOp¡
&gru_97/gru_cell_97/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&gru_97/gru_cell_97/strided_slice/stack¥
(gru_97/gru_cell_97/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2*
(gru_97/gru_cell_97/strided_slice/stack_1¥
(gru_97/gru_cell_97/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(gru_97/gru_cell_97/strided_slice/stack_2ð
 gru_97/gru_cell_97/strided_sliceStridedSlice)gru_97/gru_cell_97/ReadVariableOp:value:0/gru_97/gru_cell_97/strided_slice/stack:output:01gru_97/gru_cell_97/strided_slice/stack_1:output:01gru_97/gru_cell_97/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
È*

begin_mask*
end_mask2"
 gru_97/gru_cell_97/strided_slice¹
gru_97/gru_cell_97/MatMul_1MatMulgru_97/zeros:output:0)gru_97/gru_cell_97/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
gru_97/gru_cell_97/MatMul_1
gru_97/gru_cell_97/ConstConst*
_output_shapes
:*
dtype0*!
valueB"È   È   ÿÿÿÿ2
gru_97/gru_cell_97/Const
$gru_97/gru_cell_97/split_1/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2&
$gru_97/gru_cell_97/split_1/split_dim°
gru_97/gru_cell_97/split_1SplitV%gru_97/gru_cell_97/MatMul_1:product:0!gru_97/gru_cell_97/Const:output:0-gru_97/gru_cell_97/split_1/split_dim:output:0*
T0*

Tlen0*M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿ *
	num_split2
gru_97/gru_cell_97/split_1´
gru_97/gru_cell_97/addAddV2!gru_97/gru_cell_97/split:output:0#gru_97/gru_cell_97/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_97/gru_cell_97/add
gru_97/gru_cell_97/SigmoidSigmoidgru_97/gru_cell_97/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_97/gru_cell_97/Sigmoid¸
gru_97/gru_cell_97/add_1AddV2!gru_97/gru_cell_97/split:output:1#gru_97/gru_cell_97/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_97/gru_cell_97/add_1
gru_97/gru_cell_97/Sigmoid_1Sigmoidgru_97/gru_cell_97/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_97/gru_cell_97/Sigmoid_1£
gru_97/gru_cell_97/mulMul gru_97/gru_cell_97/Sigmoid_1:y:0gru_97/zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_97/gru_cell_97/mul·
#gru_97/gru_cell_97/ReadVariableOp_1ReadVariableOp*gru_97_gru_cell_97_readvariableop_resource* 
_output_shapes
:
ÈØ*
dtype02%
#gru_97/gru_cell_97/ReadVariableOp_1¥
(gru_97/gru_cell_97/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"      2*
(gru_97/gru_cell_97/strided_slice_1/stack©
*gru_97/gru_cell_97/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*gru_97/gru_cell_97/strided_slice_1/stack_1©
*gru_97/gru_cell_97/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*gru_97/gru_cell_97/strided_slice_1/stack_2ü
"gru_97/gru_cell_97/strided_slice_1StridedSlice+gru_97/gru_cell_97/ReadVariableOp_1:value:01gru_97/gru_cell_97/strided_slice_1/stack:output:03gru_97/gru_cell_97/strided_slice_1/stack_1:output:03gru_97/gru_cell_97/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÈÈ*

begin_mask*
end_mask2$
"gru_97/gru_cell_97/strided_slice_1À
gru_97/gru_cell_97/MatMul_2MatMulgru_97/gru_cell_97/mul:z:0+gru_97/gru_cell_97/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_97/gru_cell_97/MatMul_2º
gru_97/gru_cell_97/add_2AddV2!gru_97/gru_cell_97/split:output:2%gru_97/gru_cell_97/MatMul_2:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_97/gru_cell_97/add_2
gru_97/gru_cell_97/ReluRelugru_97/gru_cell_97/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_97/gru_cell_97/Relu¥
gru_97/gru_cell_97/mul_1Mulgru_97/gru_cell_97/Sigmoid:y:0gru_97/zeros:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_97/gru_cell_97/mul_1y
gru_97/gru_cell_97/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
gru_97/gru_cell_97/sub/x­
gru_97/gru_cell_97/subSub!gru_97/gru_cell_97/sub/x:output:0gru_97/gru_cell_97/Sigmoid:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_97/gru_cell_97/sub±
gru_97/gru_cell_97/mul_2Mulgru_97/gru_cell_97/sub:z:0%gru_97/gru_cell_97/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_97/gru_cell_97/mul_2¬
gru_97/gru_cell_97/add_3AddV2gru_97/gru_cell_97/mul_1:z:0gru_97/gru_cell_97/mul_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_97/gru_cell_97/add_3
$gru_97/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÈ   2&
$gru_97/TensorArrayV2_1/element_shapeÔ
gru_97/TensorArrayV2_1TensorListReserve-gru_97/TensorArrayV2_1/element_shape:output:0gru_97/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
gru_97/TensorArrayV2_1\
gru_97/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
gru_97/time
gru_97/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2!
gru_97/while/maximum_iterationsx
gru_97/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
gru_97/while/loop_counter
gru_97/whileWhile"gru_97/while/loop_counter:output:0(gru_97/while/maximum_iterations:output:0gru_97/time:output:0gru_97/TensorArrayV2_1:handle:0gru_97/zeros:output:0gru_97/strided_slice_1:output:0>gru_97/TensorArrayUnstack/TensorListFromTensor:output_handle:01gru_97_gru_cell_97_matmul_readvariableop_resource2gru_97_gru_cell_97_biasadd_readvariableop_resource*gru_97_gru_cell_97_readvariableop_resource*
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
gru_97_while_body_4738697*%
condR
gru_97_while_cond_4738696*9
output_shapes(
&: : : : :ÿÿÿÿÿÿÿÿÿÈ: : : : : *
parallel_iterations 2
gru_97/whileÃ
7gru_97/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÈ   29
7gru_97/TensorArrayV2Stack/TensorListStack/element_shape
)gru_97/TensorArrayV2Stack/TensorListStackTensorListStackgru_97/while:output:3@gru_97/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*
element_dtype02+
)gru_97/TensorArrayV2Stack/TensorListStack
gru_97/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
gru_97/strided_slice_3/stack
gru_97/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
gru_97/strided_slice_3/stack_1
gru_97/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
gru_97/strided_slice_3/stack_2Å
gru_97/strided_slice_3StridedSlice2gru_97/TensorArrayV2Stack/TensorListStack:tensor:0%gru_97/strided_slice_3/stack:output:0'gru_97/strided_slice_3/stack_1:output:0'gru_97/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*
shrink_axis_mask2
gru_97/strided_slice_3
gru_97/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
gru_97/transpose_1/permÂ
gru_97/transpose_1	Transpose2gru_97/TensorArrayV2Stack/TensorListStack:tensor:0 gru_97/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
gru_97/transpose_1t
gru_97/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
gru_97/runtime¬
dense_194/MatMul/ReadVariableOpReadVariableOp(dense_194_matmul_readvariableop_resource*
_output_shapes
:	Èd*
dtype02!
dense_194/MatMul/ReadVariableOpª
dense_194/MatMulMatMulgru_97/strided_slice_3:output:0'dense_194/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dense_194/MatMulª
 dense_194/BiasAdd/ReadVariableOpReadVariableOp)dense_194_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02"
 dense_194/BiasAdd/ReadVariableOp©
dense_194/BiasAddBiasAdddense_194/MatMul:product:0(dense_194/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dense_194/BiasAddv
dense_194/ReluReludense_194/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dense_194/Relu«
dense_195/MatMul/ReadVariableOpReadVariableOp(dense_195_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02!
dense_195/MatMul/ReadVariableOp§
dense_195/MatMulMatMuldense_194/Relu:activations:0'dense_195/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_195/MatMulª
 dense_195/BiasAdd/ReadVariableOpReadVariableOp)dense_195_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_195/BiasAdd/ReadVariableOp©
dense_195/BiasAddBiasAdddense_195/MatMul:product:0(dense_195/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_195/BiasAdd¨
IdentityIdentitydense_195/BiasAdd:output:0!^dense_194/BiasAdd/ReadVariableOp ^dense_194/MatMul/ReadVariableOp!^dense_195/BiasAdd/ReadVariableOp ^dense_195/MatMul/ReadVariableOp*^gru_97/gru_cell_97/BiasAdd/ReadVariableOp)^gru_97/gru_cell_97/MatMul/ReadVariableOp"^gru_97/gru_cell_97/ReadVariableOp$^gru_97/gru_cell_97/ReadVariableOp_1^gru_97/while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2D
 dense_194/BiasAdd/ReadVariableOp dense_194/BiasAdd/ReadVariableOp2B
dense_194/MatMul/ReadVariableOpdense_194/MatMul/ReadVariableOp2D
 dense_195/BiasAdd/ReadVariableOp dense_195/BiasAdd/ReadVariableOp2B
dense_195/MatMul/ReadVariableOpdense_195/MatMul/ReadVariableOp2V
)gru_97/gru_cell_97/BiasAdd/ReadVariableOp)gru_97/gru_cell_97/BiasAdd/ReadVariableOp2T
(gru_97/gru_cell_97/MatMul/ReadVariableOp(gru_97/gru_cell_97/MatMul/ReadVariableOp2F
!gru_97/gru_cell_97/ReadVariableOp!gru_97/gru_cell_97/ReadVariableOp2J
#gru_97/gru_cell_97/ReadVariableOp_1#gru_97/gru_cell_97/ReadVariableOp_12
gru_97/whilegru_97/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

Å
J__inference_sequential_97_layer_call_and_return_conditional_losses_4738023

inputs!
gru_97_4737982:	Ø
gru_97_4737984:	Ø"
gru_97_4737986:
ÈØ$
dense_194_4738001:	Èd
dense_194_4738003:d#
dense_195_4738017:d
dense_195_4738019:
identity¢!dense_194/StatefulPartitionedCall¢!dense_195/StatefulPartitionedCall¢gru_97/StatefulPartitionedCall 
gru_97/StatefulPartitionedCallStatefulPartitionedCallinputsgru_97_4737982gru_97_4737984gru_97_4737986*
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
C__inference_gru_97_layer_call_and_return_conditional_losses_47379812 
gru_97/StatefulPartitionedCall½
!dense_194/StatefulPartitionedCallStatefulPartitionedCall'gru_97/StatefulPartitionedCall:output:0dense_194_4738001dense_194_4738003*
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
F__inference_dense_194_layer_call_and_return_conditional_losses_47380002#
!dense_194/StatefulPartitionedCallÀ
!dense_195/StatefulPartitionedCallStatefulPartitionedCall*dense_194/StatefulPartitionedCall:output:0dense_195_4738017dense_195_4738019*
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
F__inference_dense_195_layer_call_and_return_conditional_losses_47380162#
!dense_195/StatefulPartitionedCallç
IdentityIdentity*dense_195/StatefulPartitionedCall:output:0"^dense_194/StatefulPartitionedCall"^dense_195/StatefulPartitionedCall^gru_97/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2F
!dense_194/StatefulPartitionedCall!dense_194/StatefulPartitionedCall2F
!dense_195/StatefulPartitionedCall!dense_195/StatefulPartitionedCall2@
gru_97/StatefulPartitionedCallgru_97/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs"ÌL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*º
serving_default¦
I
gru_97_input9
serving_default_gru_97_input:0ÿÿÿÿÿÿÿÿÿ=
	dense_1950
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
_tf_keras_sequential¸*{"name": "sequential_97", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_97", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "gru_97_input"}}, {"class_name": "GRU", "config": {"name": "gru_97", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 1]}, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 200, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2, "reset_after": false}}, {"class_name": "Dense", "config": {"name": "dense_194", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_195", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 12, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 1]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 13}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 7, 1]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 7, 1]}, "float32", "gru_97_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_97", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "gru_97_input"}, "shared_object_id": 0}, {"class_name": "GRU", "config": {"name": "gru_97", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 1]}, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 200, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2, "reset_after": false}, "shared_object_id": 5}, {"class_name": "Dense", "config": {"name": "dense_194", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 8}, {"class_name": "Dense", "config": {"name": "dense_195", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 11}]}}, "training_config": {"loss": "mse", "metrics": null, "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
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
_tf_keras_rnn_layerÚ{"name": "gru_97", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 1]}, "stateful": false, "must_restore_from_config": false, "class_name": "GRU", "config": {"name": "gru_97", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 1]}, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 200, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2, "reset_after": false}, "shared_object_id": 5, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 1]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 13}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 7, 1]}}
Ô

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
Z__call__
*[&call_and_return_all_conditional_losses"¯
_tf_keras_layer{"name": "dense_194", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_194", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 8, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 200}}, "shared_object_id": 14}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 200]}}
Ö

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
\__call__
*]&call_and_return_all_conditional_losses"±
_tf_keras_layer{"name": "dense_195", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_195", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 11, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 100}}, "shared_object_id": 15}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 100]}}
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
_tf_keras_layer«{"name": "gru_cell_97", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "GRUCell", "config": {"name": "gru_cell_97", "trainable": true, "dtype": "float32", "units": 200, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2, "reset_after": false}, "shared_object_id": 4}
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
#:!	Èd2dense_194/kernel
:d2dense_194/bias
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
": d2dense_195/kernel
:2dense_195/bias
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
,:*	Ø2gru_97/gru_cell_97/kernel
7:5
ÈØ2#gru_97/gru_cell_97/recurrent_kernel
&:$Ø2gru_97/gru_cell_97/bias
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
(:&	Èd2Adam/dense_194/kernel/m
!:d2Adam/dense_194/bias/m
':%d2Adam/dense_195/kernel/m
!:2Adam/dense_195/bias/m
1:/	Ø2 Adam/gru_97/gru_cell_97/kernel/m
<::
ÈØ2*Adam/gru_97/gru_cell_97/recurrent_kernel/m
+:)Ø2Adam/gru_97/gru_cell_97/bias/m
(:&	Èd2Adam/dense_194/kernel/v
!:d2Adam/dense_194/bias/v
':%d2Adam/dense_195/kernel/v
!:2Adam/dense_195/bias/v
1:/	Ø2 Adam/gru_97/gru_cell_97/kernel/v
<::
ÈØ2*Adam/gru_97/gru_cell_97/recurrent_kernel/v
+:)Ø2Adam/gru_97/gru_cell_97/bias/v
2
/__inference_sequential_97_layer_call_fn_4738040
/__inference_sequential_97_layer_call_fn_4738419
/__inference_sequential_97_layer_call_fn_4738438
/__inference_sequential_97_layer_call_fn_4738331À
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
J__inference_sequential_97_layer_call_and_return_conditional_losses_4738622
J__inference_sequential_97_layer_call_and_return_conditional_losses_4738806
J__inference_sequential_97_layer_call_and_return_conditional_losses_4738352
J__inference_sequential_97_layer_call_and_return_conditional_losses_4738373À
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
"__inference__wrapped_model_4737208¿
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
gru_97_inputÿÿÿÿÿÿÿÿÿ
2
(__inference_gru_97_layer_call_fn_4738817
(__inference_gru_97_layer_call_fn_4738828
(__inference_gru_97_layer_call_fn_4738839
(__inference_gru_97_layer_call_fn_4738850Õ
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
C__inference_gru_97_layer_call_and_return_conditional_losses_4739021
C__inference_gru_97_layer_call_and_return_conditional_losses_4739192
C__inference_gru_97_layer_call_and_return_conditional_losses_4739363
C__inference_gru_97_layer_call_and_return_conditional_losses_4739534Õ
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
+__inference_dense_194_layer_call_fn_4739543¢
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
F__inference_dense_194_layer_call_and_return_conditional_losses_4739554¢
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
+__inference_dense_195_layer_call_fn_4739563¢
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
F__inference_dense_195_layer_call_and_return_conditional_losses_4739573¢
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
%__inference_signature_wrapper_4738400gru_97_input"
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
-__inference_gru_cell_97_layer_call_fn_4739587
-__inference_gru_cell_97_layer_call_fn_4739601¾
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
H__inference_gru_cell_97_layer_call_and_return_conditional_losses_4739647
H__inference_gru_cell_97_layer_call_and_return_conditional_losses_4739693¾
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
"__inference__wrapped_model_4737208{!#"9¢6
/¢,
*'
gru_97_inputÿÿÿÿÿÿÿÿÿ
ª "5ª2
0
	dense_195# 
	dense_195ÿÿÿÿÿÿÿÿÿ§
F__inference_dense_194_layer_call_and_return_conditional_losses_4739554]0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿÈ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿd
 
+__inference_dense_194_layer_call_fn_4739543P0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿÈ
ª "ÿÿÿÿÿÿÿÿÿd¦
F__inference_dense_195_layer_call_and_return_conditional_losses_4739573\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿd
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ~
+__inference_dense_195_layer_call_fn_4739563O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿd
ª "ÿÿÿÿÿÿÿÿÿÅ
C__inference_gru_97_layer_call_and_return_conditional_losses_4739021~!#"O¢L
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
C__inference_gru_97_layer_call_and_return_conditional_losses_4739192~!#"O¢L
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
C__inference_gru_97_layer_call_and_return_conditional_losses_4739363n!#"?¢<
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
C__inference_gru_97_layer_call_and_return_conditional_losses_4739534n!#"?¢<
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
(__inference_gru_97_layer_call_fn_4738817q!#"O¢L
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
(__inference_gru_97_layer_call_fn_4738828q!#"O¢L
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
(__inference_gru_97_layer_call_fn_4738839a!#"?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿÈ
(__inference_gru_97_layer_call_fn_4738850a!#"?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿÈ
H__inference_gru_cell_97_layer_call_and_return_conditional_losses_4739647º!#"]¢Z
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
H__inference_gru_cell_97_layer_call_and_return_conditional_losses_4739693º!#"]¢Z
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
-__inference_gru_cell_97_layer_call_fn_4739587¬!#"]¢Z
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
-__inference_gru_cell_97_layer_call_fn_4739601¬!#"]¢Z
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
J__inference_sequential_97_layer_call_and_return_conditional_losses_4738352s!#"A¢>
7¢4
*'
gru_97_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Á
J__inference_sequential_97_layer_call_and_return_conditional_losses_4738373s!#"A¢>
7¢4
*'
gru_97_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 »
J__inference_sequential_97_layer_call_and_return_conditional_losses_4738622m!#";¢8
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
J__inference_sequential_97_layer_call_and_return_conditional_losses_4738806m!#";¢8
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
/__inference_sequential_97_layer_call_fn_4738040f!#"A¢>
7¢4
*'
gru_97_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_97_layer_call_fn_4738331f!#"A¢>
7¢4
*'
gru_97_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_97_layer_call_fn_4738419`!#";¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_97_layer_call_fn_4738438`!#";¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿµ
%__inference_signature_wrapper_4738400!#"I¢F
¢ 
?ª<
:
gru_97_input*'
gru_97_inputÿÿÿÿÿÿÿÿÿ"5ª2
0
	dense_195# 
	dense_195ÿÿÿÿÿÿÿÿÿ