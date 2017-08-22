.class Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$d;
.super Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;
.source "TWMFloatAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;


# direct methods
.method public constructor <init>(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;Landroid/content/Context;Lcom/taiwanmobile/pt/adp/view/internal/AdViewServiceCallback;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$d;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    .line 164
    invoke-direct {p0, p2, p3}, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;-><init>(Landroid/content/Context;Lcom/taiwanmobile/pt/adp/view/internal/AdViewServiceCallback;)V

    .line 165
    return-void
.end method


# virtual methods
.method public onResponse(Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    .line 169
    invoke-super {p0, p1}, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->onResponse(Lorg/json/JSONObject;)V

    .line 170
    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$d;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$d;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->e(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$d;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    invoke-static {v1}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->e(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 174
    const-string v0, "TWMFloatAdView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Remove ad info in hashmap, key = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$d;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    invoke-static {v2}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->e(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$d;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    invoke-static {v1}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->e(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->remove(Ljava/lang/String;)V

    .line 178
    :cond_0
    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$d;->getAdType()I

    move-result v0

    .line 179
    const-string v1, "TWMFloatAdView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "adType : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$d;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->c(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;Z)V

    .line 182
    new-instance v1, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$FloatAd;

    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$d;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    invoke-static {v3}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->f(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$FloatAd;-><init>(Lcom/taiwanmobile/pt/adp/view/internal/AdManager;Ljava/lang/String;)V

    .line 183
    const-string v2, "_context"

    iget-object v3, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$d;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$FloatAd;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 184
    const-string v2, "adListener"

    iget-object v3, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$d;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    invoke-static {v3}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->g(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$FloatAd;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 185
    const-string v2, "adRequest"

    iget-object v3, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$d;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    invoke-static {v3}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->h(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$FloatAd;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 186
    const-string v2, "targetUrl"

    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$d;->getTargetUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$FloatAd;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 187
    const-string v2, "mediaUrl"

    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$d;->getMediaUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$FloatAd;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 188
    const-string v2, "adType"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$FloatAd;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 189
    const-string v0, "planId"

    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$d;->getPlanId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$FloatAd;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 190
    const-string v0, "cvt"

    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$d;->getClickValidTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$FloatAd;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 191
    const-string v0, "ad"

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$d;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    invoke-virtual {v1, v0, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$FloatAd;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 192
    const-string v0, "clickUrl"

    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$d;->getReportClickUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$FloatAd;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 193
    const-string v2, "userAgent"

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$d;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/taiwanmobile/pt/util/Utility;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$FloatAd;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 194
    const-string v0, "floatType"

    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$d;->getFloatType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$FloatAd;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 195
    const-string v0, "isOpenChrome"

    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$d;->isOpenChrome()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$FloatAd;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 196
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$d;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$d;->getFloatType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->a(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$d;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$d;->getTxId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->b(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;Ljava/lang/String;)V

    .line 198
    const-string v0, "TWMFloatAdView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "txId : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$d;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    invoke-static {v3}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->e(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$d;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    invoke-static {v2}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->e(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;

    .line 200
    const-string v2, "_deviceId"

    const-string v3, "_deviceId"

    invoke-virtual {v0, v3}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$FloatAd;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 201
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$d;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    invoke-static {v2}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->e(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 203
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$d;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    new-instance v1, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$c;

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$d;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$d;->getMediaUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$d;->getTargetUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$d;->getTxId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$c;-><init>(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->a(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$c;)V

    .line 204
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$d;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->i(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$d;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    invoke-static {v1}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->j(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$c;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 206
    :cond_1
    return-void
.end method
