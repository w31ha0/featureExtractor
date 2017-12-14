.class public Lcom/tutusw/phonespeedup/WidgetService;
.super Landroid/app/Service;
.source "WidgetService.java"


# instance fields
.field activewidget:Landroid/content/ComponentName;

.field c:F

.field changed:Z

.field context:Landroid/content/Context;

.field currentFreq:I

.field f:F

.field fi:Ljava/io/File;

.field filter:Landroid/content/IntentFilter;

.field freq:[I

.field i:Ljava/lang/String;

.field in:Ljava/io/DataInputStream;

.field ins:Ljava/io/InputStream;

.field line:Ljava/lang/String;

.field lines:Ljava/lang/String;

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field manager:Landroid/appwidget/AppWidgetManager;

.field maxMin:[I

.field oldFreq:I

.field oldMaxMin:[I

.field oldTemp:I

.field omapTemp:Ljava/lang/String;

.field out:[I

.field pendingIntent:Landroid/app/PendingIntent;

.field read:Ljava/lang/String;

.field refresh:Ljava/lang/Runnable;

.field screenoff:Z

.field settings:Landroid/content/SharedPreferences;

.field t:F

.field temp:I

.field tempf:I

.field timer:Ljava/util/Timer;

.field updateViews:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 38
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/tutusw/phonespeedup/WidgetService;->out:[I

    .line 39
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/tutusw/phonespeedup/WidgetService;->timer:Ljava/util/Timer;

    .line 40
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/tutusw/phonespeedup/WidgetService;->filter:Landroid/content/IntentFilter;

    .line 41
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/tutusw/phonespeedup/WidgetService;->oldMaxMin:[I

    .line 43
    iput-boolean v1, p0, Lcom/tutusw/phonespeedup/WidgetService;->changed:Z

    .line 45
    iput-boolean v1, p0, Lcom/tutusw/phonespeedup/WidgetService;->screenoff:Z

    .line 47
    new-instance v0, Lcom/tutusw/phonespeedup/WidgetService$1;

    invoke-direct {v0, p0}, Lcom/tutusw/phonespeedup/WidgetService$1;-><init>(Lcom/tutusw/phonespeedup/WidgetService;)V

    iput-object v0, p0, Lcom/tutusw/phonespeedup/WidgetService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 22
    return-void

    .line 38
    :array_0
    .array-data 4
        0x210
        0x210
    .end array-data
.end method

.method static synthetic access$0(Lcom/tutusw/phonespeedup/WidgetService;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/tutusw/phonespeedup/WidgetService;->update()V

    return-void
.end method

.method static synthetic access$1(Lcom/tutusw/phonespeedup/WidgetService;)V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/tutusw/phonespeedup/WidgetService;->updateActive()V

    return-void
.end method

.method private activeInit()V
    .locals 7

    .prologue
    .line 314
    iget-object v0, p0, Lcom/tutusw/phonespeedup/WidgetService;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 315
    iget-object v0, p0, Lcom/tutusw/phonespeedup/WidgetService;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 317
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/tutusw/phonespeedup/WidgetService;->timer:Ljava/util/Timer;

    .line 319
    iget-object v0, p0, Lcom/tutusw/phonespeedup/WidgetService;->settings:Landroid/content/SharedPreferences;

    const-string v1, "widgetRefreshInterval"

    const/16 v2, 0x7530

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 321
    .local v6, "widgetInterval":I
    if-lez v6, :cond_0

    .line 322
    iget-object v0, p0, Lcom/tutusw/phonespeedup/WidgetService;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/tutusw/phonespeedup/WidgetService$2;

    invoke-direct {v1, p0}, Lcom/tutusw/phonespeedup/WidgetService$2;-><init>(Lcom/tutusw/phonespeedup/WidgetService;)V

    .line 329
    const-wide/16 v2, 0x0

    int-to-long v4, v6

    .line 322
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 334
    :cond_0
    return-void
.end method

.method private getBatteryTemp()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    const-string v4, ""

    .line 277
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tutusw/phonespeedup/WidgetService;->read:Ljava/lang/String;

    .line 278
    const-string v1, "/sys/class/power_supply/battery/temp"

    invoke-direct {p0, v1}, Lcom/tutusw/phonespeedup/WidgetService;->readInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tutusw/phonespeedup/WidgetService;->read:Ljava/lang/String;

    .line 279
    iget-object v1, p0, Lcom/tutusw/phonespeedup/WidgetService;->read:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tutusw/phonespeedup/WidgetService;->read:Ljava/lang/String;

    const-string v2, ""

    if-ne v1, v4, :cond_1

    .line 280
    :cond_0
    const-string v1, "/sys/class/power_supply/battery/batt_temp"

    invoke-direct {p0, v1}, Lcom/tutusw/phonespeedup/WidgetService;->readInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tutusw/phonespeedup/WidgetService;->read:Ljava/lang/String;

    .line 283
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/tutusw/phonespeedup/WidgetService;->read:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tutusw/phonespeedup/WidgetService;->read:Ljava/lang/String;

    const-string v2, ""

    if-eq v1, v4, :cond_2

    .line 284
    iget-object v1, p0, Lcom/tutusw/phonespeedup/WidgetService;->read:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 291
    :goto_0
    return v1

    :cond_2
    move v1, v3

    .line 287
    goto :goto_0

    .line 290
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, "e":Ljava/lang/Exception;
    move v1, v3

    .line 291
    goto :goto_0
.end method

.method private getTempSensor()I
    .locals 2

    .prologue
    .line 296
    const-string v0, "/sys/class/hwmon/hwmon0/device/temp1_input"

    invoke-direct {p0, v0}, Lcom/tutusw/phonespeedup/WidgetService;->readInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tutusw/phonespeedup/WidgetService;->omapTemp:Ljava/lang/String;

    .line 297
    iget-object v0, p0, Lcom/tutusw/phonespeedup/WidgetService;->omapTemp:Ljava/lang/String;

    const-string v1, ""

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/tutusw/phonespeedup/WidgetService;->omapTemp:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 298
    :cond_0
    invoke-direct {p0}, Lcom/tutusw/phonespeedup/WidgetService;->getBatteryTemp()I

    move-result v0

    .line 300
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/tutusw/phonespeedup/WidgetService;->omapTemp:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    goto :goto_0
.end method

.method private readFrequency()I
    .locals 1

    .prologue
    .line 267
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq"

    invoke-direct {p0, v0}, Lcom/tutusw/phonespeedup/WidgetService;->readInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private readInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 244
    iput-object v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->in:Ljava/io/DataInputStream;

    .line 245
    iput-object v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->line:Ljava/lang/String;

    .line 246
    const-string v1, ""

    iput-object v1, p0, Lcom/tutusw/phonespeedup/WidgetService;->lines:Ljava/lang/String;

    .line 248
    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/tutusw/phonespeedup/WidgetService;->in:Ljava/io/DataInputStream;

    .line 249
    :goto_0
    iget-object v1, p0, Lcom/tutusw/phonespeedup/WidgetService;->in:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tutusw/phonespeedup/WidgetService;->line:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 258
    :try_start_1
    iget-object v1, p0, Lcom/tutusw/phonespeedup/WidgetService;->in:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 263
    iget-object v1, p0, Lcom/tutusw/phonespeedup/WidgetService;->lines:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :goto_1
    return-object v1

    .line 250
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/tutusw/phonespeedup/WidgetService;->lines:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tutusw/phonespeedup/WidgetService;->line:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tutusw/phonespeedup/WidgetService;->lines:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 253
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 258
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    iget-object v1, p0, Lcom/tutusw/phonespeedup/WidgetService;->in:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v1, v3

    .line 254
    goto :goto_1

    .line 259
    :catch_1
    move-exception v1

    move-object v0, v1

    move-object v1, v3

    .line 260
    goto :goto_1

    .line 256
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 258
    :try_start_4
    iget-object v2, p0, Lcom/tutusw/phonespeedup/WidgetService;->in:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 262
    throw v1

    .line 259
    :catch_2
    move-exception v1

    move-object v0, v1

    .restart local v0    # "e":Ljava/lang/Exception;
    move-object v1, v3

    .line 260
    goto :goto_1

    .line 259
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v1

    move-object v0, v1

    .restart local v0    # "e":Ljava/lang/Exception;
    move-object v1, v3

    .line 260
    goto :goto_1
.end method

.method private readMaxMinFrequency()[I
    .locals 3

    .prologue
    .line 271
    iget-object v0, p0, Lcom/tutusw/phonespeedup/WidgetService;->out:[I

    const/4 v1, 0x0

    const-string v2, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq"

    invoke-direct {p0, v2}, Lcom/tutusw/phonespeedup/WidgetService;->readInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 272
    iget-object v0, p0, Lcom/tutusw/phonespeedup/WidgetService;->out:[I

    const/4 v1, 0x1

    const-string v2, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq"

    invoke-direct {p0, v2}, Lcom/tutusw/phonespeedup/WidgetService;->readInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 273
    iget-object v0, p0, Lcom/tutusw/phonespeedup/WidgetService;->out:[I

    return-object v0
.end method

.method private update()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, -0x1

    const-wide/high16 v10, 0x4074000000000000L    # 320.0

    const-wide v8, 0x3ffccccccccccccdL    # 1.8

    const/high16 v7, 0x41200000    # 10.0f

    .line 67
    invoke-direct {p0}, Lcom/tutusw/phonespeedup/WidgetService;->readFrequency()I

    move-result v3

    iput v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->currentFreq:I

    .line 68
    iget-object v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->settings:Landroid/content/SharedPreferences;

    const-string v4, "widgetRefreshInterval"

    const/16 v5, 0x7530

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_0

    .line 69
    iget-object v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->updateViews:Landroid/widget/RemoteViews;

    const v4, 0x7f080095

    new-instance v5, Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/tutusw/phonespeedup/WidgetService;->currentFreq:I

    div-int/lit16 v6, v6, 0x3e8

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "MHz"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 72
    :cond_0
    invoke-direct {p0}, Lcom/tutusw/phonespeedup/WidgetService;->readMaxMinFrequency()[I

    move-result-object v3

    iput-object v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->freq:[I

    .line 74
    iget-object v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->updateViews:Landroid/widget/RemoteViews;

    const v4, 0x7f080096

    iget-object v5, p0, Lcom/tutusw/phonespeedup/WidgetService;->freq:[I

    aget v5, v5, v13

    div-int/lit16 v5, v5, 0x3e8

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 75
    iget-object v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->updateViews:Landroid/widget/RemoteViews;

    const v4, 0x7f080098

    iget-object v5, p0, Lcom/tutusw/phonespeedup/WidgetService;->freq:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    div-int/lit16 v5, v5, 0x3e8

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 77
    iget-object v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->settings:Landroid/content/SharedPreferences;

    const-string v4, "widgetTempSensor"

    invoke-interface {v3, v4, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 78
    invoke-direct {p0}, Lcom/tutusw/phonespeedup/WidgetService;->getTempSensor()I

    move-result v3

    iput v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->temp:I

    .line 84
    :goto_0
    iget-object v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->settings:Landroid/content/SharedPreferences;

    const-string v4, "widgetTemp"

    const/4 v5, 0x2

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 86
    .local v1, "t":I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    .line 87
    iget v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->temp:I

    int-to-double v3, v3

    mul-double/2addr v3, v8

    add-double/2addr v3, v10

    double-to-int v2, v3

    .line 88
    .local v2, "tempf":I
    iget v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->temp:I

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    div-float/2addr v3, v7

    iput v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->c:F

    .line 89
    int-to-float v3, v2

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    div-float/2addr v3, v7

    iput v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->f:F

    .line 90
    iget-object v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->updateViews:Landroid/widget/RemoteViews;

    const v4, 0x7f08009a

    new-instance v5, Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/tutusw/phonespeedup/WidgetService;->c:F

    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\u00b0C"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 91
    iget-object v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->updateViews:Landroid/widget/RemoteViews;

    const v4, 0x7f08009b

    new-instance v5, Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/tutusw/phonespeedup/WidgetService;->f:F

    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\u00b0F"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 105
    .end local v2    # "tempf":I
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->updateViews:Landroid/widget/RemoteViews;

    const v4, 0x7f080093

    iget-object v5, p0, Lcom/tutusw/phonespeedup/WidgetService;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 107
    iget-object v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->settings:Landroid/content/SharedPreferences;

    const-string v4, "widgetFreqColor"

    invoke-interface {v3, v4, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 108
    .local v0, "c":I
    if-eq v0, v12, :cond_2

    .line 109
    iget-object v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->updateViews:Landroid/widget/RemoteViews;

    const v4, 0x7f080098

    invoke-virtual {v3, v4, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 110
    iget-object v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->updateViews:Landroid/widget/RemoteViews;

    const v4, 0x7f080096

    invoke-virtual {v3, v4, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 111
    iget-object v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->updateViews:Landroid/widget/RemoteViews;

    const v4, 0x7f080099

    invoke-virtual {v3, v4, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 112
    iget-object v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->updateViews:Landroid/widget/RemoteViews;

    const v4, 0x7f080097

    invoke-virtual {v3, v4, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 115
    :cond_2
    iget-object v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->manager:Landroid/appwidget/AppWidgetManager;

    iget-object v4, p0, Lcom/tutusw/phonespeedup/WidgetService;->activewidget:Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/tutusw/phonespeedup/WidgetService;->updateViews:Landroid/widget/RemoteViews;

    invoke-virtual {v3, v4, v5}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 116
    return-void

    .line 81
    .end local v0    # "c":I
    .end local v1    # "t":I
    :cond_3
    invoke-direct {p0}, Lcom/tutusw/phonespeedup/WidgetService;->getBatteryTemp()I

    move-result v3

    iput v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->temp:I

    goto/16 :goto_0

    .line 94
    .restart local v1    # "t":I
    :cond_4
    const/4 v3, 0x1

    if-ne v1, v3, :cond_5

    .line 95
    iget v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->temp:I

    int-to-double v3, v3

    mul-double/2addr v3, v8

    add-double/2addr v3, v10

    double-to-int v2, v3

    .line 96
    .restart local v2    # "tempf":I
    int-to-float v3, v2

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    div-float/2addr v3, v7

    iput v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->f:F

    .line 97
    iget-object v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->updateViews:Landroid/widget/RemoteViews;

    const v4, 0x7f08009d

    new-instance v5, Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/tutusw/phonespeedup/WidgetService;->f:F

    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\u00b0F"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_1

    .line 100
    .end local v2    # "tempf":I
    :cond_5
    if-nez v1, :cond_1

    .line 101
    iget v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->temp:I

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    div-float/2addr v3, v7

    iput v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->c:F

    .line 102
    iget-object v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->updateViews:Landroid/widget/RemoteViews;

    const v4, 0x7f08009c

    new-instance v5, Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/tutusw/phonespeedup/WidgetService;->c:F

    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\u00b0C"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method private updateActive()V
    .locals 11

    .prologue
    const/4 v9, 0x0

    const-wide/high16 v7, 0x4074000000000000L    # 320.0

    const-wide v5, 0x3ffccccccccccccdL    # 1.8

    const/high16 v4, 0x41200000    # 10.0f

    const-string v10, "\u00b0C"

    .line 120
    invoke-direct {p0}, Lcom/tutusw/phonespeedup/WidgetService;->readFrequency()I

    move-result v0

    iput v0, p0, Lcom/tutusw/phonespeedup/WidgetService;->currentFreq:I

    .line 121
    iget-object v0, p0, Lcom/tutusw/phonespeedup/WidgetService;->updateViews:Landroid/widget/RemoteViews;

    const v1, 0x7f080095

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->currentFreq:I

    div-int/lit16 v3, v3, 0x3e8

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "MHz"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 123
    invoke-direct {p0}, Lcom/tutusw/phonespeedup/WidgetService;->readMaxMinFrequency()[I

    move-result-object v0

    iput-object v0, p0, Lcom/tutusw/phonespeedup/WidgetService;->freq:[I

    .line 124
    iget-object v0, p0, Lcom/tutusw/phonespeedup/WidgetService;->updateViews:Landroid/widget/RemoteViews;

    const v1, 0x7f080096

    iget-object v2, p0, Lcom/tutusw/phonespeedup/WidgetService;->freq:[I

    aget v2, v2, v9

    div-int/lit16 v2, v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 125
    iget-object v0, p0, Lcom/tutusw/phonespeedup/WidgetService;->updateViews:Landroid/widget/RemoteViews;

    const v1, 0x7f080098

    iget-object v2, p0, Lcom/tutusw/phonespeedup/WidgetService;->freq:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    div-int/lit16 v2, v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/tutusw/phonespeedup/WidgetService;->settings:Landroid/content/SharedPreferences;

    const-string v1, "widgetTempSensor"

    invoke-interface {v0, v1, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    invoke-direct {p0}, Lcom/tutusw/phonespeedup/WidgetService;->getTempSensor()I

    move-result v0

    iput v0, p0, Lcom/tutusw/phonespeedup/WidgetService;->temp:I

    .line 135
    :goto_0
    iget-object v0, p0, Lcom/tutusw/phonespeedup/WidgetService;->settings:Landroid/content/SharedPreferences;

    const-string v1, "widgetTemp"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/tutusw/phonespeedup/WidgetService;->t:F

    .line 137
    iget v0, p0, Lcom/tutusw/phonespeedup/WidgetService;->t:F

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 138
    iget v0, p0, Lcom/tutusw/phonespeedup/WidgetService;->temp:I

    int-to-double v0, v0

    mul-double/2addr v0, v5

    add-double/2addr v0, v7

    double-to-int v0, v0

    iput v0, p0, Lcom/tutusw/phonespeedup/WidgetService;->tempf:I

    .line 139
    iget v0, p0, Lcom/tutusw/phonespeedup/WidgetService;->temp:I

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    div-float/2addr v0, v4

    iput v0, p0, Lcom/tutusw/phonespeedup/WidgetService;->c:F

    .line 140
    iget v0, p0, Lcom/tutusw/phonespeedup/WidgetService;->tempf:I

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    div-float/2addr v0, v4

    iput v0, p0, Lcom/tutusw/phonespeedup/WidgetService;->f:F

    .line 141
    iget-object v0, p0, Lcom/tutusw/phonespeedup/WidgetService;->updateViews:Landroid/widget/RemoteViews;

    const v1, 0x7f08009a

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->c:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\u00b0C"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 142
    iget-object v0, p0, Lcom/tutusw/phonespeedup/WidgetService;->updateViews:Landroid/widget/RemoteViews;

    const v1, 0x7f08009b

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->f:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\u00b0F"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 156
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/tutusw/phonespeedup/WidgetService;->manager:Landroid/appwidget/AppWidgetManager;

    iget-object v1, p0, Lcom/tutusw/phonespeedup/WidgetService;->activewidget:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/tutusw/phonespeedup/WidgetService;->updateViews:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 157
    return-void

    .line 132
    :cond_1
    invoke-direct {p0}, Lcom/tutusw/phonespeedup/WidgetService;->getBatteryTemp()I

    move-result v0

    iput v0, p0, Lcom/tutusw/phonespeedup/WidgetService;->temp:I

    goto/16 :goto_0

    .line 145
    :cond_2
    iget v0, p0, Lcom/tutusw/phonespeedup/WidgetService;->t:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    .line 146
    iget v0, p0, Lcom/tutusw/phonespeedup/WidgetService;->temp:I

    int-to-double v0, v0

    mul-double/2addr v0, v5

    add-double/2addr v0, v7

    double-to-int v0, v0

    iput v0, p0, Lcom/tutusw/phonespeedup/WidgetService;->tempf:I

    .line 147
    iget v0, p0, Lcom/tutusw/phonespeedup/WidgetService;->tempf:I

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    div-float/2addr v0, v4

    iput v0, p0, Lcom/tutusw/phonespeedup/WidgetService;->f:F

    .line 148
    iget-object v0, p0, Lcom/tutusw/phonespeedup/WidgetService;->updateViews:Landroid/widget/RemoteViews;

    const v1, 0x7f08009d

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->f:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\u00b0F"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_1

    .line 151
    :cond_3
    iget v0, p0, Lcom/tutusw/phonespeedup/WidgetService;->t:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 152
    iget v0, p0, Lcom/tutusw/phonespeedup/WidgetService;->temp:I

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    div-float/2addr v0, v4

    iput v0, p0, Lcom/tutusw/phonespeedup/WidgetService;->c:F

    .line 153
    iget-object v0, p0, Lcom/tutusw/phonespeedup/WidgetService;->updateViews:Landroid/widget/RemoteViews;

    const v1, 0x7f08009c

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->c:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\u00b0C"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 240
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 305
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 306
    iget-object v0, p0, Lcom/tutusw/phonespeedup/WidgetService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/tutusw/phonespeedup/WidgetService;->filter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/tutusw/phonespeedup/WidgetService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 307
    iget-object v0, p0, Lcom/tutusw/phonespeedup/WidgetService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/tutusw/phonespeedup/WidgetService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 308
    iget-object v0, p0, Lcom/tutusw/phonespeedup/WidgetService;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 309
    iget-object v0, p0, Lcom/tutusw/phonespeedup/WidgetService;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 310
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    const-wide v11, 0x3ffccccccccccccdL    # 1.8

    const/4 v10, -0x1

    const/high16 v8, 0x41200000    # 10.0f

    const/4 v7, 0x0

    const-string v9, ""

    .line 162
    iget-object v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->filter:Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    iget-object v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->filter:Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    iget-object v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->filter:Landroid/content/IntentFilter;

    const-string v4, "Speedup.intent.action.updatewidget"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    iget-object v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/tutusw/phonespeedup/WidgetService;->filter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v3, v4}, Lcom/tutusw/phonespeedup/WidgetService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 167
    invoke-virtual {p0}, Lcom/tutusw/phonespeedup/WidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 169
    .local v1, "context":Landroid/content/Context;
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/tutusw/phonespeedup/Setcpu;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 171
    .local v2, "i":Landroid/content/Intent;
    iput v7, p0, Lcom/tutusw/phonespeedup/WidgetService;->oldFreq:I

    .line 172
    iput v7, p0, Lcom/tutusw/phonespeedup/WidgetService;->oldTemp:I

    .line 174
    const-string v3, "Speedup"

    invoke-virtual {p0, v3, v7}, Lcom/tutusw/phonespeedup/WidgetService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->settings:Landroid/content/SharedPreferences;

    .line 176
    invoke-static {v1, v7, v2, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->pendingIntent:Landroid/app/PendingIntent;

    .line 177
    new-instance v3, Landroid/widget/RemoteViews;

    .line 178
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/tutusw/phonespeedup/WidgetService;->settings:Landroid/content/SharedPreferences;

    const-string v6, "widgetBack"

    invoke-interface {v5, v6, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Lcom/tutusw/phonespeedup/Themes;->getWidgetBackById(I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 177
    iput-object v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->updateViews:Landroid/widget/RemoteViews;

    .line 179
    new-instance v3, Landroid/content/ComponentName;

    .line 180
    const-class v4, Lcom/tutusw/phonespeedup/Widget;

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 179
    iput-object v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->activewidget:Landroid/content/ComponentName;

    .line 181
    move-object v1, p0

    .line 182
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    iput-object v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->manager:Landroid/appwidget/AppWidgetManager;

    .line 184
    iget-object v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->updateViews:Landroid/widget/RemoteViews;

    const v4, 0x7f080093

    iget-object v5, p0, Lcom/tutusw/phonespeedup/WidgetService;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 187
    iget-object v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->updateViews:Landroid/widget/RemoteViews;

    const v4, 0x7f08009a

    const-string v5, ""

    invoke-virtual {v3, v4, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 188
    iget-object v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->updateViews:Landroid/widget/RemoteViews;

    const v4, 0x7f08009b

    const-string v5, ""

    invoke-virtual {v3, v4, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 189
    iget-object v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->updateViews:Landroid/widget/RemoteViews;

    const v4, 0x7f08009c

    const-string v5, ""

    invoke-virtual {v3, v4, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 190
    iget-object v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->updateViews:Landroid/widget/RemoteViews;

    const v4, 0x7f08009d

    const-string v5, ""

    invoke-virtual {v3, v4, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 192
    iget-object v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->settings:Landroid/content/SharedPreferences;

    const-string v4, "widgetFreqColor"

    invoke-interface {v3, v4, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 193
    .local v0, "color":I
    if-eq v0, v10, :cond_0

    .line 194
    iget-object v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->updateViews:Landroid/widget/RemoteViews;

    const v4, 0x7f080098

    invoke-virtual {v3, v4, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 195
    iget-object v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->updateViews:Landroid/widget/RemoteViews;

    const v4, 0x7f080096

    invoke-virtual {v3, v4, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 196
    iget-object v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->updateViews:Landroid/widget/RemoteViews;

    const v4, 0x7f080099

    invoke-virtual {v3, v4, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 197
    iget-object v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->updateViews:Landroid/widget/RemoteViews;

    const v4, 0x7f080097

    invoke-virtual {v3, v4, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 200
    :cond_0
    invoke-direct {p0}, Lcom/tutusw/phonespeedup/WidgetService;->readMaxMinFrequency()[I

    move-result-object v3

    iput-object v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->freq:[I

    .line 201
    iget-object v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->updateViews:Landroid/widget/RemoteViews;

    const v4, 0x7f080096

    iget-object v5, p0, Lcom/tutusw/phonespeedup/WidgetService;->freq:[I

    aget v5, v5, v7

    div-int/lit16 v5, v5, 0x3e8

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 202
    iget-object v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->updateViews:Landroid/widget/RemoteViews;

    const v4, 0x7f080098

    iget-object v5, p0, Lcom/tutusw/phonespeedup/WidgetService;->freq:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    div-int/lit16 v5, v5, 0x3e8

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 205
    iget-object v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->settings:Landroid/content/SharedPreferences;

    const-string v4, "widgetTempSensor"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 206
    invoke-direct {p0}, Lcom/tutusw/phonespeedup/WidgetService;->getTempSensor()I

    move-result v3

    iput v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->temp:I

    .line 212
    :goto_0
    iget-object v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->settings:Landroid/content/SharedPreferences;

    const-string v4, "widgetTemp"

    const/4 v5, 0x2

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->t:F

    .line 214
    iget v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->t:F

    const/high16 v4, 0x40000000    # 2.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    .line 215
    const-wide/high16 v3, 0x4074000000000000L    # 320.0

    iget v5, p0, Lcom/tutusw/phonespeedup/WidgetService;->temp:I

    int-to-double v5, v5

    mul-double/2addr v5, v11

    add-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->tempf:I

    .line 216
    iget v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->temp:I

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    div-float/2addr v3, v8

    iput v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->c:F

    .line 217
    iget v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->tempf:I

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    div-float/2addr v3, v8

    iput v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->f:F

    .line 218
    iget-object v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->updateViews:Landroid/widget/RemoteViews;

    const v4, 0x7f08009a

    new-instance v5, Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/tutusw/phonespeedup/WidgetService;->c:F

    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\u00b0C"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 219
    iget-object v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->updateViews:Landroid/widget/RemoteViews;

    const v4, 0x7f08009b

    new-instance v5, Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/tutusw/phonespeedup/WidgetService;->f:F

    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\u00b0F"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 233
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->manager:Landroid/appwidget/AppWidgetManager;

    iget-object v4, p0, Lcom/tutusw/phonespeedup/WidgetService;->activewidget:Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/tutusw/phonespeedup/WidgetService;->updateViews:Landroid/widget/RemoteViews;

    invoke-virtual {v3, v4, v5}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 235
    invoke-direct {p0}, Lcom/tutusw/phonespeedup/WidgetService;->activeInit()V

    .line 236
    return-void

    .line 209
    :cond_2
    invoke-direct {p0}, Lcom/tutusw/phonespeedup/WidgetService;->getBatteryTemp()I

    move-result v3

    iput v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->temp:I

    goto/16 :goto_0

    .line 222
    :cond_3
    iget v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->t:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_4

    .line 223
    const-wide/high16 v3, 0x4074000000000000L    # 320.0

    iget v5, p0, Lcom/tutusw/phonespeedup/WidgetService;->temp:I

    int-to-double v5, v5

    mul-double/2addr v5, v11

    add-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->tempf:I

    .line 224
    iget v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->tempf:I

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    div-float/2addr v3, v8

    iput v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->f:F

    .line 225
    iget-object v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->updateViews:Landroid/widget/RemoteViews;

    const v4, 0x7f08009d

    new-instance v5, Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/tutusw/phonespeedup/WidgetService;->f:F

    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\u00b0F"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_1

    .line 228
    :cond_4
    iget v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->t:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    .line 229
    iget v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->temp:I

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    div-float/2addr v3, v8

    iput v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->c:F

    .line 230
    iget-object v3, p0, Lcom/tutusw/phonespeedup/WidgetService;->updateViews:Landroid/widget/RemoteViews;

    const v4, 0x7f08009c

    new-instance v5, Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/tutusw/phonespeedup/WidgetService;->c:F

    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\u00b0C"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_1
.end method
