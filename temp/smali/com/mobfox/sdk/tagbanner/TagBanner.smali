.class public Lcom/mobfox/sdk/tagbanner/TagBanner;
.super Landroid/webkit/WebView;
.source "TagBanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobfox/sdk/tagbanner/TagBanner$EmptyListener;,
        Lcom/mobfox/sdk/tagbanner/TagBanner$Listener;
    }
.end annotation


# static fields
.field static O_ANDADVID:Ljava/lang/String;


# instance fields
.field adHeight:I

.field adWidth:I

.field adapterName:Ljava/lang/String;

.field context:Landroid/content/Context;

.field invHash:Ljava/lang/String;

.field listener:Lcom/mobfox/sdk/tagbanner/TagBanner$Listener;

.field mainHandler:Landroid/os/Handler;

.field tagParams:Lcom/mobfox/sdk/tagbanner/TagParams;

.field userInteraction:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-string v0, ""

    sput-object v0, Lcom/mobfox/sdk/tagbanner/TagBanner;->O_ANDADVID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "inHash"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobfox/sdk/tagbanner/TagBanner;->userInteraction:Z

    .line 61
    iput-object p1, p0, Lcom/mobfox/sdk/tagbanner/TagBanner;->context:Landroid/content/Context;

    .line 62
    iput p2, p0, Lcom/mobfox/sdk/tagbanner/TagBanner;->adWidth:I

    .line 63
    iput p3, p0, Lcom/mobfox/sdk/tagbanner/TagBanner;->adHeight:I

    .line 64
    iput-object p4, p0, Lcom/mobfox/sdk/tagbanner/TagBanner;->invHash:Ljava/lang/String;

    .line 65
    new-instance v0, Lcom/mobfox/sdk/tagbanner/TagParams;

    invoke-direct {v0}, Lcom/mobfox/sdk/tagbanner/TagParams;-><init>()V

    iput-object v0, p0, Lcom/mobfox/sdk/tagbanner/TagBanner;->tagParams:Lcom/mobfox/sdk/tagbanner/TagParams;

    .line 66
    new-instance v0, Lcom/mobfox/sdk/tagbanner/TagBanner$EmptyListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mobfox/sdk/tagbanner/TagBanner$EmptyListener;-><init>(Lcom/mobfox/sdk/tagbanner/TagBanner;Lcom/mobfox/sdk/tagbanner/TagBanner$1;)V

    iput-object v0, p0, Lcom/mobfox/sdk/tagbanner/TagBanner;->listener:Lcom/mobfox/sdk/tagbanner/TagBanner$Listener;

    .line 67
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/mobfox/sdk/tagbanner/TagBanner;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mobfox/sdk/tagbanner/TagBanner;->mainHandler:Landroid/os/Handler;

    .line 68
    const-string v0, "core"

    iput-object v0, p0, Lcom/mobfox/sdk/tagbanner/TagBanner;->adapterName:Ljava/lang/String;

    .line 70
    invoke-virtual {p0}, Lcom/mobfox/sdk/tagbanner/TagBanner;->init()V

    .line 71
    return-void
.end method

