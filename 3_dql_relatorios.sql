USE db_vetpet;

-- Requisito: Estatísticas usando AVG, MAX e MIN
-- O que faz: Calcula a média, o maior e o menor valor das consultas veterinárias.
SELECT 
    ROUND(AVG(valor), 2) AS Media_Valor_Consulta,
    MAX(valor) AS Consulta_Mais_Cara,
    MIN(valor) AS Consulta_Mais_Barata
FROM Consulta;

-- Requisito: Relatório com JOIN, COUNT e SUM
-- O que faz: Mostra o faturamento total e quantas consultas cada veterinário realizou.
SELECT 
    v.nome AS Nome_Veterinario,
    COUNT(c.id_consulta) AS Total_Consultas,
    SUM(c.valor) AS Faturamento_Total
FROM Veterinario v
JOIN Consulta c ON v.id_vet = c.id_vet
GROUP BY v.id_vet
ORDER BY Faturamento_Total DESC;

-- Relatório Extra (Bônus para a apresentação): Múltiplos JOINs
-- O que faz: Monta o histórico completo mostrando quem é o dono, o pet, o médico e o valor.
SELECT 
    t.nome AS Tutor,
    a.nome AS Animal,
    a.especie AS Especie,
    v.nome AS Veterinario_Responsavel,
    c.data_consulta,
    c.valor
FROM Consulta c
JOIN Animal a ON c.id_animal = a.id_animal
JOIN Tutor t ON a.id_tutor = t.id_tutor
JOIN Veterinario v ON c.id_vet = v.id_vet
ORDER BY c.data_consulta DESC;