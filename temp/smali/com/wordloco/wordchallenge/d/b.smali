.class public abstract Lcom/wordloco/wordchallenge/d/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

.field public static b:Lcom/amazon/device/ads/InterstitialAd;

.field public static c:Ljava/lang/String;

.field public static d:Z

.field public static e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    const-string v0, "4D7701148E827501A832716FB465B3C3"

    sput-object v0, Lcom/wordloco/wordchallenge/d/b;->c:Ljava/lang/String;

    .line 29
    sput-boolean v1, Lcom/wordloco/wordchallenge/d/b;->d:Z

    .line 30
    sput-boolean v1, Lcom/wordloco/wordchallenge/d/b;->e:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 33
    .line 34
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 33
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 35
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 36
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    const/4 v0, 0x1

    .line 39
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
