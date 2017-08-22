.class Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$1;
.super Ljava/lang/Object;
.source "TWMInterstitialAd.java"

# interfaces
.implements Lcom/taiwanmobile/pt/adp/view/webview/IRBehavior;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a;->onResponse(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a;

.field private final synthetic b:Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Interstitial;


# direct methods
.method constructor <init>(Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a;Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Interstitial;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$1;->a:Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a;

    iput-object p2, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$1;->b:Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Interstitial;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkFloatAdPosition()I
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public closeWebView(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public disableCloseButton()V
    .locals 3

    .prologue
    .line 94
    const-string v0, "TWMInterstitialAd"

    const-string v1, "disableCloseButton request!!"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$1;->b:Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Interstitial;

    const-string v1, "kcce"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Interstitial;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$1;->a:Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a;

    invoke-static {v1}, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a;->a(Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a;)Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;

    move-result-object v1

    invoke-static {v1}, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->e(Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$1;->b:Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Interstitial;

    invoke-virtual {v0, v1, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 98
    return-void
.end method
