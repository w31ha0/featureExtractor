.class Lcom/amazon/device/ads/AdLoader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/AdLoader;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/AdLoader;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/amazon/device/ads/AdLoader$1;->this$0:Lcom/amazon/device/ads/AdLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/amazon/device/ads/AdLoader$1;->this$0:Lcom/amazon/device/ads/AdLoader;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdLoader;->fetchAd()V

    .line 103
    iget-object v0, p0, Lcom/amazon/device/ads/AdLoader$1;->this$0:Lcom/amazon/device/ads/AdLoader;

    invoke-static {v0}, Lcom/amazon/device/ads/AdLoader;->access$000(Lcom/amazon/device/ads/AdLoader;)V

    .line 104
    return-void
.end method
