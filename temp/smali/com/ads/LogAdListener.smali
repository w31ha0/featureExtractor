.class public Lcom/ads/LogAdListener;
.super Lcom/google/android/gms/ads/AdListener;
.source "LogAdListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    .line 30
    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 2

    .prologue
    .line 64
    const-string v0, "admob_ads"

    const-string v1, "onAdClosed()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 5
    .param p1, "errorCode"    # I

    .prologue
    .line 39
    const-string v0, ""

    .line 40
    .local v0, "errorReason":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 54
    :goto_0
    const-string v1, "admob_ads"

    const-string v2, "onAdFailedToLoad(%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-void

    .line 42
    :pswitch_0
    const-string v0, "Internal error"

    .line 43
    goto :goto_0

    .line 45
    :pswitch_1
    const-string v0, "Invalid request"

    .line 46
    goto :goto_0

    .line 48
    :pswitch_2
    const-string v0, "Network Error"

    .line 49
    goto :goto_0

    .line 51
    :pswitch_3
    const-string v0, "No fill"

    goto :goto_0

    .line 40
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onAdLeftApplication()V
    .locals 2

    .prologue
    .line 69
    const-string v0, "admob_ads"

    const-string v1, "onAdLeftApplication()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void
.end method

.method public onAdLoaded()V
    .locals 2

    .prologue
    .line 34
    const-string v0, "admob_ads"

    const-string v1, "onAdLoaded()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-void
.end method

.method public onAdOpened()V
    .locals 2

    .prologue
    .line 59
    const-string v0, "admob_ads"

    const-string v1, "onAdOpened()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-void
.end method
