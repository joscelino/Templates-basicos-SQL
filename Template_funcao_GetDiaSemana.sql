-- Criando funcao 
SET GLOBAL log_bin_trust_function_creators = 1;
delimiter $$

create function GetDiaSemana(data_pedido date) returns varchar (10)

begin
	
  return dayname(data_pedido);

end $$

delimiter ;