.class Lcom/amazon/device/ads/AdListenerExecutorFactory$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/amazon/device/ads/AdListenerExecutorFactory$2;

.field final synthetic val$ad:Lcom/amazon/device/ads/Ad;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/AdListenerExecutorFactory$2;Lcom/amazon/device/ads/Ad;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/amazon/device/ads/AdListenerExecutorFactory$2$1;->this$1:Lcom/amazon/device/ads/AdListenerExecutorFactory$2;

    iput-object p2, p0, Lcom/amazon/device/ads/AdListenerExecutorFactory$2$1;->val$ad:Lcom/amazon/device/ads/Ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/amazon/device/ads/AdListenerExecutorFactory$2$1;->this$1:Lcom/amazon/device/ads/AdListenerExecutorFactory$2;

    iget-object v0, v0, Lcom/amazon/device/ads/AdListenerExecutorFactory$2;->val$adListenerExecutor:Lcom/amazon/device/ads/AdListenerExecutor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdListenerExecutor;->getAdListener()Lcom/amazon/device/ads/AdListener;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/ExtendedAdListener;

    .line 83
    iget-object v1, p0, Lcom/amazon/device/ads/AdListenerExecutorFactory$2$1;->val$ad:Lcom/amazon/device/ads/Ad;

    invoke-interface {v0, v1}, Lcom/amazon/device/ads/ExtendedAdListener;->onAdExpired(Lcom/amazon/device/ads/Ad;)V

    .line 84
    return-void
.end method
