.class public Lcom/mopub/common/GpsHelper;
.super Ljava/lang/Object;
.source "GpsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/common/GpsHelper$FetchAdvertisingInfoTask;,
        Lcom/mopub/common/GpsHelper$GpsHelperListener;,
        Lcom/mopub/common/GpsHelper$AdvertisingInfo;
    }
.end annotation


# static fields
.field public static final ADVERTISING_ID_KEY:Ljava/lang/String; = "advertisingId"

.field public static final GOOGLE_PLAY_SUCCESS_CODE:I = 0x0

.field public static final IS_LIMIT_AD_TRACKING_ENABLED_KEY:Ljava/lang/String; = "isLimitAdTrackingEnabled"

.field private static sAdvertisingIdClientClassName:Ljava/lang/String;

.field private static sPlayServicesUtilClassName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "com.google.android.gms.common.GooglePlayServicesUtil"

    sput-object v0, Lcom/mopub/common/GpsHelper;->sPlayServicesUtilClassName:Ljava/lang/String;

    .line 21
    const-string v0, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    sput-object v0, Lcom/mopub/common/GpsHelper;->sAdvertisingIdClientClassName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/mopub/common/GpsHelper;->sAdvertisingIdClientClassName:Ljava/lang/String;

    return-object v0
.end method

