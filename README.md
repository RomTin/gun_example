gun + OTP sample application
=====

Build
-----

    $ rebar3 compile

Run
----
    # run mock server
    $ cd mock_server
    $ erl
    1> c(simple_http_server).
    {ok, simple_http_server}
    2> simple_http_server:start(). %% http server on port 8080 starting up.
    {ok, <PID>}
   
    # run gun app
    $ rebar3 shell
    ....
    1> gun_test:start().
    start supervisor
    {ok,<0.141.0>}
    2> gun_test:get().
    get_request
    ok
    get_request Pid <0.147.0>
    gun_up
    gun_up_done
    fin <<"{\"hello\" : \"ok\"}\n">>

