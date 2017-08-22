.class public Lcom/vpadn/ads/VpadnNativeAdsManager;
.super Ljava/lang/Object;
.source "VpadnNativeAdsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;,
        Lcom/vpadn/ads/VpadnNativeAdsManager$Listener;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private final c:I

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vpadn/ads/VpadnNativeAd;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/vpadn/ads/VpadnNativeAdsManager$Listener;

.field private f:I

.field private volatile g:Z

.field private volatile h:Z

.field private i:Lcom/vpadn/ads/VpadnAdRequest;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vpadn/ads/VpadnNativeAdsManager;->i:Lcom/vpadn/ads/VpadnAdRequest;

    .line 41
    iput-object p1, p0, Lcom/vpadn/ads/VpadnNativeAdsManager;->a:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/vpadn/ads/VpadnNativeAdsManager;->b:Ljava/lang/String;

    .line 43
    const/4 v0, 0x6

    if-le p3, v0, :cond_0

    .line 44
    const/4 p3, 0x5

    .line 46
    :cond_0
    invoke-static {p3, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/vpadn/ads/VpadnNativeAdsManager;->c:I

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/vpadn/ads/VpadnNativeAdsManager;->d:Ljava/util/List;

    .line 48
    iput-boolean v1, p0, Lcom/vpadn/ads/VpadnNativeAdsManager;->g:Z

    .line 49
    iput-boolean v1, p0, Lcom/vpadn/ads/VpadnNativeAdsManager;->h:Z

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vpadn/ads/VpadnNativeAdsManager;->i:Lcom/vpadn/ads/VpadnAdRequest;

    .line 29
    iput-object p1, p0, Lcom/vpadn/ads/VpadnNativeAdsManager;->a:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/vpadn/ads/VpadnNativeAdsManager;->b:Ljava/lang/String;

    .line 31
    const/4 v0, 0x6

    if-le p3, v0, :cond_0

    .line 32
    const/4 p3, 0x5

    .line 34
    :cond_0
    invoke-static {p3, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/vpadn/ads/VpadnNativeAdsManager;->c:I

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/vpadn/ads/VpadnNativeAdsManager;->d:Ljava/util/List;

    .line 36
    iput-boolean v1, p0, Lcom/vpadn/ads/VpadnNativeAdsManager;->g:Z

    .line 37
    iput-boolean v1, p0, Lcom/vpadn/ads/VpadnNativeAdsManager;->h:Z

    .line 38
    return-void
.end method

.method static synthetic a(Lcom/vpadn/ads/VpadnNativeAdsManager;)Lcom/vpadn/ads/VpadnAdRequest;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAdsManager;->i:Lcom/vpadn/ads/VpadnAdRequest;

    return-object v0
.end method

.method static synthetic a(Lcom/vpadn/ads/VpadnNativeAdsManager;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/vpadn/ads/VpadnNativeAdsManager;->d:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/vpadn/ads/VpadnNativeAdsManager;Z)Z
    .locals 0

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/vpadn/ads/VpadnNativeAdsManager;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/vpadn/ads/VpadnNativeAdsManager;)Ljava/util/List;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAdsManager;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/vpadn/ads/VpadnNativeAdsManager;Z)Z
    .locals 0

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/vpadn/ads/VpadnNativeAdsManager;->g:Z

    return p1
.end method

.method static synthetic c(Lcom/vpadn/ads/VpadnNativeAdsManager;)Lcom/vpadn/ads/VpadnNativeAdsManager$Listener;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAdsManager;->e:Lcom/vpadn/ads/VpadnNativeAdsManager$Listener;

    return-object v0
.end method


# virtual methods
.method public getUniqueNativeAdCount()I
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAdsManager;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/vpadn/ads/VpadnNativeAdsManager;->g:Z

    return v0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/vpadn/ads/VpadnNativeAdsManager;->h:Z

    return v0
.end method

.method public loadAds()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vpadn/ads/VpadnNativeAdsManager;->loadAds(Lcom/vpadn/ads/VpadnAdRequest;)V

    .line 58
    return-void
.end method

.method public loadAds(Lcom/vpadn/ads/VpadnAdRequest;)V
    .locals 8

    .prologue
    const/4 v2, 0x1

    .line 61
    const-string v0, "VpadnNativeAdsManager"

    const-string v1, "call loadAds"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vpadn/ads/VpadnNativeAdsManager;->h:Z

    .line 63
    iget-boolean v0, p0, Lcom/vpadn/ads/VpadnNativeAdsManager;->g:Z

    if-ne v0, v2, :cond_0

    .line 64
    const-string v0, "VpadnNativeAdsManager"

    const-string v1, "call loadAds method, but isLoading == true"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :goto_0
    return-void

    .line 67
    :cond_0
    iput-boolean v2, p0, Lcom/vpadn/ads/VpadnNativeAdsManager;->g:Z

    .line 69
    iput-object p1, p0, Lcom/vpadn/ads/VpadnNativeAdsManager;->i:Lcom/vpadn/ads/VpadnAdRequest;

    .line 70
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    .line 71
    new-instance v0, Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;

    iget-object v2, p0, Lcom/vpadn/ads/VpadnNativeAdsManager;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/vpadn/ads/VpadnNativeAdsManager;->b:Ljava/lang/String;

    const-string v4, "TW"

    iget v6, p0, Lcom/vpadn/ads/VpadnNativeAdsManager;->c:I

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;-><init>(Lcom/vpadn/ads/VpadnNativeAdsManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;ILcom/vpadn/ads/VpadnNativeAdsManager$1;)V

    invoke-virtual {v0}, Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;->download()V

    .line 72
    invoke-interface {v5}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 73
    const-string v0, "VpadnNativeAdsManager"

    const-string v1, "ExecutorService is not entered executorService.isTerminated() yet"

    invoke-static {v0, v1}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vpadn/ads/VpadnNativeAdsManager$1;

    invoke-direct {v1, p0, v5}, Lcom/vpadn/ads/VpadnNativeAdsManager$1;-><init>(Lcom/vpadn/ads/VpadnNativeAdsManager;Ljava/util/concurrent/ExecutorService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 95
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public nextNativeAd()Lcom/vpadn/ads/VpadnNativeAd;
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAdsManager;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 104
    const/4 v0, 0x0

    .line 108
    :cond_0
    :goto_0
    return-object v0

    .line 106
    :cond_1
    iget v1, p0, Lcom/vpadn/ads/VpadnNativeAdsManager;->f:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/vpadn/ads/VpadnNativeAdsManager;->f:I

    .line 107
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAdsManager;->d:Ljava/util/List;

    iget-object v2, p0, Lcom/vpadn/ads/VpadnNativeAdsManager;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int v2, v1, v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vpadn/ads/VpadnNativeAd;

    .line 108
    iget-object v2, p0, Lcom/vpadn/ads/VpadnNativeAdsManager;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    new-instance v1, Lcom/vpadn/ads/VpadnNativeAd;

    invoke-direct {v1, v0}, Lcom/vpadn/ads/VpadnNativeAd;-><init>(Lcom/vpadn/ads/VpadnNativeAd;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public setListener(Lcom/vpadn/ads/VpadnNativeAdsManager$Listener;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/vpadn/ads/VpadnNativeAdsManager;->e:Lcom/vpadn/ads/VpadnNativeAdsManager$Listener;

    .line 54
    return-void
.end method
