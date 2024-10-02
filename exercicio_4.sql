-- diagrama na foto em exercicio_4.png

select c.id, c.razao_social, 
       t.numero
FROM clientes c JOIN telefones t ON c.id = t.cliente_id
				JOIN estados e ON c.estado_id = e.id
WHERE e.uf = 'SP';