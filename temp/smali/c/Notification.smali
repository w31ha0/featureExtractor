.class public Lc/Notification;
.super Lvpadn/r;
.source "Notification.java"


# instance fields
.field public confirmResult:I

.field public progressDialog:Landroid/app/ProgressDialog;

.field public spinnerDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Lvpadn/r;-><init>()V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lc/Notification;->confirmResult:I

    .line 44
    iput-object v1, p0, Lc/Notification;->spinnerDialog:Landroid/app/ProgressDialog;

    .line 45
    iput-object v1, p0, Lc/Notification;->progressDialog:Landroid/app/ProgressDialog;

    .line 51
    return-void
.end method


# virtual methods
.method public declared-synchronized activityStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 260
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc/Notification;->spinnerDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lc/Notification;->spinnerDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 262
    const/4 v0, 0x0

    iput-object v0, p0, Lc/Notification;->spinnerDialog:Landroid/app/ProgressDialog;

    .line 264
    :cond_0
    iget-object v0, p0, Lc/Notification;->cordova:Lvpadn/q;

    .line 265
    new-instance v1, Lc/Notification$3;

    invoke-direct {v1, p0, v0, p1, p2}, Lc/Notification$3;-><init>(Lc/Notification;Lvpadn/q;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lc/Notification;->cordova:Lvpadn/q;

    invoke-interface {v0}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    monitor-exit p0

    return-void

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized activityStop()V
    .locals 1

    .prologue
    .line 282
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc/Notification;->spinnerDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lc/Notification;->spinnerDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 284
    const/4 v0, 0x0

    iput-object v0, p0, Lc/Notification;->spinnerDialog:Landroid/app/ProgressDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    :cond_0
    monitor-exit p0

    return-void

    .line 282
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lvpadn/p;)V
    .locals 7

    .prologue
    .line 152
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lc/Notification;->cordova:Lvpadn/q;

    .line 154
    new-instance v0, Lc/Notification$1;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lc/Notification$1;-><init>(Lc/Notification;Lvpadn/q;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lvpadn/p;)V

    .line 180
    iget-object v1, p0, Lc/Notification;->cordova:Lvpadn/q;

    invoke-interface {v1}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    monitor-exit p0

    return-void

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public beep(J)V
    .locals 13

    .prologue
    const-wide/16 v10, 0x64

    const-wide/16 v4, 0x0

    .line 110
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lc/Notification;->cordova:Lvpadn/q;

    invoke-interface {v1}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v6

    .line 114
    if-eqz v6, :cond_1

    move-wide v2, v4

    .line 115
    :goto_0
    cmp-long v0, v2, p1

    if-gez v0, :cond_1

    .line 116
    invoke-virtual {v6}, Landroid/media/Ringtone;->play()V

    .line 117
    const-wide/16 v0, 0x1388

    .line 118
    :goto_1
    invoke-virtual {v6}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v7

    if-eqz v7, :cond_0

    cmp-long v7, v0, v4

    if-lez v7, :cond_0

    .line 119
    sub-long/2addr v0, v10

    .line 121
    const-wide/16 v8, 0x64

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 122
    :catch_0
    move-exception v7

    goto :goto_1

    .line 115
    :cond_0
    const-wide/16 v0, 0x1

    add-long/2addr v0, v2

    move-wide v2, v0

    goto :goto_0

    .line 127
    :cond_1
    return-void
.end method

.method public declared-synchronized confirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lvpadn/p;)V
    .locals 7

    .prologue
    .line 195
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lc/Notification;->cordova:Lvpadn/q;

    .line 196
    const-string v0, ","

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 198
    new-instance v0, Lc/Notification$2;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lc/Notification$2;-><init>(Lc/Notification;Lvpadn/q;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lvpadn/p;)V

    .line 250
    iget-object v1, p0, Lc/Notification;->cordova:Lvpadn/q;

    invoke-interface {v1}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    monitor-exit p0

    return-void

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lvpadn/p;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 62
    const-string v2, "beep"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lc/Notification;->beep(J)V

    .line 96
    :goto_0
    invoke-virtual {p3}, Lvpadn/p;->c()V

    .line 97
    :goto_1
    return v0

    .line 65
    :cond_0
    const-string v2, "vibrate"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 66
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lc/Notification;->vibrate(J)V

    goto :goto_0

    .line 68
    :cond_1
    const-string v2, "alert"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 69
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3, p3}, Lc/Notification;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lvpadn/p;)V

    goto :goto_1

    .line 72
    :cond_2
    const-string v2, "confirm"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 73
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3, p3}, Lc/Notification;->confirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lvpadn/p;)V

    goto :goto_1

    .line 76
    :cond_3
    const-string v2, "activityStart"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 77
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lc/Notification;->activityStart(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :cond_4
    const-string v2, "activityStop"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 80
    invoke-virtual {p0}, Lc/Notification;->activityStop()V

    goto :goto_0

    .line 82
    :cond_5
    const-string v2, "progressStart"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 83
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lc/Notification;->progressStart(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_6
    const-string v2, "progressValue"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 86
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lc/Notification;->progressValue(I)V

    goto/16 :goto_0

    .line 88
    :cond_7
    const-string v2, "progressStop"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 89
    invoke-virtual {p0}, Lc/Notification;->progressStop()V

    goto/16 :goto_0

    :cond_8
    move v0, v1

    .line 92
    goto/16 :goto_1
.end method

.method public declared-synchronized progressStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 295
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc/Notification;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lc/Notification;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 297
    const/4 v0, 0x0

    iput-object v0, p0, Lc/Notification;->progressDialog:Landroid/app/ProgressDialog;

    .line 300
    :cond_0
    iget-object v3, p0, Lc/Notification;->cordova:Lvpadn/q;

    .line 301
    new-instance v0, Lc/Notification$4;

    move-object v1, p0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lc/Notification$4;-><init>(Lc/Notification;Lc/Notification;Lvpadn/q;Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object v1, p0, Lc/Notification;->cordova:Lvpadn/q;

    invoke-interface {v1}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    monitor-exit p0

    return-void

    .line 295
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized progressStop()V
    .locals 1

    .prologue
    .line 337
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc/Notification;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lc/Notification;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 339
    const/4 v0, 0x0

    iput-object v0, p0, Lc/Notification;->progressDialog:Landroid/app/ProgressDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    :cond_0
    monitor-exit p0

    return-void

    .line 337
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized progressValue(I)V
    .locals 1

    .prologue
    .line 328
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc/Notification;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lc/Notification;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    :cond_0
    monitor-exit p0

    return-void

    .line 328
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public vibrate(J)V
    .locals 3

    .prologue
    .line 136
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 137
    const-wide/16 p1, 0x1f4

    .line 139
    :cond_0
    iget-object v0, p0, Lc/Notification;->cordova:Lvpadn/q;

    invoke-interface {v0}, Lvpadn/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 140
    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 141
    return-void
.end method
