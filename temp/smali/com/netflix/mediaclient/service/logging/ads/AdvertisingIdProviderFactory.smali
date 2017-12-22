.class public final Lcom/netflix/mediaclient/service/logging/ads/AdvertisingIdProviderFactory;
.super Ljava/lang/Object;
.source "AdvertisingIdProviderFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_log"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/netflix/mediaclient/service/logging/ads/AdvertisingIdProvider;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertNotOnMain()Z

    .line 42
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v1

    .line 43
    invoke-virtual {v1, p0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    .line 48
    if-eqz v1, :cond_0

    .line 49
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "Not success!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :goto_0
    return-object v0

    .line 52
    :cond_0
    new-instance v1, Lcom/netflix/mediaclient/service/logging/ads/GooglePlayAdvertisingIdProvider;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/logging/ads/GooglePlayAdvertisingIdProvider;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception v1

    .line 60
    const-string/jumbo v2, "nf_log"

    const-string/jumbo v3, "Failed to create Google Play provider"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
