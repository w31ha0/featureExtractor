.class Lvpadn/ah$1;
.super Ljava/lang/Object;
.source "VponInterstitialAdController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvpadn/ah;->c(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lvpadn/ah;


# direct methods
.method constructor <init>(Lvpadn/ah;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lvpadn/ah$1;->b:Lvpadn/ah;

    iput-object p2, p0, Lvpadn/ah$1;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 162
    :try_start_0
    invoke-static {}, Lvpadn/ba;->a()Lvpadn/ba;

    move-result-object v0

    invoke-virtual {v0}, Lvpadn/ba;->c()V

    .line 163
    iget-object v0, p0, Lvpadn/ah$1;->a:Ljava/lang/Object;

    check-cast v0, Lvpadn/ax;

    .line 164
    iget-object v1, p0, Lvpadn/ah$1;->b:Lvpadn/ah;

    invoke-static {v1, v0}, Lvpadn/ah;->a(Lvpadn/ah;Lvpadn/ax;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :goto_0
    return-void

    .line 165
    :catch_0
    move-exception v0

    .line 166
    const-string v1, "VponInterstitialAdController"

    const-string v2, "interstitial onVponBannerRequestReceived throw Exception"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
