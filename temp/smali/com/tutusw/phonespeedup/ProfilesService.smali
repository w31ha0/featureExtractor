.class public Lcom/tutusw/phonespeedup/ProfilesService;
.super Landroid/app/Service;
.source "ProfilesService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tutusw/phonespeedup/ProfilesService$NotificationHelper;
    }
.end annotation


# instance fields
.field final ACTION_BATTERY_CHANGED:I

.field final ACTION_SCREEN_OFF:I

.field final ACTION_SCREEN_ON:I

.field action:Ljava/lang/String;

.field batteryLevel:I

.field batteryPlugged:I

.field batteryStatus:I

.field batteryTemp:I

.field charge:Z

.field context:Landroid/content/Context;

.field currentGovernor:Ljava/lang/String;

.field currentId:I

.field currentIntent:I

.field currentMax:I

.field currentMin:I

.field cursor:Landroid/database/Cursor;

.field cursorCheck:I

.field private db:Lcom/tutusw/phonespeedup/DBHelper;

.field enabled:Z

.field failsafeTemp:I

.field intentReceiver:Landroid/content/BroadcastReceiver;

.field nh:Lcom/tutusw/phonespeedup/ProfilesService$NotificationHelper;

.field nm:Landroid/app/NotificationManager;

.field normalProfile:Z

.field notify:Z

.field screenOff:Z

.field settings:Landroid/content/SharedPreferences;

.field temp:I

.field timer:Ljava/util/Timer;

.field timerEnabled:Z

.field warn:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 22
    iput-object v2, p0, Lcom/tutusw/phonespeedup/ProfilesService;->cursor:Landroid/database/Cursor;

    .line 24
    iput-boolean v1, p0, Lcom/tutusw/phonespeedup/ProfilesService;->screenOff:Z

    iput-boolean v1, p0, Lcom/tutusw/phonespeedup/ProfilesService;->notify:Z

    iput-boolean v1, p0, Lcom/tutusw/phonespeedup/ProfilesService;->warn:Z

    iput-boolean v1, p0, Lcom/tutusw/phonespeedup/ProfilesService;->timerEnabled:Z

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/tutusw/phonespeedup/ProfilesService;->failsafeTemp:I

    .line 32
    iput-object v2, p0, Lcom/tutusw/phonespeedup/ProfilesService;->nm:Landroid/app/NotificationManager;

    .line 33
    iput-object v2, p0, Lcom/tutusw/phonespeedup/ProfilesService;->nh:Lcom/tutusw/phonespeedup/ProfilesService$NotificationHelper;

    .line 34
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService;->timer:Ljava/util/Timer;

    .line 38
    iput v1, p0, Lcom/tutusw/phonespeedup/ProfilesService;->ACTION_SCREEN_OFF:I

    .line 39
    const/4 v0, 0x1

    iput v0, p0, Lcom/tutusw/phonespeedup/ProfilesService;->ACTION_SCREEN_ON:I

    .line 40
    const/4 v0, 0x2

    iput v0, p0, Lcom/tutusw/phonespeedup/ProfilesService;->ACTION_BATTERY_CHANGED:I

    .line 42
    new-instance v0, Lcom/tutusw/phonespeedup/ProfilesService$1;

    invoke-direct {v0, p0}, Lcom/tutusw/phonespeedup/ProfilesService$1;-><init>(Lcom/tutusw/phonespeedup/ProfilesService;)V

    iput-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService;->intentReceiver:Landroid/content/BroadcastReceiver;

    .line 19
    return-void
.end method

.method static synthetic access$0(Lcom/tutusw/phonespeedup/ProfilesService;)V
    .locals 0

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/tutusw/phonespeedup/ProfilesService;->updateState()V

    return-void
.end method

.method static synthetic access$1(Lcom/tutusw/phonespeedup/ProfilesService;)I
    .locals 1

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/tutusw/phonespeedup/ProfilesService;->getTempSensor()I

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/tutusw/phonespeedup/ProfilesService;)V
    .locals 0

    .prologue
    .line 376
    invoke-direct {p0}, Lcom/tutusw/phonespeedup/ProfilesService;->evaluateChecktemp()V

    return-void
.end method

