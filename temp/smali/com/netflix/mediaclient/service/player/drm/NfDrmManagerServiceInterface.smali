.class public interface abstract Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerServiceInterface;
.super Ljava/lang/Object;
.source "NfDrmManagerServiceInterface.java"


# virtual methods
.method public abstract clear(Ljava/lang/Long;)V
.end method

.method public abstract clearAll()V
.end method

.method public abstract onUiHidden()V
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
