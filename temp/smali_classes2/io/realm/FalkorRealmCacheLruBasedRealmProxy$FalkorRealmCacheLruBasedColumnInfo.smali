.class final Lio/realm/FalkorRealmCacheLruBasedRealmProxy$FalkorRealmCacheLruBasedColumnInfo;
.super Lio/realm/internal/ColumnInfo;
.source "FalkorRealmCacheLruBasedRealmProxy.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public expiryIndex:J

.field public isVolatileIndex:J

.field public lastModifiedIndex:J

.field public pathIndex:J

.field public payloadIndex:J

.field public sentinelIndex:J


# direct methods
.method constructor <init>(Ljava/lang/String;Lio/realm/internal/Table;)V
    .locals 4

    .prologue
    .line 44
    invoke-direct {p0}, Lio/realm/internal/ColumnInfo;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 46
    const-string/jumbo v1, "FalkorRealmCacheLruBased"

    const-string/jumbo v2, "path"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/FalkorRealmCacheLruBasedRealmProxy$FalkorRealmCacheLruBasedColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/FalkorRealmCacheLruBasedRealmProxy$FalkorRealmCacheLruBasedColumnInfo;->pathIndex:J

    .line 47
    const-string/jumbo v1, "path"

    iget-wide v2, p0, Lio/realm/FalkorRealmCacheLruBasedRealmProxy$FalkorRealmCacheLruBasedColumnInfo;->pathIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string/jumbo v1, "FalkorRealmCacheLruBased"

    const-string/jumbo v2, "payload"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/FalkorRealmCacheLruBasedRealmProxy$FalkorRealmCacheLruBasedColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/FalkorRealmCacheLruBasedRealmProxy$FalkorRealmCacheLruBasedColumnInfo;->payloadIndex:J

    .line 49
    const-string/jumbo v1, "payload"

    iget-wide v2, p0, Lio/realm/FalkorRealmCacheLruBasedRealmProxy$FalkorRealmCacheLruBasedColumnInfo;->payloadIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string/jumbo v1, "FalkorRealmCacheLruBased"

    const-string/jumbo v2, "expiry"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/FalkorRealmCacheLruBasedRealmProxy$FalkorRealmCacheLruBasedColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/FalkorRealmCacheLruBasedRealmProxy$FalkorRealmCacheLruBasedColumnInfo;->expiryIndex:J

    .line 51
    const-string/jumbo v1, "expiry"

    iget-wide v2, p0, Lio/realm/FalkorRealmCacheLruBasedRealmProxy$FalkorRealmCacheLruBasedColumnInfo;->expiryIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string/jumbo v1, "FalkorRealmCacheLruBased"

    const-string/jumbo v2, "lastModified"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/FalkorRealmCacheLruBasedRealmProxy$FalkorRealmCacheLruBasedColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/FalkorRealmCacheLruBasedRealmProxy$FalkorRealmCacheLruBasedColumnInfo;->lastModifiedIndex:J

    .line 53
    const-string/jumbo v1, "lastModified"

    iget-wide v2, p0, Lio/realm/FalkorRealmCacheLruBasedRealmProxy$FalkorRealmCacheLruBasedColumnInfo;->lastModifiedIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string/jumbo v1, "FalkorRealmCacheLruBased"

    const-string/jumbo v2, "sentinel"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/FalkorRealmCacheLruBasedRealmProxy$FalkorRealmCacheLruBasedColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/FalkorRealmCacheLruBasedRealmProxy$FalkorRealmCacheLruBasedColumnInfo;->sentinelIndex:J

    .line 55
    const-string/jumbo v1, "sentinel"

    iget-wide v2, p0, Lio/realm/FalkorRealmCacheLruBasedRealmProxy$FalkorRealmCacheLruBasedColumnInfo;->sentinelIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string/jumbo v1, "FalkorRealmCacheLruBased"

    const-string/jumbo v2, "isVolatile"

    invoke-virtual {p0, p1, p2, v1, v2}, Lio/realm/FalkorRealmCacheLruBasedRealmProxy$FalkorRealmCacheLruBasedColumnInfo;->getValidColumnIndex(Ljava/lang/String;Lio/realm/internal/Table;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/FalkorRealmCacheLruBasedRealmProxy$FalkorRealmCacheLruBasedColumnInfo;->isVolatileIndex:J

    .line 57
    const-string/jumbo v1, "isVolatile"

    iget-wide v2, p0, Lio/realm/FalkorRealmCacheLruBasedRealmProxy$FalkorRealmCacheLruBasedColumnInfo;->isVolatileIndex:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-virtual {p0, v0}, Lio/realm/FalkorRealmCacheLruBasedRealmProxy$FalkorRealmCacheLruBasedColumnInfo;->setIndicesMap(Ljava/util/Map;)V

    .line 60
    return-void
.end method


# virtual methods
.method public final clone()Lio/realm/FalkorRealmCacheLruBasedRealmProxy$FalkorRealmCacheLruBasedColumnInfo;
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Lio/realm/internal/ColumnInfo;->clone()Lio/realm/internal/ColumnInfo;

    move-result-object v0

    check-cast v0, Lio/realm/FalkorRealmCacheLruBasedRealmProxy$FalkorRealmCacheLruBasedColumnInfo;

    return-object v0
.end method

.method public bridge synthetic clone()Lio/realm/internal/ColumnInfo;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lio/realm/FalkorRealmCacheLruBasedRealmProxy$FalkorRealmCacheLruBasedColumnInfo;->clone()Lio/realm/FalkorRealmCacheLruBasedRealmProxy$FalkorRealmCacheLruBasedColumnInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lio/realm/FalkorRealmCacheLruBasedRealmProxy$FalkorRealmCacheLruBasedColumnInfo;->clone()Lio/realm/FalkorRealmCacheLruBasedRealmProxy$FalkorRealmCacheLruBasedColumnInfo;

    move-result-object v0

    return-object v0
.end method

.method public final copyColumnInfoFrom(Lio/realm/internal/ColumnInfo;)V
    .locals 2

    .prologue
    .line 64
    check-cast p1, Lio/realm/FalkorRealmCacheLruBasedRealmProxy$FalkorRealmCacheLruBasedColumnInfo;

    .line 65
    iget-wide v0, p1, Lio/realm/FalkorRealmCacheLruBasedRealmProxy$FalkorRealmCacheLruBasedColumnInfo;->pathIndex:J

    iput-wide v0, p0, Lio/realm/FalkorRealmCacheLruBasedRealmProxy$FalkorRealmCacheLruBasedColumnInfo;->pathIndex:J

    .line 66
    iget-wide v0, p1, Lio/realm/FalkorRealmCacheLruBasedRealmProxy$FalkorRealmCacheLruBasedColumnInfo;->payloadIndex:J

    iput-wide v0, p0, Lio/realm/FalkorRealmCacheLruBasedRealmProxy$FalkorRealmCacheLruBasedColumnInfo;->payloadIndex:J

    .line 67
    iget-wide v0, p1, Lio/realm/FalkorRealmCacheLruBasedRealmProxy$FalkorRealmCacheLruBasedColumnInfo;->expiryIndex:J

    iput-wide v0, p0, Lio/realm/FalkorRealmCacheLruBasedRealmProxy$FalkorRealmCacheLruBasedColumnInfo;->expiryIndex:J

    .line 68
    iget-wide v0, p1, Lio/realm/FalkorRealmCacheLruBasedRealmProxy$FalkorRealmCacheLruBasedColumnInfo;->lastModifiedIndex:J

    iput-wide v0, p0, Lio/realm/FalkorRealmCacheLruBasedRealmProxy$FalkorRealmCacheLruBasedColumnInfo;->lastModifiedIndex:J

    .line 69
    iget-wide v0, p1, Lio/realm/FalkorRealmCacheLruBasedRealmProxy$FalkorRealmCacheLruBasedColumnInfo;->sentinelIndex:J

    iput-wide v0, p0, Lio/realm/FalkorRealmCacheLruBasedRealmProxy$FalkorRealmCacheLruBasedColumnInfo;->sentinelIndex:J

    .line 70
    iget-wide v0, p1, Lio/realm/FalkorRealmCacheLruBasedRealmProxy$FalkorRealmCacheLruBasedColumnInfo;->isVolatileIndex:J

    iput-wide v0, p0, Lio/realm/FalkorRealmCacheLruBasedRealmProxy$FalkorRealmCacheLruBasedColumnInfo;->isVolatileIndex:J

    .line 72
    invoke-virtual {p1}, Lio/realm/FalkorRealmCacheLruBasedRealmProxy$FalkorRealmCacheLruBasedColumnInfo;->getIndicesMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/realm/FalkorRealmCacheLruBasedRealmProxy$FalkorRealmCacheLruBasedColumnInfo;->setIndicesMap(Ljava/util/Map;)V

    .line 73
    return-void
.end method
