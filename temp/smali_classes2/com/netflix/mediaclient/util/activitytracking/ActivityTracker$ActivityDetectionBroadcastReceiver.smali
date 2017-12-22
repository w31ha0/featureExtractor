.class public Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker$ActivityDetectionBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ActivityTracker.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker$ActivityDetectionBroadcastReceiver;->this$0:Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 208
    const-string/jumbo v0, "com.netflix.mediaclient.ACTIVITIES_EXTRA"

    .line 209
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/DetectedActivity;

    .line 216
    invoke-virtual {v0}, Lcom/google/android/gms/location/DetectedActivity;->getConfidence()I

    move-result v2

    const/16 v3, 0x46

    if-le v2, v3, :cond_0

    .line 217
    iget-object v2, p0, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker$ActivityDetectionBroadcastReceiver;->this$0:Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker;

    invoke-static {v2}, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker;->access$000(Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker;)V

    .line 219
    invoke-virtual {v0}, Lcom/google/android/gms/location/DetectedActivity;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 222
    :pswitch_1
    iget-object v0, p0, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker$ActivityDetectionBroadcastReceiver;->this$0:Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker;

    sget-object v2, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker$DominantActivity;->motion:Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker$DominantActivity;

    iput-object v2, v0, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker;->mLastActivity:Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker$DominantActivity;

    goto :goto_0

    .line 227
    :pswitch_2
    iget-object v0, p0, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker$ActivityDetectionBroadcastReceiver;->this$0:Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker;

    sget-object v2, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker$DominantActivity;->foot:Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker$DominantActivity;

    iput-object v2, v0, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker;->mLastActivity:Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker$DominantActivity;

    goto :goto_0

    .line 230
    :pswitch_3
    iget-object v0, p0, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker$ActivityDetectionBroadcastReceiver;->this$0:Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker;

    sget-object v2, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker$DominantActivity;->still:Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker$DominantActivity;

    iput-object v2, v0, Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker;->mLastActivity:Lcom/netflix/mediaclient/util/activitytracking/ActivityTracker$DominantActivity;

    goto :goto_0

    .line 242
    :cond_1
    return-void

    .line 219
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
