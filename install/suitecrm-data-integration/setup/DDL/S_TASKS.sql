DROP TABLE IF EXISTS S_TASKS;
CREATE TABLE S_TASKS (
    id VARCHAR(36) DEFAULT NULL,
    name VARCHAR(255) DEFAULT NULL,
    date_entered DATETIME DEFAULT NULL,
    date_modified DATETIME DEFAULT NULL,
    modified_user_id VARCHAR(36) DEFAULT NULL,
    created_by VARCHAR(36) DEFAULT NULL,
    description TEXT(65535) DEFAULT NULL,
    deleted CHAR(1) DEFAULT NULL,
    assigned_user_id VARCHAR(36) DEFAULT NULL,
    status VARCHAR(100) DEFAULT NULL,
    date_due_flag CHAR(1) DEFAULT NULL,
    date_due DATETIME DEFAULT NULL,
    date_start_flag CHAR(1) DEFAULT NULL,
    date_start DATETIME DEFAULT NULL,
    parent_type VARCHAR(100) DEFAULT NULL,
    parent_id VARCHAR(36) DEFAULT NULL,
    contact_id VARCHAR(36) DEFAULT NULL,
    Priority VARCHAR(100) DEFAULT NULL  
);