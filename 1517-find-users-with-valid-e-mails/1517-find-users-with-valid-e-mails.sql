SELECT user_id, name, mail
FROM users
WHERE mail REGEXP '^[a-zA-Z][a-zA-Z0-9_.-]*@leetcode\\.com$'
             AND mail LIKE BINARY '%@leetcode.com';


/* SELECT user_id, name, mail
FROM Users
WHERE mail LIKE '%@leetcode.com'
AND mail NOT LIKE '.%@leetcode.com'
AND mail NOT LIKE '%#%' */
