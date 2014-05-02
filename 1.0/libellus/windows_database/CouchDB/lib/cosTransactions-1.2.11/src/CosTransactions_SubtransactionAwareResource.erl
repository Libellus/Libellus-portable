%%------------------------------------------------------------
%%
%% Implementation stub file
%% 
%% Target: CosTransactions_SubtransactionAwareResource
%% Source: /net/isildur/ldisk/daily_build/r14b04_prebuild_opu_o.2011-10-03_20/otp_src_R14B04/lib/cosTransactions/src/CosTransactions.idl
%% IC vsn: 4.2.27
%% 
%% This file is automatically generated. DO NOT EDIT IT.
%%
%%------------------------------------------------------------

-module('CosTransactions_SubtransactionAwareResource').
-ic_compiled("4_2_27").


%% Interface functions
-export([commit_subtransaction/2, commit_subtransaction/3, rollback_subtransaction/1]).
-export([rollback_subtransaction/2]).

%% Exports from "CosTransactions::Resource"
-export([prepare/1, prepare/2, rollback/1]).
-export([rollback/2, commit/1, commit/2]).
-export([commit_one_phase/1, commit_one_phase/2, forget/1]).
-export([forget/2]).

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



%%%% Operation: commit_subtransaction
%% 
%%   Returns: RetVal
%%
commit_subtransaction(OE_THIS, Parent) ->
    corba:call(OE_THIS, commit_subtransaction, [Parent], ?MODULE).

commit_subtransaction(OE_THIS, OE_Options, Parent) ->
    corba:call(OE_THIS, commit_subtransaction, [Parent], ?MODULE, OE_Options).

%%%% Operation: rollback_subtransaction
%% 
%%   Returns: RetVal
%%
rollback_subtransaction(OE_THIS) ->
    corba:call(OE_THIS, rollback_subtransaction, [], ?MODULE).

rollback_subtransaction(OE_THIS, OE_Options) ->
    corba:call(OE_THIS, rollback_subtransaction, [], ?MODULE, OE_Options).

%%%% Operation: prepare
%% 
%%   Returns: RetVal
%%   Raises:  CosTransactions::HeuristicMixed, CosTransactions::HeuristicHazard
%%
prepare(OE_THIS) ->
    corba:call(OE_THIS, prepare, [], ?MODULE).

prepare(OE_THIS, OE_Options) ->
    corba:call(OE_THIS, prepare, [], ?MODULE, OE_Options).

%%%% Operation: rollback
%% 
%%   Returns: RetVal
%%   Raises:  CosTransactions::HeuristicCommit, CosTransactions::HeuristicMixed, CosTransactions::HeuristicHazard
%%
rollback(OE_THIS) ->
    corba:call(OE_THIS, rollback, [], ?MODULE).

rollback(OE_THIS, OE_Options) ->
    corba:call(OE_THIS, rollback, [], ?MODULE, OE_Options).

%%%% Operation: commit
%% 
%%   Returns: RetVal
%%   Raises:  CosTransactions::NotPrepared, CosTransactions::HeuristicRollback, CosTransactions::HeuristicMixed, CosTransactions::HeuristicHazard
%%
commit(OE_THIS) ->
    corba:call(OE_THIS, commit, [], ?MODULE).

commit(OE_THIS, OE_Options) ->
    corba:call(OE_THIS, commit, [], ?MODULE, OE_Options).

%%%% Operation: commit_one_phase
%% 
%%   Returns: RetVal
%%   Raises:  CosTransactions::HeuristicHazard, CosTransactions::HeuristicRollback, CosTransactions::HeuristicMixed
%%
commit_one_phase(OE_THIS) ->
    corba:call(OE_THIS, commit_one_phase, [], ?MODULE).

commit_one_phase(OE_THIS, OE_Options) ->
    corba:call(OE_THIS, commit_one_phase, [], ?MODULE, OE_Options).

%%%% Operation: forget
%% 
%%   Returns: RetVal
%%
forget(OE_THIS) ->
    corba:call(OE_THIS, forget, [], ?MODULE).

forget(OE_THIS, OE_Options) ->
    corba:call(OE_THIS, forget, [], ?MODULE, OE_Options).

%%------------------------------------------------------------
%%
%% Inherited Interfaces
%%
%%------------------------------------------------------------
oe_is_a("IDL:omg.org/CosTransactions/SubtransactionAwareResource:1.0") -> true;
oe_is_a("IDL:omg.org/CosTransactions/Resource:1.0") -> true;
oe_is_a(_) -> false.

%%------------------------------------------------------------
%%
%% Interface TypeCode
%%
%%------------------------------------------------------------
oe_tc(commit_subtransaction) -> 
	{tk_void,[{tk_objref,"IDL:omg.org/CosTransactions/Coordinator:1.0",
                             "Coordinator"}],
                 []};
oe_tc(rollback_subtransaction) -> 
	{tk_void,[],[]};
oe_tc(prepare) -> 'CosTransactions_Resource':oe_tc(prepare);
oe_tc(rollback) -> 'CosTransactions_Resource':oe_tc(rollback);
oe_tc(commit) -> 'CosTransactions_Resource':oe_tc(commit);
oe_tc(commit_one_phase) -> 'CosTransactions_Resource':oe_tc(commit_one_phase);
oe_tc(forget) -> 'CosTransactions_Resource':oe_tc(forget);
oe_tc(_) -> undefined.

