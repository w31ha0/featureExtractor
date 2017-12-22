.class Lcom/netflix/mediaclient/android/activity/NetflixActivity$13;
.super Landroid/content/BroadcastReceiver;
.source "NetflixActivity.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .prologue
    .line 2377
    iput-object p1, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$13;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private logWithClassName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2426
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 2380
    if-nez p2, :cond_0

    .line 2381
    const-string/jumbo v0, "Null intent"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$13;->logWithClassName(Ljava/lang/String;)V

    .line 2420
    :goto_0
    return-void

    .line 2385
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2386
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.NOTIFY_USER_PROFILE_ACTIVE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2387
    const-string/jumbo v0, "User profile activated - restarting app"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$13;->logWithClassName(Ljava/lang/String;)V

    .line 2388
    invoke-static {}, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->getInstance()Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->clearState()V

    .line 2389
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$13;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handleProfileActivated()V

    goto :goto_0

    .line 2391
    :cond_1
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.NOTIFY_USER_ACCOUNT_DEACTIVE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2392
    const-string/jumbo v0, "Account deactivated - restarting app"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$13;->logWithClassName(Ljava/lang/String;)V

    .line 2393
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$13;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handleAccountDeactivated()V

    goto :goto_0

    .line 2395
    :cond_2
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.NOTIFY_USER_PROFILE_READY_TO_SELECT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2396
    const-string/jumbo v0, "Ready to select profile - calling children"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$13;->logWithClassName(Ljava/lang/String;)V

    .line 2397
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$13;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handleProfileReadyToSelect()V

    goto :goto_0

    .line 2399
    :cond_3
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.NOTIFY_USER_PROFILE_SELECTION_RESULT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2400
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.EXTRA_USER_PROFILE_SELECTION_RESULT_INT"

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->OK:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2401
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.EXTRA_USER_PROFILE_SELECTION_RESULT_STRING"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2402
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Profile selection status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$13;->logWithClassName(Ljava/lang/String;)V

    .line 2403
    iget-object v2, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$13;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v2, v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handleProfileSelectionResult(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 2405
    :cond_4
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.NOTIFY_PROFILES_LIST_UPDATED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2406
    const-string/jumbo v0, "Profiles list updated!"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$13;->logWithClassName(Ljava/lang/String;)V

    .line 2407
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$13;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handleProfilesListUpdated()V

    goto/16 :goto_0

    .line 2409
    :cond_5
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.NOTIFY_CURRENT_PROFILE_INVALID"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2410
    const-string/jumbo v0, "current profile is invalid"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$13;->logWithClassName(Ljava/lang/String;)V

    .line 2411
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$13;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->handleInvalidCurrentProfile()V

    goto/16 :goto_0

    .line 2413
    :cond_6
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.NOTIFY_AUTOLOGIN_TOKEN_CREATED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2414
    const-string/jumbo v0, "Received autologin token"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$13;->logWithClassName(Ljava/lang/String;)V

    .line 2415
    iget-object v0, p0, Lcom/netflix/mediaclient/android/activity/NetflixActivity$13;->this$0:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->access$1800(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2418
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No action taken for intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$13;->logWithClassName(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
