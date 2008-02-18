%%%-------------------------------------------------------------------
%%% File:      erlyjs_global_funcs.erl
%%% @author    Roberto Saccon <rsaccon@gmail.com> [http://rsaccon.com]
%%% @copyright 2008 Roberto Saccon
%%% @doc  
%%%
%%% @end  
%%%
%%% The MIT License
%%%
%%% Copyright (c) 2008 Roberto Saccon
%%%
%%% Permission is hereby granted, free of charge, to any person obtaining a copy
%%% of this software and associated documentation files (the "Software"), to deal
%%% in the Software without restriction, including without limitation the rights
%%% to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
%%% copies of the Software, and to permit persons to whom the Software is
%%% furnished to do so, subject to the following conditions:
%%%
%%% The above copyright notice and this permission notice shall be included in
%%% all copies or substantial portions of the Software.
%%%
%%% THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
%%% IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
%%% FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
%%% AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
%%% LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
%%% OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
%%% THE SOFTWARE.
%%%
%%% @since 2008-02-17 by Roberto Saccon
%%%-------------------------------------------------------------------
-module(erlyjs_global_funcs).
-author('rsaccon@gmail.com').

%% API
-export([
    decodeURI/1,
    decodeURIComponent/1,
    encodeURI/1,
    encodeURIComponent/1,
    eval/1,
    isFinite/1,
    isNaN/1,
    parseInt/1,
    parseInt/2,
    parseFloat/1]).

%%====================================================================
%% API
%%====================================================================
%%--------------------------------------------------------------------
%% @spec 
%% @doc
%% @end 
%%--------------------------------------------------------------------

decodeURI(_Str) ->
    exit(not_implemented_yet).


decodeURIComponent(_Str) ->
    exit(not_implemented_yet).


encodeURI(_Str) ->
    exit(not_implemented_yet).


encodeURIComponent(_Str) ->
    exit(not_implemented_yet).


eval(_Str) ->
    exit(not_implemented_yet).
    
    
%% TODO: check for positive infinity or negative infinity
isFinite(X) ->
    not isNaN(X).
    
    
%% TODO: check for positive infinity or negative infinity    
isNaN('NaN') ->
    true;
isNaN(X) when is_number(X) ->
    false;
isNaN(X) ->
    case isNaN(parseInt(X)) of
        true ->
            isNaN(parseFloat(X));
        _ ->
            false
    end.

            
%% TODO: a lot, this is just the most simple case
parseInt(Str) ->
    try list_to_integer(Str) of
        Val -> Val
    catch
        error:badarg -> 'NaN'
    end.
    
    
parseInt(_Str, _Radix) ->
    exit(not_implemented_yet).
        
            
%% TODO: a lot, this is just the most simple case    
parseFloat(X) ->
    try list_to_float(X) of
        Val -> Val
    catch
        error:badarg -> 'NaN'
    end.
    
    
%%====================================================================
%% Internal functions
%%====================================================================

