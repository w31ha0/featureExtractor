.class public Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiListImpl;
.super Ljava/lang/Object;
.source "OfflinePlayableUiListImpl.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;


# static fields
.field private static final TAG:Ljava/lang/String; = "OfflinePlayableUiListImpl"


# instance fields
.field private mOfflinePlayableUiItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;",
            ">;"
        }
    .end annotation
.end field

.field private final mPlayableToTitleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoIdToOfflineData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiListImpl;->mPlayableToTitleMap:Ljava/util/Map;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiListImpl;->mOfflinePlayableUiItemList:Ljava/util/List;

    .line 70
    return-void
.end method

.method private buildShowCompositeStatus(Landroid/content/Context;I)Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v11, 0x1

    const/4 v6, 0x0

    .line 186
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiListImpl;->mOfflinePlayableUiItemList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;->getEpisodes()[Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    move-result-object v7

    .line 191
    array-length v8, v7

    move v5, v6

    move v1, v6

    move v2, v6

    move v3, v6

    move v4, v6

    :goto_0
    if-ge v5, v8, :cond_4

    aget-object v9, v7, v5

    .line 192
    invoke-interface {v9}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    sget-object v10, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v0, v10, :cond_b

    .line 194
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiListImpl;->mVideoIdToOfflineData:Ljava/util/Map;

    invoke-interface {v9}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;

    .line 195
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v10

    .line 196
    invoke-interface {v9}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiListImpl;->getOfflinePlayableViewData(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPercentageDownloaded()I

    move-result v0

    .line 197
    sget-object v9, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->InProgress:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v10, v9, :cond_0

    .line 198
    add-int/lit8 v0, v3, 0x1

    move v12, v1

    move v1, v2

    move v2, v0

    move v0, v12

    .line 203
    :goto_1
    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->Complete:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-eq v10, v3, :cond_9

    .line 205
    add-int/lit8 v3, v4, 0x1

    .line 191
    :goto_2
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 199
    :cond_0
    sget-object v9, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->Stopped:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v10, v9, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    sget-object v9, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->Creating:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-eq v10, v9, :cond_2

    sget-object v9, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->CreateFailed:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v10, v9, :cond_3

    .line 200
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v2

    move v2, v3

    goto :goto_1

    .line 201
    :cond_3
    sget-object v9, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->Stopped:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v10, v9, :cond_a

    if-lez v0, :cond_a

    .line 202
    add-int/lit8 v0, v2, 0x1

    move v2, v3

    move v12, v0

    move v0, v1

    move v1, v12

    goto :goto_1

    .line 209
    :cond_4
    if-lez v3, :cond_6

    .line 211
    const v0, 0x7f090220

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v11

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 226
    :cond_5
    :goto_3
    return-object v0

    .line 212
    :cond_6
    if-lez v2, :cond_7

    .line 215
    add-int/2addr v1, v2

    .line 216
    const v0, 0x7f090228

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 217
    const-string/jumbo v2, "ro"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-ne v1, v11, :cond_5

    .line 218
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 221
    :cond_7
    if-lez v1, :cond_8

    .line 223
    const v0, 0x7f09022a

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v6

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 226
    :cond_8
    const/4 v0, 0x0

    goto :goto_3

    :cond_9
    move v3, v4

    goto/16 :goto_2

    :cond_a
    move v0, v1

    move v1, v2

    move v2, v3

    goto/16 :goto_1

    :cond_b
    move v0, v1

    move v1, v2

    move v2, v3

    move v3, v4

    goto/16 :goto_2
.end method

.method private static downloadCompleted(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)Z
    .locals 2

    .prologue
    .line 595
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->Complete:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static downloadPaused(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)Z
    .locals 2

    .prologue
    .line 601
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/offline/OfflineUiHelper;->hasErrorOrWarning(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->Stopped:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCurrentlyDownloading()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;
    .locals 5

    .prologue
    .line 606
    const/4 v1, 0x0

    .line 607
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiListImpl;->mVideoIdToOfflineData:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 608
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiListImpl;->mVideoIdToOfflineData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;

    .line 609
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v3

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->InProgress:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v3, v4, :cond_0

    .line 615
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private getTitleOrEmpty(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 570
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiListImpl;->mPlayableToTitleMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 571
    if-eqz v0, :cond_0

    .line 591
    :goto_0
    return-object v0

    .line 574
    :cond_0
    invoke-static {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils;->getOfflineVideoDetails(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    move-result-object v0

    .line 575
    if-nez v0, :cond_1

    .line 577
    const-string/jumbo v0, ""

    goto :goto_0

    .line 578
    :cond_1
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v1, v2, :cond_3

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 579
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getTopLevelId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils;->getOfflineVideoDetails(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    move-result-object v1

    .line 580
    if-eqz v1, :cond_2

    .line 581
    const v2, 0x7f090191

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getTitle()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getSeasonAbbrSeqLabel()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getEpisodeNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getTitle()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 590
    :goto_1
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiListImpl;->mPlayableToTitleMap:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 584
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No show found for episode: playableId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/parent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getTopLevelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 585
    const v1, 0x7f09010b

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v3

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getSeasonAbbrSeqLabel()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v3

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getEpisodeNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getTitle()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 588
    :cond_3
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public get(I)Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiListImpl;->mOfflinePlayableUiItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiListImpl;->get(I)Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;

    move-result-object v0

    return-object v0
.end method

.method public getColoredStatusString(Landroid/content/Context;ILjava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)Ljava/lang/CharSequence;
    .locals 7

    .prologue
    .line 90
    const v3, 0x7f0f006e

    .line 91
    const-string/jumbo v2, ""

    .line 92
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne p4, v0, :cond_1

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiListImpl;->buildShowCompositeStatus(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 168
    :cond_0
    :goto_0
    :pswitch_0
    if-eqz v2, :cond_8

    .line 169
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 170
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-static {p1, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v1, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x21

    invoke-interface {v0, v1, v3, v2, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 173
    :goto_1
    return-object v0

    .line 94
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-eq p4, v0, :cond_2

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne p4, v0, :cond_7

    .line 95
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiListImpl;->mVideoIdToOfflineData:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;

    .line 96
    if-nez v0, :cond_3

    .line 97
    const/4 v0, 0x0

    goto :goto_1

    .line 99
    :cond_3
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPercentageDownloaded()I

    move-result v4

    .line 100
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiListImpl;->mVideoIdToOfflineData:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v1

    .line 101
    sget-object v5, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiListImpl$2;->$SwitchMap$com$netflix$mediaclient$servicemgr$interface_$offline$DownloadState:[I

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Wrong DownloadState (="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/LogUtils;->reportErrorSafely(Ljava/lang/String;)V

    .line 162
    const/4 v0, 0x0

    goto :goto_1

    .line 103
    :pswitch_1
    const v0, 0x7f09021f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 106
    :pswitch_2
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getStopReason()Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->showBangIconErrorInUi()Z

    move-result v0

    .line 107
    if-nez v0, :cond_0

    .line 109
    if-lez v4, :cond_4

    const v0, 0x7f090227

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v2, v0

    goto/16 :goto_0

    :cond_4
    const v0, 0x7f09021f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 113
    :pswitch_3
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getWatchState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    move-result-object v1

    .line 114
    sget-object v4, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiListImpl$2;->$SwitchMap$com$netflix$mediaclient$servicemgr$interface_$offline$WatchState:[I

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->ordinal()I

    move-result v1

    aget v1, v4, v1

    packed-switch v1, :pswitch_data_1

    move-object v0, v2

    move v1, v3

    :goto_3
    move-object v2, v0

    move v3, v1

    .line 147
    goto/16 :goto_0

    .line 119
    :pswitch_4
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getExpiringInMillis()J

    move-result-wide v0

    .line 120
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    .line 121
    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_5

    .line 122
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v0

    long-to-int v0, v0

    .line 123
    const v1, 0x7f090223

    invoke-static {p1, v1}, Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;->getFormatter(Landroid/content/Context;I)Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;->withQuantity(I)Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;->format()Ljava/lang/String;

    move-result-object v0

    .line 131
    :goto_4
    const v3, 0x7f0f0085

    move-object v2, v0

    goto/16 :goto_0

    .line 124
    :cond_5
    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_6

    .line 125
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v0

    long-to-int v0, v0

    .line 126
    const v1, 0x7f090224

    invoke-static {p1, v1}, Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;->getFormatter(Landroid/content/Context;I)Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;->withQuantity(I)Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;->format()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 128
    :cond_6
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v0

    long-to-int v0, v0

    .line 129
    const v1, 0x7f090225

    invoke-static {p1, v1}, Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;->getFormatter(Landroid/content/Context;I)Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;->withQuantity(I)Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;->format()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 137
    :pswitch_5
    const v0, 0x7f090222

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 138
    const v3, 0x7f0f0085

    .line 139
    goto/16 :goto_0

    .line 144
    :pswitch_6
    const v1, 0x7f0f0085

    .line 145
    const v0, 0x7f090226

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 151
    :pswitch_7
    const v0, 0x7f09021f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 165
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Wrong VideoType (="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/LogUtils;->reportErrorSafely(Ljava/lang/String;)V

    .line 166
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 173
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 101
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 114
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public getCurrentSpace(I)J
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiListImpl;->mOfflinePlayableUiItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiListImpl;->mVideoIdToOfflineData:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;->getCurrentSpace(Ljava/util/Map;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getInProgressCount()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 278
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiListImpl;->mVideoIdToOfflineData:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 287
    :goto_0
    return v0

    .line 282
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiListImpl;->mVideoIdToOfflineData:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;

    .line 283
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->InProgress:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v0, v3, :cond_2

    .line 284
    add-int/lit8 v0, v1, 0x1

    :goto_2
    move v1, v0

    .line 286
    goto :goto_1

    :cond_1
    move v0, v1

    .line 287
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public getOfflinePlayableViewData(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiListImpl;->mVideoIdToOfflineData:Ljava/util/Map;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 308
    :cond_0
    const/4 v0, 0x0

    .line 310
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiListImpl;->mVideoIdToOfflineData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;

    goto :goto_0
.end method

.method public getOfflinePlayableViewData()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 315
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiListImpl;->mVideoIdToOfflineData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getPercentage(I)I
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiListImpl;->mOfflinePlayableUiItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;

    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiListImpl;->mVideoIdToOfflineData:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;->getPercentage(Ljava/util/Map;)I

    move-result v0

    return v0
.end method

.method public getSnackbarStatus(Landroid/content/Context;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;)Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener$SnackbarMessage;
    .locals 12

    .prologue
    .line 415
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiListImpl;->mVideoIdToOfflineData:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiListImpl;->mVideoIdToOfflineData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 416
    :cond_0
    const/4 v0, 0x0

    .line 551
    :goto_0
    return-object v0

    .line 419
    :cond_1
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/offline/OfflineUiHelper;->getSnackBarDownloadCompleteCount(Landroid/content/Context;)I

    move-result v8

    .line 420
    const-string/jumbo v0, "OfflinePlayableUiListImpl"

    const-string/jumbo v1, "getSnackbarStatus downloadCompleteSinceSwipe=%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 421
    invoke-interface {p2}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->getRequiresUnmeteredNetwork()Z

    move-result v3

    .line 422
    invoke-static {p1}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isWiFiConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 423
    :goto_1
    invoke-static {p1}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x1

    move v2, v1

    .line 425
    :goto_2
    const/4 v1, 0x0

    .line 426
    if-eqz v3, :cond_5

    if-eqz v0, :cond_5

    .line 427
    const v0, 0x7f09021d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 432
    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiListImpl;->mVideoIdToOfflineData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 433
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c

    .line 434
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;

    .line 435
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiListImpl;->getTitleOrEmpty(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 436
    invoke-static {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineUiHelper;->hasErrorOrWarning(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 438
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener$SnackbarMessage;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09022b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener$SnackbarMessage;-><init>(Ljava/lang/String;IZ)V

    goto :goto_0

    .line 422
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 423
    :cond_4
    const/4 v1, 0x0

    move v2, v1

    goto :goto_2

    .line 428
    :cond_5
    if-eqz v2, :cond_2

    .line 429
    const v0, 0x7f09021c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_3

    .line 439
    :cond_6
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiListImpl;->downloadCompleted(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 441
    const v0, 0x7f090213

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;->getFormatter(Landroid/content/Context;I)Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;->withQuantity(I)Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;->format()Ljava/lang/String;

    move-result-object v1

    .line 442
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener$SnackbarMessage;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener$SnackbarMessage;-><init>(Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 443
    :cond_7
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiListImpl;->downloadPaused(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 445
    if-eqz v1, :cond_8

    new-instance v0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener$SnackbarMessage;

    .line 446
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090214

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener$SnackbarMessage;-><init>(Ljava/lang/String;I)V

    .line 448
    :goto_4
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener$SnackbarMessage;->paused:Z

    goto/16 :goto_0

    .line 446
    :cond_8
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener$SnackbarMessage;

    .line 447
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090217

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener$SnackbarMessage;-><init>(Ljava/lang/String;I)V

    goto :goto_4

    .line 453
    :cond_9
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiListImpl;->getCurrentlyDownloading()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;

    move-result-object v0

    .line 454
    if-nez v0, :cond_a

    if-eqz v1, :cond_1b

    .line 455
    :cond_a
    const v0, 0x7f090216

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;->getFormatter(Landroid/content/Context;I)Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;->withQuantity(I)Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;

    move-result-object v0

    const-string/jumbo v2, "status"

    invoke-virtual {v0, v2, v1}, Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;->withArg(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;->format()Ljava/lang/String;

    move-result-object v2

    .line 456
    const v0, 0x7f090215

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;->getFormatter(Landroid/content/Context;I)Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;->withQuantity(I)Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;->format()Ljava/lang/String;

    move-result-object v3

    .line 457
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    new-instance v0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener$SnackbarMessage;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener$SnackbarMessage;-><init>(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_b
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener$SnackbarMessage;

    const/4 v1, 0x0

    invoke-direct {v0, v3, v1}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener$SnackbarMessage;-><init>(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 465
    :cond_c
    const/4 v5, 0x0

    .line 466
    const/4 v4, 0x0

    .line 467
    const/4 v3, 0x0

    .line 468
    const/4 v2, 0x0

    .line 469
    const/4 v0, 0x0

    .line 470
    iget-object v6, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiListImpl;->mVideoIdToOfflineData:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v0

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;

    .line 471
    add-int/lit8 v6, v6, 0x1

    .line 472
    invoke-static {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineUiHelper;->hasErrorOrWarning(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 473
    add-int/lit8 v5, v5, 0x1

    move v0, v2

    move v2, v3

    move v3, v4

    move v4, v5

    :goto_6
    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v0

    .line 481
    goto :goto_5

    .line 474
    :cond_d
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiListImpl;->downloadCompleted(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 475
    add-int/lit8 v4, v4, 0x1

    move v0, v2

    move v2, v3

    move v3, v4

    move v4, v5

    goto :goto_6

    .line 476
    :cond_e
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiListImpl;->downloadPaused(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 477
    add-int/lit8 v3, v3, 0x1

    move v0, v2

    move v2, v3

    move v3, v4

    move v4, v5

    goto :goto_6

    .line 479
    :cond_f
    add-int/lit8 v2, v2, 0x1

    move v0, v2

    move v2, v3

    move v3, v4

    move v4, v5

    goto :goto_6

    .line 482
    :cond_10
    const-string/jumbo v0, "OfflinePlayableUiListImpl"

    const-string/jumbo v7, "total=%d failed=%d completed=%d paused=%d queued=%d downloadCompletedSinceSwipe=%d"

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v0, v7, v9}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 483
    if-ne v6, v4, :cond_1d

    .line 484
    const/4 v7, 0x0

    .line 486
    :goto_7
    if-ge v8, v4, :cond_11

    move v4, v8

    .line 490
    :cond_11
    add-int/2addr v2, v3

    .line 491
    if-ne v6, v4, :cond_12

    .line 493
    const v0, 0x7f090213

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;->getFormatter(Landroid/content/Context;I)Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;->withQuantity(I)Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;->format()Ljava/lang/String;

    move-result-object v1

    .line 494
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener$SnackbarMessage;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v5, v2}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener$SnackbarMessage;-><init>(Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 496
    :cond_12
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiListImpl;->getCurrentlyDownloading()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;

    .line 497
    if-ne v3, v6, :cond_13

    .line 499
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener$SnackbarMessage;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090217

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener$SnackbarMessage;-><init>(Ljava/lang/String;I)V

    .line 500
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener$SnackbarMessage;->paused:Z

    goto/16 :goto_0

    .line 502
    :cond_13
    if-ne v5, v6, :cond_14

    .line 504
    const v0, 0x7f09021a

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;->getFormatter(Landroid/content/Context;I)Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;->withQuantity(I)Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;->format()Ljava/lang/String;

    move-result-object v1

    .line 505
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener$SnackbarMessage;

    invoke-direct {v0, v1, v5}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener$SnackbarMessage;-><init>(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 508
    :cond_14
    const/4 v0, 0x0

    .line 509
    if-eqz v7, :cond_15

    move-object v1, v7

    .line 517
    :goto_8
    if-lez v3, :cond_17

    if-ne v2, v3, :cond_17

    .line 518
    if-nez v7, :cond_16

    new-instance v0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener$SnackbarMessage;

    .line 519
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090217

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener$SnackbarMessage;-><init>(Ljava/lang/String;I)V

    .line 521
    :goto_9
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener$SnackbarMessage;->paused:Z

    goto/16 :goto_0

    .line 512
    :cond_15
    if-lez v5, :cond_1c

    .line 513
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090221

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-virtual {v0, v1, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_8

    .line 519
    :cond_16
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener$SnackbarMessage;

    .line 520
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090218

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v7, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener$SnackbarMessage;-><init>(Ljava/lang/String;I)V

    goto :goto_9

    .line 524
    :cond_17
    if-lez v2, :cond_19

    .line 525
    add-int v0, v2, v4

    .line 526
    const v2, 0x7f090216

    invoke-static {p1, v2}, Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;->getFormatter(Landroid/content/Context;I)Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;->withQuantity(I)Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;

    move-result-object v2

    const-string/jumbo v3, "status"

    invoke-virtual {v2, v3, v1}, Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;->withArg(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;->format()Ljava/lang/String;

    move-result-object v2

    .line 527
    const v3, 0x7f090215

    invoke-static {p1, v3}, Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;->getFormatter(Landroid/content/Context;I)Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;->withQuantity(I)Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;->format()Ljava/lang/String;

    move-result-object v3

    .line 529
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    new-instance v0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener$SnackbarMessage;

    invoke-direct {v0, v2, v5}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener$SnackbarMessage;-><init>(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_18
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener$SnackbarMessage;

    invoke-direct {v0, v3, v5}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener$SnackbarMessage;-><init>(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 536
    :cond_19
    if-lez v4, :cond_1b

    .line 539
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 540
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener$SnackbarMessage;

    const v1, 0x7f090213

    invoke-static {p1, v1}, Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;->getFormatter(Landroid/content/Context;I)Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;->withQuantity(I)Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;->format()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v5, v2}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener$SnackbarMessage;-><init>(Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 542
    :cond_1a
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener$SnackbarMessage;

    const v2, 0x7f090212

    invoke-static {p1, v2}, Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;->getFormatter(Landroid/content/Context;I)Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;->withQuantity(I)Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;

    move-result-object v2

    const-string/jumbo v3, "status"

    invoke-virtual {v2, v3, v1}, Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;->withArg(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;->format()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v5, v2}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener$SnackbarMessage;-><init>(Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 551
    :cond_1b
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_1c
    move-object v1, v0

    goto/16 :goto_8

    :cond_1d
    move-object v7, v1

    goto/16 :goto_7
.end method

.method public getTitleCount()I
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiListImpl;->getTitleCount(Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;)I

    move-result v0

    return v0
.end method

.method public getTitleCount(Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 257
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiListImpl;->mOfflinePlayableUiItemList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 273
    :goto_0
    return v0

    .line 261
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiListImpl;->mOfflinePlayableUiItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;

    .line 262
    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiListImpl$2;->$SwitchMap$com$netflix$mediaclient$servicemgr$interface_$offline$OfflineAdapterData$ViewType:[I

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;->getVideoAndProfileData()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;

    move-result-object v4

    iget-object v4, v4, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;->type:Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$ViewType;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$ViewType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    :cond_1
    move v0, v1

    :goto_2
    move v1, v0

    .line 272
    goto :goto_1

    .line 265
    :pswitch_0
    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;->getVideoAndProfileData()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;

    move-result-object v3

    iget-object v3, v3, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;->video:Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;->getVideoAndProfileData()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;

    move-result-object v3

    iget-object v3, v3, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;->video:Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getProfileId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 266
    :cond_2
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;->getVideoAndProfileData()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;

    move-result-object v0

    iget-object v0, v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;->video:Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    if-nez v0, :cond_3

    .line 267
    const-string/jumbo v0, "adapterData.getVideoAndProfileData().video not supposed to be null but found null"

    invoke-static {v0}, Lcom/netflix/mediaclient/util/LogUtils;->reportErrorSafely(Ljava/lang/String;)V

    .line 269
    :cond_3
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    goto :goto_2

    :cond_4
    move v0, v1

    .line 273
    goto :goto_0

    .line 262
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public hasAnyCreatingOrCreateFailedItems()Z
    .locals 4

    .prologue
    .line 557
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiListImpl;->mVideoIdToOfflineData:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 558
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiListImpl;->mVideoIdToOfflineData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;

    .line 559
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->Creating:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-eq v2, v3, :cond_1

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->CreateFailed:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v0, v2, :cond_0

    .line 560
    :cond_1
    const/4 v0, 0x1

    .line 564
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public numberOfIncompleteItems()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 292
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiListImpl;->mVideoIdToOfflineData:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 302
    :goto_0
    return v0

    .line 296
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiListImpl;->mVideoIdToOfflineData:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;

    .line 297
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->Complete:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-eq v0, v3, :cond_1

    .line 300
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 301
    goto :goto_1

    :cond_2
    move v0, v1

    .line 302
    goto :goto_0
.end method

.method public numberOfItemsToDownload()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 237
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiListImpl;->mVideoIdToOfflineData:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 247
    :goto_0
    return v0

    .line 241
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiListImpl;->mVideoIdToOfflineData:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;

    .line 242
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v3

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->Complete:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-eq v3, v4, :cond_1

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->CreateFailed:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-eq v0, v3, :cond_1

    .line 245
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 246
    goto :goto_1

    :cond_2
    move v0, v1

    .line 247
    goto :goto_0
.end method

.method public regenerate(Lio/realm/Realm;Ljava/util/Map;Z)V
    .locals 13
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

    .prologue
    .line 326
    const-string/jumbo v0, "OfflinePlayableUiListImpl"

    const-string/jumbo v1, "Regenerating the list..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 331
    const-class v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;

    invoke-virtual {p1, v0}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v0

    .line 332
    invoke-virtual {v0}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;

    .line 334
    const/4 v2, 0x0

    .line 335
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 337
    if-eqz p3, :cond_1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;->isKids()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 340
    :cond_1
    const-class v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    invoke-virtual {p1, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    const-string/jumbo v3, "profileId"

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object v1

    const-string/jumbo v3, "videoType"

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getKey()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lio/realm/RealmQuery;->notEqualTo(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/RealmQuery;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v1

    .line 341
    invoke-virtual {v1}, Lio/realm/RealmResults;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    .line 342
    const/4 v4, 0x0

    .line 343
    const/4 v3, 0x0

    .line 344
    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v5

    sget-object v10, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v5, v10, :cond_5

    .line 346
    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v4

    invoke-interface {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getTopLevelId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 350
    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getTopLevelId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils;->getOfflineVideoDetails(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    move-result-object v5

    .line 351
    if-nez v5, :cond_3

    .line 352
    const-string/jumbo v1, "SPY-10714: getOfflineVideoDetails is null, probably deleted"

    .line 353
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 354
    const-string/jumbo v3, "OfflinePlayableUiListImpl"

    invoke-static {v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 359
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    const-class v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    .line 360
    invoke-virtual {p1, v1}, Lio/realm/Realm;->where(Ljava/lang/Class;)Lio/realm/RealmQuery;

    move-result-object v1

    const-string/jumbo v10, "profileId"

    .line 361
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object v1

    const-string/jumbo v10, "videoType"

    sget-object v11, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 362
    invoke-virtual {v11}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getKey()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/RealmQuery;

    move-result-object v1

    const-string/jumbo v10, "playable.parentId"

    .line 363
    invoke-virtual {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Lio/realm/RealmQuery;->equalTo(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;

    move-result-object v1

    .line 364
    invoke-virtual {v1}, Lio/realm/RealmQuery;->findAll()Lio/realm/RealmResults;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 367
    new-instance v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiListImpl$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiListImpl$1;-><init>(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiListImpl;)V

    invoke-static {v4, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 382
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    .line 383
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 384
    const/4 v1, 0x1

    .line 388
    :goto_2
    invoke-virtual {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object v3, v4

    move-object v4, v5

    .line 392
    :goto_3
    if-eqz v1, :cond_9

    .line 393
    if-nez v2, :cond_8

    .line 394
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 396
    :goto_4
    new-instance v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;

    invoke-direct {v2, v4, v3, p2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData;-><init>(Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;Ljava/util/List;Ljava/util/Map;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    move-object v2, v1

    .line 400
    goto/16 :goto_1

    .line 390
    :cond_5
    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    move v12, v3

    move-object v3, v4

    move-object v4, v1

    move v1, v12

    goto :goto_3

    .line 401
    :cond_6
    if-eqz v2, :cond_0

    .line 402
    invoke-interface {v6, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 403
    invoke-virtual {v8}, Ljava/util/HashSet;->clear()V

    goto/16 :goto_0

    .line 407
    :cond_7
    iput-object p2, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiListImpl;->mVideoIdToOfflineData:Ljava/util/Map;

    .line 408
    iput-object v6, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiListImpl;->mOfflinePlayableUiItemList:Ljava/util/List;

    .line 409
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiListImpl;->mPlayableToTitleMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 410
    return-void

    :cond_8
    move-object v1, v2

    goto :goto_4

    :cond_9
    move-object v1, v2

    goto :goto_5

    :cond_a
    move v1, v3

    goto :goto_2
.end method

.method public size()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiListImpl;->mOfflinePlayableUiItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
