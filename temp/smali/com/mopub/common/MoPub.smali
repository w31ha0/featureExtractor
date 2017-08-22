.class public Lcom/mopub/common/MoPub;
.super Ljava/lang/Object;
.source "MoPub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/common/MoPub$BrowserAgent;,
        Lcom/mopub/common/MoPub$LocationAwareness;
    }
.end annotation


# static fields
.field private static final DEFAULT_LOCATION_PRECISION:I = 0x6

.field private static final DEFAULT_LOCATION_REFRESH_TIME_MILLIS:J = 0xea60L

.field private static final MOPUB_REWARDED_VIDEOS:Ljava/lang/String; = "com.mopub.mobileads.MoPubRewardedVideos"

.field private static final MOPUB_REWARDED_VIDEO_LISTENER:Ljava/lang/String; = "com.mopub.mobileads.MoPubRewardedVideoListener"

.field private static final MOPUB_REWARDED_VIDEO_MANAGER:Ljava/lang/String; = "com.mopub.mobileads.MoPubRewardedVideoManager"

.field private static final MOPUB_REWARDED_VIDEO_MANAGER_REQUEST_PARAMETERS:Ljava/lang/String; = "com.mopub.mobileads.MoPubRewardedVideoManager$RequestParameters"

.field public static final SDK_VERSION:Ljava/lang/String; = "4.15.0"

.field private static volatile sBrowserAgent:Lcom/mopub/common/MoPub$BrowserAgent;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private static volatile sIsBrowserAgentOverriddenByClient:Z

.field private static volatile sLocationAwareness:Lcom/mopub/common/MoPub$LocationAwareness;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private static volatile sLocationPrecision:I

.field private static volatile sMinimumLocationRefreshTimeMillis:J

.field private static sSearchedForUpdateActivityMethod:Z

