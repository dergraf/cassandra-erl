# Basic Wrapper for the Cassandra 0.8 Thrift Bindings.

I wanted to play with Cassandra from erlang and the default Thrift Bindings are horrible, so I made this. Might be just as horrible but works for me.

## REMARKS

This is a fork of the work done by theller. Since he is not maintaining the official repo anymore I try to keep this fork as uptodate as possible. Same holds for the dependency thrift-erl which is afaik not maintained by theller anymore. So far my contributions went into branch thrift-0.8.0.
I plan to integrate a simple connection pool pretty soon as well as to improve testing and documentation. Please shoot me a note if there is a feature which is not yet covered by this client, maybe it is interesting for me as well so we can discuss the implementation part of it.  

## EXAMPLE

    C = cassandra_client:connect([{host, "localhost"}, {port, 9160}, {keyspace, "test"}]),

    {ok, Version} = C:describe_version(),

    ConsistencyLevel = one,

    ok = C:mutate([
        {"row", "cf", {insert, [{"col", "value"}]}
    ], ConsistencyLevel),

    {ok, Columns} = C:get_column_slice("row", "cf", [{count, 10}], ConsistencyLevel),

    % return values from cassandra are binaries

    Columns = [{<<"col">>, <<"value">>}].

## Docs

Basic edoc at: http://thheller.github.com/cassandra-erl/

## TODO

* SuperColumns
* Error Handling (pure let-it-crash for now)
* Ring Detection, Client Pooling, Reconnects, etc.

