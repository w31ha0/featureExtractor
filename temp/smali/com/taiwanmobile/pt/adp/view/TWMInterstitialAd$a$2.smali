.class Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2;
.super Lcom/taiwanmobile/pt/adp/view/webview/client/WebViewClientBase;
.source "TWMInterstitialAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a;->onResponse(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a;

.field private b:Z

.field private final c:Ljava/util/Timer;

.field private final synthetic d:Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Interstitial;

.field private final synthetic e:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;


# direct methods
.method constructor <init>(Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a;Ljava/lang/String;Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Interstitial;Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2;->a:Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a;

    iput-object p3, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2;->d:Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Interstitial;

    iput-object p4, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2;->e:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    .line 111
    invoke-direct {p0, p2}, Lcom/taiwanmobile/pt/adp/view/webview/client/WebViewClientBase;-><init>(Ljava/lang/String;)V

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2;->b:Z

    .line 115
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2;->c:Ljava/util/Timer;

    return-void
.end method

.method static synthetic a(Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2;)Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2;->a:Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a;

    return-object v0
.end method

.method static synthetic a(Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2;Z)V
    .locals 0

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2;->b:Z

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 168
    const-string v0, "TWMInterstitialAd"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPageFinished("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") invoked!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-super {p0, p1, p2}, Lcom/taiwanmobile/pt/adp/view/webview/client/WebViewClientBase;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 170
    const-string v0, "TWMInterstitialAd"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hasBeenReported ? "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-boolean v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2;->b:Z

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2;->c:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 173
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2;->d:Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Interstitial;

    const-string v1, "kjsw"

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2;->e:Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    invoke-virtual {v0, v1, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Interstitial;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 174
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2;->d:Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Interstitial;

    const-string v1, "kil"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Interstitial;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 175
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2;->a:Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a;

    invoke-static {v1}, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a;->a(Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a;)Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;

    move-result-object v1

    invoke-static {v1}, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->e(Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2;->d:Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Interstitial;

    invoke-virtual {v0, v1, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 176
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2;->a:Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a;->a(Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a;)Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;

    move-result-object v0

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->g(Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;)V

    .line 178
    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    .line 146
    invoke-super {p0, p1, p2, p3}, Lcom/taiwanmobile/pt/adp/view/webview/client/WebViewClientBase;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2;->b:Z

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2;->c:Ljava/util/Timer;

    new-instance v1, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2$a;

    invoke-direct {v1, p0, p1}, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2$a;-><init>(Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2;Landroid/webkit/WebView;)V

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_0
    const-string v0, "TWMInterstitialAd"

    const-string v1, "timer started!!!!"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 151
    const-string v1, "TWMInterstitialAd"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 161
    const-string v0, "TWMInterstitialAd"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onReceivedError("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-super {p0, p1, p2, p3, p4}, Lcom/taiwanmobile/pt/adp/view/webview/client/WebViewClientBase;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2;->a:Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a;->a(Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a;)Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;

    move-result-object v0

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->e(Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;->NETWORK_ERROR:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->popFailReceiveAd(Ljava/lang/String;Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;)V

    .line 164
    return-void
.end method
