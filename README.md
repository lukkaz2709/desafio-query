# 📊 Desafio SQL – Análise de Consultas

Este documento resume as 12 consultas SQL presentes no arquivo `SQLQuery1 - Desafio.sql`, com foco em operações com dados de filmes, atores e gêneros.

---

## 📁 Tabelas Utilizadas
- **Filmes**
- **Atores**
- **Generos**
- **FilmesGenero** (tabela associativa)
- **ElencoFilme**

---

## 🔍 Consultas SQL

### 1. Nome e ano de todos os filmes
```sql
SELECT Nome, Ano FROM Filmes;
```

---

### 2. Nome e ano dos filmes ordenados por ano (crescente)
```sql
SELECT Nome, Ano FROM Filmes ORDER BY Ano ASC;
```

---

### 3. Filme específico: *De Volta para o Futuro*
```sql
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro';
```

---

### 4. Filmes lançados em 1997
```sql
SELECT Nome, Ano FROM Filmes WHERE Ano = 1997;
```

---

### 5. Filmes lançados após 2000
```sql
SELECT Nome, Ano FROM Filmes WHERE Ano > 2000;
```

---

### 6. Filmes com duração entre 100 e 150 minutos
```sql
SELECT Nome, Duracao FROM Filmes 
WHERE Duracao > 100 AND Duracao < 150 
ORDER BY Duracao ASC;
```

---

### 7. Quantidade de filmes por ano
```sql
SELECT Ano, COUNT(*) AS QuantidadeDeFilmes 
FROM Filmes 
GROUP BY Ano 
ORDER BY Ano DESC;
```

---

### 8. Atores do gênero masculino
```sql
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'M';
```

---

### 9. Atores do gênero feminino, ordenados por nome
```sql
SELECT PrimeiroNome, UltimoNome 
FROM Atores 
WHERE Genero = 'F' 
ORDER BY PrimeiroNome;
```

---

### 10. Filmes com seus gêneros (join direto)
```sql
SELECT f.Nome AS NomeFilme, g.Nome AS Genero 
FROM Filmes f 
INNER JOIN Generos g ON f.GeneroId = g.Id;
```

---

### 11. Filmes do gênero "Mistério" (join via tabela associativa)
```sql
SELECT F.Nome AS NomeDoFilme, G.Genero 
FROM Filmes F 
INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme 
INNER JOIN Generos G ON FG.IdGenero = G.Id 
WHERE G.Genero = 'Mistério';
```

---

### 12. Elenco completo dos filmes
```sql
SELECT 
    filme.nome AS nome_filme,
    ator.primeiro_nome,
    ator.ultimo_nome,
    elencoFilme.papel
FROM filme
JOIN elencoFilme ON filme.id = elencoFilme.filme_id
JOIN ator ON elencoFilme.ator_id = ator.id;
```

