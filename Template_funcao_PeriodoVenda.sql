delimiter $$
CREATE FUNCTION GetPeriodoVenda(hora_pedido time) returns varchar(10)
begin
	DECLARE periodo varchar(10);
    if (hora_pedido < '20:00:00') then 
	  set periodo = 'Inicio';
	elseif (hora_pedido >= '20:00:00' and hora_pedido < '22:00:00') then
	  set periodo = 'Pico';
	elseif (hora_pedido >= '22:00:00') then
      set periodo = 'Final';
	end if;
    
    return periodo;
end $$
delimiter ;