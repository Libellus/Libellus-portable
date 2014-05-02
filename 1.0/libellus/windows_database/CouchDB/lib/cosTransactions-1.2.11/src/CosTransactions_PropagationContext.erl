%%------------------------------------------------------------
%%
%% Implementation stub file
%% 
%% Target: CosTransactions_PropagationContext
%% Source: /net/isildur/ldisk/daily_build/r14b04_prebuild_opu_o.2011-10-03_20/otp_src_R14B04/lib/cosTransactions/src/CosTransactions.idl
%% IC vsn: 4.2.27
%% 
%% This file is automatically generated. DO NOT EDIT IT.
%%
%%------------------------------------------------------------

-module('CosTransactions_PropagationContext').
-ic_compiled("4_2_27").


-include("CosTransactions.hrl").

-export([tc/0,id/0,name/0]).



%% returns type code
tc() -> {tk_struct,"IDL:omg.org/CosTransactions/PropagationContext:1.0",
            "PropagationContext",
            [{"timeout",tk_ulong},
             {"current",
              {tk_struct,"IDL:omg.org/CosTransactions/TransIdentity:1.0",
                  "TransIdentity",
                  [{"coord",
                    {tk_objref,"IDL:omg.org/CosTransactions/Coordinator:1.0",
                        "Coordinator"}},
                   {"term",
                    {tk_objref,"IDL:omg.org/CosTransactions/Terminator:1.0",
                        "Terminator"}},
                   {"otid",
                    {tk_struct,"IDL:omg.org/CosTransactions/otid_t:1.0",
                        "otid_t",
                        [{"formatID",tk_long},
                         {"bqual_length",tk_long},
                         {"tid",{tk_sequence,tk_octet,0}}]}}]}},
             {"parents",
              {tk_sequence,
                  {tk_struct,"IDL:omg.org/CosTransactions/TransIdentity:1.0",
                      "TransIdentity",
                      [{"coord",
                        {tk_objref,
                            "IDL:omg.org/CosTransactions/Coordinator:1.0",
                            "Coordinator"}},
                       {"term",
                        {tk_objref,
                            "IDL:omg.org/CosTransactions/Terminator:1.0",
                            "Terminator"}},
                       {"otid",
                        {tk_struct,"IDL:omg.org/CosTransactions/otid_t:1.0",
                            "otid_t",
                            [{"formatID",tk_long},
                             {"bqual_length",tk_long},
                             {"tid",{tk_sequence,tk_octet,0}}]}}]},
                  0}},
             {"implementation_specific_data",tk_any}]}.

%% returns id
id() -> "IDL:omg.org/CosTransactions/PropagationContext:1.0".

%% returns name
name() -> "CosTransactions_PropagationContext".



