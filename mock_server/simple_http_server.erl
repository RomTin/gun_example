-module(simple_http_server).

-export([start/0]).

start() ->
    inets:start(),
    {ok, Pid} = inets:start(httpd, [
                                    {port, 8080}, 
                                    {server_name, "httpd_test"},
                                    {server_root, "/tmp"},
                                    {document_root, "./htdocs"},
                                    {bind_address, "localhost"}
                                   ]),
    {ok, Pid}.

