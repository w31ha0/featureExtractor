.class public interface abstract Lcom/netflix/mediaclient/service/player/manifest/NfManifestCacheServiceInterface;
.super Ljava/lang/Object;
.source "NfManifestCacheServiceInterface.java"


# virtual methods
.method public abstract clearAll()V
.end method

.method public abstract onBackgroundTrimMem()V
.end method

.method public abstract onNetworkConnectivityChanged()V
.end method

.method public abstract prepare(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/PlayerPrepareRequest;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract release()V
.end method
