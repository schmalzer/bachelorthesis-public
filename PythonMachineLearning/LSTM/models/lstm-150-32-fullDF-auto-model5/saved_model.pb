£
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
"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718·Æ
}
dense_204/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Èd*!
shared_namedense_204/kernel
v
$dense_204/kernel/Read/ReadVariableOpReadVariableOpdense_204/kernel*
_output_shapes
:	Èd*
dtype0
t
dense_204/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*
shared_namedense_204/bias
m
"dense_204/bias/Read/ReadVariableOpReadVariableOpdense_204/bias*
_output_shapes
:d*
dtype0
|
dense_205/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*!
shared_namedense_205/kernel
u
$dense_205/kernel/Read/ReadVariableOpReadVariableOpdense_205/kernel*
_output_shapes

:d*
dtype0
t
dense_205/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_205/bias
m
"dense_205/bias/Read/ReadVariableOpReadVariableOpdense_205/bias*
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

lstm_102/lstm_cell_102/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *.
shared_namelstm_102/lstm_cell_102/kernel

1lstm_102/lstm_cell_102/kernel/Read/ReadVariableOpReadVariableOplstm_102/lstm_cell_102/kernel*
_output_shapes
:	 *
dtype0
¬
'lstm_102/lstm_cell_102/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
È *8
shared_name)'lstm_102/lstm_cell_102/recurrent_kernel
¥
;lstm_102/lstm_cell_102/recurrent_kernel/Read/ReadVariableOpReadVariableOp'lstm_102/lstm_cell_102/recurrent_kernel* 
_output_shapes
:
È *
dtype0

lstm_102/lstm_cell_102/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namelstm_102/lstm_cell_102/bias

/lstm_102/lstm_cell_102/bias/Read/ReadVariableOpReadVariableOplstm_102/lstm_cell_102/bias*
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
Adam/dense_204/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Èd*(
shared_nameAdam/dense_204/kernel/m

+Adam/dense_204/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_204/kernel/m*
_output_shapes
:	Èd*
dtype0

Adam/dense_204/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*&
shared_nameAdam/dense_204/bias/m
{
)Adam/dense_204/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_204/bias/m*
_output_shapes
:d*
dtype0

Adam/dense_205/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*(
shared_nameAdam/dense_205/kernel/m

+Adam/dense_205/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_205/kernel/m*
_output_shapes

:d*
dtype0

Adam/dense_205/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_205/bias/m
{
)Adam/dense_205/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_205/bias/m*
_output_shapes
:*
dtype0
¥
$Adam/lstm_102/lstm_cell_102/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *5
shared_name&$Adam/lstm_102/lstm_cell_102/kernel/m

8Adam/lstm_102/lstm_cell_102/kernel/m/Read/ReadVariableOpReadVariableOp$Adam/lstm_102/lstm_cell_102/kernel/m*
_output_shapes
:	 *
dtype0
º
.Adam/lstm_102/lstm_cell_102/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
È *?
shared_name0.Adam/lstm_102/lstm_cell_102/recurrent_kernel/m
³
BAdam/lstm_102/lstm_cell_102/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp.Adam/lstm_102/lstm_cell_102/recurrent_kernel/m* 
_output_shapes
:
È *
dtype0

"Adam/lstm_102/lstm_cell_102/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adam/lstm_102/lstm_cell_102/bias/m

6Adam/lstm_102/lstm_cell_102/bias/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_102/lstm_cell_102/bias/m*
_output_shapes	
: *
dtype0

Adam/dense_204/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Èd*(
shared_nameAdam/dense_204/kernel/v

+Adam/dense_204/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_204/kernel/v*
_output_shapes
:	Èd*
dtype0

Adam/dense_204/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*&
shared_nameAdam/dense_204/bias/v
{
)Adam/dense_204/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_204/bias/v*
_output_shapes
:d*
dtype0

Adam/dense_205/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*(
shared_nameAdam/dense_205/kernel/v

+Adam/dense_205/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_205/kernel/v*
_output_shapes

:d*
dtype0

Adam/dense_205/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_205/bias/v
{
)Adam/dense_205/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_205/bias/v*
_output_shapes
:*
dtype0
¥
$Adam/lstm_102/lstm_cell_102/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *5
shared_name&$Adam/lstm_102/lstm_cell_102/kernel/v

8Adam/lstm_102/lstm_cell_102/kernel/v/Read/ReadVariableOpReadVariableOp$Adam/lstm_102/lstm_cell_102/kernel/v*
_output_shapes
:	 *
dtype0
º
.Adam/lstm_102/lstm_cell_102/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
È *?
shared_name0.Adam/lstm_102/lstm_cell_102/recurrent_kernel/v
³
BAdam/lstm_102/lstm_cell_102/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp.Adam/lstm_102/lstm_cell_102/recurrent_kernel/v* 
_output_shapes
:
È *
dtype0

"Adam/lstm_102/lstm_cell_102/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adam/lstm_102/lstm_cell_102/bias/v

6Adam/lstm_102/lstm_cell_102/bias/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_102/lstm_cell_102/bias/v*
_output_shapes	
: *
dtype0

NoOpNoOp
­*
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*è)
valueÞ)BÛ) BÔ)
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
VARIABLE_VALUEdense_204/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_204/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_205/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_205/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
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
ca
VARIABLE_VALUElstm_102/lstm_cell_102/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUE'lstm_102/lstm_cell_102/recurrent_kernel0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUElstm_102/lstm_cell_102/bias0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_204/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_204/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_205/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_205/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE$Adam/lstm_102/lstm_cell_102/kernel/mLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_102/lstm_cell_102/recurrent_kernel/mLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/lstm_102/lstm_cell_102/bias/mLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_204/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_204/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_205/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_205/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE$Adam/lstm_102/lstm_cell_102/kernel/vLtrainable_variables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adam/lstm_102/lstm_cell_102/recurrent_kernel/vLtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/lstm_102/lstm_cell_102/bias/vLtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_lstm_102_inputPlaceholder*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0* 
shape:ÿÿÿÿÿÿÿÿÿ
ñ
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_102_inputlstm_102/lstm_cell_102/kernel'lstm_102/lstm_cell_102/recurrent_kernellstm_102/lstm_cell_102/biasdense_204/kerneldense_204/biasdense_205/kerneldense_205/bias*
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
%__inference_signature_wrapper_5098708
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_204/kernel/Read/ReadVariableOp"dense_204/bias/Read/ReadVariableOp$dense_205/kernel/Read/ReadVariableOp"dense_205/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp1lstm_102/lstm_cell_102/kernel/Read/ReadVariableOp;lstm_102/lstm_cell_102/recurrent_kernel/Read/ReadVariableOp/lstm_102/lstm_cell_102/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_204/kernel/m/Read/ReadVariableOp)Adam/dense_204/bias/m/Read/ReadVariableOp+Adam/dense_205/kernel/m/Read/ReadVariableOp)Adam/dense_205/bias/m/Read/ReadVariableOp8Adam/lstm_102/lstm_cell_102/kernel/m/Read/ReadVariableOpBAdam/lstm_102/lstm_cell_102/recurrent_kernel/m/Read/ReadVariableOp6Adam/lstm_102/lstm_cell_102/bias/m/Read/ReadVariableOp+Adam/dense_204/kernel/v/Read/ReadVariableOp)Adam/dense_204/bias/v/Read/ReadVariableOp+Adam/dense_205/kernel/v/Read/ReadVariableOp)Adam/dense_205/bias/v/Read/ReadVariableOp8Adam/lstm_102/lstm_cell_102/kernel/v/Read/ReadVariableOpBAdam/lstm_102/lstm_cell_102/recurrent_kernel/v/Read/ReadVariableOp6Adam/lstm_102/lstm_cell_102/bias/v/Read/ReadVariableOpConst*)
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
 __inference__traced_save_5099966
ã
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_204/kerneldense_204/biasdense_205/kerneldense_205/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_102/lstm_cell_102/kernel'lstm_102/lstm_cell_102/recurrent_kernellstm_102/lstm_cell_102/biastotalcountAdam/dense_204/kernel/mAdam/dense_204/bias/mAdam/dense_205/kernel/mAdam/dense_205/bias/m$Adam/lstm_102/lstm_cell_102/kernel/m.Adam/lstm_102/lstm_cell_102/recurrent_kernel/m"Adam/lstm_102/lstm_cell_102/bias/mAdam/dense_204/kernel/vAdam/dense_204/bias/vAdam/dense_205/kernel/vAdam/dense_205/bias/v$Adam/lstm_102/lstm_cell_102/kernel/v.Adam/lstm_102/lstm_cell_102/recurrent_kernel/v"Adam/lstm_102/lstm_cell_102/bias/v*(
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
#__inference__traced_restore_5100060ìÇ
|
¥
#__inference__traced_restore_5100060
file_prefix4
!assignvariableop_dense_204_kernel:	Èd/
!assignvariableop_1_dense_204_bias:d5
#assignvariableop_2_dense_205_kernel:d/
!assignvariableop_3_dense_205_bias:&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: C
0assignvariableop_9_lstm_102_lstm_cell_102_kernel:	 O
;assignvariableop_10_lstm_102_lstm_cell_102_recurrent_kernel:
È >
/assignvariableop_11_lstm_102_lstm_cell_102_bias:	 #
assignvariableop_12_total: #
assignvariableop_13_count: >
+assignvariableop_14_adam_dense_204_kernel_m:	Èd7
)assignvariableop_15_adam_dense_204_bias_m:d=
+assignvariableop_16_adam_dense_205_kernel_m:d7
)assignvariableop_17_adam_dense_205_bias_m:K
8assignvariableop_18_adam_lstm_102_lstm_cell_102_kernel_m:	 V
Bassignvariableop_19_adam_lstm_102_lstm_cell_102_recurrent_kernel_m:
È E
6assignvariableop_20_adam_lstm_102_lstm_cell_102_bias_m:	 >
+assignvariableop_21_adam_dense_204_kernel_v:	Èd7
)assignvariableop_22_adam_dense_204_bias_v:d=
+assignvariableop_23_adam_dense_205_kernel_v:d7
)assignvariableop_24_adam_dense_205_bias_v:K
8assignvariableop_25_adam_lstm_102_lstm_cell_102_kernel_v:	 V
Bassignvariableop_26_adam_lstm_102_lstm_cell_102_recurrent_kernel_v:
È E
6assignvariableop_27_adam_lstm_102_lstm_cell_102_bias_v:	 
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_204_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1¦
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_204_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2¨
AssignVariableOp_2AssignVariableOp#assignvariableop_2_dense_205_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3¦
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_205_biasIdentity_3:output:0"/device:CPU:0*
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

Identity_9µ
AssignVariableOp_9AssignVariableOp0assignvariableop_9_lstm_102_lstm_cell_102_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10Ã
AssignVariableOp_10AssignVariableOp;assignvariableop_10_lstm_102_lstm_cell_102_recurrent_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11·
AssignVariableOp_11AssignVariableOp/assignvariableop_11_lstm_102_lstm_cell_102_biasIdentity_11:output:0"/device:CPU:0*
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
AssignVariableOp_14AssignVariableOp+assignvariableop_14_adam_dense_204_kernel_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15±
AssignVariableOp_15AssignVariableOp)assignvariableop_15_adam_dense_204_bias_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16³
AssignVariableOp_16AssignVariableOp+assignvariableop_16_adam_dense_205_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17±
AssignVariableOp_17AssignVariableOp)assignvariableop_17_adam_dense_205_bias_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18À
AssignVariableOp_18AssignVariableOp8assignvariableop_18_adam_lstm_102_lstm_cell_102_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19Ê
AssignVariableOp_19AssignVariableOpBassignvariableop_19_adam_lstm_102_lstm_cell_102_recurrent_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20¾
AssignVariableOp_20AssignVariableOp6assignvariableop_20_adam_lstm_102_lstm_cell_102_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21³
AssignVariableOp_21AssignVariableOp+assignvariableop_21_adam_dense_204_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22±
AssignVariableOp_22AssignVariableOp)assignvariableop_22_adam_dense_204_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23³
AssignVariableOp_23AssignVariableOp+assignvariableop_23_adam_dense_205_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24±
AssignVariableOp_24AssignVariableOp)assignvariableop_24_adam_dense_205_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25À
AssignVariableOp_25AssignVariableOp8assignvariableop_25_adam_lstm_102_lstm_cell_102_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26Ê
AssignVariableOp_26AssignVariableOpBassignvariableop_26_adam_lstm_102_lstm_cell_102_recurrent_kernel_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27¾
AssignVariableOp_27AssignVariableOp6assignvariableop_27_adam_lstm_102_lstm_cell_102_bias_vIdentity_27:output:0"/device:CPU:0*
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
ØE

E__inference_lstm_102_layer_call_and_return_conditional_losses_5097890

inputs(
lstm_cell_102_5097808:	 )
lstm_cell_102_5097810:
È $
lstm_cell_102_5097812:	 
identity¢%lstm_cell_102/StatefulPartitionedCall¢whileD
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
strided_slice_2ª
%lstm_cell_102/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_102_5097808lstm_cell_102_5097810lstm_cell_102_5097812*
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
GPU 2J 8 *S
fNRL
J__inference_lstm_cell_102_layer_call_and_return_conditional_losses_50977432'
%lstm_cell_102/StatefulPartitionedCall
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
while/loop_counter¯
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_102_5097808lstm_cell_102_5097810lstm_cell_102_5097812*
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
while_body_5097821*
condR
while_cond_5097820*M
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
runtime
IdentityIdentitystrided_slice_3:output:0&^lstm_cell_102/StatefulPartitionedCall^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2N
%lstm_cell_102/StatefulPartitionedCall%lstm_cell_102/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

Î
K__inference_sequential_102_layer_call_and_return_conditional_losses_5098603

inputs#
lstm_102_5098585:	 $
lstm_102_5098587:
È 
lstm_102_5098589:	 $
dense_204_5098592:	Èd
dense_204_5098594:d#
dense_205_5098597:d
dense_205_5098599:
identity¢!dense_204/StatefulPartitionedCall¢!dense_205/StatefulPartitionedCall¢ lstm_102/StatefulPartitionedCall¬
 lstm_102/StatefulPartitionedCallStatefulPartitionedCallinputslstm_102_5098585lstm_102_5098587lstm_102_5098589*
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
GPU 2J 8 *N
fIRG
E__inference_lstm_102_layer_call_and_return_conditional_losses_50985522"
 lstm_102/StatefulPartitionedCall¿
!dense_204/StatefulPartitionedCallStatefulPartitionedCall)lstm_102/StatefulPartitionedCall:output:0dense_204_5098592dense_204_5098594*
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
F__inference_dense_204_layer_call_and_return_conditional_losses_50983282#
!dense_204/StatefulPartitionedCallÀ
!dense_205/StatefulPartitionedCallStatefulPartitionedCall*dense_204/StatefulPartitionedCall:output:0dense_205_5098597dense_205_5098599*
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
F__inference_dense_205_layer_call_and_return_conditional_losses_50983442#
!dense_205/StatefulPartitionedCallé
IdentityIdentity*dense_205/StatefulPartitionedCall:output:0"^dense_204/StatefulPartitionedCall"^dense_205/StatefulPartitionedCall!^lstm_102/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2F
!dense_204/StatefulPartitionedCall!dense_204/StatefulPartitionedCall2F
!dense_205/StatefulPartitionedCall!dense_205/StatefulPartitionedCall2D
 lstm_102/StatefulPartitionedCall lstm_102/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