.method private reportError(Lcom/mobfox/sdk/tagbanner/TagBanner;Ljava/lang/String;)V
    .locals 3
    .param p1, "adapter"    # Lcom/mobfox/sdk/tagbanner/TagBanner;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/mobfox/sdk/tagbanner/TagBanner;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mobfox/sdk/tagbanner/TagBanner$5;

    iget-object v2, p0, Lcom/mobfox/sdk/tagbanner/TagBanner;->context:Landroid/content/Context;

    invoke-direct {v1, p0, v2, p2, p1}, Lcom/mobfox/sdk/tagbanner/TagBanner$5;-><init>(Lcom/mobfox/sdk/tagbanner/TagBanner;Landroid/content/Context;Ljava/lang/String;Lcom/mobfox/sdk/tagbanner/TagBanner;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 187
    return-void
.end method

.method private setDefaultParams()V
    .locals 7

    .prologue
    .line 218
    const/4 v0, 0x1

    .line 219
    .local v0, "dev_dnt":I
    const/4 v1, 0x1

    .line 221
    .local v1, "dev_js":I
    sget-object v3, Lcom/mobfox/sdk/tagbanner/TagBanner;->O_ANDADVID:Ljava/lang/String;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/mobfox/sdk/tagbanner/TagBanner;->O_ANDADVID:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 222
    const/4 v0, 0x0

    .line 223
    iget-object v3, p0, Lcom/mobfox/sdk/tagbanner/TagBanner;->tagParams:Lcom/mobfox/sdk/tagbanner/TagParams;

    const-string v4, "o_andadvid"

    sget-object v5, Lcom/mobfox/sdk/tagbanner/TagBanner;->O_ANDADVID:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/mobfox/sdk/tagbanner/TagParams;->setTagParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :cond_0
    new-instance v3, Landroid/graphics/Point;

    iget v4, p0, Lcom/mobfox/sdk/tagbanner/TagBanner;->adWidth:I

    iget v5, p0, Lcom/mobfox/sdk/tagbanner/TagBanner;->adHeight:I

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {v3}, Lcom/mobfox/sdk/bannerads/SizeUtils;->getNearestFitSupported(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v2

    .line 228
    .local v2, "nearest":Landroid/graphics/Point;
    iget-object v3, p0, Lcom/mobfox/sdk/tagbanner/TagBanner;->tagParams:Lcom/mobfox/sdk/tagbanner/TagParams;

    const-string v4, "adspace_width"

    iget v5, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v3, v4, v5}, Lcom/mobfox/sdk/tagbanner/TagParams;->setTagParam(Ljava/lang/String;I)V

    .line 229
    iget-object v3, p0, Lcom/mobfox/sdk/tagbanner/TagBanner;->tagParams:Lcom/mobfox/sdk/tagbanner/TagParams;

    const-string v4, "adspace_height"

    iget v5, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4, v5}, Lcom/mobfox/sdk/tagbanner/TagParams;->setTagParam(Ljava/lang/String;I)V

    .line 231
    iget-object v3, p0, Lcom/mobfox/sdk/tagbanner/TagBanner;->tagParams:Lcom/mobfox/sdk/tagbanner/TagParams;

    const-string v4, "s"

    iget-object v5, p0, Lcom/mobfox/sdk/tagbanner/TagBanner;->invHash:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/mobfox/sdk/tagbanner/TagParams;->setTagParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v3, p0, Lcom/mobfox/sdk/tagbanner/TagBanner;->tagParams:Lcom/mobfox/sdk/tagbanner/TagParams;

    const-string v4, "v"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "3.2.7_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mobfox/sdk/tagbanner/TagBanner;->adapterName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/mobfox/sdk/tagbanner/TagParams;->setTagParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v3, p0, Lcom/mobfox/sdk/tagbanner/TagBanner;->tagParams:Lcom/mobfox/sdk/tagbanner/TagParams;

    const-string v4, "c_mraid"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/mobfox/sdk/tagbanner/TagParams;->setTagParam(Ljava/lang/String;I)V

    .line 234
    iget-object v3, p0, Lcom/mobfox/sdk/tagbanner/TagBanner;->tagParams:Lcom/mobfox/sdk/tagbanner/TagParams;

    const-string v4, "rt"

    const-string v5, "android_app"

    invoke-virtual {v3, v4, v5}, Lcom/mobfox/sdk/tagbanner/TagParams;->setTagParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v3, p0, Lcom/mobfox/sdk/tagbanner/TagBanner;->tagParams:Lcom/mobfox/sdk/tagbanner/TagParams;

    const-string v4, "dev_dnt"

    invoke-virtual {v3, v4, v0}, Lcom/mobfox/sdk/tagbanner/TagParams;->setTagParam(Ljava/lang/String;I)V

    .line 236
    iget-object v3, p0, Lcom/mobfox/sdk/tagbanner/TagBanner;->tagParams:Lcom/mobfox/sdk/tagbanner/TagParams;

    const-string v4, "dev_js"

    invoke-virtual {v3, v4, v1}, Lcom/mobfox/sdk/tagbanner/TagParams;->setTagParam(Ljava/lang/String;I)V

    .line 237
    iget-object v3, p0, Lcom/mobfox/sdk/tagbanner/TagBanner;->tagParams:Lcom/mobfox/sdk/tagbanner/TagParams;

    const-string v4, "sub_bundle_id"

    iget-object v5, p0, Lcom/mobfox/sdk/tagbanner/TagBanner;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/mobfox/sdk/utils/Utils;->getBundleId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/mobfox/sdk/tagbanner/TagParams;->setTagParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method private setWebViewSettings(Lcom/mobfox/sdk/tagbanner/TagBanner;)V
    .locals 4
    .param p1, "self"    # Lcom/mobfox/sdk/tagbanner/TagBanner;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 86
    invoke-virtual {p1, v3}, Lcom/mobfox/sdk/tagbanner/TagBanner;->setBackgroundColor(I)V

    .line 87
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 88
    invoke-static {v2}, Lcom/mobfox/sdk/tagbanner/TagBanner;->setWebContentsDebuggingEnabled(Z)V

    .line 90
    :cond_0
    invoke-virtual {p1}, Lcom/mobfox/sdk/tagbanner/TagBanner;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 91
    invoke-virtual {p1}, Lcom/mobfox/sdk/tagbanner/TagBanner;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 92
    invoke-virtual {p1}, Lcom/mobfox/sdk/tagbanner/TagBanner;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 94
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 95
    invoke-virtual {p1}, Lcom/mobfox/sdk/tagbanner/TagBanner;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 98
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_2

    .line 99
    invoke-virtual {p1}, Lcom/mobfox/sdk/tagbanner/TagBanner;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 102
    :cond_2
    new-instance v0, Lcom/mobfox/sdk/tagbanner/TagBanner$1;

    invoke-direct {v0, p0, p1}, Lcom/mobfox/sdk/tagbanner/TagBanner$1;-><init>(Lcom/mobfox/sdk/tagbanner/TagBanner;Lcom/mobfox/sdk/tagbanner/TagBanner;)V

    invoke-virtual {p1, v0}, Lcom/mobfox/sdk/tagbanner/TagBanner;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 128
    new-instance v0, Lcom/mobfox/sdk/tagbanner/TagBanner$2;

    invoke-direct {v0, p0}, Lcom/mobfox/sdk/tagbanner/TagBanner$2;-><init>(Lcom/mobfox/sdk/tagbanner/TagBanner;)V

    invoke-virtual {p1, v0}, Lcom/mobfox/sdk/tagbanner/TagBanner;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 148
    new-instance v0, Lcom/mobfox/sdk/tagbanner/TagBanner$3;

    invoke-direct {v0, p0, p1}, Lcom/mobfox/sdk/tagbanner/TagBanner$3;-><init>(Lcom/mobfox/sdk/tagbanner/TagBanner;Lcom/mobfox/sdk/tagbanner/TagBanner;)V

    invoke-virtual {p1, v0}, Lcom/mobfox/sdk/tagbanner/TagBanner;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 155
    const-string v0, "mobfox"

    invoke-virtual {p1, p0, v0}, Lcom/mobfox/sdk/tagbanner/TagBanner;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    return-void
