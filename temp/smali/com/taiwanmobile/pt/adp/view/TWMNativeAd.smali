.class public Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;
.super Ljava/lang/Object;
.source "TWMNativeAd.java"

# interfaces
.implements Lcom/taiwanmobile/pt/adp/view/TWMAd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taiwanmobile/pt/adp/view/TWMNativeAd$a;
    }
.end annotation


# static fields
.field public static final BODY:Ljava/lang/String; = "BODY"

.field public static final ICONRECTANGLE:Ljava/lang/String; = "ICONRECTANGLE"

.field public static final ICONSQUARE:Ljava/lang/String; = "ICONSQUARE"

.field public static final IMAGE1200X627:Ljava/lang/String; = "IMAGE1200X627"

.field public static final IMAGE1280X720:Ljava/lang/String; = "IMAGE1280X720"

.field public static final IMAGE960X640:Ljava/lang/String; = "IMAGE960X640"

.field public static final LONGSUBJECT:Ljava/lang/String; = "LONGSUBJECT"

.field public static final SHORTSUBJECT:Ljava/lang/String; = "SHORTSUBJECT"

.field public static final VIDEO:Ljava/lang/String; = "VIDEO"


# instance fields
.field private final a:Lcom/taiwanmobile/pt/adp/view/internal/AdViewServiceCallback;

.field private b:Ljava/lang/ref/WeakReference;

.field private c:Ljava/lang/String;

.field private d:Lcom/taiwanmobile/pt/adp/view/TWMNativeAd$a;

.field private e:Ljava/lang/String;

.field private f:Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;

.field private g:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd$1;

    invoke-direct {v0, p0}, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd$1;-><init>(Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;)V

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;->a:Lcom/taiwanmobile/pt/adp/view/internal/AdViewServiceCallback;

    .line 102
    iput-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;->b:Ljava/lang/ref/WeakReference;

    .line 103
    iput-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;->c:Ljava/lang/String;

    .line 104
    iput-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;->d:Lcom/taiwanmobile/pt/adp/view/TWMNativeAd$a;

    .line 105
    iput-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;->e:Ljava/lang/String;

    .line 106
    iput-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;->f:Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;

    .line 107
    iput-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;->g:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;->h:Z

    .line 111
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;->b:Ljava/lang/ref/WeakReference;

    .line 112
    iput-object p2, p0, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;->c:Ljava/lang/String;

    .line 113
    new-instance v1, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd$a;

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;->a:Lcom/taiwanmobile/pt/adp/view/internal/AdViewServiceCallback;

    invoke-direct {v1, p0, v0, v2}, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd$a;-><init>(Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;Landroid/content/Context;Lcom/taiwanmobile/pt/adp/view/internal/AdViewServiceCallback;)V

    iput-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;->d:Lcom/taiwanmobile/pt/adp/view/TWMNativeAd$a;

    .line 114
    return-void
.end method

.method static synthetic a(Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;->e:Ljava/lang/String;

    return-object v0
.end method

.method private a(Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;)V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;->f:Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;->f:Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;

    invoke-interface {v0, p0, p1}, Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;->onFailedToReceiveAd(Lcom/taiwanmobile/pt/adp/view/TWMAd;Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;)V

    .line 47
    :goto_0
    return-void

    .line 45
    :cond_0
    const-string v0, "TWMNativeAd"

    const-string v1, "adListener is null"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;->a(Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;)V

    return-void
.end method

.method static synthetic a(Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;->e:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;Z)V
    .locals 0

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;->h:Z

    return-void
.end method

.method private a()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;->h:Z

    return v0
.end method

.method static synthetic b(Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;->c:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 180
    const-string v0, "TWMNativeAd"

    const-string v1, "popAdReceive!!"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;->f:Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;->f:Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;

    invoke-interface {v0, p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;->onReceiveAd(Lcom/taiwanmobile/pt/adp/view/TWMAd;)V

    .line 184
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;)Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;->f:Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;

    return-object v0
.end method

.method static synthetic d(Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;)Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;->g:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;

    return-object v0
.end method

.method static synthetic e(Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;)V
    .locals 0

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;->b()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 233
    const-string v0, "TWMNativeAd"

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->cancelRequest(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 237
    const-string v0, "TWMNativeAd"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Remove ad info in hashmap, key = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->remove(Ljava/lang/String;)V

    .line 241
    :cond_0
    iput-object v3, p0, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;->e:Ljava/lang/String;

    .line 242
    iput-object v3, p0, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;->f:Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;

    .line 243
    iput-object v3, p0, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;->d:Lcom/taiwanmobile/pt/adp/view/TWMNativeAd$a;

    .line 244
    iput-object v3, p0, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;->c:Ljava/lang/String;

    .line 245
    return-void
.end method

.method public getAdListener()Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;->f:Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;

    return-object v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getNativeAdContent()Lorg/json/JSONObject;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 128
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 128
    check-cast v0, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$NativeAd;

    .line 130
    :goto_0
    if-eqz v0, :cond_1

    .line 131
    const-string v1, "nad_content"

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$NativeAd;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 133
    :goto_1
    return-object v0

    :cond_0
    move-object v0, v1

    .line 129
    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 133
    goto :goto_1
.end method

.method public handleClick()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 62
    const-string v0, "TWMNativeAd"

    const-string v1, "handleClick invoked!!"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 64
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;

    .line 66
    if-eqz v0, :cond_1

    const-string v1, "targetUrl"

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 67
    const-string v1, "isOpenChrome"

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 68
    const-string v1, "clickUrl"

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 69
    const-string v2, "targetUrl"

    invoke-virtual {v0, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    .line 70
    const-string v2, "isOpenChrome"

    invoke-virtual {v0, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 72
    const-string v0, "TWMNativeAd"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "targetUrl : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 74
    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;->e:Ljava/lang/String;

    const-string v3, "TWMNativeAd"

    move-object v5, v4

    .line 73
    invoke-static/range {v0 .. v5}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->reportClick(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 85
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 86
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 88
    if-eqz v7, :cond_0

    .line 89
    const-string v0, "com.android.chrome"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :cond_1
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    const-string v0, "TWMNativeAd"

    const-string v2, "openTargetUrl: Device has no Chrome !!"

    invoke-static {v0, v2}, Lcom/taiwanmobile/pt/util/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public isReady()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 121
    const/4 v0, 0x1

    .line 123
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadAd(Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;)V
    .locals 8

    .prologue
    .line 143
    const-string v0, "TWMNativeAd"

    const-string v1, "loadAd invoked!!"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/taiwanmobile/pt/util/Utility;->checkPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;->b:Ljava/lang/ref/WeakReference;

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
    const-string v0, "TWMNativeAd"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isAdLoading ? "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;->a()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;->g:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;

    .line 151
    invoke-direct {p0}, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;->c:Ljava/lang/String;

    const/4 v2, 0x0

    .line 153
    iget-object v4, p0, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;->d:Lcom/taiwanmobile/pt/adp/view/TWMNativeAd$a;

    const/4 v5, 0x1

    .line 154
    const-string v6, "N"

    .line 155
    const-string v7, "TWMNativeAd"

    move-object v3, p1

    .line 152
    invoke-static/range {v0 .. v7}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->fireAdRequest2(Landroid/content/Context;Ljava/lang/String;Lcom/taiwanmobile/pt/adp/view/TWMAdSize;Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;ZLjava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_0
    return-void
.end method

.method public setAdListener(Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;->f:Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;

    .line 164
    return-void
.end method

.method public stopLoading()V
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;->h:Z

    .line 169
    return-void
.end method
