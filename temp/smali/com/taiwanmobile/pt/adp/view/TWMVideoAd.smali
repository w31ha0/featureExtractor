.class public Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;
.super Ljava/lang/Object;
.source "TWMVideoAd.java"

# interfaces
.implements Lcom/taiwanmobile/pt/adp/view/TWMAd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taiwanmobile/pt/adp/view/TWMVideoAd$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/taiwanmobile/pt/adp/view/internal/AdViewServiceCallback;

.field private b:Ljava/lang/ref/WeakReference;

.field private c:Ljava/lang/String;

.field private d:Lcom/taiwanmobile/pt/adp/view/TWMVideoAd$a;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;

.field private h:Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;

.field private i:Lcom/taiwanmobile/pt/adp/view/TWMVideoAdListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd$1;

    invoke-direct {v0, p0}, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd$1;-><init>(Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;)V

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;->a:Lcom/taiwanmobile/pt/adp/view/internal/AdViewServiceCallback;

    .line 91
    iput-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;->b:Ljava/lang/ref/WeakReference;

    .line 92
    iput-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;->c:Ljava/lang/String;

    .line 93
    iput-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;->d:Lcom/taiwanmobile/pt/adp/view/TWMVideoAd$a;

    .line 94
    iput-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;->e:Ljava/lang/String;

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;->f:Z

    .line 127
    iput-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;->g:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;

    .line 193
    iput-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;->h:Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;

    .line 194
    iput-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;->i:Lcom/taiwanmobile/pt/adp/view/TWMVideoAdListener;

    .line 97
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;->b:Ljava/lang/ref/WeakReference;

    .line 98
    iput-object p2, p0, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;->c:Ljava/lang/String;

    .line 99
    new-instance v1, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd$a;

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 100
    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;->a:Lcom/taiwanmobile/pt/adp/view/internal/AdViewServiceCallback;

    invoke-direct {v1, p0, v0, v2}, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd$a;-><init>(Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;Landroid/content/Context;Lcom/taiwanmobile/pt/adp/view/internal/AdViewServiceCallback;)V

    .line 99
    iput-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;->d:Lcom/taiwanmobile/pt/adp/view/TWMVideoAd$a;

    .line 101
    return-void
.end method

.method static synthetic a(Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;->c:Ljava/lang/String;

    return-object v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;->h:Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;->h:Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;

    invoke-interface {v0, p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;->onReceiveAd(Lcom/taiwanmobile/pt/adp/view/TWMAd;)V

    .line 36
    :cond_0
    return-void
.end method

.method private a(Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;)V
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;->h:Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;->h:Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;

    invoke-interface {v0, p0, p1}, Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;->onFailedToReceiveAd(Lcom/taiwanmobile/pt/adp/view/TWMAd;Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;)V

    .line 30
    :goto_0
    return-void

    .line 28
    :cond_0
    const-string v0, "TWMVideoAd"

    const-string v1, "adListener is null"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;->a(Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;)V

    return-void
.end method

.method static synthetic a(Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;->e:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;Z)V
    .locals 0

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;->f:Z

    return-void
.end method

.method static synthetic b(Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;)Lcom/taiwanmobile/pt/adp/view/TWMVideoAdListener;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;->i:Lcom/taiwanmobile/pt/adp/view/TWMVideoAdListener;

    return-object v0
.end method

.method private b()Z
    .locals 2

    .prologue
    .line 118
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    const-string v1, "adsing"

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 119
    if-nez v0, :cond_0

    .line 120
    iget-boolean v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;->f:Z

    .line 122
    :goto_0
    return v0

    :cond_0
    iget-boolean v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;->f:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic c(Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;)Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;->g:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;

    return-object v0
.end method

.method private c()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 173
    .line 174
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 175
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    iget-object v3, p0, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 176
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    iget-object v3, p0, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Video;

    .line 177
    const-string v3, "kis"

    invoke-virtual {v0, v3}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Video;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 178
    const-string v3, "kis"

    invoke-virtual {v0, v3}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Video;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 179
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    move v1, v0

    .line 189
    :cond_0
    :goto_1
    const-string v0, "TWMVideoAd"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "readyToShow.flag : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    return v1

    :cond_1
    move v0, v2

    .line 179
    goto :goto_0

    :cond_2
    move v1, v2

    .line 183
    goto :goto_1
.end method

.method static synthetic d(Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;->a()V

    return-void
.end method


# virtual methods
.method public getAdListener()Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;->h:Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;

    return-object v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoAdListener()Lcom/taiwanmobile/pt/adp/view/TWMVideoAdListener;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;->i:Lcom/taiwanmobile/pt/adp/view/TWMVideoAdListener;

    return-object v0
.end method

.method public isReady()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 108
    const/4 v0, 0x1

    .line 110
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadAd(Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;)V
    .locals 8

    .prologue
    .line 144
    const-string v0, "TWMVideoAd"

    const-string v1, "loadAd invoked!!"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/taiwanmobile/pt/util/Utility;->checkPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->isActivitySettingValid(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    const-string v1, "TWMAd"

    invoke-virtual {v0, v1, p0}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 149
    const-string v0, "TWMVideoAd"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isAdLoading ? "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;->b()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;->g:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;

    .line 151
    invoke-direct {p0}, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;->c:Ljava/lang/String;

    const/4 v2, 0x0

    .line 153
    iget-object v4, p0, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;->d:Lcom/taiwanmobile/pt/adp/view/TWMVideoAd$a;

    const/4 v5, 0x1

    const-string v6, "V"

    const-string v7, "TWMVideoAd"

    move-object v3, p1

    .line 152
    invoke-static/range {v0 .. v7}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->fireAdRequest2(Landroid/content/Context;Ljava/lang/String;Lcom/taiwanmobile/pt/adp/view/TWMAdSize;Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;ZLjava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;->h:Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;->h:Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;

    sget-object v1, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;->INVALID_REQUEST:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;

    invoke-interface {v0, p0, v1}, Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;->onFailedToReceiveAd(Lcom/taiwanmobile/pt/adp/view/TWMAd;Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;)V

    goto :goto_0
.end method

.method public setAdListener(Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;->h:Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;

    .line 205
    return-void
.end method

.method public setVideoAdListener(Lcom/taiwanmobile/pt/adp/view/TWMVideoAdListener;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;->i:Lcom/taiwanmobile/pt/adp/view/TWMVideoAdListener;

    .line 198
    invoke-virtual {p0, p1}, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;->setAdListener(Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;)V

    .line 199
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 164
    const-string v0, "TWMVideoAd"

    const-string v1, "show invoked!!"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v1, "TWMVideoAd"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "txId != null ? "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->launchAdActivity(Ljava/lang/String;)V

    .line 170
    :cond_0
    return-void

    .line 165
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stopLoading()V
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMVideoAd;->f:Z

    .line 210
    return-void
.end method
