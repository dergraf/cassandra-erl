%%
%% Autogenerated by Thrift
%%
%% DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
%%

-module(cassandra_types).

-include("cassandra_types.hrl").

-export([struct_info/1]).
%% struct column

% -record(column, {name, value, timestamp, ttl}).

struct_info('column') ->
  {struct, [{1, string},
  {2, string},
  {3, i64},
  {4, i32}]}
;

%% struct superColumn

% -record(superColumn, {name, columns}).

struct_info('superColumn') ->
  {struct, [{1, string},
  {2, {list, {struct, {'cassandra_types', 'column'}}}}]}
;

%% struct counterColumn

% -record(counterColumn, {name, value}).

struct_info('counterColumn') ->
  {struct, [{1, string},
  {2, i64}]}
;

%% struct counterSuperColumn

% -record(counterSuperColumn, {name, columns}).

struct_info('counterSuperColumn') ->
  {struct, [{1, string},
  {2, {list, {struct, {'cassandra_types', 'counterColumn'}}}}]}
;

%% struct columnOrSuperColumn

% -record(columnOrSuperColumn, {column, super_column, counter_column, counter_super_column}).

struct_info('columnOrSuperColumn') ->
  {struct, [{1, {struct, {'cassandra_types', 'column'}}},
  {2, {struct, {'cassandra_types', 'superColumn'}}},
  {3, {struct, {'cassandra_types', 'counterColumn'}}},
  {4, {struct, {'cassandra_types', 'counterSuperColumn'}}}]}
;

%% struct notFoundException

% -record(notFoundException, {}).

struct_info('notFoundException') ->
  {struct, []}
;

%% struct invalidRequestException

% -record(invalidRequestException, {why}).

struct_info('invalidRequestException') ->
  {struct, [{1, string}]}
;

%% struct unavailableException

% -record(unavailableException, {}).

struct_info('unavailableException') ->
  {struct, []}
;

%% struct timedOutException

% -record(timedOutException, {}).

struct_info('timedOutException') ->
  {struct, []}
;

%% struct authenticationException

% -record(authenticationException, {why}).

struct_info('authenticationException') ->
  {struct, [{1, string}]}
;

%% struct authorizationException

% -record(authorizationException, {why}).

struct_info('authorizationException') ->
  {struct, [{1, string}]}
;

%% struct schemaDisagreementException

% -record(schemaDisagreementException, {}).

struct_info('schemaDisagreementException') ->
  {struct, []}
;

%% struct columnParent

% -record(columnParent, {column_family, super_column}).

struct_info('columnParent') ->
  {struct, [{3, string},
  {4, string}]}
;

%% struct columnPath

% -record(columnPath, {column_family, super_column, column}).

struct_info('columnPath') ->
  {struct, [{3, string},
  {4, string},
  {5, string}]}
;

%% struct sliceRange

% -record(sliceRange, {start, finish, reversed, count}).

struct_info('sliceRange') ->
  {struct, [{1, string},
  {2, string},
  {3, bool},
  {4, i32}]}
;

%% struct slicePredicate

% -record(slicePredicate, {column_names, slice_range}).

struct_info('slicePredicate') ->
  {struct, [{1, {list, string}},
  {2, {struct, {'cassandra_types', 'sliceRange'}}}]}
;

%% struct indexExpression

% -record(indexExpression, {column_name, op, value}).

struct_info('indexExpression') ->
  {struct, [{1, string},
  {2, i32},
  {3, string}]}
;

%% struct indexClause

% -record(indexClause, {expressions, start_key, count}).

struct_info('indexClause') ->
  {struct, [{1, {list, {struct, {'cassandra_types', 'indexExpression'}}}},
  {2, string},
  {3, i32}]}
;

%% struct keyRange

% -record(keyRange, {start_key, end_key, start_token, end_token, count}).

struct_info('keyRange') ->
  {struct, [{1, string},
  {2, string},
  {3, string},
  {4, string},
  {5, i32}]}
;

%% struct keySlice

% -record(keySlice, {key, columns}).

struct_info('keySlice') ->
  {struct, [{1, string},
  {2, {list, {struct, {'cassandra_types', 'columnOrSuperColumn'}}}}]}
;

%% struct keyCount

% -record(keyCount, {key, count}).

struct_info('keyCount') ->
  {struct, [{1, string},
  {2, i32}]}
;

%% struct deletion

% -record(deletion, {timestamp, super_column, predicate}).

struct_info('deletion') ->
  {struct, [{1, i64},
  {2, string},
  {3, {struct, {'cassandra_types', 'slicePredicate'}}}]}
;

%% struct mutation

% -record(mutation, {column_or_supercolumn, deletion}).

struct_info('mutation') ->
  {struct, [{1, {struct, {'cassandra_types', 'columnOrSuperColumn'}}},
  {2, {struct, {'cassandra_types', 'deletion'}}}]}
;

%% struct tokenRange

% -record(tokenRange, {start_token, end_token, endpoints}).

struct_info('tokenRange') ->
  {struct, [{1, string},
  {2, string},
  {3, {list, string}}]}
;

%% struct authenticationRequest

% -record(authenticationRequest, {credentials}).

struct_info('authenticationRequest') ->
  {struct, [{1, {map, string, string}}]}
;

%% struct columnDef

% -record(columnDef, {name, validation_class, index_type, index_name}).

struct_info('columnDef') ->
  {struct, [{1, string},
  {2, string},
  {3, i32},
  {4, string}]}
;

%% struct cfDef

% -record(cfDef, {keyspace, name, column_type, comparator_type, subcomparator_type, comment, row_cache_size, key_cache_size, read_repair_chance, column_metadata, gc_grace_seconds, default_validation_class, id, min_compaction_threshold, max_compaction_threshold, row_cache_save_period_in_seconds, key_cache_save_period_in_seconds, memtable_flush_after_mins, memtable_throughput_in_mb, memtable_operations_in_millions, replicate_on_write, merge_shards_chance, key_validation_class, row_cache_provider, key_alias}).

struct_info('cfDef') ->
  {struct, [{1, string},
  {2, string},
  {3, string},
  {5, string},
  {6, string},
  {8, string},
  {9, double},
  {11, double},
  {12, double},
  {13, {list, {struct, {'cassandra_types', 'columnDef'}}}},
  {14, i32},
  {15, string},
  {16, i32},
  {17, i32},
  {18, i32},
  {19, i32},
  {20, i32},
  {21, i32},
  {22, i32},
  {23, double},
  {24, bool},
  {25, double},
  {26, string},
  {27, string},
  {28, string}]}
;

%% struct ksDef

% -record(ksDef, {name, strategy_class, strategy_options, replication_factor, cf_defs}).

struct_info('ksDef') ->
  {struct, [{1, string},
  {2, string},
  {3, {map, string, string}},
  {4, i32},
  {5, {list, {struct, {'cassandra_types', 'cfDef'}}}}]}
;

%% struct cqlRow

% -record(cqlRow, {key, columns}).

struct_info('cqlRow') ->
  {struct, [{1, string},
  {2, {list, {struct, {'cassandra_types', 'column'}}}}]}
;

%% struct cqlResult

% -record(cqlResult, {type, rows, num}).

struct_info('cqlResult') ->
  {struct, [{1, i32},
  {2, {list, {struct, {'cassandra_types', 'cqlRow'}}}},
  {3, i32}]}
;

struct_info('i am a dummy struct') -> undefined.