D
Ü
while_body_5099141
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_102_matmul_readvariableop_resource_0:	 J
6while_lstm_cell_102_matmul_1_readvariableop_resource_0:
È D
5while_lstm_cell_102_biasadd_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_102_matmul_readvariableop_resource:	 H
4while_lstm_cell_102_matmul_1_readvariableop_resource:
È B
3while_lstm_cell_102_biasadd_readvariableop_resource:	 ¢*while/lstm_cell_102/BiasAdd/ReadVariableOp¢)while/lstm_cell_102/MatMul/ReadVariableOp¢+while/lstm_cell_102/MatMul_1/ReadVariableOpÃ
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
)while/TensorArrayV2Read/TensorListGetItemÌ
)while/lstm_cell_102/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_102_matmul_readvariableop_resource_0*
_output_shapes
:	 *
dtype02+
)while/lstm_cell_102/MatMul/ReadVariableOpÚ
while/lstm_cell_102/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_102/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_102/MatMulÓ
+while/lstm_cell_102/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_102_matmul_1_readvariableop_resource_0* 
_output_shapes
:
È *
dtype02-
+while/lstm_cell_102/MatMul_1/ReadVariableOpÃ
while/lstm_cell_102/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_102/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_102/MatMul_1¼
while/lstm_cell_102/addAddV2$while/lstm_cell_102/MatMul:product:0&while/lstm_cell_102/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_102/addË
*while/lstm_cell_102/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_102_biasadd_readvariableop_resource_0*
_output_shapes	
: *
dtype02,
*while/lstm_cell_102/BiasAdd/ReadVariableOpÉ
while/lstm_cell_102/BiasAddBiasAddwhile/lstm_cell_102/add:z:02while/lstm_cell_102/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_102/BiasAdd
#while/lstm_cell_102/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_102/split/split_dim
while/lstm_cell_102/splitSplit,while/lstm_cell_102/split/split_dim:output:0$while/lstm_cell_102/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
while/lstm_cell_102/split
while/lstm_cell_102/SigmoidSigmoid"while/lstm_cell_102/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_102/Sigmoid 
while/lstm_cell_102/Sigmoid_1Sigmoid"while/lstm_cell_102/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_102/Sigmoid_1¤
while/lstm_cell_102/mulMul!while/lstm_cell_102/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_102/mul
while/lstm_cell_102/ReluRelu"while/lstm_cell_102/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_102/Relu¹
while/lstm_cell_102/mul_1Mulwhile/lstm_cell_102/Sigmoid:y:0&while/lstm_cell_102/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_102/mul_1®
while/lstm_cell_102/add_1AddV2while/lstm_cell_102/mul:z:0while/lstm_cell_102/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_102/add_1 
while/lstm_cell_102/Sigmoid_2Sigmoid"while/lstm_cell_102/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_102/Sigmoid_2
while/lstm_cell_102/Relu_1Reluwhile/lstm_cell_102/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_102/Relu_1½
while/lstm_cell_102/mul_2Mul!while/lstm_cell_102/Sigmoid_2:y:0(while/lstm_cell_102/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_102/mul_2á
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_102/mul_2:z:0*
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
while/add_1å
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityø
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ç
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_102/mul_2:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_102/add_1:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_102_biasadd_readvariableop_resource5while_lstm_cell_102_biasadd_readvariableop_resource_0"n
4while_lstm_cell_102_matmul_1_readvariableop_resource6while_lstm_cell_102_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_102_matmul_readvariableop_resource4while_lstm_cell_102_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : 2X
*while/lstm_cell_102/BiasAdd/ReadVariableOp*while/lstm_cell_102/BiasAdd/ReadVariableOp2V
)while/lstm_cell_102/MatMul/ReadVariableOp)while/lstm_cell_102/MatMul/ReadVariableOp2Z
+while/lstm_cell_102/MatMul_1/ReadVariableOp+while/lstm_cell_102/MatMul_1/ReadVariableOp: 
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
while_cond_5099140
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5099140___redundant_placeholder05
1while_while_cond_5099140___redundant_placeholder15
1while_while_cond_5099140___redundant_placeholder25
1while_while_cond_5099140___redundant_placeholder3
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
D
Ü
while_body_5098225
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_102_matmul_readvariableop_resource_0:	 J
6while_lstm_cell_102_matmul_1_readvariableop_resource_0:
È D
5while_lstm_cell_102_biasadd_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_102_matmul_readvariableop_resource:	 H
4while_lstm_cell_102_matmul_1_readvariableop_resource:
È B
3while_lstm_cell_102_biasadd_readvariableop_resource:	 ¢*while/lstm_cell_102/BiasAdd/ReadVariableOp¢)while/lstm_cell_102/MatMul/ReadVariableOp¢+while/lstm_cell_102/MatMul_1/ReadVariableOpÃ
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
)while/TensorArrayV2Read/TensorListGetItemÌ
)while/lstm_cell_102/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_102_matmul_readvariableop_resource_0*
_output_shapes
:	 *
dtype02+
)while/lstm_cell_102/MatMul/ReadVariableOpÚ
while/lstm_cell_102/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_102/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_102/MatMulÓ
+while/lstm_cell_102/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_102_matmul_1_readvariableop_resource_0* 
_output_shapes
:
È *
dtype02-
+while/lstm_cell_102/MatMul_1/ReadVariableOpÃ
while/lstm_cell_102/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_102/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_102/MatMul_1¼
while/lstm_cell_102/addAddV2$while/lstm_cell_102/MatMul:product:0&while/lstm_cell_102/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_102/addË
*while/lstm_cell_102/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_102_biasadd_readvariableop_resource_0*
_output_shapes	
: *
dtype02,
*while/lstm_cell_102/BiasAdd/ReadVariableOpÉ
while/lstm_cell_102/BiasAddBiasAddwhile/lstm_cell_102/add:z:02while/lstm_cell_102/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_102/BiasAdd
#while/lstm_cell_102/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_102/split/split_dim
while/lstm_cell_102/splitSplit,while/lstm_cell_102/split/split_dim:output:0$while/lstm_cell_102/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
while/lstm_cell_102/split
while/lstm_cell_102/SigmoidSigmoid"while/lstm_cell_102/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_102/Sigmoid 
while/lstm_cell_102/Sigmoid_1Sigmoid"while/lstm_cell_102/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_102/Sigmoid_1¤
while/lstm_cell_102/mulMul!while/lstm_cell_102/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_102/mul
while/lstm_cell_102/ReluRelu"while/lstm_cell_102/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_102/Relu¹
while/lstm_cell_102/mul_1Mulwhile/lstm_cell_102/Sigmoid:y:0&while/lstm_cell_102/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_102/mul_1®
while/lstm_cell_102/add_1AddV2while/lstm_cell_102/mul:z:0while/lstm_cell_102/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_102/add_1 
while/lstm_cell_102/Sigmoid_2Sigmoid"while/lstm_cell_102/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_102/Sigmoid_2
while/lstm_cell_102/Relu_1Reluwhile/lstm_cell_102/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_102/Relu_1½
while/lstm_cell_102/mul_2Mul!while/lstm_cell_102/Sigmoid_2:y:0(while/lstm_cell_102/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_102/mul_2á
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_102/mul_2:z:0*
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
while/add_1å
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityø
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ç
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_102/mul_2:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_102/add_1:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_102_biasadd_readvariableop_resource5while_lstm_cell_102_biasadd_readvariableop_resource_0"n
4while_lstm_cell_102_matmul_1_readvariableop_resource6while_lstm_cell_102_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_102_matmul_readvariableop_resource4while_lstm_cell_102_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : 2X
*while/lstm_cell_102/BiasAdd/ReadVariableOp*while/lstm_cell_102/BiasAdd/ReadVariableOp2V
)while/lstm_cell_102/MatMul/ReadVariableOp)while/lstm_cell_102/MatMul/ReadVariableOp2Z
+while/lstm_cell_102/MatMul_1/ReadVariableOp+while/lstm_cell_102/MatMul_1/ReadVariableOp: 
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
ã[
¤
E__inference_lstm_102_layer_call_and_return_conditional_losses_5099527

inputs?
,lstm_cell_102_matmul_readvariableop_resource:	 B
.lstm_cell_102_matmul_1_readvariableop_resource:
È <
-lstm_cell_102_biasadd_readvariableop_resource:	 
identity¢$lstm_cell_102/BiasAdd/ReadVariableOp¢#lstm_cell_102/MatMul/ReadVariableOp¢%lstm_cell_102/MatMul_1/ReadVariableOp¢whileD
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
strided_slice_2¸
#lstm_cell_102/MatMul/ReadVariableOpReadVariableOp,lstm_cell_102_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype02%
#lstm_cell_102/MatMul/ReadVariableOp°
lstm_cell_102/MatMulMatMulstrided_slice_2:output:0+lstm_cell_102/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_102/MatMul¿
%lstm_cell_102/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_102_matmul_1_readvariableop_resource* 
_output_shapes
:
È *
dtype02'
%lstm_cell_102/MatMul_1/ReadVariableOp¬
lstm_cell_102/MatMul_1MatMulzeros:output:0-lstm_cell_102/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_102/MatMul_1¤
lstm_cell_102/addAddV2lstm_cell_102/MatMul:product:0 lstm_cell_102/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_102/add·
$lstm_cell_102/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_102_biasadd_readvariableop_resource*
_output_shapes	
: *
dtype02&
$lstm_cell_102/BiasAdd/ReadVariableOp±
lstm_cell_102/BiasAddBiasAddlstm_cell_102/add:z:0,lstm_cell_102/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_102/BiasAdd
lstm_cell_102/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_102/split/split_dimû
lstm_cell_102/splitSplit&lstm_cell_102/split/split_dim:output:0lstm_cell_102/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
lstm_cell_102/split
lstm_cell_102/SigmoidSigmoidlstm_cell_102/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_102/Sigmoid
lstm_cell_102/Sigmoid_1Sigmoidlstm_cell_102/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_102/Sigmoid_1
lstm_cell_102/mulMullstm_cell_102/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_102/mul
lstm_cell_102/ReluRelulstm_cell_102/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_102/Relu¡
lstm_cell_102/mul_1Mullstm_cell_102/Sigmoid:y:0 lstm_cell_102/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_102/mul_1
lstm_cell_102/add_1AddV2lstm_cell_102/mul:z:0lstm_cell_102/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_102/add_1
lstm_cell_102/Sigmoid_2Sigmoidlstm_cell_102/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_102/Sigmoid_2
lstm_cell_102/Relu_1Relulstm_cell_102/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_102/Relu_1¥
lstm_cell_102/mul_2Mullstm_cell_102/Sigmoid_2:y:0"lstm_cell_102/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_102/mul_2
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
while/loop_counter÷
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_102_matmul_readvariableop_resource.lstm_cell_102_matmul_1_readvariableop_resource-lstm_cell_102_biasadd_readvariableop_resource*
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
while_body_5099443*
condR
while_cond_5099442*M
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
runtimeê
IdentityIdentitystrided_slice_3:output:0%^lstm_cell_102/BiasAdd/ReadVariableOp$^lstm_cell_102/MatMul/ReadVariableOp&^lstm_cell_102/MatMul_1/ReadVariableOp^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_102/BiasAdd/ReadVariableOp$lstm_cell_102/BiasAdd/ReadVariableOp2J
#lstm_cell_102/MatMul/ReadVariableOp#lstm_cell_102/MatMul/ReadVariableOp2N
%lstm_cell_102/MatMul_1/ReadVariableOp%lstm_cell_102/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Þ
È
while_cond_5098467
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5098467___redundant_placeholder05
1while_while_cond_5098467___redundant_placeholder15
1while_while_cond_5098467___redundant_placeholder25
1while_while_cond_5098467___redundant_placeholder3
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
Ë&
ó
while_body_5097821
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_102_5097845_0:	 1
while_lstm_cell_102_5097847_0:
È ,
while_lstm_cell_102_5097849_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_102_5097845:	 /
while_lstm_cell_102_5097847:
È *
while_lstm_cell_102_5097849:	 ¢+while/lstm_cell_102/StatefulPartitionedCallÃ
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
)while/TensorArrayV2Read/TensorListGetItemî
+while/lstm_cell_102/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_102_5097845_0while_lstm_cell_102_5097847_0while_lstm_cell_102_5097849_0*
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
GPU 2J 8 *S
fNRL
J__inference_lstm_cell_102_layer_call_and_return_conditional_losses_50977432-
+while/lstm_cell_102/StatefulPartitionedCallø
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_102/StatefulPartitionedCall:output:0*
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
while/add_1
while/IdentityIdentitywhile/add_1:z:0,^while/lstm_cell_102/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations,^while/lstm_cell_102/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:0,^while/lstm_cell_102/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2»
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0,^while/lstm_cell_102/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3Ç
while/Identity_4Identity4while/lstm_cell_102/StatefulPartitionedCall:output:1,^while/lstm_cell_102/StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_4Ç
while/Identity_5Identity4while/lstm_cell_102/StatefulPartitionedCall:output:2,^while/lstm_cell_102/StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_102_5097845while_lstm_cell_102_5097845_0"<
while_lstm_cell_102_5097847while_lstm_cell_102_5097847_0"<
while_lstm_cell_102_5097849while_lstm_cell_102_5097849_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : 2Z
+while/lstm_cell_102/StatefulPartitionedCall+while/lstm_cell_102/StatefulPartitionedCall: 
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
D
Ü
while_body_5099443
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_102_matmul_readvariableop_resource_0:	 J
6while_lstm_cell_102_matmul_1_readvariableop_resource_0:
È D
5while_lstm_cell_102_biasadd_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_102_matmul_readvariableop_resource:	 H
4while_lstm_cell_102_matmul_1_readvariableop_resource:
È B
3while_lstm_cell_102_biasadd_readvariableop_resource:	 ¢*while/lstm_cell_102/BiasAdd/ReadVariableOp¢)while/lstm_cell_102/MatMul/ReadVariableOp¢+while/lstm_cell_102/MatMul_1/ReadVariableOpÃ
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
)while/TensorArrayV2Read/TensorListGetItemÌ
)while/lstm_cell_102/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_102_matmul_readvariableop_resource_0*
_output_shapes
:	 *
dtype02+
)while/lstm_cell_102/MatMul/ReadVariableOpÚ
while/lstm_cell_102/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_102/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_102/MatMulÓ
+while/lstm_cell_102/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_102_matmul_1_readvariableop_resource_0* 
_output_shapes
:
È *
dtype02-
+while/lstm_cell_102/MatMul_1/ReadVariableOpÃ
while/lstm_cell_102/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_102/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_102/MatMul_1¼
while/lstm_cell_102/addAddV2$while/lstm_cell_102/MatMul:product:0&while/lstm_cell_102/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_102/addË
*while/lstm_cell_102/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_102_biasadd_readvariableop_resource_0*
_output_shapes	
: *
dtype02,
*while/lstm_cell_102/BiasAdd/ReadVariableOpÉ
while/lstm_cell_102/BiasAddBiasAddwhile/lstm_cell_102/add:z:02while/lstm_cell_102/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_102/BiasAdd
#while/lstm_cell_102/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_102/split/split_dim
while/lstm_cell_102/splitSplit,while/lstm_cell_102/split/split_dim:output:0$while/lstm_cell_102/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
while/lstm_cell_102/split
while/lstm_cell_102/SigmoidSigmoid"while/lstm_cell_102/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_102/Sigmoid 
while/lstm_cell_102/Sigmoid_1Sigmoid"while/lstm_cell_102/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_102/Sigmoid_1¤
while/lstm_cell_102/mulMul!while/lstm_cell_102/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_102/mul
while/lstm_cell_102/ReluRelu"while/lstm_cell_102/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_102/Relu¹
while/lstm_cell_102/mul_1Mulwhile/lstm_cell_102/Sigmoid:y:0&while/lstm_cell_102/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_102/mul_1®
while/lstm_cell_102/add_1AddV2while/lstm_cell_102/mul:z:0while/lstm_cell_102/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_102/add_1 
while/lstm_cell_102/Sigmoid_2Sigmoid"while/lstm_cell_102/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_102/Sigmoid_2
while/lstm_cell_102/Relu_1Reluwhile/lstm_cell_102/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_102/Relu_1½
while/lstm_cell_102/mul_2Mul!while/lstm_cell_102/Sigmoid_2:y:0(while/lstm_cell_102/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_102/mul_2á
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_102/mul_2:z:0*
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
while/add_1å
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityø
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ç
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_102/mul_2:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_102/add_1:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_102_biasadd_readvariableop_resource5while_lstm_cell_102_biasadd_readvariableop_resource_0"n
4while_lstm_cell_102_matmul_1_readvariableop_resource6while_lstm_cell_102_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_102_matmul_readvariableop_resource4while_lstm_cell_102_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : 2X
*while/lstm_cell_102/BiasAdd/ReadVariableOp*while/lstm_cell_102/BiasAdd/ReadVariableOp2V
)while/lstm_cell_102/MatMul/ReadVariableOp)while/lstm_cell_102/MatMul/ReadVariableOp2Z
+while/lstm_cell_102/MatMul_1/ReadVariableOp+while/lstm_cell_102/MatMul_1/ReadVariableOp: 
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
while_cond_5097820
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5097820___redundant_placeholder05
1while_while_cond_5097820___redundant_placeholder15
1while_while_cond_5097820___redundant_placeholder25
1while_while_cond_5097820___redundant_placeholder3
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
¾

J__inference_lstm_cell_102_layer_call_and_return_conditional_losses_5097743

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
î
¨
%__inference_signature_wrapper_5098708
lstm_102_input
unknown:	 
	unknown_0:
È 
	unknown_1:	 
	unknown_2:	Èd
	unknown_3:d
	unknown_4:d
	unknown_5:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalllstm_102_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
"__inference__wrapped_model_50975222
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
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_namelstm_102_input
¢	
³
0__inference_sequential_102_layer_call_fn_5098368
lstm_102_input
unknown:	 
	unknown_0:
È 
	unknown_1:	 
	unknown_2:	Èd
	unknown_3:d
	unknown_4:d
	unknown_5:
identity¢StatefulPartitionedCallÄ
StatefulPartitionedCallStatefulPartitionedCalllstm_102_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
K__inference_sequential_102_layer_call_and_return_conditional_losses_50983512
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
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_namelstm_102_input
Æ

J__inference_lstm_cell_102_layer_call_and_return_conditional_losses_5099825

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

Î
K__inference_sequential_102_layer_call_and_return_conditional_losses_5098351

inputs#
lstm_102_5098310:	 $
lstm_102_5098312:
È 
lstm_102_5098314:	 $
dense_204_5098329:	Èd
dense_204_5098331:d#
dense_205_5098345:d
dense_205_5098347:
identity¢!dense_204/StatefulPartitionedCall¢!dense_205/StatefulPartitionedCall¢ lstm_102/StatefulPartitionedCall¬
 lstm_102/StatefulPartitionedCallStatefulPartitionedCallinputslstm_102_5098310lstm_102_5098312lstm_102_5098314*
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
GPU 2J 8 *N
fIRG
E__inference_lstm_102_layer_call_and_return_conditional_losses_50983092"
 lstm_102/StatefulPartitionedCall¿
!dense_204/StatefulPartitionedCallStatefulPartitionedCall)lstm_102/StatefulPartitionedCall:output:0dense_204_5098329dense_204_5098331*
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
F__inference_dense_204_layer_call_and_return_conditional_losses_50983282#
!dense_204/StatefulPartitionedCallÀ
!dense_205/StatefulPartitionedCallStatefulPartitionedCall*dense_204/StatefulPartitionedCall:output:0dense_205_5098345dense_205_5098347*
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
F__inference_dense_205_layer_call_and_return_conditional_losses_50983442#
!dense_205/StatefulPartitionedCallé
IdentityIdentity*dense_205/StatefulPartitionedCall:output:0"^dense_204/StatefulPartitionedCall"^dense_205/StatefulPartitionedCall!^lstm_102/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2F
!dense_204/StatefulPartitionedCall!dense_204/StatefulPartitionedCall2F
!dense_205/StatefulPartitionedCall!dense_205/StatefulPartitionedCall2D
 lstm_102/StatefulPartitionedCall lstm_102/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
D
Ü
while_body_5099292
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_102_matmul_readvariableop_resource_0:	 J
6while_lstm_cell_102_matmul_1_readvariableop_resource_0:
È D
5while_lstm_cell_102_biasadd_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_102_matmul_readvariableop_resource:	 H
4while_lstm_cell_102_matmul_1_readvariableop_resource:
È B
3while_lstm_cell_102_biasadd_readvariableop_resource:	 ¢*while/lstm_cell_102/BiasAdd/ReadVariableOp¢)while/lstm_cell_102/MatMul/ReadVariableOp¢+while/lstm_cell_102/MatMul_1/ReadVariableOpÃ
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
)while/TensorArrayV2Read/TensorListGetItemÌ
)while/lstm_cell_102/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_102_matmul_readvariableop_resource_0*
_output_shapes
:	 *
dtype02+
)while/lstm_cell_102/MatMul/ReadVariableOpÚ
while/lstm_cell_102/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_102/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_102/MatMulÓ
+while/lstm_cell_102/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_102_matmul_1_readvariableop_resource_0* 
_output_shapes
:
È *
dtype02-
+while/lstm_cell_102/MatMul_1/ReadVariableOpÃ
while/lstm_cell_102/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_102/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_102/MatMul_1¼
while/lstm_cell_102/addAddV2$while/lstm_cell_102/MatMul:product:0&while/lstm_cell_102/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_102/addË
*while/lstm_cell_102/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_102_biasadd_readvariableop_resource_0*
_output_shapes	
: *
dtype02,
*while/lstm_cell_102/BiasAdd/ReadVariableOpÉ
while/lstm_cell_102/BiasAddBiasAddwhile/lstm_cell_102/add:z:02while/lstm_cell_102/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_102/BiasAdd
#while/lstm_cell_102/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_102/split/split_dim
while/lstm_cell_102/splitSplit,while/lstm_cell_102/split/split_dim:output:0$while/lstm_cell_102/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
while/lstm_cell_102/split
while/lstm_cell_102/SigmoidSigmoid"while/lstm_cell_102/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_102/Sigmoid 
while/lstm_cell_102/Sigmoid_1Sigmoid"while/lstm_cell_102/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_102/Sigmoid_1¤
while/lstm_cell_102/mulMul!while/lstm_cell_102/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_102/mul
while/lstm_cell_102/ReluRelu"while/lstm_cell_102/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_102/Relu¹
while/lstm_cell_102/mul_1Mulwhile/lstm_cell_102/Sigmoid:y:0&while/lstm_cell_102/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_102/mul_1®
while/lstm_cell_102/add_1AddV2while/lstm_cell_102/mul:z:0while/lstm_cell_102/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_102/add_1 
while/lstm_cell_102/Sigmoid_2Sigmoid"while/lstm_cell_102/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_102/Sigmoid_2
while/lstm_cell_102/Relu_1Reluwhile/lstm_cell_102/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_102/Relu_1½
while/lstm_cell_102/mul_2Mul!while/lstm_cell_102/Sigmoid_2:y:0(while/lstm_cell_102/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_102/mul_2á
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_102/mul_2:z:0*
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
while/add_1å
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityø
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ç
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_102/mul_2:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_102/add_1:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_102_biasadd_readvariableop_resource5while_lstm_cell_102_biasadd_readvariableop_resource_0"n
4while_lstm_cell_102_matmul_1_readvariableop_resource6while_lstm_cell_102_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_102_matmul_readvariableop_resource4while_lstm_cell_102_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : 2X
*while/lstm_cell_102/BiasAdd/ReadVariableOp*while/lstm_cell_102/BiasAdd/ReadVariableOp2V
)while/lstm_cell_102/MatMul/ReadVariableOp)while/lstm_cell_102/MatMul/ReadVariableOp2Z
+while/lstm_cell_102/MatMul_1/ReadVariableOp+while/lstm_cell_102/MatMul_1/ReadVariableOp: 
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
¾

