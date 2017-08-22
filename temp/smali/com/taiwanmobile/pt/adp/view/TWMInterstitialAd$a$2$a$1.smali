.class Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2$a$1;
.super Ljava/lang/Object;
.source "TWMInterstitialAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2$a;


# direct methods
.method constructor <init>(Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2$a;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2$a$1;->a:Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2$a;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2$a$1;->a:Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2$a;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2$a;->a(Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2$a;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 133
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2$a$1;->a:Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2$a;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2$a;->b(Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2$a;)Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2;->a(Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2;Z)V

    .line 134
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2$a$1;->a:Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2$a;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2$a;->b(Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2$a;)Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2;

    move-result-object v0

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2;->a(Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2;)Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a;

    move-result-object v0

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a;->a(Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a;)Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->a(Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;Z)V

    .line 135
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2$a$1;->a:Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2$a;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2$a;->b(Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2$a;)Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2;

    move-result-object v0

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2;->a(Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2;)Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a;

    move-result-object v0

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a;->a(Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a;)Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;

    move-result-object v0

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->e(Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;->NETWORK_ERROR:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->popFailReceiveAd(Ljava/lang/String;Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;)V

    .line 136
    return-void
.end method