.method static synthetic access$3(Lcom/tutusw/phonespeedup/ProfilesService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 282
    invoke-direct {p0, p1}, Lcom/tutusw/phonespeedup/ProfilesService;->setGovernor(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Lcom/tutusw/phonespeedup/ProfilesService;II)V
    .locals 0

    .prologue
    .line 266
    invoke-direct {p0, p1, p2}, Lcom/tutusw/phonespeedup/ProfilesService;->setBounds(II)V

    return-void
.end method

.method private checkEnabled()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 258
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService;->settings:Landroid/content/SharedPreferences;

    const-string v1, "profilesOn"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    const/4 v0, 0x1

    .line 262
    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private evaluateChecktemp()V
    .locals 7

    .prologue
    const/4 v2, -0x1

    const-string v3, "profileFailsafeInterval"

    .line 377
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService;->settings:Landroid/content/SharedPreferences;

    const-string v1, "profileFailsafeInterval"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_1

    .line 378
    iget-boolean v0, p0, Lcom/tutusw/phonespeedup/ProfilesService;->timerEnabled:Z

    if-nez v0, :cond_0

    .line 379
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService;->timer:Ljava/util/Timer;

    .line 381
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tutusw/phonespeedup/ProfilesService;->timerEnabled:Z

    .line 383
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService;->settings:Landroid/content/SharedPreferences;

    const-string v1, "profileFailsafeInterval"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 385
    .local v6, "failsafeInterval":I
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/tutusw/phonespeedup/ProfilesService$2;

    invoke-direct {v1, p0}, Lcom/tutusw/phonespeedup/ProfilesService$2;-><init>(Lcom/tutusw/phonespeedup/ProfilesService;)V

    .line 398
    const-wide/16 v2, 0x0

    int-to-long v4, v6

    .line 385
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 406
    .end local v6    # "failsafeInterval":I
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 403
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 404
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tutusw/phonespeedup/ProfilesService;->timerEnabled:Z

    goto :goto_0
.end method

.method private getTempSensor()I
    .locals 4

    .prologue
    const/16 v3, -0x64

    .line 223
    :try_start_0
    const-string v2, "/sys/class/hwmon/hwmon0/device/temp1_input"

    invoke-static {v2}, Lcom/tutusw/phonespeedup/Io;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "omapTemp":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    if-ne v1, v2, :cond_1

    :cond_0
    move v2, v3

    .line 230
    .end local v1    # "omapTemp":Ljava/lang/String;
    :goto_0
    return v2

    .line 227
    .restart local v1    # "omapTemp":Ljava/lang/String;
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    mul-int/lit8 v2, v2, 0xa

    goto :goto_0

    .line 229
    .end local v1    # "omapTemp":Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, "e":Ljava/lang/Exception;
    move v2, v3

    .line 230
    goto :goto_0
.end method

.method private setBounds(II)V
    .locals 2
    .param p1, "f"    # I
    .param p2, "g"    # I

    .prologue
    const-string v0, " > /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq"

    const-string v0, "echo "

    .line 268
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 269
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "echo "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " > /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tutusw/phonespeedup/Io;->runCommand(Ljava/lang/String;)I

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "echo "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " > /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tutusw/phonespeedup/Io;->runCommand(Ljava/lang/String;)I

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "echo "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " > /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tutusw/phonespeedup/Io;->runCommand(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 277
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setGovernor(Ljava/lang/String;)V
    .locals 2
    .param p1, "set"    # Ljava/lang/String;

    .prologue
    const-string v0, "echo "

    const-string v0, " > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor"

    .line 284
    if-eqz p1, :cond_0

    .line 285
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "echo "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tutusw/phonespeedup/Io;->runCommand(Ljava/lang/String;)I

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "echo "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tutusw/phonespeedup/Io;->runCommand(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 288
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updateState()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 236
    invoke-direct {p0}, Lcom/tutusw/phonespeedup/ProfilesService;->checkEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    invoke-virtual {p0}, Lcom/tutusw/phonespeedup/ProfilesService;->stopSelf()V

    .line 240
    :cond_0
    iget-boolean v0, p0, Lcom/tutusw/phonespeedup/ProfilesService;->timerEnabled:Z

    if-eqz v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 242
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 243
    iput-boolean v2, p0, Lcom/tutusw/phonespeedup/ProfilesService;->timerEnabled:Z

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService;->db:Lcom/tutusw/phonespeedup/DBHelper;

    invoke-virtual {v0}, Lcom/tutusw/phonespeedup/DBHelper;->getAllEnabledProfiles()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService;->cursor:Landroid/database/Cursor;

    .line 247
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService;->settings:Landroid/content/SharedPreferences;

    const-string v1, "profileNotifications"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 248
    iput-boolean v3, p0, Lcom/tutusw/phonespeedup/ProfilesService;->notify:Z

    .line 249
    new-instance v0, Lcom/tutusw/phonespeedup/ProfilesService$NotificationHelper;

    invoke-direct {v0, p0}, Lcom/tutusw/phonespeedup/ProfilesService$NotificationHelper;-><init>(Lcom/tutusw/phonespeedup/ProfilesService;)V

    iput-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService;->nh:Lcom/tutusw/phonespeedup/ProfilesService$NotificationHelper;

    .line 255
    :goto_0
    return-void

    .line 252
    :cond_2
    iput-boolean v2, p0, Lcom/tutusw/phonespeedup/ProfilesService;->notify:Z

    .line 253
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService;->nm:Landroid/app/NotificationManager;

    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 421
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 186
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 187
    invoke-virtual {p0}, Lcom/tutusw/phonespeedup/ProfilesService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/tutusw/phonespeedup/ProfilesService;->context:Landroid/content/Context;

    .line 188
    iget-object v1, p0, Lcom/tutusw/phonespeedup/ProfilesService;->context:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/tutusw/phonespeedup/ProfilesService;->nm:Landroid/app/NotificationManager;

    .line 189
    new-instance v1, Lcom/tutusw/phonespeedup/DBHelper;

    iget-object v2, p0, Lcom/tutusw/phonespeedup/ProfilesService;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/tutusw/phonespeedup/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tutusw/phonespeedup/ProfilesService;->db:Lcom/tutusw/phonespeedup/DBHelper;

    .line 191
    const-string v1, "Speedup"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/tutusw/phonespeedup/ProfilesService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/tutusw/phonespeedup/ProfilesService;->settings:Landroid/content/SharedPreferences;

    .line 193
    invoke-direct {p0}, Lcom/tutusw/phonespeedup/ProfilesService;->updateState()V

    .line 196
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 197
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 198
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 199
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 200
    const-string v1, "Speedup.intent.action.refreshservice"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 201
    const-string v1, "Speedup.intent.action.temp"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 202
    iget-object v1, p0, Lcom/tutusw/phonespeedup/ProfilesService;->intentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/tutusw/phonespeedup/ProfilesService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 203
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 410
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 411
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService;->intentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/tutusw/phonespeedup/ProfilesService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 412
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService;->db:Lcom/tutusw/phonespeedup/DBHelper;

    invoke-virtual {v0}, Lcom/tutusw/phonespeedup/DBHelper;->close()V

    .line 413
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 414
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService;->nm:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 415
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 416
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfilesService;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 417
    return-void
.end method
