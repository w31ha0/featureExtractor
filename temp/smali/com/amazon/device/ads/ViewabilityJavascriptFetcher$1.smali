.class Lcom/amazon/device/ads/ViewabilityJavascriptFetcher$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher$1;->this$0:Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher$1;->this$0:Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;

    invoke-virtual {v0}, Lcom/amazon/device/ads/ViewabilityJavascriptFetcher;->fetchJavascriptFromURLOnBackgroundThread()V

    .line 120
    return-void
.end method
