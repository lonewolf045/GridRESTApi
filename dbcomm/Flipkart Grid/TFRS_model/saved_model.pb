??
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
8
Const
output"dtype"
valuetensor"
dtypetype
?
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype?
.
Identity

input"T
output"T"	
Ttype
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype?
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
Touttype?
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
?
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	?
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
H
ShardedFilename
basename	
shard

num_shards
filename
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
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
f
TopKV2

input"T
k
values"T
indices"
sortedbool("
Ttype:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.6.02v2.6.0-0-g919f693420e8??
o
identifiersVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameidentifiers
h
identifiers/Read/ReadVariableOpReadVariableOpidentifiers*
_output_shapes	
:?*
dtype0
q

candidatesVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*
shared_name
candidates
j
candidates/Read/ReadVariableOpReadVariableOp
candidates*
_output_shapes
:	?@*
dtype0
?
embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*%
shared_nameembedding/embeddings
~
(embedding/embeddings/Read/ReadVariableOpReadVariableOpembedding/embeddings*
_output_shapes
:	?@*
dtype0
j

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name61*
value_dtype0	
G
ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 
?&
Const_1Const*
_output_shapes	
:?*
dtype0*?&
value?&B?&?B0B1B10B100B101B102B103B104B105B106B107B108B109B11B110B111B112B113B114B115B116B117B118B119B12B120B121B122B123B124B125B126B127B128B129B13B130B131B132B133B134B135B136B137B138B139B14B140B141B142B143B144B145B146B147B148B149B15B150B151B152B153B154B155B156B157B158B159B16B160B161B162B163B164B165B166B167B168B169B17B170B171B172B173B174B175B176B177B178B179B18B180B181B182B183B184B185B186B187B188B189B19B190B191B192B193B194B195B196B197B198B199B2B20B200B201B202B203B204B205B206B207B208B209B21B210B211B212B213B214B215B216B217B218B219B22B220B221B222B223B224B225B226B227B228B229B23B230B231B232B233B234B235B236B237B238B239B24B240B241B242B243B244B245B246B247B248B249B25B250B251B252B253B254B255B256B257B258B259B26B260B261B262B263B264B265B266B267B268B269B27B270B271B272B273B274B275B276B277B278B279B28B280B281B282B283B284B285B286B287B288B289B29B290B291B292B293B294B295B296B297B298B299B3B30B300B301B302B303B304B305B306B307B308B309B31B310B311B312B313B314B315B316B317B318B319B32B320B321B322B323B324B325B326B327B328B329B33B330B331B332B333B334B335B336B337B338B339B34B340B341B342B343B344B345B346B347B348B349B35B350B351B352B353B354B355B356B357B358B359B36B360B361B362B363B364B365B366B367B368B369B37B370B371B372B373B374B375B376B377B378B379B38B380B381B382B383B384B385B386B387B388B389B39B390B391B392B393B394B395B396B397B398B399B4B40B400B401B402B403B404B405B406B407B408B409B41B410B411B412B413B414B415B416B417B418B419B42B420B421B422B423B424B425B426B427B428B429B43B430B431B432B433B434B435B436B437B438B439B44B440B441B442B443B444B445B446B447B448B449B45B450B451B452B453B454B455B456B457B458B459B46B460B461B462B463B464B465B466B467B468B469B47B470B471B472B473B474B475B476B477B478B479B48B480B481B482B483B484B485B486B487B488B489B49B490B491B492B493B494B495B496B497B498B499B5B50B500B501B502B503B504B505B506B507B508B509B51B510B511B512B513B514B515B516B517B518B519B52B520B521B522B523B524B525B526B527B528B529B53B530B531B532B533B534B535B536B537B538B539B54B540B541B542B543B544B545B546B547B548B549B55B550B551B552B553B554B555B556B557B558B559B56B560B561B562B563B564B565B566B567B568B569B57B570B571B572B573B574B575B576B577B578B579B58B580B581B582B583B584B585B586B587B588B589B59B590B591B592B593B594B595B596B597B598B599B6B60B600B601B602B603B604B605B606B607B608B609B61B610B611B612B613B614B615B616B617B618B619B62B620B621B622B623B624B625B626B627B628B629B63B630B631B632B633B634B635B636B637B638B639B64B640B641B642B643B644B645B646B647B648B649B65B650B651B652B653B654B655B656B657B658B659B66B660B661B662B663B664B665B666B667B668B669B67B670B671B672B673B674B675B676B677B678B679B68B680B681B682B683B684B685B686B687B688B689B69B690B691B692B693B694B695B696B697B698B699B7B70B700B701B702B703B704B705B706B707B708B709B71B710B711B712B713B714B715B716B717B718B719B72B720B721B722B723B724B725B726B727B728B729B73B730B731B732B733B734B735B736B737B738B739B74B740B741B742B743B744B745B746B747B748B749B75B750B751B752B753B754B755B756B757B758B759B76B760B761B762B763B764B765B766B767B768B769B77B770B771B772B773B774B775B776B777B778B779B78B780B781B782B783B784B785B786B787B788B789B79B790B791B792B793B794B795B796B797B798B799B8B80B800B801B802B803B804B805B806B807B808B809B81B810B811B812B813B814B815B816B817B818B819B82B820B821B822B823B824B825B826B827B828B829B83B830B831B832B833B834B835B836B837B838B839B84B840B841B842B843B844B845B846B847B848B849B85B850B851B852B853B854B855B856B857B858B859B86B860B861B862B863B864B865B866B867B868B869B87B870B871B872B873B874B875B876B877B878B879B88B880B881B882B883B884B885B886B887B888B889B89B890B891B892B893B894B895B896B897B898B899B9B90B900B901B902B903B904B905B906B907B908B909B91B910B911B912B913B914B915B916B917B918B919B92B920B921B922B923B924B925B926B927B928B929B93B930B931B932B933B934B935B936B937B938B939B94B940B941B942B943B944B945B946B947B948B949B95B950B951B952B953B954B955B956B957B958B959B96B960B961B962B963B964B965B966B967B968B969B97B970B971B972B973B974B975B976B977B978B979B98B980B981B982B983B984B985B986B987B988B989B99B990B991B992B993B994B995B996B997B998B999
??
Const_2Const*
_output_shapes	
:?*
dtype0	*?>
value?>B?>	?"?>                                                        	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       b       c       d       e       f       g       h       i       j       k       l       m       n       o       p       q       r       s       t       u       v       w       x       y       z       {       |       }       ~              ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?                                                              	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      
?
StatefulPartitionedCallStatefulPartitionedCall
hash_tableConst_1Const_2*
Tin
2	*
Tout
2*
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
GPU 2J 8? *#
fR
__inference_<lambda>_67473
&
NoOpNoOp^StatefulPartitionedCall
?
Const_3Const"/device:CPU:0*
_output_shapes
: *
dtype0*?

value?
B?
 B?

?
query_model
identifiers
_identifiers

candidates
_candidates
trainable_variables
regularization_losses
	variables
	keras_api

signatures
?
	layer-0

layer_with_weights-0

layer-1
trainable_variables
regularization_losses
	variables
	keras_api
GE
VARIABLE_VALUEidentifiers&identifiers/.ATTRIBUTES/VARIABLE_VALUE
EC
VARIABLE_VALUE
candidates%candidates/.ATTRIBUTES/VARIABLE_VALUE

0
 

0
1
2
?
metrics
trainable_variables
regularization_losses

layers
	variables
layer_regularization_losses
layer_metrics
non_trainable_variables
 
!
lookup_table
	keras_api
b

embeddings
trainable_variables
regularization_losses
	variables
	keras_api

0
 

0
?
metrics
trainable_variables
regularization_losses

layers
	variables
layer_regularization_losses
layer_metrics
non_trainable_variables
ZX
VARIABLE_VALUEembedding/embeddings0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
 

0
 
 

0
1

 _initializer
 

0
 

0
?
!metrics
trainable_variables
regularization_losses

"layers
	variables
#layer_regularization_losses
$layer_metrics
%non_trainable_variables
 

	0

1
 
 
 
 
 
 
 
 
 
r
serving_default_input_1Placeholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCall_1StatefulPartitionedCallserving_default_input_1
hash_tableConstembedding/embeddings
candidatesidentifiers*
Tin

2	*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference_signature_wrapper_67223
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameidentifiers/Read/ReadVariableOpcandidates/Read/ReadVariableOp(embedding/embeddings/Read/ReadVariableOpConst_3*
Tin	
2*
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
GPU 2J 8? *'
f"R 
__inference__traced_save_67511
?
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filenameidentifiers
candidatesembedding/embeddings*
Tin
2*
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
GPU 2J 8? **
f%R#
!__inference__traced_restore_67530??
?
?
E__inference_sequential_layer_call_and_return_conditional_losses_67008

inputsB
>string_lookup_hash_table_lookup_lookuptablefindv2_table_handleC
?string_lookup_hash_table_lookup_lookuptablefindv2_default_value	"
embedding_67004:	?@
identity??!embedding/StatefulPartitionedCall?1string_lookup/hash_table_Lookup/LookupTableFindV2?
1string_lookup/hash_table_Lookup/LookupTableFindV2LookupTableFindV2>string_lookup_hash_table_lookup_lookuptablefindv2_table_handleinputs?string_lookup_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????23
1string_lookup/hash_table_Lookup/LookupTableFindV2?
string_lookup/IdentityIdentity:string_lookup/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????2
string_lookup/Identity?
!embedding/StatefulPartitionedCallStatefulPartitionedCallstring_lookup/Identity:output:0embedding_67004*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_669622#
!embedding/StatefulPartitionedCall?
IdentityIdentity*embedding/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identity?
NoOpNoOp"^embedding/StatefulPartitionedCall2^string_lookup/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2f
1string_lookup/hash_table_Lookup/LookupTableFindV21string_lookup/hash_table_Lookup/LookupTableFindV2:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
*__inference_sequential_layer_call_fn_66976
string_lookup_input
unknown
	unknown_0	
	unknown_1:	?@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallstring_lookup_inputunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_669672
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
#
_output_shapes
:?????????
-
_user_specified_namestring_lookup_input:

_output_shapes
: 
?
?
E__inference_sequential_layer_call_and_return_conditional_losses_67396

inputsB
>string_lookup_hash_table_lookup_lookuptablefindv2_table_handleC
?string_lookup_hash_table_lookup_lookuptablefindv2_default_value	3
 embedding_embedding_lookup_67390:	?@
identity??embedding/embedding_lookup?1string_lookup/hash_table_Lookup/LookupTableFindV2?
1string_lookup/hash_table_Lookup/LookupTableFindV2LookupTableFindV2>string_lookup_hash_table_lookup_lookuptablefindv2_table_handleinputs?string_lookup_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????23
1string_lookup/hash_table_Lookup/LookupTableFindV2?
string_lookup/IdentityIdentity:string_lookup/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????2
string_lookup/Identity?
embedding/embedding_lookupResourceGather embedding_embedding_lookup_67390string_lookup/Identity:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*3
_class)
'%loc:@embedding/embedding_lookup/67390*'
_output_shapes
:?????????@*
dtype02
embedding/embedding_lookup?
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*3
_class)
'%loc:@embedding/embedding_lookup/67390*'
_output_shapes
:?????????@2%
#embedding/embedding_lookup/Identity?
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:?????????@2'
%embedding/embedding_lookup/Identity_1?
IdentityIdentity.embedding/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identity?
NoOpNoOp^embedding/embedding_lookup2^string_lookup/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 28
embedding/embedding_lookupembedding/embedding_lookup2f
1string_lookup/hash_table_Lookup/LookupTableFindV21string_lookup/hash_table_Lookup/LookupTableFindV2:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
*__inference_sequential_layer_call_fn_67028
string_lookup_input
unknown
	unknown_0	
	unknown_1:	?@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallstring_lookup_inputunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_670082
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
#
_output_shapes
:?????????
-
_user_specified_namestring_lookup_input:

_output_shapes
: 
?
?
H__inference_brute_force_5_layer_call_and_return_conditional_losses_67292
input_1M
Isequential_string_lookup_hash_table_lookup_lookuptablefindv2_table_handleN
Jsequential_string_lookup_hash_table_lookup_lookuptablefindv2_default_value	>
+sequential_embedding_embedding_lookup_67276:	?@1
matmul_readvariableop_resource:	?@
gather_resource:	?

identity_1

identity_2??Gather?MatMul/ReadVariableOp?%sequential/embedding/embedding_lookup?<sequential/string_lookup/hash_table_Lookup/LookupTableFindV2?
<sequential/string_lookup/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Isequential_string_lookup_hash_table_lookup_lookuptablefindv2_table_handleinput_1Jsequential_string_lookup_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????2>
<sequential/string_lookup/hash_table_Lookup/LookupTableFindV2?
!sequential/string_lookup/IdentityIdentityEsequential/string_lookup/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????2#
!sequential/string_lookup/Identity?
%sequential/embedding/embedding_lookupResourceGather+sequential_embedding_embedding_lookup_67276*sequential/string_lookup/Identity:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*>
_class4
20loc:@sequential/embedding/embedding_lookup/67276*'
_output_shapes
:?????????@*
dtype02'
%sequential/embedding/embedding_lookup?
.sequential/embedding/embedding_lookup/IdentityIdentity.sequential/embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*>
_class4
20loc:@sequential/embedding/embedding_lookup/67276*'
_output_shapes
:?????????@20
.sequential/embedding/embedding_lookup/Identity?
0sequential/embedding/embedding_lookup/Identity_1Identity7sequential/embedding/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:?????????@22
0sequential/embedding/embedding_lookup/Identity_1?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02
MatMul/ReadVariableOp?
MatMulMatMul9sequential/embedding/embedding_lookup/Identity_1:output:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????*
transpose_b(2
MatMulV
TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :
2

TopKV2/k?
TopKV2TopKV2MatMul:product:0TopKV2/k:output:0*
T0*:
_output_shapes(
&:?????????
:?????????
2
TopKV2?
GatherResourceGathergather_resourceTopKV2:indices:0*
Tindices0*'
_output_shapes
:?????????
*
dtype02
Gatherc
IdentityIdentityGather:output:0*
T0*'
_output_shapes
:?????????
2

Identityn

Identity_1IdentityTopKV2:values:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity_1p

Identity_2IdentityIdentity:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity_2?
NoOpNoOp^Gather^MatMul/ReadVariableOp&^sequential/embedding/embedding_lookup=^sequential/string_lookup/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:?????????: : : : : 2
GatherGather2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2N
%sequential/embedding/embedding_lookup%sequential/embedding/embedding_lookup2|
<sequential/string_lookup/hash_table_Lookup/LookupTableFindV2<sequential/string_lookup/hash_table_Lookup/LookupTableFindV2:L H
#
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: 
?
,
__inference__destroyer_67465
identityP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
ConstQ
IdentityIdentityConst:output:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
?
__inference_<lambda>_674735
1key_value_init60_lookuptableimportv2_table_handle-
)key_value_init60_lookuptableimportv2_keys/
+key_value_init60_lookuptableimportv2_values	
identity??$key_value_init60/LookupTableImportV2?
$key_value_init60/LookupTableImportV2LookupTableImportV21key_value_init60_lookuptableimportv2_table_handle)key_value_init60_lookuptableimportv2_keys+key_value_init60_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 2&
$key_value_init60/LookupTableImportV2S
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
ConstX
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: 2

Identityu
NoOpNoOp%^key_value_init60/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :?:?2L
$key_value_init60/LookupTableImportV2$key_value_init60/LookupTableImportV2:!

_output_shapes	
:?:!

_output_shapes	
:?
?
?
__inference__initializer_674605
1key_value_init60_lookuptableimportv2_table_handle-
)key_value_init60_lookuptableimportv2_keys/
+key_value_init60_lookuptableimportv2_values	
identity??$key_value_init60/LookupTableImportV2?
$key_value_init60/LookupTableImportV2LookupTableImportV21key_value_init60_lookuptableimportv2_table_handle)key_value_init60_lookuptableimportv2_keys+key_value_init60_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 2&
$key_value_init60/LookupTableImportV2P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
ConstX
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: 2

