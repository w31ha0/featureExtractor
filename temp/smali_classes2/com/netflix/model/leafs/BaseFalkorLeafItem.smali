.class public abstract Lcom/netflix/model/leafs/BaseFalkorLeafItem;
.super Ljava/lang/Object;
.source "BaseFalkorLeafItem.java"


# instance fields
.field private lastModified:J


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/model/leafs/BaseFalkorLeafItem;->lastModified:J

    .line 14
    return-void
.end method


# virtual methods
.method public getLastModifiedInCache()J
    .locals 2

    .prologue
    .line 17
    iget-wide v0, p0, Lcom/netflix/model/leafs/BaseFalkorLeafItem;->lastModified:J

    return-wide v0
.end method

.method public needsRefresh(J)Z
    .locals 5

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/netflix/model/leafs/BaseFalkorLeafItem;->lastModified:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/netflix/model/leafs/BaseFalkorLeafItem;->lastModified:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLastModifiedInCache(J)V
    .locals 1

    .prologue
    .line 25
    iput-wide p1, p0, Lcom/netflix/model/leafs/BaseFalkorLeafItem;->lastModified:J

    .line 26
    return-void
.end method