oe_get_interface() -> 
	[{"forget", 'CosTransactions_Resource':oe_tc(forget)},
	{"commit_one_phase", 'CosTransactions_Resource':oe_tc(commit_one_phase)},
	{"commit", 'CosTransactions_Resource':oe_tc(commit)},
	{"rollback", 'CosTransactions_Resource':oe_tc(rollback)},
	{"prepare", 'CosTransactions_Resource':oe_tc(prepare)},
	{"rollback_subtransaction", oe_tc(rollback_subtransaction)},
	{"commit_subtransaction", oe_tc(commit_subtransaction)}].




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
    "IDL:omg.org/CosTransactions/SubtransactionAwareResource:1.0".


%%------------------------------------------------------------
%%
%% Object creation functions.
%%
%%------------------------------------------------------------

oe_create() ->
    corba:create(?MODULE, "IDL:omg.org/CosTransactions/SubtransactionAwareResource:1.0").

oe_create_link() ->
    corba:create_link(?MODULE, "IDL:omg.org/CosTransactions/SubtransactionAwareResource:1.0").

oe_create(Env) ->
    corba:create(?MODULE, "IDL:omg.org/CosTransactions/SubtransactionAwareResource:1.0", Env).

oe_create_link(Env) ->
    corba:create_link(?MODULE, "IDL:omg.org/CosTransactions/SubtransactionAwareResource:1.0", Env).

oe_create(Env, RegName) ->
    corba:create(?MODULE, "IDL:omg.org/CosTransactions/SubtransactionAwareResource:1.0", Env, RegName).

oe_create_link(Env, RegName) ->
    corba:create_link(?MODULE, "IDL:omg.org/CosTransactions/SubtransactionAwareResource:1.0", Env, RegName).

%%------------------------------------------------------------
%%
%% Init & terminate functions.
%%
%%------------------------------------------------------------

init(Env) ->
%% Call to implementation init
    corba:handle_init('CosTransactions_SubtransactionAwareResource_impl', Env).

terminate(Reason, State) ->
    corba:handle_terminate('CosTransactions_SubtransactionAwareResource_impl', Reason, State).


%%%% Operation: commit_subtransaction
%% 
%%   Returns: RetVal
%%
handle_call({_, OE_Context, commit_subtransaction, [Parent]}, _, OE_State) ->
  corba:handle_call('CosTransactions_SubtransactionAwareResource_impl', commit_subtransaction, [Parent], OE_State, OE_Context, false, false);

%%%% Operation: rollback_subtransaction
%% 
%%   Returns: RetVal
%%
handle_call({_, OE_Context, rollback_subtransaction, []}, _, OE_State) ->
  corba:handle_call('CosTransactions_SubtransactionAwareResource_impl', rollback_subtransaction, [], OE_State, OE_Context, false, false);

%%%% Operation: prepare
%% 
%%   Returns: RetVal
%%   Raises:  CosTransactions::HeuristicMixed, CosTransactions::HeuristicHazard
%%
handle_call({_, OE_Context, prepare, []}, _, OE_State) ->
  corba:handle_call('CosTransactions_SubtransactionAwareResource_impl', prepare, [], OE_State, OE_Context, false, false);

%%%% Operation: rollback
%% 
%%   Returns: RetVal
%%   Raises:  CosTransactions::HeuristicCommit, CosTransactions::HeuristicMixed, CosTransactions::HeuristicHazard
%%
handle_call({_, OE_Context, rollback, []}, _, OE_State) ->
  corba:handle_call('CosTransactions_SubtransactionAwareResource_impl', rollback, [], OE_State, OE_Context, false, false);

%%%% Operation: commit
%% 
%%   Returns: RetVal
%%   Raises:  CosTransactions::NotPrepared, CosTransactions::HeuristicRollback, CosTransactions::HeuristicMixed, CosTransactions::HeuristicHazard
%%
handle_call({_, OE_Context, commit, []}, _, OE_State) ->
  corba:handle_call('CosTransactions_SubtransactionAwareResource_impl', commit, [], OE_State, OE_Context, false, false);

%%%% Operation: commit_one_phase
%% 
%%   Returns: RetVal
%%   Raises:  CosTransactions::HeuristicHazard, CosTransactions::HeuristicRollback, CosTransactions::HeuristicMixed
%%
handle_call({_, OE_Context, commit_one_phase, []}, _, OE_State) ->
  corba:handle_call('CosTransactions_SubtransactionAwareResource_impl', commit_one_phase, [], OE_State, OE_Context, false, false);

%%%% Operation: forget
%% 
%%   Returns: RetVal
%%
handle_call({_, OE_Context, forget, []}, _, OE_State) ->
  corba:handle_call('CosTransactions_SubtransactionAwareResource_impl', forget, [], OE_State, OE_Context, false, false);



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
handle_info(_, State) ->
    {noreply, State}.


code_change(OldVsn, State, Extra) ->
    corba:handle_code_change('CosTransactions_SubtransactionAwareResource_impl', OldVsn, State, Extra).

