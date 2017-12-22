.class public Lcom/netflix/mediaclient/ui/lolomo/LoLoMoAdapter;
.super Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;
.source "LoLoMoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;",
        ">;"
    }
.end annotation


# static fields
.field public static final HOME_LOLOMO_GENRE_ID:Ljava/lang/String; = "lolomo"

.field protected static final TAG:Ljava/lang/String; = "LoLoMoAdapter"


# instance fields
.field private requestId:J


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;)V
    .locals 1

    .prologue
    .line 30
    const-string/jumbo v0, "lolomo"

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;-><init>(Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/lolomo/LoLoMoAdapter;)J
    .locals 2

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoAdapter;->requestId:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/lolomo/LoLoMoAdapter;Z)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoAdapter;->handlePrefetchComplete(Z)V

    return-void
.end method

.method private handlePrefetchComplete(Z)V
    .locals 2

    .prologue
    .line 85
    const-string/jumbo v0, "LoLoMoAdapter"

    const-string/jumbo v1, "handlePrefetchComplete()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/LogUtils;->logCurrentThreadName(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->refreshData()V

    .line 87
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoAdapter;->frag:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->onLolomoPrefetchComplete(Z)V

    .line 88
    return-void
.end method


# virtual methods
.method protected isGenreList()Z
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method protected makeFetchRequest(Ljava/lang/String;IILcom/netflix/mediaclient/servicemgr/ManagerCallback;)V
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoAdapter;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    invoke-interface {v0, p2, p3, p4}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchLoMos(IILcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    .line 77
    return-void
.end method

.method public refreshData()V
    .locals 14

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoAdapter;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v3

    .line 36
    if-nez v3, :cond_0

    .line 37
    const-string/jumbo v0, "LoLoMoAdapter"

    const-string/jumbo v1, "Service man is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :goto_0
    return-void

    .line 41
    :cond_0
    const-string/jumbo v0, "LoLoMoAdapter"

    const-string/jumbo v2, "Prefetching lolomo..."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoAdapter;->requestId:J

    .line 43
    iget-wide v12, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoAdapter;->requestId:J

    .line 44
    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    .line 45
    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->getNumberRowsToFetch(Landroid/content/Context;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 46
    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/netflix/mediaclient/service/configuration/persistent/LolomoPayloadABTestConfig;->getStandardNumberVideosToPrefetch(Landroid/content/Context;)I

    move-result v3

    add-int/lit8 v4, v3, -0x1

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget-object v5, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->CONTINUE_WATCHING:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    .line 47
    invoke-static {v3, v5}, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->computeNumVideosToFetchPerBatch(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)I

    move-result v3

    add-int/lit8 v6, v3, -0x1

    .line 48
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->shouldLoadExtraCharacterLeaves()Z

    move-result v7

    .line 49
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->shouldLoadKubrickLeavesInLolomo()Z

    move-result v8

    new-instance v10, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoAdapter$1;

    const-string/jumbo v3, "LoLoMoAdapter"

    invoke-direct {v10, p0, v3, v12, v13}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoAdapter$1;-><init>(Lcom/netflix/mediaclient/ui/lolomo/LoLoMoAdapter;Ljava/lang/String;J)V

    move v3, v1

    move v5, v1

    move v9, v1

    .line 44
    invoke-interface/range {v0 .. v10}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->prefetchLoLoMo(IIIIIIZZZLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    .line 71
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter;->initLoadingState()V

    goto :goto_0
.end method
