4. Získať všetky produkty, ktoré sú momentálne skladom.
    Get all products that are currently in stock.

select nazov as produkty from produkty where skladom > 0;

5. Získať zákazníkov, ktorí neuskutočnili žiadnu objednávku.
    Get customers who have not placed any orders.

select id, meno from zakaznici where id not in (select zakaznik_id from zakazky);

6. Zistiť priemernú cenu produktov
    Find the average price of products.

select avg(cena) as priemerna_cena from produkty;

7. Získať produkty, ktorých cena je vyššia ako priemerná cena.
    Get products whose price is higher than the average price.

select nazov as produkty from produkty where cena > (select avg(cena) from produkty);

8. Získať zákazníkov, ktorí uskutočnili aspoň 2 objednávky.
    Get customers who have placed at least 2 orders.
    
select * from zakaznici where id in (select zakaznik_id from objednavky group by zakaznik_id having count(*) >= 2);
