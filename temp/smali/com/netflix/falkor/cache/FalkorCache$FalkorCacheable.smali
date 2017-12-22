.class interface abstract Lcom/netflix/falkor/cache/FalkorCache$FalkorCacheable;
.super Ljava/lang/Object;
.source "FalkorCache.java"

# interfaces
.implements Lio/realm/RealmModel;


# virtual methods
.method public abstract getExpiry()Ljava/util/Date;
.end method

.method public abstract getLastModifiedTime()J
.end method

.method public abstract getPath()Ljava/lang/String;
.end method

.method public abstract getPayload()Ljava/lang/String;
.end method

.method public abstract getSentinel()Z
.end method

.method public abstract getVolatile()Z
.end method

.method public abstract setExpiry(Ljava/util/Date;)V
.end method

.method public abstract setLastModifiedTime(J)V
.end method

.method public abstract setPath(Ljava/lang/String;)V
.end method

.method public abstract setPayload(Ljava/lang/String;)V
.end method

.method public abstract setSentinel(Z)V
.end method

.method public abstract setVolatile(Z)V
.end method
