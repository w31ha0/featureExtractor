.class public Lcom/tutusw/phonespeedup/Widget;
.super Landroid/appwidget/AppWidgetProvider;
.source "Widget.java"


# instance fields
.field activewidgetservice:Landroid/content/Intent;

.field c:F

.field f:F

.field freq:[I

.field mgr:Landroid/app/AlarmManager;

.field os:Ljava/io/DataOutputStream;

.field pendingIntent:Landroid/app/PendingIntent;

.field pi:Landroid/app/PendingIntent;

.field process:Ljava/lang/Process;

.field settings:Landroid/content/SharedPreferences;

.field temp:I

.field updateInterval:J

.field updateViews:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 24
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/tutusw/phonespeedup/Widget;->updateInterval:J

    .line 18
    return-void
.end method

.method private getBatteryTemp()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    const-string v4, ""

    .line 121
    const/4 v1, 0x0

    .line 122
    .local v1, "read":Ljava/lang/String;
    const-string v2, "/sys/class/power_supply/battery/temp"

    invoke-direct {p0, v2}, Lcom/tutusw/phonespeedup/Widget;->readInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 123
    if-eqz v1, :cond_0

    const-string v2, ""

    if-ne v1, v4, :cond_1

    .line 124
    :cond_0
    const-string v2, "/sys/class/power_supply/battery/batt_temp"

    invoke-direct {p0, v2}, Lcom/tutusw/phonespeedup/Widget;->readInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 127
    :cond_1
    if-eqz v1, :cond_2

    :try_start_0
    const-string v2, ""

    if-eq v1, v4, :cond_2

    .line 128
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 135
    :goto_0
    return v2

    :cond_2
    move v2, v3

    .line 131
    goto :goto_0

    .line 134
    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, "e":Ljava/lang/Exception;
    move v2, v3

    .line 135
    goto :goto_0
.end method

.method private getTempSensor()I
    .locals 2

    .prologue
    .line 140
    const-string v1, "/sys/class/hwmon/hwmon0/device/temp1_input"

    invoke-direct {p0, v1}, Lcom/tutusw/phonespeedup/Widget;->readInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "omapTemp":Ljava/lang/String;
    const-string v1, ""

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    .line 142
    :cond_0
    invoke-direct {p0}, Lcom/tutusw/phonespeedup/Widget;->getBatteryTemp()I

    move-result v1

    .line 144
    :goto_0
    return v1

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0xa

    goto :goto_0
.end method

.method private readFrequency()I
    .locals 1

    .prologue
    .line 148
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq"

    invoke-direct {p0, v0}, Lcom/tutusw/phonespeedup/Widget;->readInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private readInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 94
    const/4 v3, 0x0

    .line 95
    .local v3, "ins":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 97
    .local v1, "in":Ljava/io/DataInputStream;
    const-string v6, ""

    .line 99
    .local v6, "lines":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    .end local v3    # "ins":Ljava/io/InputStream;
    .local v4, "ins":Ljava/io/InputStream;
    :try_start_1
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 102
    .end local v1    # "in":Ljava/io/DataInputStream;
    .local v2, "in":Ljava/io/DataInputStream;
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v5

    .local v5, "line":Ljava/lang/String;
    if-nez v5, :cond_0

    .line 111
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 112
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 117
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    move-object v1, v2

    .end local v2    # "in":Ljava/io/DataInputStream;
    .restart local v1    # "in":Ljava/io/DataInputStream;
    move-object v3, v4

    .end local v4    # "ins":Ljava/io/InputStream;
    .end local v5    # "line":Ljava/lang/String;
    .restart local v3    # "ins":Ljava/io/InputStream;
    :goto_1
    return-object v7

    .line 103
    .end local v1    # "in":Ljava/io/DataInputStream;
    .end local v3    # "ins":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/DataInputStream;
    .restart local v4    # "ins":Ljava/io/InputStream;
    .restart local v5    # "line":Ljava/lang/String;
    :cond_0
    :try_start_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v6

    goto :goto_0

    .line 106
    .end local v2    # "in":Ljava/io/DataInputStream;
    .end local v4    # "ins":Ljava/io/InputStream;
    .end local v5    # "line":Ljava/lang/String;
    .restart local v1    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "ins":Ljava/io/InputStream;
    :catch_0
    move-exception v7

    move-object v0, v7

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 112
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-object v7, v9

    .line 107
    goto :goto_1

    .line 113
    :catch_1
    move-exception v7

    move-object v0, v7

    move-object v7, v9

    .line 114
    goto :goto_1

    .line 109
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 111
    :goto_3
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 112
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 116
    throw v7

    .line 113
    :catch_2
    move-exception v7

    move-object v0, v7

    .restart local v0    # "e":Ljava/lang/Exception;
    move-object v7, v9

    .line 114
    goto :goto_1

    .line 113
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "in":Ljava/io/DataInputStream;
    .end local v3    # "ins":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/DataInputStream;
    .restart local v4    # "ins":Ljava/io/InputStream;
    .restart local v5    # "line":Ljava/lang/String;
    :catch_3
    move-exception v7

    move-object v0, v7

    .restart local v0    # "e":Ljava/lang/Exception;
    move-object v1, v2

    .end local v2    # "in":Ljava/io/DataInputStream;
    .restart local v1    # "in":Ljava/io/DataInputStream;
    move-object v3, v4

    .end local v4    # "ins":Ljava/io/InputStream;
    .restart local v3    # "ins":Ljava/io/InputStream;
    move-object v7, v9

    .line 114
    goto :goto_1

    .line 109
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "ins":Ljava/io/InputStream;
    .end local v5    # "line":Ljava/lang/String;
    .restart local v4    # "ins":Ljava/io/InputStream;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "ins":Ljava/io/InputStream;
    .restart local v3    # "ins":Ljava/io/InputStream;
    goto :goto_3

    .end local v1    # "in":Ljava/io/DataInputStream;
    .end local v3    # "ins":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/DataInputStream;
    .restart local v4    # "ins":Ljava/io/InputStream;
    :catchall_2
    move-exception v7

    move-object v1, v2

    .end local v2    # "in":Ljava/io/DataInputStream;
    .restart local v1    # "in":Ljava/io/DataInputStream;
    move-object v3, v4

    .end local v4    # "ins":Ljava/io/InputStream;
    .restart local v3    # "ins":Ljava/io/InputStream;
    goto :goto_3

    .line 106
    .end local v3    # "ins":Ljava/io/InputStream;
    .restart local v4    # "ins":Ljava/io/InputStream;
    :catch_4
    move-exception v7

    move-object v0, v7

    move-object v3, v4

    .end local v4    # "ins":Ljava/io/InputStream;
    .restart local v3    # "ins":Ljava/io/InputStream;
    goto :goto_2

    .end local v1    # "in":Ljava/io/DataInputStream;
    .end local v3    # "ins":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/DataInputStream;
    .restart local v4    # "ins":Ljava/io/InputStream;
    :catch_5
    move-exception v7

    move-object v0, v7

    move-object v1, v2

    .end local v2    # "in":Ljava/io/DataInputStream;
    .restart local v1    # "in":Ljava/io/DataInputStream;
    move-object v3, v4

    .end local v4    # "ins":Ljava/io/InputStream;
    .restart local v3    # "ins":Ljava/io/InputStream;
    goto :goto_2
.end method

.method private readMaxMinFrequency()[I
    .locals 3

    .prologue
    .line 152
    const/4 v1, 0x2

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 153
    .local v0, "out":[I
    const/4 v1, 0x0

    const-string v2, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq"

    invoke-direct {p0, v2}, Lcom/tutusw/phonespeedup/Widget;->readInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 154
    const/4 v1, 0x1

    const-string v2, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq"

    invoke-direct {p0, v2}, Lcom/tutusw/phonespeedup/Widget;->readInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 155
    return-object v0

    .line 152
    nop

    :array_0
    .array-data 4
        0x210
        0x210
    .end array-data
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetIds"    # [I

    .prologue
    .line 165
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tutusw/phonespeedup/WidgetService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 166
    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 170
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tutusw/phonespeedup/WidgetService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 171
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 160
    const-string v0, "Speedup"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/tutusw/phonespeedup/Widget;->settings:Landroid/content/SharedPreferences;

    .line 161
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    .line 36
    const-string v3, "Speedup"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/tutusw/phonespeedup/Widget;->settings:Landroid/content/SharedPreferences;

    .line 38
    new-instance v3, Landroid/widget/RemoteViews;

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/tutusw/phonespeedup/Widget;->settings:Landroid/content/SharedPreferences;

    const-string v6, "widgetBack"

    const/4 v7, -0x1

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Lcom/tutusw/phonespeedup/Themes;->getWidgetBackById(I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 38
    iput-object v3, p0, Lcom/tutusw/phonespeedup/Widget;->updateViews:Landroid/widget/RemoteViews;

    .line 43
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/tutusw/phonespeedup/WidgetService;

    invoke-direct {v3, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 45
    invoke-direct {p0}, Lcom/tutusw/phonespeedup/Widget;->readMaxMinFrequency()[I

    move-result-object v3

    iput-object v3, p0, Lcom/tutusw/phonespeedup/Widget;->freq:[I

    .line 47
    iget-object v3, p0, Lcom/tutusw/phonespeedup/Widget;->updateViews:Landroid/widget/RemoteViews;

    const v4, 0x7f080096

    iget-object v5, p0, Lcom/tutusw/phonespeedup/Widget;->freq:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    div-int/lit16 v5, v5, 0x3e8

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 48
    iget-object v3, p0, Lcom/tutusw/phonespeedup/Widget;->updateViews:Landroid/widget/RemoteViews;

    const v4, 0x7f080098

    iget-object v5, p0, Lcom/tutusw/phonespeedup/Widget;->freq:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    div-int/lit16 v5, v5, 0x3e8

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 50
    iget-object v3, p0, Lcom/tutusw/phonespeedup/Widget;->settings:Landroid/content/SharedPreferences;

    const-string v4, "widgetRefreshInterval"

    const/16 v5, 0x7530

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_0

    .line 51
    iget-object v3, p0, Lcom/tutusw/phonespeedup/Widget;->updateViews:Landroid/widget/RemoteViews;

    const v4, 0x7f080095

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/tutusw/phonespeedup/Widget;->readFrequency()I

    move-result v6

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

    .line 54
    :cond_0
    const-string v3, "Speedup"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/tutusw/phonespeedup/Widget;->settings:Landroid/content/SharedPreferences;

    .line 56
    iget-object v3, p0, Lcom/tutusw/phonespeedup/Widget;->settings:Landroid/content/SharedPreferences;

    const-string v4, "widgetTempSensor"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 57
    invoke-direct {p0}, Lcom/tutusw/phonespeedup/Widget;->getTempSensor()I

    move-result v3

    iput v3, p0, Lcom/tutusw/phonespeedup/Widget;->temp:I

    .line 63
    :goto_0
    iget-object v3, p0, Lcom/tutusw/phonespeedup/Widget;->settings:Landroid/content/SharedPreferences;

    const-string v4, "widgetTemp"

    const/4 v5, 0x2

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 65
    .local v1, "t":I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 66
    const-wide/high16 v3, 0x4074000000000000L    # 320.0

    const-wide v5, 0x3ffccccccccccccdL    # 1.8

    iget v7, p0, Lcom/tutusw/phonespeedup/Widget;->temp:I

    int-to-double v7, v7

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-int v2, v3

    .line 67
    .local v2, "tempf":I
    iget v3, p0, Lcom/tutusw/phonespeedup/Widget;->temp:I

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/high16 v4, 0x41200000    # 10.0f

    div-float/2addr v3, v4

    iput v3, p0, Lcom/tutusw/phonespeedup/Widget;->c:F

    .line 68
    int-to-float v3, v2

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/high16 v4, 0x41200000    # 10.0f

    div-float/2addr v3, v4

    iput v3, p0, Lcom/tutusw/phonespeedup/Widget;->f:F

    .line 69
    iget-object v3, p0, Lcom/tutusw/phonespeedup/Widget;->updateViews:Landroid/widget/RemoteViews;

    const v4, 0x7f08009a

    new-instance v5, Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/tutusw/phonespeedup/Widget;->c:F

    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\u00b0C"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 70
    iget-object v3, p0, Lcom/tutusw/phonespeedup/Widget;->updateViews:Landroid/widget/RemoteViews;

    const v4, 0x7f08009b

    new-instance v5, Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/tutusw/phonespeedup/Widget;->f:F

    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\u00b0F"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 84
    .end local v2    # "tempf":I
    :cond_1
    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/tutusw/phonespeedup/Setcpu;

    invoke-direct {v0, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    .local v0, "i":Landroid/content/Intent;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p1, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Lcom/tutusw/phonespeedup/Widget;->pendingIntent:Landroid/app/PendingIntent;

    .line 87
    iget-object v3, p0, Lcom/tutusw/phonespeedup/Widget;->updateViews:Landroid/widget/RemoteViews;

    const v4, 0x7f080093

    iget-object v5, p0, Lcom/tutusw/phonespeedup/Widget;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 88
    iget-object v3, p0, Lcom/tutusw/phonespeedup/Widget;->updateViews:Landroid/widget/RemoteViews;

    invoke-virtual {p2, p3, v3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 90
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 91
    return-void

    .line 60
    .end local v0    # "i":Landroid/content/Intent;
    .end local v1    # "t":I
    :cond_2
    invoke-direct {p0}, Lcom/tutusw/phonespeedup/Widget;->getBatteryTemp()I

    move-result v3

    iput v3, p0, Lcom/tutusw/phonespeedup/Widget;->temp:I

    goto/16 :goto_0

    .line 73
    .restart local v1    # "t":I
    :cond_3
    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    .line 74
    const-wide/high16 v3, 0x4074000000000000L    # 320.0

    const-wide v5, 0x3ffccccccccccccdL    # 1.8

    iget v7, p0, Lcom/tutusw/phonespeedup/Widget;->temp:I

    int-to-double v7, v7

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-int v2, v3

    .line 75
    .restart local v2    # "tempf":I
    int-to-float v3, v2

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/high16 v4, 0x41200000    # 10.0f

    div-float/2addr v3, v4

    iput v3, p0, Lcom/tutusw/phonespeedup/Widget;->f:F

    .line 76
    iget-object v3, p0, Lcom/tutusw/phonespeedup/Widget;->updateViews:Landroid/widget/RemoteViews;

    const v4, 0x7f08009d

    new-instance v5, Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/tutusw/phonespeedup/Widget;->f:F

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

    .line 79
    .end local v2    # "tempf":I
    :cond_4
    if-nez v1, :cond_1

    .line 80
    iget v3, p0, Lcom/tutusw/phonespeedup/Widget;->temp:I

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/high16 v4, 0x41200000    # 10.0f

    div-float/2addr v3, v4

    iput v3, p0, Lcom/tutusw/phonespeedup/Widget;->c:F

    .line 81
    iget-object v3, p0, Lcom/tutusw/phonespeedup/Widget;->updateViews:Landroid/widget/RemoteViews;

    const v4, 0x7f08009c

    new-instance v5, Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/tutusw/phonespeedup/Widget;->c:F

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
