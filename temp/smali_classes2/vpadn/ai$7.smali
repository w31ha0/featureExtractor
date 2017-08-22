.class Lvpadn/ai$7;
.super Ljava/lang/Object;
.source "VponNativeAdController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvpadn/ai;->onWebViewReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lvpadn/ai;


# direct methods
.method constructor <init>(Lvpadn/ai;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1177
    iput-object p1, p0, Lvpadn/ai$7;->b:Lvpadn/ai;

    iput-object p2, p0, Lvpadn/ai$7;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1179
    iget-object v0, p0, Lvpadn/ai$7;->b:Lvpadn/ai;

    invoke-static {v0}, Lvpadn/ai;->c(Lvpadn/ai;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lvpadn/ai$7;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvpadn/ao;

    sget-object v1, Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;->INVALID_REQUEST:Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;

    invoke-interface {v0, v1}, Lvpadn/ao;->onVponAdFailed(Lcom/vpadn/ads/VpadnAdRequest$VpadnErrorCode;)V

    .line 1180
    invoke-static {}, Lvpadn/ba;->a()Lvpadn/ba;

    move-result-object v0

    invoke-virtual {v0}, Lvpadn/ba;->d()V

    .line 1181
    return-void
.end method