Identityu
NoOpNoOp%^key_value_init60/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :?:?2L
$key_value_init60/LookupTableImportV2$key_value_init60/LookupTableImportV2:!

_output_shapes	
:?:!

_output_shapes	
:?
?

?
-__inference_brute_force_5_layer_call_fn_67349
queries
unknown
	unknown_0	
	unknown_1:	?@
	unknown_2:	?@
	unknown_3:	?
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallqueriesunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2	*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_brute_force_5_layer_call_and_return_conditional_losses_670752
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????
2

Identity_1h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:?????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:L H
#
_output_shapes
:?????????
!
_user_specified_name	queries:

_output_shapes
: 
?
~
)__inference_embedding_layer_call_fn_67447

inputs	
unknown:	?@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_669622
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:?????????: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
H__inference_brute_force_5_layer_call_and_return_conditional_losses_67246
queriesM
Isequential_string_lookup_hash_table_lookup_lookuptablefindv2_table_handleN
Jsequential_string_lookup_hash_table_lookup_lookuptablefindv2_default_value	>
+sequential_embedding_embedding_lookup_67230:	?@1
matmul_readvariableop_resource:	?@
gather_resource:	?

identity_1

identity_2??Gather?MatMul/ReadVariableOp?%sequential/embedding/embedding_lookup?<sequential/string_lookup/hash_table_Lookup/LookupTableFindV2?
<sequential/string_lookup/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Isequential_string_lookup_hash_table_lookup_lookuptablefindv2_table_handlequeriesJsequential_string_lookup_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????2>
<sequential/string_lookup/hash_table_Lookup/LookupTableFindV2?
!sequential/string_lookup/IdentityIdentityEsequential/string_lookup/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????2#
!sequential/string_lookup/Identity?
%sequential/embedding/embedding_lookupResourceGather+sequential_embedding_embedding_lookup_67230*sequential/string_lookup/Identity:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*>
_class4
20loc:@sequential/embedding/embedding_lookup/67230*'
_output_shapes
:?????????@*
dtype02'
%sequential/embedding/embedding_lookup?
.sequential/embedding/embedding_lookup/IdentityIdentity.sequential/embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*>
_class4
20loc:@sequential/embedding/embedding_lookup/67230*'
_output_shapes
:?????????@20
.sequential/embedding/embedding_lookup/Identity?
0sequential/embedding/embedding_lookup/Identity_1Identity7sequential/embedding/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:?????????@22
0sequential/embedding/embedding_lookup/Identity_1?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02
MatMul/ReadVariableOp?
MatMulMatMul9sequential/embedding/embedding_lookup/Identity_1:output:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????*
transpose_b(2
MatMulV
TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :
2

TopKV2/k?
TopKV2TopKV2MatMul:product:0TopKV2/k:output:0*
T0*:
_output_shapes(
&:?????????
:?????????
2
TopKV2?
GatherResourceGathergather_resourceTopKV2:indices:0*
Tindices0*'
_output_shapes
:?????????
*
dtype02
Gatherc
IdentityIdentityGather:output:0*
T0*'
_output_shapes
:?????????
2

Identityn

Identity_1IdentityTopKV2:values:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity_1p

Identity_2IdentityIdentity:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity_2?
NoOpNoOp^Gather^MatMul/ReadVariableOp&^sequential/embedding/embedding_lookup=^sequential/string_lookup/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:?????????: : : : : 2
GatherGather2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2N
%sequential/embedding/embedding_lookup%sequential/embedding/embedding_lookup2|
<sequential/string_lookup/hash_table_Lookup/LookupTableFindV2<sequential/string_lookup/hash_table_Lookup/LookupTableFindV2:L H
#
_output_shapes
:?????????
!
_user_specified_name	queries:

_output_shapes
: 
?
?
H__inference_brute_force_5_layer_call_and_return_conditional_losses_67075
queries
sequential_67057
sequential_67059	#
sequential_67061:	?@1
matmul_readvariableop_resource:	?@
gather_resource:	?

identity_1

identity_2??Gather?MatMul/ReadVariableOp?"sequential/StatefulPartitionedCall?
"sequential/StatefulPartitionedCallStatefulPartitionedCallqueriessequential_67057sequential_67059sequential_67061*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_669672$
"sequential/StatefulPartitionedCall?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02
MatMul/ReadVariableOp?
MatMulMatMul+sequential/StatefulPartitionedCall:output:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????*
transpose_b(2
MatMulV
TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :
2

TopKV2/k?
TopKV2TopKV2MatMul:product:0TopKV2/k:output:0*
T0*:
_output_shapes(
&:?????????
:?????????
2
TopKV2?
GatherResourceGathergather_resourceTopKV2:indices:0*
Tindices0*'
_output_shapes
:?????????
*
dtype02
Gatherc
IdentityIdentityGather:output:0*
T0*'
_output_shapes
:?????????
2

Identityn

Identity_1IdentityTopKV2:values:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity_1p

Identity_2IdentityIdentity:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity_2?
NoOpNoOp^Gather^MatMul/ReadVariableOp#^sequential/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:?????????: : : : : 2
GatherGather2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall:L H
#
_output_shapes
:?????????
!
_user_specified_name	queries:

_output_shapes
: 
?

?
-__inference_brute_force_5_layer_call_fn_67366
queries
unknown
	unknown_0	
	unknown_1:	?@
	unknown_2:	?@
	unknown_3:	?
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallqueriesunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2	*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_brute_force_5_layer_call_and_return_conditional_losses_671302
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????
2

Identity_1h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:?????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:L H
#
_output_shapes
:?????????
!
_user_specified_name	queries:

_output_shapes
: 
?

?
-__inference_brute_force_5_layer_call_fn_67383
input_1
unknown
	unknown_0	
	unknown_1:	?@
	unknown_2:	?@
	unknown_3:	?
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2	*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_brute_force_5_layer_call_and_return_conditional_losses_671302
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????
2

Identity_1h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:?????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:L H
#
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: 
?
?
*__inference_sequential_layer_call_fn_67431

inputs
unknown
	unknown_0	
	unknown_1:	?@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_670082
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?	
?
D__inference_embedding_layer_call_and_return_conditional_losses_66962

inputs	)
embedding_lookup_66956:	?@
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_66956inputs",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*)
_class
loc:@embedding_lookup/66956*'
_output_shapes
:?????????@*
dtype02
embedding_lookup?
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@embedding_lookup/66956*'
_output_shapes
:?????????@2
embedding_lookup/Identity?
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:?????????@2
embedding_lookup/Identity_1
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identitya
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:?????????: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs
?$
?
 __inference__wrapped_model_66942
input_1[
Wbrute_force_5_sequential_string_lookup_hash_table_lookup_lookuptablefindv2_table_handle\
Xbrute_force_5_sequential_string_lookup_hash_table_lookup_lookuptablefindv2_default_value	L
9brute_force_5_sequential_embedding_embedding_lookup_66926:	?@?
,brute_force_5_matmul_readvariableop_resource:	?@,
brute_force_5_gather_resource:	?
identity

identity_1??brute_force_5/Gather?#brute_force_5/MatMul/ReadVariableOp?3brute_force_5/sequential/embedding/embedding_lookup?Jbrute_force_5/sequential/string_lookup/hash_table_Lookup/LookupTableFindV2?
Jbrute_force_5/sequential/string_lookup/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Wbrute_force_5_sequential_string_lookup_hash_table_lookup_lookuptablefindv2_table_handleinput_1Xbrute_force_5_sequential_string_lookup_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????2L
Jbrute_force_5/sequential/string_lookup/hash_table_Lookup/LookupTableFindV2?
/brute_force_5/sequential/string_lookup/IdentityIdentitySbrute_force_5/sequential/string_lookup/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????21
/brute_force_5/sequential/string_lookup/Identity?
3brute_force_5/sequential/embedding/embedding_lookupResourceGather9brute_force_5_sequential_embedding_embedding_lookup_669268brute_force_5/sequential/string_lookup/Identity:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*L
_classB
@>loc:@brute_force_5/sequential/embedding/embedding_lookup/66926*'
_output_shapes
:?????????@*
dtype025
3brute_force_5/sequential/embedding/embedding_lookup?
<brute_force_5/sequential/embedding/embedding_lookup/IdentityIdentity<brute_force_5/sequential/embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*L
_classB
@>loc:@brute_force_5/sequential/embedding/embedding_lookup/66926*'
_output_shapes
:?????????@2>
<brute_force_5/sequential/embedding/embedding_lookup/Identity?
>brute_force_5/sequential/embedding/embedding_lookup/Identity_1IdentityEbrute_force_5/sequential/embedding/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:?????????@2@
>brute_force_5/sequential/embedding/embedding_lookup/Identity_1?
#brute_force_5/MatMul/ReadVariableOpReadVariableOp,brute_force_5_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02%
#brute_force_5/MatMul/ReadVariableOp?
brute_force_5/MatMulMatMulGbrute_force_5/sequential/embedding/embedding_lookup/Identity_1:output:0+brute_force_5/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????*
transpose_b(2
brute_force_5/MatMulr
brute_force_5/TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :
2
brute_force_5/TopKV2/k?
brute_force_5/TopKV2TopKV2brute_force_5/MatMul:product:0brute_force_5/TopKV2/k:output:0*
T0*:
_output_shapes(
&:?????????
:?????????
2
brute_force_5/TopKV2?
brute_force_5/GatherResourceGatherbrute_force_5_gather_resourcebrute_force_5/TopKV2:indices:0*
Tindices0*'
_output_shapes
:?????????
*
dtype02
brute_force_5/Gather?
brute_force_5/IdentityIdentitybrute_force_5/Gather:output:0*
T0*'
_output_shapes
:?????????
2
brute_force_5/Identityx
IdentityIdentitybrute_force_5/TopKV2:values:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity~

Identity_1Identitybrute_force_5/Identity:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity_1?
NoOpNoOp^brute_force_5/Gather$^brute_force_5/MatMul/ReadVariableOp4^brute_force_5/sequential/embedding/embedding_lookupK^brute_force_5/sequential/string_lookup/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:?????????: : : : : 2,
brute_force_5/Gatherbrute_force_5/Gather2J
#brute_force_5/MatMul/ReadVariableOp#brute_force_5/MatMul/ReadVariableOp2j
3brute_force_5/sequential/embedding/embedding_lookup3brute_force_5/sequential/embedding/embedding_lookup2?
Jbrute_force_5/sequential/string_lookup/hash_table_Lookup/LookupTableFindV2Jbrute_force_5/sequential/string_lookup/hash_table_Lookup/LookupTableFindV2:L H
#
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: 
?	
?
D__inference_embedding_layer_call_and_return_conditional_losses_67440

inputs	)
embedding_lookup_67434:	?@
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_67434inputs",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*)
_class
loc:@embedding_lookup/67434*'
_output_shapes
:?????????@*
dtype02
embedding_lookup?
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@embedding_lookup/67434*'
_output_shapes
:?????????@2
embedding_lookup/Identity?
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:?????????@2
embedding_lookup/Identity_1
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identitya
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:?????????: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_sequential_layer_call_fn_67420

inputs
unknown
	unknown_0	
	unknown_1:	?@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_669672
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
:
__inference__creator_67452
identity??
hash_tablex

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name61*
value_dtype0	2

hash_tablec
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: 2

Identity[
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
?
?
E__inference_sequential_layer_call_and_return_conditional_losses_67409

inputsB
>string_lookup_hash_table_lookup_lookuptablefindv2_table_handleC
?string_lookup_hash_table_lookup_lookuptablefindv2_default_value	3
 embedding_embedding_lookup_67403:	?@
identity??embedding/embedding_lookup?1string_lookup/hash_table_Lookup/LookupTableFindV2?
1string_lookup/hash_table_Lookup/LookupTableFindV2LookupTableFindV2>string_lookup_hash_table_lookup_lookuptablefindv2_table_handleinputs?string_lookup_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????23
1string_lookup/hash_table_Lookup/LookupTableFindV2?
string_lookup/IdentityIdentity:string_lookup/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????2
string_lookup/Identity?
embedding/embedding_lookupResourceGather embedding_embedding_lookup_67403string_lookup/Identity:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*3
_class)
'%loc:@embedding/embedding_lookup/67403*'
_output_shapes
:?????????@*
dtype02
embedding/embedding_lookup?
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*3
_class)
'%loc:@embedding/embedding_lookup/67403*'
_output_shapes
:?????????@2%
#embedding/embedding_lookup/Identity?
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:?????????@2'
%embedding/embedding_lookup/Identity_1?
IdentityIdentity.embedding/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identity?
NoOpNoOp^embedding/embedding_lookup2^string_lookup/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 28
embedding/embedding_lookupembedding/embedding_lookup2f
1string_lookup/hash_table_Lookup/LookupTableFindV21string_lookup/hash_table_Lookup/LookupTableFindV2:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
H__inference_brute_force_5_layer_call_and_return_conditional_losses_67315
input_1M
Isequential_string_lookup_hash_table_lookup_lookuptablefindv2_table_handleN
Jsequential_string_lookup_hash_table_lookup_lookuptablefindv2_default_value	>
+sequential_embedding_embedding_lookup_67299:	?@1
matmul_readvariableop_resource:	?@
gather_resource:	?

identity_1

identity_2??Gather?MatMul/ReadVariableOp?%sequential/embedding/embedding_lookup?<sequential/string_lookup/hash_table_Lookup/LookupTableFindV2?
<sequential/string_lookup/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Isequential_string_lookup_hash_table_lookup_lookuptablefindv2_table_handleinput_1Jsequential_string_lookup_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????2>
<sequential/string_lookup/hash_table_Lookup/LookupTableFindV2?
!sequential/string_lookup/IdentityIdentityEsequential/string_lookup/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????2#
!sequential/string_lookup/Identity?
%sequential/embedding/embedding_lookupResourceGather+sequential_embedding_embedding_lookup_67299*sequential/string_lookup/Identity:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*>
_class4
20loc:@sequential/embedding/embedding_lookup/67299*'
_output_shapes
:?????????@*
dtype02'
%sequential/embedding/embedding_lookup?
.sequential/embedding/embedding_lookup/IdentityIdentity.sequential/embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*>
_class4
20loc:@sequential/embedding/embedding_lookup/67299*'
_output_shapes
:?????????@20
.sequential/embedding/embedding_lookup/Identity?
0sequential/embedding/embedding_lookup/Identity_1Identity7sequential/embedding/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:?????????@22
0sequential/embedding/embedding_lookup/Identity_1?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02
MatMul/ReadVariableOp?
MatMulMatMul9sequential/embedding/embedding_lookup/Identity_1:output:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????*
transpose_b(2
MatMulV
TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :
2

TopKV2/k?
TopKV2TopKV2MatMul:product:0TopKV2/k:output:0*
T0*:
_output_shapes(
&:?????????
:?????????
2
TopKV2?
GatherResourceGathergather_resourceTopKV2:indices:0*
Tindices0*'
_output_shapes
:?????????
*
dtype02
Gatherc
IdentityIdentityGather:output:0*
T0*'
_output_shapes
:?????????
2

Identityn

Identity_1IdentityTopKV2:values:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity_1p

Identity_2IdentityIdentity:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity_2?
NoOpNoOp^Gather^MatMul/ReadVariableOp&^sequential/embedding/embedding_lookup=^sequential/string_lookup/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:?????????: : : : : 2
GatherGather2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2N
%sequential/embedding/embedding_lookup%sequential/embedding/embedding_lookup2|
<sequential/string_lookup/hash_table_Lookup/LookupTableFindV2<sequential/string_lookup/hash_table_Lookup/LookupTableFindV2:L H
#
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: 
?
?
E__inference_sequential_layer_call_and_return_conditional_losses_67050
string_lookup_inputB
>string_lookup_hash_table_lookup_lookuptablefindv2_table_handleC
?string_lookup_hash_table_lookup_lookuptablefindv2_default_value	"
embedding_67046:	?@
identity??!embedding/StatefulPartitionedCall?1string_lookup/hash_table_Lookup/LookupTableFindV2?
1string_lookup/hash_table_Lookup/LookupTableFindV2LookupTableFindV2>string_lookup_hash_table_lookup_lookuptablefindv2_table_handlestring_lookup_input?string_lookup_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????23
1string_lookup/hash_table_Lookup/LookupTableFindV2?
string_lookup/IdentityIdentity:string_lookup/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????2
string_lookup/Identity?
!embedding/StatefulPartitionedCallStatefulPartitionedCallstring_lookup/Identity:output:0embedding_67046*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_669622#
!embedding/StatefulPartitionedCall?
IdentityIdentity*embedding/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identity?
NoOpNoOp"^embedding/StatefulPartitionedCall2^string_lookup/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2f
1string_lookup/hash_table_Lookup/LookupTableFindV21string_lookup/hash_table_Lookup/LookupTableFindV2:X T
#
_output_shapes
:?????????
-
_user_specified_namestring_lookup_input:

_output_shapes
: 
?
?
E__inference_sequential_layer_call_and_return_conditional_losses_67039
string_lookup_inputB
>string_lookup_hash_table_lookup_lookuptablefindv2_table_handleC
?string_lookup_hash_table_lookup_lookuptablefindv2_default_value	"
embedding_67035:	?@
identity??!embedding/StatefulPartitionedCall?1string_lookup/hash_table_Lookup/LookupTableFindV2?
1string_lookup/hash_table_Lookup/LookupTableFindV2LookupTableFindV2>string_lookup_hash_table_lookup_lookuptablefindv2_table_handlestring_lookup_input?string_lookup_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????23
1string_lookup/hash_table_Lookup/LookupTableFindV2?
string_lookup/IdentityIdentity:string_lookup/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????2
string_lookup/Identity?
!embedding/StatefulPartitionedCallStatefulPartitionedCallstring_lookup/Identity:output:0embedding_67035*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_669622#
!embedding/StatefulPartitionedCall?
IdentityIdentity*embedding/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identity?
NoOpNoOp"^embedding/StatefulPartitionedCall2^string_lookup/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2f
1string_lookup/hash_table_Lookup/LookupTableFindV21string_lookup/hash_table_Lookup/LookupTableFindV2:X T
#
_output_shapes
:?????????
-
_user_specified_namestring_lookup_input:

_output_shapes
: 
?
?
!__inference__traced_restore_67530
file_prefix+
assignvariableop_identifiers:	?0
assignvariableop_1_candidates:	?@:
'assignvariableop_2_embedding_embeddings:	?@

identity_4??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_2?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B&identifiers/.ATTRIBUTES/VARIABLE_VALUEB%candidates/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*$
_output_shapes
::::*
dtypes
22
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOpassignvariableop_identifiersIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOpassignvariableop_1_candidatesIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp'assignvariableop_2_embedding_embeddingsIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?

Identity_3Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_3c

Identity_4IdentityIdentity_3:output:0^NoOp_1*
T0*
_output_shapes
: 2

Identity_4?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"!

identity_4Identity_4:output:0*
_input_shapes

: : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_2:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
H__inference_brute_force_5_layer_call_and_return_conditional_losses_67269
queriesM
Isequential_string_lookup_hash_table_lookup_lookuptablefindv2_table_handleN
Jsequential_string_lookup_hash_table_lookup_lookuptablefindv2_default_value	>
+sequential_embedding_embedding_lookup_67253:	?@1
matmul_readvariableop_resource:	?@
gather_resource:	?

identity_1

identity_2??Gather?MatMul/ReadVariableOp?%sequential/embedding/embedding_lookup?<sequential/string_lookup/hash_table_Lookup/LookupTableFindV2?
<sequential/string_lookup/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Isequential_string_lookup_hash_table_lookup_lookuptablefindv2_table_handlequeriesJsequential_string_lookup_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????2>
<sequential/string_lookup/hash_table_Lookup/LookupTableFindV2?
!sequential/string_lookup/IdentityIdentityEsequential/string_lookup/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????2#
!sequential/string_lookup/Identity?
%sequential/embedding/embedding_lookupResourceGather+sequential_embedding_embedding_lookup_67253*sequential/string_lookup/Identity:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0	*>
_class4
20loc:@sequential/embedding/embedding_lookup/67253*'
_output_shapes
:?????????@*
dtype02'
%sequential/embedding/embedding_lookup?
.sequential/embedding/embedding_lookup/IdentityIdentity.sequential/embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*>
_class4
20loc:@sequential/embedding/embedding_lookup/67253*'
_output_shapes
:?????????@20
.sequential/embedding/embedding_lookup/Identity?
0sequential/embedding/embedding_lookup/Identity_1Identity7sequential/embedding/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:?????????@22
0sequential/embedding/embedding_lookup/Identity_1?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02
MatMul/ReadVariableOp?
MatMulMatMul9sequential/embedding/embedding_lookup/Identity_1:output:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????*
transpose_b(2
MatMulV
TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :
2

TopKV2/k?
TopKV2TopKV2MatMul:product:0TopKV2/k:output:0*
T0*:
_output_shapes(
&:?????????
:?????????
2
TopKV2?
GatherResourceGathergather_resourceTopKV2:indices:0*
Tindices0*'
_output_shapes
:?????????
*
dtype02
Gatherc
IdentityIdentityGather:output:0*
T0*'
_output_shapes
:?????????
2

Identityn

Identity_1IdentityTopKV2:values:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity_1p

Identity_2IdentityIdentity:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity_2?
NoOpNoOp^Gather^MatMul/ReadVariableOp&^sequential/embedding/embedding_lookup=^sequential/string_lookup/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:?????????: : : : : 2
GatherGather2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2N
%sequential/embedding/embedding_lookup%sequential/embedding/embedding_lookup2|
<sequential/string_lookup/hash_table_Lookup/LookupTableFindV2<sequential/string_lookup/hash_table_Lookup/LookupTableFindV2:L H
#
_output_shapes
:?????????
!
_user_specified_name	queries:

_output_shapes
: 
?
?
__inference__traced_save_67511
file_prefix*
&savev2_identifiers_read_readvariableop)
%savev2_candidates_read_readvariableop3
/savev2_embedding_embeddings_read_readvariableop
savev2_const_3

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
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B&identifiers/.ATTRIBUTES/VARIABLE_VALUEB%candidates/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0&savev2_identifiers_read_readvariableop%savev2_candidates_read_readvariableop/savev2_embedding_embeddings_read_readvariableopsavev2_const_3"/device:CPU:0*
_output_shapes
 *
dtypes
22
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

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*4
_input_shapes#
!: :?:	?@:	?@: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:!

_output_shapes	
:?:%!

_output_shapes
:	?@:%!

_output_shapes
:	?@:

_output_shapes
: 
?

?
#__inference_signature_wrapper_67223
input_1
unknown
	unknown_0	
	unknown_1:	?@
	unknown_2:	?@
	unknown_3:	?
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2	*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__wrapped_model_669422
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????
2

Identity_1h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:?????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:L H
#
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: 
?

?
-__inference_brute_force_5_layer_call_fn_67332
input_1
unknown
	unknown_0	
	unknown_1:	?@
	unknown_2:	?@
	unknown_3:	?
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2	*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????
:?????????
*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_brute_force_5_layer_call_and_return_conditional_losses_670752
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????
2

Identity_1h
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:?????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:L H
#
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: 
?
?
H__inference_brute_force_5_layer_call_and_return_conditional_losses_67130
queries
sequential_67112
sequential_67114	#
sequential_67116:	?@1
matmul_readvariableop_resource:	?@
gather_resource:	?

identity_1

identity_2??Gather?MatMul/ReadVariableOp?"sequential/StatefulPartitionedCall?
"sequential/StatefulPartitionedCallStatefulPartitionedCallqueriessequential_67112sequential_67114sequential_67116*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_670082$
"sequential/StatefulPartitionedCall?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02
MatMul/ReadVariableOp?
MatMulMatMul+sequential/StatefulPartitionedCall:output:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????*
transpose_b(2
MatMulV
TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :
2

TopKV2/k?
TopKV2TopKV2MatMul:product:0TopKV2/k:output:0*
T0*:
_output_shapes(
&:?????????
:?????????
2
TopKV2?
GatherResourceGathergather_resourceTopKV2:indices:0*
Tindices0*'
_output_shapes
:?????????
*
dtype02
Gatherc
IdentityIdentityGather:output:0*
T0*'
_output_shapes
:?????????
2

Identityn

Identity_1IdentityTopKV2:values:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity_1p

Identity_2IdentityIdentity:output:0^NoOp*
T0*'
_output_shapes
:?????????
2

Identity_2?
NoOpNoOp^Gather^MatMul/ReadVariableOp#^sequential/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:?????????: : : : : 2
GatherGather2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall:L H
#
_output_shapes
:?????????
!
_user_specified_name	queries:

_output_shapes
: 
?
?
E__inference_sequential_layer_call_and_return_conditional_losses_66967

inputsB
>string_lookup_hash_table_lookup_lookuptablefindv2_table_handleC
?string_lookup_hash_table_lookup_lookuptablefindv2_default_value	"
embedding_66963:	?@
identity??!embedding/StatefulPartitionedCall?1string_lookup/hash_table_Lookup/LookupTableFindV2?
1string_lookup/hash_table_Lookup/LookupTableFindV2LookupTableFindV2>string_lookup_hash_table_lookup_lookuptablefindv2_table_handleinputs?string_lookup_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????23
1string_lookup/hash_table_Lookup/LookupTableFindV2?
string_lookup/IdentityIdentity:string_lookup/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:?????????2
string_lookup/Identity?
!embedding/StatefulPartitionedCallStatefulPartitionedCallstring_lookup/Identity:output:0embedding_66963*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_669622#
!embedding/StatefulPartitionedCall?
IdentityIdentity*embedding/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identity?
NoOpNoOp"^embedding/StatefulPartitionedCall2^string_lookup/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: : : 2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2f
1string_lookup/hash_table_Lookup/LookupTableFindV21string_lookup/hash_table_Lookup/LookupTableFindV2:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: "?L
saver_filename:0StatefulPartitionedCall_2:0StatefulPartitionedCall_38"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
7
input_1,
serving_default_input_1:0?????????>
output_12
StatefulPartitionedCall_1:0?????????
>
output_22
StatefulPartitionedCall_1:1?????????
tensorflow/serving/predict:?N
?
query_model
identifiers
_identifiers

candidates
_candidates
trainable_variables
regularization_losses
	variables
	keras_api

signatures
*&&call_and_return_all_conditional_losses
'__call__
(_default_save_signature
)query_with_exclusions"
_tf_keras_model
?
	layer-0

layer_with_weights-0

layer-1
trainable_variables
regularization_losses
	variables
	keras_api
**&call_and_return_all_conditional_losses
+__call__"
_tf_keras_sequential
:?2identifiers
:	?@2
candidates
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
?
metrics
trainable_variables
regularization_losses

layers
	variables
layer_regularization_losses
layer_metrics
non_trainable_variables
'__call__
(_default_save_signature
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses"
_generic_user_object
,
,serving_default"
signature_map
:
lookup_table
	keras_api"
_tf_keras_layer
?

embeddings
trainable_variables
regularization_losses
	variables
	keras_api
*-&call_and_return_all_conditional_losses
.__call__"
_tf_keras_layer
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
?
metrics
trainable_variables
regularization_losses

layers
	variables
layer_regularization_losses
layer_metrics
non_trainable_variables
+__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses"
_generic_user_object
':%	?@2embedding/embeddings
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
R
 _initializer
/_create_resource
0_initialize
1_destroy_resourceR 
"
_generic_user_object
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
?
!metrics
trainable_variables
regularization_losses

"layers
	variables
#layer_regularization_losses
$layer_metrics
%non_trainable_variables
.__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
	0

1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
"
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
?2?
H__inference_brute_force_5_layer_call_and_return_conditional_losses_67246
H__inference_brute_force_5_layer_call_and_return_conditional_losses_67269
H__inference_brute_force_5_layer_call_and_return_conditional_losses_67292
H__inference_brute_force_5_layer_call_and_return_conditional_losses_67315?
???
FullArgSpec/
args'?$
jself
	jqueries
jk

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
-__inference_brute_force_5_layer_call_fn_67332
-__inference_brute_force_5_layer_call_fn_67349
-__inference_brute_force_5_layer_call_fn_67366
-__inference_brute_force_5_layer_call_fn_67383?
???
FullArgSpec/
args'?$
jself
	jqueries
jk

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
 __inference__wrapped_model_66942input_1"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec1
args)?&
jself
	jqueries
j
exclusions
jk
varargs
 
varkw
 
defaults?

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_sequential_layer_call_and_return_conditional_losses_67396
E__inference_sequential_layer_call_and_return_conditional_losses_67409
E__inference_sequential_layer_call_and_return_conditional_losses_67039
E__inference_sequential_layer_call_and_return_conditional_losses_67050?
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
?2?
*__inference_sequential_layer_call_fn_66976
*__inference_sequential_layer_call_fn_67420
*__inference_sequential_layer_call_fn_67431
*__inference_sequential_layer_call_fn_67028?
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
?B?
#__inference_signature_wrapper_67223input_1"?
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
?2?
D__inference_embedding_layer_call_and_return_conditional_losses_67440?
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
)__inference_embedding_layer_call_fn_67447?
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
__inference__creator_67452?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__initializer_67460?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_67465?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
	J
Const
J	
Const_1
J	
Const_26
__inference__creator_67452?

? 
? "? 8
__inference__destroyer_67465?

? 
? "? ?
__inference__initializer_6746034?

? 
? "? ?
 __inference__wrapped_model_66942?2,?)
"?
?
input_1?????????
? "c?`
.
output_1"?
output_1?????????

.
output_2"?
output_2?????????
?
H__inference_brute_force_5_layer_call_and_return_conditional_losses_67246?24?1
*?'
?
queries?????????

 
p 
? "K?H
A?>
?
0/0?????????

?
0/1?????????

? ?
H__inference_brute_force_5_layer_call_and_return_conditional_losses_67269?24?1
*?'
?
queries?????????

 
p
? "K?H
A?>
?
0/0?????????

?
0/1?????????

? ?
H__inference_brute_force_5_layer_call_and_return_conditional_losses_67292?24?1
*?'
?
input_1?????????

 
p 
? "K?H
A?>
?
0/0?????????

?
0/1?????????

? ?
H__inference_brute_force_5_layer_call_and_return_conditional_losses_67315?24?1
*?'
?
input_1?????????

 
p
? "K?H
A?>
?
0/0?????????

?
0/1?????????

? ?
-__inference_brute_force_5_layer_call_fn_67332|24?1
*?'
?
input_1?????????

 
p 
? "=?:
?
0?????????

?
1?????????
?
-__inference_brute_force_5_layer_call_fn_67349|24?1
*?'
?
queries?????????

 
p 
? "=?:
?
0?????????

?
1?????????
?
-__inference_brute_force_5_layer_call_fn_67366|24?1
*?'
?
queries?????????

 
p
? "=?:
?
0?????????

?
1?????????
?
-__inference_brute_force_5_layer_call_fn_67383|24?1
*?'
?
input_1?????????

 
p
? "=?:
?
0?????????

?
1?????????
?
D__inference_embedding_layer_call_and_return_conditional_losses_67440W+?(
!?
?
inputs?????????	
? "%?"
?
0?????????@
? w
)__inference_embedding_layer_call_fn_67447J+?(
!?
?
inputs?????????	
? "??????????@?
E__inference_sequential_layer_call_and_return_conditional_losses_67039n2@?=
6?3
)?&
string_lookup_input?????????
p 

 
? "%?"
?
0?????????@
? ?
E__inference_sequential_layer_call_and_return_conditional_losses_67050n2@?=
6?3
)?&
string_lookup_input?????????
p

 
? "%?"
?
0?????????@
? ?
E__inference_sequential_layer_call_and_return_conditional_losses_67396a23?0
)?&
?
inputs?????????
p 

 
? "%?"
?
0?????????@
? ?
E__inference_sequential_layer_call_and_return_conditional_losses_67409a23?0
)?&
?
inputs?????????
p

 
? "%?"
?
0?????????@
? ?
*__inference_sequential_layer_call_fn_66976a2@?=
6?3
)?&
string_lookup_input?????????
p 

 
? "??????????@?
*__inference_sequential_layer_call_fn_67028a2@?=
6?3
)?&
string_lookup_input?????????
p

 
? "??????????@?
*__inference_sequential_layer_call_fn_67420T23?0
)?&
?
inputs?????????
p 

 
? "??????????@?
*__inference_sequential_layer_call_fn_67431T23?0
)?&
?
inputs?????????
p

 
? "??????????@?
#__inference_signature_wrapper_67223?27?4
? 
-?*
(
input_1?
input_1?????????"c?`
.
output_1"?
output_1?????????

.
output_2"?
output_2?????????
