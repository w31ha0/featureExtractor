.class Lvpadn/af$16;
.super Ljava/lang/Object;
.source "VponBannerController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvpadn/af;->onWebViewReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lvpadn/af;


# direct methods
.method constructor <init>(Lvpadn/af;)V
    .locals 0

    .prologue
    .line 1320
    iput-object p1, p0, Lvpadn/af$16;->a:Lvpadn/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1322
    iget-object v0, p0, Lvpadn/af$16;->a:Lvpadn/af;

    invoke-static {v0}, Lvpadn/af;->a(Lvpadn/af;)Lvpadn/ao;

    move-result-object v0

    sget-object v1, Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;->INVALID_REQUEST:Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;

    invoke-interface {v0, v1}, Lvpadn/ao;->onVponAdFailed(Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;)V

    .line 1323
    return-void
.end method
