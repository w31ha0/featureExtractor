.class public interface abstract Lcom/netflix/mediaclient/servicemgr/IManifestCache;
.super Ljava/lang/Object;
.source "IManifestCache.java"


# virtual methods
.method public abstract cacheFlush()V
.end method

.method public abstract cachePause()V
.end method

.method public abstract cacheResume()V
.end method

.method public abstract cacheSchedule([Lcom/netflix/mediaclient/servicemgr/IManifestCache$CacheScheduleRequest;Lcom/netflix/mediaclient/servicemgr/AuthorizationParams;)V
.end method

.method public abstract setCacheManifestType(I)V
.end method

.method public abstract setMaxCacheByteSize(I)V
.end method

.method public abstract setMaxCacheSize(I)V
.end method