J__inference_lstm_cell_102_layer_call_and_return_conditional_losses_5097597

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
ã[
¤
E__inference_lstm_102_layer_call_and_return_conditional_losses_5099678

inputs?
,lstm_cell_102_matmul_readvariableop_resource:	 B
.lstm_cell_102_matmul_1_readvariableop_resource:
È <
-lstm_cell_102_biasadd_readvariableop_resource:	 
identity¢$lstm_cell_102/BiasAdd/ReadVariableOp¢#lstm_cell_102/MatMul/ReadVariableOp¢%lstm_cell_102/MatMul_1/ReadVariableOp¢whileD
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
strided_slice_2¸
#lstm_cell_102/MatMul/ReadVariableOpReadVariableOp,lstm_cell_102_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype02%
#lstm_cell_102/MatMul/ReadVariableOp°
lstm_cell_102/MatMulMatMulstrided_slice_2:output:0+lstm_cell_102/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_102/MatMul¿
%lstm_cell_102/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_102_matmul_1_readvariableop_resource* 
_output_shapes
:
È *
dtype02'
%lstm_cell_102/MatMul_1/ReadVariableOp¬
lstm_cell_102/MatMul_1MatMulzeros:output:0-lstm_cell_102/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_102/MatMul_1¤
lstm_cell_102/addAddV2lstm_cell_102/MatMul:product:0 lstm_cell_102/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_102/add·
$lstm_cell_102/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_102_biasadd_readvariableop_resource*
_output_shapes	
: *
dtype02&
$lstm_cell_102/BiasAdd/ReadVariableOp±
lstm_cell_102/BiasAddBiasAddlstm_cell_102/add:z:0,lstm_cell_102/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_102/BiasAdd
lstm_cell_102/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_102/split/split_dimû
lstm_cell_102/splitSplit&lstm_cell_102/split/split_dim:output:0lstm_cell_102/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
lstm_cell_102/split
lstm_cell_102/SigmoidSigmoidlstm_cell_102/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_102/Sigmoid
lstm_cell_102/Sigmoid_1Sigmoidlstm_cell_102/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_102/Sigmoid_1
lstm_cell_102/mulMullstm_cell_102/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_102/mul
lstm_cell_102/ReluRelulstm_cell_102/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_102/Relu¡
lstm_cell_102/mul_1Mullstm_cell_102/Sigmoid:y:0 lstm_cell_102/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_102/mul_1
lstm_cell_102/add_1AddV2lstm_cell_102/mul:z:0lstm_cell_102/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_102/add_1
lstm_cell_102/Sigmoid_2Sigmoidlstm_cell_102/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_102/Sigmoid_2
lstm_cell_102/Relu_1Relulstm_cell_102/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_102/Relu_1¥
lstm_cell_102/mul_2Mullstm_cell_102/Sigmoid_2:y:0"lstm_cell_102/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_102/mul_2
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
while/loop_counter÷
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_102_matmul_readvariableop_resource.lstm_cell_102_matmul_1_readvariableop_resource-lstm_cell_102_biasadd_readvariableop_resource*
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
while_body_5099594*
condR
while_cond_5099593*M
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
runtimeê
IdentityIdentitystrided_slice_3:output:0%^lstm_cell_102/BiasAdd/ReadVariableOp$^lstm_cell_102/MatMul/ReadVariableOp&^lstm_cell_102/MatMul_1/ReadVariableOp^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_102/BiasAdd/ReadVariableOp$lstm_cell_102/BiasAdd/ReadVariableOp2J
#lstm_cell_102/MatMul/ReadVariableOp#lstm_cell_102/MatMul/ReadVariableOp2N
%lstm_cell_102/MatMul_1/ReadVariableOp%lstm_cell_102/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ØE

E__inference_lstm_102_layer_call_and_return_conditional_losses_5097680

inputs(
lstm_cell_102_5097598:	 )
lstm_cell_102_5097600:
È $
lstm_cell_102_5097602:	 
identity¢%lstm_cell_102/StatefulPartitionedCall¢whileD
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
strided_slice_2ª
%lstm_cell_102/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_102_5097598lstm_cell_102_5097600lstm_cell_102_5097602*
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
GPU 2J 8 *S
fNRL
J__inference_lstm_cell_102_layer_call_and_return_conditional_losses_50975972'
%lstm_cell_102/StatefulPartitionedCall
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
while/loop_counter¯
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_102_5097598lstm_cell_102_5097600lstm_cell_102_5097602*
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
while_body_5097611*
condR
while_cond_5097610*M
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
runtime
IdentityIdentitystrided_slice_3:output:0&^lstm_cell_102/StatefulPartitionedCall^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2N
%lstm_cell_102/StatefulPartitionedCall%lstm_cell_102/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¨Q
ü

lstm_102_while_body_5098775.
*lstm_102_while_lstm_102_while_loop_counter4
0lstm_102_while_lstm_102_while_maximum_iterations
lstm_102_while_placeholder 
lstm_102_while_placeholder_1 
lstm_102_while_placeholder_2 
lstm_102_while_placeholder_3-
)lstm_102_while_lstm_102_strided_slice_1_0i
elstm_102_while_tensorarrayv2read_tensorlistgetitem_lstm_102_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_102_while_lstm_cell_102_matmul_readvariableop_resource_0:	 S
?lstm_102_while_lstm_cell_102_matmul_1_readvariableop_resource_0:
È M
>lstm_102_while_lstm_cell_102_biasadd_readvariableop_resource_0:	 
lstm_102_while_identity
lstm_102_while_identity_1
lstm_102_while_identity_2
lstm_102_while_identity_3
lstm_102_while_identity_4
lstm_102_while_identity_5+
'lstm_102_while_lstm_102_strided_slice_1g
clstm_102_while_tensorarrayv2read_tensorlistgetitem_lstm_102_tensorarrayunstack_tensorlistfromtensorN
;lstm_102_while_lstm_cell_102_matmul_readvariableop_resource:	 Q
=lstm_102_while_lstm_cell_102_matmul_1_readvariableop_resource:
È K
<lstm_102_while_lstm_cell_102_biasadd_readvariableop_resource:	 ¢3lstm_102/while/lstm_cell_102/BiasAdd/ReadVariableOp¢2lstm_102/while/lstm_cell_102/MatMul/ReadVariableOp¢4lstm_102/while/lstm_cell_102/MatMul_1/ReadVariableOpÕ
@lstm_102/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2B
@lstm_102/while/TensorArrayV2Read/TensorListGetItem/element_shape
2lstm_102/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_102_while_tensorarrayv2read_tensorlistgetitem_lstm_102_tensorarrayunstack_tensorlistfromtensor_0lstm_102_while_placeholderIlstm_102/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype024
2lstm_102/while/TensorArrayV2Read/TensorListGetItemç
2lstm_102/while/lstm_cell_102/MatMul/ReadVariableOpReadVariableOp=lstm_102_while_lstm_cell_102_matmul_readvariableop_resource_0*
_output_shapes
:	 *
dtype024
2lstm_102/while/lstm_cell_102/MatMul/ReadVariableOpþ
#lstm_102/while/lstm_cell_102/MatMulMatMul9lstm_102/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_102/while/lstm_cell_102/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_102/while/lstm_cell_102/MatMulî
4lstm_102/while/lstm_cell_102/MatMul_1/ReadVariableOpReadVariableOp?lstm_102_while_lstm_cell_102_matmul_1_readvariableop_resource_0* 
_output_shapes
:
È *
dtype026
4lstm_102/while/lstm_cell_102/MatMul_1/ReadVariableOpç
%lstm_102/while/lstm_cell_102/MatMul_1MatMullstm_102_while_placeholder_2<lstm_102/while/lstm_cell_102/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2'
%lstm_102/while/lstm_cell_102/MatMul_1à
 lstm_102/while/lstm_cell_102/addAddV2-lstm_102/while/lstm_cell_102/MatMul:product:0/lstm_102/while/lstm_cell_102/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_102/while/lstm_cell_102/addæ
3lstm_102/while/lstm_cell_102/BiasAdd/ReadVariableOpReadVariableOp>lstm_102_while_lstm_cell_102_biasadd_readvariableop_resource_0*
_output_shapes	
: *
dtype025
3lstm_102/while/lstm_cell_102/BiasAdd/ReadVariableOpí
$lstm_102/while/lstm_cell_102/BiasAddBiasAdd$lstm_102/while/lstm_cell_102/add:z:0;lstm_102/while/lstm_cell_102/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_102/while/lstm_cell_102/BiasAdd
,lstm_102/while/lstm_cell_102/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2.
,lstm_102/while/lstm_cell_102/split/split_dim·
"lstm_102/while/lstm_cell_102/splitSplit5lstm_102/while/lstm_cell_102/split/split_dim:output:0-lstm_102/while/lstm_cell_102/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2$
"lstm_102/while/lstm_cell_102/split·
$lstm_102/while/lstm_cell_102/SigmoidSigmoid+lstm_102/while/lstm_cell_102/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2&
$lstm_102/while/lstm_cell_102/Sigmoid»
&lstm_102/while/lstm_cell_102/Sigmoid_1Sigmoid+lstm_102/while/lstm_cell_102/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2(
&lstm_102/while/lstm_cell_102/Sigmoid_1È
 lstm_102/while/lstm_cell_102/mulMul*lstm_102/while/lstm_cell_102/Sigmoid_1:y:0lstm_102_while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2"
 lstm_102/while/lstm_cell_102/mul®
!lstm_102/while/lstm_cell_102/ReluRelu+lstm_102/while/lstm_cell_102/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2#
!lstm_102/while/lstm_cell_102/ReluÝ
"lstm_102/while/lstm_cell_102/mul_1Mul(lstm_102/while/lstm_cell_102/Sigmoid:y:0/lstm_102/while/lstm_cell_102/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2$
"lstm_102/while/lstm_cell_102/mul_1Ò
"lstm_102/while/lstm_cell_102/add_1AddV2$lstm_102/while/lstm_cell_102/mul:z:0&lstm_102/while/lstm_cell_102/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2$
"lstm_102/while/lstm_cell_102/add_1»
&lstm_102/while/lstm_cell_102/Sigmoid_2Sigmoid+lstm_102/while/lstm_cell_102/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2(
&lstm_102/while/lstm_cell_102/Sigmoid_2­
#lstm_102/while/lstm_cell_102/Relu_1Relu&lstm_102/while/lstm_cell_102/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2%
#lstm_102/while/lstm_cell_102/Relu_1á
"lstm_102/while/lstm_cell_102/mul_2Mul*lstm_102/while/lstm_cell_102/Sigmoid_2:y:01lstm_102/while/lstm_cell_102/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2$
"lstm_102/while/lstm_cell_102/mul_2
3lstm_102/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_102_while_placeholder_1lstm_102_while_placeholder&lstm_102/while/lstm_cell_102/mul_2:z:0*
_output_shapes
: *
element_dtype025
3lstm_102/while/TensorArrayV2Write/TensorListSetItemn
lstm_102/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_102/while/add/y
lstm_102/while/addAddV2lstm_102_while_placeholderlstm_102/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_102/while/addr
lstm_102/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_102/while/add_1/y£
lstm_102/while/add_1AddV2*lstm_102_while_lstm_102_while_loop_counterlstm_102/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_102/while/add_1
lstm_102/while/IdentityIdentitylstm_102/while/add_1:z:04^lstm_102/while/lstm_cell_102/BiasAdd/ReadVariableOp3^lstm_102/while/lstm_cell_102/MatMul/ReadVariableOp5^lstm_102/while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_102/while/Identity·
lstm_102/while/Identity_1Identity0lstm_102_while_lstm_102_while_maximum_iterations4^lstm_102/while/lstm_cell_102/BiasAdd/ReadVariableOp3^lstm_102/while/lstm_cell_102/MatMul/ReadVariableOp5^lstm_102/while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_102/while/Identity_1
lstm_102/while/Identity_2Identitylstm_102/while/add:z:04^lstm_102/while/lstm_cell_102/BiasAdd/ReadVariableOp3^lstm_102/while/lstm_cell_102/MatMul/ReadVariableOp5^lstm_102/while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_102/while/Identity_2Ê
lstm_102/while/Identity_3IdentityClstm_102/while/TensorArrayV2Write/TensorListSetItem:output_handle:04^lstm_102/while/lstm_cell_102/BiasAdd/ReadVariableOp3^lstm_102/while/lstm_cell_102/MatMul/ReadVariableOp5^lstm_102/while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_102/while/Identity_3¿
lstm_102/while/Identity_4Identity&lstm_102/while/lstm_cell_102/mul_2:z:04^lstm_102/while/lstm_cell_102/BiasAdd/ReadVariableOp3^lstm_102/while/lstm_cell_102/MatMul/ReadVariableOp5^lstm_102/while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_102/while/Identity_4¿
lstm_102/while/Identity_5Identity&lstm_102/while/lstm_cell_102/add_1:z:04^lstm_102/while/lstm_cell_102/BiasAdd/ReadVariableOp3^lstm_102/while/lstm_cell_102/MatMul/ReadVariableOp5^lstm_102/while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_102/while/Identity_5";
lstm_102_while_identity lstm_102/while/Identity:output:0"?
lstm_102_while_identity_1"lstm_102/while/Identity_1:output:0"?
lstm_102_while_identity_2"lstm_102/while/Identity_2:output:0"?
lstm_102_while_identity_3"lstm_102/while/Identity_3:output:0"?
lstm_102_while_identity_4"lstm_102/while/Identity_4:output:0"?
lstm_102_while_identity_5"lstm_102/while/Identity_5:output:0"T
'lstm_102_while_lstm_102_strided_slice_1)lstm_102_while_lstm_102_strided_slice_1_0"~
<lstm_102_while_lstm_cell_102_biasadd_readvariableop_resource>lstm_102_while_lstm_cell_102_biasadd_readvariableop_resource_0"
=lstm_102_while_lstm_cell_102_matmul_1_readvariableop_resource?lstm_102_while_lstm_cell_102_matmul_1_readvariableop_resource_0"|
;lstm_102_while_lstm_cell_102_matmul_readvariableop_resource=lstm_102_while_lstm_cell_102_matmul_readvariableop_resource_0"Ì
clstm_102_while_tensorarrayv2read_tensorlistgetitem_lstm_102_tensorarrayunstack_tensorlistfromtensorelstm_102_while_tensorarrayv2read_tensorlistgetitem_lstm_102_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : 2j
3lstm_102/while/lstm_cell_102/BiasAdd/ReadVariableOp3lstm_102/while/lstm_cell_102/BiasAdd/ReadVariableOp2h
2lstm_102/while/lstm_cell_102/MatMul/ReadVariableOp2lstm_102/while/lstm_cell_102/MatMul/ReadVariableOp2l
4lstm_102/while/lstm_cell_102/MatMul_1/ReadVariableOp4lstm_102/while/lstm_cell_102/MatMul_1/ReadVariableOp: 
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
¨Q
ü

lstm_102_while_body_5098939.
*lstm_102_while_lstm_102_while_loop_counter4
0lstm_102_while_lstm_102_while_maximum_iterations
lstm_102_while_placeholder 
lstm_102_while_placeholder_1 
lstm_102_while_placeholder_2 
lstm_102_while_placeholder_3-
)lstm_102_while_lstm_102_strided_slice_1_0i
elstm_102_while_tensorarrayv2read_tensorlistgetitem_lstm_102_tensorarrayunstack_tensorlistfromtensor_0P
=lstm_102_while_lstm_cell_102_matmul_readvariableop_resource_0:	 S
?lstm_102_while_lstm_cell_102_matmul_1_readvariableop_resource_0:
È M
>lstm_102_while_lstm_cell_102_biasadd_readvariableop_resource_0:	 
lstm_102_while_identity
lstm_102_while_identity_1
lstm_102_while_identity_2
lstm_102_while_identity_3
lstm_102_while_identity_4
lstm_102_while_identity_5+
'lstm_102_while_lstm_102_strided_slice_1g
clstm_102_while_tensorarrayv2read_tensorlistgetitem_lstm_102_tensorarrayunstack_tensorlistfromtensorN
;lstm_102_while_lstm_cell_102_matmul_readvariableop_resource:	 Q
=lstm_102_while_lstm_cell_102_matmul_1_readvariableop_resource:
È K
<lstm_102_while_lstm_cell_102_biasadd_readvariableop_resource:	 ¢3lstm_102/while/lstm_cell_102/BiasAdd/ReadVariableOp¢2lstm_102/while/lstm_cell_102/MatMul/ReadVariableOp¢4lstm_102/while/lstm_cell_102/MatMul_1/ReadVariableOpÕ
@lstm_102/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2B
@lstm_102/while/TensorArrayV2Read/TensorListGetItem/element_shape
2lstm_102/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemelstm_102_while_tensorarrayv2read_tensorlistgetitem_lstm_102_tensorarrayunstack_tensorlistfromtensor_0lstm_102_while_placeholderIlstm_102/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype024
2lstm_102/while/TensorArrayV2Read/TensorListGetItemç
2lstm_102/while/lstm_cell_102/MatMul/ReadVariableOpReadVariableOp=lstm_102_while_lstm_cell_102_matmul_readvariableop_resource_0*
_output_shapes
:	 *
dtype024
2lstm_102/while/lstm_cell_102/MatMul/ReadVariableOpþ
#lstm_102/while/lstm_cell_102/MatMulMatMul9lstm_102/while/TensorArrayV2Read/TensorListGetItem:item:0:lstm_102/while/lstm_cell_102/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2%
#lstm_102/while/lstm_cell_102/MatMulî
4lstm_102/while/lstm_cell_102/MatMul_1/ReadVariableOpReadVariableOp?lstm_102_while_lstm_cell_102_matmul_1_readvariableop_resource_0* 
_output_shapes
:
È *
dtype026
4lstm_102/while/lstm_cell_102/MatMul_1/ReadVariableOpç
%lstm_102/while/lstm_cell_102/MatMul_1MatMullstm_102_while_placeholder_2<lstm_102/while/lstm_cell_102/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2'
%lstm_102/while/lstm_cell_102/MatMul_1à
 lstm_102/while/lstm_cell_102/addAddV2-lstm_102/while/lstm_cell_102/MatMul:product:0/lstm_102/while/lstm_cell_102/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2"
 lstm_102/while/lstm_cell_102/addæ
3lstm_102/while/lstm_cell_102/BiasAdd/ReadVariableOpReadVariableOp>lstm_102_while_lstm_cell_102_biasadd_readvariableop_resource_0*
_output_shapes	
: *
dtype025
3lstm_102/while/lstm_cell_102/BiasAdd/ReadVariableOpí
$lstm_102/while/lstm_cell_102/BiasAddBiasAdd$lstm_102/while/lstm_cell_102/add:z:0;lstm_102/while/lstm_cell_102/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2&
$lstm_102/while/lstm_cell_102/BiasAdd
,lstm_102/while/lstm_cell_102/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2.
,lstm_102/while/lstm_cell_102/split/split_dim·
"lstm_102/while/lstm_cell_102/splitSplit5lstm_102/while/lstm_cell_102/split/split_dim:output:0-lstm_102/while/lstm_cell_102/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2$
"lstm_102/while/lstm_cell_102/split·
$lstm_102/while/lstm_cell_102/SigmoidSigmoid+lstm_102/while/lstm_cell_102/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2&
$lstm_102/while/lstm_cell_102/Sigmoid»
&lstm_102/while/lstm_cell_102/Sigmoid_1Sigmoid+lstm_102/while/lstm_cell_102/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2(
&lstm_102/while/lstm_cell_102/Sigmoid_1È
 lstm_102/while/lstm_cell_102/mulMul*lstm_102/while/lstm_cell_102/Sigmoid_1:y:0lstm_102_while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2"
 lstm_102/while/lstm_cell_102/mul®
!lstm_102/while/lstm_cell_102/ReluRelu+lstm_102/while/lstm_cell_102/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2#
!lstm_102/while/lstm_cell_102/ReluÝ
"lstm_102/while/lstm_cell_102/mul_1Mul(lstm_102/while/lstm_cell_102/Sigmoid:y:0/lstm_102/while/lstm_cell_102/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2$
"lstm_102/while/lstm_cell_102/mul_1Ò
"lstm_102/while/lstm_cell_102/add_1AddV2$lstm_102/while/lstm_cell_102/mul:z:0&lstm_102/while/lstm_cell_102/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2$
"lstm_102/while/lstm_cell_102/add_1»
&lstm_102/while/lstm_cell_102/Sigmoid_2Sigmoid+lstm_102/while/lstm_cell_102/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2(
&lstm_102/while/lstm_cell_102/Sigmoid_2­
#lstm_102/while/lstm_cell_102/Relu_1Relu&lstm_102/while/lstm_cell_102/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2%
#lstm_102/while/lstm_cell_102/Relu_1á
"lstm_102/while/lstm_cell_102/mul_2Mul*lstm_102/while/lstm_cell_102/Sigmoid_2:y:01lstm_102/while/lstm_cell_102/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2$
"lstm_102/while/lstm_cell_102/mul_2
3lstm_102/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_102_while_placeholder_1lstm_102_while_placeholder&lstm_102/while/lstm_cell_102/mul_2:z:0*
_output_shapes
: *
element_dtype025
3lstm_102/while/TensorArrayV2Write/TensorListSetItemn
lstm_102/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_102/while/add/y
lstm_102/while/addAddV2lstm_102_while_placeholderlstm_102/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_102/while/addr
lstm_102/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_102/while/add_1/y£
lstm_102/while/add_1AddV2*lstm_102_while_lstm_102_while_loop_counterlstm_102/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_102/while/add_1
lstm_102/while/IdentityIdentitylstm_102/while/add_1:z:04^lstm_102/while/lstm_cell_102/BiasAdd/ReadVariableOp3^lstm_102/while/lstm_cell_102/MatMul/ReadVariableOp5^lstm_102/while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_102/while/Identity·
lstm_102/while/Identity_1Identity0lstm_102_while_lstm_102_while_maximum_iterations4^lstm_102/while/lstm_cell_102/BiasAdd/ReadVariableOp3^lstm_102/while/lstm_cell_102/MatMul/ReadVariableOp5^lstm_102/while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_102/while/Identity_1
lstm_102/while/Identity_2Identitylstm_102/while/add:z:04^lstm_102/while/lstm_cell_102/BiasAdd/ReadVariableOp3^lstm_102/while/lstm_cell_102/MatMul/ReadVariableOp5^lstm_102/while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_102/while/Identity_2Ê
lstm_102/while/Identity_3IdentityClstm_102/while/TensorArrayV2Write/TensorListSetItem:output_handle:04^lstm_102/while/lstm_cell_102/BiasAdd/ReadVariableOp3^lstm_102/while/lstm_cell_102/MatMul/ReadVariableOp5^lstm_102/while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_102/while/Identity_3¿
lstm_102/while/Identity_4Identity&lstm_102/while/lstm_cell_102/mul_2:z:04^lstm_102/while/lstm_cell_102/BiasAdd/ReadVariableOp3^lstm_102/while/lstm_cell_102/MatMul/ReadVariableOp5^lstm_102/while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_102/while/Identity_4¿
lstm_102/while/Identity_5Identity&lstm_102/while/lstm_cell_102/add_1:z:04^lstm_102/while/lstm_cell_102/BiasAdd/ReadVariableOp3^lstm_102/while/lstm_cell_102/MatMul/ReadVariableOp5^lstm_102/while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_102/while/Identity_5";
lstm_102_while_identity lstm_102/while/Identity:output:0"?
lstm_102_while_identity_1"lstm_102/while/Identity_1:output:0"?
lstm_102_while_identity_2"lstm_102/while/Identity_2:output:0"?
lstm_102_while_identity_3"lstm_102/while/Identity_3:output:0"?
lstm_102_while_identity_4"lstm_102/while/Identity_4:output:0"?
lstm_102_while_identity_5"lstm_102/while/Identity_5:output:0"T
'lstm_102_while_lstm_102_strided_slice_1)lstm_102_while_lstm_102_strided_slice_1_0"~
<lstm_102_while_lstm_cell_102_biasadd_readvariableop_resource>lstm_102_while_lstm_cell_102_biasadd_readvariableop_resource_0"
=lstm_102_while_lstm_cell_102_matmul_1_readvariableop_resource?lstm_102_while_lstm_cell_102_matmul_1_readvariableop_resource_0"|
;lstm_102_while_lstm_cell_102_matmul_readvariableop_resource=lstm_102_while_lstm_cell_102_matmul_readvariableop_resource_0"Ì
clstm_102_while_tensorarrayv2read_tensorlistgetitem_lstm_102_tensorarrayunstack_tensorlistfromtensorelstm_102_while_tensorarrayv2read_tensorlistgetitem_lstm_102_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : 2j
3lstm_102/while/lstm_cell_102/BiasAdd/ReadVariableOp3lstm_102/while/lstm_cell_102/BiasAdd/ReadVariableOp2h
2lstm_102/while/lstm_cell_102/MatMul/ReadVariableOp2lstm_102/while/lstm_cell_102/MatMul/ReadVariableOp2l
4lstm_102/while/lstm_cell_102/MatMul_1/ReadVariableOp4lstm_102/while/lstm_cell_102/MatMul_1/ReadVariableOp: 
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
while_cond_5099593
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5099593___redundant_placeholder05
1while_while_cond_5099593___redundant_placeholder15
1while_while_cond_5099593___redundant_placeholder25
1while_while_cond_5099593___redundant_placeholder3
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
F__inference_dense_205_layer_call_and_return_conditional_losses_5099752

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
while_cond_5099442
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5099442___redundant_placeholder05
1while_while_cond_5099442___redundant_placeholder15
1while_while_cond_5099442___redundant_placeholder25
1while_while_cond_5099442___redundant_placeholder3
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
D
Ü
while_body_5098468
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_102_matmul_readvariableop_resource_0:	 J
6while_lstm_cell_102_matmul_1_readvariableop_resource_0:
È D
5while_lstm_cell_102_biasadd_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_102_matmul_readvariableop_resource:	 H
4while_lstm_cell_102_matmul_1_readvariableop_resource:
È B
3while_lstm_cell_102_biasadd_readvariableop_resource:	 ¢*while/lstm_cell_102/BiasAdd/ReadVariableOp¢)while/lstm_cell_102/MatMul/ReadVariableOp¢+while/lstm_cell_102/MatMul_1/ReadVariableOpÃ
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
)while/TensorArrayV2Read/TensorListGetItemÌ
)while/lstm_cell_102/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_102_matmul_readvariableop_resource_0*
_output_shapes
:	 *
dtype02+
)while/lstm_cell_102/MatMul/ReadVariableOpÚ
while/lstm_cell_102/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_102/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_102/MatMulÓ
+while/lstm_cell_102/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_102_matmul_1_readvariableop_resource_0* 
_output_shapes
:
È *
dtype02-
+while/lstm_cell_102/MatMul_1/ReadVariableOpÃ
while/lstm_cell_102/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_102/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_102/MatMul_1¼
while/lstm_cell_102/addAddV2$while/lstm_cell_102/MatMul:product:0&while/lstm_cell_102/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_102/addË
*while/lstm_cell_102/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_102_biasadd_readvariableop_resource_0*
_output_shapes	
: *
dtype02,
*while/lstm_cell_102/BiasAdd/ReadVariableOpÉ
while/lstm_cell_102/BiasAddBiasAddwhile/lstm_cell_102/add:z:02while/lstm_cell_102/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_102/BiasAdd
#while/lstm_cell_102/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_102/split/split_dim
while/lstm_cell_102/splitSplit,while/lstm_cell_102/split/split_dim:output:0$while/lstm_cell_102/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
while/lstm_cell_102/split
while/lstm_cell_102/SigmoidSigmoid"while/lstm_cell_102/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_102/Sigmoid 
while/lstm_cell_102/Sigmoid_1Sigmoid"while/lstm_cell_102/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_102/Sigmoid_1¤
while/lstm_cell_102/mulMul!while/lstm_cell_102/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_102/mul
while/lstm_cell_102/ReluRelu"while/lstm_cell_102/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_102/Relu¹
while/lstm_cell_102/mul_1Mulwhile/lstm_cell_102/Sigmoid:y:0&while/lstm_cell_102/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_102/mul_1®
while/lstm_cell_102/add_1AddV2while/lstm_cell_102/mul:z:0while/lstm_cell_102/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_102/add_1 
while/lstm_cell_102/Sigmoid_2Sigmoid"while/lstm_cell_102/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_102/Sigmoid_2
while/lstm_cell_102/Relu_1Reluwhile/lstm_cell_102/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_102/Relu_1½
while/lstm_cell_102/mul_2Mul!while/lstm_cell_102/Sigmoid_2:y:0(while/lstm_cell_102/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_102/mul_2á
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_102/mul_2:z:0*
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
while/add_1å
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityø
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ç
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_102/mul_2:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_102/add_1:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_102_biasadd_readvariableop_resource5while_lstm_cell_102_biasadd_readvariableop_resource_0"n
4while_lstm_cell_102_matmul_1_readvariableop_resource6while_lstm_cell_102_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_102_matmul_readvariableop_resource4while_lstm_cell_102_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : 2X
*while/lstm_cell_102/BiasAdd/ReadVariableOp*while/lstm_cell_102/BiasAdd/ReadVariableOp2V
)while/lstm_cell_102/MatMul/ReadVariableOp)while/lstm_cell_102/MatMul/ReadVariableOp2Z
+while/lstm_cell_102/MatMul_1/ReadVariableOp+while/lstm_cell_102/MatMul_1/ReadVariableOp: 
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
ï
º
*__inference_lstm_102_layer_call_fn_5099700
inputs_0
unknown:	 
	unknown_0:
