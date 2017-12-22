.class public interface abstract Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineStorageVolumeUiList;
.super Ljava/lang/Object;
.source "OfflineStorageVolumeUiList.java"

# interfaces
.implements Lcom/netflix/mediaclient/util/ReadOnlyList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netflix/mediaclient/util/ReadOnlyList",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineStorageVolume;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getCurrentSelectedVolumeIndex()I
.end method

.method public abstract isStorageRemovable(I)Z
.end method