.end method


# virtual methods
.method protected getAdvId()V
    .locals 3

    .prologue
    .line 241
    sget-object v1, Lcom/mobfox/sdk/tagbanner/TagBanner;->O_ANDADVID:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/mobfox/sdk/tagbanner/TagBanner;->O_ANDADVID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 254
    :goto_0
    return-void

    .line 243
    :cond_0
    new-instance v0, Lcom/mobfox/sdk/services/MobFoxAdIdService;

    new-instance v1, Lcom/mobfox/sdk/tagbanner/TagBanner$6;

    invoke-direct {v1, p0}, Lcom/mobfox/sdk/tagbanner/TagBanner$6;-><init>(Lcom/mobfox/sdk/tagbanner/TagBanner;)V

    iget-object v2, p0, Lcom/mobfox/sdk/tagbanner/TagBanner;->context:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/mobfox/sdk/services/MobFoxAdIdService;-><init>(Lcom/mobfox/sdk/services/MobFoxAdIdService$Listener;Landroid/content/Context;)V

    .line 253
    .local v0, "advIdService":Lcom/mobfox/sdk/services/MobFoxAdIdService;
    invoke-virtual {v0}, Lcom/mobfox/sdk/services/MobFoxAdIdService;->execute()V

    goto :goto_0
.end method

