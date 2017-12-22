.class public Lcom/netflix/mediaclient/util/activitytracking/ActivityRecognizedService;
.super Landroid/app/IntentService;
.source "ActivityRecognizedService.java"


# static fields
.field public static final ACTIVITIES_BROADCAST_ACTION:Ljava/lang/String; = "com.netflix.mediaclient.ACTIVITIES_BROADCAST_ACTION"

.field public static final ACTIVITIES_EXTRA:Ljava/lang/String; = "com.netflix.mediaclient.ACTIVITIES_EXTRA"

.field public static final TAG:Ljava/lang/String; = "ActivityTracker"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    const-string/jumbo v0, "ActivityRecognizedService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 20
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 24
    invoke-static {p1}, Lcom/google/android/gms/location/ActivityRecognitionResult;->extractResult(Landroid/content/Intent;)Lcom/google/android/gms/location/ActivityRecognitionResult;

    move-result-object v0

    .line 25
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.netflix.mediaclient.ACTIVITIES_BROADCAST_ACTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0}, Lcom/google/android/gms/location/ActivityRecognitionResult;->getProbableActivities()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 35
    const-string/jumbo v2, "com.netflix.mediaclient.ACTIVITIES_EXTRA"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 36
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 37
    return-void
.end method
