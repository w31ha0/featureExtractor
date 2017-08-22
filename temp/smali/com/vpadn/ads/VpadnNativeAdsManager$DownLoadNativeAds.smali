.class Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;
.super Ljava/lang/Object;
.source "VpadnNativeAdsManager.java"

# interfaces
.implements Lcom/vpadn/ads/VpadnAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vpadn/ads/VpadnNativeAdsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownLoadNativeAds"
.end annotation


# instance fields
.field final synthetic a:Lcom/vpadn/ads/VpadnNativeAdsManager;

.field private b:Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/concurrent/Executor;

.field private g:I

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vpadn/ads/VpadnNativeAd;",
            ">;"
        }
    .end annotation
.end field

.field private volatile i:I

.field private volatile j:I


# direct methods
.method private constructor <init>(Lcom/vpadn/ads/VpadnNativeAdsManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 137
    iput-object p1, p0, Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;->a:Lcom/vpadn/ads/VpadnNativeAdsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput v0, p0, Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;->i:I

    .line 135
    iput v0, p0, Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;->j:I

    .line 138
    iput-object p0, p0, Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;->b:Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;

    .line 139
    iput-object p2, p0, Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;->c:Landroid/content/Context;

    .line 140
    iput-object p3, p0, Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;->d:Ljava/lang/String;

    .line 141
    iput-object p4, p0, Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;->e:Ljava/lang/String;

    .line 142
    iput-object p5, p0, Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;->f:Ljava/util/concurrent/Executor;

    .line 143
    iput p6, p0, Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;->g:I

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;->h:Ljava/util/ArrayList;

    .line 145
    return-void
.end method

.method synthetic constructor <init>(Lcom/vpadn/ads/VpadnNativeAdsManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;ILcom/vpadn/ads/VpadnNativeAdsManager$1;)V
    .locals 0

    .prologue
    .line 125
    invoke-direct/range {p0 .. p6}, Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;-><init>(Lcom/vpadn/ads/VpadnNativeAdsManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;I)V

    return-void
.end method

.method static synthetic a(Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;->c:Landroid/content/Context;

    return-object v0
.end method

.method private a(I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 181
    iget v0, p0, Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;->i:I

    iget v1, p0, Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;->j:I

    add-int/2addr v0, v1

    .line 182
    if-ne v0, p1, :cond_0

    .line 183
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;->a:Lcom/vpadn/ads/VpadnNativeAdsManager;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;->h:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Lcom/vpadn/ads/VpadnNativeAdsManager;->a(Lcom/vpadn/ads/VpadnNativeAdsManager;Ljava/util/List;)Ljava/util/List;

    .line 184
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;->a:Lcom/vpadn/ads/VpadnNativeAdsManager;

    invoke-static {v0}, Lcom/vpadn/ads/VpadnNativeAdsManager;->b(Lcom/vpadn/ads/VpadnNativeAdsManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;->a:Lcom/vpadn/ads/VpadnNativeAdsManager;

    invoke-static {v0, v4}, Lcom/vpadn/ads/VpadnNativeAdsManager;->a(Lcom/vpadn/ads/VpadnNativeAdsManager;Z)Z

    .line 186
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;->a:Lcom/vpadn/ads/VpadnNativeAdsManager;

    invoke-static {v0, v3}, Lcom/vpadn/ads/VpadnNativeAdsManager;->b(Lcom/vpadn/ads/VpadnNativeAdsManager;Z)Z

    .line 187
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;->a:Lcom/vpadn/ads/VpadnNativeAdsManager;

    invoke-static {v0}, Lcom/vpadn/ads/VpadnNativeAdsManager;->c(Lcom/vpadn/ads/VpadnNativeAdsManager;)Lcom/vpadn/ads/VpadnNativeAdsManager$Listener;

    move-result-object v0

    sget-object v1, Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;->NO_FILL:Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;

    invoke-interface {v0, v1}, Lcom/vpadn/ads/VpadnNativeAdsManager$Listener;->onVpadnFailedToReceiveAds(Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;)V

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;->a:Lcom/vpadn/ads/VpadnNativeAdsManager;

    invoke-static {v0, v4}, Lcom/vpadn/ads/VpadnNativeAdsManager;->a(Lcom/vpadn/ads/VpadnNativeAdsManager;Z)Z

    .line 190
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;->a:Lcom/vpadn/ads/VpadnNativeAdsManager;

    invoke-static {v0, v3}, Lcom/vpadn/ads/VpadnNativeAdsManager;->b(Lcom/vpadn/ads/VpadnNativeAdsManager;Z)Z

    .line 191
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;->a:Lcom/vpadn/ads/VpadnNativeAdsManager;

    invoke-static {v0}, Lcom/vpadn/ads/VpadnNativeAdsManager;->c(Lcom/vpadn/ads/VpadnNativeAdsManager;)Lcom/vpadn/ads/VpadnNativeAdsManager$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/vpadn/ads/VpadnNativeAdsManager$Listener;->onVpadnReceiveAds()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;)Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;->b:Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;

    return-object v0
.end method

.method static synthetic e(Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;->h:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public download()V
    .locals 3

    .prologue
    .line 148
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;->g:I

    if-ge v0, v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;->f:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds$1;

    invoke-direct {v2, p0}, Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds$1;-><init>(Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    :cond_0
    return-void
.end method

.method public onVpadnDismissScreen(Lcom/vpadn/ads/VpadnAd;)V
    .locals 0

    .prologue
    .line 228
    return-void
.end method

.method public onVpadnFailedToReceiveAd(Lcom/vpadn/ads/VpadnAd;Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;)V
    .locals 3

    .prologue
    .line 210
    iget-object v1, p0, Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;->b:Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;

    monitor-enter v1

    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    const-string v0, "DownLoadNativeAds"

    const-string v2, "onVpadnFailedToReceiveAd(...) : Arrays.asList(nativeAdsArray).contains(ad) return true"

    invoke-static {v0, v2}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 214
    iget v0, p0, Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;->j:I

    .line 215
    iget v0, p0, Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;->g:I

    invoke-direct {p0, v0}, Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;->a(I)V

    .line 219
    :goto_0
    monitor-exit v1

    .line 220
    return-void

    .line 217
    :cond_0
    const-string v0, "DownLoadNativeAds"

    const-string v2, "onVpadnFailedToReceiveAd(...) : Arrays.asList(nativeAdsArray).contains(ad) return false"

    invoke-static {v0, v2}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onVpadnLeaveApplication(Lcom/vpadn/ads/VpadnAd;)V
    .locals 0

    .prologue
    .line 232
    return-void
.end method

.method public onVpadnPresentScreen(Lcom/vpadn/ads/VpadnAd;)V
    .locals 0

    .prologue
    .line 224
    return-void
.end method

.method public onVpadnReceiveAd(Lcom/vpadn/ads/VpadnAd;)V
    .locals 3

    .prologue
    .line 198
    iget-object v1, p0, Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;->b:Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;

    monitor-enter v1

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    const-string v0, "DownLoadNativeAds"

    const-string v2, "onVpadnReceiveAd(VpadnAd ad) : Arrays.asList(nativeAdsArray).contains(ad) return true"

    invoke-static {v0, v2}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget v0, p0, Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;->i:I

    .line 202
    iget v0, p0, Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;->g:I

    invoke-direct {p0, v0}, Lcom/vpadn/ads/VpadnNativeAdsManager$DownLoadNativeAds;->a(I)V

    .line 206
    :goto_0
    monitor-exit v1

    .line 207
    return-void

    .line 204
    :cond_0
    const-string v0, "DownLoadNativeAds"

    const-string v2, "onVpadnReceiveAd(VpadnAd ad) : Arrays.asList(nativeAdsArray).contains(ad) return false"

    invoke-static {v0, v2}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
