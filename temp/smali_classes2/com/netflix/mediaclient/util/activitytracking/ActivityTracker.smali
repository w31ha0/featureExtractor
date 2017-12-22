.class public Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker;
.super Ljava/lang/Object;
.source "ActivityTracker.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;",
        "Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;",
        "Lcom/google/android/gms/common/api/ResultCallback",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "ActivityTracker"


# instance fields
.field protected mActive:Z

.field protected mActivityStartTime:J

.field protected mBroadcastReceiver:Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker$ActivityDetectionBroadcastReceiver;

.field protected mContext:Landroid/content/Context;

.field protected mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field protected mInValid:Z

.field protected mLastActivity:Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker$DominantActivity;

.field protected mTracker:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker$DominantActivity;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker;->mTracker:Ljava/util/HashMap;

    .line 66
    sget-object v0, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker$DominantActivity;->unknown:Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker$DominantActivity;

    iput-object v0, p0, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker;->mLastActivity:Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker$DominantActivity;

    .line 67
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker;->mActivityStartTime:J

    .line 81
    iput-object p1, p0, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker;->mContext:Landroid/content/Context;

    .line 82
    new-instance v0, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker$ActivityDetectionBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker$ActivityDetectionBroadcastReceiver;-><init>(Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker;->mBroadcastReceiver:Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker$ActivityDetectionBroadcastReceiver;

    .line 83
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    .line 84
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 85
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/location/ActivityRecognition;->API:Lcom/google/android/gms/common/api/Api;

    .line 86
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 88
    iget-object v0, p0, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker;->updateTracker()V

    return-void
.end method

.method public static canUseActivityTracker(Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 76
    invoke-interface {p0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->isActivityTrackingDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/netflix/mediaclient/util/DeviceUtils;->canUseGooglePlayServices(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getActivityDetectionPendingIntent()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    .line 146
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker;->mContext:Landroid/content/Context;

    const-class v2, Lcom/netflix/mediaclient/util/activitytracking/ActivityRecognizedService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 147
    iget-object v1, p0, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private initTracker()V
    .locals 8

    .prologue
    .line 92
    iget-object v0, p0, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker;->mTracker:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker;->mActivityStartTime:J

    .line 94
    sget-object v0, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker$DominantActivity;->unknown:Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker$DominantActivity;

    iput-object v0, p0, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker;->mLastActivity:Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker$DominantActivity;

    .line 96
    invoke-static {}, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker$DominantActivity;->values()[Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker$DominantActivity;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 97
    iget-object v4, p0, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker;->mTracker:Ljava/util/HashMap;

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_0
    return-void
.end method

.method private updateTracker()V
    .locals 6

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker;->mActive:Z

    if-nez v0, :cond_0

    .line 196
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-wide v0, p0, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker;->mActivityStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker;->mActivityStartTime:J

    goto :goto_0

    .line 191
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker;->mActivityStartTime:J

    sub-long v2, v0, v2

    .line 192
    iget-object v0, p0, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker;->mTracker:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker;->mLastActivity:Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker$DominantActivity;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 193
    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 194
    iget-object v2, p0, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker;->mTracker:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker;->mLastActivity:Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker$DominantActivity;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker;->mActivityStartTime:J

    goto :goto_0
.end method


# virtual methods
.method public getActivityData()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 131
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker;->mTracker:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 134
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker$DominantActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker$DominantActivity;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 141
    :cond_0
    :goto_1
    return-object v2

    .line 136
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker;->mInValid:Z

    if-eqz v0, :cond_0

    .line 137
    const-string/jumbo v0, "suspended"

    const-string/jumbo v1, "true"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 153
    const-string/jumbo v0, "ActivityTracker"

    const-string/jumbo v1, "Connected to GoogleApiClient"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-boolean v0, p0, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker;->mActive:Z

    if-nez v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker;->trackActivityUpdates()V

    .line 157
    :cond_0
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    .prologue
    .line 172
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 2

    .prologue
    .line 161
    const-string/jumbo v0, "ActivityTracker"

    const-string/jumbo v1, "Connection suspended"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker;->mInValid:Z

    .line 165
    return-void
.end method

.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .prologue
    .line 38
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker;->onResult(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/common/api/Status;)V
    .locals 3

    .prologue
    .line 176
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    const-string/jumbo v0, "ActivityTracker"

    const-string/jumbo v1, "Successfully added activity detection."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :goto_0
    return-void

    .line 179
    :cond_0
    const-string/jumbo v0, "ActivityTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error adding or removing activity detection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopTrackingActivityUpdates()V
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    const-string/jumbo v0, "ActivityTracker"

    const-string/jumbo v1, "stopping while not connected "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :goto_0
    return-void

    .line 119
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker;->updateTracker()V

    .line 122
    sget-object v0, Lcom/google/android/gms/location/ActivityRecognition;->ActivityRecognitionApi:Lcom/google/android/gms/location/ActivityRecognitionApi;

    iget-object v1, p0, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 124
    invoke-direct {p0}, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker;->getActivityDetectionPendingIntent()Landroid/app/PendingIntent;

    move-result-object v2

    .line 122
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/location/ActivityRecognitionApi;->removeActivityUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    .line 125
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 127
    iget-object v0, p0, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker;->mBroadcastReceiver:Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker$ActivityDetectionBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public trackActivityUpdates()V
    .locals 5

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker;->initTracker()V

    .line 103
    iget-object v0, p0, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker;->mBroadcastReceiver:Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker$ActivityDetectionBroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.netflix.mediaclient.ACTIVITIES_BROADCAST_ACTION"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 106
    sget-object v0, Lcom/google/android/gms/location/ActivityRecognition;->ActivityRecognitionApi:Lcom/google/android/gms/location/ActivityRecognitionApi;

    iget-object v1, p0, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const-wide/32 v2, 0x493e0

    .line 109
    invoke-direct {p0}, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker;->getActivityDetectionPendingIntent()Landroid/app/PendingIntent;

    move-result-object v4

    .line 106
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/location/ActivityRecognitionApi;->requestActivityUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;JLandroid/app/PendingIntent;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    .line 110
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker;->mActive:Z

    .line 112
    return-void
.end method
