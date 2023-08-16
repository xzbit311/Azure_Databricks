-- Databricks notebook source
-- MAGIC %python
-- MAGIC # Databricks notebook source
-- MAGIC #Mounting Azure Data Lake
-- MAGIC configs_gen2_dev = {"fs.azure.account.auth.type": "OAuth",
-- MAGIC                           "fs.azure.account.oauth.provider.type": "org.apache.hadoop.fs.azurebfs.oauth2.ClientCredsTokenProvider",
-- MAGIC                           "fs.azure.account.oauth2.client.id": "ecd1a442-9cc0-4d82-bce2-9e9b558de268",
-- MAGIC                           "fs.azure.account.oauth2.client.secret": "nrB8Q~vhuRrIhej1hbpg-_Ygf668AskYWUFqIdvm",
-- MAGIC                           "fs.azure.account.oauth2.client.endpoint": "https://login.microsoftonline.com/212495af-5ba4-4e31-8511-40118051eaaf/oauth2/token"}
-- MAGIC
-- MAGIC # COMMAND ----------
-- MAGIC
-- MAGIC dbutils.fs.unmount("/mnt/dev/")
-- MAGIC
-- MAGIC # COMMAND ----------
-- MAGIC
-- MAGIC dbutils.fs.mount(
-- MAGIC   source = "abfss://test-dir@rxdevtrainingst.dfs.core.windows.net/",  
-- MAGIC   mount_point = "/mnt/dev/",
-- MAGIC   extra_configs = configs_gen2_dev)