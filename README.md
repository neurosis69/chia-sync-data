# chia-sync-data

All tests are done using my [ansible sync test repo](https://github.com/neurosis69/chia-sync-test).

## 1.3.5 Synctest (tools/test_full_sync.py)
#### i7-11700K

TESTCASE|DB-Device|Sync Time(s)</br>avg over 5 runs|diff(s)| +/- %|Chain length|Filled|Information
---|---|---|---|---|---|---|---
AUTOTEST28|NVME-SSD|130.29s|7.13s|5.19%|500|100|Drop Indexes + Change update stmt _set_spent
AUTOTEST22|NVME-SSD|131.76s|5.6s|4.12%|500|100|Journal_mode=off + synchronous=off + Drop Indexes
AUTOTEST21|NVME-SSD|131.90s|5.52s|4.02%|500|100|Journal_mode=off + synchronous=off + Drop Indexes +</br> 32700 bind + _set_spent update + 500M cache_size 
AUTOTEST29|NVME-SSD|132.69s|4.73s|3.44%|500|100|Use 100M Cache_size + Change update stmt _set_spent
AUTOTEST31|NVME-SSD|s|s|3.03%|500|100|synchronous=off + Drop Indexs + 32700 bind + _set_spent + batch coin insert + 100M cache_size
AUTOTEST25|NVME-SSD|133.35s|4.07s|2.96%|500|100|synchronous=off + Drop Indexes
AUTOTEST27|NVME-SSD|133.35s|4.07s|2.96%|500|100|Use 500M Cache_size + Change update stmt _set_spent
AUTOTEST30|NVME-SSD|133.37s|4.05s|2.95%|500|100|Use 100M Cache_size + batch coin _record inserts
AUTOTEST26|NVME-SSD|133.43s|3.99s|2.90%|500|100|Use 100M Cache_size
AUTOTEST4|NVME-SSD|133.46s|3.96s|2.88%|500|100|Drop Indexes
AUTOTEST3|NVME-SSD|133.69s|3.73s|2.71%|500|100|Journal_mode=off
AUTOTEST11|NVME-SSD|135.64s|1.78s|1.30%|500|100|sqlite3 compile options:</br> SQLITE_ENABLE_ATOMIC_WRITE+SQLITE_ENABLE_BATCH_ATOMIC_WRITE
AUTOTEST8|NVME-SSD|136.62s|0.8s|0.58%|500|100|Use 500M Cache_size
AUTOTEST20|NVME-SSD|137.27s|0.15s|0.11%|500|100|synchronous=Normal
DEFAULT|NVME-SSD|137.42s|0s|0%|500|100|main branch
AUTOTEST2|NVME-SSD|137.52s|-0.1s|-0.07%|500|100|synchronous=off
AUTOTEST13|NVME-SSD|137.53s|-0.11s|-0.08%|500|100|sqlite3 compile options:</br> SQLITE_DEFAULT_MEMSTATUS
AUTOTEST7|NVME-SSD|137.57s|-0.15s|-0.11%|500|100|mmap_size=2G
AUTOTEST17|NVME-SSD|137.69s|-0.27s|-0.20%|500|100|sqlite3 compile options:</br> 
AUTOTEST6|NVME-SSD|137.72s|-0.3s|-0.22%|500|100|Change update stmt _set_spent
AUTOTEST5|NVME-SSD|137.75s|-0.33s|-0.24%|500|100|Increase SQLITE_MAX_VARIABLE_NUMBER to 32700
AUTOTEST12|NVME-SSD|137.84s|-0.42s|-0.31%|500|100|sqlite3 compile options:</br> SQLITE_DIRECT_OVERFLOW_READ
AUTOTEST18|NVME-SSD|137.93s|-0.51s|-0.37%|500|100|sqlite3 compile options:</br> SQLITE_USE_ALLOCA
AUTOTEST15|NVME-SSD|137.98s|-0.56s|-0.41%|500|100|sqlite3 compile options:</br> SQLITE_MAX_EXPR_DEPTH=0
AUTOTEST24|NVME-SSD|138.01s|-0.59s|-0.43%|500|100|Use batch coin_record inserts
AUTOTEST14|NVME-SSD|138.03s|-0.61s|-0.44%|500|100|sqlite3 compile options:</br> SQLITE_LIKE_DOESNT_MATCH_BLOBS
AUTOTEST16|NVME-SSD|138.06s|-0.64s|-0.47%|500|100|sqlite3 compile options:</br> SQLITE_OMIT_PROGRESS_CALLBACK
AUTOTEST19|NVME-SSD|139.00s|-1.58s|-1.15%|500|100|sqlite3 compile options:</br> Use all tested sqlite3 compile options

#### Rpi4-8G
TESTCASE|DB-Device|Sync Time(s)</br>avg over 2 runs|diff(s)| +/- %|Chain length|Filled|Information
---|---|---|---|---|---|---|---
AUTOTEST21|SATA-SSD|1624.59s|181.8s|10.06%|500|100|Journal_mode=off + synchronous=off + Drop Indexes +</br> 32700 bind + _set_spent update + 500M cache_size 
AUTOTEST22|SATA-SSD|1650.75s|155.6s|8.61%|500|100|Journal_mode=off + synchronous=off + Drop Indexes
AUTOTEST3|SATA-SSD|1680.74s|125.6s|6.95%|500|100|Journal_mode=off
AUTOTEST25|SATA-SSD|1691.82s|114.5s|6.34%|500|100|synchronous=off + Drop Indexes
AUTOTEST4|SATA-SSD|1703.07s|103.3s|5.72%|500|100|Drop Indexes
AUTOTEST8|SATA-SSD|1737.51s|68.85s|3.81%|500|100|Use 500M Cache_size
AUTOTEST5|SATA-SSD|1783.92s|22.44s|1.24%|500|100|Increase SQLITE_MAX_VARIABLE_NUMBER to 32700 (before merge to main)
AUTOTEST7|SATA-SSD|1785.32s|21.04s|1.16%|500|100|mmap_size=2G
AUTOTEST2|SATA-SSD|1792.52s|13.84s|0.77%|500|100|synchronous=off
AUTOTEST6|SATA-SSD|1795.53s|10.83s|0.6%|500|100|Change update stmt _set_spent
AUTOTEST24|SATA-SSD|1796.80s|9.56s|0.53%|500|100|Use batch coin_record inserts
DEFAULT|SATA-SSD|1806.36s|0|0%|500|100|main branch
AUTOTEST20|SATA-SSD|1822s|-15.64s|-0.87%|500|100|synchronous=Normal



## 1.3.5 Fullsync
#### i7-11700K

SCENARIO|TESTCASE|DB-Device|Sync Time<br>(HH:MI:SS)</br>|From Height|To Height|blocks/</br>minute|GB written|Data
---|---|---|---|---|---|---|---|---
V2_DS_FULLSYNC|AUTOTEST0|NVME-SSD|06:42:11|1528704|2024640|1233|885,6077|[data](https://github.com/neurosis69/chia-sync-data/tree/main/data/i7-11700K/V2_DS_FULLSYNC/NVME_SSD/2022-05-25_11:49:39)
V2_DS_FULLSYNC|DEFAULT|NVME-SSD|08:43:15|1528704|2025984|950|3359,265|[data](https://github.com/neurosis69/chia-sync-data/tree/main/data/i7-11700K/V2_DS_FULLSYNC/NVME_SSD/2022-05-25_11:49:39)

#### Rpi4-8G

SCENARIO|TESTCASE|DB-Device|Sync Time<br>(HH:MI:SS)</br>|From Height|To Height|Data
---|---|---|---|---|---|---
