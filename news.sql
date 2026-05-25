CREATE TABLE IF NOT EXISTS NEWS (
    TITLE TEXT,
    SOURCE TEXT,
    CATEGORY TEXT,
    SEVERITY_LEVEL INT,
    TOTAL_VIEWS INT,
    CREDIBILITY_SCORE DECIMAL(3,2),
    PUBLISH_DATE DATE
);

INSERT INTO NEWS
(TITLE, SOURCE, CATEGORY, SEVERITY_LEVEL, TOTAL_VIEWS, CREDIBILITY_SCORE, PUBLISH_DATE)
VALUES
('Massive Banking Trojan Attack Detected', 'CyberDaily', 'Malware', 9, 250000, 9.5, '2026-05-10'),
('Government Website Breached by Hackers', 'SecureWorld', 'Data Breach', 10, 500000, 9.8, '2026-05-12'),
('New Ransomware Targets Hospitals', 'ThreatPost', 'Ransomware', 8, 320000, 9.1, '2026-05-14'),
('Ethical Hackers Discover Zero-Day Vulnerability', 'CyberDaily', 'Vulnerability', 7, 150000, 8.7, '2026-05-15'),
('Cryptocurrency Exchange Hacked', 'SecureWorld', 'Crypto Attack', 9, 410000, 9.4, '2026-05-16'),
('Phishing Campaign Hits Millions of Users', 'ThreatPost', 'Phishing', 6, 280000, 8.9, '2026-05-18'),
('Hackers Leak Confidential Military Data', 'CyberIntel', 'Data Leak', 10, 620000, 9.9, '2026-05-20');

SELECT TITLE, MAX(TOTAL_VIEWS) AS HIGHEST_VIEWS
FROM NEWS
GROUP BY TITLE
ORDER BY HIGHEST_VIEWS DESC;

SELECT TITLE, MAX(CREDIBILITY_SCORE) AS BEST_CREDIBILITY
FROM NEWS
GROUP BY TITLE
ORDER BY BEST_CREDIBILITY DESC;

SELECT CATEGORY,
       AVG(SEVERITY_LEVEL) AS AVG_SEVERITY
FROM NEWS
GROUP BY CATEGORY
ORDER BY AVG_SEVERITY DESC;

SELECT
    TITLE,
    (
        (TOTAL_VIEWS * 0.0001) +
        (SEVERITY_LEVEL * 2) +
        (CREDIBILITY_SCORE * 3)
    ) AS TOTAL_SCORE
FROM NEWS
ORDER BY TOTAL_SCORE DESC;