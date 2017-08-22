.class Lcom/adbert/AdbertInterstitialAD$3;
.super Lcom/google/android/gms/ads/AdListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adbert/AdbertInterstitialAD;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adbert/AdbertInterstitialAD;


# direct methods
.method constructor <init>(Lcom/adbert/AdbertInterstitialAD;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/adbert/AdbertInterstitialAD$3;->a:Lcom/adbert/AdbertInterstitialAD;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(I)V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialAD$3;->a:Lcom/adbert/AdbertInterstitialAD;

    sget-object v1, Lcom/adbert/a/b/g;->q:Lcom/adbert/a/b/g;

    invoke-virtual {v1}, Lcom/adbert/a/b/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adbert/AdbertInterstitialAD;->c(Lcom/adbert/AdbertInterstitialAD;Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method public onAdLoaded()V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialAD$3;->a:Lcom/adbert/AdbertInterstitialAD;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adbert/AdbertInterstitialAD;->a(Lcom/adbert/AdbertInterstitialAD;Z)Z

    .line 237
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialAD$3;->a:Lcom/adbert/AdbertInterstitialAD;

    sget-object v1, Lcom/adbert/a/b/g;->o:Lcom/adbert/a/b/g;

    invoke-virtual {v1}, Lcom/adbert/a/b/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adbert/AdbertInterstitialAD;->b(Lcom/adbert/AdbertInterstitialAD;Ljava/lang/String;)V

    .line 238
    return-void
.end method
