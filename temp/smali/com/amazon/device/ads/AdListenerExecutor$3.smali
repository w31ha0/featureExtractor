.class Lcom/amazon/device/ads/AdListenerExecutor$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/AdListenerExecutor;

.field final synthetic val$ad:Lcom/amazon/device/ads/Ad;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/AdListenerExecutor;Lcom/amazon/device/ads/Ad;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/amazon/device/ads/AdListenerExecutor$3;->this$0:Lcom/amazon/device/ads/AdListenerExecutor;

    iput-object p2, p0, Lcom/amazon/device/ads/AdListenerExecutor$3;->val$ad:Lcom/amazon/device/ads/Ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/amazon/device/ads/AdListenerExecutor$3;->this$0:Lcom/amazon/device/ads/AdListenerExecutor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdListenerExecutor;->getAdListener()Lcom/amazon/device/ads/AdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/AdListenerExecutor$3;->val$ad:Lcom/amazon/device/ads/Ad;

    invoke-interface {v0, v1}, Lcom/amazon/device/ads/AdListener;->onAdExpanded(Lcom/amazon/device/ads/Ad;)V

    .line 80
    return-void
.end method
