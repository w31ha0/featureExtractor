.class Lcom/adbert/AdbertInterstitialAD$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adbert/a/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adbert/AdbertInterstitialAD;->loadAd()V
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
    .line 176
    iput-object p1, p0, Lcom/adbert/AdbertInterstitialAD$2;->a:Lcom/adbert/AdbertInterstitialAD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 179
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialAD$2;->a:Lcom/adbert/AdbertInterstitialAD;

    invoke-static {v0, p1}, Lcom/adbert/AdbertInterstitialAD;->a(Lcom/adbert/AdbertInterstitialAD;Ljava/lang/String;)Ljava/lang/String;

    .line 180
    invoke-static {}, Lcom/adbert/a/b;->a()Lcom/adbert/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/adbert/AdbertInterstitialAD$2;->a:Lcom/adbert/AdbertInterstitialAD;

    invoke-static {v1}, Lcom/adbert/AdbertInterstitialAD;->b(Lcom/adbert/AdbertInterstitialAD;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/adbert/a/b/d;->F:Lcom/adbert/a/b/d;

    invoke-virtual {v2}, Lcom/adbert/a/b/d;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/adbert/AdbertInterstitialAD$2;->a:Lcom/adbert/AdbertInterstitialAD;

    .line 181
    invoke-static {v3}, Lcom/adbert/AdbertInterstitialAD;->c(Lcom/adbert/AdbertInterstitialAD;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/adbert/AdbertInterstitialAD$2$1;

    invoke-direct {v4, p0}, Lcom/adbert/AdbertInterstitialAD$2$1;-><init>(Lcom/adbert/AdbertInterstitialAD$2;)V

    .line 180
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/adbert/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/adbert/a/b$c;)Lcom/adbert/a/c;

    .line 187
    return-void
.end method
