
    /************************* Ejemplo sentencia With **********************/
    
    -- Sintanxis: 
        -- with [Alias_i] as (subconsulta1),
        --      [Alias_n] as (subconsulta2),
        --select [campos]
        -- [join]
        -- [filtros]
        
    -- Código:
    
    with dataset1 as (select 1::integer id, 'Feliz'::varchar campo),              
         dataset2 as (select 1::integer id, '2020 les desea'::varchar campo),
         dataset3 as (select 1::integer id, 'POSTGRESQL COLOMBIA'::varchar campo)
    select d1.campo || ' ' || d2.campo || ' <?' || d3.campo || '?>'
    from dataset1 d1
        join dataset2 d2 using(id)
        join dataset3 d3 using(id)
    where d1.id != 2;
