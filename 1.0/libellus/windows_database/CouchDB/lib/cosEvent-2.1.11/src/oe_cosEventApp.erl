%%------------------------------------------------------------
%%
%% Implementation stub file
%% 
%% Target: oe_cosEventApp
%% Source: /net/isildur/ldisk/daily_build/r14b04_prebuild_opu_o.2011-10-03_20/otp_src_R14B04/lib/cosEvent/src/cosEventApp.idl
%% IC vsn: 4.2.27
%% 
%% This file is automatically generated. DO NOT EDIT IT.
%%
%%------------------------------------------------------------

-module(oe_cosEventApp).
-ic_compiled("4_2_27").


-include_lib("orber/include/ifr_types.hrl").

%% Interface functions

-export([oe_register/0, oe_unregister/0, oe_get_module/5]).
-export([oe_dependency/0]).



oe_register() ->
    OE_IFR = orber_ifr:find_repository(),

    register_tests(OE_IFR),

    _OE_1 = oe_get_top_module(OE_IFR, "IDL:oe_CosEventComm:1.0", "oe_CosEventComm", "1.0"),

    _OE_2 = orber_ifr:'ModuleDef_create_interface'(_OE_1, "IDL:oe_CosEventComm/Event:1.0", "Event", "1.0", []),

    orber_ifr:'InterfaceDef_create_operation'(_OE_2, "IDL:oe_CosEventComm/Event/send:1.0", "send", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, tk_void), 'OP_ONEWAY', [#parameterdescription{name="event", type=tk_any, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, tk_any), mode='PARAM_IN'}
], [], []),

    orber_ifr:'InterfaceDef_create_operation'(_OE_2, "IDL:oe_CosEventComm/Event/send_sync:1.0", "send_sync", "1.0", orber_ifr:'Repository_create_idltype'(OE_IFR, tk_void), 'OP_NORMAL', [#parameterdescription{name="event", type=tk_any, type_def=orber_ifr:'Repository_create_idltype'(OE_IFR, tk_any), mode='PARAM_IN'}
], [], []),

    _OE_3 = orber_ifr:'ModuleDef_create_interface'(_OE_1, "IDL:oe_CosEventComm/Channel:1.0", "Channel", "1.0", [orber_ifr:lookup_id(OE_IFR,"IDL:oe_CosEventComm/Event:1.0"), orber_ifr:lookup_id(OE_IFR,"IDL:omg.org/CosEventChannelAdmin/EventChannel:1.0")]),

    _OE_4 = orber_ifr:'ModuleDef_create_interface'(_OE_1, "IDL:oe_CosEventComm/CAdmin:1.0", "CAdmin", "1.0", [orber_ifr:lookup_id(OE_IFR,"IDL:oe_CosEventComm/Event:1.0"), orber_ifr:lookup_id(OE_IFR,"IDL:omg.org/CosEventChannelAdmin/ConsumerAdmin:1.0")]),

    _OE_5 = orber_ifr:'ModuleDef_create_interface'(_OE_1, "IDL:oe_CosEventComm/PullerS:1.0", "PullerS", "1.0", [orber_ifr:lookup_id(OE_IFR,"IDL:oe_CosEventComm/Event:1.0"), orber_ifr:lookup_id(OE_IFR,"IDL:omg.org/CosEventComm/PullSupplier:1.0"), orber_ifr:lookup_id(OE_IFR,"IDL:omg.org/CosEventChannelAdmin/ProxyPullSupplier:1.0")]),

    _OE_6 = orber_ifr:'ModuleDef_create_interface'(_OE_1, "IDL:oe_CosEventComm/PusherS:1.0", "PusherS", "1.0", [orber_ifr:lookup_id(OE_IFR,"IDL:oe_CosEventComm/Event:1.0"), orber_ifr:lookup_id(OE_IFR,"IDL:omg.org/CosEventComm/PushSupplier:1.0"), orber_ifr:lookup_id(OE_IFR,"IDL:omg.org/CosEventChannelAdmin/ProxyPushSupplier:1.0")]),

    ok.


%% General IFR registration checks.
register_tests(OE_IFR)->
  re_register_test(OE_IFR),
  include_reg_test(OE_IFR).


%% IFR type Re-registration checks.
re_register_test(OE_IFR)->
  case orber_ifr:'Repository_lookup_id'(OE_IFR,"IDL:oe_CosEventComm/Event:1.0") of
    []  ->
      true;
    _ ->
      exit({allready_registered,"IDL:oe_CosEventComm/Event:1.0"})
 end.


%% IFR registration checks for included idl files.
include_reg_test(OE_IFR) ->
  case orber_ifr:'Repository_lookup_id'(OE_IFR,"IDL:omg.org/CosEventComm:1.0") of
    [] ->
      exit({unregistered,"IDL:omg.org/CosEventComm:1.0"});
    _  ->
      true
  end,
  case orber_ifr:'Repository_lookup_id'(OE_IFR,"IDL:omg.org/CosEventChannelAdmin:1.0") of
    [] ->
      exit({unregistered,"IDL:omg.org/CosEventChannelAdmin:1.0"});
    _  ->
      true
  end,
  true.


%% Fetch top module reference, register if unregistered.
oe_get_top_module(OE_IFR, ID, Name, Version) ->
  case orber_ifr:'Repository_lookup_id'(OE_IFR, ID) of
    [] ->
      orber_ifr:'Repository_create_module'(OE_IFR, ID, Name, Version);
    Mod  ->
      Mod
   end.

%% Fetch module reference, register if unregistered.
oe_get_module(OE_IFR, OE_Parent, ID, Name, Version) ->
  case orber_ifr:'Repository_lookup_id'(OE_IFR, ID) of
    [] ->
      orber_ifr:'ModuleDef_create_module'(OE_Parent, ID, Name, Version);
    Mod  ->
      Mod
   end.



oe_unregister() ->
    OE_IFR = orber_ifr:find_repository(),

    oe_destroy(OE_IFR, "IDL:oe_CosEventComm/PusherS:1.0"),
    oe_destroy(OE_IFR, "IDL:oe_CosEventComm/PullerS:1.0"),
    oe_destroy(OE_IFR, "IDL:oe_CosEventComm/CAdmin:1.0"),
    oe_destroy(OE_IFR, "IDL:oe_CosEventComm/Channel:1.0"),
    oe_destroy(OE_IFR, "IDL:oe_CosEventComm/Event:1.0"),
    oe_destroy_if_empty(OE_IFR, "IDL:oe_CosEventComm:1.0"),
    ok.


oe_destroy_if_empty(OE_IFR,IFR_ID) ->
    case orber_ifr:'Repository_lookup_id'(OE_IFR, IFR_ID) of
	[] ->
	    ok;
	Ref ->
	    case orber_ifr:contents(Ref, 'dk_All', 'true') of
		[] ->
		    orber_ifr:destroy(Ref),
		    ok;
		_ ->
		    ok
	    end
    end.

oe_destroy(OE_IFR,IFR_ID) ->
    case orber_ifr:'Repository_lookup_id'(OE_IFR, IFR_ID) of
	[] ->
	    ok;
	Ref ->
	    orber_ifr:destroy(Ref),
	    ok
    end.



%% Idl file dependency list function
oe_dependency() ->

    {"/net/isildur/ldisk/daily_build/r14b04_prebuild_opu_o.2011-10-03_20/otp_src_R14B04/lib/cosEvent/src/cosEventApp.idl",
     ["CosEventComm.idl","CosEventChannelAdmin.idl"]}.

