-module(cassandra_client_util).

-export([
    describe_version/1,
    mutate/3,
    get_column/5,
    get_counter/5,
    get_column_slice/5,
    get_counter_slice/5,
    incr/6,
    new/1
  ]).

new(Client) ->
    {?MODULE, Client}.

describe_version({?MODULE, Client}) ->
  cassandra_client:describe_version(Client).

get_column(Row, CF, Name, CL, {?MODULE, Client}) ->
  cassandra_client:get_column(Client, Row, CF, Name, CL).

get_counter(Row, CF, Name, CL, {?MODULE, Client}) ->
  cassandra_client:get_counter(Client, Row, CF, Name, CL).

mutate(Mutations, CL, {?MODULE, Client}) ->
  cassandra_client:mutate(Client, Mutations, CL).

get_counter_slice(Row, CF, Options, CL, {?MODULE, Client}) ->
  cassandra_client:get_counter_slice(Client, Row, CF, Options, CL).

get_column_slice(Row, CF, Options, CL, {?MODULE, Client}) ->
  cassandra_client:get_column_slice(Client, Row, CF, Options, CL).

incr(Row, CF, Name, Value, CL, {?MODULE, Client}) ->
  cassandra_client:incr(Client, Row, CF, Name, Value, CL).