.method protected init()V
    .locals 4

    .prologue
    .line 75
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/mobfox/sdk/tagbanner/TagBanner;->adWidth:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/mobfox/sdk/tagbanner/TagBanner;->context:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/mobfox/sdk/bannerads/LayoutUtils;->convertDpToPixel(FLandroid/content/Context;)I

    move-result v1

    iget v2, p0, Lcom/mobfox/sdk/tagbanner/TagBanner;->adHeight:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/mobfox/sdk/tagbanner/TagBanner;->context:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/mobfox/sdk/bannerads/LayoutUtils;->convertDpToPixel(FLandroid/content/Context;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/mobfox/sdk/tagbanner/TagBanner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    invoke-direct {p0, p0}, Lcom/mobfox/sdk/tagbanner/TagBanner;->setWebViewSettings(Lcom/mobfox/sdk/tagbanner/TagBanner;)V

    .line 79
    invoke-virtual {p0}, Lcom/mobfox/sdk/tagbanner/TagBanner;->getAdvId()V

    .line 81
    iget-object v0, p0, Lcom/mobfox/sdk/tagbanner/TagBanner;->context:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/mobfox/sdk/utils/Utils;->postDMP(Landroid/content/Context;Landroid/webkit/WebView;)V

    .line 82
    return-void
.end method

.method public load(Lcom/mobfox/sdk/tagbanner/TagParams;)V
    .locals 6
    .param p1, "params"    # Lcom/mobfox/sdk/tagbanner/TagParams;

    .prologue
    .line 191
    :try_start_0
    iget-object v3, p0, Lcom/mobfox/sdk/tagbanner/TagBanner;->invHash:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mobfox/sdk/tagbanner/TagBanner;->invHash:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 192
    :cond_0
    iget-object v3, p0, Lcom/mobfox/sdk/tagbanner/TagBanner;->listener:Lcom/mobfox/sdk/tagbanner/TagBanner$Listener;

    const-string v4, "please set inventory hash before load()"

    invoke-interface {v3, p0, v4}, Lcom/mobfox/sdk/tagbanner/TagBanner$Listener;->onBannerError(Landroid/view/View;Ljava/lang/String;)V

    .line 214
    :goto_0
    return-void

    .line 196
    :cond_1
    invoke-direct {p0}, Lcom/mobfox/sdk/tagbanner/TagBanner;->setDefaultParams()V

    .line 198
    iget-object v3, p0, Lcom/mobfox/sdk/tagbanner/TagBanner;->tagParams:Lcom/mobfox/sdk/tagbanner/TagParams;

    invoke-virtual {v3, p1}, Lcom/mobfox/sdk/tagbanner/TagParams;->mergeParams(Lcom/mobfox/sdk/tagbanner/TagParams;)V

    .line 200
    iget-object v3, p0, Lcom/mobfox/sdk/tagbanner/TagBanner;->tagParams:Lcom/mobfox/sdk/tagbanner/TagParams;

    invoke-virtual {v3}, Lcom/mobfox/sdk/tagbanner/TagParams;->getTagUrlQuery()Ljava/lang/String;

    move-result-object v2

    .line 202
    .local v2, "url":Ljava/lang/String;
    const-string v3, "MobFoxBanner"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loading url "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-virtual {p0, v2}, Lcom/mobfox/sdk/tagbanner/TagBanner;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 206
    .end local v2    # "url":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MobFoxBanner"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, "reason":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 209
    :cond_2
    const-string v1, "MobFoxBannererror in load"

    .line 211
    :cond_3
    invoke-direct {p0, p0, v1}, Lcom/mobfox/sdk/tagbanner/TagBanner;->reportError(Lcom/mobfox/sdk/tagbanner/TagBanner;Ljava/lang/String;)V

    .line 212
    const-string v3, "MobFoxBanner"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onFail(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 171
    invoke-direct {p0, p0, p1}, Lcom/mobfox/sdk/tagbanner/TagBanner;->reportError(Lcom/mobfox/sdk/tagbanner/TagBanner;Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method public onSuccess()V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 160
    move-object v0, p0

    .line 161
    .local v0, "self":Lcom/mobfox/sdk/tagbanner/TagBanner;
    iget-object v1, p0, Lcom/mobfox/sdk/tagbanner/TagBanner;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/mobfox/sdk/tagbanner/TagBanner$4;

    iget-object v3, v0, Lcom/mobfox/sdk/tagbanner/TagBanner;->context:Landroid/content/Context;

    invoke-direct {v2, p0, v3, v0}, Lcom/mobfox/sdk/tagbanner/TagBanner$4;-><init>(Lcom/mobfox/sdk/tagbanner/TagBanner;Landroid/content/Context;Lcom/mobfox/sdk/tagbanner/TagBanner;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 167
    return-void
.end method

.method public setAdapter(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 275
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    iput-object p1, p0, Lcom/mobfox/sdk/tagbanner/TagBanner;->adapterName:Ljava/lang/String;

    .line 278
    :cond_0
    return-void
.end method

.method public setListener(Lcom/mobfox/sdk/tagbanner/TagBanner$Listener;)V
    .locals 2
    .param p1, "newListener"    # Lcom/mobfox/sdk/tagbanner/TagBanner$Listener;

    .prologue
    .line 257
    if-nez p1, :cond_0

    .line 258
    new-instance v0, Lcom/mobfox/sdk/tagbanner/TagBanner$EmptyListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mobfox/sdk/tagbanner/TagBanner$EmptyListener;-><init>(Lcom/mobfox/sdk/tagbanner/TagBanner;Lcom/mobfox/sdk/tagbanner/TagBanner$1;)V

    iput-object v0, p0, Lcom/mobfox/sdk/tagbanner/TagBanner;->listener:Lcom/mobfox/sdk/tagbanner/TagBanner$Listener;

    .line 263
    :goto_0
    return-void

    .line 261
    :cond_0
    iput-object p1, p0, Lcom/mobfox/sdk/tagbanner/TagBanner;->listener:Lcom/mobfox/sdk/tagbanner/TagBanner$Listener;

    goto :goto_0
.end method

.method public setSecure(Z)V
    .locals 3
    .param p1, "secure"    # Z

    .prologue
    .line 266
    if-eqz p1, :cond_0

    .line 267
    iget-object v0, p0, Lcom/mobfox/sdk/tagbanner/TagBanner;->tagParams:Lcom/mobfox/sdk/tagbanner/TagParams;

    const-string v1, "imp_secure"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/mobfox/sdk/tagbanner/TagParams;->setTagParam(Ljava/lang/String;I)V

    .line 272
    :goto_0
    return-void

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/mobfox/sdk/tagbanner/TagBanner;->tagParams:Lcom/mobfox/sdk/tagbanner/TagParams;

    const-string v1, "imp_secure"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mobfox/sdk/tagbanner/TagParams;->setTagParam(Ljava/lang/String;I)V

    goto :goto_0
.end method
