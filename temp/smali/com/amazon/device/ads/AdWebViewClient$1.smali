.class Lcom/amazon/device/ads/AdWebViewClient$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/AdWebViewClient;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/AdWebViewClient;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/amazon/device/ads/AdWebViewClient$1;->this$0:Lcom/amazon/device/ads/AdWebViewClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/amazon/device/ads/AdWebViewClient$1;->this$0:Lcom/amazon/device/ads/AdWebViewClient;

    invoke-static {v0}, Lcom/amazon/device/ads/AdWebViewClient;->access$000(Lcom/amazon/device/ads/AdWebViewClient;)Lcom/amazon/device/ads/AdControlAccessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor;->reload()V

    .line 257
    return-void
.end method
