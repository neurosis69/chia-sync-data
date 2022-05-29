# chia-sync-data

All tests are done using my [ansible sync test repo](https://github.com/neurosis69/chia-sync-test).

## 1.3.5 Synctest (tools/test_full_sync.py)
#### i7-11700K - NVME-SSD, 500 block length, 100% filled, avg over 5 runs

TESTCASE|Sync Time(s)|diff(s)| +/- %|Information
---|---|---|---|---
AUTOTEST31|129.9s|7.52s|5.19%|synchronous=off + Drop Indexs + 32700 bind + _set_spent + batch coin insert + 100M cache_size
AUTOTEST28|130.29s|7.13s|5.19%|Drop Indexes + Change update stmt _set_spent
AUTOTEST32|130.9s|6.52s|4.74%|Drop Indexes + batch coin _record inserts
AUTOTEST22|131.76s|5.6s|4.12%|Journal_mode=off + synchronous=off + Drop Indexes
AUTOTEST21|131.90s|5.52s|4.02%|Journal_mode=off + synchronous=off + Drop Indexes +</br> 32700 bind + _set_spent update + 500M cache_size 
AUTOTEST29|132.69s|4.73s|3.44%|Use 100M Cache_size + Change update stmt _set_spent
AUTOTEST25|133.35s|4.07s|2.96%|synchronous=off + Drop Indexes
AUTOTEST27|133.35s|4.07s|2.96%|Use 500M Cache_size + Change update stmt _set_spent
AUTOTEST30|133.37s|4.05s|2.95%|Use 100M Cache_size + batch coin _record inserts
AUTOTEST26|133.43s|3.99s|2.90%|Use 100M Cache_size
AUTOTEST4|133.46s|3.96s|2.88%|Drop Indexes
AUTOTEST3|133.69s|3.73s|2.71%|Journal_mode=off
AUTOTEST11|135.64s|1.78s|1.30%|sqlite3 compile options:</br> SQLITE_ENABLE_ATOMIC_WRITE+SQLITE_ENABLE_BATCH_ATOMIC_WRITE
AUTOTEST8|136.62s|0.8s|0.58%|Use 500M Cache_size
AUTOTEST20|137.27s|0.15s|0.11%|synchronous=Normal
DEFAULT|137.42s|0s|0%|main branch
AUTOTEST2|137.52s|-0.1s|-0.07%|synchronous=off
AUTOTEST13|137.53s|-0.11s|-0.08%|sqlite3 compile options:</br> SQLITE_DEFAULT_MEMSTATUS
AUTOTEST7|137.57s|-0.15s|-0.11%|mmap_size=2G
AUTOTEST17|137.69s|-0.27s|-0.20%|sqlite3 compile options:</br> SQLITE_OMIT_SHARED_CACHE
AUTOTEST6|137.72s|-0.3s|-0.22%|Change update stmt _set_spent
AUTOTEST5|137.75s|-0.33s|-0.24%|Increase SQLITE_MAX_VARIABLE_NUMBER to 32700
AUTOTEST12|137.84s|-0.42s|-0.31%|sqlite3 compile options:</br> SQLITE_DIRECT_OVERFLOW_READ
AUTOTEST18|137.93s|-0.51s|-0.37%|sqlite3 compile options:</br> SQLITE_USE_ALLOCA
AUTOTEST15|137.98s|-0.56s|-0.41%|sqlite3 compile options:</br> SQLITE_MAX_EXPR_DEPTH=0
AUTOTEST24|138.01s|-0.59s|-0.43%|Use batch coin_record inserts
AUTOTEST14|138.03s|-0.61s|-0.44%|sqlite3 compile options:</br> SQLITE_LIKE_DOESNT_MATCH_BLOBS
AUTOTEST16|138.06s|-0.64s|-0.47%|sqlite3 compile options:</br> SQLITE_OMIT_PROGRESS_CALLBACK
AUTOTEST19|139.00s|-1.58s|-1.15%|sqlite3 compile options:</br> Use all tested sqlite3 compile options

#### Rpi4-8G - SATA-SSD, 500 block length, 100% filled, avg over 2 runs
TESTCASE|Sync Time(s)|diff(s)| +/- %|Information
---|---|---|---|---
AUTOTEST21|1624.59s|181.8s|10.06%|Journal_mode=off + synchronous=off + Drop Indexes +</br> 32700 bind + _set_spent update + 500M cache_size 
AUTOTEST22|1650.75s|155.6s|8.61%|Journal_mode=off + synchronous=off + Drop Indexes
AUTOTEST31|1672.76s|133.6s|7.4%|synchronous=off + Drop Indexs + 32700 bind + _set_spent + batch coin insert + 100M cache_size 
AUTOTEST28|1679.46s|129.6s|7.03%|Drop Indexes + _set_spent
AUTOTEST3|1680.74s|125.6s|6.95%|Journal_mode=off
AUTOTEST25|1691.82s|114.5s|6.34%|synchronous=off + Drop Indexes
AUTOTEST32|1701.21s|105.2s|5.82%|Drop Indexes + batch coin_record inserts
AUTOTEST4|1703.07s|103.3s|5.72%|Drop Indexes
AUTOTEST26|1717.03s|89.33s|4.95%|Use 100M cache_size
AUTOTEST29|1726.35s|80.01s|4.43%|Use cache_size of 100M + _set_spent update
AUTOTEST8|1737.51s|68.85s|3.81%|Use 500M Cache_size
AUTOTEST27|1738.26s|68.1s|3.77%|Use 500M Cache_size + _set_spent update
AUTOTEST30|1738.32s|68.04s|3.77%|Use cache_size of 100M + batch coin_record inserts
AUTOTEST5|1783.92s|22.44s|1.24%|Increase SQLITE_MAX_VARIABLE_NUMBER to 32700 (before merge to main)
AUTOTEST7|1785.32s|21.04s|1.16%|mmap_size=2G
AUTOTEST2|1792.52s|13.84s|0.77%|synchronous=off
AUTOTEST6|1795.53s|10.83s|0.6%|Change update stmt _set_spent
AUTOTEST24|1796.80s|9.56s|0.53%|Use batch coin_record inserts
DEFAULT|1806.36s|0|0%|main branch
AUTOTEST20|1822s|-15.64s|-0.87%|synchronous=Normal


## 1.3.5 Fullsync
#### i7-11700K

SCENARIO|TESTCASE|DB-Device|Sync Time<br>(HH:MI:SS)</br>|From Height|To Height|blocks/</br>minute|GB written|Data
---|---|---|---|---|---|---|---|---
V2_DS_FULLSYNC|AUTOTEST0|NVME-SSD|06:42:11|1528704|2024640|1233|885,6077|[data](https://github.com/neurosis69/chia-sync-data/tree/main/data/i7-11700K/V2_DS_FULLSYNC/NVME_SSD/2022-05-25_11:49:39)
V2_DS_FULLSYNC|DEFAULT|NVME-SSD|08:43:15|1528704|2025984|950|3359,265|[data](https://github.com/neurosis69/chia-sync-data/tree/main/data/i7-11700K/V2_DS_FULLSYNC/NVME_SSD/2022-05-25_11:49:39)

#### Rpi4-8G

SCENARIO|TESTCASE|DB-Device|Sync Time<br>(HH:MI:SS)</br>|From Height|To Height|Data
---|---|---|---|---|---|---
