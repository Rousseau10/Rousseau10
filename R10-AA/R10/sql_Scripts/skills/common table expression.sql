--///////simple common table expression
--not any time you see a with col names and an as it is a cte declaration, 
--not all programmers prefix it with cte
--*note it does not persist after the batch is run

with cte_Tester (id)
	as
	(select max(id)
	     from tester
	)
	select cte_Tester.id,tester.coinsIn 
	from tester
	inner join cte_Tester
	on cte_Tester.id = tester.id