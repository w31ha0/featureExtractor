.class public Lcom/netflix/mediaclient/servicemgr/OfflineStorageVolumeUiListImpl;
.super Ljava/lang/Object;
.source "OfflineStorageVolumeUiListImpl.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineStorageVolumeUiList;


# instance fields
.field private final mOfflineStorageVolumeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineStorageVolume;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/servicemgr/OfflineStorageVolumeUiListImpl;->mOfflineStorageVolumeList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public get(I)Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineStorageVolume;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/OfflineStorageVolumeUiListImpl;->mOfflineStorageVolumeList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineStorageVolume;

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/servicemgr/OfflineStorageVolumeUiListImpl;->get(I)Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineStorageVolume;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentSelectedVolumeIndex()I
    .locals 3

    .prologue
    .line 27
    const/4 v0, -0x1

    .line 28
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/OfflineStorageVolumeUiListImpl;->mOfflineStorageVolumeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineStorageVolume;

    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 30
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineStorageVolume;->isCurrentlySelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    :cond_1
    return v1
.end method

.method public isStorageRemovable(I)Z
    .locals 1

    .prologue
    .line 40
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/OfflineStorageVolumeUiListImpl;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 41
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/servicemgr/OfflineStorageVolumeUiListImpl;->get(I)Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineStorageVolume;

    move-result-object v0

    .line 42
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineStorageVolume;->isRemovable()Z

    move-result v0

    .line 44
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/OfflineStorageVolumeUiListImpl;->mOfflineStorageVolumeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public update(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineStorageVolume;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/OfflineStorageVolumeUiListImpl;->mOfflineStorageVolumeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 50
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/OfflineStorageVolumeUiListImpl;->mOfflineStorageVolumeList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 51
    return-void
.end method
