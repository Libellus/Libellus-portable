%%------------------------------------------------------------
%%
%% Implementation stub file
%% 
%% Target: CosNotification_EventType
%% Source: /net/isildur/ldisk/daily_build/r14b04_prebuild_opu_o.2011-10-03_20/otp_src_R14B04/lib/cosNotification/src/CosNotification.idl
%% IC vsn: 4.2.27
%% 
%% This file is automatically generated. DO NOT EDIT IT.
%%
%%------------------------------------------------------------

-module('CosNotification_EventType').
-ic_compiled("4_2_27").


-include("CosNotification.hrl").

-export([tc/0,id/0,name/0]).



%% returns type code
tc() -> {tk_struct,"IDL:omg.org/CosNotification/EventType:1.0","EventType",
                   [{"domain_name",{tk_string,0}},
                    {"type_name",{tk_string,0}}]}.

%% returns id
id() -> "IDL:omg.org/CosNotification/EventType:1.0".

%% returns name
name() -> "CosNotification_EventType".



