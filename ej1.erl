% Juan Ordaz A01191576
% Eduardo Serna A01196007
% ejercicio 16 (Ejercicio 1 de Erlang)

% Instrucciones de compilado:
% En directorio de ejercicio: c(ej1).
% Correr funciones como ej1:nombre_funcion(params).
% Ej:  ej1:secuencia(2).

-module(ej1).

-export([secuencia/1, mapea/2, menores/2]).

-import(lists, [map/2,foldl/3,foldr/3, filter/2]).

% 2
secuencia ( 0 ) -> [];
secuencia ( N ) when N > 0 -> secuencia(N - 1) ++ [N].

% 3
mapea ( _ , [] ) -> [];
mapea ( F , [ X | XS ] ) -> [F(X)] ++ mapea(F , XS).

%4
% menores ([] , _) -> [];
% menores ([ X | XS] , N) when is_list(X) -> menores(X, N) ++ menores(XS,N);
% menores ([ X | XS] , N) when is_integer(X), X < N  -> [X] ++ menores(XS, N);
% menores ([ X | XS] , N) when is_integer(X), X >= N  -> menores(XS, N).

menores ([] , _) -> [];
menores (L , N) -> Filterfun = fun(LISTA) -> filter(fun(X) -> X < N end, LISTA) end,
                   Mapfun = fun(LISTA) -> (Filterfun(LISTA)) end,
                   map (Mapfun , L ). %Mapfun llama a Filterfun, que filtra cada elemento de una lista

