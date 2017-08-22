.class Lvpadn/ah$2;
.super Ljava/lang/Object;
.source "VponInterstitialAdController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvpadn/ah;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lvpadn/ah;


# direct methods
.method constructor <init>(Lvpadn/ah;)V
    .locals 0

    .prologue
    .line 1160
    iput-object p1, p0, Lvpadn/ah$2;->a:Lvpadn/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1162
    const-string v0, "VponInterstitialAdController"

    const-string v1, "CALL onDownloadFailed():cant get video cache"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    iget-object v0, p0, Lvpadn/ah$2;->a:Lvpadn/ah;

    invoke-static {v0}, Lvpadn/ah;->a(Lvpadn/ah;)Lvpadn/ao;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1164
    iget-object v0, p0, Lvpadn/ah$2;->a:Lvpadn/ah;

    invoke-static {v0}, Lvpadn/ah;->a(Lvpadn/ah;)Lvpadn/ao;

    move-result-object v0

    sget-object v1, Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;->INTERNAL_ERROR:Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;

    invoke-interface {v0, v1}, Lvpadn/ao;->onVponAdFailed(Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;)V

    .line 1166
    :cond_0
    return-void
.end method
