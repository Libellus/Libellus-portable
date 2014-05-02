%%------------------------------------------------------------
%%
%% Implementation stub file
%% 
%% Target: CosEventDomainAdmin_EventDomainFactory
%% Source: /net/isildur/ldisk/daily_build/r14b04_prebuild_opu_o.2011-10-03_20/otp_src_R14B04/lib/cosEventDomain/src/CosEventDomainAdmin.idl
%% IC vsn: 4.2.27
%% 
%% This file is automatically generated. DO NOT EDIT IT.
%%
%%------------------------------------------------------------

-module('CosEventDomainAdmin_EventDomainFactory').
-ic_compiled("4_2_27").


%% Interface functions
-export([create_event_domain/3, create_event_domain/4, get_all_domains/1]).
-export([get_all_domains/2, get_event_domain/2, get_event_domain/3]).

%% Type identification function
-export([typeID/0]).

%% Used to start server
-export([oe_create/0, oe_create_link/0, oe_create/1]).
-export([oe_create_link/1, oe_create/2, oe_create_link/2]).

%% TypeCode Functions and inheritance
-export([oe_tc/1, oe_is_a/1, oe_get_interface/0]).

%% gen server export stuff
-behaviour(gen_server).
-export([init/1, terminate/2, handle_call/3]).
-export([handle_cast/2, handle_info/2, code_change/3]).

-include_lib("orber/include/corba.hrl").


%%------------------------------------------------------------
%%
%% Object interface functions.
%%
%%------------------------------------------------------------



%%%% Operation: create_event_domain
%% 
%%   Returns: RetVal, Id
%%   Raises:  CosNotification::UnsupportedQoS, CosNotification::UnsupportedAdmin
%%
create_event_domain(OE_THIS, InitialQoS, InitialAdmin) ->
    corba:call(OE_THIS, create_event_domain, [InitialQoS, InitialAdmin], ?MODULE).

create_event_domain(OE_THIS, OE_Options, InitialQoS, InitialAdmin) ->
    corba:call(OE_THIS, create_event_domain, [InitialQoS, InitialAdmin], ?MODULE, OE_Options).

%%%% Operation: get_all_domains
%% 
%%   Returns: RetVal
%%
get_all_domains(OE_THIS) ->
    corba:call(OE_THIS, get_all_domains, [], ?MODULE).

get_all_domains(OE_THIS, OE_Options) ->
    corba:call(OE_THIS, get_all_domains, [], ?MODULE, OE_Options).

%%%% Operation: get_event_domain
%% 
%%   Returns: RetVal
%%   Raises:  CosEventDomainAdmin::DomainNotFound
%%
get_event_domain(OE_THIS, Id) ->
    corba:call(OE_THIS, get_event_domain, [Id], ?MODULE).

get_event_domain(OE_THIS, OE_Options, Id) ->
    corba:call(OE_THIS, get_event_domain, [Id], ?MODULE, OE_Options).

%%------------------------------------------------------------
%%
%% Inherited Interfaces
%%
%%------------------------------------------------------------
oe_is_a("IDL:omg.org/CosEventDomainAdmin/EventDomainFactory:1.0") -> true;
oe_is_a(_) -> false.

%%------------------------------------------------------------
%%
%% Interface TypeCode
%%
%%------------------------------------------------------------
oe_tc(create_event_domain) -> 
	{{tk_objref,"IDL:omg.org/CosEventDomainAdmin/EventDomain:1.0",
                    "EventDomain"},
         [{tk_sequence,{tk_struct,"IDL:omg.org/CosNotification/Property:1.0",
                                  "Property",
                                  [{"name",{tk_string,0}},{"value",tk_any}]},
                       0},
          {tk_sequence,{tk_struct,"IDL:omg.org/CosNotification/Property:1.0",
                                  "Property",
                                  [{"name",{tk_string,0}},{"value",tk_any}]},
                       0}],
         [tk_long]};
oe_tc(get_all_domains) -> 
	{{tk_sequence,tk_long,0},[],[]};
oe_tc(get_event_domain) -> 
	{{tk_objref,"IDL:omg.org/CosEventDomainAdmin/EventDomain:1.0",
                    "EventDomain"},
         [tk_long],
         []};
