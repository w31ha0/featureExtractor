.class Lcom/amazon/device/ads/AdListenerExecutorFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final adListenerExecutorConstructor:Lcom/amazon/device/ads/AdListenerExecutorFactory$AdListenerExecutorConstructor;

.field private final loggerFactory:Lcom/amazon/device/ads/MobileAdsLoggerFactory;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/amazon/device/ads/AdListenerExecutorFactory$AdListenerExecutorConstructor;

    invoke-direct {v0}, Lcom/amazon/device/ads/AdListenerExecutorFactory$AdListenerExecutorConstructor;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/AdListenerExecutorFactory;-><init>(Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/AdListenerExecutorFactory$AdListenerExecutorConstructor;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/AdListenerExecutorFactory$AdListenerExecutorConstructor;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/amazon/device/ads/AdListenerExecutorFactory;->loggerFactory:Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    .line 27
    iput-object p2, p0, Lcom/amazon/device/ads/AdListenerExecutorFactory;->adListenerExecutorConstructor:Lcom/amazon/device/ads/AdListenerExecutorFactory$AdListenerExecutorConstructor;

    .line 28
    return-void
.end method

.method private createAdExpiredCommand(Lcom/amazon/device/ads/AdListenerExecutor;)V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lcom/amazon/device/ads/AdListenerExecutorFactory$2;

    invoke-direct {v0, p0, p1}, Lcom/amazon/device/ads/AdListenerExecutorFactory$2;-><init>(Lcom/amazon/device/ads/AdListenerExecutorFactory;Lcom/amazon/device/ads/AdListenerExecutor;)V

    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/AdListenerExecutor;->setOnAdExpiredCommand(Lcom/amazon/device/ads/OnAdExpiredCommand;)V

    .line 89
    return-void
.end method

.method private createAdResizedCommand(Lcom/amazon/device/ads/AdListenerExecutor;)V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/amazon/device/ads/AdListenerExecutorFactory$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/device/ads/AdListenerExecutorFactory$1;-><init>(Lcom/amazon/device/ads/AdListenerExecutorFactory;Lcom/amazon/device/ads/AdListenerExecutor;)V

    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/AdListenerExecutor;->setOnAdResizedCommand(Lcom/amazon/device/ads/OnAdResizedCommand;)V

    .line 69
    return-void
.end method


# virtual methods
.method public createAdListenerExecutor(Lcom/amazon/device/ads/AdListener;)Lcom/amazon/device/ads/AdListenerExecutor;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/amazon/device/ads/AdListenerExecutorFactory;->loggerFactory:Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-virtual {p0, p1, v0}, Lcom/amazon/device/ads/AdListenerExecutorFactory;->createAdListenerExecutor(Lcom/amazon/device/ads/AdListener;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)Lcom/amazon/device/ads/AdListenerExecutor;

    move-result-object v0

    return-object v0
.end method

.method public createAdListenerExecutor(Lcom/amazon/device/ads/AdListener;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)Lcom/amazon/device/ads/AdListenerExecutor;
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/amazon/device/ads/AdListenerExecutorFactory;->adListenerExecutorConstructor:Lcom/amazon/device/ads/AdListenerExecutorFactory$AdListenerExecutorConstructor;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/device/ads/AdListenerExecutorFactory$AdListenerExecutorConstructor;->createAdListenerExecutor(Lcom/amazon/device/ads/AdListener;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)Lcom/amazon/device/ads/AdListenerExecutor;

    move-result-object v0

    .line 43
    instance-of v1, p1, Lcom/amazon/device/ads/ExtendedAdListener;

    if-eqz v1, :cond_0

    .line 45
    invoke-direct {p0, v0}, Lcom/amazon/device/ads/AdListenerExecutorFactory;->createAdResizedCommand(Lcom/amazon/device/ads/AdListenerExecutor;)V

    .line 46
    invoke-direct {p0, v0}, Lcom/amazon/device/ads/AdListenerExecutorFactory;->createAdExpiredCommand(Lcom/amazon/device/ads/AdListenerExecutor;)V

    .line 48
    :cond_0
    return-object v0
.end method

.method protected getLoggerFactory()Lcom/amazon/device/ads/MobileAdsLoggerFactory;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/amazon/device/ads/AdListenerExecutorFactory;->loggerFactory:Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    return-object v0
.end method
