SELECT title, max_grade FROM projects WHERE max_grade > 50;

SELECT title, max_grade FROM projects
WHERE max_grade > 10
AND max_grade < 60;

SELECT title, max_grade FROM projects
WHERE max_grade < 25
OR max_grade > 75;

SELECT * FROM projects 
ORDER BY max_grade;

CREATE TABLE grades (
    id SERIAL PRIMARY KEY,
    student_github VARCHAR(30) REFERENCES students,
    project_title VARCHAR(30) REFERENCES projects,
    grade INT
);

INSERT INTO grades (student_github, project_title, grade)
VALUES ('jhacks', 'Markov', 10),
('jhacks', 'Blockly', 2),
('sdevelops', 'Markov', 50),
('sdevelops', 'Blockly', 100); 

SELECT *
FROM students
    JOIN grades ON (students.github = grades.student_github);