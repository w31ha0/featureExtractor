.class Lcom/taiwanmobile/pt/adp/view/TWMNativeAd$a;
.super Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;
.source "TWMNativeAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;


# direct methods
.method public constructor <init>(Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;Landroid/content/Context;Lcom/taiwanmobile/pt/adp/view/internal/AdViewServiceCallback;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;

    .line 189
    invoke-direct {p0, p2, p3}, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;-><init>(Landroid/content/Context;Lcom/taiwanmobile/pt/adp/view/internal/AdViewServiceCallback;)V

    .line 190
    return-void
.end method


# virtual methods
.method public onResponse(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 194
    invoke-super {p0, p1}, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->onResponse(Lorg/json/JSONObject;)V

    .line 195
    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd$a;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;->a(Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;

    invoke-static {v1}, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;->a(Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 198
    const-string v0, "TWMNativeAd"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Remove ad info in hashmap, key = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;

    invoke-static {v2}, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;->a(Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;

    invoke-static {v1}, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;->a(Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->remove(Ljava/lang/String;)V

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;->a(Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;Z)V

    .line 203
    new-instance v1, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$NativeAd;

    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 204
    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;

    invoke-static {v2}, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;->b(Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;)Ljava/lang/String;

    move-result-object v2

    .line 203
    invoke-direct {v1, v0, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$NativeAd;-><init>(Lcom/taiwanmobile/pt/adp/view/internal/AdManager;Ljava/lang/String;)V

    .line 205
    const-string v0, "_context"

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd$a;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$NativeAd;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 206
    const-string v0, "adListener"

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;

    invoke-static {v2}, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;->c(Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;)Lcom/taiwanmobile/pt/adp/view/TWMAdViewListener;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$NativeAd;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 207
    const-string v0, "adRequest"

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;

    invoke-static {v2}, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;->d(Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;)Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$NativeAd;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 208
    const-string v0, "ad"

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;

    invoke-virtual {v1, v0, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$NativeAd;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 209
    const-string v2, "userAgent"

    .line 210
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd$a;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/taiwanmobile/pt/util/Utility;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 209
    invoke-virtual {v1, v2, v0}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$NativeAd;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 211
    const-string v0, "planId"

    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd$a;->getPlanId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$NativeAd;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 212
    const-string v0, "adType"

    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd$a;->getAdType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$NativeAd;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 213
    const-string v0, "clickUrl"

    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd$a;->getReportClickUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$NativeAd;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 214
    const-string v0, "cvt"

    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd$a;->getClickValidTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$NativeAd;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 215
    const-string v0, "targetUrl"

    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd$a;->getTargetUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$NativeAd;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 216
    const-string v0, "nad_content"

    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd$a;->getNativeAd()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$NativeAd;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 217
    const-string v0, "isOpenChrome"

    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd$a;->isOpenChrome()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$NativeAd;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 219
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;

    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd$a;->getTxId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;->a(Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;Ljava/lang/String;)V

    .line 220
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    .line 221
    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;

    invoke-static {v2}, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;->a(Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 220
    check-cast v0, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;

    .line 222
    const-string v2, "_deviceId"

    .line 223
    const-string v3, "_deviceId"

    invoke-virtual {v0, v3}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 222
    invoke-virtual {v1, v2, v0}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$NativeAd;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 224
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;

    invoke-static {v2}, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;->a(Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 226
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;->e(Lcom/taiwanmobile/pt/adp/view/TWMNativeAd;)V

    .line 228
    :cond_1
    return-void
.end method
