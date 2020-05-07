CREATE DEFINER=`root`@`localhost` FUNCTION `GetRefrigerante`(valor_refrigerante float) RETURNS varchar(20) CHARSET utf8mb4
begin
	declare refrigerante varchar(3);
    if(valor_refrigerante > 0) then
      set refrigerante = 'Refrigerante sim';
	else
      set refrigerante = 'Refrigerante nao';
	end if;
    
    return refrigerante;  
end