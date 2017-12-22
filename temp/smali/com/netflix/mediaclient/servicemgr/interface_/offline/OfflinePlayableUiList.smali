.class public interface abstract Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;
.super Ljava/lang/Object;
.source "OfflinePlayableUiList.java"

# interfaces
.implements Lcom/netflix/mediaclient/util/ReadOnlyList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netflix/mediaclient/util/ReadOnlyList",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getColoredStatusString(Landroid/content/Context;ILjava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)Ljava/lang/CharSequence;
.end method

.method public abstract getCurrentSpace(I)J
.end method

.method public abstract getInProgressCount()I
.end method

.method public abstract getOfflinePlayableViewData(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;
.end method

.method public abstract getOfflinePlayableViewData()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPercentage(I)I
.end method

.method public abstract getSnackbarStatus(Landroid/content/Context;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;)Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener$SnackbarMessage;
.end method

.method public abstract getTitleCount()I
.end method

.method public abstract getTitleCount(Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;)I
.end method

.method public abstract hasAnyCreatingOrCreateFailedItems()Z
.end method

.method public abstract numberOfIncompleteItems()I
.end method

.method public abstract numberOfItemsToDownload()I
.end method

.method public abstract regenerate(Lio/realm/Realm;Ljava/util/Map;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/Realm;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;",
            ">;Z)V"
        }
    .end annotation
.end method
