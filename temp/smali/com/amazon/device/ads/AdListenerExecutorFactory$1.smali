.class Lcom/amazon/device/ads/AdListenerExecutorFactory$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/device/ads/OnAdResizedCommand;


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/AdListenerExecutorFactory;

.field final synthetic val$adListenerExecutor:Lcom/amazon/device/ads/AdListenerExecutor;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/AdListenerExecutorFactory;Lcom/amazon/device/ads/AdListenerExecutor;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/amazon/device/ads/AdListenerExecutorFactory$1;->this$0:Lcom/amazon/device/ads/AdListenerExecutorFactory;

    iput-object p2, p0, Lcom/amazon/device/ads/AdListenerExecutorFactory$1;->val$adListenerExecutor:Lcom/amazon/device/ads/AdListenerExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdResized(Lcom/amazon/device/ads/Ad;Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 57
    new-instance v0, Lcom/amazon/device/ads/AdListenerExecutorFactory$1$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/device/ads/AdListenerExecutorFactory$1$1;-><init>(Lcom/amazon/device/ads/AdListenerExecutorFactory$1;Lcom/amazon/device/ads/Ad;Landroid/graphics/Rect;)V

    .line 66
    iget-object v1, p0, Lcom/amazon/device/ads/AdListenerExecutorFactory$1;->val$adListenerExecutor:Lcom/amazon/device/ads/AdListenerExecutor;

    invoke-virtual {v1, v0}, Lcom/amazon/device/ads/AdListenerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 67
    return-void
.end method