.method public static fetchAdvertisingInfoAsync(Landroid/content/Context;Lcom/mopub/common/GpsHelper$GpsHelperListener;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gpsHelperListener"    # Lcom/mopub/common/GpsHelper$GpsHelperListener;

    .prologue
    .line 69
    invoke-static {p0}, Lcom/mopub/common/GpsHelper;->isPlayServicesAvailable(Landroid/content/Context;)Z

    move-result v0

    .line 70
    .local v0, "playServicesIsAvailable":Z
    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/mopub/common/GpsHelper;->isClientMetadataPopulated(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 71
    invoke-static {p0, p1}, Lcom/mopub/common/GpsHelper;->internalFetchAdvertisingInfoAsync(Landroid/content/Context;Lcom/mopub/common/GpsHelper$GpsHelperListener;)V

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    if-eqz p1, :cond_2

    .line 74
    invoke-interface {p1}, Lcom/mopub/common/GpsHelper$GpsHelperListener;->onFetchAdInfoCompleted()V

    .line 76
    :cond_2
    if-eqz v0, :cond_0

    .line 78
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/mopub/common/GpsHelper;->internalFetchAdvertisingInfoAsync(Landroid/content/Context;Lcom/mopub/common/GpsHelper$GpsHelperListener;)V

    goto :goto_0
.end method

.method public static fetchAdvertisingInfoSync(Landroid/content/Context;)Lcom/mopub/common/GpsHelper$AdvertisingInfo;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 85
    if-nez p0, :cond_0

    .line 103
    :goto_0
    return-object v5

    .line 88
    :cond_0
    const/4 v0, 0x0

    .line 90
    .local v0, "adInfo":Ljava/lang/Object;
    const/4 v6, 0x0

    :try_start_0
    const-string v7, "getAdvertisingIdInfo"

    invoke-static {v6, v7}, Lcom/mopub/common/factories/MethodBuilderFactory;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v6

    sget-object v7, Lcom/mopub/common/GpsHelper;->sAdvertisingIdClientClassName:Ljava/lang/String;

    .line 91
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/mopub/common/util/Reflection$MethodBuilder;->setStatic(Ljava/lang/Class;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v6

    const-class v7, Landroid/content/Context;

    .line 92
    invoke-virtual {v6, v7, p0}, Lcom/mopub/common/util/Reflection$MethodBuilder;->addParam(Ljava/lang/Class;Ljava/lang/Object;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v4

    .line 94
    .local v4, "methodBuilder":Lcom/mopub/common/util/Reflection$MethodBuilder;
    invoke-virtual {v4}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 100
    invoke-static {v0, v5}, Lcom/mopub/common/GpsHelper;->reflectedGetAdvertisingId(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "advertisingId":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-static {v0, v5}, Lcom/mopub/common/GpsHelper;->reflectedIsLimitAdTrackingEnabled(Ljava/lang/Object;Z)Z

    move-result v3

    .line 103
    .local v3, "isLimitAdTrackingEnabled":Z
    new-instance v5, Lcom/mopub/common/GpsHelper$AdvertisingInfo;

    invoke-direct {v5, v1, v3}, Lcom/mopub/common/GpsHelper$AdvertisingInfo;-><init>(Ljava/lang/String;Z)V

    goto :goto_0

    .line 95
    .end local v1    # "advertisingId":Ljava/lang/String;
    .end local v3    # "isLimitAdTrackingEnabled":Z
    .end local v4    # "methodBuilder":Lcom/mopub/common/util/Reflection$MethodBuilder;
    :catch_0
    move-exception v2

    .line 96
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "Unable to obtain Google AdvertisingIdClient.Info via reflection."

    invoke-static {v6}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static internalFetchAdvertisingInfoAsync(Landroid/content/Context;Lcom/mopub/common/GpsHelper$GpsHelperListener;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gpsHelperListener"    # Lcom/mopub/common/GpsHelper$GpsHelperListener;

    .prologue
    .line 107
    sget-object v1, Lcom/mopub/common/GpsHelper;->sAdvertisingIdClientClassName:Ljava/lang/String;

    invoke-static {v1}, Lcom/mopub/common/util/Reflection;->classFound(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 108
    if-eqz p1, :cond_0

    .line 109
    invoke-interface {p1}, Lcom/mopub/common/GpsHelper$GpsHelperListener;->onFetchAdInfoCompleted()V

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    :try_start_0
    new-instance v1, Lcom/mopub/common/GpsHelper$FetchAdvertisingInfoTask;

    invoke-direct {v1, p0, p1}, Lcom/mopub/common/GpsHelper$FetchAdvertisingInfoTask;-><init>(Landroid/content/Context;Lcom/mopub/common/GpsHelper$GpsHelperListener;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-static {v1, v2}, Lcom/mopub/common/util/AsyncTasks;->safeExecuteOnExecutor(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "exception":Ljava/lang/Exception;
    const-string v1, "Error executing FetchAdvertisingInfoTask"

    invoke-static {v1, v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 119
    if-eqz p1, :cond_0

    .line 120
    invoke-interface {p1}, Lcom/mopub/common/GpsHelper$GpsHelperListener;->onFetchAdInfoCompleted()V

    goto :goto_0
.end method

.method static isClientMetadataPopulated(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    invoke-static {p0}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->isAdvertisingInfoSet()Z

    move-result v0

    return v0
.end method

.method public static isLimitAdTrackingEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 52
    const/4 v0, 0x0

    .line 53
    .local v0, "defaultValue":Z
    invoke-static {p0}, Lcom/mopub/common/GpsHelper;->isPlayServicesAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 54
    invoke-static {p0}, Lcom/mopub/common/SharedPreferencesHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "isLimitAdTrackingEnabled"

    .line 55
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 57
    :cond_0
    return v1
.end method

.method public static isPlayServicesAvailable(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 39
    const/4 v4, 0x0

    :try_start_0
    const-string v5, "isGooglePlayServicesAvailable"

    invoke-static {v4, v5}, Lcom/mopub/common/factories/MethodBuilderFactory;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v4

    sget-object v5, Lcom/mopub/common/GpsHelper;->sPlayServicesUtilClassName:Ljava/lang/String;

    .line 40
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mopub/common/util/Reflection$MethodBuilder;->setStatic(Ljava/lang/Class;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v4

    const-class v5, Landroid/content/Context;

    .line 41
    invoke-virtual {v4, v5, p0}, Lcom/mopub/common/util/Reflection$MethodBuilder;->addParam(Ljava/lang/Class;Ljava/lang/Object;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v1

    .line 43
    .local v1, "methodBuilder":Lcom/mopub/common/util/Reflection$MethodBuilder;
    invoke-virtual {v1}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;

    move-result-object v2

    .line 45
    .local v2, "result":Ljava/lang/Object;
    if-eqz v2, :cond_0

    check-cast v2, Ljava/lang/Integer;

    .end local v2    # "result":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x1

    .line 47
    .end local v1    # "methodBuilder":Lcom/mopub/common/util/Reflection$MethodBuilder;
    :cond_0
    :goto_0
    return v3

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "exception":Ljava/lang/Exception;
    goto :goto_0
.end method

.method static reflectedGetAdvertisingId(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "adInfo"    # Ljava/lang/Object;
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 182
    :try_start_0
    const-string v1, "getId"

    invoke-static {p0, v1}, Lcom/mopub/common/factories/MethodBuilderFactory;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :goto_0
    return-object v1

    .line 183
    :catch_0
    move-exception v0

    .local v0, "exception":Ljava/lang/Exception;
    move-object v1, p1

    .line 184
    goto :goto_0
.end method

.method static reflectedIsLimitAdTrackingEnabled(Ljava/lang/Object;Z)Z
    .locals 3
    .param p0, "adInfo"    # Ljava/lang/Object;
    .param p1, "defaultValue"    # Z

    .prologue
    .line 190
    :try_start_0
    const-string v2, "isLimitAdTrackingEnabled"

    invoke-static {p0, v2}, Lcom/mopub/common/factories/MethodBuilderFactory;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 191
    .local v1, "result":Ljava/lang/Boolean;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 193
    .end local v1    # "result":Ljava/lang/Boolean;
    .end local p1    # "defaultValue":Z
    :cond_0
    :goto_0
    return p1

    .line 192
    .restart local p1    # "defaultValue":Z
    :catch_0
    move-exception v0

    .line 193
    .local v0, "exception":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static setClassNamesForTesting()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 202
    const-string v0, "java.lang.Class"

    .line 203
    .local v0, "className":Ljava/lang/String;
    sput-object v0, Lcom/mopub/common/GpsHelper;->sPlayServicesUtilClassName:Ljava/lang/String;

    .line 204
    sput-object v0, Lcom/mopub/common/GpsHelper;->sAdvertisingIdClientClassName:Ljava/lang/String;

    .line 205
    return-void
.end method

.method static updateClientMetadata(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "adInfo"    # Ljava/lang/Object;

    .prologue
    .line 168
    const/4 v3, 0x0

    invoke-static {p1, v3}, Lcom/mopub/common/GpsHelper;->reflectedGetAdvertisingId(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "advertisingId":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-static {p1, v3}, Lcom/mopub/common/GpsHelper;->reflectedIsLimitAdTrackingEnabled(Ljava/lang/Object;Z)Z

    move-result v2

    .line 176
    .local v2, "isLimitAdTrackingEnabled":Z
    invoke-static {p0}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object v1

    .line 177
    .local v1, "clientMetadata":Lcom/mopub/common/ClientMetadata;
    invoke-virtual {v1, v0, v2}, Lcom/mopub/common/ClientMetadata;->setAdvertisingInfo(Ljava/lang/String;Z)V

    .line 178
    return-void
.end method
