.class Lcom/amazon/device/ads/AdController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/AdController;

.field final synthetic val$javascript:Ljava/lang/String;

.field final synthetic val$preload:Z


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/AdController;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 1086
    iput-object p1, p0, Lcom/amazon/device/ads/AdController$2;->this$0:Lcom/amazon/device/ads/AdController;

    iput-object p2, p0, Lcom/amazon/device/ads/AdController$2;->val$javascript:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/amazon/device/ads/AdController$2;->val$preload:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1090
    iget-object v0, p0, Lcom/amazon/device/ads/AdController$2;->this$0:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getAdContainer()Lcom/amazon/device/ads/AdContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/AdController$2;->val$javascript:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/amazon/device/ads/AdController$2;->val$preload:Z

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/AdContainer;->injectJavascript(Ljava/lang/String;Z)V

    .line 1091
    return-void
.end method
