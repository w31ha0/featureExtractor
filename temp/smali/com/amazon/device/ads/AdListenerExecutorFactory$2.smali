.class Lcom/amazon/device/ads/AdListenerExecutorFactory$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/device/ads/OnAdExpiredCommand;


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/AdListenerExecutorFactory;

.field final synthetic val$adListenerExecutor:Lcom/amazon/device/ads/AdListenerExecutor;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/AdListenerExecutorFactory;Lcom/amazon/device/ads/AdListenerExecutor;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/amazon/device/ads/AdListenerExecutorFactory$2;->this$0:Lcom/amazon/device/ads/AdListenerExecutorFactory;

    iput-object p2, p0, Lcom/amazon/device/ads/AdListenerExecutorFactory$2;->val$adListenerExecutor:Lcom/amazon/device/ads/AdListenerExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdExpired(Lcom/amazon/device/ads/Ad;)V
    .locals 2

    .prologue
    .line 77
    new-instance v0, Lcom/amazon/device/ads/AdListenerExecutorFactory$2$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/device/ads/AdListenerExecutorFactory$2$1;-><init>(Lcom/amazon/device/ads/AdListenerExecutorFactory$2;Lcom/amazon/device/ads/Ad;)V

    .line 86
    iget-object v1, p0, Lcom/amazon/device/ads/AdListenerExecutorFactory$2;->val$adListenerExecutor:Lcom/amazon/device/ads/AdListenerExecutor;

    invoke-virtual {v1, v0}, Lcom/amazon/device/ads/AdListenerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 87
    return-void
.end method
