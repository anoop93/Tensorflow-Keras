ц∞	
•)ь(
:
Add
x"T
y"T
z"T"
Ttype:
2	
Ы
ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
P
Assert
	condition
	
data2T"
T
list(type)(0"
	summarizeintИ
x
Assign
ref"TА

value"T

output_ref"TА"	
Ttype"
validate_shapebool("
use_lockingbool(Ш
s
	AssignAdd
ref"TА

value"T

output_ref"TА" 
Ttype:
2	"
use_lockingbool( 
E
AssignAddVariableOp
resource
value"dtype"
dtypetypeИ
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
є
DenseToDenseSetOperation	
set1"T	
set2"T
result_indices	
result_values"T
result_shape	"
set_operationstring"
validate_indicesbool("
Ttype:
	2	
B
Equal
x"T
y"T
z
"
Ttype:
2	
Р
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
,
Floor
x"T
y"T"
Ttype:
2
=
Greater
x"T
y"T
z
"
Ttype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
N
IsVariableInitialized
ref"dtypeА
is_initialized
"
dtypetypeШ
?
	LessEqual
x"T
y"T
z
"
Ttype:
2	
,
Log
x"T
y"T"
Ttype:

2
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
М
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
;
Maximum
x"T
y"T
z"T"
Ttype:

2	Р
Н
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
;
Minimum
x"T
y"T
z"T"
Ttype:

2	Р
=
Mul
x"T
y"T
z"T"
Ttype:
2	Р
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
L
PreventGradient

input"T
output"T"	
Ttype"
messagestring 
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
5

Reciprocal
x"T
y"T"
Ttype:

2	
E
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
а
ResourceApplyAdam
var
m
v
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( И
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
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
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2
У
#SparseSoftmaxCrossEntropyWithLogits
features"T
labels"Tlabels	
loss"T
backprop"T"
Ttype:
2"
Tlabelstype0	:
2	
:
Sub
x"T
y"T
z"T"
Ttype:
2	
М
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshapeИ
9
VarIsInitializedOp
resource
is_initialized
И
s

VariableV2
ref"dtypeА"
shapeshape"
dtypetype"
	containerstring "
shared_namestring И
&
	ZerosLike
x"T
y"T"	
Ttype"train*1.12.02v1.12.0-0-ga6d8ffae09ўр
s
dense_16_inputPlaceholder*
dtype0*(
_output_shapes
:€€€€€€€€€Р*
shape:€€€€€€€€€Р
•
0dense_16/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@dense_16/kernel*
valueB"     *
dtype0*
_output_shapes
:
Ч
.dense_16/kernel/Initializer/random_uniform/minConst*"
_class
loc:@dense_16/kernel*
valueB
 *HYЛљ*
dtype0*
_output_shapes
: 
Ч
.dense_16/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@dense_16/kernel*
valueB
 *HYЛ=*
dtype0*
_output_shapes
: 
р
8dense_16/kernel/Initializer/random_uniform/RandomUniformRandomUniform0dense_16/kernel/Initializer/random_uniform/shape*

seed *
T0*"
_class
loc:@dense_16/kernel*
seed2 *
dtype0* 
_output_shapes
:
РА
Џ
.dense_16/kernel/Initializer/random_uniform/subSub.dense_16/kernel/Initializer/random_uniform/max.dense_16/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@dense_16/kernel*
_output_shapes
: 
о
.dense_16/kernel/Initializer/random_uniform/mulMul8dense_16/kernel/Initializer/random_uniform/RandomUniform.dense_16/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@dense_16/kernel* 
_output_shapes
:
РА
а
*dense_16/kernel/Initializer/random_uniformAdd.dense_16/kernel/Initializer/random_uniform/mul.dense_16/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@dense_16/kernel* 
_output_shapes
:
РА
±
dense_16/kernelVarHandleOp*
dtype0*
_output_shapes
: * 
shared_namedense_16/kernel*"
_class
loc:@dense_16/kernel*
	container *
shape:
РА
o
0dense_16/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_16/kernel*
_output_shapes
: 
Ш
dense_16/kernel/AssignAssignVariableOpdense_16/kernel*dense_16/kernel/Initializer/random_uniform*"
_class
loc:@dense_16/kernel*
dtype0
Щ
#dense_16/kernel/Read/ReadVariableOpReadVariableOpdense_16/kernel*"
_class
loc:@dense_16/kernel*
dtype0* 
_output_shapes
:
РА
Р
dense_16/bias/Initializer/zerosConst* 
_class
loc:@dense_16/bias*
valueBА*    *
dtype0*
_output_shapes	
:А
¶
dense_16/biasVarHandleOp*
dtype0*
_output_shapes
: *
shared_namedense_16/bias* 
_class
loc:@dense_16/bias*
	container *
shape:А
k
.dense_16/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_16/bias*
_output_shapes
: 
З
dense_16/bias/AssignAssignVariableOpdense_16/biasdense_16/bias/Initializer/zeros* 
_class
loc:@dense_16/bias*
dtype0
О
!dense_16/bias/Read/ReadVariableOpReadVariableOpdense_16/bias* 
_class
loc:@dense_16/bias*
dtype0*
_output_shapes	
:А
p
dense_16/MatMul/ReadVariableOpReadVariableOpdense_16/kernel*
dtype0* 
_output_shapes
:
РА
Ґ
dense_16/MatMulMatMuldense_16_inputdense_16/MatMul/ReadVariableOp*
transpose_b( *
T0*(
_output_shapes
:€€€€€€€€€А*
transpose_a( 
j
dense_16/BiasAdd/ReadVariableOpReadVariableOpdense_16/bias*
dtype0*
_output_shapes	
:А
Ч
dense_16/BiasAddBiasAdddense_16/MatMuldense_16/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*(
_output_shapes
:€€€€€€€€€А
Z
dense_16/ReluReludense_16/BiasAdd*
T0*(
_output_shapes
:€€€€€€€€€А
`
dropout_8/dropout/keep_probConst*
valueB
 *ЌћL?*
dtype0*
_output_shapes
: 
d
dropout_8/dropout/ShapeShapedense_16/Relu*
T0*
out_type0*
_output_shapes
:
i
$dropout_8/dropout/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: 
i
$dropout_8/dropout/random_uniform/maxConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
±
.dropout_8/dropout/random_uniform/RandomUniformRandomUniformdropout_8/dropout/Shape*

seed *
T0*
dtype0*(
_output_shapes
:€€€€€€€€€А*
seed2 
Ш
$dropout_8/dropout/random_uniform/subSub$dropout_8/dropout/random_uniform/max$dropout_8/dropout/random_uniform/min*
T0*
_output_shapes
: 
і
$dropout_8/dropout/random_uniform/mulMul.dropout_8/dropout/random_uniform/RandomUniform$dropout_8/dropout/random_uniform/sub*
T0*(
_output_shapes
:€€€€€€€€€А
¶
 dropout_8/dropout/random_uniformAdd$dropout_8/dropout/random_uniform/mul$dropout_8/dropout/random_uniform/min*
T0*(
_output_shapes
:€€€€€€€€€А
О
dropout_8/dropout/addAdddropout_8/dropout/keep_prob dropout_8/dropout/random_uniform*
T0*(
_output_shapes
:€€€€€€€€€А
j
dropout_8/dropout/FloorFloordropout_8/dropout/add*
T0*(
_output_shapes
:€€€€€€€€€А

dropout_8/dropout/divRealDivdense_16/Reludropout_8/dropout/keep_prob*
T0*(
_output_shapes
:€€€€€€€€€А

dropout_8/dropout/mulMuldropout_8/dropout/divdropout_8/dropout/Floor*
T0*(
_output_shapes
:€€€€€€€€€А
•
0dense_17/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@dense_17/kernel*
valueB"   
   *
dtype0*
_output_shapes
:
Ч
.dense_17/kernel/Initializer/random_uniform/minConst*"
_class
loc:@dense_17/kernel*
valueB
 *УСџљ*
dtype0*
_output_shapes
: 
Ч
.dense_17/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@dense_17/kernel*
valueB
 *УСџ=*
dtype0*
_output_shapes
: 
п
8dense_17/kernel/Initializer/random_uniform/RandomUniformRandomUniform0dense_17/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes
:	А
*

seed *
T0*"
_class
loc:@dense_17/kernel*
seed2 
Џ
.dense_17/kernel/Initializer/random_uniform/subSub.dense_17/kernel/Initializer/random_uniform/max.dense_17/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@dense_17/kernel*
_output_shapes
: 
н
.dense_17/kernel/Initializer/random_uniform/mulMul8dense_17/kernel/Initializer/random_uniform/RandomUniform.dense_17/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@dense_17/kernel*
_output_shapes
:	А

я
*dense_17/kernel/Initializer/random_uniformAdd.dense_17/kernel/Initializer/random_uniform/mul.dense_17/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@dense_17/kernel*
_output_shapes
:	А

∞
dense_17/kernelVarHandleOp*
shape:	А
*
dtype0*
_output_shapes
: * 
shared_namedense_17/kernel*"
_class
loc:@dense_17/kernel*
	container 
o
0dense_17/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_17/kernel*
_output_shapes
: 
Ш
dense_17/kernel/AssignAssignVariableOpdense_17/kernel*dense_17/kernel/Initializer/random_uniform*"
_class
loc:@dense_17/kernel*
dtype0
Ш
#dense_17/kernel/Read/ReadVariableOpReadVariableOpdense_17/kernel*"
_class
loc:@dense_17/kernel*
dtype0*
_output_shapes
:	А

О
dense_17/bias/Initializer/zerosConst* 
_class
loc:@dense_17/bias*
valueB
*    *
dtype0*
_output_shapes
:

•
dense_17/biasVarHandleOp*
shared_namedense_17/bias* 
_class
loc:@dense_17/bias*
	container *
shape:
*
dtype0*
_output_shapes
: 
k
.dense_17/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_17/bias*
_output_shapes
: 
З
dense_17/bias/AssignAssignVariableOpdense_17/biasdense_17/bias/Initializer/zeros* 
_class
loc:@dense_17/bias*
dtype0
Н
!dense_17/bias/Read/ReadVariableOpReadVariableOpdense_17/bias* 
_class
loc:@dense_17/bias*
dtype0*
_output_shapes
:

o
dense_17/MatMul/ReadVariableOpReadVariableOpdense_17/kernel*
dtype0*
_output_shapes
:	А

®
dense_17/MatMulMatMuldropout_8/dropout/muldense_17/MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€
*
transpose_a( *
transpose_b( 
i
dense_17/BiasAdd/ReadVariableOpReadVariableOpdense_17/bias*
dtype0*
_output_shapes
:

Ц
dense_17/BiasAddBiasAdddense_17/MatMuldense_17/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:€€€€€€€€€

_
dense_17/SoftmaxSoftmaxdense_17/BiasAdd*
T0*'
_output_shapes
:€€€€€€€€€

Э
0TFOptimizer/iterations/Initializer/initial_valueConst*)
_class
loc:@TFOptimizer/iterations*
value	B	 R *
dtype0	*
_output_shapes
: 
Љ
TFOptimizer/iterationsVarHandleOp*'
shared_nameTFOptimizer/iterations*)
_class
loc:@TFOptimizer/iterations*
	container *
shape: *
dtype0	*
_output_shapes
: 
}
7TFOptimizer/iterations/IsInitialized/VarIsInitializedOpVarIsInitializedOpTFOptimizer/iterations*
_output_shapes
: 
≥
TFOptimizer/iterations/AssignAssignVariableOpTFOptimizer/iterations0TFOptimizer/iterations/Initializer/initial_value*)
_class
loc:@TFOptimizer/iterations*
dtype0	
§
*TFOptimizer/iterations/Read/ReadVariableOpReadVariableOpTFOptimizer/iterations*)
_class
loc:@TFOptimizer/iterations*
dtype0	*
_output_shapes
: 
Д
dense_17_targetPlaceholder*
dtype0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*%
shape:€€€€€€€€€€€€€€€€€€
R
ConstConst*
valueB*  А?*
dtype0*
_output_shapes
:
Д
dense_17_sample_weightsPlaceholderWithDefaultConst*
shape:€€€€€€€€€*
dtype0*#
_output_shapes
:€€€€€€€€€
]
loss/dense_17_loss/ConstConst*
valueB
 *Хњ÷3*
dtype0*
_output_shapes
: 
]
loss/dense_17_loss/sub/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
r
loss/dense_17_loss/subSubloss/dense_17_loss/sub/xloss/dense_17_loss/Const*
T0*
_output_shapes
: 
П
(loss/dense_17_loss/clip_by_value/MinimumMinimumdense_17/Softmaxloss/dense_17_loss/sub*
T0*'
_output_shapes
:€€€€€€€€€

°
 loss/dense_17_loss/clip_by_valueMaximum(loss/dense_17_loss/clip_by_value/Minimumloss/dense_17_loss/Const*
T0*'
_output_shapes
:€€€€€€€€€

q
loss/dense_17_loss/LogLog loss/dense_17_loss/clip_by_value*
T0*'
_output_shapes
:€€€€€€€€€

s
 loss/dense_17_loss/Reshape/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
Ф
loss/dense_17_loss/ReshapeReshapedense_17_target loss/dense_17_loss/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:€€€€€€€€€
И
loss/dense_17_loss/CastCastloss/dense_17_loss/Reshape*

SrcT0*
Truncate( *#
_output_shapes
:€€€€€€€€€*

DstT0	
s
"loss/dense_17_loss/Reshape_1/shapeConst*
valueB"€€€€
   *
dtype0*
_output_shapes
:
£
loss/dense_17_loss/Reshape_1Reshapeloss/dense_17_loss/Log"loss/dense_17_loss/Reshape_1/shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€

У
<loss/dense_17_loss/SparseSoftmaxCrossEntropyWithLogits/ShapeShapeloss/dense_17_loss/Cast*
T0	*
out_type0*
_output_shapes
:
И
Zloss/dense_17_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsloss/dense_17_loss/Reshape_1loss/dense_17_loss/Cast*
T0*6
_output_shapes$
":€€€€€€€€€:€€€€€€€€€
*
Tlabels0	
Ю
Gloss/dense_17_loss/broadcast_weights/assert_broadcastable/weights/shapeShapedense_17_sample_weights*
T0*
out_type0*
_output_shapes
:
И
Floss/dense_17_loss/broadcast_weights/assert_broadcastable/weights/rankConst*
value	B :*
dtype0*
_output_shapes
: 
а
Floss/dense_17_loss/broadcast_weights/assert_broadcastable/values/shapeShapeZloss/dense_17_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*
out_type0*
_output_shapes
:
З
Eloss/dense_17_loss/broadcast_weights/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
З
Eloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_scalar/xConst*
value	B : *
dtype0*
_output_shapes
: 
ь
Closs/dense_17_loss/broadcast_weights/assert_broadcastable/is_scalarEqualEloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_scalar/xFloss/dense_17_loss/broadcast_weights/assert_broadcastable/weights/rank*
T0*
_output_shapes
: 
Ж
Oloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/SwitchSwitchCloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_scalarCloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_scalar*
T0
*
_output_shapes
: : 
—
Qloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_tIdentityQloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch:1*
T0
*
_output_shapes
: 
ѕ
Qloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_fIdentityOloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch*
T0
*
_output_shapes
: 
¬
Ploss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_idIdentityCloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_scalar*
T0
*
_output_shapes
: 
н
Qloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1SwitchCloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_scalarPloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0
*V
_classL
JHloc:@loss/dense_17_loss/broadcast_weights/assert_broadcastable/is_scalar*
_output_shapes
: : 
Л
oloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankEqualvloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switchxloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1*
T0*
_output_shapes
: 
Ц
vloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/SwitchSwitchEloss/dense_17_loss/broadcast_weights/assert_broadcastable/values/rankPloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0*X
_classN
LJloc:@loss/dense_17_loss/broadcast_weights/assert_broadcastable/values/rank*
_output_shapes
: : 
Ъ
xloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1SwitchFloss/dense_17_loss/broadcast_weights/assert_broadcastable/weights/rankPloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0*Y
_classO
MKloc:@loss/dense_17_loss/broadcast_weights/assert_broadcastable/weights/rank*
_output_shapes
: : 
ш
iloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/SwitchSwitcholoss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankoloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
T0
*
_output_shapes
: : 
Е
kloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_tIdentitykloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1*
T0
*
_output_shapes
: 
Г
kloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_fIdentityiloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch*
T0
*
_output_shapes
: 
И
jloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_idIdentityoloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
T0
*
_output_shapes
: 
Љ
Вloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dimConstl^loss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
“
~loss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims
ExpandDimsЙloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1Вloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim*
T0*
_output_shapes

:*

Tdim0
∞
Еloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/SwitchSwitchFloss/dense_17_loss/broadcast_weights/assert_broadcastable/values/shapePloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0*Y
_classO
MKloc:@loss/dense_17_loss/broadcast_weights/assert_broadcastable/values/shape* 
_output_shapes
::
М
Зloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1SwitchЕloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switchjloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0*Y
_classO
MKloc:@loss/dense_17_loss/broadcast_weights/assert_broadcastable/values/shape* 
_output_shapes
::
√
Гloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ShapeConstl^loss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB"      *
dtype0*
_output_shapes
:
і
Гloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ConstConstl^loss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B :*
dtype0*
_output_shapes
: 
ћ
}loss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_likeFillГloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ShapeГloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const*
T0*

index_type0*
_output_shapes

:
ѓ
loss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axisConstl^loss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B :*
dtype0*
_output_shapes
: 
ƒ
zloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concatConcatV2~loss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims}loss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_likeloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis*
T0*
N*
_output_shapes

:*

Tidx0
Њ
Дloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dimConstl^loss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
ў
Аloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1
ExpandDimsЛloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1Дloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim*

Tdim0*
T0*
_output_shapes

:
і
Зloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/SwitchSwitchGloss/dense_17_loss/broadcast_weights/assert_broadcastable/weights/shapePloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0*Z
_classP
NLloc:@loss/dense_17_loss/broadcast_weights/assert_broadcastable/weights/shape* 
_output_shapes
::
С
Йloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1SwitchЗloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switchjloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0*Z
_classP
NLloc:@loss/dense_17_loss/broadcast_weights/assert_broadcastable/weights/shape* 
_output_shapes
::
Я
Мloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperationDenseToDenseSetOperationАloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1zloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat*
validate_indices(*
T0*<
_output_shapes*
(:€€€€€€€€€:€€€€€€€€€:*
set_operationa-b
ѕ
Дloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dimsSizeОloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1*
T0*
out_type0*
_output_shapes
: 
•
uloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xConstl^loss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B : *
dtype0*
_output_shapes
: 
Ы
sloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dimsEqualuloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xДloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims*
T0*
_output_shapes
: 
ъ
kloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1Switcholoss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankjloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0
*В
_classx
vtloc:@loss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
_output_shapes
: : 
€
hloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergeMergekloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1sloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims*
T0
*
N*
_output_shapes
: : 
¬
Nloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/MergeMergehloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergeSloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:1*
T0
*
N*
_output_shapes
: : 
І
?loss/dense_17_loss/broadcast_weights/assert_broadcastable/ConstConst*8
value/B- B'weights can not be broadcast to values.*
dtype0*
_output_shapes
: 
Р
Aloss/dense_17_loss/broadcast_weights/assert_broadcastable/Const_1Const*
valueB Bweights.shape=*
dtype0*
_output_shapes
: 
Ы
Aloss/dense_17_loss/broadcast_weights/assert_broadcastable/Const_2Const**
value!B Bdense_17_sample_weights:0*
dtype0*
_output_shapes
: 
П
Aloss/dense_17_loss/broadcast_weights/assert_broadcastable/Const_3Const*
valueB Bvalues.shape=*
dtype0*
_output_shapes
: 
ё
Aloss/dense_17_loss/broadcast_weights/assert_broadcastable/Const_4Const*m
valuedBb B\loss/dense_17_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:0*
dtype0*
_output_shapes
: 
М
Aloss/dense_17_loss/broadcast_weights/assert_broadcastable/Const_5Const*
valueB B
is_scalar=*
dtype0*
_output_shapes
: 
Щ
Lloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/SwitchSwitchNloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/MergeNloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge*
T0
*
_output_shapes
: : 
Ћ
Nloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_tIdentityNloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Switch:1*
T0
*
_output_shapes
: 
…
Nloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_fIdentityLloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Switch*
T0
*
_output_shapes
: 
 
Mloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_idIdentityNloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge*
T0
*
_output_shapes
: 
£
Jloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/NoOpNoOpO^loss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t
Е
Xloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependencyIdentityNloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_tK^loss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/NoOp*
T0
*a
_classW
USloc:@loss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t*
_output_shapes
: 
М
Sloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0ConstO^loss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*8
value/B- B'weights can not be broadcast to values.*
dtype0*
_output_shapes
: 
у
Sloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1ConstO^loss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
valueB Bweights.shape=*
dtype0*
_output_shapes
: 
ю
Sloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2ConstO^loss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f**
value!B Bdense_17_sample_weights:0*
dtype0*
_output_shapes
: 
т
Sloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4ConstO^loss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
valueB Bvalues.shape=*
dtype0*
_output_shapes
: 
Ѕ
Sloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5ConstO^loss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*m
valuedBb B\loss/dense_17_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:0*
dtype0*
_output_shapes
: 
п
Sloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7ConstO^loss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
valueB B
is_scalar=*
dtype0*
_output_shapes
: 
”
Lloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/AssertAssertSloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/SwitchSloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0Sloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1Sloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2Uloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1Sloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4Sloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5Uloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2Sloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7Uloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3*
T
2	
*
	summarize
В
Sloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/SwitchSwitchNloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/MergeMloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0
*a
_classW
USloc:@loss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge*
_output_shapes
: : 
ю
Uloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1SwitchGloss/dense_17_loss/broadcast_weights/assert_broadcastable/weights/shapeMloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0*Z
_classP
NLloc:@loss/dense_17_loss/broadcast_weights/assert_broadcastable/weights/shape* 
_output_shapes
::
ь
Uloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2SwitchFloss/dense_17_loss/broadcast_weights/assert_broadcastable/values/shapeMloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0*Y
_classO
MKloc:@loss/dense_17_loss/broadcast_weights/assert_broadcastable/values/shape* 
_output_shapes
::
о
Uloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3SwitchCloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_scalarMloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0
*V
_classL
JHloc:@loss/dense_17_loss/broadcast_weights/assert_broadcastable/is_scalar*
_output_shapes
: : 
Й
Zloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1IdentityNloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_fM^loss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert*
T0
*a
_classW
USloc:@loss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
_output_shapes
: 
ґ
Kloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/MergeMergeZloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1Xloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency*
T0
*
N*
_output_shapes
: : 
Ь
4loss/dense_17_loss/broadcast_weights/ones_like/ShapeShapeZloss/dense_17_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogitsL^loss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Merge*
T0*
out_type0*
_output_shapes
:
«
4loss/dense_17_loss/broadcast_weights/ones_like/ConstConstL^loss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Merge*
valueB
 *  А?*
dtype0*
_output_shapes
: 
в
.loss/dense_17_loss/broadcast_weights/ones_likeFill4loss/dense_17_loss/broadcast_weights/ones_like/Shape4loss/dense_17_loss/broadcast_weights/ones_like/Const*
T0*

index_type0*#
_output_shapes
:€€€€€€€€€
Ґ
$loss/dense_17_loss/broadcast_weightsMuldense_17_sample_weights.loss/dense_17_loss/broadcast_weights/ones_like*
T0*#
_output_shapes
:€€€€€€€€€
Ќ
loss/dense_17_loss/MulMulZloss/dense_17_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits$loss/dense_17_loss/broadcast_weights*
T0*#
_output_shapes
:€€€€€€€€€
d
loss/dense_17_loss/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
П
loss/dense_17_loss/SumSumloss/dense_17_loss/Mulloss/dense_17_loss/Const_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
d
loss/dense_17_loss/Const_2Const*
valueB: *
dtype0*
_output_shapes
:
Я
loss/dense_17_loss/Sum_1Sum$loss/dense_17_loss/broadcast_weightsloss/dense_17_loss/Const_2*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
x
loss/dense_17_loss/truedivRealDivloss/dense_17_loss/Sumloss/dense_17_loss/Sum_1*
T0*
_output_shapes
: 
b
loss/dense_17_loss/zeros_likeConst*
valueB
 *    *
dtype0*
_output_shapes
: 

loss/dense_17_loss/GreaterGreaterloss/dense_17_loss/Sum_1loss/dense_17_loss/zeros_like*
T0*
_output_shapes
: 
Ы
loss/dense_17_loss/SelectSelectloss/dense_17_loss/Greaterloss/dense_17_loss/truedivloss/dense_17_loss/zeros_like*
T0*
_output_shapes
: 
]
loss/dense_17_loss/Const_3Const*
valueB *
dtype0*
_output_shapes
: 
Ф
loss/dense_17_loss/MeanMeanloss/dense_17_loss/Selectloss/dense_17_loss/Const_3*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
O

loss/mul/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
U
loss/mulMul
loss/mul/xloss/dense_17_loss/Mean*
T0*
_output_shapes
: 
l
!metrics/acc/Max/reduction_indicesConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
Х
metrics/acc/MaxMaxdense_17_target!metrics/acc/Max/reduction_indices*
	keep_dims( *

Tidx0*
T0*#
_output_shapes
:€€€€€€€€€
g
metrics/acc/ArgMax/dimensionConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
Щ
metrics/acc/ArgMaxArgMaxdense_17/Softmaxmetrics/acc/ArgMax/dimension*

Tidx0*
T0*
output_type0	*#
_output_shapes
:€€€€€€€€€
y
metrics/acc/CastCastmetrics/acc/ArgMax*

SrcT0	*
Truncate( *#
_output_shapes
:€€€€€€€€€*

DstT0
k
metrics/acc/EqualEqualmetrics/acc/Maxmetrics/acc/Cast*
T0*#
_output_shapes
:€€€€€€€€€
z
metrics/acc/Cast_1Castmetrics/acc/Equal*

SrcT0
*
Truncate( *#
_output_shapes
:€€€€€€€€€*

DstT0
[
metrics/acc/ConstConst*
valueB: *
dtype0*
_output_shapes
:
}
metrics/acc/MeanMeanmetrics/acc/Cast_1metrics/acc/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
g
$training/TFOptimizer/gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
m
(training/TFOptimizer/gradients/grad_ys_0Const*
valueB
 *  А?*
dtype0*
_output_shapes
: 
Ѓ
#training/TFOptimizer/gradients/FillFill$training/TFOptimizer/gradients/Shape(training/TFOptimizer/gradients/grad_ys_0*
T0*

index_type0*
_output_shapes
: 
Ц
0training/TFOptimizer/gradients/loss/mul_grad/MulMul#training/TFOptimizer/gradients/Fillloss/dense_17_loss/Mean*
T0*
_output_shapes
: 
Л
2training/TFOptimizer/gradients/loss/mul_grad/Mul_1Mul#training/TFOptimizer/gradients/Fill
loss/mul/x*
T0*
_output_shapes
: 
≠
=training/TFOptimizer/gradients/loss/mul_grad/tuple/group_depsNoOp1^training/TFOptimizer/gradients/loss/mul_grad/Mul3^training/TFOptimizer/gradients/loss/mul_grad/Mul_1
©
Etraining/TFOptimizer/gradients/loss/mul_grad/tuple/control_dependencyIdentity0training/TFOptimizer/gradients/loss/mul_grad/Mul>^training/TFOptimizer/gradients/loss/mul_grad/tuple/group_deps*
T0*C
_class9
75loc:@training/TFOptimizer/gradients/loss/mul_grad/Mul*
_output_shapes
: 
ѓ
Gtraining/TFOptimizer/gradients/loss/mul_grad/tuple/control_dependency_1Identity2training/TFOptimizer/gradients/loss/mul_grad/Mul_1>^training/TFOptimizer/gradients/loss/mul_grad/tuple/group_deps*
T0*E
_class;
97loc:@training/TFOptimizer/gradients/loss/mul_grad/Mul_1*
_output_shapes
: 
М
Itraining/TFOptimizer/gradients/loss/dense_17_loss/Mean_grad/Reshape/shapeConst*
valueB *
dtype0*
_output_shapes
: 
С
Ctraining/TFOptimizer/gradients/loss/dense_17_loss/Mean_grad/ReshapeReshapeGtraining/TFOptimizer/gradients/loss/mul_grad/tuple/control_dependency_1Itraining/TFOptimizer/gradients/loss/dense_17_loss/Mean_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
: 
Д
Atraining/TFOptimizer/gradients/loss/dense_17_loss/Mean_grad/ConstConst*
valueB *
dtype0*
_output_shapes
: 
Г
@training/TFOptimizer/gradients/loss/dense_17_loss/Mean_grad/TileTileCtraining/TFOptimizer/gradients/loss/dense_17_loss/Mean_grad/ReshapeAtraining/TFOptimizer/gradients/loss/dense_17_loss/Mean_grad/Const*

Tmultiples0*
T0*
_output_shapes
: 
И
Ctraining/TFOptimizer/gradients/loss/dense_17_loss/Mean_grad/Const_1Const*
valueB
 *  А?*
dtype0*
_output_shapes
: 
ц
Ctraining/TFOptimizer/gradients/loss/dense_17_loss/Mean_grad/truedivRealDiv@training/TFOptimizer/gradients/loss/dense_17_loss/Mean_grad/TileCtraining/TFOptimizer/gradients/loss/dense_17_loss/Mean_grad/Const_1*
T0*
_output_shapes
: 
Н
Htraining/TFOptimizer/gradients/loss/dense_17_loss/Select_grad/zeros_likeConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ъ
Dtraining/TFOptimizer/gradients/loss/dense_17_loss/Select_grad/SelectSelectloss/dense_17_loss/GreaterCtraining/TFOptimizer/gradients/loss/dense_17_loss/Mean_grad/truedivHtraining/TFOptimizer/gradients/loss/dense_17_loss/Select_grad/zeros_like*
T0*
_output_shapes
: 
Ь
Ftraining/TFOptimizer/gradients/loss/dense_17_loss/Select_grad/Select_1Selectloss/dense_17_loss/GreaterHtraining/TFOptimizer/gradients/loss/dense_17_loss/Select_grad/zeros_likeCtraining/TFOptimizer/gradients/loss/dense_17_loss/Mean_grad/truediv*
T0*
_output_shapes
: 
ж
Ntraining/TFOptimizer/gradients/loss/dense_17_loss/Select_grad/tuple/group_depsNoOpE^training/TFOptimizer/gradients/loss/dense_17_loss/Select_grad/SelectG^training/TFOptimizer/gradients/loss/dense_17_loss/Select_grad/Select_1
у
Vtraining/TFOptimizer/gradients/loss/dense_17_loss/Select_grad/tuple/control_dependencyIdentityDtraining/TFOptimizer/gradients/loss/dense_17_loss/Select_grad/SelectO^training/TFOptimizer/gradients/loss/dense_17_loss/Select_grad/tuple/group_deps*
T0*W
_classM
KIloc:@training/TFOptimizer/gradients/loss/dense_17_loss/Select_grad/Select*
_output_shapes
: 
щ
Xtraining/TFOptimizer/gradients/loss/dense_17_loss/Select_grad/tuple/control_dependency_1IdentityFtraining/TFOptimizer/gradients/loss/dense_17_loss/Select_grad/Select_1O^training/TFOptimizer/gradients/loss/dense_17_loss/Select_grad/tuple/group_deps*
T0*Y
_classO
MKloc:@training/TFOptimizer/gradients/loss/dense_17_loss/Select_grad/Select_1*
_output_shapes
: 
З
Dtraining/TFOptimizer/gradients/loss/dense_17_loss/truediv_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
Й
Ftraining/TFOptimizer/gradients/loss/dense_17_loss/truediv_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
Є
Ttraining/TFOptimizer/gradients/loss/dense_17_loss/truediv_grad/BroadcastGradientArgsBroadcastGradientArgsDtraining/TFOptimizer/gradients/loss/dense_17_loss/truediv_grad/ShapeFtraining/TFOptimizer/gradients/loss/dense_17_loss/truediv_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
д
Ftraining/TFOptimizer/gradients/loss/dense_17_loss/truediv_grad/RealDivRealDivVtraining/TFOptimizer/gradients/loss/dense_17_loss/Select_grad/tuple/control_dependencyloss/dense_17_loss/Sum_1*
T0*
_output_shapes
: 
•
Btraining/TFOptimizer/gradients/loss/dense_17_loss/truediv_grad/SumSumFtraining/TFOptimizer/gradients/loss/dense_17_loss/truediv_grad/RealDivTtraining/TFOptimizer/gradients/loss/dense_17_loss/truediv_grad/BroadcastGradientArgs*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
К
Ftraining/TFOptimizer/gradients/loss/dense_17_loss/truediv_grad/ReshapeReshapeBtraining/TFOptimizer/gradients/loss/dense_17_loss/truediv_grad/SumDtraining/TFOptimizer/gradients/loss/dense_17_loss/truediv_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
В
Btraining/TFOptimizer/gradients/loss/dense_17_loss/truediv_grad/NegNegloss/dense_17_loss/Sum*
T0*
_output_shapes
: 
“
Htraining/TFOptimizer/gradients/loss/dense_17_loss/truediv_grad/RealDiv_1RealDivBtraining/TFOptimizer/gradients/loss/dense_17_loss/truediv_grad/Negloss/dense_17_loss/Sum_1*
T0*
_output_shapes
: 
Ў
Htraining/TFOptimizer/gradients/loss/dense_17_loss/truediv_grad/RealDiv_2RealDivHtraining/TFOptimizer/gradients/loss/dense_17_loss/truediv_grad/RealDiv_1loss/dense_17_loss/Sum_1*
T0*
_output_shapes
: 
М
Btraining/TFOptimizer/gradients/loss/dense_17_loss/truediv_grad/mulMulVtraining/TFOptimizer/gradients/loss/dense_17_loss/Select_grad/tuple/control_dependencyHtraining/TFOptimizer/gradients/loss/dense_17_loss/truediv_grad/RealDiv_2*
T0*
_output_shapes
: 
•
Dtraining/TFOptimizer/gradients/loss/dense_17_loss/truediv_grad/Sum_1SumBtraining/TFOptimizer/gradients/loss/dense_17_loss/truediv_grad/mulVtraining/TFOptimizer/gradients/loss/dense_17_loss/truediv_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
Р
Htraining/TFOptimizer/gradients/loss/dense_17_loss/truediv_grad/Reshape_1ReshapeDtraining/TFOptimizer/gradients/loss/dense_17_loss/truediv_grad/Sum_1Ftraining/TFOptimizer/gradients/loss/dense_17_loss/truediv_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
л
Otraining/TFOptimizer/gradients/loss/dense_17_loss/truediv_grad/tuple/group_depsNoOpG^training/TFOptimizer/gradients/loss/dense_17_loss/truediv_grad/ReshapeI^training/TFOptimizer/gradients/loss/dense_17_loss/truediv_grad/Reshape_1
щ
Wtraining/TFOptimizer/gradients/loss/dense_17_loss/truediv_grad/tuple/control_dependencyIdentityFtraining/TFOptimizer/gradients/loss/dense_17_loss/truediv_grad/ReshapeP^training/TFOptimizer/gradients/loss/dense_17_loss/truediv_grad/tuple/group_deps*
T0*Y
_classO
MKloc:@training/TFOptimizer/gradients/loss/dense_17_loss/truediv_grad/Reshape*
_output_shapes
: 
€
Ytraining/TFOptimizer/gradients/loss/dense_17_loss/truediv_grad/tuple/control_dependency_1IdentityHtraining/TFOptimizer/gradients/loss/dense_17_loss/truediv_grad/Reshape_1P^training/TFOptimizer/gradients/loss/dense_17_loss/truediv_grad/tuple/group_deps*
T0*[
_classQ
OMloc:@training/TFOptimizer/gradients/loss/dense_17_loss/truediv_grad/Reshape_1*
_output_shapes
: 
Т
Htraining/TFOptimizer/gradients/loss/dense_17_loss/Sum_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
£
Btraining/TFOptimizer/gradients/loss/dense_17_loss/Sum_grad/ReshapeReshapeWtraining/TFOptimizer/gradients/loss/dense_17_loss/truediv_grad/tuple/control_dependencyHtraining/TFOptimizer/gradients/loss/dense_17_loss/Sum_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
Ц
@training/TFOptimizer/gradients/loss/dense_17_loss/Sum_grad/ShapeShapeloss/dense_17_loss/Mul*
T0*
out_type0*
_output_shapes
:
Н
?training/TFOptimizer/gradients/loss/dense_17_loss/Sum_grad/TileTileBtraining/TFOptimizer/gradients/loss/dense_17_loss/Sum_grad/Reshape@training/TFOptimizer/gradients/loss/dense_17_loss/Sum_grad/Shape*
T0*#
_output_shapes
:€€€€€€€€€*

Tmultiples0
Џ
@training/TFOptimizer/gradients/loss/dense_17_loss/Mul_grad/ShapeShapeZloss/dense_17_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*
out_type0*
_output_shapes
:
¶
Btraining/TFOptimizer/gradients/loss/dense_17_loss/Mul_grad/Shape_1Shape$loss/dense_17_loss/broadcast_weights*
T0*
out_type0*
_output_shapes
:
ђ
Ptraining/TFOptimizer/gradients/loss/dense_17_loss/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs@training/TFOptimizer/gradients/loss/dense_17_loss/Mul_grad/ShapeBtraining/TFOptimizer/gradients/loss/dense_17_loss/Mul_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
Џ
>training/TFOptimizer/gradients/loss/dense_17_loss/Mul_grad/MulMul?training/TFOptimizer/gradients/loss/dense_17_loss/Sum_grad/Tile$loss/dense_17_loss/broadcast_weights*
T0*#
_output_shapes
:€€€€€€€€€
Ч
>training/TFOptimizer/gradients/loss/dense_17_loss/Mul_grad/SumSum>training/TFOptimizer/gradients/loss/dense_17_loss/Mul_grad/MulPtraining/TFOptimizer/gradients/loss/dense_17_loss/Mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Л
Btraining/TFOptimizer/gradients/loss/dense_17_loss/Mul_grad/ReshapeReshape>training/TFOptimizer/gradients/loss/dense_17_loss/Mul_grad/Sum@training/TFOptimizer/gradients/loss/dense_17_loss/Mul_grad/Shape*
T0*
Tshape0*#
_output_shapes
:€€€€€€€€€
Т
@training/TFOptimizer/gradients/loss/dense_17_loss/Mul_grad/Mul_1MulZloss/dense_17_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits?training/TFOptimizer/gradients/loss/dense_17_loss/Sum_grad/Tile*
T0*#
_output_shapes
:€€€€€€€€€
Э
@training/TFOptimizer/gradients/loss/dense_17_loss/Mul_grad/Sum_1Sum@training/TFOptimizer/gradients/loss/dense_17_loss/Mul_grad/Mul_1Rtraining/TFOptimizer/gradients/loss/dense_17_loss/Mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
С
Dtraining/TFOptimizer/gradients/loss/dense_17_loss/Mul_grad/Reshape_1Reshape@training/TFOptimizer/gradients/loss/dense_17_loss/Mul_grad/Sum_1Btraining/TFOptimizer/gradients/loss/dense_17_loss/Mul_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:€€€€€€€€€
я
Ktraining/TFOptimizer/gradients/loss/dense_17_loss/Mul_grad/tuple/group_depsNoOpC^training/TFOptimizer/gradients/loss/dense_17_loss/Mul_grad/ReshapeE^training/TFOptimizer/gradients/loss/dense_17_loss/Mul_grad/Reshape_1
ц
Straining/TFOptimizer/gradients/loss/dense_17_loss/Mul_grad/tuple/control_dependencyIdentityBtraining/TFOptimizer/gradients/loss/dense_17_loss/Mul_grad/ReshapeL^training/TFOptimizer/gradients/loss/dense_17_loss/Mul_grad/tuple/group_deps*
T0*U
_classK
IGloc:@training/TFOptimizer/gradients/loss/dense_17_loss/Mul_grad/Reshape*#
_output_shapes
:€€€€€€€€€
ь
Utraining/TFOptimizer/gradients/loss/dense_17_loss/Mul_grad/tuple/control_dependency_1IdentityDtraining/TFOptimizer/gradients/loss/dense_17_loss/Mul_grad/Reshape_1L^training/TFOptimizer/gradients/loss/dense_17_loss/Mul_grad/tuple/group_deps*
T0*W
_classM
KIloc:@training/TFOptimizer/gradients/loss/dense_17_loss/Mul_grad/Reshape_1*#
_output_shapes
:€€€€€€€€€
∆
)training/TFOptimizer/gradients/zeros_like	ZerosLike\loss/dense_17_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*'
_output_shapes
:€€€€€€€€€

й
Оtraining/TFOptimizer/gradients/loss/dense_17_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradient\loss/dense_17_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*'
_output_shapes
:€€€€€€€€€
*і
message®•Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()
ў
Нtraining/TFOptimizer/gradients/loss/dense_17_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
ї
Йtraining/TFOptimizer/gradients/loss/dense_17_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDimsStraining/TFOptimizer/gradients/loss/dense_17_loss/Mul_grad/tuple/control_dependencyНtraining/TFOptimizer/gradients/loss/dense_17_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:€€€€€€€€€
ў
Вtraining/TFOptimizer/gradients/loss/dense_17_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulЙtraining/TFOptimizer/gradients/loss/dense_17_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimsОtraining/TFOptimizer/gradients/loss/dense_17_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*'
_output_shapes
:€€€€€€€€€

Ь
Ftraining/TFOptimizer/gradients/loss/dense_17_loss/Reshape_1_grad/ShapeShapeloss/dense_17_loss/Log*
T0*
out_type0*
_output_shapes
:
а
Htraining/TFOptimizer/gradients/loss/dense_17_loss/Reshape_1_grad/ReshapeReshapeВtraining/TFOptimizer/gradients/loss/dense_17_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulFtraining/TFOptimizer/gradients/loss/dense_17_loss/Reshape_1_grad/Shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€

т
Etraining/TFOptimizer/gradients/loss/dense_17_loss/Log_grad/Reciprocal
Reciprocal loss/dense_17_loss/clip_by_valueI^training/TFOptimizer/gradients/loss/dense_17_loss/Reshape_1_grad/Reshape*
T0*'
_output_shapes
:€€€€€€€€€

И
>training/TFOptimizer/gradients/loss/dense_17_loss/Log_grad/mulMulHtraining/TFOptimizer/gradients/loss/dense_17_loss/Reshape_1_grad/ReshapeEtraining/TFOptimizer/gradients/loss/dense_17_loss/Log_grad/Reciprocal*
T0*'
_output_shapes
:€€€€€€€€€

≤
Jtraining/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value_grad/ShapeShape(loss/dense_17_loss/clip_by_value/Minimum*
T0*
out_type0*
_output_shapes
:
П
Ltraining/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
 
Ltraining/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value_grad/Shape_2Shape>training/TFOptimizer/gradients/loss/dense_17_loss/Log_grad/mul*
T0*
out_type0*
_output_shapes
:
Х
Ptraining/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value_grad/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
ґ
Jtraining/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value_grad/zerosFillLtraining/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value_grad/Shape_2Ptraining/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value_grad/zeros/Const*
T0*

index_type0*'
_output_shapes
:€€€€€€€€€

„
Qtraining/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value_grad/GreaterEqualGreaterEqual(loss/dense_17_loss/clip_by_value/Minimumloss/dense_17_loss/Const*
T0*'
_output_shapes
:€€€€€€€€€

 
Ztraining/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgsJtraining/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value_grad/ShapeLtraining/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
ж
Ktraining/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value_grad/SelectSelectQtraining/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value_grad/GreaterEqual>training/TFOptimizer/gradients/loss/dense_17_loss/Log_grad/mulJtraining/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value_grad/zeros*
T0*'
_output_shapes
:€€€€€€€€€

и
Mtraining/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value_grad/Select_1SelectQtraining/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value_grad/GreaterEqualJtraining/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value_grad/zeros>training/TFOptimizer/gradients/loss/dense_17_loss/Log_grad/mul*
T0*'
_output_shapes
:€€€€€€€€€

Є
Htraining/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value_grad/SumSumKtraining/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value_grad/SelectZtraining/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
≠
Ltraining/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value_grad/ReshapeReshapeHtraining/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value_grad/SumJtraining/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value_grad/Shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€

Њ
Jtraining/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value_grad/Sum_1SumMtraining/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value_grad/Select_1\training/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Ґ
Ntraining/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value_grad/Reshape_1ReshapeJtraining/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value_grad/Sum_1Ltraining/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
э
Utraining/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value_grad/tuple/group_depsNoOpM^training/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value_grad/ReshapeO^training/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value_grad/Reshape_1
Ґ
]training/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value_grad/tuple/control_dependencyIdentityLtraining/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value_grad/ReshapeV^training/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value_grad/tuple/group_deps*
T0*_
_classU
SQloc:@training/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value_grad/Reshape*'
_output_shapes
:€€€€€€€€€

Ч
_training/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value_grad/tuple/control_dependency_1IdentityNtraining/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value_grad/Reshape_1V^training/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value_grad/tuple/group_deps*
T0*a
_classW
USloc:@training/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value_grad/Reshape_1*
_output_shapes
: 
Ґ
Rtraining/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value/Minimum_grad/ShapeShapedense_17/Softmax*
T0*
out_type0*
_output_shapes
:
Ч
Ttraining/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value/Minimum_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
с
Ttraining/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value/Minimum_grad/Shape_2Shape]training/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value_grad/tuple/control_dependency*
T0*
out_type0*
_output_shapes
:
Э
Xtraining/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value/Minimum_grad/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
ќ
Rtraining/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value/Minimum_grad/zerosFillTtraining/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value/Minimum_grad/Shape_2Xtraining/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value/Minimum_grad/zeros/Const*
T0*

index_type0*'
_output_shapes
:€€€€€€€€€

њ
Vtraining/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value/Minimum_grad/LessEqual	LessEqualdense_17/Softmaxloss/dense_17_loss/sub*
T0*'
_output_shapes
:€€€€€€€€€

в
btraining/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsRtraining/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value/Minimum_grad/ShapeTtraining/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value/Minimum_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
Ъ
Straining/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value/Minimum_grad/SelectSelectVtraining/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value/Minimum_grad/LessEqual]training/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value_grad/tuple/control_dependencyRtraining/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value/Minimum_grad/zeros*
T0*'
_output_shapes
:€€€€€€€€€

Ь
Utraining/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value/Minimum_grad/Select_1SelectVtraining/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value/Minimum_grad/LessEqualRtraining/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value/Minimum_grad/zeros]training/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value_grad/tuple/control_dependency*
T0*'
_output_shapes
:€€€€€€€€€

–
Ptraining/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value/Minimum_grad/SumSumStraining/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value/Minimum_grad/Selectbtraining/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
≈
Ttraining/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value/Minimum_grad/ReshapeReshapePtraining/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value/Minimum_grad/SumRtraining/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value/Minimum_grad/Shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€

÷
Rtraining/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value/Minimum_grad/Sum_1SumUtraining/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value/Minimum_grad/Select_1dtraining/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Ї
Vtraining/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value/Minimum_grad/Reshape_1ReshapeRtraining/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value/Minimum_grad/Sum_1Ttraining/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value/Minimum_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
Х
]training/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value/Minimum_grad/tuple/group_depsNoOpU^training/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value/Minimum_grad/ReshapeW^training/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value/Minimum_grad/Reshape_1
¬
etraining/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value/Minimum_grad/tuple/control_dependencyIdentityTtraining/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value/Minimum_grad/Reshape^^training/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value/Minimum_grad/tuple/group_deps*
T0*g
_class]
[Yloc:@training/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value/Minimum_grad/Reshape*'
_output_shapes
:€€€€€€€€€

Ј
gtraining/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value/Minimum_grad/tuple/control_dependency_1IdentityVtraining/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value/Minimum_grad/Reshape_1^^training/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value/Minimum_grad/tuple/group_deps*
T0*i
_class_
][loc:@training/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value/Minimum_grad/Reshape_1*
_output_shapes
: 
к
8training/TFOptimizer/gradients/dense_17/Softmax_grad/mulMuletraining/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value/Minimum_grad/tuple/control_dependencydense_17/Softmax*
T0*'
_output_shapes
:€€€€€€€€€

Х
Jtraining/TFOptimizer/gradients/dense_17/Softmax_grad/Sum/reduction_indicesConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
Ф
8training/TFOptimizer/gradients/dense_17/Softmax_grad/SumSum8training/TFOptimizer/gradients/dense_17/Softmax_grad/mulJtraining/TFOptimizer/gradients/dense_17/Softmax_grad/Sum/reduction_indices*
	keep_dims(*

Tidx0*
T0*'
_output_shapes
:€€€€€€€€€
Т
8training/TFOptimizer/gradients/dense_17/Softmax_grad/subSubetraining/TFOptimizer/gradients/loss/dense_17_loss/clip_by_value/Minimum_grad/tuple/control_dependency8training/TFOptimizer/gradients/dense_17/Softmax_grad/Sum*
T0*'
_output_shapes
:€€€€€€€€€

њ
:training/TFOptimizer/gradients/dense_17/Softmax_grad/mul_1Mul8training/TFOptimizer/gradients/dense_17/Softmax_grad/subdense_17/Softmax*
T0*'
_output_shapes
:€€€€€€€€€

«
@training/TFOptimizer/gradients/dense_17/BiasAdd_grad/BiasAddGradBiasAddGrad:training/TFOptimizer/gradients/dense_17/Softmax_grad/mul_1*
T0*
data_formatNHWC*
_output_shapes
:

Ќ
Etraining/TFOptimizer/gradients/dense_17/BiasAdd_grad/tuple/group_depsNoOpA^training/TFOptimizer/gradients/dense_17/BiasAdd_grad/BiasAddGrad;^training/TFOptimizer/gradients/dense_17/Softmax_grad/mul_1
ё
Mtraining/TFOptimizer/gradients/dense_17/BiasAdd_grad/tuple/control_dependencyIdentity:training/TFOptimizer/gradients/dense_17/Softmax_grad/mul_1F^training/TFOptimizer/gradients/dense_17/BiasAdd_grad/tuple/group_deps*
T0*M
_classC
A?loc:@training/TFOptimizer/gradients/dense_17/Softmax_grad/mul_1*'
_output_shapes
:€€€€€€€€€

я
Otraining/TFOptimizer/gradients/dense_17/BiasAdd_grad/tuple/control_dependency_1Identity@training/TFOptimizer/gradients/dense_17/BiasAdd_grad/BiasAddGradF^training/TFOptimizer/gradients/dense_17/BiasAdd_grad/tuple/group_deps*
T0*S
_classI
GEloc:@training/TFOptimizer/gradients/dense_17/BiasAdd_grad/BiasAddGrad*
_output_shapes
:

М
:training/TFOptimizer/gradients/dense_17/MatMul_grad/MatMulMatMulMtraining/TFOptimizer/gradients/dense_17/BiasAdd_grad/tuple/control_dependencydense_17/MatMul/ReadVariableOp*
T0*(
_output_shapes
:€€€€€€€€€А*
transpose_a( *
transpose_b(
ь
<training/TFOptimizer/gradients/dense_17/MatMul_grad/MatMul_1MatMuldropout_8/dropout/mulMtraining/TFOptimizer/gradients/dense_17/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
_output_shapes
:	А
*
transpose_a(
»
Dtraining/TFOptimizer/gradients/dense_17/MatMul_grad/tuple/group_depsNoOp;^training/TFOptimizer/gradients/dense_17/MatMul_grad/MatMul=^training/TFOptimizer/gradients/dense_17/MatMul_grad/MatMul_1
Ё
Ltraining/TFOptimizer/gradients/dense_17/MatMul_grad/tuple/control_dependencyIdentity:training/TFOptimizer/gradients/dense_17/MatMul_grad/MatMulE^training/TFOptimizer/gradients/dense_17/MatMul_grad/tuple/group_deps*
T0*M
_classC
A?loc:@training/TFOptimizer/gradients/dense_17/MatMul_grad/MatMul*(
_output_shapes
:€€€€€€€€€А
Џ
Ntraining/TFOptimizer/gradients/dense_17/MatMul_grad/tuple/control_dependency_1Identity<training/TFOptimizer/gradients/dense_17/MatMul_grad/MatMul_1E^training/TFOptimizer/gradients/dense_17/MatMul_grad/tuple/group_deps*
T0*O
_classE
CAloc:@training/TFOptimizer/gradients/dense_17/MatMul_grad/MatMul_1*
_output_shapes
:	А

Ф
?training/TFOptimizer/gradients/dropout_8/dropout/mul_grad/ShapeShapedropout_8/dropout/div*
T0*
out_type0*
_output_shapes
:
Ш
Atraining/TFOptimizer/gradients/dropout_8/dropout/mul_grad/Shape_1Shapedropout_8/dropout/Floor*
T0*
out_type0*
_output_shapes
:
©
Otraining/TFOptimizer/gradients/dropout_8/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs?training/TFOptimizer/gradients/dropout_8/dropout/mul_grad/ShapeAtraining/TFOptimizer/gradients/dropout_8/dropout/mul_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
ё
=training/TFOptimizer/gradients/dropout_8/dropout/mul_grad/MulMulLtraining/TFOptimizer/gradients/dense_17/MatMul_grad/tuple/control_dependencydropout_8/dropout/Floor*
T0*(
_output_shapes
:€€€€€€€€€А
Ф
=training/TFOptimizer/gradients/dropout_8/dropout/mul_grad/SumSum=training/TFOptimizer/gradients/dropout_8/dropout/mul_grad/MulOtraining/TFOptimizer/gradients/dropout_8/dropout/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Н
Atraining/TFOptimizer/gradients/dropout_8/dropout/mul_grad/ReshapeReshape=training/TFOptimizer/gradients/dropout_8/dropout/mul_grad/Sum?training/TFOptimizer/gradients/dropout_8/dropout/mul_grad/Shape*
T0*
Tshape0*(
_output_shapes
:€€€€€€€€€А
ё
?training/TFOptimizer/gradients/dropout_8/dropout/mul_grad/Mul_1Muldropout_8/dropout/divLtraining/TFOptimizer/gradients/dense_17/MatMul_grad/tuple/control_dependency*
T0*(
_output_shapes
:€€€€€€€€€А
Ъ
?training/TFOptimizer/gradients/dropout_8/dropout/mul_grad/Sum_1Sum?training/TFOptimizer/gradients/dropout_8/dropout/mul_grad/Mul_1Qtraining/TFOptimizer/gradients/dropout_8/dropout/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
У
Ctraining/TFOptimizer/gradients/dropout_8/dropout/mul_grad/Reshape_1Reshape?training/TFOptimizer/gradients/dropout_8/dropout/mul_grad/Sum_1Atraining/TFOptimizer/gradients/dropout_8/dropout/mul_grad/Shape_1*
T0*
Tshape0*(
_output_shapes
:€€€€€€€€€А
№
Jtraining/TFOptimizer/gradients/dropout_8/dropout/mul_grad/tuple/group_depsNoOpB^training/TFOptimizer/gradients/dropout_8/dropout/mul_grad/ReshapeD^training/TFOptimizer/gradients/dropout_8/dropout/mul_grad/Reshape_1
ч
Rtraining/TFOptimizer/gradients/dropout_8/dropout/mul_grad/tuple/control_dependencyIdentityAtraining/TFOptimizer/gradients/dropout_8/dropout/mul_grad/ReshapeK^training/TFOptimizer/gradients/dropout_8/dropout/mul_grad/tuple/group_deps*
T0*T
_classJ
HFloc:@training/TFOptimizer/gradients/dropout_8/dropout/mul_grad/Reshape*(
_output_shapes
:€€€€€€€€€А
э
Ttraining/TFOptimizer/gradients/dropout_8/dropout/mul_grad/tuple/control_dependency_1IdentityCtraining/TFOptimizer/gradients/dropout_8/dropout/mul_grad/Reshape_1K^training/TFOptimizer/gradients/dropout_8/dropout/mul_grad/tuple/group_deps*
T0*V
_classL
JHloc:@training/TFOptimizer/gradients/dropout_8/dropout/mul_grad/Reshape_1*(
_output_shapes
:€€€€€€€€€А
М
?training/TFOptimizer/gradients/dropout_8/dropout/div_grad/ShapeShapedense_16/Relu*
T0*
out_type0*
_output_shapes
:
Д
Atraining/TFOptimizer/gradients/dropout_8/dropout/div_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
©
Otraining/TFOptimizer/gradients/dropout_8/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs?training/TFOptimizer/gradients/dropout_8/dropout/div_grad/ShapeAtraining/TFOptimizer/gradients/dropout_8/dropout/div_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
р
Atraining/TFOptimizer/gradients/dropout_8/dropout/div_grad/RealDivRealDivRtraining/TFOptimizer/gradients/dropout_8/dropout/mul_grad/tuple/control_dependencydropout_8/dropout/keep_prob*
T0*(
_output_shapes
:€€€€€€€€€А
Ш
=training/TFOptimizer/gradients/dropout_8/dropout/div_grad/SumSumAtraining/TFOptimizer/gradients/dropout_8/dropout/div_grad/RealDivOtraining/TFOptimizer/gradients/dropout_8/dropout/div_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Н
Atraining/TFOptimizer/gradients/dropout_8/dropout/div_grad/ReshapeReshape=training/TFOptimizer/gradients/dropout_8/dropout/div_grad/Sum?training/TFOptimizer/gradients/dropout_8/dropout/div_grad/Shape*
T0*
Tshape0*(
_output_shapes
:€€€€€€€€€А
Ж
=training/TFOptimizer/gradients/dropout_8/dropout/div_grad/NegNegdense_16/Relu*
T0*(
_output_shapes
:€€€€€€€€€А
Ё
Ctraining/TFOptimizer/gradients/dropout_8/dropout/div_grad/RealDiv_1RealDiv=training/TFOptimizer/gradients/dropout_8/dropout/div_grad/Negdropout_8/dropout/keep_prob*
T0*(
_output_shapes
:€€€€€€€€€А
г
Ctraining/TFOptimizer/gradients/dropout_8/dropout/div_grad/RealDiv_2RealDivCtraining/TFOptimizer/gradients/dropout_8/dropout/div_grad/RealDiv_1dropout_8/dropout/keep_prob*
T0*(
_output_shapes
:€€€€€€€€€А
Р
=training/TFOptimizer/gradients/dropout_8/dropout/div_grad/mulMulRtraining/TFOptimizer/gradients/dropout_8/dropout/mul_grad/tuple/control_dependencyCtraining/TFOptimizer/gradients/dropout_8/dropout/div_grad/RealDiv_2*
T0*(
_output_shapes
:€€€€€€€€€А
Ш
?training/TFOptimizer/gradients/dropout_8/dropout/div_grad/Sum_1Sum=training/TFOptimizer/gradients/dropout_8/dropout/div_grad/mulQtraining/TFOptimizer/gradients/dropout_8/dropout/div_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
Б
Ctraining/TFOptimizer/gradients/dropout_8/dropout/div_grad/Reshape_1Reshape?training/TFOptimizer/gradients/dropout_8/dropout/div_grad/Sum_1Atraining/TFOptimizer/gradients/dropout_8/dropout/div_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
№
Jtraining/TFOptimizer/gradients/dropout_8/dropout/div_grad/tuple/group_depsNoOpB^training/TFOptimizer/gradients/dropout_8/dropout/div_grad/ReshapeD^training/TFOptimizer/gradients/dropout_8/dropout/div_grad/Reshape_1
ч
Rtraining/TFOptimizer/gradients/dropout_8/dropout/div_grad/tuple/control_dependencyIdentityAtraining/TFOptimizer/gradients/dropout_8/dropout/div_grad/ReshapeK^training/TFOptimizer/gradients/dropout_8/dropout/div_grad/tuple/group_deps*
T0*T
_classJ
HFloc:@training/TFOptimizer/gradients/dropout_8/dropout/div_grad/Reshape*(
_output_shapes
:€€€€€€€€€А
л
Ttraining/TFOptimizer/gradients/dropout_8/dropout/div_grad/tuple/control_dependency_1IdentityCtraining/TFOptimizer/gradients/dropout_8/dropout/div_grad/Reshape_1K^training/TFOptimizer/gradients/dropout_8/dropout/div_grad/tuple/group_deps*
T0*V
_classL
JHloc:@training/TFOptimizer/gradients/dropout_8/dropout/div_grad/Reshape_1*
_output_shapes
: 
№
:training/TFOptimizer/gradients/dense_16/Relu_grad/ReluGradReluGradRtraining/TFOptimizer/gradients/dropout_8/dropout/div_grad/tuple/control_dependencydense_16/Relu*
T0*(
_output_shapes
:€€€€€€€€€А
»
@training/TFOptimizer/gradients/dense_16/BiasAdd_grad/BiasAddGradBiasAddGrad:training/TFOptimizer/gradients/dense_16/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes	
:А
Ќ
Etraining/TFOptimizer/gradients/dense_16/BiasAdd_grad/tuple/group_depsNoOpA^training/TFOptimizer/gradients/dense_16/BiasAdd_grad/BiasAddGrad;^training/TFOptimizer/gradients/dense_16/Relu_grad/ReluGrad
я
Mtraining/TFOptimizer/gradients/dense_16/BiasAdd_grad/tuple/control_dependencyIdentity:training/TFOptimizer/gradients/dense_16/Relu_grad/ReluGradF^training/TFOptimizer/gradients/dense_16/BiasAdd_grad/tuple/group_deps*
T0*M
_classC
A?loc:@training/TFOptimizer/gradients/dense_16/Relu_grad/ReluGrad*(
_output_shapes
:€€€€€€€€€А
а
Otraining/TFOptimizer/gradients/dense_16/BiasAdd_grad/tuple/control_dependency_1Identity@training/TFOptimizer/gradients/dense_16/BiasAdd_grad/BiasAddGradF^training/TFOptimizer/gradients/dense_16/BiasAdd_grad/tuple/group_deps*
T0*S
_classI
GEloc:@training/TFOptimizer/gradients/dense_16/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:А
М
:training/TFOptimizer/gradients/dense_16/MatMul_grad/MatMulMatMulMtraining/TFOptimizer/gradients/dense_16/BiasAdd_grad/tuple/control_dependencydense_16/MatMul/ReadVariableOp*
transpose_b(*
T0*(
_output_shapes
:€€€€€€€€€Р*
transpose_a( 
ц
<training/TFOptimizer/gradients/dense_16/MatMul_grad/MatMul_1MatMuldense_16_inputMtraining/TFOptimizer/gradients/dense_16/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0* 
_output_shapes
:
РА*
transpose_a(
»
Dtraining/TFOptimizer/gradients/dense_16/MatMul_grad/tuple/group_depsNoOp;^training/TFOptimizer/gradients/dense_16/MatMul_grad/MatMul=^training/TFOptimizer/gradients/dense_16/MatMul_grad/MatMul_1
Ё
Ltraining/TFOptimizer/gradients/dense_16/MatMul_grad/tuple/control_dependencyIdentity:training/TFOptimizer/gradients/dense_16/MatMul_grad/MatMulE^training/TFOptimizer/gradients/dense_16/MatMul_grad/tuple/group_deps*
T0*M
_classC
A?loc:@training/TFOptimizer/gradients/dense_16/MatMul_grad/MatMul*(
_output_shapes
:€€€€€€€€€Р
џ
Ntraining/TFOptimizer/gradients/dense_16/MatMul_grad/tuple/control_dependency_1Identity<training/TFOptimizer/gradients/dense_16/MatMul_grad/MatMul_1E^training/TFOptimizer/gradients/dense_16/MatMul_grad/tuple/group_deps*
T0*O
_classE
CAloc:@training/TFOptimizer/gradients/dense_16/MatMul_grad/MatMul_1* 
_output_shapes
:
РА
s
(training/TFOptimizer/Read/ReadVariableOpReadVariableOpdense_16/bias*
dtype0*
_output_shapes	
:А
y
training/TFOptimizer/IdentityIdentity(training/TFOptimizer/Read/ReadVariableOp*
T0*
_output_shapes	
:А
∞
.training/TFOptimizer/beta1_power/initial_valueConst*;
_class1
/-loc:@training/TFOptimizer/Read/ReadVariableOp*
valueB
 *fff?*
dtype0*
_output_shapes
: 
Ѕ
 training/TFOptimizer/beta1_power
VariableV2*;
_class1
/-loc:@training/TFOptimizer/Read/ReadVariableOp*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 
К
'training/TFOptimizer/beta1_power/AssignAssign training/TFOptimizer/beta1_power.training/TFOptimizer/beta1_power/initial_value*
T0*;
_class1
/-loc:@training/TFOptimizer/Read/ReadVariableOp*
validate_shape(*
_output_shapes
: *
use_locking(
±
%training/TFOptimizer/beta1_power/readIdentity training/TFOptimizer/beta1_power*
T0*;
_class1
/-loc:@training/TFOptimizer/Read/ReadVariableOp*
_output_shapes
: 
u
*training/TFOptimizer/Read_1/ReadVariableOpReadVariableOpdense_16/bias*
dtype0*
_output_shapes	
:А
}
training/TFOptimizer/Identity_1Identity*training/TFOptimizer/Read_1/ReadVariableOp*
T0*
_output_shapes	
:А
≤
.training/TFOptimizer/beta2_power/initial_valueConst*=
_class3
1/loc:@training/TFOptimizer/Read_1/ReadVariableOp*
valueB
 *wЊ?*
dtype0*
_output_shapes
: 
√
 training/TFOptimizer/beta2_power
VariableV2*
shared_name *=
_class3
1/loc:@training/TFOptimizer/Read_1/ReadVariableOp*
	container *
shape: *
dtype0*
_output_shapes
: 
М
'training/TFOptimizer/beta2_power/AssignAssign training/TFOptimizer/beta2_power.training/TFOptimizer/beta2_power/initial_value*
use_locking(*
T0*=
_class3
1/loc:@training/TFOptimizer/Read_1/ReadVariableOp*
validate_shape(*
_output_shapes
: 
≥
%training/TFOptimizer/beta2_power/readIdentity training/TFOptimizer/beta2_power*
T0*=
_class3
1/loc:@training/TFOptimizer/Read_1/ReadVariableOp*
_output_shapes
: 
П
=training/TFOptimizer/dense_16/kernel/Adam/Read/ReadVariableOpReadVariableOpdense_16/kernel*
dtype0* 
_output_shapes
:
РА
®
2training/TFOptimizer/dense_16/kernel/Adam/IdentityIdentity=training/TFOptimizer/dense_16/kernel/Adam/Read/ReadVariableOp*
T0* 
_output_shapes
:
РА
ў
6dense_16/kernel/Adam/Initializer/zeros/shape_as_tensorConst*P
_classF
DBloc:@training/TFOptimizer/dense_16/kernel/Adam/Read/ReadVariableOp*
valueB"     *
dtype0*
_output_shapes
:
√
,dense_16/kernel/Adam/Initializer/zeros/ConstConst*P
_classF
DBloc:@training/TFOptimizer/dense_16/kernel/Adam/Read/ReadVariableOp*
valueB
 *    *
dtype0*
_output_shapes
: 
£
&dense_16/kernel/Adam/Initializer/zerosFill6dense_16/kernel/Adam/Initializer/zeros/shape_as_tensor,dense_16/kernel/Adam/Initializer/zeros/Const*
T0*P
_classF
DBloc:@training/TFOptimizer/dense_16/kernel/Adam/Read/ReadVariableOp*

index_type0* 
_output_shapes
:
РА
й
dense_16/kernel/AdamVarHandleOp*%
shared_namedense_16/kernel/Adam*P
_classF
DBloc:@training/TFOptimizer/dense_16/kernel/Adam/Read/ReadVariableOp*
	container *
shape:
РА*
dtype0*
_output_shapes
: 
Ћ
5dense_16/kernel/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_16/kernel/Adam*P
_classF
DBloc:@training/TFOptimizer/dense_16/kernel/Adam/Read/ReadVariableOp*
_output_shapes
: 
ћ
dense_16/kernel/Adam/AssignAssignVariableOpdense_16/kernel/Adam&dense_16/kernel/Adam/Initializer/zeros*P
_classF
DBloc:@training/TFOptimizer/dense_16/kernel/Adam/Read/ReadVariableOp*
dtype0
—
(dense_16/kernel/Adam/Read/ReadVariableOpReadVariableOpdense_16/kernel/Adam*P
_classF
DBloc:@training/TFOptimizer/dense_16/kernel/Adam/Read/ReadVariableOp*
dtype0* 
_output_shapes
:
РА
С
?training/TFOptimizer/dense_16/kernel/Adam_1/Read/ReadVariableOpReadVariableOpdense_16/kernel*
dtype0* 
_output_shapes
:
РА
ђ
4training/TFOptimizer/dense_16/kernel/Adam_1/IdentityIdentity?training/TFOptimizer/dense_16/kernel/Adam_1/Read/ReadVariableOp*
T0* 
_output_shapes
:
РА
Ё
8dense_16/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*R
_classH
FDloc:@training/TFOptimizer/dense_16/kernel/Adam_1/Read/ReadVariableOp*
valueB"     *
dtype0*
_output_shapes
:
«
.dense_16/kernel/Adam_1/Initializer/zeros/ConstConst*R
_classH
FDloc:@training/TFOptimizer/dense_16/kernel/Adam_1/Read/ReadVariableOp*
valueB
 *    *
dtype0*
_output_shapes
: 
Ђ
(dense_16/kernel/Adam_1/Initializer/zerosFill8dense_16/kernel/Adam_1/Initializer/zeros/shape_as_tensor.dense_16/kernel/Adam_1/Initializer/zeros/Const*
T0*R
_classH
FDloc:@training/TFOptimizer/dense_16/kernel/Adam_1/Read/ReadVariableOp*

index_type0* 
_output_shapes
:
РА
п
dense_16/kernel/Adam_1VarHandleOp*'
shared_namedense_16/kernel/Adam_1*R
_classH
FDloc:@training/TFOptimizer/dense_16/kernel/Adam_1/Read/ReadVariableOp*
	container *
shape:
РА*
dtype0*
_output_shapes
: 
—
7dense_16/kernel/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_16/kernel/Adam_1*R
_classH
FDloc:@training/TFOptimizer/dense_16/kernel/Adam_1/Read/ReadVariableOp*
_output_shapes
: 
‘
dense_16/kernel/Adam_1/AssignAssignVariableOpdense_16/kernel/Adam_1(dense_16/kernel/Adam_1/Initializer/zeros*R
_classH
FDloc:@training/TFOptimizer/dense_16/kernel/Adam_1/Read/ReadVariableOp*
dtype0
„
*dense_16/kernel/Adam_1/Read/ReadVariableOpReadVariableOpdense_16/kernel/Adam_1*R
_classH
FDloc:@training/TFOptimizer/dense_16/kernel/Adam_1/Read/ReadVariableOp*
dtype0* 
_output_shapes
:
РА
Ж
;training/TFOptimizer/dense_16/bias/Adam/Read/ReadVariableOpReadVariableOpdense_16/bias*
dtype0*
_output_shapes	
:А
Я
0training/TFOptimizer/dense_16/bias/Adam/IdentityIdentity;training/TFOptimizer/dense_16/bias/Adam/Read/ReadVariableOp*
T0*
_output_shapes	
:А
√
$dense_16/bias/Adam/Initializer/zerosConst*N
_classD
B@loc:@training/TFOptimizer/dense_16/bias/Adam/Read/ReadVariableOp*
valueBА*    *
dtype0*
_output_shapes	
:А
ё
dense_16/bias/AdamVarHandleOp*#
shared_namedense_16/bias/Adam*N
_classD
B@loc:@training/TFOptimizer/dense_16/bias/Adam/Read/ReadVariableOp*
	container *
shape:А*
dtype0*
_output_shapes
: 
≈
3dense_16/bias/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_16/bias/Adam*N
_classD
B@loc:@training/TFOptimizer/dense_16/bias/Adam/Read/ReadVariableOp*
_output_shapes
: 
ƒ
dense_16/bias/Adam/AssignAssignVariableOpdense_16/bias/Adam$dense_16/bias/Adam/Initializer/zeros*N
_classD
B@loc:@training/TFOptimizer/dense_16/bias/Adam/Read/ReadVariableOp*
dtype0
∆
&dense_16/bias/Adam/Read/ReadVariableOpReadVariableOpdense_16/bias/Adam*N
_classD
B@loc:@training/TFOptimizer/dense_16/bias/Adam/Read/ReadVariableOp*
dtype0*
_output_shapes	
:А
И
=training/TFOptimizer/dense_16/bias/Adam_1/Read/ReadVariableOpReadVariableOpdense_16/bias*
dtype0*
_output_shapes	
:А
£
2training/TFOptimizer/dense_16/bias/Adam_1/IdentityIdentity=training/TFOptimizer/dense_16/bias/Adam_1/Read/ReadVariableOp*
T0*
_output_shapes	
:А
«
&dense_16/bias/Adam_1/Initializer/zerosConst*P
_classF
DBloc:@training/TFOptimizer/dense_16/bias/Adam_1/Read/ReadVariableOp*
valueBА*    *
dtype0*
_output_shapes	
:А
д
dense_16/bias/Adam_1VarHandleOp*%
shared_namedense_16/bias/Adam_1*P
_classF
DBloc:@training/TFOptimizer/dense_16/bias/Adam_1/Read/ReadVariableOp*
	container *
shape:А*
dtype0*
_output_shapes
: 
Ћ
5dense_16/bias/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_16/bias/Adam_1*P
_classF
DBloc:@training/TFOptimizer/dense_16/bias/Adam_1/Read/ReadVariableOp*
_output_shapes
: 
ћ
dense_16/bias/Adam_1/AssignAssignVariableOpdense_16/bias/Adam_1&dense_16/bias/Adam_1/Initializer/zeros*P
_classF
DBloc:@training/TFOptimizer/dense_16/bias/Adam_1/Read/ReadVariableOp*
dtype0
ћ
(dense_16/bias/Adam_1/Read/ReadVariableOpReadVariableOpdense_16/bias/Adam_1*P
_classF
DBloc:@training/TFOptimizer/dense_16/bias/Adam_1/Read/ReadVariableOp*
dtype0*
_output_shapes	
:А
О
=training/TFOptimizer/dense_17/kernel/Adam/Read/ReadVariableOpReadVariableOpdense_17/kernel*
dtype0*
_output_shapes
:	А

І
2training/TFOptimizer/dense_17/kernel/Adam/IdentityIdentity=training/TFOptimizer/dense_17/kernel/Adam/Read/ReadVariableOp*
T0*
_output_shapes
:	А

ў
6dense_17/kernel/Adam/Initializer/zeros/shape_as_tensorConst*P
_classF
DBloc:@training/TFOptimizer/dense_17/kernel/Adam/Read/ReadVariableOp*
valueB"   
   *
dtype0*
_output_shapes
:
√
,dense_17/kernel/Adam/Initializer/zeros/ConstConst*P
_classF
DBloc:@training/TFOptimizer/dense_17/kernel/Adam/Read/ReadVariableOp*
valueB
 *    *
dtype0*
_output_shapes
: 
Ґ
&dense_17/kernel/Adam/Initializer/zerosFill6dense_17/kernel/Adam/Initializer/zeros/shape_as_tensor,dense_17/kernel/Adam/Initializer/zeros/Const*
T0*P
_classF
DBloc:@training/TFOptimizer/dense_17/kernel/Adam/Read/ReadVariableOp*

index_type0*
_output_shapes
:	А

и
dense_17/kernel/AdamVarHandleOp*
dtype0*
_output_shapes
: *%
shared_namedense_17/kernel/Adam*P
_classF
DBloc:@training/TFOptimizer/dense_17/kernel/Adam/Read/ReadVariableOp*
	container *
shape:	А

Ћ
5dense_17/kernel/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_17/kernel/Adam*P
_classF
DBloc:@training/TFOptimizer/dense_17/kernel/Adam/Read/ReadVariableOp*
_output_shapes
: 
ћ
dense_17/kernel/Adam/AssignAssignVariableOpdense_17/kernel/Adam&dense_17/kernel/Adam/Initializer/zeros*P
_classF
DBloc:@training/TFOptimizer/dense_17/kernel/Adam/Read/ReadVariableOp*
dtype0
–
(dense_17/kernel/Adam/Read/ReadVariableOpReadVariableOpdense_17/kernel/Adam*P
_classF
DBloc:@training/TFOptimizer/dense_17/kernel/Adam/Read/ReadVariableOp*
dtype0*
_output_shapes
:	А

Р
?training/TFOptimizer/dense_17/kernel/Adam_1/Read/ReadVariableOpReadVariableOpdense_17/kernel*
dtype0*
_output_shapes
:	А

Ђ
4training/TFOptimizer/dense_17/kernel/Adam_1/IdentityIdentity?training/TFOptimizer/dense_17/kernel/Adam_1/Read/ReadVariableOp*
T0*
_output_shapes
:	А

Ё
8dense_17/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*R
_classH
FDloc:@training/TFOptimizer/dense_17/kernel/Adam_1/Read/ReadVariableOp*
valueB"   
   *
dtype0*
_output_shapes
:
«
.dense_17/kernel/Adam_1/Initializer/zeros/ConstConst*R
_classH
FDloc:@training/TFOptimizer/dense_17/kernel/Adam_1/Read/ReadVariableOp*
valueB
 *    *
dtype0*
_output_shapes
: 
™
(dense_17/kernel/Adam_1/Initializer/zerosFill8dense_17/kernel/Adam_1/Initializer/zeros/shape_as_tensor.dense_17/kernel/Adam_1/Initializer/zeros/Const*
T0*R
_classH
FDloc:@training/TFOptimizer/dense_17/kernel/Adam_1/Read/ReadVariableOp*

index_type0*
_output_shapes
:	А

о
dense_17/kernel/Adam_1VarHandleOp*
dtype0*
_output_shapes
: *'
shared_namedense_17/kernel/Adam_1*R
_classH
FDloc:@training/TFOptimizer/dense_17/kernel/Adam_1/Read/ReadVariableOp*
	container *
shape:	А

—
7dense_17/kernel/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_17/kernel/Adam_1*R
_classH
FDloc:@training/TFOptimizer/dense_17/kernel/Adam_1/Read/ReadVariableOp*
_output_shapes
: 
‘
dense_17/kernel/Adam_1/AssignAssignVariableOpdense_17/kernel/Adam_1(dense_17/kernel/Adam_1/Initializer/zeros*R
_classH
FDloc:@training/TFOptimizer/dense_17/kernel/Adam_1/Read/ReadVariableOp*
dtype0
÷
*dense_17/kernel/Adam_1/Read/ReadVariableOpReadVariableOpdense_17/kernel/Adam_1*R
_classH
FDloc:@training/TFOptimizer/dense_17/kernel/Adam_1/Read/ReadVariableOp*
dtype0*
_output_shapes
:	А

Е
;training/TFOptimizer/dense_17/bias/Adam/Read/ReadVariableOpReadVariableOpdense_17/bias*
dtype0*
_output_shapes
:

Ю
0training/TFOptimizer/dense_17/bias/Adam/IdentityIdentity;training/TFOptimizer/dense_17/bias/Adam/Read/ReadVariableOp*
T0*
_output_shapes
:

Ѕ
$dense_17/bias/Adam/Initializer/zerosConst*N
_classD
B@loc:@training/TFOptimizer/dense_17/bias/Adam/Read/ReadVariableOp*
valueB
*    *
dtype0*
_output_shapes
:

Ё
dense_17/bias/AdamVarHandleOp*
dtype0*
_output_shapes
: *#
shared_namedense_17/bias/Adam*N
_classD
B@loc:@training/TFOptimizer/dense_17/bias/Adam/Read/ReadVariableOp*
	container *
shape:

≈
3dense_17/bias/Adam/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_17/bias/Adam*N
_classD
B@loc:@training/TFOptimizer/dense_17/bias/Adam/Read/ReadVariableOp*
_output_shapes
: 
ƒ
dense_17/bias/Adam/AssignAssignVariableOpdense_17/bias/Adam$dense_17/bias/Adam/Initializer/zeros*N
_classD
B@loc:@training/TFOptimizer/dense_17/bias/Adam/Read/ReadVariableOp*
dtype0
≈
&dense_17/bias/Adam/Read/ReadVariableOpReadVariableOpdense_17/bias/Adam*N
_classD
B@loc:@training/TFOptimizer/dense_17/bias/Adam/Read/ReadVariableOp*
dtype0*
_output_shapes
:

З
=training/TFOptimizer/dense_17/bias/Adam_1/Read/ReadVariableOpReadVariableOpdense_17/bias*
dtype0*
_output_shapes
:

Ґ
2training/TFOptimizer/dense_17/bias/Adam_1/IdentityIdentity=training/TFOptimizer/dense_17/bias/Adam_1/Read/ReadVariableOp*
T0*
_output_shapes
:

≈
&dense_17/bias/Adam_1/Initializer/zerosConst*P
_classF
DBloc:@training/TFOptimizer/dense_17/bias/Adam_1/Read/ReadVariableOp*
valueB
*    *
dtype0*
_output_shapes
:

г
dense_17/bias/Adam_1VarHandleOp*P
_classF
DBloc:@training/TFOptimizer/dense_17/bias/Adam_1/Read/ReadVariableOp*
	container *
shape:
*
dtype0*
_output_shapes
: *%
shared_namedense_17/bias/Adam_1
Ћ
5dense_17/bias/Adam_1/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_17/bias/Adam_1*P
_classF
DBloc:@training/TFOptimizer/dense_17/bias/Adam_1/Read/ReadVariableOp*
_output_shapes
: 
ћ
dense_17/bias/Adam_1/AssignAssignVariableOpdense_17/bias/Adam_1&dense_17/bias/Adam_1/Initializer/zeros*P
_classF
DBloc:@training/TFOptimizer/dense_17/bias/Adam_1/Read/ReadVariableOp*
dtype0
Ћ
(dense_17/bias/Adam_1/Read/ReadVariableOpReadVariableOpdense_17/bias/Adam_1*P
_classF
DBloc:@training/TFOptimizer/dense_17/bias/Adam_1/Read/ReadVariableOp*
dtype0*
_output_shapes
:

l
'training/TFOptimizer/Adam/learning_rateConst*
valueB
 *oГ:*
dtype0*
_output_shapes
: 
d
training/TFOptimizer/Adam/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
d
training/TFOptimizer/Adam/beta2Const*
valueB
 *wЊ?*
dtype0*
_output_shapes
: 
f
!training/TFOptimizer/Adam/epsilonConst*
valueB
 *wћ+2*
dtype0*
_output_shapes
: 
Ц
Dtraining/TFOptimizer/Adam/update_dense_16/kernel/Read/ReadVariableOpReadVariableOpdense_16/kernel*
dtype0* 
_output_shapes
:
РА
ґ
9training/TFOptimizer/Adam/update_dense_16/kernel/IdentityIdentityDtraining/TFOptimizer/Adam/update_dense_16/kernel/Read/ReadVariableOp*
T0* 
_output_shapes
:
РА
Ћ
Btraining/TFOptimizer/Adam/update_dense_16/kernel/ResourceApplyAdamResourceApplyAdamdense_16/kerneldense_16/kernel/Adamdense_16/kernel/Adam_1%training/TFOptimizer/beta1_power/read%training/TFOptimizer/beta2_power/read'training/TFOptimizer/Adam/learning_ratetraining/TFOptimizer/Adam/beta1training/TFOptimizer/Adam/beta2!training/TFOptimizer/Adam/epsilonNtraining/TFOptimizer/gradients/dense_16/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*W
_classM
KIloc:@training/TFOptimizer/Adam/update_dense_16/kernel/Read/ReadVariableOp*
use_nesterov( 
Н
Btraining/TFOptimizer/Adam/update_dense_16/bias/Read/ReadVariableOpReadVariableOpdense_16/bias*
dtype0*
_output_shapes	
:А
≠
7training/TFOptimizer/Adam/update_dense_16/bias/IdentityIdentityBtraining/TFOptimizer/Adam/update_dense_16/bias/Read/ReadVariableOp*
T0*
_output_shapes	
:А
¬
@training/TFOptimizer/Adam/update_dense_16/bias/ResourceApplyAdamResourceApplyAdamdense_16/biasdense_16/bias/Adamdense_16/bias/Adam_1%training/TFOptimizer/beta1_power/read%training/TFOptimizer/beta2_power/read'training/TFOptimizer/Adam/learning_ratetraining/TFOptimizer/Adam/beta1training/TFOptimizer/Adam/beta2!training/TFOptimizer/Adam/epsilonOtraining/TFOptimizer/gradients/dense_16/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*U
_classK
IGloc:@training/TFOptimizer/Adam/update_dense_16/bias/Read/ReadVariableOp*
use_nesterov( 
Х
Dtraining/TFOptimizer/Adam/update_dense_17/kernel/Read/ReadVariableOpReadVariableOpdense_17/kernel*
dtype0*
_output_shapes
:	А

µ
9training/TFOptimizer/Adam/update_dense_17/kernel/IdentityIdentityDtraining/TFOptimizer/Adam/update_dense_17/kernel/Read/ReadVariableOp*
T0*
_output_shapes
:	А

Ћ
Btraining/TFOptimizer/Adam/update_dense_17/kernel/ResourceApplyAdamResourceApplyAdamdense_17/kerneldense_17/kernel/Adamdense_17/kernel/Adam_1%training/TFOptimizer/beta1_power/read%training/TFOptimizer/beta2_power/read'training/TFOptimizer/Adam/learning_ratetraining/TFOptimizer/Adam/beta1training/TFOptimizer/Adam/beta2!training/TFOptimizer/Adam/epsilonNtraining/TFOptimizer/gradients/dense_17/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*W
_classM
KIloc:@training/TFOptimizer/Adam/update_dense_17/kernel/Read/ReadVariableOp*
use_nesterov( 
М
Btraining/TFOptimizer/Adam/update_dense_17/bias/Read/ReadVariableOpReadVariableOpdense_17/bias*
dtype0*
_output_shapes
:

ђ
7training/TFOptimizer/Adam/update_dense_17/bias/IdentityIdentityBtraining/TFOptimizer/Adam/update_dense_17/bias/Read/ReadVariableOp*
T0*
_output_shapes
:

¬
@training/TFOptimizer/Adam/update_dense_17/bias/ResourceApplyAdamResourceApplyAdamdense_17/biasdense_17/bias/Adamdense_17/bias/Adam_1%training/TFOptimizer/beta1_power/read%training/TFOptimizer/beta2_power/read'training/TFOptimizer/Adam/learning_ratetraining/TFOptimizer/Adam/beta1training/TFOptimizer/Adam/beta2!training/TFOptimizer/Adam/epsilonOtraining/TFOptimizer/gradients/dense_17/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*U
_classK
IGloc:@training/TFOptimizer/Adam/update_dense_17/bias/Read/ReadVariableOp*
use_nesterov( 
Џ
training/TFOptimizer/Adam/mulMul%training/TFOptimizer/beta1_power/readtraining/TFOptimizer/Adam/beta1A^training/TFOptimizer/Adam/update_dense_16/bias/ResourceApplyAdamC^training/TFOptimizer/Adam/update_dense_16/kernel/ResourceApplyAdamA^training/TFOptimizer/Adam/update_dense_17/bias/ResourceApplyAdamC^training/TFOptimizer/Adam/update_dense_17/kernel/ResourceApplyAdam*
T0*;
_class1
/-loc:@training/TFOptimizer/Read/ReadVariableOp*
_output_shapes
: 
т
 training/TFOptimizer/Adam/AssignAssign training/TFOptimizer/beta1_powertraining/TFOptimizer/Adam/mul*
T0*;
_class1
/-loc:@training/TFOptimizer/Read/ReadVariableOp*
validate_shape(*
_output_shapes
: *
use_locking( 
№
training/TFOptimizer/Adam/mul_1Mul%training/TFOptimizer/beta2_power/readtraining/TFOptimizer/Adam/beta2A^training/TFOptimizer/Adam/update_dense_16/bias/ResourceApplyAdamC^training/TFOptimizer/Adam/update_dense_16/kernel/ResourceApplyAdamA^training/TFOptimizer/Adam/update_dense_17/bias/ResourceApplyAdamC^training/TFOptimizer/Adam/update_dense_17/kernel/ResourceApplyAdam*
T0*;
_class1
/-loc:@training/TFOptimizer/Read/ReadVariableOp*
_output_shapes
: 
І
"training/TFOptimizer/Adam/Assign_1Assign training/TFOptimizer/beta2_powertraining/TFOptimizer/Adam/mul_1*
T0*l
_classb
`-loc:@training/TFOptimizer/Read/ReadVariableOp/loc:@training/TFOptimizer/Read_1/ReadVariableOp*
validate_shape(*
_output_shapes
: *
use_locking( 
А
 training/TFOptimizer/Adam/updateNoOp!^training/TFOptimizer/Adam/Assign#^training/TFOptimizer/Adam/Assign_1A^training/TFOptimizer/Adam/update_dense_16/bias/ResourceApplyAdamC^training/TFOptimizer/Adam/update_dense_16/kernel/ResourceApplyAdamA^training/TFOptimizer/Adam/update_dense_17/bias/ResourceApplyAdamC^training/TFOptimizer/Adam/update_dense_17/kernel/ResourceApplyAdam
Я
-training/TFOptimizer/Adam/Read/ReadVariableOpReadVariableOpTFOptimizer/iterations!^training/TFOptimizer/Adam/update*
dtype0	*
_output_shapes
: 
~
"training/TFOptimizer/Adam/IdentityIdentity-training/TFOptimizer/Adam/Read/ReadVariableOp*
T0	*
_output_shapes
: 
∆
training/TFOptimizer/Adam/ConstConst!^training/TFOptimizer/Adam/update*@
_class6
42loc:@training/TFOptimizer/Adam/Read/ReadVariableOp*
value	B	 R*
dtype0	*
_output_shapes
: 
Є
training/TFOptimizer/AdamAssignAddVariableOpTFOptimizer/iterationstraining/TFOptimizer/Adam/Const*@
_class6
42loc:@training/TFOptimizer/Adam/Read/ReadVariableOp*
dtype0	
U
training/group_depsNoOp	^loss/mul^metrics/acc/Mean^training/TFOptimizer/Adam
W
Const_1Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
W
Const_2Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
W
Const_3Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
W
Const_4Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
W
Const_5Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
\
Const_6Const"/device:CPU:0*
valueB Bmodel*
dtype0*
_output_shapes
: 
W
Const_7Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
W
Const_8Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
W
Const_9Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_10Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_11Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
 
RestoreV2/tensor_namesConst"/device:CPU:0*q
valuehBfB\layer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
r
RestoreV2/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Н
	RestoreV2	RestoreV2Const_6RestoreV2/tensor_namesRestoreV2/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
B
IdentityIdentity	RestoreV2*
T0*
_output_shapes
:
Q
AssignVariableOpAssignVariableOpdense_16/kernel/AdamIdentity*
dtype0
ћ
RestoreV2_1/tensor_namesConst"/device:CPU:0*q
valuehBfB\layer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
У
RestoreV2_1	RestoreV2Const_6RestoreV2_1/tensor_namesRestoreV2_1/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
F

Identity_1IdentityRestoreV2_1*
T0*
_output_shapes
:
W
AssignVariableOp_1AssignVariableOpdense_16/kernel/Adam_1
Identity_1*
dtype0
 
RestoreV2_2/tensor_namesConst"/device:CPU:0*o
valuefBdBZlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_2/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
У
RestoreV2_2	RestoreV2Const_6RestoreV2_2/tensor_namesRestoreV2_2/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
F

Identity_2IdentityRestoreV2_2*
T0*
_output_shapes
:
S
AssignVariableOp_2AssignVariableOpdense_16/bias/Adam
Identity_2*
dtype0
 
RestoreV2_3/tensor_namesConst"/device:CPU:0*o
valuefBdBZlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_3/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
У
RestoreV2_3	RestoreV2Const_6RestoreV2_3/tensor_namesRestoreV2_3/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
F

Identity_3IdentityRestoreV2_3*
T0*
_output_shapes
:
U
AssignVariableOp_3AssignVariableOpdense_16/bias/Adam_1
Identity_3*
dtype0
ћ
RestoreV2_4/tensor_namesConst"/device:CPU:0*q
valuehBfB\layer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_4/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
У
RestoreV2_4	RestoreV2Const_6RestoreV2_4/tensor_namesRestoreV2_4/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
F

Identity_4IdentityRestoreV2_4*
T0*
_output_shapes
:
U
AssignVariableOp_4AssignVariableOpdense_17/kernel/Adam
Identity_4*
dtype0
ћ
RestoreV2_5/tensor_namesConst"/device:CPU:0*q
valuehBfB\layer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_5/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
У
RestoreV2_5	RestoreV2Const_6RestoreV2_5/tensor_namesRestoreV2_5/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_5IdentityRestoreV2_5*
T0*
_output_shapes
:
W
AssignVariableOp_5AssignVariableOpdense_17/kernel/Adam_1
Identity_5*
dtype0
 
RestoreV2_6/tensor_namesConst"/device:CPU:0*o
valuefBdBZlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_6/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
У
RestoreV2_6	RestoreV2Const_6RestoreV2_6/tensor_namesRestoreV2_6/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
F

Identity_6IdentityRestoreV2_6*
T0*
_output_shapes
:
S
AssignVariableOp_6AssignVariableOpdense_17/bias/Adam
Identity_6*
dtype0
 
RestoreV2_7/tensor_namesConst"/device:CPU:0*o
valuefBdBZlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_7/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
У
RestoreV2_7	RestoreV2Const_6RestoreV2_7/tensor_namesRestoreV2_7/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
F

Identity_7IdentityRestoreV2_7*
T0*
_output_shapes
:
U
AssignVariableOp_7AssignVariableOpdense_17/bias/Adam_1
Identity_7*
dtype0
¶
RestoreV2_8/tensor_namesConst"/device:CPU:0*K
valueBB@B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_8/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
У
RestoreV2_8	RestoreV2Const_6RestoreV2_8/tensor_namesRestoreV2_8/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
F

Identity_8IdentityRestoreV2_8*
T0*
_output_shapes
:
P
AssignVariableOp_8AssignVariableOpdense_16/kernel
Identity_8*
dtype0
§
RestoreV2_9/tensor_namesConst"/device:CPU:0*I
value@B>B4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_9/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
У
RestoreV2_9	RestoreV2Const_6RestoreV2_9/tensor_namesRestoreV2_9/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_9IdentityRestoreV2_9*
T0*
_output_shapes
:
N
AssignVariableOp_9AssignVariableOpdense_16/bias
Identity_9*
dtype0
І
RestoreV2_10/tensor_namesConst"/device:CPU:0*K
valueBB@B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_10/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ц
RestoreV2_10	RestoreV2Const_6RestoreV2_10/tensor_namesRestoreV2_10/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_10IdentityRestoreV2_10*
T0*
_output_shapes
:
R
AssignVariableOp_10AssignVariableOpdense_17/kernelIdentity_10*
dtype0
•
RestoreV2_11/tensor_namesConst"/device:CPU:0*I
value@B>B4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_11/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ц
RestoreV2_11	RestoreV2Const_6RestoreV2_11/tensor_namesRestoreV2_11/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_11IdentityRestoreV2_11*
T0*
_output_shapes
:
P
AssignVariableOp_11AssignVariableOpdense_17/biasIdentity_11*
dtype0
°
RestoreV2_12/tensor_namesConst"/device:CPU:0*E
value<B:B0optimizer/global_step/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_12/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ц
RestoreV2_12	RestoreV2Const_6RestoreV2_12/tensor_namesRestoreV2_12/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2	
H
Identity_12IdentityRestoreV2_12*
T0	*
_output_shapes
:
Y
AssignVariableOp_12AssignVariableOpTFOptimizer/iterationsIdentity_12*
dtype0	
Ђ
RestoreV2_13/tensor_namesConst"/device:CPU:0*O
valueFBDB:optimizer/optimizer/beta1_power/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_13/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ц
RestoreV2_13	RestoreV2Const_6RestoreV2_13/tensor_namesRestoreV2_13/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
«
AssignAssign training/TFOptimizer/beta1_powerRestoreV2_13*
T0*;
_class1
/-loc:@training/TFOptimizer/Read/ReadVariableOp*
validate_shape(*
_output_shapes
: *
use_locking(
Ђ
RestoreV2_14/tensor_namesConst"/device:CPU:0*O
valueFBDB:optimizer/optimizer/beta2_power/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_14/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Ц
RestoreV2_14	RestoreV2Const_6RestoreV2_14/tensor_namesRestoreV2_14/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
Ћ
Assign_1Assign training/TFOptimizer/beta2_powerRestoreV2_14*
T0*=
_class3
1/loc:@training/TFOptimizer/Read_1/ReadVariableOp*
validate_shape(*
_output_shapes
: *
use_locking(
V
VarIsInitializedOpVarIsInitializedOpdense_16/kernel/Adam*
_output_shapes
: 
Q
VarIsInitializedOp_1VarIsInitializedOpdense_17/bias*
_output_shapes
: 
Q
VarIsInitializedOp_2VarIsInitializedOpdense_16/bias*
_output_shapes
: 
Z
VarIsInitializedOp_3VarIsInitializedOpdense_16/kernel/Adam_1*
_output_shapes
: 
S
VarIsInitializedOp_4VarIsInitializedOpdense_17/kernel*
_output_shapes
: 
Z
VarIsInitializedOp_5VarIsInitializedOpdense_17/kernel/Adam_1*
_output_shapes
: 
і
IsVariableInitializedIsVariableInitialized training/TFOptimizer/beta2_power*=
_class3
1/loc:@training/TFOptimizer/Read_1/ReadVariableOp*
dtype0*
_output_shapes
: 
V
VarIsInitializedOp_6VarIsInitializedOpdense_16/bias/Adam*
_output_shapes
: 
X
VarIsInitializedOp_7VarIsInitializedOpdense_17/bias/Adam_1*
_output_shapes
: 
X
VarIsInitializedOp_8VarIsInitializedOpdense_17/kernel/Adam*
_output_shapes
: 
і
IsVariableInitialized_1IsVariableInitialized training/TFOptimizer/beta1_power*;
_class1
/-loc:@training/TFOptimizer/Read/ReadVariableOp*
dtype0*
_output_shapes
: 
X
VarIsInitializedOp_9VarIsInitializedOpdense_16/bias/Adam_1*
_output_shapes
: 
W
VarIsInitializedOp_10VarIsInitializedOpdense_17/bias/Adam*
_output_shapes
: 
[
VarIsInitializedOp_11VarIsInitializedOpTFOptimizer/iterations*
_output_shapes
: 
T
VarIsInitializedOp_12VarIsInitializedOpdense_16/kernel*
_output_shapes
: 
–
initNoOp^TFOptimizer/iterations/Assign^dense_16/bias/Adam/Assign^dense_16/bias/Adam_1/Assign^dense_16/bias/Assign^dense_16/kernel/Adam/Assign^dense_16/kernel/Adam_1/Assign^dense_16/kernel/Assign^dense_17/bias/Adam/Assign^dense_17/bias/Adam_1/Assign^dense_17/bias/Assign^dense_17/kernel/Adam/Assign^dense_17/kernel/Adam_1/Assign^dense_17/kernel/Assign(^training/TFOptimizer/beta1_power/Assign(^training/TFOptimizer/beta2_power/Assign
X
Const_12Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
…
save/SaveV2/tensor_namesConst*ь

valueт
Bп
B/.ATTRIBUTES/OBJECT_CONFIG_JSONB_CHECKPOINTABLE_OBJECT_GRAPHB&layer-0/.ATTRIBUTES/OBJECT_CONFIG_JSONB&layer-2/.ATTRIBUTES/OBJECT_CONFIG_JSONB3layer_with_weights-0/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-1/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/global_step/.ATTRIBUTES/VARIABLE_VALUEB:optimizer/optimizer/beta1_power/.ATTRIBUTES/VARIABLE_VALUEB:optimizer/optimizer/beta2_power/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
Н
save/SaveV2/shape_and_slicesConst*=
value4B2B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
З
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesConst_7Const_12Const_8Const_10Const_9!dense_16/bias/Read/ReadVariableOp&dense_16/bias/Adam/Read/ReadVariableOp(dense_16/bias/Adam_1/Read/ReadVariableOp#dense_16/kernel/Read/ReadVariableOp(dense_16/kernel/Adam/Read/ReadVariableOp*dense_16/kernel/Adam_1/Read/ReadVariableOpConst_11!dense_17/bias/Read/ReadVariableOp&dense_17/bias/Adam/Read/ReadVariableOp(dense_17/bias/Adam_1/Read/ReadVariableOp#dense_17/kernel/Read/ReadVariableOp(dense_17/kernel/Adam/Read/ReadVariableOp*dense_17/kernel/Adam_1/Read/ReadVariableOp*TFOptimizer/iterations/Read/ReadVariableOp training/TFOptimizer/beta1_power training/TFOptimizer/beta2_power*#
dtypes
2	
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const*
_output_shapes
: 
џ
save/RestoreV2/tensor_namesConst"/device:CPU:0*ь

valueт
Bп
B/.ATTRIBUTES/OBJECT_CONFIG_JSONB_CHECKPOINTABLE_OBJECT_GRAPHB&layer-0/.ATTRIBUTES/OBJECT_CONFIG_JSONB&layer-2/.ATTRIBUTES/OBJECT_CONFIG_JSONB3layer_with_weights-0/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-1/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/global_step/.ATTRIBUTES/VARIABLE_VALUEB:optimizer/optimizer/beta1_power/.ATTRIBUTES/VARIABLE_VALUEB:optimizer/optimizer/beta2_power/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
Я
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*=
value4B2B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
Г
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*h
_output_shapesV
T:::::::::::::::::::::*#
dtypes
2	

	save/NoOpNoOp

save/NoOp_1NoOp

save/NoOp_2NoOp

save/NoOp_3NoOp

save/NoOp_4NoOp
N
save/IdentityIdentitysave/RestoreV2:5*
T0*
_output_shapes
:
T
save/AssignVariableOpAssignVariableOpdense_16/biassave/Identity*
dtype0
P
save/Identity_1Identitysave/RestoreV2:6*
T0*
_output_shapes
:
]
save/AssignVariableOp_1AssignVariableOpdense_16/bias/Adamsave/Identity_1*
dtype0
P
save/Identity_2Identitysave/RestoreV2:7*
T0*
_output_shapes
:
_
save/AssignVariableOp_2AssignVariableOpdense_16/bias/Adam_1save/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:8*
T0*
_output_shapes
:
Z
save/AssignVariableOp_3AssignVariableOpdense_16/kernelsave/Identity_3*
dtype0
P
save/Identity_4Identitysave/RestoreV2:9*
T0*
_output_shapes
:
_
save/AssignVariableOp_4AssignVariableOpdense_16/kernel/Adamsave/Identity_4*
dtype0
Q
save/Identity_5Identitysave/RestoreV2:10*
T0*
_output_shapes
:
a
save/AssignVariableOp_5AssignVariableOpdense_16/kernel/Adam_1save/Identity_5*
dtype0

save/NoOp_5NoOp
Q
save/Identity_6Identitysave/RestoreV2:12*
T0*
_output_shapes
:
X
save/AssignVariableOp_6AssignVariableOpdense_17/biassave/Identity_6*
dtype0
Q
save/Identity_7Identitysave/RestoreV2:13*
T0*
_output_shapes
:
]
save/AssignVariableOp_7AssignVariableOpdense_17/bias/Adamsave/Identity_7*
dtype0
Q
save/Identity_8Identitysave/RestoreV2:14*
T0*
_output_shapes
:
_
save/AssignVariableOp_8AssignVariableOpdense_17/bias/Adam_1save/Identity_8*
dtype0
Q
save/Identity_9Identitysave/RestoreV2:15*
T0*
_output_shapes
:
Z
save/AssignVariableOp_9AssignVariableOpdense_17/kernelsave/Identity_9*
dtype0
R
save/Identity_10Identitysave/RestoreV2:16*
T0*
_output_shapes
:
a
save/AssignVariableOp_10AssignVariableOpdense_17/kernel/Adamsave/Identity_10*
dtype0
R
save/Identity_11Identitysave/RestoreV2:17*
T0*
_output_shapes
:
c
save/AssignVariableOp_11AssignVariableOpdense_17/kernel/Adam_1save/Identity_11*
dtype0
R
save/Identity_12Identitysave/RestoreV2:18*
T0	*
_output_shapes
:
c
save/AssignVariableOp_12AssignVariableOpTFOptimizer/iterationssave/Identity_12*
dtype0	
—
save/AssignAssign training/TFOptimizer/beta1_powersave/RestoreV2:19*
use_locking(*
T0*;
_class1
/-loc:@training/TFOptimizer/Read/ReadVariableOp*
validate_shape(*
_output_shapes
: 
’
save/Assign_1Assign training/TFOptimizer/beta2_powersave/RestoreV2:20*
use_locking(*
T0*=
_class3
1/loc:@training/TFOptimizer/Read_1/ReadVariableOp*
validate_shape(*
_output_shapes
: 
џ
save/restore_allNoOp^save/Assign^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_11^save/AssignVariableOp_12^save/AssignVariableOp_2^save/AssignVariableOp_3^save/AssignVariableOp_4^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7^save/AssignVariableOp_8^save/AssignVariableOp_9^save/Assign_1
^save/NoOp^save/NoOp_1^save/NoOp_2^save/NoOp_3^save/NoOp_4^save/NoOp_5
А
mean/total/Initializer/zerosConst*
_class
loc:@mean/total*
valueB
 *    *
dtype0*
_output_shapes
: 
Н

mean/total
VariableV2*
dtype0*
_output_shapes
: *
shared_name *
_class
loc:@mean/total*
	container *
shape: 
Ѓ
mean/total/AssignAssign
mean/totalmean/total/Initializer/zeros*
T0*
_class
loc:@mean/total*
validate_shape(*
_output_shapes
: *
use_locking(
g
mean/total/readIdentity
mean/total*
T0*
_class
loc:@mean/total*
_output_shapes
: 
А
mean/count/Initializer/zerosConst*
_class
loc:@mean/count*
valueB
 *    *
dtype0*
_output_shapes
: 
Н

mean/count
VariableV2*
_class
loc:@mean/count*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 
Ѓ
mean/count/AssignAssign
mean/countmean/count/Initializer/zeros*
use_locking(*
T0*
_class
loc:@mean/count*
validate_shape(*
_output_shapes
: 
g
mean/count/readIdentity
mean/count*
T0*
_class
loc:@mean/count*
_output_shapes
: 
K
	mean/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
_
mean/ToFloatCast	mean/Size*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0
M

mean/ConstConst*
valueB *
dtype0*
_output_shapes
: 
k
mean/SumSummetrics/acc/Mean
mean/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
Д
mean/AssignAdd	AssignAdd
mean/totalmean/Sum*
use_locking( *
T0*
_class
loc:@mean/total*
_output_shapes
: 
Э
mean/AssignAdd_1	AssignAdd
mean/countmean/ToFloat^metrics/acc/Mean*
use_locking( *
T0*
_class
loc:@mean/count*
_output_shapes
: 
Z
mean/truedivRealDivmean/total/readmean/count/read*
T0*
_output_shapes
: 
T
mean/zeros_likeConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
mean/GreaterGreatermean/count/readmean/zeros_like*
T0*
_output_shapes
: 
b

mean/valueSelectmean/Greatermean/truedivmean/zeros_like*
T0*
_output_shapes
: 
\
mean/truediv_1RealDivmean/AssignAddmean/AssignAdd_1*
T0*
_output_shapes
: 
V
mean/zeros_like_1Const*
valueB
 *    *
dtype0*
_output_shapes
: 
_
mean/Greater_1Greatermean/AssignAdd_1mean/zeros_like_1*
T0*
_output_shapes
: 
l
mean/update_opSelectmean/Greater_1mean/truediv_1mean/zeros_like_1*
T0*
_output_shapes
: 
R
save_1/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
≠
save_1/SaveV2/tensor_namesConst*ё

value‘
B—
B/.ATTRIBUTES/OBJECT_CONFIG_JSONB&layer-0/.ATTRIBUTES/OBJECT_CONFIG_JSONB&layer-2/.ATTRIBUTES/OBJECT_CONFIG_JSONB3layer_with_weights-0/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-1/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/global_step/.ATTRIBUTES/VARIABLE_VALUEB:optimizer/optimizer/beta1_power/.ATTRIBUTES/VARIABLE_VALUEB:optimizer/optimizer/beta2_power/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
Н
save_1/SaveV2/shape_and_slicesConst*;
value2B0B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
€	
save_1/SaveV2/tensors_0Const*Ј	
value≠	B™	 B£	{"class_name": "Sequential", "config": {"layers": [{"class_name": "Dense", "config": {"activation": "relu", "activity_regularizer": null, "batch_input_shape": [null, 784], "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "dtype": "float32", "kernel_constraint": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "kernel_regularizer": null, "name": "dense_16", "trainable": true, "units": 512, "use_bias": true}}, {"class_name": "Dropout", "config": {"dtype": "float32", "name": "dropout_8", "noise_shape": null, "rate": 0.2, "seed": null, "trainable": true}}, {"class_name": "Dense", "config": {"activation": "softmax", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "dtype": "float32", "kernel_constraint": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "kernel_regularizer": null, "name": "dense_17", "trainable": true, "units": 10, "use_bias": true}}], "name": "sequential_8"}}*
dtype0*
_output_shapes
: 
е
save_1/SaveV2/tensors_1Const*Э
valueУBР BЙ{"class_name": "InputLayer", "config": {"batch_input_shape": [null, 784], "dtype": "float32", "name": "dense_16_input", "sparse": false}}*
dtype0*
_output_shapes
: 
н
save_1/SaveV2/tensors_2Const*•
valueЫBШ BС{"class_name": "Dropout", "config": {"dtype": "float32", "name": "dropout_8", "noise_shape": null, "rate": 0.2, "seed": null, "trainable": true}}*
dtype0*
_output_shapes
: 
ћ
save_1/SaveV2/tensors_3Const*Д
valueъBч Bр{"class_name": "Dense", "config": {"activation": "relu", "activity_regularizer": null, "batch_input_shape": [null, 784], "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "dtype": "float32", "kernel_constraint": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "kernel_regularizer": null, "name": "dense_16", "trainable": true, "units": 512, "use_bias": true}}*
dtype0*
_output_shapes
: 
≠
save_1/SaveV2/tensors_10Const*д
valueЏB„ B–{"class_name": "Dense", "config": {"activation": "softmax", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "dtype": "float32", "kernel_constraint": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "kernel_regularizer": null, "name": "dense_17", "trainable": true, "units": 10, "use_bias": true}}*
dtype0*
_output_shapes
: 
”
save_1/SaveV2SaveV2save_1/Constsave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicessave_1/SaveV2/tensors_0save_1/SaveV2/tensors_1save_1/SaveV2/tensors_2save_1/SaveV2/tensors_3!dense_16/bias/Read/ReadVariableOp&dense_16/bias/Adam/Read/ReadVariableOp(dense_16/bias/Adam_1/Read/ReadVariableOp#dense_16/kernel/Read/ReadVariableOp(dense_16/kernel/Adam/Read/ReadVariableOp*dense_16/kernel/Adam_1/Read/ReadVariableOpsave_1/SaveV2/tensors_10!dense_17/bias/Read/ReadVariableOp&dense_17/bias/Adam/Read/ReadVariableOp(dense_17/bias/Adam_1/Read/ReadVariableOp#dense_17/kernel/Read/ReadVariableOp(dense_17/kernel/Adam/Read/ReadVariableOp*dense_17/kernel/Adam_1/Read/ReadVariableOp*TFOptimizer/iterations/Read/ReadVariableOp training/TFOptimizer/beta1_power training/TFOptimizer/beta2_power*"
dtypes
2	
Е
save_1/control_dependencyIdentitysave_1/Const^save_1/SaveV2*
T0*
_class
loc:@save_1/Const*
_output_shapes
: 
њ
save_1/RestoreV2/tensor_namesConst"/device:CPU:0*ё

value‘
B—
B/.ATTRIBUTES/OBJECT_CONFIG_JSONB&layer-0/.ATTRIBUTES/OBJECT_CONFIG_JSONB&layer-2/.ATTRIBUTES/OBJECT_CONFIG_JSONB3layer_with_weights-0/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-1/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/global_step/.ATTRIBUTES/VARIABLE_VALUEB:optimizer/optimizer/beta1_power/.ATTRIBUTES/VARIABLE_VALUEB:optimizer/optimizer/beta2_power/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
Я
!save_1/RestoreV2/shape_and_slicesConst"/device:CPU:0*;
value2B0B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
Ж
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices"/device:CPU:0*d
_output_shapesR
P::::::::::::::::::::*"
dtypes
2	

save_1/NoOpNoOp

save_1/NoOp_1NoOp

save_1/NoOp_2NoOp

save_1/NoOp_3NoOp
R
save_1/IdentityIdentitysave_1/RestoreV2:4*
T0*
_output_shapes
:
X
save_1/AssignVariableOpAssignVariableOpdense_16/biassave_1/Identity*
dtype0
T
save_1/Identity_1Identitysave_1/RestoreV2:5*
T0*
_output_shapes
:
a
save_1/AssignVariableOp_1AssignVariableOpdense_16/bias/Adamsave_1/Identity_1*
dtype0
T
save_1/Identity_2Identitysave_1/RestoreV2:6*
T0*
_output_shapes
:
c
save_1/AssignVariableOp_2AssignVariableOpdense_16/bias/Adam_1save_1/Identity_2*
dtype0
T
save_1/Identity_3Identitysave_1/RestoreV2:7*
T0*
_output_shapes
:
^
save_1/AssignVariableOp_3AssignVariableOpdense_16/kernelsave_1/Identity_3*
dtype0
T
save_1/Identity_4Identitysave_1/RestoreV2:8*
T0*
_output_shapes
:
c
save_1/AssignVariableOp_4AssignVariableOpdense_16/kernel/Adamsave_1/Identity_4*
dtype0
T
save_1/Identity_5Identitysave_1/RestoreV2:9*
T0*
_output_shapes
:
e
save_1/AssignVariableOp_5AssignVariableOpdense_16/kernel/Adam_1save_1/Identity_5*
dtype0

save_1/NoOp_4NoOp
U
save_1/Identity_6Identitysave_1/RestoreV2:11*
T0*
_output_shapes
:
\
save_1/AssignVariableOp_6AssignVariableOpdense_17/biassave_1/Identity_6*
dtype0
U
save_1/Identity_7Identitysave_1/RestoreV2:12*
T0*
_output_shapes
:
a
save_1/AssignVariableOp_7AssignVariableOpdense_17/bias/Adamsave_1/Identity_7*
dtype0
U
save_1/Identity_8Identitysave_1/RestoreV2:13*
T0*
_output_shapes
:
c
save_1/AssignVariableOp_8AssignVariableOpdense_17/bias/Adam_1save_1/Identity_8*
dtype0
U
save_1/Identity_9Identitysave_1/RestoreV2:14*
T0*
_output_shapes
:
^
save_1/AssignVariableOp_9AssignVariableOpdense_17/kernelsave_1/Identity_9*
dtype0
V
save_1/Identity_10Identitysave_1/RestoreV2:15*
T0*
_output_shapes
:
e
save_1/AssignVariableOp_10AssignVariableOpdense_17/kernel/Adamsave_1/Identity_10*
dtype0
V
save_1/Identity_11Identitysave_1/RestoreV2:16*
T0*
_output_shapes
:
g
save_1/AssignVariableOp_11AssignVariableOpdense_17/kernel/Adam_1save_1/Identity_11*
dtype0
V
save_1/Identity_12Identitysave_1/RestoreV2:17*
T0	*
_output_shapes
:
g
save_1/AssignVariableOp_12AssignVariableOpTFOptimizer/iterationssave_1/Identity_12*
dtype0	
’
save_1/AssignAssign training/TFOptimizer/beta1_powersave_1/RestoreV2:18*
use_locking(*
T0*;
_class1
/-loc:@training/TFOptimizer/Read/ReadVariableOp*
validate_shape(*
_output_shapes
: 
ў
save_1/Assign_1Assign training/TFOptimizer/beta2_powersave_1/RestoreV2:19*
T0*=
_class3
1/loc:@training/TFOptimizer/Read_1/ReadVariableOp*
validate_shape(*
_output_shapes
: *
use_locking(
ч
save_1/restore_allNoOp^save_1/Assign^save_1/AssignVariableOp^save_1/AssignVariableOp_1^save_1/AssignVariableOp_10^save_1/AssignVariableOp_11^save_1/AssignVariableOp_12^save_1/AssignVariableOp_2^save_1/AssignVariableOp_3^save_1/AssignVariableOp_4^save_1/AssignVariableOp_5^save_1/AssignVariableOp_6^save_1/AssignVariableOp_7^save_1/AssignVariableOp_8^save_1/AssignVariableOp_9^save_1/Assign_1^save_1/NoOp^save_1/NoOp_1^save_1/NoOp_2^save_1/NoOp_3^save_1/NoOp_4
6
init_1NoOp^mean/count/Assign^mean/total/Assign"J
save_1/Const:0save_1/control_dependency:0save_1/restore_all 5 @F8"2
metric_variables

mean/total:0
mean/count:0"≈x
cond_contextіx±x
ж
Rloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/cond_textRloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Sloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_t:0 *д
Eloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_scalar:0
Sloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:0
Sloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:1
Rloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0
Sloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_t:0®
Rloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Rloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Ь
Eloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_scalar:0Sloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:1
ЌW
Tloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/cond_text_1Rloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Sloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_f:0*о'
jloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:0
jloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:1
kloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:0
kloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1
mloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
mloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
Оloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
Оloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
Оloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
Зloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
Дloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
Аloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
Йloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
Жloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
Вloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
Бloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
|loss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
Жloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
Еloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
Еloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
loss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
wloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
uloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
xloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0
zloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:0
qloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
lloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
mloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0
mloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
Rloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0
Sloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_f:0
Gloss/dense_17_loss/broadcast_weights/assert_broadcastable/values/rank:0
Hloss/dense_17_loss/broadcast_weights/assert_broadcastable/values/shape:0
Hloss/dense_17_loss/broadcast_weights/assert_broadcastable/weights/rank:0
Iloss/dense_17_loss/broadcast_weights/assert_broadcastable/weights/shape:0∆
Hloss/dense_17_loss/broadcast_weights/assert_broadcastable/weights/rank:0zloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:0®
Rloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Rloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0„
Iloss/dense_17_loss/broadcast_weights/assert_broadcastable/weights/shape:0Йloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0√
Gloss/dense_17_loss/broadcast_weights/assert_broadcastable/values/rank:0xloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0‘
Hloss/dense_17_loss/broadcast_weights/assert_broadcastable/values/shape:0Зloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:02Т#
П#
lloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_textlloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0mloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0 *њ 
Оloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
Оloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
Оloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
Зloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
Йloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1
Дloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
Аloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
Йloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
Лloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1
Жloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
Вloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
Бloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
|loss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
Жloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
Еloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
Еloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
loss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
wloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
uloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
lloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
mloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
Hloss/dense_17_loss/broadcast_weights/assert_broadcastable/values/shape:0
Iloss/dense_17_loss/broadcast_weights/assert_broadcastable/weights/shape:0ў
Iloss/dense_17_loss/broadcast_weights/assert_broadcastable/weights/shape:0Лloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1Ш
Йloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0Йloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0÷
Hloss/dense_17_loss/broadcast_weights/assert_broadcastable/values/shape:0Йloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1Ф
Зloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0Зloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0№
lloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0lloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:02≈

¬

nloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_text_1lloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0mloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0*т
mloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
mloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
qloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
lloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
mloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0№
lloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0lloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0в
qloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0mloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
Э
Oloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/cond_textOloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Ploss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t:0 *§
Zloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency:0
Oloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0
Ploss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t:0Ґ
Oloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Oloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0
’
Qloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/cond_text_1Oloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Ploss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f:0*№
Uloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch:0
Wloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1:0
Wloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2:0
Wloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3:0
Uloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0:0
Uloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1:0
Uloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2:0
Uloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4:0
Uloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5:0
Uloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7:0
\loss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1:0
Oloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0
Ploss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f:0
Eloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_scalar:0
Ploss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge:0
Hloss/dense_17_loss/broadcast_weights/assert_broadcastable/values/shape:0
Iloss/dense_17_loss/broadcast_weights/assert_broadcastable/weights/shape:0§
Iloss/dense_17_loss/broadcast_weights/assert_broadcastable/weights/shape:0Wloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1:0Ґ
Oloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Oloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0£
Hloss/dense_17_loss/broadcast_weights/assert_broadcastable/values/shape:0Wloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2:0†
Eloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_scalar:0Wloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3:0©
Ploss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge:0Uloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch:0"µ
global_step•Ґ
Я
TFOptimizer/iterations:0TFOptimizer/iterations/Assign,TFOptimizer/iterations/Read/ReadVariableOp:0(22TFOptimizer/iterations/Initializer/initial_value:08")
train_op

training/TFOptimizer/Adam"!
saved_model_main_op


init_1"µ
trainable_variablesЭЪ
Д
dense_16/kernel:0dense_16/kernel/Assign%dense_16/kernel/Read/ReadVariableOp:0(2,dense_16/kernel/Initializer/random_uniform:08
s
dense_16/bias:0dense_16/bias/Assign#dense_16/bias/Read/ReadVariableOp:0(2!dense_16/bias/Initializer/zeros:08
Д
dense_17/kernel:0dense_17/kernel/Assign%dense_17/kernel/Read/ReadVariableOp:0(2,dense_17/kernel/Initializer/random_uniform:08
s
dense_17/bias:0dense_17/bias/Assign#dense_17/bias/Read/ReadVariableOp:0(2!dense_17/bias/Initializer/zeros:08
Я
TFOptimizer/iterations:0TFOptimizer/iterations/Assign,TFOptimizer/iterations/Read/ReadVariableOp:0(22TFOptimizer/iterations/Initializer/initial_value:08"√
local_variablesѓђ
T
mean/total:0mean/total/Assignmean/total/read:02mean/total/Initializer/zeros:0
T
mean/count:0mean/count/Assignmean/count/read:02mean/count/Initializer/zeros:0"Б
	variablesур
Д
dense_16/kernel:0dense_16/kernel/Assign%dense_16/kernel/Read/ReadVariableOp:0(2,dense_16/kernel/Initializer/random_uniform:08
s
dense_16/bias:0dense_16/bias/Assign#dense_16/bias/Read/ReadVariableOp:0(2!dense_16/bias/Initializer/zeros:08
Д
dense_17/kernel:0dense_17/kernel/Assign%dense_17/kernel/Read/ReadVariableOp:0(2,dense_17/kernel/Initializer/random_uniform:08
s
dense_17/bias:0dense_17/bias/Assign#dense_17/bias/Read/ReadVariableOp:0(2!dense_17/bias/Initializer/zeros:08
Я
TFOptimizer/iterations:0TFOptimizer/iterations/Assign,TFOptimizer/iterations/Read/ReadVariableOp:0(22TFOptimizer/iterations/Initializer/initial_value:08
®
"training/TFOptimizer/beta1_power:0'training/TFOptimizer/beta1_power/Assign'training/TFOptimizer/beta1_power/read:020training/TFOptimizer/beta1_power/initial_value:0
®
"training/TFOptimizer/beta2_power:0'training/TFOptimizer/beta2_power/Assign'training/TFOptimizer/beta2_power/read:020training/TFOptimizer/beta2_power/initial_value:0
Н
dense_16/kernel/Adam:0dense_16/kernel/Adam/Assign*dense_16/kernel/Adam/Read/ReadVariableOp:0(2(dense_16/kernel/Adam/Initializer/zeros:0
Х
dense_16/kernel/Adam_1:0dense_16/kernel/Adam_1/Assign,dense_16/kernel/Adam_1/Read/ReadVariableOp:0(2*dense_16/kernel/Adam_1/Initializer/zeros:0
Е
dense_16/bias/Adam:0dense_16/bias/Adam/Assign(dense_16/bias/Adam/Read/ReadVariableOp:0(2&dense_16/bias/Adam/Initializer/zeros:0
Н
dense_16/bias/Adam_1:0dense_16/bias/Adam_1/Assign*dense_16/bias/Adam_1/Read/ReadVariableOp:0(2(dense_16/bias/Adam_1/Initializer/zeros:0
Н
dense_17/kernel/Adam:0dense_17/kernel/Adam/Assign*dense_17/kernel/Adam/Read/ReadVariableOp:0(2(dense_17/kernel/Adam/Initializer/zeros:0
Х
dense_17/kernel/Adam_1:0dense_17/kernel/Adam_1/Assign,dense_17/kernel/Adam_1/Read/ReadVariableOp:0(2*dense_17/kernel/Adam_1/Initializer/zeros:0
Е
dense_17/bias/Adam:0dense_17/bias/Adam/Assign(dense_17/bias/Adam/Read/ReadVariableOp:0(2&dense_17/bias/Adam/Initializer/zeros:0
Н
dense_17/bias/Adam_1:0dense_17/bias/Adam_1/Assign*dense_17/bias/Adam_1/Read/ReadVariableOp:0(2(dense_17/bias/Adam_1/Initializer/zeros:0"/
saved_model_train_op

training/group_deps*н
trainг
D
dense_17_target1
dense_17_target:0€€€€€€€€€€€€€€€€€€
:
dense_16_input(
dense_16_input:0€€€€€€€€€Р4
metrics/accuracy/update_op
mean/update_op:0 ,
metrics/accuracy/value
mean/value:0 A
predictions/dense_17)
dense_17/Softmax:0€€€€€€€€€

loss

loss/mul:0 tensorflow/supervised/training∞Ь
Й б
:
Add
x"T
y"T
z"T"
Ttype:
2	
Ы
ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
P
Assert
	condition
	
data2T"
T
list(type)(0"
	summarizeintИ
x
Assign
ref"TА

value"T

output_ref"TА"	
Ttype"
validate_shapebool("
use_lockingbool(Ш
s
	AssignAdd
ref"TА

value"T

output_ref"TА" 
Ttype:
2	"
use_lockingbool( 
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
є
DenseToDenseSetOperation	
set1"T	
set2"T
result_indices	
result_values"T
result_shape	"
set_operationstring"
validate_indicesbool("
Ttype:
	2	
B
Equal
x"T
y"T
z
"
Ttype:
2	
Р
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
,
Log
x"T
y"T"
Ttype:

2
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
М
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
;
Maximum
x"T
y"T
z"T"
Ttype:

2	Р
Н
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
;
Minimum
x"T
y"T
z"T"
Ttype:

2	Р
=
Mul
x"T
y"T
z"T"
Ttype:
2	Р

NoOp
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
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
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2
У
#SparseSoftmaxCrossEntropyWithLogits
features"T
labels"Tlabels	
loss"T
backprop"T"
Ttype:
2"
Tlabelstype0	:
2	
:
Sub
x"T
y"T
z"T"
Ttype:
2	
М
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshapeИ
9
VarIsInitializedOp
resource
is_initialized
И
s

VariableV2
ref"dtypeА"
shapeshape"
dtypetype"
	containerstring "
shared_namestring И"eval*1.12.02v1.12.0-0-ga6d8ffae09мс
s
dense_16_inputPlaceholder*
dtype0*(
_output_shapes
:€€€€€€€€€Р*
shape:€€€€€€€€€Р
•
0dense_16/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@dense_16/kernel*
valueB"     *
dtype0*
_output_shapes
:
Ч
.dense_16/kernel/Initializer/random_uniform/minConst*"
_class
loc:@dense_16/kernel*
valueB
 *HYЛљ*
dtype0*
_output_shapes
: 
Ч
.dense_16/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@dense_16/kernel*
valueB
 *HYЛ=*
dtype0*
_output_shapes
: 
р
8dense_16/kernel/Initializer/random_uniform/RandomUniformRandomUniform0dense_16/kernel/Initializer/random_uniform/shape*
dtype0* 
_output_shapes
:
РА*

seed *
T0*"
_class
loc:@dense_16/kernel*
seed2 
Џ
.dense_16/kernel/Initializer/random_uniform/subSub.dense_16/kernel/Initializer/random_uniform/max.dense_16/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@dense_16/kernel*
_output_shapes
: 
о
.dense_16/kernel/Initializer/random_uniform/mulMul8dense_16/kernel/Initializer/random_uniform/RandomUniform.dense_16/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@dense_16/kernel* 
_output_shapes
:
РА
а
*dense_16/kernel/Initializer/random_uniformAdd.dense_16/kernel/Initializer/random_uniform/mul.dense_16/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@dense_16/kernel* 
_output_shapes
:
РА
±
dense_16/kernelVarHandleOp*
shape:
РА*
dtype0*
_output_shapes
: * 
shared_namedense_16/kernel*"
_class
loc:@dense_16/kernel*
	container 
o
0dense_16/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_16/kernel*
_output_shapes
: 
Ш
dense_16/kernel/AssignAssignVariableOpdense_16/kernel*dense_16/kernel/Initializer/random_uniform*"
_class
loc:@dense_16/kernel*
dtype0
Щ
#dense_16/kernel/Read/ReadVariableOpReadVariableOpdense_16/kernel*"
_class
loc:@dense_16/kernel*
dtype0* 
_output_shapes
:
РА
Р
dense_16/bias/Initializer/zerosConst* 
_class
loc:@dense_16/bias*
valueBА*    *
dtype0*
_output_shapes	
:А
¶
dense_16/biasVarHandleOp*
shape:А*
dtype0*
_output_shapes
: *
shared_namedense_16/bias* 
_class
loc:@dense_16/bias*
	container 
k
.dense_16/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_16/bias*
_output_shapes
: 
З
dense_16/bias/AssignAssignVariableOpdense_16/biasdense_16/bias/Initializer/zeros* 
_class
loc:@dense_16/bias*
dtype0
О
!dense_16/bias/Read/ReadVariableOpReadVariableOpdense_16/bias* 
_class
loc:@dense_16/bias*
dtype0*
_output_shapes	
:А
p
dense_16/MatMul/ReadVariableOpReadVariableOpdense_16/kernel*
dtype0* 
_output_shapes
:
РА
Ґ
dense_16/MatMulMatMuldense_16_inputdense_16/MatMul/ReadVariableOp*
transpose_b( *
T0*(
_output_shapes
:€€€€€€€€€А*
transpose_a( 
j
dense_16/BiasAdd/ReadVariableOpReadVariableOpdense_16/bias*
dtype0*
_output_shapes	
:А
Ч
dense_16/BiasAddBiasAdddense_16/MatMuldense_16/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*(
_output_shapes
:€€€€€€€€€А
Z
dense_16/ReluReludense_16/BiasAdd*
T0*(
_output_shapes
:€€€€€€€€€А
`
dropout_8/IdentityIdentitydense_16/Relu*
T0*(
_output_shapes
:€€€€€€€€€А
•
0dense_17/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@dense_17/kernel*
valueB"   
   *
dtype0*
_output_shapes
:
Ч
.dense_17/kernel/Initializer/random_uniform/minConst*"
_class
loc:@dense_17/kernel*
valueB
 *УСџљ*
dtype0*
_output_shapes
: 
Ч
.dense_17/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@dense_17/kernel*
valueB
 *УСџ=*
dtype0*
_output_shapes
: 
п
8dense_17/kernel/Initializer/random_uniform/RandomUniformRandomUniform0dense_17/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@dense_17/kernel*
seed2 *
dtype0*
_output_shapes
:	А
*

seed 
Џ
.dense_17/kernel/Initializer/random_uniform/subSub.dense_17/kernel/Initializer/random_uniform/max.dense_17/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@dense_17/kernel*
_output_shapes
: 
н
.dense_17/kernel/Initializer/random_uniform/mulMul8dense_17/kernel/Initializer/random_uniform/RandomUniform.dense_17/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@dense_17/kernel*
_output_shapes
:	А

я
*dense_17/kernel/Initializer/random_uniformAdd.dense_17/kernel/Initializer/random_uniform/mul.dense_17/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@dense_17/kernel*
_output_shapes
:	А

∞
dense_17/kernelVarHandleOp*
dtype0*
_output_shapes
: * 
shared_namedense_17/kernel*"
_class
loc:@dense_17/kernel*
	container *
shape:	А

o
0dense_17/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_17/kernel*
_output_shapes
: 
Ш
dense_17/kernel/AssignAssignVariableOpdense_17/kernel*dense_17/kernel/Initializer/random_uniform*"
_class
loc:@dense_17/kernel*
dtype0
Ш
#dense_17/kernel/Read/ReadVariableOpReadVariableOpdense_17/kernel*"
_class
loc:@dense_17/kernel*
dtype0*
_output_shapes
:	А

О
dense_17/bias/Initializer/zerosConst* 
_class
loc:@dense_17/bias*
valueB
*    *
dtype0*
_output_shapes
:

•
dense_17/biasVarHandleOp*
shape:
*
dtype0*
_output_shapes
: *
shared_namedense_17/bias* 
_class
loc:@dense_17/bias*
	container 
k
.dense_17/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_17/bias*
_output_shapes
: 
З
dense_17/bias/AssignAssignVariableOpdense_17/biasdense_17/bias/Initializer/zeros* 
_class
loc:@dense_17/bias*
dtype0
Н
!dense_17/bias/Read/ReadVariableOpReadVariableOpdense_17/bias* 
_class
loc:@dense_17/bias*
dtype0*
_output_shapes
:

o
dense_17/MatMul/ReadVariableOpReadVariableOpdense_17/kernel*
dtype0*
_output_shapes
:	А

•
dense_17/MatMulMatMuldropout_8/Identitydense_17/MatMul/ReadVariableOp*
transpose_b( *
T0*'
_output_shapes
:€€€€€€€€€
*
transpose_a( 
i
dense_17/BiasAdd/ReadVariableOpReadVariableOpdense_17/bias*
dtype0*
_output_shapes
:

Ц
dense_17/BiasAddBiasAdddense_17/MatMuldense_17/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:€€€€€€€€€

_
dense_17/SoftmaxSoftmaxdense_17/BiasAdd*
T0*'
_output_shapes
:€€€€€€€€€

Э
0TFOptimizer/iterations/Initializer/initial_valueConst*)
_class
loc:@TFOptimizer/iterations*
value	B	 R *
dtype0	*
_output_shapes
: 
Љ
TFOptimizer/iterationsVarHandleOp*
shape: *
dtype0	*
_output_shapes
: *'
shared_nameTFOptimizer/iterations*)
_class
loc:@TFOptimizer/iterations*
	container 
}
7TFOptimizer/iterations/IsInitialized/VarIsInitializedOpVarIsInitializedOpTFOptimizer/iterations*
_output_shapes
: 
≥
TFOptimizer/iterations/AssignAssignVariableOpTFOptimizer/iterations0TFOptimizer/iterations/Initializer/initial_value*)
_class
loc:@TFOptimizer/iterations*
dtype0	
§
*TFOptimizer/iterations/Read/ReadVariableOpReadVariableOpTFOptimizer/iterations*)
_class
loc:@TFOptimizer/iterations*
dtype0	*
_output_shapes
: 
Д
dense_17_targetPlaceholder*
dtype0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*%
shape:€€€€€€€€€€€€€€€€€€
R
ConstConst*
valueB*  А?*
dtype0*
_output_shapes
:
Д
dense_17_sample_weightsPlaceholderWithDefaultConst*
dtype0*#
_output_shapes
:€€€€€€€€€*
shape:€€€€€€€€€
]
loss/dense_17_loss/ConstConst*
valueB
 *Хњ÷3*
dtype0*
_output_shapes
: 
]
loss/dense_17_loss/sub/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
r
loss/dense_17_loss/subSubloss/dense_17_loss/sub/xloss/dense_17_loss/Const*
T0*
_output_shapes
: 
П
(loss/dense_17_loss/clip_by_value/MinimumMinimumdense_17/Softmaxloss/dense_17_loss/sub*
T0*'
_output_shapes
:€€€€€€€€€

°
 loss/dense_17_loss/clip_by_valueMaximum(loss/dense_17_loss/clip_by_value/Minimumloss/dense_17_loss/Const*
T0*'
_output_shapes
:€€€€€€€€€

q
loss/dense_17_loss/LogLog loss/dense_17_loss/clip_by_value*
T0*'
_output_shapes
:€€€€€€€€€

s
 loss/dense_17_loss/Reshape/shapeConst*
valueB:
€€€€€€€€€*
dtype0*
_output_shapes
:
Ф
loss/dense_17_loss/ReshapeReshapedense_17_target loss/dense_17_loss/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:€€€€€€€€€
И
loss/dense_17_loss/CastCastloss/dense_17_loss/Reshape*

SrcT0*
Truncate( *#
_output_shapes
:€€€€€€€€€*

DstT0	
s
"loss/dense_17_loss/Reshape_1/shapeConst*
valueB"€€€€
   *
dtype0*
_output_shapes
:
£
loss/dense_17_loss/Reshape_1Reshapeloss/dense_17_loss/Log"loss/dense_17_loss/Reshape_1/shape*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€

У
<loss/dense_17_loss/SparseSoftmaxCrossEntropyWithLogits/ShapeShapeloss/dense_17_loss/Cast*
T0	*
out_type0*
_output_shapes
:
И
Zloss/dense_17_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsloss/dense_17_loss/Reshape_1loss/dense_17_loss/Cast*
T0*6
_output_shapes$
":€€€€€€€€€:€€€€€€€€€
*
Tlabels0	
Ю
Gloss/dense_17_loss/broadcast_weights/assert_broadcastable/weights/shapeShapedense_17_sample_weights*
T0*
out_type0*
_output_shapes
:
И
Floss/dense_17_loss/broadcast_weights/assert_broadcastable/weights/rankConst*
value	B :*
dtype0*
_output_shapes
: 
а
Floss/dense_17_loss/broadcast_weights/assert_broadcastable/values/shapeShapeZloss/dense_17_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*
out_type0*
_output_shapes
:
З
Eloss/dense_17_loss/broadcast_weights/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
З
Eloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_scalar/xConst*
value	B : *
dtype0*
_output_shapes
: 
ь
Closs/dense_17_loss/broadcast_weights/assert_broadcastable/is_scalarEqualEloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_scalar/xFloss/dense_17_loss/broadcast_weights/assert_broadcastable/weights/rank*
T0*
_output_shapes
: 
Ж
Oloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/SwitchSwitchCloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_scalarCloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_scalar*
T0
*
_output_shapes
: : 
—
Qloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_tIdentityQloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch:1*
T0
*
_output_shapes
: 
ѕ
Qloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_fIdentityOloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch*
T0
*
_output_shapes
: 
¬
Ploss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_idIdentityCloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_scalar*
T0
*
_output_shapes
: 
н
Qloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1SwitchCloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_scalarPloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0
*V
_classL
JHloc:@loss/dense_17_loss/broadcast_weights/assert_broadcastable/is_scalar*
_output_shapes
: : 
Л
oloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankEqualvloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switchxloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1*
T0*
_output_shapes
: 
Ц
vloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/SwitchSwitchEloss/dense_17_loss/broadcast_weights/assert_broadcastable/values/rankPloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0*X
_classN
LJloc:@loss/dense_17_loss/broadcast_weights/assert_broadcastable/values/rank*
_output_shapes
: : 
Ъ
xloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1SwitchFloss/dense_17_loss/broadcast_weights/assert_broadcastable/weights/rankPloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0*Y
_classO
MKloc:@loss/dense_17_loss/broadcast_weights/assert_broadcastable/weights/rank*
_output_shapes
: : 
ш
iloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/SwitchSwitcholoss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankoloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
T0
*
_output_shapes
: : 
Е
kloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_tIdentitykloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1*
T0
*
_output_shapes
: 
Г
kloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_fIdentityiloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch*
T0
*
_output_shapes
: 
И
jloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_idIdentityoloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
T0
*
_output_shapes
: 
Љ
Вloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dimConstl^loss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
“
~loss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims
ExpandDimsЙloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1Вloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:
∞
Еloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/SwitchSwitchFloss/dense_17_loss/broadcast_weights/assert_broadcastable/values/shapePloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0*Y
_classO
MKloc:@loss/dense_17_loss/broadcast_weights/assert_broadcastable/values/shape* 
_output_shapes
::
М
Зloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1SwitchЕloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switchjloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0*Y
_classO
MKloc:@loss/dense_17_loss/broadcast_weights/assert_broadcastable/values/shape* 
_output_shapes
::
√
Гloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ShapeConstl^loss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB"      *
dtype0*
_output_shapes
:
і
Гloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ConstConstl^loss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B :*
dtype0*
_output_shapes
: 
ћ
}loss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_likeFillГloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ShapeГloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const*
T0*

index_type0*
_output_shapes

:
ѓ
loss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axisConstl^loss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B :*
dtype0*
_output_shapes
: 
ƒ
zloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concatConcatV2~loss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims}loss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_likeloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis*
T0*
N*
_output_shapes

:*

Tidx0
Њ
Дloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dimConstl^loss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
ў
Аloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1
ExpandDimsЛloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1Дloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim*
T0*
_output_shapes

:*

Tdim0
і
Зloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/SwitchSwitchGloss/dense_17_loss/broadcast_weights/assert_broadcastable/weights/shapePloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0*Z
_classP
NLloc:@loss/dense_17_loss/broadcast_weights/assert_broadcastable/weights/shape* 
_output_shapes
::
С
Йloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1SwitchЗloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switchjloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0*Z
_classP
NLloc:@loss/dense_17_loss/broadcast_weights/assert_broadcastable/weights/shape* 
_output_shapes
::
Я
Мloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperationDenseToDenseSetOperationАloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1zloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat*
set_operationa-b*
validate_indices(*
T0*<
_output_shapes*
(:€€€€€€€€€:€€€€€€€€€:
ѕ
Дloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dimsSizeОloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1*
T0*
out_type0*
_output_shapes
: 
•
uloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xConstl^loss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B : *
dtype0*
_output_shapes
: 
Ы
sloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dimsEqualuloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xДloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims*
T0*
_output_shapes
: 
ъ
kloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1Switcholoss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankjloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0
*В
_classx
vtloc:@loss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
_output_shapes
: : 
€
hloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergeMergekloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1sloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims*
T0
*
N*
_output_shapes
: : 
¬
Nloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/MergeMergehloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergeSloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:1*
T0
*
N*
_output_shapes
: : 
І
?loss/dense_17_loss/broadcast_weights/assert_broadcastable/ConstConst*8
value/B- B'weights can not be broadcast to values.*
dtype0*
_output_shapes
: 
Р
Aloss/dense_17_loss/broadcast_weights/assert_broadcastable/Const_1Const*
valueB Bweights.shape=*
dtype0*
_output_shapes
: 
Ы
Aloss/dense_17_loss/broadcast_weights/assert_broadcastable/Const_2Const**
value!B Bdense_17_sample_weights:0*
dtype0*
_output_shapes
: 
П
Aloss/dense_17_loss/broadcast_weights/assert_broadcastable/Const_3Const*
valueB Bvalues.shape=*
dtype0*
_output_shapes
: 
ё
Aloss/dense_17_loss/broadcast_weights/assert_broadcastable/Const_4Const*m
valuedBb B\loss/dense_17_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:0*
dtype0*
_output_shapes
: 
М
Aloss/dense_17_loss/broadcast_weights/assert_broadcastable/Const_5Const*
valueB B
is_scalar=*
dtype0*
_output_shapes
: 
Щ
Lloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/SwitchSwitchNloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/MergeNloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge*
T0
*
_output_shapes
: : 
Ћ
Nloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_tIdentityNloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Switch:1*
T0
*
_output_shapes
: 
…
Nloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_fIdentityLloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Switch*
T0
*
_output_shapes
: 
 
Mloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_idIdentityNloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge*
T0
*
_output_shapes
: 
£
Jloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/NoOpNoOpO^loss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t
Е
Xloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependencyIdentityNloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_tK^loss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/NoOp*
T0
*a
_classW
USloc:@loss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t*
_output_shapes
: 
М
Sloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0ConstO^loss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*8
value/B- B'weights can not be broadcast to values.*
dtype0*
_output_shapes
: 
у
Sloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1ConstO^loss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
valueB Bweights.shape=*
dtype0*
_output_shapes
: 
ю
Sloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2ConstO^loss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f**
value!B Bdense_17_sample_weights:0*
dtype0*
_output_shapes
: 
т
Sloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4ConstO^loss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
valueB Bvalues.shape=*
dtype0*
_output_shapes
: 
Ѕ
Sloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5ConstO^loss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*m
valuedBb B\loss/dense_17_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:0*
dtype0*
_output_shapes
: 
п
Sloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7ConstO^loss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
valueB B
is_scalar=*
dtype0*
_output_shapes
: 
”
Lloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/AssertAssertSloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/SwitchSloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0Sloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1Sloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2Uloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1Sloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4Sloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5Uloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2Sloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7Uloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3*
T
2	
*
	summarize
В
Sloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/SwitchSwitchNloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/MergeMloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0
*a
_classW
USloc:@loss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge*
_output_shapes
: : 
ю
Uloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1SwitchGloss/dense_17_loss/broadcast_weights/assert_broadcastable/weights/shapeMloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0*Z
_classP
NLloc:@loss/dense_17_loss/broadcast_weights/assert_broadcastable/weights/shape* 
_output_shapes
::
ь
Uloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2SwitchFloss/dense_17_loss/broadcast_weights/assert_broadcastable/values/shapeMloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0*Y
_classO
MKloc:@loss/dense_17_loss/broadcast_weights/assert_broadcastable/values/shape* 
_output_shapes
::
о
Uloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3SwitchCloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_scalarMloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0
*V
_classL
JHloc:@loss/dense_17_loss/broadcast_weights/assert_broadcastable/is_scalar*
_output_shapes
: : 
Й
Zloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1IdentityNloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_fM^loss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert*
T0
*a
_classW
USloc:@loss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
_output_shapes
: 
ґ
Kloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/MergeMergeZloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1Xloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency*
T0
*
N*
_output_shapes
: : 
Ь
4loss/dense_17_loss/broadcast_weights/ones_like/ShapeShapeZloss/dense_17_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogitsL^loss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Merge*
T0*
out_type0*
_output_shapes
:
«
4loss/dense_17_loss/broadcast_weights/ones_like/ConstConstL^loss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Merge*
valueB
 *  А?*
dtype0*
_output_shapes
: 
в
.loss/dense_17_loss/broadcast_weights/ones_likeFill4loss/dense_17_loss/broadcast_weights/ones_like/Shape4loss/dense_17_loss/broadcast_weights/ones_like/Const*
T0*

index_type0*#
_output_shapes
:€€€€€€€€€
Ґ
$loss/dense_17_loss/broadcast_weightsMuldense_17_sample_weights.loss/dense_17_loss/broadcast_weights/ones_like*
T0*#
_output_shapes
:€€€€€€€€€
Ќ
loss/dense_17_loss/MulMulZloss/dense_17_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits$loss/dense_17_loss/broadcast_weights*
T0*#
_output_shapes
:€€€€€€€€€
d
loss/dense_17_loss/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
П
loss/dense_17_loss/SumSumloss/dense_17_loss/Mulloss/dense_17_loss/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
d
loss/dense_17_loss/Const_2Const*
valueB: *
dtype0*
_output_shapes
:
Я
loss/dense_17_loss/Sum_1Sum$loss/dense_17_loss/broadcast_weightsloss/dense_17_loss/Const_2*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
x
loss/dense_17_loss/truedivRealDivloss/dense_17_loss/Sumloss/dense_17_loss/Sum_1*
T0*
_output_shapes
: 
b
loss/dense_17_loss/zeros_likeConst*
valueB
 *    *
dtype0*
_output_shapes
: 

loss/dense_17_loss/GreaterGreaterloss/dense_17_loss/Sum_1loss/dense_17_loss/zeros_like*
T0*
_output_shapes
: 
Ы
loss/dense_17_loss/SelectSelectloss/dense_17_loss/Greaterloss/dense_17_loss/truedivloss/dense_17_loss/zeros_like*
T0*
_output_shapes
: 
]
loss/dense_17_loss/Const_3Const*
valueB *
dtype0*
_output_shapes
: 
Ф
loss/dense_17_loss/MeanMeanloss/dense_17_loss/Selectloss/dense_17_loss/Const_3*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
O

loss/mul/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
U
loss/mulMul
loss/mul/xloss/dense_17_loss/Mean*
T0*
_output_shapes
: 
l
!metrics/acc/Max/reduction_indicesConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
Х
metrics/acc/MaxMaxdense_17_target!metrics/acc/Max/reduction_indices*
T0*#
_output_shapes
:€€€€€€€€€*
	keep_dims( *

Tidx0
g
metrics/acc/ArgMax/dimensionConst*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
Щ
metrics/acc/ArgMaxArgMaxdense_17/Softmaxmetrics/acc/ArgMax/dimension*
T0*
output_type0	*#
_output_shapes
:€€€€€€€€€*

Tidx0
y
metrics/acc/CastCastmetrics/acc/ArgMax*

SrcT0	*
Truncate( *#
_output_shapes
:€€€€€€€€€*

DstT0
k
metrics/acc/EqualEqualmetrics/acc/Maxmetrics/acc/Cast*
T0*#
_output_shapes
:€€€€€€€€€
z
metrics/acc/Cast_1Castmetrics/acc/Equal*

SrcT0
*
Truncate( *#
_output_shapes
:€€€€€€€€€*

DstT0
[
metrics/acc/ConstConst*
valueB: *
dtype0*
_output_shapes
:
}
metrics/acc/MeanMeanmetrics/acc/Cast_1metrics/acc/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
0

group_depsNoOp	^loss/mul^metrics/acc/Mean
W
Const_1Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
W
Const_2Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
W
Const_3Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
W
Const_4Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
W
Const_5Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
\
Const_6Const"/device:CPU:0*
valueB Bmodel*
dtype0*
_output_shapes
: 
W
Const_7Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
W
Const_8Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
W
Const_9Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_10Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_11Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
§
RestoreV2/tensor_namesConst"/device:CPU:0*K
valueBB@B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
r
RestoreV2/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Н
	RestoreV2	RestoreV2Const_6RestoreV2/tensor_namesRestoreV2/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
B
IdentityIdentity	RestoreV2*
T0*
_output_shapes
:
L
AssignVariableOpAssignVariableOpdense_16/kernelIdentity*
dtype0
§
RestoreV2_1/tensor_namesConst"/device:CPU:0*I
value@B>B4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
У
RestoreV2_1	RestoreV2Const_6RestoreV2_1/tensor_namesRestoreV2_1/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
F

Identity_1IdentityRestoreV2_1*
T0*
_output_shapes
:
N
AssignVariableOp_1AssignVariableOpdense_16/bias
Identity_1*
dtype0
¶
RestoreV2_2/tensor_namesConst"/device:CPU:0*K
valueBB@B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_2/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
У
RestoreV2_2	RestoreV2Const_6RestoreV2_2/tensor_namesRestoreV2_2/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_2IdentityRestoreV2_2*
T0*
_output_shapes
:
P
AssignVariableOp_2AssignVariableOpdense_17/kernel
Identity_2*
dtype0
§
RestoreV2_3/tensor_namesConst"/device:CPU:0*I
value@B>B4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_3/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
У
RestoreV2_3	RestoreV2Const_6RestoreV2_3/tensor_namesRestoreV2_3/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
F

Identity_3IdentityRestoreV2_3*
T0*
_output_shapes
:
N
AssignVariableOp_3AssignVariableOpdense_17/bias
Identity_3*
dtype0
†
RestoreV2_4/tensor_namesConst"/device:CPU:0*E
value<B:B0optimizer/global_step/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_4/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
У
RestoreV2_4	RestoreV2Const_6RestoreV2_4/tensor_namesRestoreV2_4/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2	
F

Identity_4IdentityRestoreV2_4*
T0	*
_output_shapes
:
W
AssignVariableOp_4AssignVariableOpTFOptimizer/iterations
Identity_4*
dtype0	
X
VarIsInitializedOpVarIsInitializedOpTFOptimizer/iterations*
_output_shapes
: 
S
VarIsInitializedOp_1VarIsInitializedOpdense_16/kernel*
_output_shapes
: 
S
VarIsInitializedOp_2VarIsInitializedOpdense_17/kernel*
_output_shapes
: 
Q
VarIsInitializedOp_3VarIsInitializedOpdense_17/bias*
_output_shapes
: 
Q
VarIsInitializedOp_4VarIsInitializedOpdense_16/bias*
_output_shapes
: 
М
initNoOp^TFOptimizer/iterations/Assign^dense_16/bias/Assign^dense_16/kernel/Assign^dense_17/bias/Assign^dense_17/kernel/Assign
А
mean/total/Initializer/zerosConst*
_class
loc:@mean/total*
valueB
 *    *
dtype0*
_output_shapes
: 
Н

mean/total
VariableV2*
_class
loc:@mean/total*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 
Ѓ
mean/total/AssignAssign
mean/totalmean/total/Initializer/zeros*
T0*
_class
loc:@mean/total*
validate_shape(*
_output_shapes
: *
use_locking(
g
mean/total/readIdentity
mean/total*
T0*
_class
loc:@mean/total*
_output_shapes
: 
А
mean/count/Initializer/zerosConst*
_class
loc:@mean/count*
valueB
 *    *
dtype0*
_output_shapes
: 
Н

mean/count
VariableV2*
dtype0*
_output_shapes
: *
shared_name *
_class
loc:@mean/count*
	container *
shape: 
Ѓ
mean/count/AssignAssign
mean/countmean/count/Initializer/zeros*
T0*
_class
loc:@mean/count*
validate_shape(*
_output_shapes
: *
use_locking(
g
mean/count/readIdentity
mean/count*
T0*
_class
loc:@mean/count*
_output_shapes
: 
K
	mean/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
_
mean/ToFloatCast	mean/Size*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0
M

mean/ConstConst*
valueB *
dtype0*
_output_shapes
: 
k
mean/SumSummetrics/acc/Mean
mean/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
Д
mean/AssignAdd	AssignAdd
mean/totalmean/Sum*
T0*
_class
loc:@mean/total*
_output_shapes
: *
use_locking( 
Э
mean/AssignAdd_1	AssignAdd
mean/countmean/ToFloat^metrics/acc/Mean*
use_locking( *
T0*
_class
loc:@mean/count*
_output_shapes
: 
Z
mean/truedivRealDivmean/total/readmean/count/read*
T0*
_output_shapes
: 
T
mean/zeros_likeConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Z
mean/GreaterGreatermean/count/readmean/zeros_like*
T0*
_output_shapes
: 
b

mean/valueSelectmean/Greatermean/truedivmean/zeros_like*
T0*
_output_shapes
: 
\
mean/truediv_1RealDivmean/AssignAddmean/AssignAdd_1*
T0*
_output_shapes
: 
V
mean/zeros_like_1Const*
valueB
 *    *
dtype0*
_output_shapes
: 
_
mean/Greater_1Greatermean/AssignAdd_1mean/zeros_like_1*
T0*
_output_shapes
: 
l
mean/update_opSelectmean/Greater_1mean/truediv_1mean/zeros_like_1*
T0*
_output_shapes
: 
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
Ћ
save/SaveV2/tensor_namesConst*ю
valueфBс
B/.ATTRIBUTES/OBJECT_CONFIG_JSONB&layer-0/.ATTRIBUTES/OBJECT_CONFIG_JSONB&layer-2/.ATTRIBUTES/OBJECT_CONFIG_JSONB3layer_with_weights-0/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-1/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/global_step/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:

w
save/SaveV2/shape_and_slicesConst*'
valueB
B B B B B B B B B B *
dtype0*
_output_shapes
:

э	
save/SaveV2/tensors_0Const*Ј	
value≠	B™	 B£	{"class_name": "Sequential", "config": {"layers": [{"class_name": "Dense", "config": {"activation": "relu", "activity_regularizer": null, "batch_input_shape": [null, 784], "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "dtype": "float32", "kernel_constraint": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "kernel_regularizer": null, "name": "dense_16", "trainable": true, "units": 512, "use_bias": true}}, {"class_name": "Dropout", "config": {"dtype": "float32", "name": "dropout_8", "noise_shape": null, "rate": 0.2, "seed": null, "trainable": true}}, {"class_name": "Dense", "config": {"activation": "softmax", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "dtype": "float32", "kernel_constraint": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "kernel_regularizer": null, "name": "dense_17", "trainable": true, "units": 10, "use_bias": true}}], "name": "sequential_8"}}*
dtype0*
_output_shapes
: 
г
save/SaveV2/tensors_1Const*Э
valueУBР BЙ{"class_name": "InputLayer", "config": {"batch_input_shape": [null, 784], "dtype": "float32", "name": "dense_16_input", "sparse": false}}*
dtype0*
_output_shapes
: 
л
save/SaveV2/tensors_2Const*•
valueЫBШ BС{"class_name": "Dropout", "config": {"dtype": "float32", "name": "dropout_8", "noise_shape": null, "rate": 0.2, "seed": null, "trainable": true}}*
dtype0*
_output_shapes
: 
 
save/SaveV2/tensors_3Const*Д
valueъBч Bр{"class_name": "Dense", "config": {"activation": "relu", "activity_regularizer": null, "batch_input_shape": [null, 784], "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "dtype": "float32", "kernel_constraint": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "kernel_regularizer": null, "name": "dense_16", "trainable": true, "units": 512, "use_bias": true}}*
dtype0*
_output_shapes
: 
™
save/SaveV2/tensors_6Const*д
valueЏB„ B–{"class_name": "Dense", "config": {"activation": "softmax", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "dtype": "float32", "kernel_constraint": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "kernel_regularizer": null, "name": "dense_17", "trainable": true, "units": 10, "use_bias": true}}*
dtype0*
_output_shapes
: 
Ґ
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicessave/SaveV2/tensors_0save/SaveV2/tensors_1save/SaveV2/tensors_2save/SaveV2/tensors_3!dense_16/bias/Read/ReadVariableOp#dense_16/kernel/Read/ReadVariableOpsave/SaveV2/tensors_6!dense_17/bias/Read/ReadVariableOp#dense_17/kernel/Read/ReadVariableOp*TFOptimizer/iterations/Read/ReadVariableOp*
dtypes
2
	
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const*
_output_shapes
: 
Ё
save/RestoreV2/tensor_namesConst"/device:CPU:0*ю
valueфBс
B/.ATTRIBUTES/OBJECT_CONFIG_JSONB&layer-0/.ATTRIBUTES/OBJECT_CONFIG_JSONB&layer-2/.ATTRIBUTES/OBJECT_CONFIG_JSONB3layer_with_weights-0/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-1/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/global_step/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:

Й
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*'
valueB
B B B B B B B B B B *
dtype0*
_output_shapes
:

ћ
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*<
_output_shapes*
(::::::::::*
dtypes
2
	

	save/NoOpNoOp

save/NoOp_1NoOp

save/NoOp_2NoOp

save/NoOp_3NoOp
N
save/IdentityIdentitysave/RestoreV2:4*
T0*
_output_shapes
:
T
save/AssignVariableOpAssignVariableOpdense_16/biassave/Identity*
dtype0
P
save/Identity_1Identitysave/RestoreV2:5*
T0*
_output_shapes
:
Z
save/AssignVariableOp_1AssignVariableOpdense_16/kernelsave/Identity_1*
dtype0

save/NoOp_4NoOp
P
save/Identity_2Identitysave/RestoreV2:7*
T0*
_output_shapes
:
X
save/AssignVariableOp_2AssignVariableOpdense_17/biassave/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:8*
T0*
_output_shapes
:
Z
save/AssignVariableOp_3AssignVariableOpdense_17/kernelsave/Identity_3*
dtype0
P
save/Identity_4Identitysave/RestoreV2:9*
T0	*
_output_shapes
:
a
save/AssignVariableOp_4AssignVariableOpTFOptimizer/iterationssave/Identity_4*
dtype0	
№
save/restore_allNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_2^save/AssignVariableOp_3^save/AssignVariableOp_4
^save/NoOp^save/NoOp_1^save/NoOp_2^save/NoOp_3^save/NoOp_4
6
init_1NoOp^mean/count/Assign^mean/total/Assign"D
save/Const:0save/control_dependency:0save/restore_all 5 @F8"µ
trainable_variablesЭЪ
Д
dense_16/kernel:0dense_16/kernel/Assign%dense_16/kernel/Read/ReadVariableOp:0(2,dense_16/kernel/Initializer/random_uniform:08
s
dense_16/bias:0dense_16/bias/Assign#dense_16/bias/Read/ReadVariableOp:0(2!dense_16/bias/Initializer/zeros:08
Д
dense_17/kernel:0dense_17/kernel/Assign%dense_17/kernel/Read/ReadVariableOp:0(2,dense_17/kernel/Initializer/random_uniform:08
s
dense_17/bias:0dense_17/bias/Assign#dense_17/bias/Read/ReadVariableOp:0(2!dense_17/bias/Initializer/zeros:08
Я
TFOptimizer/iterations:0TFOptimizer/iterations/Assign,TFOptimizer/iterations/Read/ReadVariableOp:0(22TFOptimizer/iterations/Initializer/initial_value:08"√
local_variablesѓђ
T
mean/total:0mean/total/Assignmean/total/read:02mean/total/Initializer/zeros:0
T
mean/count:0mean/count/Assignmean/count/read:02mean/count/Initializer/zeros:0"Ђ
	variablesЭЪ
Д
dense_16/kernel:0dense_16/kernel/Assign%dense_16/kernel/Read/ReadVariableOp:0(2,dense_16/kernel/Initializer/random_uniform:08
s
dense_16/bias:0dense_16/bias/Assign#dense_16/bias/Read/ReadVariableOp:0(2!dense_16/bias/Initializer/zeros:08
Д
dense_17/kernel:0dense_17/kernel/Assign%dense_17/kernel/Read/ReadVariableOp:0(2,dense_17/kernel/Initializer/random_uniform:08
s
dense_17/bias:0dense_17/bias/Assign#dense_17/bias/Read/ReadVariableOp:0(2!dense_17/bias/Initializer/zeros:08
Я
TFOptimizer/iterations:0TFOptimizer/iterations/Assign,TFOptimizer/iterations/Read/ReadVariableOp:0(22TFOptimizer/iterations/Initializer/initial_value:08"≈x
cond_contextіx±x
ж
Rloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/cond_textRloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Sloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_t:0 *д
Eloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_scalar:0
Sloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:0
Sloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:1
Rloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0
Sloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_t:0®
Rloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Rloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Ь
Eloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_scalar:0Sloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:1
ЌW
Tloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/cond_text_1Rloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Sloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_f:0*о'
jloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:0
jloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:1
kloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:0
kloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1
mloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
mloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
Оloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
Оloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
Оloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
Зloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
Дloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
Аloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
Йloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
Жloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
Вloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
Бloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
|loss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
Жloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
Еloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
Еloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
loss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
wloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
uloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
xloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0
zloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:0
qloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
lloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
mloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0
mloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
Rloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0
Sloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/switch_f:0
Gloss/dense_17_loss/broadcast_weights/assert_broadcastable/values/rank:0
Hloss/dense_17_loss/broadcast_weights/assert_broadcastable/values/shape:0
Hloss/dense_17_loss/broadcast_weights/assert_broadcastable/weights/rank:0
Iloss/dense_17_loss/broadcast_weights/assert_broadcastable/weights/shape:0∆
Hloss/dense_17_loss/broadcast_weights/assert_broadcastable/weights/rank:0zloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:0®
Rloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0Rloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0„
Iloss/dense_17_loss/broadcast_weights/assert_broadcastable/weights/shape:0Йloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0√
Gloss/dense_17_loss/broadcast_weights/assert_broadcastable/values/rank:0xloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0‘
Hloss/dense_17_loss/broadcast_weights/assert_broadcastable/values/shape:0Зloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:02Т#
П#
lloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_textlloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0mloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0 *њ 
Оloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
Оloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
Оloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
Зloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
Йloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1
Дloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
Аloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
Йloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
Лloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1
Жloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
Вloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
Бloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
|loss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
Жloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
Еloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
Еloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
loss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
wloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
uloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
lloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
mloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
Hloss/dense_17_loss/broadcast_weights/assert_broadcastable/values/shape:0
Iloss/dense_17_loss/broadcast_weights/assert_broadcastable/weights/shape:0Ф
Зloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0Зloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0№
lloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0lloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0ў
Iloss/dense_17_loss/broadcast_weights/assert_broadcastable/weights/shape:0Лloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1Ш
Йloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0Йloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0÷
Hloss/dense_17_loss/broadcast_weights/assert_broadcastable/values/shape:0Йloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:12≈

¬

nloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_text_1lloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0mloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0*т
mloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
mloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
qloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
lloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
mloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0№
lloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0lloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0в
qloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0mloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
Э
Oloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/cond_textOloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Ploss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t:0 *§
Zloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency:0
Oloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0
Ploss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_t:0Ґ
Oloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Oloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0
’
Qloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/cond_text_1Oloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Ploss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f:0*№
Uloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch:0
Wloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1:0
Wloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2:0
Wloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3:0
Uloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0:0
Uloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1:0
Uloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2:0
Uloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4:0
Uloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5:0
Uloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7:0
\loss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1:0
Oloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0
Ploss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/switch_f:0
Eloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_scalar:0
Ploss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge:0
Hloss/dense_17_loss/broadcast_weights/assert_broadcastable/values/shape:0
Iloss/dense_17_loss/broadcast_weights/assert_broadcastable/weights/shape:0§
Iloss/dense_17_loss/broadcast_weights/assert_broadcastable/weights/shape:0Wloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1:0Ґ
Oloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0Oloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0£
Hloss/dense_17_loss/broadcast_weights/assert_broadcastable/values/shape:0Wloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2:0†
Eloss/dense_17_loss/broadcast_weights/assert_broadcastable/is_scalar:0Wloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3:0©
Ploss/dense_17_loss/broadcast_weights/assert_broadcastable/is_valid_shape/Merge:0Uloss/dense_17_loss/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch:0"µ
global_step•Ґ
Я
TFOptimizer/iterations:0TFOptimizer/iterations/Assign,TFOptimizer/iterations/Read/ReadVariableOp:0(22TFOptimizer/iterations/Initializer/initial_value:08"2
metric_variables

mean/total:0
mean/count:0"!
saved_model_main_op


init_1*и
evalя
:
dense_16_input(
dense_16_input:0€€€€€€€€€Р
D
dense_17_target1
dense_17_target:0€€€€€€€€€€€€€€€€€€
loss

loss/mul:0 4
metrics/accuracy/update_op
mean/update_op:0 ,
metrics/accuracy/value
mean/value:0 A
predictions/dense_17)
dense_17/Softmax:0€€€€€€€€€
tensorflow/supervised/eval—Ш
Юх

:
Add
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
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
.
Identity

input"T
output"T"	
Ttype
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
=
Mul
x"T
y"T
z"T"
Ttype:
2	Р

NoOp
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
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
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
9
Softmax
logits"T
softmax"T"
Ttype:
2
:
Sub
x"T
y"T
z"T"
Ttype:
2	
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshapeИ
9
VarIsInitializedOp
resource
is_initialized
И"serve*1.12.02v1.12.0-0-ga6d8ffae09ыВ
s
dense_16_inputPlaceholder*
dtype0*(
_output_shapes
:€€€€€€€€€Р*
shape:€€€€€€€€€Р
•
0dense_16/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@dense_16/kernel*
valueB"     *
dtype0*
_output_shapes
:
Ч
.dense_16/kernel/Initializer/random_uniform/minConst*"
_class
loc:@dense_16/kernel*
valueB
 *HYЛљ*
dtype0*
_output_shapes
: 
Ч
.dense_16/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@dense_16/kernel*
valueB
 *HYЛ=*
dtype0*
_output_shapes
: 
р
8dense_16/kernel/Initializer/random_uniform/RandomUniformRandomUniform0dense_16/kernel/Initializer/random_uniform/shape*

seed *
T0*"
_class
loc:@dense_16/kernel*
seed2 *
dtype0* 
_output_shapes
:
РА
Џ
.dense_16/kernel/Initializer/random_uniform/subSub.dense_16/kernel/Initializer/random_uniform/max.dense_16/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@dense_16/kernel*
_output_shapes
: 
о
.dense_16/kernel/Initializer/random_uniform/mulMul8dense_16/kernel/Initializer/random_uniform/RandomUniform.dense_16/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@dense_16/kernel* 
_output_shapes
:
РА
а
*dense_16/kernel/Initializer/random_uniformAdd.dense_16/kernel/Initializer/random_uniform/mul.dense_16/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@dense_16/kernel* 
_output_shapes
:
РА
±
dense_16/kernelVarHandleOp*
dtype0*
_output_shapes
: * 
shared_namedense_16/kernel*"
_class
loc:@dense_16/kernel*
	container *
shape:
РА
o
0dense_16/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_16/kernel*
_output_shapes
: 
Ш
dense_16/kernel/AssignAssignVariableOpdense_16/kernel*dense_16/kernel/Initializer/random_uniform*"
_class
loc:@dense_16/kernel*
dtype0
Щ
#dense_16/kernel/Read/ReadVariableOpReadVariableOpdense_16/kernel*"
_class
loc:@dense_16/kernel*
dtype0* 
_output_shapes
:
РА
Р
dense_16/bias/Initializer/zerosConst* 
_class
loc:@dense_16/bias*
valueBА*    *
dtype0*
_output_shapes	
:А
¶
dense_16/biasVarHandleOp*
shape:А*
dtype0*
_output_shapes
: *
shared_namedense_16/bias* 
_class
loc:@dense_16/bias*
	container 
k
.dense_16/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_16/bias*
_output_shapes
: 
З
dense_16/bias/AssignAssignVariableOpdense_16/biasdense_16/bias/Initializer/zeros* 
_class
loc:@dense_16/bias*
dtype0
О
!dense_16/bias/Read/ReadVariableOpReadVariableOpdense_16/bias* 
_class
loc:@dense_16/bias*
dtype0*
_output_shapes	
:А
p
dense_16/MatMul/ReadVariableOpReadVariableOpdense_16/kernel*
dtype0* 
_output_shapes
:
РА
Ґ
dense_16/MatMulMatMuldense_16_inputdense_16/MatMul/ReadVariableOp*
transpose_b( *
T0*(
_output_shapes
:€€€€€€€€€А*
transpose_a( 
j
dense_16/BiasAdd/ReadVariableOpReadVariableOpdense_16/bias*
dtype0*
_output_shapes	
:А
Ч
dense_16/BiasAddBiasAdddense_16/MatMuldense_16/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*(
_output_shapes
:€€€€€€€€€А
Z
dense_16/ReluReludense_16/BiasAdd*
T0*(
_output_shapes
:€€€€€€€€€А
`
dropout_8/IdentityIdentitydense_16/Relu*
T0*(
_output_shapes
:€€€€€€€€€А
•
0dense_17/kernel/Initializer/random_uniform/shapeConst*"
_class
loc:@dense_17/kernel*
valueB"   
   *
dtype0*
_output_shapes
:
Ч
.dense_17/kernel/Initializer/random_uniform/minConst*"
_class
loc:@dense_17/kernel*
valueB
 *УСџљ*
dtype0*
_output_shapes
: 
Ч
.dense_17/kernel/Initializer/random_uniform/maxConst*"
_class
loc:@dense_17/kernel*
valueB
 *УСџ=*
dtype0*
_output_shapes
: 
п
8dense_17/kernel/Initializer/random_uniform/RandomUniformRandomUniform0dense_17/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes
:	А
*

seed *
T0*"
_class
loc:@dense_17/kernel*
seed2 
Џ
.dense_17/kernel/Initializer/random_uniform/subSub.dense_17/kernel/Initializer/random_uniform/max.dense_17/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@dense_17/kernel*
_output_shapes
: 
н
.dense_17/kernel/Initializer/random_uniform/mulMul8dense_17/kernel/Initializer/random_uniform/RandomUniform.dense_17/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@dense_17/kernel*
_output_shapes
:	А

я
*dense_17/kernel/Initializer/random_uniformAdd.dense_17/kernel/Initializer/random_uniform/mul.dense_17/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@dense_17/kernel*
_output_shapes
:	А

∞
dense_17/kernelVarHandleOp*
shape:	А
*
dtype0*
_output_shapes
: * 
shared_namedense_17/kernel*"
_class
loc:@dense_17/kernel*
	container 
o
0dense_17/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_17/kernel*
_output_shapes
: 
Ш
dense_17/kernel/AssignAssignVariableOpdense_17/kernel*dense_17/kernel/Initializer/random_uniform*"
_class
loc:@dense_17/kernel*
dtype0
Ш
#dense_17/kernel/Read/ReadVariableOpReadVariableOpdense_17/kernel*"
_class
loc:@dense_17/kernel*
dtype0*
_output_shapes
:	А

О
dense_17/bias/Initializer/zerosConst* 
_class
loc:@dense_17/bias*
valueB
*    *
dtype0*
_output_shapes
:

•
dense_17/biasVarHandleOp* 
_class
loc:@dense_17/bias*
	container *
shape:
*
dtype0*
_output_shapes
: *
shared_namedense_17/bias
k
.dense_17/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_17/bias*
_output_shapes
: 
З
dense_17/bias/AssignAssignVariableOpdense_17/biasdense_17/bias/Initializer/zeros* 
_class
loc:@dense_17/bias*
dtype0
Н
!dense_17/bias/Read/ReadVariableOpReadVariableOpdense_17/bias* 
_class
loc:@dense_17/bias*
dtype0*
_output_shapes
:

o
dense_17/MatMul/ReadVariableOpReadVariableOpdense_17/kernel*
dtype0*
_output_shapes
:	А

•
dense_17/MatMulMatMuldropout_8/Identitydense_17/MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€
*
transpose_a( *
transpose_b( 
i
dense_17/BiasAdd/ReadVariableOpReadVariableOpdense_17/bias*
dtype0*
_output_shapes
:

Ц
dense_17/BiasAddBiasAdddense_17/MatMuldense_17/BiasAdd/ReadVariableOp*
T0*
data_formatNHWC*'
_output_shapes
:€€€€€€€€€

_
dense_17/SoftmaxSoftmaxdense_17/BiasAdd*
T0*'
_output_shapes
:€€€€€€€€€

%

group_depsNoOp^dense_17/Softmax
U
ConstConst"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
W
Const_1Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
W
Const_2Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
W
Const_3Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
W
Const_4Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
\
Const_5Const"/device:CPU:0*
valueB Bmodel*
dtype0*
_output_shapes
: 
W
Const_6Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
W
Const_7Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
W
Const_8Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
W
Const_9Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
X
Const_10Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
§
RestoreV2/tensor_namesConst"/device:CPU:0*K
valueBB@B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
r
RestoreV2/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
Н
	RestoreV2	RestoreV2Const_5RestoreV2/tensor_namesRestoreV2/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
B
IdentityIdentity	RestoreV2*
T0*
_output_shapes
:
L
AssignVariableOpAssignVariableOpdense_16/kernelIdentity*
dtype0
§
RestoreV2_1/tensor_namesConst"/device:CPU:0*I
value@B>B4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
У
RestoreV2_1	RestoreV2Const_5RestoreV2_1/tensor_namesRestoreV2_1/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
F

Identity_1IdentityRestoreV2_1*
T0*
_output_shapes
:
N
AssignVariableOp_1AssignVariableOpdense_16/bias
Identity_1*
dtype0
¶
RestoreV2_2/tensor_namesConst"/device:CPU:0*K
valueBB@B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_2/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
У
RestoreV2_2	RestoreV2Const_5RestoreV2_2/tensor_namesRestoreV2_2/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
F

Identity_2IdentityRestoreV2_2*
T0*
_output_shapes
:
P
AssignVariableOp_2AssignVariableOpdense_17/kernel
Identity_2*
dtype0
§
RestoreV2_3/tensor_namesConst"/device:CPU:0*I
value@B>B4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_3/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:
У
RestoreV2_3	RestoreV2Const_5RestoreV2_3/tensor_namesRestoreV2_3/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
F

Identity_3IdentityRestoreV2_3*
T0*
_output_shapes
:
N
AssignVariableOp_3AssignVariableOpdense_17/bias
Identity_3*
dtype0
O
VarIsInitializedOpVarIsInitializedOpdense_16/bias*
_output_shapes
: 
S
VarIsInitializedOp_1VarIsInitializedOpdense_17/kernel*
_output_shapes
: 
Q
VarIsInitializedOp_2VarIsInitializedOpdense_17/bias*
_output_shapes
: 
S
VarIsInitializedOp_3VarIsInitializedOpdense_16/kernel*
_output_shapes
: 
l
initNoOp^dense_16/bias/Assign^dense_16/kernel/Assign^dense_17/bias/Assign^dense_17/kernel/Assign
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
Щ
save/SaveV2/tensor_namesConst*ћ
value¬Bњ	B/.ATTRIBUTES/OBJECT_CONFIG_JSONB&layer-0/.ATTRIBUTES/OBJECT_CONFIG_JSONB&layer-2/.ATTRIBUTES/OBJECT_CONFIG_JSONB3layer_with_weights-0/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-1/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:	
u
save/SaveV2/shape_and_slicesConst*%
valueB	B B B B B B B B B *
dtype0*
_output_shapes
:	
э	
save/SaveV2/tensors_0Const*Ј	
value≠	B™	 B£	{"class_name": "Sequential", "config": {"layers": [{"class_name": "Dense", "config": {"activation": "relu", "activity_regularizer": null, "batch_input_shape": [null, 784], "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "dtype": "float32", "kernel_constraint": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "kernel_regularizer": null, "name": "dense_16", "trainable": true, "units": 512, "use_bias": true}}, {"class_name": "Dropout", "config": {"dtype": "float32", "name": "dropout_8", "noise_shape": null, "rate": 0.2, "seed": null, "trainable": true}}, {"class_name": "Dense", "config": {"activation": "softmax", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "dtype": "float32", "kernel_constraint": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "kernel_regularizer": null, "name": "dense_17", "trainable": true, "units": 10, "use_bias": true}}], "name": "sequential_8"}}*
dtype0*
_output_shapes
: 
г
save/SaveV2/tensors_1Const*Э
valueУBР BЙ{"class_name": "InputLayer", "config": {"batch_input_shape": [null, 784], "dtype": "float32", "name": "dense_16_input", "sparse": false}}*
dtype0*
_output_shapes
: 
л
save/SaveV2/tensors_2Const*•
valueЫBШ BС{"class_name": "Dropout", "config": {"dtype": "float32", "name": "dropout_8", "noise_shape": null, "rate": 0.2, "seed": null, "trainable": true}}*
dtype0*
_output_shapes
: 
 
save/SaveV2/tensors_3Const*Д
valueъBч Bр{"class_name": "Dense", "config": {"activation": "relu", "activity_regularizer": null, "batch_input_shape": [null, 784], "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "dtype": "float32", "kernel_constraint": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "kernel_regularizer": null, "name": "dense_16", "trainable": true, "units": 512, "use_bias": true}}*
dtype0*
_output_shapes
: 
™
save/SaveV2/tensors_6Const*д
valueЏB„ B–{"class_name": "Dense", "config": {"activation": "softmax", "activity_regularizer": null, "bias_constraint": null, "bias_initializer": {"class_name": "Zeros", "config": {"dtype": "float32"}}, "bias_regularizer": null, "dtype": "float32", "kernel_constraint": null, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"dtype": "float32", "seed": null}}, "kernel_regularizer": null, "name": "dense_17", "trainable": true, "units": 10, "use_bias": true}}*
dtype0*
_output_shapes
: 
х
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicessave/SaveV2/tensors_0save/SaveV2/tensors_1save/SaveV2/tensors_2save/SaveV2/tensors_3!dense_16/bias/Read/ReadVariableOp#dense_16/kernel/Read/ReadVariableOpsave/SaveV2/tensors_6!dense_17/bias/Read/ReadVariableOp#dense_17/kernel/Read/ReadVariableOp*
dtypes
2	
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const*
_output_shapes
: 
Ђ
save/RestoreV2/tensor_namesConst"/device:CPU:0*ћ
value¬Bњ	B/.ATTRIBUTES/OBJECT_CONFIG_JSONB&layer-0/.ATTRIBUTES/OBJECT_CONFIG_JSONB&layer-2/.ATTRIBUTES/OBJECT_CONFIG_JSONB3layer_with_weights-0/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB3layer_with_weights-1/.ATTRIBUTES/OBJECT_CONFIG_JSONB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:	
З
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*%
valueB	B B B B B B B B B *
dtype0*
_output_shapes
:	
«
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*
dtypes
2	*8
_output_shapes&
$:::::::::

	save/NoOpNoOp

save/NoOp_1NoOp

save/NoOp_2NoOp

save/NoOp_3NoOp
N
save/IdentityIdentitysave/RestoreV2:4*
T0*
_output_shapes
:
T
save/AssignVariableOpAssignVariableOpdense_16/biassave/Identity*
dtype0
P
save/Identity_1Identitysave/RestoreV2:5*
T0*
_output_shapes
:
Z
save/AssignVariableOp_1AssignVariableOpdense_16/kernelsave/Identity_1*
dtype0

save/NoOp_4NoOp
P
save/Identity_2Identitysave/RestoreV2:7*
T0*
_output_shapes
:
X
save/AssignVariableOp_2AssignVariableOpdense_17/biassave/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:8*
T0*
_output_shapes
:
Z
save/AssignVariableOp_3AssignVariableOpdense_17/kernelsave/Identity_3*
dtype0
¬
save/restore_allNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_2^save/AssignVariableOp_3
^save/NoOp^save/NoOp_1^save/NoOp_2^save/NoOp_3^save/NoOp_4

init_1NoOp"D
save/Const:0save/control_dependency:0save/restore_all 5 @F8"У
trainable_variablesыш
Д
dense_16/kernel:0dense_16/kernel/Assign%dense_16/kernel/Read/ReadVariableOp:0(2,dense_16/kernel/Initializer/random_uniform:08
s
dense_16/bias:0dense_16/bias/Assign#dense_16/bias/Read/ReadVariableOp:0(2!dense_16/bias/Initializer/zeros:08
Д
dense_17/kernel:0dense_17/kernel/Assign%dense_17/kernel/Read/ReadVariableOp:0(2,dense_17/kernel/Initializer/random_uniform:08
s
dense_17/bias:0dense_17/bias/Assign#dense_17/bias/Read/ReadVariableOp:0(2!dense_17/bias/Initializer/zeros:08"!
saved_model_main_op


init_1"Й
	variablesыш
Д
dense_16/kernel:0dense_16/kernel/Assign%dense_16/kernel/Read/ReadVariableOp:0(2,dense_16/kernel/Initializer/random_uniform:08
s
dense_16/bias:0dense_16/bias/Assign#dense_16/bias/Read/ReadVariableOp:0(2!dense_16/bias/Initializer/zeros:08
Д
dense_17/kernel:0dense_17/kernel/Assign%dense_17/kernel/Read/ReadVariableOp:0(2,dense_17/kernel/Initializer/random_uniform:08
s
dense_17/bias:0dense_17/bias/Assign#dense_17/bias/Read/ReadVariableOp:0(2!dense_17/bias/Initializer/zeros:08*£
serving_defaultП
:
dense_16_input(
dense_16_input:0€€€€€€€€€Р5
dense_17)
dense_17/Softmax:0€€€€€€€€€
tensorflow/serving/predict