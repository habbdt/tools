

create snapshot repository and take a snapshot
==============================================

```
curl -X PUT -u "elastic:$PASSWORD" -k  "https://localhost:9200/_snapshot/eckessnapshotgcs001repo" -H 'Content-Type: application/json' -d'{  "type": "gcs",  "settings": {    "bucket": "eckes-snapshot-gcs-001",    "client": "default"  }}'
curl -X GET  -u "elastic:$PASSWORD" -k  "https://localhost:9200/_snapshot"
curl -X PUT  -u "elastic:$PASSWORD" -k  "https://localhost:9200/_snapshot/eckessnapshotgcs001repo/first-snapshot"
curl -X POST  -u "elastic:$PASSWORD" -k  "https://localhost:9200/_snapshot/eckessnapshotgcs001repo/_verify"
```

restore snapshot
================
```
curl -X POST  -u "elastic:$PASSWORD" -k  "https://localhost:9200/_snapshot/eckessnapshotgcs001repo/first-snapshot/_restore"
```