oe_tc(_) -> undefined.

oe_get_interface() -> 
	[{"get_event_domain", oe_tc(get_event_domain)},
	{"get_all_domains", oe_tc(get_all_domains)},
	{"create_event_domain", oe_tc(create_event_domain)}].




%%------------------------------------------------------------
%%
%% Object server implementation.
%%
%%------------------------------------------------------------


%%------------------------------------------------------------
%%
%% Function for fetching the interface type ID.
%%
%%------------------------------------------------------------

typeID() ->
    "IDL:omg.org/CosEventDomainAdmin/EventDomainFactory:1.0".


%%------------------------------------------------------------
%%
%% Object creation functions.
%%
%%------------------------------------------------------------

oe_create() ->
    corba:create(?MODULE, "IDL:omg.org/CosEventDomainAdmin/EventDomainFactory:1.0").

oe_create_link() ->
    corba:create_link(?MODULE, "IDL:omg.org/CosEventDomainAdmin/EventDomainFactory:1.0").

oe_create(Env) ->
    corba:create(?MODULE, "IDL:omg.org/CosEventDomainAdmin/EventDomainFactory:1.0", Env).

oe_create_link(Env) ->
    corba:create_link(?MODULE, "IDL:omg.org/CosEventDomainAdmin/EventDomainFactory:1.0", Env).

oe_create(Env, RegName) ->
    corba:create(?MODULE, "IDL:omg.org/CosEventDomainAdmin/EventDomainFactory:1.0", Env, RegName).

oe_create_link(Env, RegName) ->
    corba:create_link(?MODULE, "IDL:omg.org/CosEventDomainAdmin/EventDomainFactory:1.0", Env, RegName).

%%------------------------------------------------------------
%%
%% Init & terminate functions.
%%
%%------------------------------------------------------------

init(Env) ->
%% Call to implementation init
    corba:handle_init('CosEventDomainAdmin_EventDomainFactory_impl', Env).

terminate(Reason, State) ->
    corba:handle_terminate('CosEventDomainAdmin_EventDomainFactory_impl', Reason, State).


%%%% Operation: create_event_domain
%% 
%%   Returns: RetVal, Id
%%   Raises:  CosNotification::UnsupportedQoS, CosNotification::UnsupportedAdmin
%%
handle_call({OE_THIS, OE_Context, create_event_domain, [InitialQoS, InitialAdmin]}, _, OE_State) ->
  corba:handle_call('CosEventDomainAdmin_EventDomainFactory_impl', create_event_domain, [InitialQoS, InitialAdmin], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: get_all_domains
%% 
%%   Returns: RetVal
%%
handle_call({OE_THIS, OE_Context, get_all_domains, []}, _, OE_State) ->
  corba:handle_call('CosEventDomainAdmin_EventDomainFactory_impl', get_all_domains, [], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: get_event_domain
%% 
%%   Returns: RetVal
%%   Raises:  CosEventDomainAdmin::DomainNotFound
%%
handle_call({OE_THIS, OE_Context, get_event_domain, [Id]}, _, OE_State) ->
  corba:handle_call('CosEventDomainAdmin_EventDomainFactory_impl', get_event_domain, [Id], OE_State, OE_Context, OE_THIS, false);



%%%% Standard gen_server call handle
%%
handle_call(stop, _, State) ->
    {stop, normal, ok, State};

handle_call(_, _, State) ->
    {reply, catch corba:raise(#'BAD_OPERATION'{minor=1163001857, completion_status='COMPLETED_NO'}), State}.


%%%% Standard gen_server cast handle
%%
handle_cast(stop, State) ->
    {stop, normal, State};

handle_cast(_, State) ->
    {noreply, State}.


%%%% Standard gen_server handles
%%
handle_info(Info, State) ->
    corba:handle_info('CosEventDomainAdmin_EventDomainFactory_impl', Info, State).


code_change(OldVsn, State, Extra) ->
    corba:handle_code_change('CosEventDomainAdmin_EventDomainFactory_impl', OldVsn, State, Extra).

