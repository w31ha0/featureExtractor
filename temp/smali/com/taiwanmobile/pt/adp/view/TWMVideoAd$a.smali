.class Lcom/taiwanmobile/pt/adp/view/TWMVideoAd$a;
.super Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;
.source "TWMVideoAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;


# direct methods
.method public constructor <init>(Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;Landroid/content/Context;Lcom/taiwanmobile/pt/adp/view/internal/AdViewServiceCallback;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;

    .line 54
    invoke-direct {p0, p2, p3}, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;-><init>(Landroid/content/Context;Lcom/taiwanmobile/pt/adp/view/internal/AdViewServiceCallback;)V

    .line 55
    return-void
.end method


# virtual methods
.method public onResponse(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->onResponse(Lorg/json/JSONObject;)V

    .line 60
    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd$a;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;->a(Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;Z)V

    .line 62
    new-instance v1, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Video;

    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;

    invoke-static {v2}, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;->a(Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Video;-><init>(Lcom/taiwanmobile/pt/adp/view/internal/AdManager;Ljava/lang/String;)V

    .line 63
    const-string v0, "videoListener"

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;

    invoke-static {v2}, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;->b(Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;)Lcom/taiwanmobile/pt/adp/view/TWMVideoAdListener;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Video;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    const-string v0, "_context"

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd$a;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Video;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    const-string v2, "userAgent"

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd$a;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/taiwanmobile/pt/util/Utility;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Video;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 66
    const-string v0, "fb"

    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd$a;->getFacebookUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Video;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    const-string v0, "rduration"

    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd$a;->getReportDuration()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Video;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 68
    const-string v0, "duration"

    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd$a;->getVideoDuration()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Video;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd$a;->getVideoDuration()I

    move-result v0

    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd$a;->getReportDuration()I

    move-result v2

    div-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x2

    .line 70
    const-string v2, "_max_report_times"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Video;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    const-string v0, "targetUrl"

    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd$a;->getTargetUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Video;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    const-string v0, "adRequest"

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;

    invoke-static {v2}, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;->c(Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;)Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Video;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    const-string v0, "mediaUrl"

    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd$a;->getMediaUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Video;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    const-string v0, "planId"

    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd$a;->getPlanId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Video;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    const-string v0, "cvt"

    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd$a;->getClickValidTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Video;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    const-string v0, "clickUrl"

    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd$a;->getReportClickUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Video;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    const-string v0, "adType"

    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd$a;->getAdType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Video;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    const-string v0, "ad"

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;

    invoke-virtual {v1, v0, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Video;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    const-string v0, "isOpenChrome"

    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd$a;->isOpenChrome()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Video;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;

    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd$a;->getTxId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;->a(Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;Ljava/lang/String;)V

    .line 81
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;

    invoke-static {v2}, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;->d(Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;

    .line 82
    const-string v2, "_deviceId"

    const-string v3, "_deviceId"

    invoke-virtual {v0, v3}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Video;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;

    invoke-static {v2}, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;->d(Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;->e(Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;)V

    .line 87
    :cond_0
    return-void
.end method
