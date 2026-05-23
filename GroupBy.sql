# 1. Mostre quantos alunos existem em cada cidade.
SELECT cidade, COUNT(cidade)
FROM Alunos
GROUP BY cidade;

# 2. Exiba a média de idade dos alunos agrupada por cidade.
SELECT cidade, AVG(idade)
FROM Alunos
GROUP BY cidade;

# 3. Mostre a quantidade de matrículas por curso.
SELECT C.nome_curso, COUNT(C.id_curso)
FROM Matriculas AS M
JOIN Cursos AS C ON M.id_curso = C.id_curso
GROUP BY C.nome_curso;

# 4. Exiba a média das notas por curso.
SELECT C.nome_curso, AVG(nota)
FROM Matriculas as M
JOIN Cursos AS C ON M.id_curso = C.id_curso
GROUP BY C.nome_curso;

# 5. Mostre o total de faltas agrupado por curso.
SELECT C.nome_curso, SUM(faltas)
FROM Matriculas AS M
JOIN Cursos AS C ON M.id_curso = C.id_curso
GROUP BY C.nome_curso;

# 6. Liste a maior nota obtida em cada curso.
SELECT C.nome_curso, MAX(nota)
FROM Matriculas AS M
JOIN Cursos AS C ON M.id_curso = C.id_curso
GROUP BY C.nome_curso;

# 7. Exiba a menor nota registrada em cada curso.
SELECT C.nome_curso, MIN(nota)
FROM Matriculas AS M
JOIN Cursos AS C ON M.id_curso = C.id_curso
GROUP BY C.nome_curso;

# 8. Mostre a soma total das faltas agrupadas por aluno.
SELECT A.nome, SUM(faltas)
FROM Matriculas AS M
JOIN Alunos AS A ON M.id_aluno = A.id_aluno
GROUP BY A.nome;

# 9. Exiba a média de notas agrupada por aluno.
SELECT A.nome, AVG(nota)
FROM Matriculas AS M
JOIN Alunos AS A ON M.id_aluno = A.id_aluno
GROUP BY A.nome;

# 10. Mostre quantos alunos existem em cada faixa etária.
SELECT idade, COUNT(idade)
FROM Alunos
GROUP BY idade;