.field private static sUpdateActivityMethod:Ljava/lang/reflect/Method;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 61
    sget-object v0, Lcom/mopub/common/MoPub$LocationAwareness;->NORMAL:Lcom/mopub/common/MoPub$LocationAwareness;

    sput-object v0, Lcom/mopub/common/MoPub;->sLocationAwareness:Lcom/mopub/common/MoPub$LocationAwareness;

    .line 62
    const/4 v0, 0x6

    sput v0, Lcom/mopub/common/MoPub;->sLocationPrecision:I

    .line 63
    const-wide/32 v0, 0xea60

    sput-wide v0, Lcom/mopub/common/MoPub;->sMinimumLocationRefreshTimeMillis:J

    .line 64
    sget-object v0, Lcom/mopub/common/MoPub$BrowserAgent;->IN_APP:Lcom/mopub/common/MoPub$BrowserAgent;

    sput-object v0, Lcom/mopub/common/MoPub;->sBrowserAgent:Lcom/mopub/common/MoPub$BrowserAgent;

    .line 65
    sput-boolean v2, Lcom/mopub/common/MoPub;->sIsBrowserAgentOverriddenByClient:Z

    .line 66
    sput-boolean v2, Lcom/mopub/common/MoPub;->sSearchedForUpdateActivityMethod:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBrowserAgent()Lcom/mopub/common/MoPub$BrowserAgent;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 123
    sget-object v0, Lcom/mopub/common/MoPub;->sBrowserAgent:Lcom/mopub/common/MoPub$BrowserAgent;

    invoke-static {v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 125
    sget-object v0, Lcom/mopub/common/MoPub;->sBrowserAgent:Lcom/mopub/common/MoPub$BrowserAgent;

    return-object v0
.end method

.method public static getLocationAwareness()Lcom/mopub/common/MoPub$LocationAwareness;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 71
    sget-object v0, Lcom/mopub/common/MoPub;->sLocationAwareness:Lcom/mopub/common/MoPub$LocationAwareness;

    invoke-static {v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 73
    sget-object v0, Lcom/mopub/common/MoPub;->sLocationAwareness:Lcom/mopub/common/MoPub$LocationAwareness;

    return-object v0
.end method

.method public static getLocationPrecision()I
    .locals 1

    .prologue
    .line 83
    sget v0, Lcom/mopub/common/MoPub;->sLocationPrecision:I

    return v0
.end method

.method public static getMinimumLocationRefreshTimeMillis()J
    .locals 2

    .prologue
    .line 100
    sget-wide v0, Lcom/mopub/common/MoPub;->sMinimumLocationRefreshTimeMillis:J

    return-wide v0
.end method

.method public static hasRewardedVideo(Ljava/lang/String;)Z
    .locals 4
    .param p0, "adUnitId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 295
    :try_start_0
    new-instance v1, Lcom/mopub/common/util/Reflection$MethodBuilder;

    const/4 v2, 0x0

    const-string v3, "hasRewardedVideo"

    invoke-direct {v1, v2, v3}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "com.mopub.mobileads.MoPubRewardedVideos"

    .line 296
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mopub/common/util/Reflection$MethodBuilder;->setStatic(Ljava/lang/Class;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v1

    const-class v2, Ljava/lang/String;

    .line 297
    invoke-virtual {v1, v2, p0}, Lcom/mopub/common/util/Reflection$MethodBuilder;->addParam(Ljava/lang/Class;Ljava/lang/Object;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v1

    .line 298
    invoke-virtual {v1}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 295
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v1

    .line 306
    :goto_0
    return v1

    .line 299
    :catch_0
    move-exception v0

    .line 300
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v1, "hasRewardedVideo was called without the rewarded video module"

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    .line 306
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 301
    :catch_1
    move-exception v0

    .line 302
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "hasRewardedVideo was called without the rewarded video module"

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    goto :goto_1

    .line 303
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .line 304
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Error while checking rewarded video"

    invoke-static {v1, v0}, Lcom/mopub/common/logging/MoPubLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static varargs initializeRewardedVideo(Landroid/app/Activity;[Lcom/mopub/common/MediationSettings;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "mediationSettings"    # [Lcom/mopub/common/MediationSettings;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 191
    :try_start_0
    new-instance v1, Lcom/mopub/common/util/Reflection$MethodBuilder;

    const/4 v2, 0x0

    const-string v3, "initializeRewardedVideo"

    invoke-direct {v1, v2, v3}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "com.mopub.mobileads.MoPubRewardedVideos"

    .line 192
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mopub/common/util/Reflection$MethodBuilder;->setStatic(Ljava/lang/Class;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v1

    const-class v2, Landroid/app/Activity;

    .line 193
    invoke-virtual {v1, v2, p0}, Lcom/mopub/common/util/Reflection$MethodBuilder;->addParam(Ljava/lang/Class;Ljava/lang/Object;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v1

    const-class v2, [Lcom/mopub/common/MediationSettings;

    .line 194
    invoke-virtual {v1, v2, p1}, Lcom/mopub/common/util/Reflection$MethodBuilder;->addParam(Ljava/lang/Class;Ljava/lang/Object;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v1

    .line 195
    invoke-virtual {v1}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 203
    :goto_0
    return-void

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v1, "initializeRewardedVideo was called without the rewarded video module"

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 198
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "initializeRewardedVideo was called without the rewarded video module"

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 200
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Error while initializing rewarded video"

    invoke-static {v1, v0}, Lcom/mopub/common/logging/MoPubLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static isBrowserAgentOverriddenByClient()Z
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 130
    sget-boolean v0, Lcom/mopub/common/MoPub;->sIsBrowserAgentOverriddenByClient:Z

    return v0
.end method

.method public static varargs loadRewardedVideo(Ljava/lang/String;Ljava/lang/Object;[Lcom/mopub/common/MediationSettings;)V
    .locals 5
    .param p0, "adUnitId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "requestParameters"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "mediationSettings"    # [Lcom/mopub/common/MediationSettings;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 272
    :try_start_0
    const-string v2, "com.mopub.mobileads.MoPubRewardedVideoManager$RequestParameters"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 274
    .local v1, "requestParametersClass":Ljava/lang/Class;
    new-instance v2, Lcom/mopub/common/util/Reflection$MethodBuilder;

    const/4 v3, 0x0

    const-string v4, "loadRewardedVideo"

    invoke-direct {v2, v3, v4}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "com.mopub.mobileads.MoPubRewardedVideos"

    .line 275
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mopub/common/util/Reflection$MethodBuilder;->setStatic(Ljava/lang/Class;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    .line 276
    invoke-virtual {v2, v3, p0}, Lcom/mopub/common/util/Reflection$MethodBuilder;->addParam(Ljava/lang/Class;Ljava/lang/Object;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v2

    .line 277
    invoke-virtual {v2, v1, p1}, Lcom/mopub/common/util/Reflection$MethodBuilder;->addParam(Ljava/lang/Class;Ljava/lang/Object;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v2

    const-class v3, [Lcom/mopub/common/MediationSettings;

    .line 278
    invoke-virtual {v2, v3, p2}, Lcom/mopub/common/util/Reflection$MethodBuilder;->addParam(Ljava/lang/Class;Ljava/lang/Object;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v2

    .line 279
    invoke-virtual {v2}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 287
    .end local v1    # "requestParametersClass":Ljava/lang/Class;
    :goto_0
    return-void

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v2, "loadRewardedVideo was called without the rewarded video module"

    invoke-static {v2}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 282
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 283
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v2, "loadRewardedVideo was called without the rewarded video module"

    invoke-static {v2}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 284
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .line 285
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Error while loading rewarded video"

    invoke-static {v2, v0}, Lcom/mopub/common/logging/MoPubLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static varargs loadRewardedVideo(Ljava/lang/String;[Lcom/mopub/common/MediationSettings;)V
    .locals 1
    .param p0, "adUnitId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "mediationSettings"    # [Lcom/mopub/common/MediationSettings;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 261
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/mopub/common/MoPub;->loadRewardedVideo(Ljava/lang/String;Ljava/lang/Object;[Lcom/mopub/common/MediationSettings;)V

    .line 262
    return-void
.end method

.method public static onBackPressed(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 175
    invoke-static {p0}, Lcom/mopub/common/MoPubLifecycleManager;->getInstance(Landroid/app/Activity;)Lcom/mopub/common/MoPubLifecycleManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mopub/common/MoPubLifecycleManager;->onBackPressed(Landroid/app/Activity;)V

    .line 176
    return-void
.end method

.method public static onCreate(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 143
    invoke-static {p0}, Lcom/mopub/common/MoPubLifecycleManager;->getInstance(Landroid/app/Activity;)Lcom/mopub/common/MoPubLifecycleManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mopub/common/MoPubLifecycleManager;->onCreate(Landroid/app/Activity;)V

    .line 144
    invoke-static {p0}, Lcom/mopub/common/MoPub;->updateActivity(Landroid/app/Activity;)V

    .line 145
    return-void
.end method

.method public static onDestroy(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 171
    invoke-static {p0}, Lcom/mopub/common/MoPubLifecycleManager;->getInstance(Landroid/app/Activity;)Lcom/mopub/common/MoPubLifecycleManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mopub/common/MoPubLifecycleManager;->onDestroy(Landroid/app/Activity;)V

    .line 172
    return-void
.end method

.method public static onPause(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 153
    invoke-static {p0}, Lcom/mopub/common/MoPubLifecycleManager;->getInstance(Landroid/app/Activity;)Lcom/mopub/common/MoPubLifecycleManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mopub/common/MoPubLifecycleManager;->onPause(Landroid/app/Activity;)V

    .line 154
    return-void
.end method

.method public static onRestart(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 162
    invoke-static {p0}, Lcom/mopub/common/MoPubLifecycleManager;->getInstance(Landroid/app/Activity;)Lcom/mopub/common/MoPubLifecycleManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mopub/common/MoPubLifecycleManager;->onRestart(Landroid/app/Activity;)V

    .line 163
    invoke-static {p0}, Lcom/mopub/common/MoPub;->updateActivity(Landroid/app/Activity;)V

    .line 164
    return-void
.end method

.method public static onResume(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 157
    invoke-static {p0}, Lcom/mopub/common/MoPubLifecycleManager;->getInstance(Landroid/app/Activity;)Lcom/mopub/common/MoPubLifecycleManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mopub/common/MoPubLifecycleManager;->onResume(Landroid/app/Activity;)V

    .line 158
    invoke-static {p0}, Lcom/mopub/common/MoPub;->updateActivity(Landroid/app/Activity;)V

    .line 159
    return-void
.end method

.method public static onStart(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 148
    invoke-static {p0}, Lcom/mopub/common/MoPubLifecycleManager;->getInstance(Landroid/app/Activity;)Lcom/mopub/common/MoPubLifecycleManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mopub/common/MoPubLifecycleManager;->onStart(Landroid/app/Activity;)V

    .line 149
    invoke-static {p0}, Lcom/mopub/common/MoPub;->updateActivity(Landroid/app/Activity;)V

    .line 150
    return-void
.end method

.method public static onStop(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 167
    invoke-static {p0}, Lcom/mopub/common/MoPubLifecycleManager;->getInstance(Landroid/app/Activity;)Lcom/mopub/common/MoPubLifecycleManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mopub/common/MoPubLifecycleManager;->onStop(Landroid/app/Activity;)V

    .line 168
    return-void
.end method

.method public static resetBrowserAgent()V
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 136
    sget-object v0, Lcom/mopub/common/MoPub$BrowserAgent;->IN_APP:Lcom/mopub/common/MoPub$BrowserAgent;

    sput-object v0, Lcom/mopub/common/MoPub;->sBrowserAgent:Lcom/mopub/common/MoPub$BrowserAgent;

    .line 137
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mopub/common/MoPub;->sIsBrowserAgentOverriddenByClient:Z

    .line 138
    return-void
.end method

.method public static setBrowserAgent(Lcom/mopub/common/MoPub$BrowserAgent;)V
    .locals 1
    .param p0, "browserAgent"    # Lcom/mopub/common/MoPub$BrowserAgent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 104
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 106
    sput-object p0, Lcom/mopub/common/MoPub;->sBrowserAgent:Lcom/mopub/common/MoPub$BrowserAgent;

    .line 107
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mopub/common/MoPub;->sIsBrowserAgentOverriddenByClient:Z

    .line 108
    return-void
.end method

.method public static setBrowserAgentFromAdServer(Lcom/mopub/common/MoPub$BrowserAgent;)V
    .locals 2
    .param p0, "adServerBrowserAgent"    # Lcom/mopub/common/MoPub$BrowserAgent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 112
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 114
    sget-boolean v0, Lcom/mopub/common/MoPub;->sIsBrowserAgentOverriddenByClient:Z

    if-eqz v0, :cond_0

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Browser agent already overridden by client with value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/mopub/common/MoPub;->sBrowserAgent:Lcom/mopub/common/MoPub$BrowserAgent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    sput-object p0, Lcom/mopub/common/MoPub;->sBrowserAgent:Lcom/mopub/common/MoPub$BrowserAgent;

    goto :goto_0
.end method

.method public static setLocationAwareness(Lcom/mopub/common/MoPub$LocationAwareness;)V
    .locals 0
    .param p0, "locationAwareness"    # Lcom/mopub/common/MoPub$LocationAwareness;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 77
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 79
    sput-object p0, Lcom/mopub/common/MoPub;->sLocationAwareness:Lcom/mopub/common/MoPub$LocationAwareness;

    .line 80
    return-void
.end method

.method public static setLocationPrecision(I)V
    .locals 2
    .param p0, "precision"    # I

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x6

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, Lcom/mopub/common/MoPub;->sLocationPrecision:I

    .line 92
    return-void
.end method

.method public static setMinimumLocationRefreshTimeMillis(J)V
    .locals 0
    .param p0, "minimumLocationRefreshTimeMillis"    # J

    .prologue
    .line 96
    sput-wide p0, Lcom/mopub/common/MoPub;->sMinimumLocationRefreshTimeMillis:J

    .line 97
    return-void
.end method

.method public static setRewardedVideoListener(Ljava/lang/Object;)V
    .locals 5
    .param p0, "listener"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 240
    :try_start_0
    const-string v2, "com.mopub.mobileads.MoPubRewardedVideoListener"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 242
    .local v1, "moPubRewardedVideoListenerClass":Ljava/lang/Class;
    new-instance v2, Lcom/mopub/common/util/Reflection$MethodBuilder;

    const/4 v3, 0x0

    const-string v4, "setRewardedVideoListener"

    invoke-direct {v2, v3, v4}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "com.mopub.mobileads.MoPubRewardedVideos"

    .line 243
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mopub/common/util/Reflection$MethodBuilder;->setStatic(Ljava/lang/Class;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v2

    .line 244
    invoke-virtual {v2, v1, p0}, Lcom/mopub/common/util/Reflection$MethodBuilder;->addParam(Ljava/lang/Class;Ljava/lang/Object;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v2

    .line 245
    invoke-virtual {v2}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 253
    .end local v1    # "moPubRewardedVideoListenerClass":Ljava/lang/Class;
    :goto_0
    return-void

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v2, "setRewardedVideoListener was called without the rewarded video module"

    invoke-static {v2}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 248
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 249
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v2, "setRewardedVideoListener was called without the rewarded video module"

    invoke-static {v2}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 250
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .line 251
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Error while setting rewarded video listener"

    invoke-static {v2, v0}, Lcom/mopub/common/logging/MoPubLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static showRewardedVideo(Ljava/lang/String;)V
    .locals 4
    .param p0, "adUnitId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 315
    :try_start_0
    new-instance v1, Lcom/mopub/common/util/Reflection$MethodBuilder;

    const/4 v2, 0x0

    const-string v3, "showRewardedVideo"

    invoke-direct {v1, v2, v3}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "com.mopub.mobileads.MoPubRewardedVideos"

    .line 316
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mopub/common/util/Reflection$MethodBuilder;->setStatic(Ljava/lang/Class;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v1

    const-class v2, Ljava/lang/String;

    .line 317
    invoke-virtual {v1, v2, p0}, Lcom/mopub/common/util/Reflection$MethodBuilder;->addParam(Ljava/lang/Class;Ljava/lang/Object;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v1

    .line 318
    invoke-virtual {v1}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 326
    :goto_0
    return-void

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v1, "showRewardedVideo was called without the rewarded video module"

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 321
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 322
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "showRewardedVideo was called without the rewarded video module"

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 323
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .line 324
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Error while showing rewarded video"

    invoke-static {v1, v0}, Lcom/mopub/common/logging/MoPubLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static updateActivity(Landroid/app/Activity;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 207
    sget-boolean v2, Lcom/mopub/common/MoPub;->sSearchedForUpdateActivityMethod:Z

    if-nez v2, :cond_0

    .line 208
    sput-boolean v3, Lcom/mopub/common/MoPub;->sSearchedForUpdateActivityMethod:Z

    .line 210
    :try_start_0
    const-string v2, "com.mopub.mobileads.MoPubRewardedVideoManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 212
    .local v1, "moPubRewardedVideoManagerClass":Ljava/lang/Class;
    const-string v2, "updateActivity"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/app/Activity;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/mopub/common/util/Reflection;->getDeclaredMethodWithTraversal(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/mopub/common/MoPub;->sUpdateActivityMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2

    .line 221
    .end local v1    # "moPubRewardedVideoManagerClass":Ljava/lang/Class;
    :cond_0
    :goto_0
    sget-object v2, Lcom/mopub/common/MoPub;->sUpdateActivityMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1

    .line 223
    :try_start_1
    sget-object v2, Lcom/mopub/common/MoPub;->sUpdateActivityMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    .line 232
    :cond_1
    :goto_1
    return-void

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "Error while attempting to access the update activity method - this should not have happened"

    invoke-static {v2, v0}, Lcom/mopub/common/logging/MoPubLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 227
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 228
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v2, "Error while attempting to access the update activity method - this should not have happened"

    invoke-static {v2, v0}, Lcom/mopub/common/logging/MoPubLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 216
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v2

    goto :goto_0

    .line 214
    :catch_3
    move-exception v2

    goto :goto_0
.end method