È 
	unknown_1:	 
identity¢StatefulPartitionedCall
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
GPU 2J 8 *N
fIRG
E__inference_lstm_102_layer_call_and_return_conditional_losses_50978902
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
í

ü
lstm_102_while_cond_5098774.
*lstm_102_while_lstm_102_while_loop_counter4
0lstm_102_while_lstm_102_while_maximum_iterations
lstm_102_while_placeholder 
lstm_102_while_placeholder_1 
lstm_102_while_placeholder_2 
lstm_102_while_placeholder_30
,lstm_102_while_less_lstm_102_strided_slice_1G
Clstm_102_while_lstm_102_while_cond_5098774___redundant_placeholder0G
Clstm_102_while_lstm_102_while_cond_5098774___redundant_placeholder1G
Clstm_102_while_lstm_102_while_cond_5098774___redundant_placeholder2G
Clstm_102_while_lstm_102_while_cond_5098774___redundant_placeholder3
lstm_102_while_identity

lstm_102/while/LessLesslstm_102_while_placeholder,lstm_102_while_less_lstm_102_strided_slice_1*
T0*
_output_shapes
: 2
lstm_102/while/Lessx
lstm_102/while/IdentityIdentitylstm_102/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_102/while/Identity";
lstm_102_while_identity lstm_102/while/Identity:output:0*(
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
Êg
à
*sequential_102_lstm_102_while_body_5097425L
Hsequential_102_lstm_102_while_sequential_102_lstm_102_while_loop_counterR
Nsequential_102_lstm_102_while_sequential_102_lstm_102_while_maximum_iterations-
)sequential_102_lstm_102_while_placeholder/
+sequential_102_lstm_102_while_placeholder_1/
+sequential_102_lstm_102_while_placeholder_2/
+sequential_102_lstm_102_while_placeholder_3K
Gsequential_102_lstm_102_while_sequential_102_lstm_102_strided_slice_1_0
sequential_102_lstm_102_while_tensorarrayv2read_tensorlistgetitem_sequential_102_lstm_102_tensorarrayunstack_tensorlistfromtensor_0_
Lsequential_102_lstm_102_while_lstm_cell_102_matmul_readvariableop_resource_0:	 b
Nsequential_102_lstm_102_while_lstm_cell_102_matmul_1_readvariableop_resource_0:
È \
Msequential_102_lstm_102_while_lstm_cell_102_biasadd_readvariableop_resource_0:	 *
&sequential_102_lstm_102_while_identity,
(sequential_102_lstm_102_while_identity_1,
(sequential_102_lstm_102_while_identity_2,
(sequential_102_lstm_102_while_identity_3,
(sequential_102_lstm_102_while_identity_4,
(sequential_102_lstm_102_while_identity_5I
Esequential_102_lstm_102_while_sequential_102_lstm_102_strided_slice_1
sequential_102_lstm_102_while_tensorarrayv2read_tensorlistgetitem_sequential_102_lstm_102_tensorarrayunstack_tensorlistfromtensor]
Jsequential_102_lstm_102_while_lstm_cell_102_matmul_readvariableop_resource:	 `
Lsequential_102_lstm_102_while_lstm_cell_102_matmul_1_readvariableop_resource:
È Z
Ksequential_102_lstm_102_while_lstm_cell_102_biasadd_readvariableop_resource:	 ¢Bsequential_102/lstm_102/while/lstm_cell_102/BiasAdd/ReadVariableOp¢Asequential_102/lstm_102/while/lstm_cell_102/MatMul/ReadVariableOp¢Csequential_102/lstm_102/while/lstm_cell_102/MatMul_1/ReadVariableOpó
Osequential_102/lstm_102/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2Q
Osequential_102/lstm_102/while/TensorArrayV2Read/TensorListGetItem/element_shapeä
Asequential_102/lstm_102/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_102_lstm_102_while_tensorarrayv2read_tensorlistgetitem_sequential_102_lstm_102_tensorarrayunstack_tensorlistfromtensor_0)sequential_102_lstm_102_while_placeholderXsequential_102/lstm_102/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02C
Asequential_102/lstm_102/while/TensorArrayV2Read/TensorListGetItem
Asequential_102/lstm_102/while/lstm_cell_102/MatMul/ReadVariableOpReadVariableOpLsequential_102_lstm_102_while_lstm_cell_102_matmul_readvariableop_resource_0*
_output_shapes
:	 *
dtype02C
Asequential_102/lstm_102/while/lstm_cell_102/MatMul/ReadVariableOpº
2sequential_102/lstm_102/while/lstm_cell_102/MatMulMatMulHsequential_102/lstm_102/while/TensorArrayV2Read/TensorListGetItem:item:0Isequential_102/lstm_102/while/lstm_cell_102/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 24
2sequential_102/lstm_102/while/lstm_cell_102/MatMul
Csequential_102/lstm_102/while/lstm_cell_102/MatMul_1/ReadVariableOpReadVariableOpNsequential_102_lstm_102_while_lstm_cell_102_matmul_1_readvariableop_resource_0* 
_output_shapes
:
È *
dtype02E
Csequential_102/lstm_102/while/lstm_cell_102/MatMul_1/ReadVariableOp£
4sequential_102/lstm_102/while/lstm_cell_102/MatMul_1MatMul+sequential_102_lstm_102_while_placeholder_2Ksequential_102/lstm_102/while/lstm_cell_102/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 26
4sequential_102/lstm_102/while/lstm_cell_102/MatMul_1
/sequential_102/lstm_102/while/lstm_cell_102/addAddV2<sequential_102/lstm_102/while/lstm_cell_102/MatMul:product:0>sequential_102/lstm_102/while/lstm_cell_102/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 21
/sequential_102/lstm_102/while/lstm_cell_102/add
Bsequential_102/lstm_102/while/lstm_cell_102/BiasAdd/ReadVariableOpReadVariableOpMsequential_102_lstm_102_while_lstm_cell_102_biasadd_readvariableop_resource_0*
_output_shapes	
: *
dtype02D
Bsequential_102/lstm_102/while/lstm_cell_102/BiasAdd/ReadVariableOp©
3sequential_102/lstm_102/while/lstm_cell_102/BiasAddBiasAdd3sequential_102/lstm_102/while/lstm_cell_102/add:z:0Jsequential_102/lstm_102/while/lstm_cell_102/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 25
3sequential_102/lstm_102/while/lstm_cell_102/BiasAdd¼
;sequential_102/lstm_102/while/lstm_cell_102/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2=
;sequential_102/lstm_102/while/lstm_cell_102/split/split_dimó
1sequential_102/lstm_102/while/lstm_cell_102/splitSplitDsequential_102/lstm_102/while/lstm_cell_102/split/split_dim:output:0<sequential_102/lstm_102/while/lstm_cell_102/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split23
1sequential_102/lstm_102/while/lstm_cell_102/splitä
3sequential_102/lstm_102/while/lstm_cell_102/SigmoidSigmoid:sequential_102/lstm_102/while/lstm_cell_102/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ25
3sequential_102/lstm_102/while/lstm_cell_102/Sigmoidè
5sequential_102/lstm_102/while/lstm_cell_102/Sigmoid_1Sigmoid:sequential_102/lstm_102/while/lstm_cell_102/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ27
5sequential_102/lstm_102/while/lstm_cell_102/Sigmoid_1
/sequential_102/lstm_102/while/lstm_cell_102/mulMul9sequential_102/lstm_102/while/lstm_cell_102/Sigmoid_1:y:0+sequential_102_lstm_102_while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ21
/sequential_102/lstm_102/while/lstm_cell_102/mulÛ
0sequential_102/lstm_102/while/lstm_cell_102/ReluRelu:sequential_102/lstm_102/while/lstm_cell_102/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ22
0sequential_102/lstm_102/while/lstm_cell_102/Relu
1sequential_102/lstm_102/while/lstm_cell_102/mul_1Mul7sequential_102/lstm_102/while/lstm_cell_102/Sigmoid:y:0>sequential_102/lstm_102/while/lstm_cell_102/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ23
1sequential_102/lstm_102/while/lstm_cell_102/mul_1
1sequential_102/lstm_102/while/lstm_cell_102/add_1AddV23sequential_102/lstm_102/while/lstm_cell_102/mul:z:05sequential_102/lstm_102/while/lstm_cell_102/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ23
1sequential_102/lstm_102/while/lstm_cell_102/add_1è
5sequential_102/lstm_102/while/lstm_cell_102/Sigmoid_2Sigmoid:sequential_102/lstm_102/while/lstm_cell_102/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ27
5sequential_102/lstm_102/while/lstm_cell_102/Sigmoid_2Ú
2sequential_102/lstm_102/while/lstm_cell_102/Relu_1Relu5sequential_102/lstm_102/while/lstm_cell_102/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ24
2sequential_102/lstm_102/while/lstm_cell_102/Relu_1
1sequential_102/lstm_102/while/lstm_cell_102/mul_2Mul9sequential_102/lstm_102/while/lstm_cell_102/Sigmoid_2:y:0@sequential_102/lstm_102/while/lstm_cell_102/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ23
1sequential_102/lstm_102/while/lstm_cell_102/mul_2Ù
Bsequential_102/lstm_102/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem+sequential_102_lstm_102_while_placeholder_1)sequential_102_lstm_102_while_placeholder5sequential_102/lstm_102/while/lstm_cell_102/mul_2:z:0*
_output_shapes
: *
element_dtype02D
Bsequential_102/lstm_102/while/TensorArrayV2Write/TensorListSetItem
#sequential_102/lstm_102/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2%
#sequential_102/lstm_102/while/add/yÉ
!sequential_102/lstm_102/while/addAddV2)sequential_102_lstm_102_while_placeholder,sequential_102/lstm_102/while/add/y:output:0*
T0*
_output_shapes
: 2#
!sequential_102/lstm_102/while/add
%sequential_102/lstm_102/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2'
%sequential_102/lstm_102/while/add_1/yî
#sequential_102/lstm_102/while/add_1AddV2Hsequential_102_lstm_102_while_sequential_102_lstm_102_while_loop_counter.sequential_102/lstm_102/while/add_1/y:output:0*
T0*
_output_shapes
: 2%
#sequential_102/lstm_102/while/add_1õ
&sequential_102/lstm_102/while/IdentityIdentity'sequential_102/lstm_102/while/add_1:z:0C^sequential_102/lstm_102/while/lstm_cell_102/BiasAdd/ReadVariableOpB^sequential_102/lstm_102/while/lstm_cell_102/MatMul/ReadVariableOpD^sequential_102/lstm_102/while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2(
&sequential_102/lstm_102/while/Identity 
(sequential_102/lstm_102/while/Identity_1IdentityNsequential_102_lstm_102_while_sequential_102_lstm_102_while_maximum_iterationsC^sequential_102/lstm_102/while/lstm_cell_102/BiasAdd/ReadVariableOpB^sequential_102/lstm_102/while/lstm_cell_102/MatMul/ReadVariableOpD^sequential_102/lstm_102/while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2*
(sequential_102/lstm_102/while/Identity_1÷
(sequential_102/lstm_102/while/Identity_2Identity%sequential_102/lstm_102/while/add:z:0C^sequential_102/lstm_102/while/lstm_cell_102/BiasAdd/ReadVariableOpB^sequential_102/lstm_102/while/lstm_cell_102/MatMul/ReadVariableOpD^sequential_102/lstm_102/while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2*
(sequential_102/lstm_102/while/Identity_2¤
(sequential_102/lstm_102/while/Identity_3IdentityRsequential_102/lstm_102/while/TensorArrayV2Write/TensorListSetItem:output_handle:0C^sequential_102/lstm_102/while/lstm_cell_102/BiasAdd/ReadVariableOpB^sequential_102/lstm_102/while/lstm_cell_102/MatMul/ReadVariableOpD^sequential_102/lstm_102/while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2*
(sequential_102/lstm_102/while/Identity_3
(sequential_102/lstm_102/while/Identity_4Identity5sequential_102/lstm_102/while/lstm_cell_102/mul_2:z:0C^sequential_102/lstm_102/while/lstm_cell_102/BiasAdd/ReadVariableOpB^sequential_102/lstm_102/while/lstm_cell_102/MatMul/ReadVariableOpD^sequential_102/lstm_102/while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2*
(sequential_102/lstm_102/while/Identity_4
(sequential_102/lstm_102/while/Identity_5Identity5sequential_102/lstm_102/while/lstm_cell_102/add_1:z:0C^sequential_102/lstm_102/while/lstm_cell_102/BiasAdd/ReadVariableOpB^sequential_102/lstm_102/while/lstm_cell_102/MatMul/ReadVariableOpD^sequential_102/lstm_102/while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2*
(sequential_102/lstm_102/while/Identity_5"Y
&sequential_102_lstm_102_while_identity/sequential_102/lstm_102/while/Identity:output:0"]
(sequential_102_lstm_102_while_identity_11sequential_102/lstm_102/while/Identity_1:output:0"]
(sequential_102_lstm_102_while_identity_21sequential_102/lstm_102/while/Identity_2:output:0"]
(sequential_102_lstm_102_while_identity_31sequential_102/lstm_102/while/Identity_3:output:0"]
(sequential_102_lstm_102_while_identity_41sequential_102/lstm_102/while/Identity_4:output:0"]
(sequential_102_lstm_102_while_identity_51sequential_102/lstm_102/while/Identity_5:output:0"
Ksequential_102_lstm_102_while_lstm_cell_102_biasadd_readvariableop_resourceMsequential_102_lstm_102_while_lstm_cell_102_biasadd_readvariableop_resource_0"
Lsequential_102_lstm_102_while_lstm_cell_102_matmul_1_readvariableop_resourceNsequential_102_lstm_102_while_lstm_cell_102_matmul_1_readvariableop_resource_0"
Jsequential_102_lstm_102_while_lstm_cell_102_matmul_readvariableop_resourceLsequential_102_lstm_102_while_lstm_cell_102_matmul_readvariableop_resource_0"
Esequential_102_lstm_102_while_sequential_102_lstm_102_strided_slice_1Gsequential_102_lstm_102_while_sequential_102_lstm_102_strided_slice_1_0"
sequential_102_lstm_102_while_tensorarrayv2read_tensorlistgetitem_sequential_102_lstm_102_tensorarrayunstack_tensorlistfromtensorsequential_102_lstm_102_while_tensorarrayv2read_tensorlistgetitem_sequential_102_lstm_102_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : 2
Bsequential_102/lstm_102/while/lstm_cell_102/BiasAdd/ReadVariableOpBsequential_102/lstm_102/while/lstm_cell_102/BiasAdd/ReadVariableOp2
Asequential_102/lstm_102/while/lstm_cell_102/MatMul/ReadVariableOpAsequential_102/lstm_102/while/lstm_cell_102/MatMul/ReadVariableOp2
Csequential_102/lstm_102/while/lstm_cell_102/MatMul_1/ReadVariableOpCsequential_102/lstm_102/while/lstm_cell_102/MatMul_1/ReadVariableOp: 
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
¡

"__inference__wrapped_model_5097522
lstm_102_inputW
Dsequential_102_lstm_102_lstm_cell_102_matmul_readvariableop_resource:	 Z
Fsequential_102_lstm_102_lstm_cell_102_matmul_1_readvariableop_resource:
È T
Esequential_102_lstm_102_lstm_cell_102_biasadd_readvariableop_resource:	 J
7sequential_102_dense_204_matmul_readvariableop_resource:	ÈdF
8sequential_102_dense_204_biasadd_readvariableop_resource:dI
7sequential_102_dense_205_matmul_readvariableop_resource:dF
8sequential_102_dense_205_biasadd_readvariableop_resource:
identity¢/sequential_102/dense_204/BiasAdd/ReadVariableOp¢.sequential_102/dense_204/MatMul/ReadVariableOp¢/sequential_102/dense_205/BiasAdd/ReadVariableOp¢.sequential_102/dense_205/MatMul/ReadVariableOp¢<sequential_102/lstm_102/lstm_cell_102/BiasAdd/ReadVariableOp¢;sequential_102/lstm_102/lstm_cell_102/MatMul/ReadVariableOp¢=sequential_102/lstm_102/lstm_cell_102/MatMul_1/ReadVariableOp¢sequential_102/lstm_102/while|
sequential_102/lstm_102/ShapeShapelstm_102_input*
T0*
_output_shapes
:2
sequential_102/lstm_102/Shape¤
+sequential_102/lstm_102/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_102/lstm_102/strided_slice/stack¨
-sequential_102/lstm_102/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_102/lstm_102/strided_slice/stack_1¨
-sequential_102/lstm_102/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-sequential_102/lstm_102/strided_slice/stack_2ò
%sequential_102/lstm_102/strided_sliceStridedSlice&sequential_102/lstm_102/Shape:output:04sequential_102/lstm_102/strided_slice/stack:output:06sequential_102/lstm_102/strided_slice/stack_1:output:06sequential_102/lstm_102/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2'
%sequential_102/lstm_102/strided_slice
#sequential_102/lstm_102/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :È2%
#sequential_102/lstm_102/zeros/mul/yÌ
!sequential_102/lstm_102/zeros/mulMul.sequential_102/lstm_102/strided_slice:output:0,sequential_102/lstm_102/zeros/mul/y:output:0*
T0*
_output_shapes
: 2#
!sequential_102/lstm_102/zeros/mul
$sequential_102/lstm_102/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2&
$sequential_102/lstm_102/zeros/Less/yÇ
"sequential_102/lstm_102/zeros/LessLess%sequential_102/lstm_102/zeros/mul:z:0-sequential_102/lstm_102/zeros/Less/y:output:0*
T0*
_output_shapes
: 2$
"sequential_102/lstm_102/zeros/Less
&sequential_102/lstm_102/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :È2(
&sequential_102/lstm_102/zeros/packed/1ã
$sequential_102/lstm_102/zeros/packedPack.sequential_102/lstm_102/strided_slice:output:0/sequential_102/lstm_102/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2&
$sequential_102/lstm_102/zeros/packed
#sequential_102/lstm_102/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#sequential_102/lstm_102/zeros/ConstÖ
sequential_102/lstm_102/zerosFill-sequential_102/lstm_102/zeros/packed:output:0,sequential_102/lstm_102/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
sequential_102/lstm_102/zeros
%sequential_102/lstm_102/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :È2'
%sequential_102/lstm_102/zeros_1/mul/yÒ
#sequential_102/lstm_102/zeros_1/mulMul.sequential_102/lstm_102/strided_slice:output:0.sequential_102/lstm_102/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2%
#sequential_102/lstm_102/zeros_1/mul
&sequential_102/lstm_102/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2(
&sequential_102/lstm_102/zeros_1/Less/yÏ
$sequential_102/lstm_102/zeros_1/LessLess'sequential_102/lstm_102/zeros_1/mul:z:0/sequential_102/lstm_102/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2&
$sequential_102/lstm_102/zeros_1/Less
(sequential_102/lstm_102/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :È2*
(sequential_102/lstm_102/zeros_1/packed/1é
&sequential_102/lstm_102/zeros_1/packedPack.sequential_102/lstm_102/strided_slice:output:01sequential_102/lstm_102/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2(
&sequential_102/lstm_102/zeros_1/packed
%sequential_102/lstm_102/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2'
%sequential_102/lstm_102/zeros_1/ConstÞ
sequential_102/lstm_102/zeros_1Fill/sequential_102/lstm_102/zeros_1/packed:output:0.sequential_102/lstm_102/zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2!
sequential_102/lstm_102/zeros_1¥
&sequential_102/lstm_102/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2(
&sequential_102/lstm_102/transpose/permÊ
!sequential_102/lstm_102/transpose	Transposelstm_102_input/sequential_102/lstm_102/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!sequential_102/lstm_102/transpose
sequential_102/lstm_102/Shape_1Shape%sequential_102/lstm_102/transpose:y:0*
T0*
_output_shapes
:2!
sequential_102/lstm_102/Shape_1¨
-sequential_102/lstm_102/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-sequential_102/lstm_102/strided_slice_1/stack¬
/sequential_102/lstm_102/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/sequential_102/lstm_102/strided_slice_1/stack_1¬
/sequential_102/lstm_102/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/sequential_102/lstm_102/strided_slice_1/stack_2þ
'sequential_102/lstm_102/strided_slice_1StridedSlice(sequential_102/lstm_102/Shape_1:output:06sequential_102/lstm_102/strided_slice_1/stack:output:08sequential_102/lstm_102/strided_slice_1/stack_1:output:08sequential_102/lstm_102/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'sequential_102/lstm_102/strided_slice_1µ
3sequential_102/lstm_102/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ25
3sequential_102/lstm_102/TensorArrayV2/element_shape
%sequential_102/lstm_102/TensorArrayV2TensorListReserve<sequential_102/lstm_102/TensorArrayV2/element_shape:output:00sequential_102/lstm_102/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02'
%sequential_102/lstm_102/TensorArrayV2ï
Msequential_102/lstm_102/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2O
Msequential_102/lstm_102/TensorArrayUnstack/TensorListFromTensor/element_shapeØ
?sequential_102/lstm_102/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor%sequential_102/lstm_102/transpose:y:0Vsequential_102/lstm_102/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02A
?sequential_102/lstm_102/TensorArrayUnstack/TensorListFromTensor¨
-sequential_102/lstm_102/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2/
-sequential_102/lstm_102/strided_slice_2/stack¬
/sequential_102/lstm_102/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/sequential_102/lstm_102/strided_slice_2/stack_1¬
/sequential_102/lstm_102/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/sequential_102/lstm_102/strided_slice_2/stack_2
'sequential_102/lstm_102/strided_slice_2StridedSlice%sequential_102/lstm_102/transpose:y:06sequential_102/lstm_102/strided_slice_2/stack:output:08sequential_102/lstm_102/strided_slice_2/stack_1:output:08sequential_102/lstm_102/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2)
'sequential_102/lstm_102/strided_slice_2
;sequential_102/lstm_102/lstm_cell_102/MatMul/ReadVariableOpReadVariableOpDsequential_102_lstm_102_lstm_cell_102_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype02=
;sequential_102/lstm_102/lstm_cell_102/MatMul/ReadVariableOp
,sequential_102/lstm_102/lstm_cell_102/MatMulMatMul0sequential_102/lstm_102/strided_slice_2:output:0Csequential_102/lstm_102/lstm_cell_102/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2.
,sequential_102/lstm_102/lstm_cell_102/MatMul
=sequential_102/lstm_102/lstm_cell_102/MatMul_1/ReadVariableOpReadVariableOpFsequential_102_lstm_102_lstm_cell_102_matmul_1_readvariableop_resource* 
_output_shapes
:
È *
dtype02?
=sequential_102/lstm_102/lstm_cell_102/MatMul_1/ReadVariableOp
.sequential_102/lstm_102/lstm_cell_102/MatMul_1MatMul&sequential_102/lstm_102/zeros:output:0Esequential_102/lstm_102/lstm_cell_102/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 20
.sequential_102/lstm_102/lstm_cell_102/MatMul_1
)sequential_102/lstm_102/lstm_cell_102/addAddV26sequential_102/lstm_102/lstm_cell_102/MatMul:product:08sequential_102/lstm_102/lstm_cell_102/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2+
)sequential_102/lstm_102/lstm_cell_102/addÿ
<sequential_102/lstm_102/lstm_cell_102/BiasAdd/ReadVariableOpReadVariableOpEsequential_102_lstm_102_lstm_cell_102_biasadd_readvariableop_resource*
_output_shapes	
: *
dtype02>
<sequential_102/lstm_102/lstm_cell_102/BiasAdd/ReadVariableOp
-sequential_102/lstm_102/lstm_cell_102/BiasAddBiasAdd-sequential_102/lstm_102/lstm_cell_102/add:z:0Dsequential_102/lstm_102/lstm_cell_102/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2/
-sequential_102/lstm_102/lstm_cell_102/BiasAdd°
5sequential_102/lstm_102/lstm_cell_102/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :27
5sequential_102/lstm_102/lstm_cell_102/split/split_dimÛ
+sequential_102/lstm_102/lstm_cell_102/splitSplit>sequential_102/lstm_102/lstm_cell_102/split/split_dim:output:06sequential_102/lstm_102/lstm_cell_102/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2-
+sequential_102/lstm_102/lstm_cell_102/splitÒ
-sequential_102/lstm_102/lstm_cell_102/SigmoidSigmoid4sequential_102/lstm_102/lstm_cell_102/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2/
-sequential_102/lstm_102/lstm_cell_102/SigmoidÖ
/sequential_102/lstm_102/lstm_cell_102/Sigmoid_1Sigmoid4sequential_102/lstm_102/lstm_cell_102/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ21
/sequential_102/lstm_102/lstm_cell_102/Sigmoid_1ï
)sequential_102/lstm_102/lstm_cell_102/mulMul3sequential_102/lstm_102/lstm_cell_102/Sigmoid_1:y:0(sequential_102/lstm_102/zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2+
)sequential_102/lstm_102/lstm_cell_102/mulÉ
*sequential_102/lstm_102/lstm_cell_102/ReluRelu4sequential_102/lstm_102/lstm_cell_102/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2,
*sequential_102/lstm_102/lstm_cell_102/Relu
+sequential_102/lstm_102/lstm_cell_102/mul_1Mul1sequential_102/lstm_102/lstm_cell_102/Sigmoid:y:08sequential_102/lstm_102/lstm_cell_102/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2-
+sequential_102/lstm_102/lstm_cell_102/mul_1ö
+sequential_102/lstm_102/lstm_cell_102/add_1AddV2-sequential_102/lstm_102/lstm_cell_102/mul:z:0/sequential_102/lstm_102/lstm_cell_102/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2-
+sequential_102/lstm_102/lstm_cell_102/add_1Ö
/sequential_102/lstm_102/lstm_cell_102/Sigmoid_2Sigmoid4sequential_102/lstm_102/lstm_cell_102/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ21
/sequential_102/lstm_102/lstm_cell_102/Sigmoid_2È
,sequential_102/lstm_102/lstm_cell_102/Relu_1Relu/sequential_102/lstm_102/lstm_cell_102/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2.
,sequential_102/lstm_102/lstm_cell_102/Relu_1
+sequential_102/lstm_102/lstm_cell_102/mul_2Mul3sequential_102/lstm_102/lstm_cell_102/Sigmoid_2:y:0:sequential_102/lstm_102/lstm_cell_102/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2-
+sequential_102/lstm_102/lstm_cell_102/mul_2¿
5sequential_102/lstm_102/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÈ   27
5sequential_102/lstm_102/TensorArrayV2_1/element_shape
'sequential_102/lstm_102/TensorArrayV2_1TensorListReserve>sequential_102/lstm_102/TensorArrayV2_1/element_shape:output:00sequential_102/lstm_102/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'sequential_102/lstm_102/TensorArrayV2_1~
sequential_102/lstm_102/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_102/lstm_102/time¯
0sequential_102/lstm_102/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ22
0sequential_102/lstm_102/while/maximum_iterations
*sequential_102/lstm_102/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2,
*sequential_102/lstm_102/while/loop_counterß
sequential_102/lstm_102/whileWhile3sequential_102/lstm_102/while/loop_counter:output:09sequential_102/lstm_102/while/maximum_iterations:output:0%sequential_102/lstm_102/time:output:00sequential_102/lstm_102/TensorArrayV2_1:handle:0&sequential_102/lstm_102/zeros:output:0(sequential_102/lstm_102/zeros_1:output:00sequential_102/lstm_102/strided_slice_1:output:0Osequential_102/lstm_102/TensorArrayUnstack/TensorListFromTensor:output_handle:0Dsequential_102_lstm_102_lstm_cell_102_matmul_readvariableop_resourceFsequential_102_lstm_102_lstm_cell_102_matmul_1_readvariableop_resourceEsequential_102_lstm_102_lstm_cell_102_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : *%
_read_only_resource_inputs
	
*6
body.R,
*sequential_102_lstm_102_while_body_5097425*6
cond.R,
*sequential_102_lstm_102_while_cond_5097424*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : *
parallel_iterations 2
sequential_102/lstm_102/whileå
Hsequential_102/lstm_102/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÈ   2J
Hsequential_102/lstm_102/TensorArrayV2Stack/TensorListStack/element_shapeÉ
:sequential_102/lstm_102/TensorArrayV2Stack/TensorListStackTensorListStack&sequential_102/lstm_102/while:output:3Qsequential_102/lstm_102/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*
element_dtype02<
:sequential_102/lstm_102/TensorArrayV2Stack/TensorListStack±
-sequential_102/lstm_102/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2/
-sequential_102/lstm_102/strided_slice_3/stack¬
/sequential_102/lstm_102/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 21
/sequential_102/lstm_102/strided_slice_3/stack_1¬
/sequential_102/lstm_102/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/sequential_102/lstm_102/strided_slice_3/stack_2«
'sequential_102/lstm_102/strided_slice_3StridedSliceCsequential_102/lstm_102/TensorArrayV2Stack/TensorListStack:tensor:06sequential_102/lstm_102/strided_slice_3/stack:output:08sequential_102/lstm_102/strided_slice_3/stack_1:output:08sequential_102/lstm_102/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*
shrink_axis_mask2)
'sequential_102/lstm_102/strided_slice_3©
(sequential_102/lstm_102/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2*
(sequential_102/lstm_102/transpose_1/perm
#sequential_102/lstm_102/transpose_1	TransposeCsequential_102/lstm_102/TensorArrayV2Stack/TensorListStack:tensor:01sequential_102/lstm_102/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2%
#sequential_102/lstm_102/transpose_1
sequential_102/lstm_102/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2!
sequential_102/lstm_102/runtimeÙ
.sequential_102/dense_204/MatMul/ReadVariableOpReadVariableOp7sequential_102_dense_204_matmul_readvariableop_resource*
_output_shapes
:	Èd*
dtype020
.sequential_102/dense_204/MatMul/ReadVariableOpè
sequential_102/dense_204/MatMulMatMul0sequential_102/lstm_102/strided_slice_3:output:06sequential_102/dense_204/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2!
sequential_102/dense_204/MatMul×
/sequential_102/dense_204/BiasAdd/ReadVariableOpReadVariableOp8sequential_102_dense_204_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype021
/sequential_102/dense_204/BiasAdd/ReadVariableOpå
 sequential_102/dense_204/BiasAddBiasAdd)sequential_102/dense_204/MatMul:product:07sequential_102/dense_204/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2"
 sequential_102/dense_204/BiasAdd£
sequential_102/dense_204/ReluRelu)sequential_102/dense_204/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
sequential_102/dense_204/ReluØ
.sequential_102/dense_205/MatMul/ReadVariableOpReadVariableOp7sequential_102_dense_205_matmul_readvariableop_resource*
_output_shapes

:d*
dtype020
.sequential_102/dense_205/MatMul/ReadVariableOpã
sequential_102/dense_205/MatMulMatMul+sequential_102/dense_204/Relu:activations:06sequential_102/dense_205/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
sequential_102/dense_205/MatMul×
/sequential_102/dense_205/BiasAdd/ReadVariableOpReadVariableOp8sequential_102_dense_205_biasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/sequential_102/dense_205/BiasAdd/ReadVariableOpå
 sequential_102/dense_205/BiasAddBiasAdd)sequential_102/dense_205/MatMul:product:07sequential_102/dense_205/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 sequential_102/dense_205/BiasAdd 
IdentityIdentity)sequential_102/dense_205/BiasAdd:output:00^sequential_102/dense_204/BiasAdd/ReadVariableOp/^sequential_102/dense_204/MatMul/ReadVariableOp0^sequential_102/dense_205/BiasAdd/ReadVariableOp/^sequential_102/dense_205/MatMul/ReadVariableOp=^sequential_102/lstm_102/lstm_cell_102/BiasAdd/ReadVariableOp<^sequential_102/lstm_102/lstm_cell_102/MatMul/ReadVariableOp>^sequential_102/lstm_102/lstm_cell_102/MatMul_1/ReadVariableOp^sequential_102/lstm_102/while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2b
/sequential_102/dense_204/BiasAdd/ReadVariableOp/sequential_102/dense_204/BiasAdd/ReadVariableOp2`
.sequential_102/dense_204/MatMul/ReadVariableOp.sequential_102/dense_204/MatMul/ReadVariableOp2b
/sequential_102/dense_205/BiasAdd/ReadVariableOp/sequential_102/dense_205/BiasAdd/ReadVariableOp2`
.sequential_102/dense_205/MatMul/ReadVariableOp.sequential_102/dense_205/MatMul/ReadVariableOp2|
<sequential_102/lstm_102/lstm_cell_102/BiasAdd/ReadVariableOp<sequential_102/lstm_102/lstm_cell_102/BiasAdd/ReadVariableOp2z
;sequential_102/lstm_102/lstm_cell_102/MatMul/ReadVariableOp;sequential_102/lstm_102/lstm_cell_102/MatMul/ReadVariableOp2~
=sequential_102/lstm_102/lstm_cell_102/MatMul_1/ReadVariableOp=sequential_102/lstm_102/lstm_cell_102/MatMul_1/ReadVariableOp2>
sequential_102/lstm_102/whilesequential_102/lstm_102/while:[ W
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_namelstm_102_input
¾B

 __inference__traced_save_5099966
file_prefix/
+savev2_dense_204_kernel_read_readvariableop-
)savev2_dense_204_bias_read_readvariableop/
+savev2_dense_205_kernel_read_readvariableop-
)savev2_dense_205_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop<
8savev2_lstm_102_lstm_cell_102_kernel_read_readvariableopF
Bsavev2_lstm_102_lstm_cell_102_recurrent_kernel_read_readvariableop:
6savev2_lstm_102_lstm_cell_102_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_204_kernel_m_read_readvariableop4
0savev2_adam_dense_204_bias_m_read_readvariableop6
2savev2_adam_dense_205_kernel_m_read_readvariableop4
0savev2_adam_dense_205_bias_m_read_readvariableopC
?savev2_adam_lstm_102_lstm_cell_102_kernel_m_read_readvariableopM
Isavev2_adam_lstm_102_lstm_cell_102_recurrent_kernel_m_read_readvariableopA
=savev2_adam_lstm_102_lstm_cell_102_bias_m_read_readvariableop6
2savev2_adam_dense_204_kernel_v_read_readvariableop4
0savev2_adam_dense_204_bias_v_read_readvariableop6
2savev2_adam_dense_205_kernel_v_read_readvariableop4
0savev2_adam_dense_205_bias_v_read_readvariableopC
?savev2_adam_lstm_102_lstm_cell_102_kernel_v_read_readvariableopM
Isavev2_adam_lstm_102_lstm_cell_102_recurrent_kernel_v_read_readvariableopA
=savev2_adam_lstm_102_lstm_cell_102_bias_v_read_readvariableop
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
SaveV2/shape_and_slicesú
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_204_kernel_read_readvariableop)savev2_dense_204_bias_read_readvariableop+savev2_dense_205_kernel_read_readvariableop)savev2_dense_205_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop8savev2_lstm_102_lstm_cell_102_kernel_read_readvariableopBsavev2_lstm_102_lstm_cell_102_recurrent_kernel_read_readvariableop6savev2_lstm_102_lstm_cell_102_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_204_kernel_m_read_readvariableop0savev2_adam_dense_204_bias_m_read_readvariableop2savev2_adam_dense_205_kernel_m_read_readvariableop0savev2_adam_dense_205_bias_m_read_readvariableop?savev2_adam_lstm_102_lstm_cell_102_kernel_m_read_readvariableopIsavev2_adam_lstm_102_lstm_cell_102_recurrent_kernel_m_read_readvariableop=savev2_adam_lstm_102_lstm_cell_102_bias_m_read_readvariableop2savev2_adam_dense_204_kernel_v_read_readvariableop0savev2_adam_dense_204_bias_v_read_readvariableop2savev2_adam_dense_205_kernel_v_read_readvariableop0savev2_adam_dense_205_bias_v_read_readvariableop?savev2_adam_lstm_102_lstm_cell_102_kernel_v_read_readvariableopIsavev2_adam_lstm_102_lstm_cell_102_recurrent_kernel_v_read_readvariableop=savev2_adam_lstm_102_lstm_cell_102_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
ï
º
*__inference_lstm_102_layer_call_fn_5099689
inputs_0
unknown:	 
	unknown_0:
È 
	unknown_1:	 
identity¢StatefulPartitionedCall
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
GPU 2J 8 *N
fIRG
E__inference_lstm_102_layer_call_and_return_conditional_losses_50976802
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
ê~
Þ
K__inference_sequential_102_layer_call_and_return_conditional_losses_5099036

inputsH
5lstm_102_lstm_cell_102_matmul_readvariableop_resource:	 K
7lstm_102_lstm_cell_102_matmul_1_readvariableop_resource:
È E
6lstm_102_lstm_cell_102_biasadd_readvariableop_resource:	 ;
(dense_204_matmul_readvariableop_resource:	Èd7
)dense_204_biasadd_readvariableop_resource:d:
(dense_205_matmul_readvariableop_resource:d7
)dense_205_biasadd_readvariableop_resource:
identity¢ dense_204/BiasAdd/ReadVariableOp¢dense_204/MatMul/ReadVariableOp¢ dense_205/BiasAdd/ReadVariableOp¢dense_205/MatMul/ReadVariableOp¢-lstm_102/lstm_cell_102/BiasAdd/ReadVariableOp¢,lstm_102/lstm_cell_102/MatMul/ReadVariableOp¢.lstm_102/lstm_cell_102/MatMul_1/ReadVariableOp¢lstm_102/whileV
lstm_102/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_102/Shape
lstm_102/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_102/strided_slice/stack
lstm_102/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_102/strided_slice/stack_1
lstm_102/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_102/strided_slice/stack_2
lstm_102/strided_sliceStridedSlicelstm_102/Shape:output:0%lstm_102/strided_slice/stack:output:0'lstm_102/strided_slice/stack_1:output:0'lstm_102/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_102/strided_sliceo
lstm_102/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :È2
lstm_102/zeros/mul/y
lstm_102/zeros/mulMullstm_102/strided_slice:output:0lstm_102/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_102/zeros/mulq
lstm_102/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_102/zeros/Less/y
lstm_102/zeros/LessLesslstm_102/zeros/mul:z:0lstm_102/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_102/zeros/Lessu
lstm_102/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :È2
lstm_102/zeros/packed/1§
lstm_102/zeros/packedPacklstm_102/strided_slice:output:0 lstm_102/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_102/zeros/packedq
lstm_102/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_102/zeros/Const
lstm_102/zerosFilllstm_102/zeros/packed:output:0lstm_102/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_102/zeross
lstm_102/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :È2
lstm_102/zeros_1/mul/y
lstm_102/zeros_1/mulMullstm_102/strided_slice:output:0lstm_102/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_102/zeros_1/mulu
lstm_102/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_102/zeros_1/Less/y
lstm_102/zeros_1/LessLesslstm_102/zeros_1/mul:z:0 lstm_102/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_102/zeros_1/Lessy
lstm_102/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :È2
lstm_102/zeros_1/packed/1­
lstm_102/zeros_1/packedPacklstm_102/strided_slice:output:0"lstm_102/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_102/zeros_1/packedu
lstm_102/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_102/zeros_1/Const¢
lstm_102/zeros_1Fill lstm_102/zeros_1/packed:output:0lstm_102/zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_102/zeros_1
lstm_102/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_102/transpose/perm
lstm_102/transpose	Transposeinputs lstm_102/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_102/transposej
lstm_102/Shape_1Shapelstm_102/transpose:y:0*
T0*
_output_shapes
:2
lstm_102/Shape_1
lstm_102/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_102/strided_slice_1/stack
 lstm_102/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_102/strided_slice_1/stack_1
 lstm_102/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_102/strided_slice_1/stack_2¤
lstm_102/strided_slice_1StridedSlicelstm_102/Shape_1:output:0'lstm_102/strided_slice_1/stack:output:0)lstm_102/strided_slice_1/stack_1:output:0)lstm_102/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_102/strided_slice_1
$lstm_102/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2&
$lstm_102/TensorArrayV2/element_shapeÖ
lstm_102/TensorArrayV2TensorListReserve-lstm_102/TensorArrayV2/element_shape:output:0!lstm_102/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_102/TensorArrayV2Ñ
>lstm_102/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2@
>lstm_102/TensorArrayUnstack/TensorListFromTensor/element_shape
0lstm_102/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_102/transpose:y:0Glstm_102/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type022
0lstm_102/TensorArrayUnstack/TensorListFromTensor
lstm_102/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_102/strided_slice_2/stack
 lstm_102/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_102/strided_slice_2/stack_1
 lstm_102/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_102/strided_slice_2/stack_2²
lstm_102/strided_slice_2StridedSlicelstm_102/transpose:y:0'lstm_102/strided_slice_2/stack:output:0)lstm_102/strided_slice_2/stack_1:output:0)lstm_102/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_102/strided_slice_2Ó
,lstm_102/lstm_cell_102/MatMul/ReadVariableOpReadVariableOp5lstm_102_lstm_cell_102_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype02.
,lstm_102/lstm_cell_102/MatMul/ReadVariableOpÔ
lstm_102/lstm_cell_102/MatMulMatMul!lstm_102/strided_slice_2:output:04lstm_102/lstm_cell_102/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_102/lstm_cell_102/MatMulÚ
.lstm_102/lstm_cell_102/MatMul_1/ReadVariableOpReadVariableOp7lstm_102_lstm_cell_102_matmul_1_readvariableop_resource* 
_output_shapes
:
È *
dtype020
.lstm_102/lstm_cell_102/MatMul_1/ReadVariableOpÐ
lstm_102/lstm_cell_102/MatMul_1MatMullstm_102/zeros:output:06lstm_102/lstm_cell_102/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
lstm_102/lstm_cell_102/MatMul_1È
lstm_102/lstm_cell_102/addAddV2'lstm_102/lstm_cell_102/MatMul:product:0)lstm_102/lstm_cell_102/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_102/lstm_cell_102/addÒ
-lstm_102/lstm_cell_102/BiasAdd/ReadVariableOpReadVariableOp6lstm_102_lstm_cell_102_biasadd_readvariableop_resource*
_output_shapes	
: *
dtype02/
-lstm_102/lstm_cell_102/BiasAdd/ReadVariableOpÕ
lstm_102/lstm_cell_102/BiasAddBiasAddlstm_102/lstm_cell_102/add:z:05lstm_102/lstm_cell_102/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_102/lstm_cell_102/BiasAdd
&lstm_102/lstm_cell_102/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2(
&lstm_102/lstm_cell_102/split/split_dim
lstm_102/lstm_cell_102/splitSplit/lstm_102/lstm_cell_102/split/split_dim:output:0'lstm_102/lstm_cell_102/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
lstm_102/lstm_cell_102/split¥
lstm_102/lstm_cell_102/SigmoidSigmoid%lstm_102/lstm_cell_102/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2 
lstm_102/lstm_cell_102/Sigmoid©
 lstm_102/lstm_cell_102/Sigmoid_1Sigmoid%lstm_102/lstm_cell_102/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2"
 lstm_102/lstm_cell_102/Sigmoid_1³
lstm_102/lstm_cell_102/mulMul$lstm_102/lstm_cell_102/Sigmoid_1:y:0lstm_102/zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_102/lstm_cell_102/mul
lstm_102/lstm_cell_102/ReluRelu%lstm_102/lstm_cell_102/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_102/lstm_cell_102/ReluÅ
lstm_102/lstm_cell_102/mul_1Mul"lstm_102/lstm_cell_102/Sigmoid:y:0)lstm_102/lstm_cell_102/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_102/lstm_cell_102/mul_1º
lstm_102/lstm_cell_102/add_1AddV2lstm_102/lstm_cell_102/mul:z:0 lstm_102/lstm_cell_102/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_102/lstm_cell_102/add_1©
 lstm_102/lstm_cell_102/Sigmoid_2Sigmoid%lstm_102/lstm_cell_102/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2"
 lstm_102/lstm_cell_102/Sigmoid_2
lstm_102/lstm_cell_102/Relu_1Relu lstm_102/lstm_cell_102/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_102/lstm_cell_102/Relu_1É
lstm_102/lstm_cell_102/mul_2Mul$lstm_102/lstm_cell_102/Sigmoid_2:y:0+lstm_102/lstm_cell_102/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_102/lstm_cell_102/mul_2¡
&lstm_102/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÈ   2(
&lstm_102/TensorArrayV2_1/element_shapeÜ
lstm_102/TensorArrayV2_1TensorListReserve/lstm_102/TensorArrayV2_1/element_shape:output:0!lstm_102/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_102/TensorArrayV2_1`
lstm_102/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_102/time
!lstm_102/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2#
!lstm_102/while/maximum_iterations|
lstm_102/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_102/while/loop_counterþ
lstm_102/whileWhile$lstm_102/while/loop_counter:output:0*lstm_102/while/maximum_iterations:output:0lstm_102/time:output:0!lstm_102/TensorArrayV2_1:handle:0lstm_102/zeros:output:0lstm_102/zeros_1:output:0!lstm_102/strided_slice_1:output:0@lstm_102/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_102_lstm_cell_102_matmul_readvariableop_resource7lstm_102_lstm_cell_102_matmul_1_readvariableop_resource6lstm_102_lstm_cell_102_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : *%
_read_only_resource_inputs
	
*'
bodyR
lstm_102_while_body_5098939*'
condR
lstm_102_while_cond_5098938*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : *
parallel_iterations 2
lstm_102/whileÇ
9lstm_102/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÈ   2;
9lstm_102/TensorArrayV2Stack/TensorListStack/element_shape
+lstm_102/TensorArrayV2Stack/TensorListStackTensorListStacklstm_102/while:output:3Blstm_102/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*
element_dtype02-
+lstm_102/TensorArrayV2Stack/TensorListStack
lstm_102/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2 
lstm_102/strided_slice_3/stack
 lstm_102/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2"
 lstm_102/strided_slice_3/stack_1
 lstm_102/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_102/strided_slice_3/stack_2Ñ
lstm_102/strided_slice_3StridedSlice4lstm_102/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_102/strided_slice_3/stack:output:0)lstm_102/strided_slice_3/stack_1:output:0)lstm_102/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*
shrink_axis_mask2
lstm_102/strided_slice_3
lstm_102/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_102/transpose_1/permÊ
lstm_102/transpose_1	Transpose4lstm_102/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_102/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_102/transpose_1x
lstm_102/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_102/runtime¬
dense_204/MatMul/ReadVariableOpReadVariableOp(dense_204_matmul_readvariableop_resource*
_output_shapes
:	Èd*
dtype02!
dense_204/MatMul/ReadVariableOp¬
dense_204/MatMulMatMul!lstm_102/strided_slice_3:output:0'dense_204/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dense_204/MatMulª
 dense_204/BiasAdd/ReadVariableOpReadVariableOp)dense_204_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02"
 dense_204/BiasAdd/ReadVariableOp©
dense_204/BiasAddBiasAdddense_204/MatMul:product:0(dense_204/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dense_204/BiasAddv
dense_204/ReluReludense_204/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dense_204/Relu«
dense_205/MatMul/ReadVariableOpReadVariableOp(dense_205_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02!
dense_205/MatMul/ReadVariableOp§
dense_205/MatMulMatMuldense_204/Relu:activations:0'dense_205/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_205/MatMulª
 dense_205/BiasAdd/ReadVariableOpReadVariableOp)dense_205_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_205/BiasAdd/ReadVariableOp©
dense_205/BiasAddBiasAdddense_205/MatMul:product:0(dense_205/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_205/BiasAdd
IdentityIdentitydense_205/BiasAdd:output:0!^dense_204/BiasAdd/ReadVariableOp ^dense_204/MatMul/ReadVariableOp!^dense_205/BiasAdd/ReadVariableOp ^dense_205/MatMul/ReadVariableOp.^lstm_102/lstm_cell_102/BiasAdd/ReadVariableOp-^lstm_102/lstm_cell_102/MatMul/ReadVariableOp/^lstm_102/lstm_cell_102/MatMul_1/ReadVariableOp^lstm_102/while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2D
 dense_204/BiasAdd/ReadVariableOp dense_204/BiasAdd/ReadVariableOp2B
dense_204/MatMul/ReadVariableOpdense_204/MatMul/ReadVariableOp2D
 dense_205/BiasAdd/ReadVariableOp dense_205/BiasAdd/ReadVariableOp2B
dense_205/MatMul/ReadVariableOpdense_205/MatMul/ReadVariableOp2^
-lstm_102/lstm_cell_102/BiasAdd/ReadVariableOp-lstm_102/lstm_cell_102/BiasAdd/ReadVariableOp2\
,lstm_102/lstm_cell_102/MatMul/ReadVariableOp,lstm_102/lstm_cell_102/MatMul/ReadVariableOp2`
.lstm_102/lstm_cell_102/MatMul_1/ReadVariableOp.lstm_102/lstm_cell_102/MatMul_1/ReadVariableOp2 
lstm_102/whilelstm_102/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
²

ø
F__inference_dense_204_layer_call_and_return_conditional_losses_5098328

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
×
¸
*__inference_lstm_102_layer_call_fn_5099711

inputs
unknown:	 
	unknown_0:
È 
	unknown_1:	 
identity¢StatefulPartitionedCall
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
GPU 2J 8 *N
fIRG
E__inference_lstm_102_layer_call_and_return_conditional_losses_50983092
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
D
Ü
while_body_5099594
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_102_matmul_readvariableop_resource_0:	 J
6while_lstm_cell_102_matmul_1_readvariableop_resource_0:
È D
5while_lstm_cell_102_biasadd_readvariableop_resource_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_102_matmul_readvariableop_resource:	 H
4while_lstm_cell_102_matmul_1_readvariableop_resource:
È B
3while_lstm_cell_102_biasadd_readvariableop_resource:	 ¢*while/lstm_cell_102/BiasAdd/ReadVariableOp¢)while/lstm_cell_102/MatMul/ReadVariableOp¢+while/lstm_cell_102/MatMul_1/ReadVariableOpÃ
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
)while/TensorArrayV2Read/TensorListGetItemÌ
)while/lstm_cell_102/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_102_matmul_readvariableop_resource_0*
_output_shapes
:	 *
dtype02+
)while/lstm_cell_102/MatMul/ReadVariableOpÚ
while/lstm_cell_102/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_102/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_102/MatMulÓ
+while/lstm_cell_102/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_102_matmul_1_readvariableop_resource_0* 
_output_shapes
:
È *
dtype02-
+while/lstm_cell_102/MatMul_1/ReadVariableOpÃ
while/lstm_cell_102/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_102/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_102/MatMul_1¼
while/lstm_cell_102/addAddV2$while/lstm_cell_102/MatMul:product:0&while/lstm_cell_102/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_102/addË
*while/lstm_cell_102/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_102_biasadd_readvariableop_resource_0*
_output_shapes	
: *
dtype02,
*while/lstm_cell_102/BiasAdd/ReadVariableOpÉ
while/lstm_cell_102/BiasAddBiasAddwhile/lstm_cell_102/add:z:02while/lstm_cell_102/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
while/lstm_cell_102/BiasAdd
#while/lstm_cell_102/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#while/lstm_cell_102/split/split_dim
while/lstm_cell_102/splitSplit,while/lstm_cell_102/split/split_dim:output:0$while/lstm_cell_102/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
while/lstm_cell_102/split
while/lstm_cell_102/SigmoidSigmoid"while/lstm_cell_102/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_102/Sigmoid 
while/lstm_cell_102/Sigmoid_1Sigmoid"while/lstm_cell_102/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_102/Sigmoid_1¤
while/lstm_cell_102/mulMul!while/lstm_cell_102/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_102/mul
while/lstm_cell_102/ReluRelu"while/lstm_cell_102/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_102/Relu¹
while/lstm_cell_102/mul_1Mulwhile/lstm_cell_102/Sigmoid:y:0&while/lstm_cell_102/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_102/mul_1®
while/lstm_cell_102/add_1AddV2while/lstm_cell_102/mul:z:0while/lstm_cell_102/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_102/add_1 
while/lstm_cell_102/Sigmoid_2Sigmoid"while/lstm_cell_102/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_102/Sigmoid_2
while/lstm_cell_102/Relu_1Reluwhile/lstm_cell_102/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_102/Relu_1½
while/lstm_cell_102/mul_2Mul!while/lstm_cell_102/Sigmoid_2:y:0(while/lstm_cell_102/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/lstm_cell_102/mul_2á
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_102/mul_2:z:0*
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
while/add_1å
while/IdentityIdentitywhile/add_1:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identityø
while/Identity_1Identitywhile_while_maximum_iterations+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1ç
while/Identity_2Identitywhile/add:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3
while/Identity_4Identitywhile/lstm_cell_102/mul_2:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_4
while/Identity_5Identitywhile/lstm_cell_102/add_1:z:0+^while/lstm_cell_102/BiasAdd/ReadVariableOp*^while/lstm_cell_102/MatMul/ReadVariableOp,^while/lstm_cell_102/MatMul_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_102_biasadd_readvariableop_resource5while_lstm_cell_102_biasadd_readvariableop_resource_0"n
4while_lstm_cell_102_matmul_1_readvariableop_resource6while_lstm_cell_102_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_102_matmul_readvariableop_resource4while_lstm_cell_102_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : 2X
*while/lstm_cell_102/BiasAdd/ReadVariableOp*while/lstm_cell_102/BiasAdd/ReadVariableOp2V
)while/lstm_cell_102/MatMul/ReadVariableOp)while/lstm_cell_102/MatMul/ReadVariableOp2Z
+while/lstm_cell_102/MatMul_1/ReadVariableOp+while/lstm_cell_102/MatMul_1/ReadVariableOp: 
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
\
¦
E__inference_lstm_102_layer_call_and_return_conditional_losses_5099376
inputs_0?
,lstm_cell_102_matmul_readvariableop_resource:	 B
.lstm_cell_102_matmul_1_readvariableop_resource:
È <
-lstm_cell_102_biasadd_readvariableop_resource:	 
identity¢$lstm_cell_102/BiasAdd/ReadVariableOp¢#lstm_cell_102/MatMul/ReadVariableOp¢%lstm_cell_102/MatMul_1/ReadVariableOp¢whileF
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
strided_slice_2¸
#lstm_cell_102/MatMul/ReadVariableOpReadVariableOp,lstm_cell_102_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype02%
#lstm_cell_102/MatMul/ReadVariableOp°
lstm_cell_102/MatMulMatMulstrided_slice_2:output:0+lstm_cell_102/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_102/MatMul¿
%lstm_cell_102/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_102_matmul_1_readvariableop_resource* 
_output_shapes
:
È *
dtype02'
%lstm_cell_102/MatMul_1/ReadVariableOp¬
lstm_cell_102/MatMul_1MatMulzeros:output:0-lstm_cell_102/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_102/MatMul_1¤
lstm_cell_102/addAddV2lstm_cell_102/MatMul:product:0 lstm_cell_102/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_102/add·
$lstm_cell_102/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_102_biasadd_readvariableop_resource*
_output_shapes	
: *
dtype02&
$lstm_cell_102/BiasAdd/ReadVariableOp±
lstm_cell_102/BiasAddBiasAddlstm_cell_102/add:z:0,lstm_cell_102/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_102/BiasAdd
lstm_cell_102/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_102/split/split_dimû
lstm_cell_102/splitSplit&lstm_cell_102/split/split_dim:output:0lstm_cell_102/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
lstm_cell_102/split
lstm_cell_102/SigmoidSigmoidlstm_cell_102/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_102/Sigmoid
lstm_cell_102/Sigmoid_1Sigmoidlstm_cell_102/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_102/Sigmoid_1
lstm_cell_102/mulMullstm_cell_102/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_102/mul
lstm_cell_102/ReluRelulstm_cell_102/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_102/Relu¡
lstm_cell_102/mul_1Mullstm_cell_102/Sigmoid:y:0 lstm_cell_102/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_102/mul_1
lstm_cell_102/add_1AddV2lstm_cell_102/mul:z:0lstm_cell_102/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_102/add_1
lstm_cell_102/Sigmoid_2Sigmoidlstm_cell_102/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_102/Sigmoid_2
lstm_cell_102/Relu_1Relulstm_cell_102/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_102/Relu_1¥
lstm_cell_102/mul_2Mullstm_cell_102/Sigmoid_2:y:0"lstm_cell_102/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_102/mul_2
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
while/loop_counter÷
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_102_matmul_readvariableop_resource.lstm_cell_102_matmul_1_readvariableop_resource-lstm_cell_102_biasadd_readvariableop_resource*
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
while_body_5099292*
condR
while_cond_5099291*M
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
runtimeê
IdentityIdentitystrided_slice_3:output:0%^lstm_cell_102/BiasAdd/ReadVariableOp$^lstm_cell_102/MatMul/ReadVariableOp&^lstm_cell_102/MatMul_1/ReadVariableOp^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_102/BiasAdd/ReadVariableOp$lstm_cell_102/BiasAdd/ReadVariableOp2J
#lstm_cell_102/MatMul/ReadVariableOp#lstm_cell_102/MatMul/ReadVariableOp2N
%lstm_cell_102/MatMul_1/ReadVariableOp%lstm_cell_102/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
í

ü
lstm_102_while_cond_5098938.
*lstm_102_while_lstm_102_while_loop_counter4
0lstm_102_while_lstm_102_while_maximum_iterations
lstm_102_while_placeholder 
lstm_102_while_placeholder_1 
lstm_102_while_placeholder_2 
lstm_102_while_placeholder_30
,lstm_102_while_less_lstm_102_strided_slice_1G
Clstm_102_while_lstm_102_while_cond_5098938___redundant_placeholder0G
Clstm_102_while_lstm_102_while_cond_5098938___redundant_placeholder1G
Clstm_102_while_lstm_102_while_cond_5098938___redundant_placeholder2G
Clstm_102_while_lstm_102_while_cond_5098938___redundant_placeholder3
lstm_102_while_identity

lstm_102/while/LessLesslstm_102_while_placeholder,lstm_102_while_less_lstm_102_strided_slice_1*
T0*
_output_shapes
: 2
lstm_102/while/Lessx
lstm_102/while/IdentityIdentitylstm_102/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_102/while/Identity";
lstm_102_while_identity lstm_102/while/Identity:output:0*(
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
ã[
¤
E__inference_lstm_102_layer_call_and_return_conditional_losses_5098309

inputs?
,lstm_cell_102_matmul_readvariableop_resource:	 B
.lstm_cell_102_matmul_1_readvariableop_resource:
È <
-lstm_cell_102_biasadd_readvariableop_resource:	 
identity¢$lstm_cell_102/BiasAdd/ReadVariableOp¢#lstm_cell_102/MatMul/ReadVariableOp¢%lstm_cell_102/MatMul_1/ReadVariableOp¢whileD
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
strided_slice_2¸
#lstm_cell_102/MatMul/ReadVariableOpReadVariableOp,lstm_cell_102_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype02%
#lstm_cell_102/MatMul/ReadVariableOp°
lstm_cell_102/MatMulMatMulstrided_slice_2:output:0+lstm_cell_102/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_102/MatMul¿
%lstm_cell_102/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_102_matmul_1_readvariableop_resource* 
_output_shapes
:
È *
dtype02'
%lstm_cell_102/MatMul_1/ReadVariableOp¬
lstm_cell_102/MatMul_1MatMulzeros:output:0-lstm_cell_102/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_102/MatMul_1¤
lstm_cell_102/addAddV2lstm_cell_102/MatMul:product:0 lstm_cell_102/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_102/add·
$lstm_cell_102/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_102_biasadd_readvariableop_resource*
_output_shapes	
: *
dtype02&
$lstm_cell_102/BiasAdd/ReadVariableOp±
lstm_cell_102/BiasAddBiasAddlstm_cell_102/add:z:0,lstm_cell_102/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_102/BiasAdd
lstm_cell_102/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_102/split/split_dimû
lstm_cell_102/splitSplit&lstm_cell_102/split/split_dim:output:0lstm_cell_102/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
lstm_cell_102/split
lstm_cell_102/SigmoidSigmoidlstm_cell_102/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_102/Sigmoid
lstm_cell_102/Sigmoid_1Sigmoidlstm_cell_102/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_102/Sigmoid_1
lstm_cell_102/mulMullstm_cell_102/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_102/mul
lstm_cell_102/ReluRelulstm_cell_102/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_102/Relu¡
lstm_cell_102/mul_1Mullstm_cell_102/Sigmoid:y:0 lstm_cell_102/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_102/mul_1
lstm_cell_102/add_1AddV2lstm_cell_102/mul:z:0lstm_cell_102/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_102/add_1
lstm_cell_102/Sigmoid_2Sigmoidlstm_cell_102/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_102/Sigmoid_2
lstm_cell_102/Relu_1Relulstm_cell_102/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_102/Relu_1¥
lstm_cell_102/mul_2Mullstm_cell_102/Sigmoid_2:y:0"lstm_cell_102/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_102/mul_2
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
while/loop_counter÷
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_102_matmul_readvariableop_resource.lstm_cell_102_matmul_1_readvariableop_resource-lstm_cell_102_biasadd_readvariableop_resource*
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
while_body_5098225*
condR
while_cond_5098224*M
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
runtimeê
IdentityIdentitystrided_slice_3:output:0%^lstm_cell_102/BiasAdd/ReadVariableOp$^lstm_cell_102/MatMul/ReadVariableOp&^lstm_cell_102/MatMul_1/ReadVariableOp^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_102/BiasAdd/ReadVariableOp$lstm_cell_102/BiasAdd/ReadVariableOp2J
#lstm_cell_102/MatMul/ReadVariableOp#lstm_cell_102/MatMul/ReadVariableOp2N
%lstm_cell_102/MatMul_1/ReadVariableOp%lstm_cell_102/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¢

+__inference_dense_204_layer_call_fn_5099742

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
F__inference_dense_204_layer_call_and_return_conditional_losses_50983282
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
·
Ö
K__inference_sequential_102_layer_call_and_return_conditional_losses_5098681
lstm_102_input#
lstm_102_5098663:	 $
lstm_102_5098665:
È 
lstm_102_5098667:	 $
dense_204_5098670:	Èd
dense_204_5098672:d#
dense_205_5098675:d
dense_205_5098677:
identity¢!dense_204/StatefulPartitionedCall¢!dense_205/StatefulPartitionedCall¢ lstm_102/StatefulPartitionedCall´
 lstm_102/StatefulPartitionedCallStatefulPartitionedCalllstm_102_inputlstm_102_5098663lstm_102_5098665lstm_102_5098667*
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
GPU 2J 8 *N
fIRG
E__inference_lstm_102_layer_call_and_return_conditional_losses_50985522"
 lstm_102/StatefulPartitionedCall¿
!dense_204/StatefulPartitionedCallStatefulPartitionedCall)lstm_102/StatefulPartitionedCall:output:0dense_204_5098670dense_204_5098672*
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
F__inference_dense_204_layer_call_and_return_conditional_losses_50983282#
!dense_204/StatefulPartitionedCallÀ
!dense_205/StatefulPartitionedCallStatefulPartitionedCall*dense_204/StatefulPartitionedCall:output:0dense_205_5098675dense_205_5098677*
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
F__inference_dense_205_layer_call_and_return_conditional_losses_50983442#
!dense_205/StatefulPartitionedCallé
IdentityIdentity*dense_205/StatefulPartitionedCall:output:0"^dense_204/StatefulPartitionedCall"^dense_205/StatefulPartitionedCall!^lstm_102/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2F
!dense_204/StatefulPartitionedCall!dense_204/StatefulPartitionedCall2F
!dense_205/StatefulPartitionedCall!dense_205/StatefulPartitionedCall2D
 lstm_102/StatefulPartitionedCall lstm_102/StatefulPartitionedCall:[ W
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_namelstm_102_input
Þ
È
while_cond_5099291
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5099291___redundant_placeholder05
1while_while_cond_5099291___redundant_placeholder15
1while_while_cond_5099291___redundant_placeholder25
1while_while_cond_5099291___redundant_placeholder3
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
Þ
È
while_cond_5098224
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5098224___redundant_placeholder05
1while_while_cond_5098224___redundant_placeholder15
1while_while_cond_5098224___redundant_placeholder25
1while_while_cond_5098224___redundant_placeholder3
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
·
Ö
K__inference_sequential_102_layer_call_and_return_conditional_losses_5098660
lstm_102_input#
lstm_102_5098642:	 $
lstm_102_5098644:
È 
lstm_102_5098646:	 $
dense_204_5098649:	Èd
dense_204_5098651:d#
dense_205_5098654:d
dense_205_5098656:
identity¢!dense_204/StatefulPartitionedCall¢!dense_205/StatefulPartitionedCall¢ lstm_102/StatefulPartitionedCall´
 lstm_102/StatefulPartitionedCallStatefulPartitionedCalllstm_102_inputlstm_102_5098642lstm_102_5098644lstm_102_5098646*
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
GPU 2J 8 *N
fIRG
E__inference_lstm_102_layer_call_and_return_conditional_losses_50983092"
 lstm_102/StatefulPartitionedCall¿
!dense_204/StatefulPartitionedCallStatefulPartitionedCall)lstm_102/StatefulPartitionedCall:output:0dense_204_5098649dense_204_5098651*
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
F__inference_dense_204_layer_call_and_return_conditional_losses_50983282#
!dense_204/StatefulPartitionedCallÀ
!dense_205/StatefulPartitionedCallStatefulPartitionedCall*dense_204/StatefulPartitionedCall:output:0dense_205_5098654dense_205_5098656*
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
F__inference_dense_205_layer_call_and_return_conditional_losses_50983442#
!dense_205/StatefulPartitionedCallé
IdentityIdentity*dense_205/StatefulPartitionedCall:output:0"^dense_204/StatefulPartitionedCall"^dense_205/StatefulPartitionedCall!^lstm_102/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2F
!dense_204/StatefulPartitionedCall!dense_204/StatefulPartitionedCall2F
!dense_205/StatefulPartitionedCall!dense_205/StatefulPartitionedCall2D
 lstm_102/StatefulPartitionedCall lstm_102/StatefulPartitionedCall:[ W
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_namelstm_102_input
×
¸
*__inference_lstm_102_layer_call_fn_5099722

inputs
unknown:	 
	unknown_0:
È 
	unknown_1:	 
identity¢StatefulPartitionedCall
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
GPU 2J 8 *N
fIRG
E__inference_lstm_102_layer_call_and_return_conditional_losses_50985522
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
	
«
0__inference_sequential_102_layer_call_fn_5099074

inputs
unknown:	 
	unknown_0:
È 
	unknown_1:	 
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
K__inference_sequential_102_layer_call_and_return_conditional_losses_50986032
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
¢	
³
0__inference_sequential_102_layer_call_fn_5098639
lstm_102_input
unknown:	 
	unknown_0:
È 
	unknown_1:	 
	unknown_2:	Èd
	unknown_3:d
	unknown_4:d
	unknown_5:
identity¢StatefulPartitionedCallÄ
StatefulPartitionedCallStatefulPartitionedCalllstm_102_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
K__inference_sequential_102_layer_call_and_return_conditional_losses_50986032
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
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_namelstm_102_input
Æ

J__inference_lstm_cell_102_layer_call_and_return_conditional_losses_5099793

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
\
¦
E__inference_lstm_102_layer_call_and_return_conditional_losses_5099225
inputs_0?
,lstm_cell_102_matmul_readvariableop_resource:	 B
.lstm_cell_102_matmul_1_readvariableop_resource:
È <
-lstm_cell_102_biasadd_readvariableop_resource:	 
identity¢$lstm_cell_102/BiasAdd/ReadVariableOp¢#lstm_cell_102/MatMul/ReadVariableOp¢%lstm_cell_102/MatMul_1/ReadVariableOp¢whileF
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
strided_slice_2¸
#lstm_cell_102/MatMul/ReadVariableOpReadVariableOp,lstm_cell_102_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype02%
#lstm_cell_102/MatMul/ReadVariableOp°
lstm_cell_102/MatMulMatMulstrided_slice_2:output:0+lstm_cell_102/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_102/MatMul¿
%lstm_cell_102/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_102_matmul_1_readvariableop_resource* 
_output_shapes
:
È *
dtype02'
%lstm_cell_102/MatMul_1/ReadVariableOp¬
lstm_cell_102/MatMul_1MatMulzeros:output:0-lstm_cell_102/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_102/MatMul_1¤
lstm_cell_102/addAddV2lstm_cell_102/MatMul:product:0 lstm_cell_102/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_102/add·
$lstm_cell_102/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_102_biasadd_readvariableop_resource*
_output_shapes	
: *
dtype02&
$lstm_cell_102/BiasAdd/ReadVariableOp±
lstm_cell_102/BiasAddBiasAddlstm_cell_102/add:z:0,lstm_cell_102/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_102/BiasAdd
lstm_cell_102/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_102/split/split_dimû
lstm_cell_102/splitSplit&lstm_cell_102/split/split_dim:output:0lstm_cell_102/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
lstm_cell_102/split
lstm_cell_102/SigmoidSigmoidlstm_cell_102/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_102/Sigmoid
lstm_cell_102/Sigmoid_1Sigmoidlstm_cell_102/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_102/Sigmoid_1
lstm_cell_102/mulMullstm_cell_102/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_102/mul
lstm_cell_102/ReluRelulstm_cell_102/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_102/Relu¡
lstm_cell_102/mul_1Mullstm_cell_102/Sigmoid:y:0 lstm_cell_102/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_102/mul_1
lstm_cell_102/add_1AddV2lstm_cell_102/mul:z:0lstm_cell_102/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_102/add_1
lstm_cell_102/Sigmoid_2Sigmoidlstm_cell_102/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_102/Sigmoid_2
lstm_cell_102/Relu_1Relulstm_cell_102/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_102/Relu_1¥
lstm_cell_102/mul_2Mullstm_cell_102/Sigmoid_2:y:0"lstm_cell_102/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_102/mul_2
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
while/loop_counter÷
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_102_matmul_readvariableop_resource.lstm_cell_102_matmul_1_readvariableop_resource-lstm_cell_102_biasadd_readvariableop_resource*
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
while_body_5099141*
condR
while_cond_5099140*M
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
runtimeê
IdentityIdentitystrided_slice_3:output:0%^lstm_cell_102/BiasAdd/ReadVariableOp$^lstm_cell_102/MatMul/ReadVariableOp&^lstm_cell_102/MatMul_1/ReadVariableOp^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_102/BiasAdd/ReadVariableOp$lstm_cell_102/BiasAdd/ReadVariableOp2J
#lstm_cell_102/MatMul/ReadVariableOp#lstm_cell_102/MatMul/ReadVariableOp2N
%lstm_cell_102/MatMul_1/ReadVariableOp%lstm_cell_102/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
ã[
¤
E__inference_lstm_102_layer_call_and_return_conditional_losses_5098552

inputs?
,lstm_cell_102_matmul_readvariableop_resource:	 B
.lstm_cell_102_matmul_1_readvariableop_resource:
È <
-lstm_cell_102_biasadd_readvariableop_resource:	 
identity¢$lstm_cell_102/BiasAdd/ReadVariableOp¢#lstm_cell_102/MatMul/ReadVariableOp¢%lstm_cell_102/MatMul_1/ReadVariableOp¢whileD
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
strided_slice_2¸
#lstm_cell_102/MatMul/ReadVariableOpReadVariableOp,lstm_cell_102_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype02%
#lstm_cell_102/MatMul/ReadVariableOp°
lstm_cell_102/MatMulMatMulstrided_slice_2:output:0+lstm_cell_102/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_102/MatMul¿
%lstm_cell_102/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_102_matmul_1_readvariableop_resource* 
_output_shapes
:
È *
dtype02'
%lstm_cell_102/MatMul_1/ReadVariableOp¬
lstm_cell_102/MatMul_1MatMulzeros:output:0-lstm_cell_102/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_102/MatMul_1¤
lstm_cell_102/addAddV2lstm_cell_102/MatMul:product:0 lstm_cell_102/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_102/add·
$lstm_cell_102/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_102_biasadd_readvariableop_resource*
_output_shapes	
: *
dtype02&
$lstm_cell_102/BiasAdd/ReadVariableOp±
lstm_cell_102/BiasAddBiasAddlstm_cell_102/add:z:0,lstm_cell_102/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_cell_102/BiasAdd
lstm_cell_102/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_102/split/split_dimû
lstm_cell_102/splitSplit&lstm_cell_102/split/split_dim:output:0lstm_cell_102/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
lstm_cell_102/split
lstm_cell_102/SigmoidSigmoidlstm_cell_102/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_102/Sigmoid
lstm_cell_102/Sigmoid_1Sigmoidlstm_cell_102/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_102/Sigmoid_1
lstm_cell_102/mulMullstm_cell_102/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_102/mul
lstm_cell_102/ReluRelulstm_cell_102/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_102/Relu¡
lstm_cell_102/mul_1Mullstm_cell_102/Sigmoid:y:0 lstm_cell_102/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_102/mul_1
lstm_cell_102/add_1AddV2lstm_cell_102/mul:z:0lstm_cell_102/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_102/add_1
lstm_cell_102/Sigmoid_2Sigmoidlstm_cell_102/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_102/Sigmoid_2
lstm_cell_102/Relu_1Relulstm_cell_102/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_102/Relu_1¥
lstm_cell_102/mul_2Mullstm_cell_102/Sigmoid_2:y:0"lstm_cell_102/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_cell_102/mul_2
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
while/loop_counter÷
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_102_matmul_readvariableop_resource.lstm_cell_102_matmul_1_readvariableop_resource-lstm_cell_102_biasadd_readvariableop_resource*
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
while_body_5098468*
condR
while_cond_5098467*M
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
runtimeê
IdentityIdentitystrided_slice_3:output:0%^lstm_cell_102/BiasAdd/ReadVariableOp$^lstm_cell_102/MatMul/ReadVariableOp&^lstm_cell_102/MatMul_1/ReadVariableOp^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_102/BiasAdd/ReadVariableOp$lstm_cell_102/BiasAdd/ReadVariableOp2J
#lstm_cell_102/MatMul/ReadVariableOp#lstm_cell_102/MatMul/ReadVariableOp2N
%lstm_cell_102/MatMul_1/ReadVariableOp%lstm_cell_102/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ê~
Þ
K__inference_sequential_102_layer_call_and_return_conditional_losses_5098872

inputsH
5lstm_102_lstm_cell_102_matmul_readvariableop_resource:	 K
7lstm_102_lstm_cell_102_matmul_1_readvariableop_resource:
È E
6lstm_102_lstm_cell_102_biasadd_readvariableop_resource:	 ;
(dense_204_matmul_readvariableop_resource:	Èd7
)dense_204_biasadd_readvariableop_resource:d:
(dense_205_matmul_readvariableop_resource:d7
)dense_205_biasadd_readvariableop_resource:
identity¢ dense_204/BiasAdd/ReadVariableOp¢dense_204/MatMul/ReadVariableOp¢ dense_205/BiasAdd/ReadVariableOp¢dense_205/MatMul/ReadVariableOp¢-lstm_102/lstm_cell_102/BiasAdd/ReadVariableOp¢,lstm_102/lstm_cell_102/MatMul/ReadVariableOp¢.lstm_102/lstm_cell_102/MatMul_1/ReadVariableOp¢lstm_102/whileV
lstm_102/ShapeShapeinputs*
T0*
_output_shapes
:2
lstm_102/Shape
lstm_102/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_102/strided_slice/stack
lstm_102/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_102/strided_slice/stack_1
lstm_102/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_102/strided_slice/stack_2
lstm_102/strided_sliceStridedSlicelstm_102/Shape:output:0%lstm_102/strided_slice/stack:output:0'lstm_102/strided_slice/stack_1:output:0'lstm_102/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_102/strided_sliceo
lstm_102/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :È2
lstm_102/zeros/mul/y
lstm_102/zeros/mulMullstm_102/strided_slice:output:0lstm_102/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_102/zeros/mulq
lstm_102/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_102/zeros/Less/y
lstm_102/zeros/LessLesslstm_102/zeros/mul:z:0lstm_102/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_102/zeros/Lessu
lstm_102/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :È2
lstm_102/zeros/packed/1§
lstm_102/zeros/packedPacklstm_102/strided_slice:output:0 lstm_102/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_102/zeros/packedq
lstm_102/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_102/zeros/Const
lstm_102/zerosFilllstm_102/zeros/packed:output:0lstm_102/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_102/zeross
lstm_102/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :È2
lstm_102/zeros_1/mul/y
lstm_102/zeros_1/mulMullstm_102/strided_slice:output:0lstm_102/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_102/zeros_1/mulu
lstm_102/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_102/zeros_1/Less/y
lstm_102/zeros_1/LessLesslstm_102/zeros_1/mul:z:0 lstm_102/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_102/zeros_1/Lessy
lstm_102/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :È2
lstm_102/zeros_1/packed/1­
lstm_102/zeros_1/packedPacklstm_102/strided_slice:output:0"lstm_102/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_102/zeros_1/packedu
lstm_102/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_102/zeros_1/Const¢
lstm_102/zeros_1Fill lstm_102/zeros_1/packed:output:0lstm_102/zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_102/zeros_1
lstm_102/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_102/transpose/perm
lstm_102/transpose	Transposeinputs lstm_102/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_102/transposej
lstm_102/Shape_1Shapelstm_102/transpose:y:0*
T0*
_output_shapes
:2
lstm_102/Shape_1
lstm_102/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_102/strided_slice_1/stack
 lstm_102/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_102/strided_slice_1/stack_1
 lstm_102/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_102/strided_slice_1/stack_2¤
lstm_102/strided_slice_1StridedSlicelstm_102/Shape_1:output:0'lstm_102/strided_slice_1/stack:output:0)lstm_102/strided_slice_1/stack_1:output:0)lstm_102/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_102/strided_slice_1
$lstm_102/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2&
$lstm_102/TensorArrayV2/element_shapeÖ
lstm_102/TensorArrayV2TensorListReserve-lstm_102/TensorArrayV2/element_shape:output:0!lstm_102/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_102/TensorArrayV2Ñ
>lstm_102/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2@
>lstm_102/TensorArrayUnstack/TensorListFromTensor/element_shape
0lstm_102/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_102/transpose:y:0Glstm_102/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type022
0lstm_102/TensorArrayUnstack/TensorListFromTensor
lstm_102/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_102/strided_slice_2/stack
 lstm_102/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_102/strided_slice_2/stack_1
 lstm_102/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_102/strided_slice_2/stack_2²
lstm_102/strided_slice_2StridedSlicelstm_102/transpose:y:0'lstm_102/strided_slice_2/stack:output:0)lstm_102/strided_slice_2/stack_1:output:0)lstm_102/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_102/strided_slice_2Ó
,lstm_102/lstm_cell_102/MatMul/ReadVariableOpReadVariableOp5lstm_102_lstm_cell_102_matmul_readvariableop_resource*
_output_shapes
:	 *
dtype02.
,lstm_102/lstm_cell_102/MatMul/ReadVariableOpÔ
lstm_102/lstm_cell_102/MatMulMatMul!lstm_102/strided_slice_2:output:04lstm_102/lstm_cell_102/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_102/lstm_cell_102/MatMulÚ
.lstm_102/lstm_cell_102/MatMul_1/ReadVariableOpReadVariableOp7lstm_102_lstm_cell_102_matmul_1_readvariableop_resource* 
_output_shapes
:
È *
dtype020
.lstm_102/lstm_cell_102/MatMul_1/ReadVariableOpÐ
lstm_102/lstm_cell_102/MatMul_1MatMullstm_102/zeros:output:06lstm_102/lstm_cell_102/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2!
lstm_102/lstm_cell_102/MatMul_1È
lstm_102/lstm_cell_102/addAddV2'lstm_102/lstm_cell_102/MatMul:product:0)lstm_102/lstm_cell_102/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2
lstm_102/lstm_cell_102/addÒ
-lstm_102/lstm_cell_102/BiasAdd/ReadVariableOpReadVariableOp6lstm_102_lstm_cell_102_biasadd_readvariableop_resource*
_output_shapes	
: *
dtype02/
-lstm_102/lstm_cell_102/BiasAdd/ReadVariableOpÕ
lstm_102/lstm_cell_102/BiasAddBiasAddlstm_102/lstm_cell_102/add:z:05lstm_102/lstm_cell_102/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 2 
lstm_102/lstm_cell_102/BiasAdd
&lstm_102/lstm_cell_102/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2(
&lstm_102/lstm_cell_102/split/split_dim
lstm_102/lstm_cell_102/splitSplit/lstm_102/lstm_cell_102/split/split_dim:output:0'lstm_102/lstm_cell_102/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ*
	num_split2
lstm_102/lstm_cell_102/split¥
lstm_102/lstm_cell_102/SigmoidSigmoid%lstm_102/lstm_cell_102/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2 
lstm_102/lstm_cell_102/Sigmoid©
 lstm_102/lstm_cell_102/Sigmoid_1Sigmoid%lstm_102/lstm_cell_102/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2"
 lstm_102/lstm_cell_102/Sigmoid_1³
lstm_102/lstm_cell_102/mulMul$lstm_102/lstm_cell_102/Sigmoid_1:y:0lstm_102/zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_102/lstm_cell_102/mul
lstm_102/lstm_cell_102/ReluRelu%lstm_102/lstm_cell_102/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_102/lstm_cell_102/ReluÅ
lstm_102/lstm_cell_102/mul_1Mul"lstm_102/lstm_cell_102/Sigmoid:y:0)lstm_102/lstm_cell_102/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_102/lstm_cell_102/mul_1º
lstm_102/lstm_cell_102/add_1AddV2lstm_102/lstm_cell_102/mul:z:0 lstm_102/lstm_cell_102/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_102/lstm_cell_102/add_1©
 lstm_102/lstm_cell_102/Sigmoid_2Sigmoid%lstm_102/lstm_cell_102/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2"
 lstm_102/lstm_cell_102/Sigmoid_2
lstm_102/lstm_cell_102/Relu_1Relu lstm_102/lstm_cell_102/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_102/lstm_cell_102/Relu_1É
lstm_102/lstm_cell_102/mul_2Mul$lstm_102/lstm_cell_102/Sigmoid_2:y:0+lstm_102/lstm_cell_102/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_102/lstm_cell_102/mul_2¡
&lstm_102/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÈ   2(
&lstm_102/TensorArrayV2_1/element_shapeÜ
lstm_102/TensorArrayV2_1TensorListReserve/lstm_102/TensorArrayV2_1/element_shape:output:0!lstm_102/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_102/TensorArrayV2_1`
lstm_102/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_102/time
!lstm_102/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2#
!lstm_102/while/maximum_iterations|
lstm_102/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_102/while/loop_counterþ
lstm_102/whileWhile$lstm_102/while/loop_counter:output:0*lstm_102/while/maximum_iterations:output:0lstm_102/time:output:0!lstm_102/TensorArrayV2_1:handle:0lstm_102/zeros:output:0lstm_102/zeros_1:output:0!lstm_102/strided_slice_1:output:0@lstm_102/TensorArrayUnstack/TensorListFromTensor:output_handle:05lstm_102_lstm_cell_102_matmul_readvariableop_resource7lstm_102_lstm_cell_102_matmul_1_readvariableop_resource6lstm_102_lstm_cell_102_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : *%
_read_only_resource_inputs
	
*'
bodyR
lstm_102_while_body_5098775*'
condR
lstm_102_while_cond_5098774*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : *
parallel_iterations 2
lstm_102/whileÇ
9lstm_102/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÈ   2;
9lstm_102/TensorArrayV2Stack/TensorListStack/element_shape
+lstm_102/TensorArrayV2Stack/TensorListStackTensorListStacklstm_102/while:output:3Blstm_102/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*
element_dtype02-
+lstm_102/TensorArrayV2Stack/TensorListStack
lstm_102/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2 
lstm_102/strided_slice_3/stack
 lstm_102/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2"
 lstm_102/strided_slice_3/stack_1
 lstm_102/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 lstm_102/strided_slice_3/stack_2Ñ
lstm_102/strided_slice_3StridedSlice4lstm_102/TensorArrayV2Stack/TensorListStack:tensor:0'lstm_102/strided_slice_3/stack:output:0)lstm_102/strided_slice_3/stack_1:output:0)lstm_102/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ*
shrink_axis_mask2
lstm_102/strided_slice_3
lstm_102/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_102/transpose_1/permÊ
lstm_102/transpose_1	Transpose4lstm_102/TensorArrayV2Stack/TensorListStack:tensor:0"lstm_102/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
lstm_102/transpose_1x
lstm_102/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_102/runtime¬
dense_204/MatMul/ReadVariableOpReadVariableOp(dense_204_matmul_readvariableop_resource*
_output_shapes
:	Èd*
dtype02!
dense_204/MatMul/ReadVariableOp¬
dense_204/MatMulMatMul!lstm_102/strided_slice_3:output:0'dense_204/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dense_204/MatMulª
 dense_204/BiasAdd/ReadVariableOpReadVariableOp)dense_204_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02"
 dense_204/BiasAdd/ReadVariableOp©
dense_204/BiasAddBiasAdddense_204/MatMul:product:0(dense_204/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dense_204/BiasAddv
dense_204/ReluReludense_204/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
dense_204/Relu«
dense_205/MatMul/ReadVariableOpReadVariableOp(dense_205_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02!
dense_205/MatMul/ReadVariableOp§
dense_205/MatMulMatMuldense_204/Relu:activations:0'dense_205/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_205/MatMulª
 dense_205/BiasAdd/ReadVariableOpReadVariableOp)dense_205_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_205/BiasAdd/ReadVariableOp©
dense_205/BiasAddBiasAdddense_205/MatMul:product:0(dense_205/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_205/BiasAdd
IdentityIdentitydense_205/BiasAdd:output:0!^dense_204/BiasAdd/ReadVariableOp ^dense_204/MatMul/ReadVariableOp!^dense_205/BiasAdd/ReadVariableOp ^dense_205/MatMul/ReadVariableOp.^lstm_102/lstm_cell_102/BiasAdd/ReadVariableOp-^lstm_102/lstm_cell_102/MatMul/ReadVariableOp/^lstm_102/lstm_cell_102/MatMul_1/ReadVariableOp^lstm_102/while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ: : : : : : : 2D
 dense_204/BiasAdd/ReadVariableOp dense_204/BiasAdd/ReadVariableOp2B
dense_204/MatMul/ReadVariableOpdense_204/MatMul/ReadVariableOp2D
 dense_205/BiasAdd/ReadVariableOp dense_205/BiasAdd/ReadVariableOp2B
dense_205/MatMul/ReadVariableOpdense_205/MatMul/ReadVariableOp2^
-lstm_102/lstm_cell_102/BiasAdd/ReadVariableOp-lstm_102/lstm_cell_102/BiasAdd/ReadVariableOp2\
,lstm_102/lstm_cell_102/MatMul/ReadVariableOp,lstm_102/lstm_cell_102/MatMul/ReadVariableOp2`
.lstm_102/lstm_cell_102/MatMul_1/ReadVariableOp.lstm_102/lstm_cell_102/MatMul_1/ReadVariableOp2 
lstm_102/whilelstm_102/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ë&
ó
while_body_5097611
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_102_5097635_0:	 1
while_lstm_cell_102_5097637_0:
È ,
while_lstm_cell_102_5097639_0:	 
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_102_5097635:	 /
while_lstm_cell_102_5097637:
È *
while_lstm_cell_102_5097639:	 ¢+while/lstm_cell_102/StatefulPartitionedCallÃ
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
)while/TensorArrayV2Read/TensorListGetItemî
+while/lstm_cell_102/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_102_5097635_0while_lstm_cell_102_5097637_0while_lstm_cell_102_5097639_0*
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
GPU 2J 8 *S
fNRL
J__inference_lstm_cell_102_layer_call_and_return_conditional_losses_50975972-
+while/lstm_cell_102/StatefulPartitionedCallø
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder4while/lstm_cell_102/StatefulPartitionedCall:output:0*
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
while/add_1
while/IdentityIdentitywhile/add_1:z:0,^while/lstm_cell_102/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations,^while/lstm_cell_102/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:0,^while/lstm_cell_102/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2»
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0,^while/lstm_cell_102/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3Ç
while/Identity_4Identity4while/lstm_cell_102/StatefulPartitionedCall:output:1,^while/lstm_cell_102/StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_4Ç
while/Identity_5Identity4while/lstm_cell_102/StatefulPartitionedCall:output:2,^while/lstm_cell_102/StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÈ2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_102_5097635while_lstm_cell_102_5097635_0"<
while_lstm_cell_102_5097637while_lstm_cell_102_5097637_0"<
while_lstm_cell_102_5097639while_lstm_cell_102_5097639_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÈ:ÿÿÿÿÿÿÿÿÿÈ: : : : : 2Z
+while/lstm_cell_102/StatefulPartitionedCall+while/lstm_cell_102/StatefulPartitionedCall: 
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
°
¨
*sequential_102_lstm_102_while_cond_5097424L
Hsequential_102_lstm_102_while_sequential_102_lstm_102_while_loop_counterR
Nsequential_102_lstm_102_while_sequential_102_lstm_102_while_maximum_iterations-
)sequential_102_lstm_102_while_placeholder/
+sequential_102_lstm_102_while_placeholder_1/
+sequential_102_lstm_102_while_placeholder_2/
+sequential_102_lstm_102_while_placeholder_3N
Jsequential_102_lstm_102_while_less_sequential_102_lstm_102_strided_slice_1e
asequential_102_lstm_102_while_sequential_102_lstm_102_while_cond_5097424___redundant_placeholder0e
asequential_102_lstm_102_while_sequential_102_lstm_102_while_cond_5097424___redundant_placeholder1e
asequential_102_lstm_102_while_sequential_102_lstm_102_while_cond_5097424___redundant_placeholder2e
asequential_102_lstm_102_while_sequential_102_lstm_102_while_cond_5097424___redundant_placeholder3*
&sequential_102_lstm_102_while_identity
è
"sequential_102/lstm_102/while/LessLess)sequential_102_lstm_102_while_placeholderJsequential_102_lstm_102_while_less_sequential_102_lstm_102_strided_slice_1*
T0*
_output_shapes
: 2$
"sequential_102/lstm_102/while/Less¥
&sequential_102/lstm_102/while/IdentityIdentity&sequential_102/lstm_102/while/Less:z:0*
T0
*
_output_shapes
: 2(
&sequential_102/lstm_102/while/Identity"Y
&sequential_102_lstm_102_while_identity/sequential_102/lstm_102/while/Identity:output:0*(
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
	
«
0__inference_sequential_102_layer_call_fn_5099055

inputs
unknown:	 
	unknown_0:
È 
	unknown_1:	 
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
K__inference_sequential_102_layer_call_and_return_conditional_losses_50983512
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

ù
/__inference_lstm_cell_102_layer_call_fn_5099842

inputs
states_0
states_1
unknown:	 
	unknown_0:
È 
	unknown_1:	 
identity

identity_1

identity_2¢StatefulPartitionedCallÈ
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
GPU 2J 8 *S
fNRL
J__inference_lstm_cell_102_layer_call_and_return_conditional_losses_50975972
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
Þ
È
while_cond_5097610
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_5097610___redundant_placeholder05
1while_while_cond_5097610___redundant_placeholder15
1while_while_cond_5097610___redundant_placeholder25
1while_while_cond_5097610___redundant_placeholder3
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
²

ø
F__inference_dense_204_layer_call_and_return_conditional_losses_5099733

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
+__inference_dense_205_layer_call_fn_5099761

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
F__inference_dense_205_layer_call_and_return_conditional_losses_50983442
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

ù
/__inference_lstm_cell_102_layer_call_fn_5099859

inputs
states_0
states_1
unknown:	 
	unknown_0:
È 
	unknown_1:	 
identity

identity_1

identity_2¢StatefulPartitionedCallÈ
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
GPU 2J 8 *S
fNRL
J__inference_lstm_cell_102_layer_call_and_return_conditional_losses_50977432
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
Ò	
÷
F__inference_dense_205_layer_call_and_return_conditional_losses_5098344

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
 
_user_specified_nameinputs"ÌL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*¾
serving_defaultª
M
lstm_102_input;
 serving_default_lstm_102_input:0ÿÿÿÿÿÿÿÿÿ=
	dense_2050
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:Á
®-
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
X__call__"î*
_tf_keras_sequentialÏ*{"name": "sequential_102", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_102", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "lstm_102_input"}}, {"class_name": "LSTM", "config": {"name": "lstm_102", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 1]}, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 200, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}, {"class_name": "Dense", "config": {"name": "dense_204", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_205", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 12, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 1]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 13}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 7, 1]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 7, 1]}, "float32", "lstm_102_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_102", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "lstm_102_input"}, "shared_object_id": 0}, {"class_name": "LSTM", "config": {"name": "lstm_102", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 1]}, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 200, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 5}, {"class_name": "Dense", "config": {"name": "dense_204", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 8}, {"class_name": "Dense", "config": {"name": "dense_205", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 11}]}}, "training_config": {"loss": "mse", "metrics": null, "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
ª

cell

state_spec
trainable_variables
regularization_losses
	variables
	keras_api
*Y&call_and_return_all_conditional_losses
Z__call__"
_tf_keras_rnn_layerã{"name": "lstm_102", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 1]}, "stateful": false, "must_restore_from_config": false, "class_name": "LSTM", "config": {"name": "lstm_102", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 7, 1]}, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 200, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 5, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 1]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 13}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 7, 1]}}
Ô

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
*[&call_and_return_all_conditional_losses
\__call__"¯
_tf_keras_layer{"name": "dense_204", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_204", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 8, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 200}}, "shared_object_id": 14}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 200]}}
Ö

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
*]&call_and_return_all_conditional_losses
^__call__"±
_tf_keras_layer{"name": "dense_205", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_205", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 11, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 100}}, "shared_object_id": 15}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 100]}}
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
	
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
a__call__"Î
_tf_keras_layer´{"name": "lstm_cell_102", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LSTMCell", "config": {"name": "lstm_cell_102", "trainable": true, "dtype": "float32", "units": 200, "activation": "relu", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 4}
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
#:!	Èd2dense_204/kernel
:d2dense_204/bias
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
": d2dense_205/kernel
:2dense_205/bias
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
0:.	 2lstm_102/lstm_cell_102/kernel
;:9
È 2'lstm_102/lstm_cell_102/recurrent_kernel
*:( 2lstm_102/lstm_cell_102/bias
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
(:&	Èd2Adam/dense_204/kernel/m
!:d2Adam/dense_204/bias/m
':%d2Adam/dense_205/kernel/m
!:2Adam/dense_205/bias/m
5:3	 2$Adam/lstm_102/lstm_cell_102/kernel/m
@:>
È 2.Adam/lstm_102/lstm_cell_102/recurrent_kernel/m
/:- 2"Adam/lstm_102/lstm_cell_102/bias/m
(:&	Èd2Adam/dense_204/kernel/v
!:d2Adam/dense_204/bias/v
':%d2Adam/dense_205/kernel/v
!:2Adam/dense_205/bias/v
5:3	 2$Adam/lstm_102/lstm_cell_102/kernel/v
@:>
È 2.Adam/lstm_102/lstm_cell_102/recurrent_kernel/v
/:- 2"Adam/lstm_102/lstm_cell_102/bias/v
ë2è
"__inference__wrapped_model_5097522Á
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
annotationsª *1¢.
,)
lstm_102_inputÿÿÿÿÿÿÿÿÿ
ú2÷
K__inference_sequential_102_layer_call_and_return_conditional_losses_5098872
K__inference_sequential_102_layer_call_and_return_conditional_losses_5099036
K__inference_sequential_102_layer_call_and_return_conditional_losses_5098660
K__inference_sequential_102_layer_call_and_return_conditional_losses_5098681À
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
0__inference_sequential_102_layer_call_fn_5098368
0__inference_sequential_102_layer_call_fn_5099055
0__inference_sequential_102_layer_call_fn_5099074
0__inference_sequential_102_layer_call_fn_5098639À
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
÷2ô
E__inference_lstm_102_layer_call_and_return_conditional_losses_5099225
E__inference_lstm_102_layer_call_and_return_conditional_losses_5099376
E__inference_lstm_102_layer_call_and_return_conditional_losses_5099527
E__inference_lstm_102_layer_call_and_return_conditional_losses_5099678Õ
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
2
*__inference_lstm_102_layer_call_fn_5099689
*__inference_lstm_102_layer_call_fn_5099700
*__inference_lstm_102_layer_call_fn_5099711
*__inference_lstm_102_layer_call_fn_5099722Õ
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
F__inference_dense_204_layer_call_and_return_conditional_losses_5099733¢
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
+__inference_dense_204_layer_call_fn_5099742¢
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
F__inference_dense_205_layer_call_and_return_conditional_losses_5099752¢
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
+__inference_dense_205_layer_call_fn_5099761¢
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
ÓBÐ
%__inference_signature_wrapper_5098708lstm_102_input"
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
Ü2Ù
J__inference_lstm_cell_102_layer_call_and_return_conditional_losses_5099793
J__inference_lstm_cell_102_layer_call_and_return_conditional_losses_5099825¾
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
¦2£
/__inference_lstm_cell_102_layer_call_fn_5099842
/__inference_lstm_cell_102_layer_call_fn_5099859¾
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
 £
"__inference__wrapped_model_5097522}!"#;¢8
1¢.
,)
lstm_102_inputÿÿÿÿÿÿÿÿÿ
ª "5ª2
0
	dense_205# 
	dense_205ÿÿÿÿÿÿÿÿÿ§
F__inference_dense_204_layer_call_and_return_conditional_losses_5099733]0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿÈ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿd
 
+__inference_dense_204_layer_call_fn_5099742P0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿÈ
ª "ÿÿÿÿÿÿÿÿÿd¦
F__inference_dense_205_layer_call_and_return_conditional_losses_5099752\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿd
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ~
+__inference_dense_205_layer_call_fn_5099761O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿd
ª "ÿÿÿÿÿÿÿÿÿÇ
E__inference_lstm_102_layer_call_and_return_conditional_losses_5099225~!"#O¢L
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
 Ç
E__inference_lstm_102_layer_call_and_return_conditional_losses_5099376~!"#O¢L
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
 ·
E__inference_lstm_102_layer_call_and_return_conditional_losses_5099527n!"#?¢<
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
 ·
E__inference_lstm_102_layer_call_and_return_conditional_losses_5099678n!"#?¢<
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
 
*__inference_lstm_102_layer_call_fn_5099689q!"#O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿÈ
*__inference_lstm_102_layer_call_fn_5099700q!"#O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿÈ
*__inference_lstm_102_layer_call_fn_5099711a!"#?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿÈ
*__inference_lstm_102_layer_call_fn_5099722a!"#?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿÈÑ
J__inference_lstm_cell_102_layer_call_and_return_conditional_losses_5099793!"#¢
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
 Ñ
J__inference_lstm_cell_102_layer_call_and_return_conditional_losses_5099825!"#¢
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
 ¦
/__inference_lstm_cell_102_layer_call_fn_5099842ò!"#¢
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
1/1ÿÿÿÿÿÿÿÿÿÈ¦
/__inference_lstm_cell_102_layer_call_fn_5099859ò!"#¢
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
1/1ÿÿÿÿÿÿÿÿÿÈÄ
K__inference_sequential_102_layer_call_and_return_conditional_losses_5098660u!"#C¢@
9¢6
,)
lstm_102_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Ä
K__inference_sequential_102_layer_call_and_return_conditional_losses_5098681u!"#C¢@
9¢6
,)
lstm_102_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¼
K__inference_sequential_102_layer_call_and_return_conditional_losses_5098872m!"#;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¼
K__inference_sequential_102_layer_call_and_return_conditional_losses_5099036m!"#;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
0__inference_sequential_102_layer_call_fn_5098368h!"#C¢@
9¢6
,)
lstm_102_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
0__inference_sequential_102_layer_call_fn_5098639h!"#C¢@
9¢6
,)
lstm_102_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
0__inference_sequential_102_layer_call_fn_5099055`!"#;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
0__inference_sequential_102_layer_call_fn_5099074`!"#;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ¹
%__inference_signature_wrapper_5098708!"#M¢J
¢ 
Cª@
>
lstm_102_input,)
lstm_102_inputÿÿÿÿÿÿÿÿÿ"5ª2
0
	dense_205# 
	dense_205ÿÿÿÿÿÿÿÿÿ