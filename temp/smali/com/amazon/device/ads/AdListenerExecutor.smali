.class Lcom/amazon/device/ads/AdListenerExecutor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private final adListener:Lcom/amazon/device/ads/AdListener;

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;

.field private onAdEventCommand:Lcom/amazon/device/ads/OnAdEventCommand;

.field private onAdExpiredCommand:Lcom/amazon/device/ads/OnAdExpiredCommand;

.field private onAdReceivedCommand:Lcom/amazon/device/ads/OnAdReceivedCommand;

.field private onAdResizedCommand:Lcom/amazon/device/ads/OnAdResizedCommand;

.field private onSpecialUrlClickedCommand:Lcom/amazon/device/ads/OnSpecialUrlClickedCommand;

.field private final threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/amazon/device/ads/AdListenerExecutor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/AdListenerExecutor;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/device/ads/AdListener;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lcom/amazon/device/ads/ThreadUtils;->getThreadRunner()Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/amazon/device/ads/AdListenerExecutor;-><init>(Lcom/amazon/device/ads/AdListener;Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V

    .line 34
    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/AdListener;Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/amazon/device/ads/AdListenerExecutor;->adListener:Lcom/amazon/device/ads/AdListener;

    .line 38
    iput-object p2, p0, Lcom/amazon/device/ads/AdListenerExecutor;->threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    .line 39
    sget-object v0, Lcom/amazon/device/ads/AdListenerExecutor;->LOGTAG:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AdListenerExecutor;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 40
    return-void
.end method


# virtual methods
.method protected execute(Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 174
    iget-object v0, p0, Lcom/amazon/device/ads/AdListenerExecutor;->threadRunner:Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;

    sget-object v1, Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;->SCHEDULE:Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;

    sget-object v2, Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;->MAIN_THREAD:Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;

    invoke-virtual {v0, p1, v1, v2}, Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;->execute(Ljava/lang/Runnable;Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;)V

    .line 175
    return-void
.end method

.method getAdListener()Lcom/amazon/device/ads/AdListener;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/amazon/device/ads/AdListenerExecutor;->adListener:Lcom/amazon/device/ads/AdListener;

    return-object v0
.end method

.method public onAdCollapsed(Lcom/amazon/device/ads/Ad;)V
    .locals 1

    .prologue
    .line 87
    new-instance v0, Lcom/amazon/device/ads/AdListenerExecutor$4;

    invoke-direct {v0, p0, p1}, Lcom/amazon/device/ads/AdListenerExecutor$4;-><init>(Lcom/amazon/device/ads/AdListenerExecutor;Lcom/amazon/device/ads/Ad;)V

    .line 95
    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/AdListenerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 96
    return-void
.end method

.method public onAdDismissed(Lcom/amazon/device/ads/Ad;)V
    .locals 1

    .prologue
    .line 100
    new-instance v0, Lcom/amazon/device/ads/AdListenerExecutor$5;

    invoke-direct {v0, p0, p1}, Lcom/amazon/device/ads/AdListenerExecutor$5;-><init>(Lcom/amazon/device/ads/AdListenerExecutor;Lcom/amazon/device/ads/Ad;)V

    .line 108
    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/AdListenerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 109
    return-void
.end method

.method public onAdEvent(Lcom/amazon/device/ads/AdEvent;)V
    .locals 3

    .prologue
    .line 162
    iget-object v0, p0, Lcom/amazon/device/ads/AdListenerExecutor;->onAdEventCommand:Lcom/amazon/device/ads/OnAdEventCommand;

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/amazon/device/ads/AdListenerExecutor;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad listener called - Ad Event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 170
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/AdListenerExecutor;->onAdEventCommand:Lcom/amazon/device/ads/OnAdEventCommand;

    invoke-interface {v0, p1}, Lcom/amazon/device/ads/OnAdEventCommand;->onAdEvent(Lcom/amazon/device/ads/AdEvent;)V

    goto :goto_0
.end method

.method public onAdExpanded(Lcom/amazon/device/ads/Ad;)V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lcom/amazon/device/ads/AdListenerExecutor$3;

    invoke-direct {v0, p0, p1}, Lcom/amazon/device/ads/AdListenerExecutor$3;-><init>(Lcom/amazon/device/ads/AdListenerExecutor;Lcom/amazon/device/ads/Ad;)V

    .line 82
    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/AdListenerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 83
    return-void
.end method

.method public onAdExpired(Lcom/amazon/device/ads/Ad;)V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/amazon/device/ads/AdListenerExecutor;->onAdExpiredCommand:Lcom/amazon/device/ads/OnAdExpiredCommand;

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/amazon/device/ads/AdListenerExecutor;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Ad listener called - Ad Expired."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/AdListenerExecutor;->onAdExpiredCommand:Lcom/amazon/device/ads/OnAdExpiredCommand;

    invoke-interface {v0, p1}, Lcom/amazon/device/ads/OnAdExpiredCommand;->onAdExpired(Lcom/amazon/device/ads/Ad;)V

    goto :goto_0
.end method

.method public onAdFailedToLoad(Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdError;)V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/amazon/device/ads/AdListenerExecutor$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/device/ads/AdListenerExecutor$2;-><init>(Lcom/amazon/device/ads/AdListenerExecutor;Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdError;)V

    .line 69
    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/AdListenerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 70
    return-void
.end method

.method public onAdLoaded(Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdProperties;)V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/amazon/device/ads/AdListenerExecutor$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/device/ads/AdListenerExecutor$1;-><init>(Lcom/amazon/device/ads/AdListenerExecutor;Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdProperties;)V

    .line 57
    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/AdListenerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 58
    return-void
.end method

.method public onAdReceived(Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdData;)Lcom/amazon/device/ads/ActionCode;
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/amazon/device/ads/AdListenerExecutor;->onAdReceivedCommand:Lcom/amazon/device/ads/OnAdReceivedCommand;

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/amazon/device/ads/AdListenerExecutor;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Ad listener called - Ad Received."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 152
    sget-object v0, Lcom/amazon/device/ads/ActionCode;->DISPLAY:Lcom/amazon/device/ads/ActionCode;

    .line 156
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/AdListenerExecutor;->onAdReceivedCommand:Lcom/amazon/device/ads/OnAdReceivedCommand;

    invoke-interface {v0, p1, p2}, Lcom/amazon/device/ads/OnAdReceivedCommand;->onAdReceived(Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdData;)Lcom/amazon/device/ads/ActionCode;

    move-result-object v0

    goto :goto_0
.end method

.method public onAdResized(Lcom/amazon/device/ads/Ad;Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/amazon/device/ads/AdListenerExecutor;->onAdResizedCommand:Lcom/amazon/device/ads/OnAdResizedCommand;

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/amazon/device/ads/AdListenerExecutor;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Ad listener called - Ad Resized."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/AdListenerExecutor;->onAdResizedCommand:Lcom/amazon/device/ads/OnAdResizedCommand;

    invoke-interface {v0, p1, p2}, Lcom/amazon/device/ads/OnAdResizedCommand;->onAdResized(Lcom/amazon/device/ads/Ad;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public onSpecialUrlClicked(Lcom/amazon/device/ads/Ad;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/amazon/device/ads/AdListenerExecutor;->onSpecialUrlClickedCommand:Lcom/amazon/device/ads/OnSpecialUrlClickedCommand;

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/amazon/device/ads/AdListenerExecutor;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Ad listener called - Special Url Clicked."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 145
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/AdListenerExecutor;->onSpecialUrlClickedCommand:Lcom/amazon/device/ads/OnSpecialUrlClickedCommand;

    invoke-interface {v0, p1, p2}, Lcom/amazon/device/ads/OnSpecialUrlClickedCommand;->onSpecialUrlClicked(Lcom/amazon/device/ads/Ad;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setOnAdEventCommand(Lcom/amazon/device/ads/OnAdEventCommand;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/amazon/device/ads/AdListenerExecutor;->onAdEventCommand:Lcom/amazon/device/ads/OnAdEventCommand;

    .line 180
    return-void
.end method

.method public setOnAdExpiredCommand(Lcom/amazon/device/ads/OnAdExpiredCommand;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/amazon/device/ads/AdListenerExecutor;->onAdExpiredCommand:Lcom/amazon/device/ads/OnAdExpiredCommand;

    .line 190
    return-void
.end method

.method public setOnAdReceivedCommand(Lcom/amazon/device/ads/OnAdReceivedCommand;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/amazon/device/ads/AdListenerExecutor;->onAdReceivedCommand:Lcom/amazon/device/ads/OnAdReceivedCommand;

    .line 200
    return-void
.end method

.method public setOnAdResizedCommand(Lcom/amazon/device/ads/OnAdResizedCommand;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/amazon/device/ads/AdListenerExecutor;->onAdResizedCommand:Lcom/amazon/device/ads/OnAdResizedCommand;

    .line 185
    return-void
.end method

.method public setOnSpecialUrlClickedCommand(Lcom/amazon/device/ads/OnSpecialUrlClickedCommand;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/amazon/device/ads/AdListenerExecutor;->onSpecialUrlClickedCommand:Lcom/amazon/device/ads/OnSpecialUrlClickedCommand;

    .line 195
    return-void
.end method
