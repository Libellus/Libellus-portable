%%------------------------------------------------------------
%%
%% Implementation stub file
%% 
%% Target: CosTransactions_otid_t
%% Source: /net/isildur/ldisk/daily_build/r14b04_prebuild_opu_o.2011-10-03_20/otp_src_R14B04/lib/cosTransactions/src/CosTransactions.idl
%% IC vsn: 4.2.27
%% 
%% This file is automatically generated. DO NOT EDIT IT.
%%
%%------------------------------------------------------------

-module('CosTransactions_otid_t').
-ic_compiled("4_2_27").


-include("CosTransactions.hrl").

-export([tc/0,id/0,name/0]).



%% returns type code
tc() -> {tk_struct,"IDL:omg.org/CosTransactions/otid_t:1.0","otid_t",
                   [{"formatID",tk_long},
                    {"bqual_length",tk_long},
                    {"tid",{tk_sequence,tk_octet,0}}]}.

%% returns id
id() -> "IDL:omg.org/CosTransactions/otid_t:1.0".

%% returns name
name() -> "CosTransactions_otid_t".



