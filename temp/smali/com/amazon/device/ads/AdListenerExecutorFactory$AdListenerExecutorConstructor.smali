.class Lcom/amazon/device/ads/AdListenerExecutorFactory$AdListenerExecutorConstructor;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAdListenerExecutor(Lcom/amazon/device/ads/AdListener;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)Lcom/amazon/device/ads/AdListenerExecutor;
    .locals 1

    .prologue
    .line 95
    new-instance v0, Lcom/amazon/device/ads/AdListenerExecutor;

    invoke-direct {v0, p1, p2}, Lcom/amazon/device/ads/AdListenerExecutor;-><init>(Lcom/amazon/device/ads/AdListener;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V

    return-object v0
.end method
