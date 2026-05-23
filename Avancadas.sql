# 1. Liste as cidades que possuem mais de 2 alunos.
SELECT cidade, COUNT(cidade)
FROM Alunos
GROUP BY cidade
HAVING COUNT(cidade) > 2;

# 2. Exiba os cursos cuja média de notas seja maior que 8.
SELECT C.nome_curso, AVG(nota)
FROM Matriculas AS M
JOIN Cursos AS C ON M.id_curso = C.id_curso
GROUP BY C.nome_curso
HAVING AVG(nota) > 8;

# 3. Mostre os cursos que possuem mais de 2 matrículas.
SELECT C.nome_curso, COUNT(C.id_curso)
FROM Matriculas AS M
JOIN Cursos AS C ON M.id_curso = C.id_curso
GROUP BY C.nome_curso
HAVING COUNT(C.id_curso) > 2;

# 4. Liste os alunos cuja soma de faltas seja maior que 5.
SELECT A.nome, SUM(faltas)
FROM Matriculas AS M
JOIN Alunos AS A ON M.id_aluno = A.id_aluno
GROUP BY A.nome
HAVING SUM(faltas) > 5;

# 5. Exiba os cursos cuja menor nota seja maior que 6.
SELECT C.nome_curso, MIN(nota)
FROM Matriculas AS M
JOIN Cursos AS C ON M.id_curso = C.id_curso
GROUP BY C.nome_curso
HAVING MIN(nota) > 6;

# 6. Mostre os cursos ordenados pela carga horária em ordem decrescente.
SELECT nome_curso, carga_horaria
FROM Cursos
ORDER BY carga_horaria DESC;

# 7. Liste os alunos ordenados por idade do maior para o menor.
SELECT nome, idade
FROM Alunos
ORDER BY idade DESC;

# 8. Exiba a média de notas por curso ordenada da maior para a menor.
SELECT C.nome_curso, AVG(nota)
FROM Matriculas AS M
JOIN Cursos AS C ON M.id_curso = C.id_curso
GROUP BY C.nome_curso
ORDER BY AVG(nota) DESC;

# 9. Mostre as cidades ordenadas pela quantidade de alunos.
SELECT cidade, count(cidade)
FROM Alunos
GROUP BY cidade
ORDER BY COUNT(cidade);

# 10. Liste os alunos com média de notas maior que 7 ordenados pela média decrescente.
SELECT A.nome, AVG(nota)
FROM Matriculas AS M
JOIN Alunos AS A ON M.id_aluno = A.id_aluno
GROUP BY A.nome
HAVING AVG(nota) > 7
ORDER BY AVG(nota) DESC;