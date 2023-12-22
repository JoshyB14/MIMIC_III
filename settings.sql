/*
SETTINGS FILE --- NOTE REQURIES DB RESTART

*/

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- System settings (from PGTune)

-- DB Version: 16
-- OS Type: mac
-- DB Type: mixed
-- Total Memory (RAM): 8 GB
-- CPUs num: 4
-- Connections num: 40
-- Data Storage: ssd

ALTER SYSTEM SET
 max_connections = '40';
ALTER SYSTEM SET
 shared_buffers = '2GB';
ALTER SYSTEM SET
 effective_cache_size = '6GB';
ALTER SYSTEM SET
 maintenance_work_mem = '512MB';
ALTER SYSTEM SET
 checkpoint_completion_target = '0.9';
ALTER SYSTEM SET
 wal_buffers = '16MB';
ALTER SYSTEM SET
 default_statistics_target = '100';
ALTER SYSTEM SET
 random_page_cost = '1.1';
ALTER SYSTEM SET
 work_mem = '13107kB';
ALTER SYSTEM SET
 huge_pages = 'off';
ALTER SYSTEM SET
 min_wal_size = '1GB';
ALTER SYSTEM SET
 max_wal_size = '4GB';
ALTER SYSTEM SET
 max_worker_processes = '4';
ALTER SYSTEM SET
 max_parallel_workers_per_gather = '2';
ALTER SYSTEM SET
 max_parallel_workers = '4';
ALTER SYSTEM SET
 max_parallel_maintenance_workers = '2';

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Timeout settings
ALTER SYSTEM SET 
 idle_in_transaction_session_timeout = '3600s'; -- 1hr

ALTER SYSTEM SET 
 idle_session_timeout = '21600s'; --6hrs

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Autovacuum settings

ALTER SYSTEM SET 
 autovacuum_vacuum_threshold = 50; -- 50 rows changed before autovacuum runs

ALTER SYSTEM SET 
 autovacuum_vacuum_scale_factor = 0; -- % of table that must be dead tuples

ALTER SYSTEM SET 
 autovacuum_analyze_threshold = 50; -- 50 rows changed before analyse kicks in

ALTER SYSTEM SET 
 autovacuum_analyze_scale_factor= 0; -- % of table that must have changed



