.class public Lcom/amazon/device/ads/AdActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field static final ADAPTER_KEY:Ljava/lang/String; = "adapter"

.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private activityAdapterFactory:Lcom/amazon/device/ads/AdActivity$ActivityAdapterFactory;

.field private adapter:Lcom/amazon/device/ads/AdActivity$AdActivityAdapter;

.field private amazonAdRegistration:Lcom/amazon/device/ads/AdRegistrationExecutor;

.field private logger:Lcom/amazon/device/ads/MobileAdsLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/amazon/device/ads/AdActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/AdActivity;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 30
    new-instance v0, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->getAmazonAdRegistrationExecutor()Lcom/amazon/device/ads/AdRegistrationExecutor;

    move-result-object v1

    new-instance v2, Lcom/amazon/device/ads/AdActivity$ActivityAdapterFactory;

    new-instance v3, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v3}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    invoke-direct {v2, v3}, Lcom/amazon/device/ads/AdActivity$ActivityAdapterFactory;-><init>(Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/device/ads/AdActivity;-><init>(Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/AdRegistrationExecutor;Lcom/amazon/device/ads/AdActivity$ActivityAdapterFactory;)V

    .line 31
    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/AdRegistrationExecutor;Lcom/amazon/device/ads/AdActivity$ActivityAdapterFactory;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    sget-object v0, Lcom/amazon/device/ads/AdActivity;->LOGTAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AdActivity;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 35
    iput-object p2, p0, Lcom/amazon/device/ads/AdActivity;->amazonAdRegistration:Lcom/amazon/device/ads/AdRegistrationExecutor;

    .line 36
    iput-object p3, p0, Lcom/amazon/device/ads/AdActivity;->activityAdapterFactory:Lcom/amazon/device/ads/AdActivity$ActivityAdapterFactory;

    .line 37
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/amazon/device/ads/AdActivity;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method

.method private initializeSdk()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/amazon/device/ads/AdActivity;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/AdActivity;->setLoggerFactory(Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/AdActivity;->amazonAdRegistration:Lcom/amazon/device/ads/AdRegistrationExecutor;

    if-nez v0, :cond_1

    .line 84
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->getAmazonAdRegistrationExecutor()Lcom/amazon/device/ads/AdRegistrationExecutor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/AdActivity;->setAmazonAdRegistrationExecutor(Lcom/amazon/device/ads/AdRegistrationExecutor;)V

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/amazon/device/ads/AdActivity;->activityAdapterFactory:Lcom/amazon/device/ads/AdActivity$ActivityAdapterFactory;

    if-nez v0, :cond_2

    .line 88
    new-instance v0, Lcom/amazon/device/ads/AdActivity$ActivityAdapterFactory;

    new-instance v1, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    invoke-direct {v0, v1}, Lcom/amazon/device/ads/AdActivity$ActivityAdapterFactory;-><init>(Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/AdActivity;->setActivityAdapterFactory(Lcom/amazon/device/ads/AdActivity$ActivityAdapterFactory;)V

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/amazon/device/ads/AdActivity;->amazonAdRegistration:Lcom/amazon/device/ads/AdRegistrationExecutor;

    invoke-virtual {p0}, Lcom/amazon/device/ads/AdActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdRegistrationExecutor;->initializeAds(Landroid/content/Context;)V

    .line 91
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/amazon/device/ads/AdActivity;->adapter:Lcom/amazon/device/ads/AdActivity$AdActivityAdapter;

    invoke-interface {v0}, Lcom/amazon/device/ads/AdActivity$AdActivityAdapter;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 169
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 136
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 137
    iget-object v0, p0, Lcom/amazon/device/ads/AdActivity;->adapter:Lcom/amazon/device/ads/AdActivity$AdActivityAdapter;

    invoke-interface {v0, p1}, Lcom/amazon/device/ads/AdActivity$AdActivityAdapter;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 138
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/amazon/device/ads/AdActivity;->initializeSdk()V

    .line 45
    iget-object v0, p0, Lcom/amazon/device/ads/AdActivity;->activityAdapterFactory:Lcom/amazon/device/ads/AdActivity$ActivityAdapterFactory;

    invoke-virtual {p0}, Lcom/amazon/device/ads/AdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdActivity$ActivityAdapterFactory;->createAdapter(Landroid/content/Intent;)Lcom/amazon/device/ads/AdActivity$AdActivityAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AdActivity;->adapter:Lcom/amazon/device/ads/AdActivity$AdActivityAdapter;

    .line 46
    iget-object v0, p0, Lcom/amazon/device/ads/AdActivity;->adapter:Lcom/amazon/device/ads/AdActivity$AdActivityAdapter;

    if-nez v0, :cond_0

    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdActivity;->finish()V

    .line 58
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/AdActivity;->adapter:Lcom/amazon/device/ads/AdActivity$AdActivityAdapter;

    invoke-interface {v0, p0}, Lcom/amazon/device/ads/AdActivity$AdActivityAdapter;->setActivity(Landroid/app/Activity;)V

    .line 53
    iget-object v0, p0, Lcom/amazon/device/ads/AdActivity;->adapter:Lcom/amazon/device/ads/AdActivity$AdActivityAdapter;

    invoke-interface {v0}, Lcom/amazon/device/ads/AdActivity$AdActivityAdapter;->preOnCreate()V

    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    iget-object v0, p0, Lcom/amazon/device/ads/AdActivity;->adapter:Lcom/amazon/device/ads/AdActivity$AdActivityAdapter;

    invoke-interface {v0}, Lcom/amazon/device/ads/AdActivity$AdActivityAdapter;->onCreate()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/amazon/device/ads/AdActivity;->adapter:Lcom/amazon/device/ads/AdActivity$AdActivityAdapter;

    invoke-interface {v0}, Lcom/amazon/device/ads/AdActivity$AdActivityAdapter;->onDestroy()V

    .line 130
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 131
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 108
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 109
    iget-object v0, p0, Lcom/amazon/device/ads/AdActivity;->adapter:Lcom/amazon/device/ads/AdActivity$AdActivityAdapter;

    invoke-interface {v0}, Lcom/amazon/device/ads/AdActivity$AdActivityAdapter;->onPause()V

    .line 110
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 115
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 116
    iget-object v0, p0, Lcom/amazon/device/ads/AdActivity;->adapter:Lcom/amazon/device/ads/AdActivity$AdActivityAdapter;

    invoke-interface {v0}, Lcom/amazon/device/ads/AdActivity$AdActivityAdapter;->onResume()V

    .line 117
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/amazon/device/ads/AdActivity;->adapter:Lcom/amazon/device/ads/AdActivity$AdActivityAdapter;

    invoke-interface {v0}, Lcom/amazon/device/ads/AdActivity$AdActivityAdapter;->onStop()V

    .line 123
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 124
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 68
    if-eqz p1, :cond_0

    .line 70
    iget-object v0, p0, Lcom/amazon/device/ads/AdActivity;->adapter:Lcom/amazon/device/ads/AdActivity$AdActivityAdapter;

    invoke-interface {v0}, Lcom/amazon/device/ads/AdActivity$AdActivityAdapter;->onWindowFocusChanged()V

    .line 72
    :cond_0
    return-void
.end method

.method setActivityAdapterFactory(Lcom/amazon/device/ads/AdActivity$ActivityAdapterFactory;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/amazon/device/ads/AdActivity;->activityAdapterFactory:Lcom/amazon/device/ads/AdActivity$ActivityAdapterFactory;

    .line 103
    return-void
.end method

.method setAmazonAdRegistrationExecutor(Lcom/amazon/device/ads/AdRegistrationExecutor;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/amazon/device/ads/AdActivity;->amazonAdRegistration:Lcom/amazon/device/ads/AdRegistrationExecutor;

    .line 99
    return-void
.end method

.method setLoggerFactory(Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/amazon/device/ads/AdActivity;->LOGTAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AdActivity;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 95
    return-void
.end method
