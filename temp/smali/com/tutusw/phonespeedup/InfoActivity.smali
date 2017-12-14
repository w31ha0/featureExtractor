.class public Lcom/tutusw/phonespeedup/InfoActivity;
.super Landroid/app/Activity;
.source "InfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tutusw/phonespeedup/InfoActivity$Benchmark;,
        Lcom/tutusw/phonespeedup/InfoActivity$Benchmark2;,
        Lcom/tutusw/phonespeedup/InfoActivity$clicker;
    }
.end annotation


# instance fields
.field autorefresh:Z

.field benchmark:Landroid/widget/Button;

.field c:F

.field clicker:Lcom/tutusw/phonespeedup/InfoActivity$clicker;

.field clipboard:Landroid/text/ClipboardManager;

.field context:Landroid/content/Context;

.field cpuTemp:Ljava/lang/String;

.field cpuinfo:Ljava/lang/String;

.field f:F

.field handler:Landroid/os/Handler;

.field in:Ljava/io/DataInputStream;

.field infotext:Landroid/widget/TextView;

.field level:I

.field line:Ljava/lang/String;

.field lines:Ljava/lang/String;

.field longbenchmark:Landroid/widget/Button;

.field mSensorManager:Landroid/hardware/SensorManager;

.field omapTemp:Ljava/lang/String;

.field omapTempC:F

.field omapTempF:F

.field pd:Landroid/app/ProgressDialog;

.field refreshCounter:Ljava/lang/Runnable;

.field sensorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field settings:Landroid/content/SharedPreferences;

.field stresstest:Landroid/widget/Button;

.field temp:I

.field tempf:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    new-instance v0, Lcom/tutusw/phonespeedup/InfoActivity$clicker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tutusw/phonespeedup/InfoActivity$clicker;-><init>(Lcom/tutusw/phonespeedup/InfoActivity;Lcom/tutusw/phonespeedup/InfoActivity$clicker;)V

    iput-object v0, p0, Lcom/tutusw/phonespeedup/InfoActivity;->clicker:Lcom/tutusw/phonespeedup/InfoActivity$clicker;

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tutusw/phonespeedup/InfoActivity;->handler:Landroid/os/Handler;

    .line 32
    return-void
.end method

.method static synthetic access$0(Lcom/tutusw/phonespeedup/InfoActivity;I)V
    .locals 0

    .prologue
    .line 220
    invoke-direct {p0, p1}, Lcom/tutusw/phonespeedup/InfoActivity;->runBenchmark(I)V

    return-void
.end method

.method static synthetic access$1(Lcom/tutusw/phonespeedup/InfoActivity;I)V
    .locals 0

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/tutusw/phonespeedup/InfoActivity;->runBenchmark2(I)V

    return-void
.end method

.method static synthetic access$2(Lcom/tutusw/phonespeedup/InfoActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 215
    invoke-direct {p0, p1}, Lcom/tutusw/phonespeedup/InfoActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lcom/tutusw/phonespeedup/InfoActivity;Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/tutusw/phonespeedup/InfoActivity;->launchClass(Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$4(Lcom/tutusw/phonespeedup/InfoActivity;I)V
    .locals 0

    .prologue
    .line 329
    invoke-direct {p0, p1}, Lcom/tutusw/phonespeedup/InfoActivity;->benchResults(I)V

    return-void
.end method

.method static synthetic access$5(Lcom/tutusw/phonespeedup/InfoActivity;)V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/tutusw/phonespeedup/InfoActivity;->setInfo()V

    return-void
.end method

.method private benchResults(I)V
    .locals 6
    .param p1, "finalTime"    # I

    .prologue
    const/4 v4, 0x1

    const-string v5, "\u91c7\u53d6\u6807\u51c6\u57fa\u51c6\u6d4b\u8bd5 "

    .line 330
    const-string v1, "Speedup"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u91c7\u53d6\u6807\u51c6\u57fa\u51c6\u6d4b\u8bd5 "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 332
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\u6beb\u79d2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u91c7\u53d6\u6807\u51c6\u57fa\u51c6\u6d4b\u8bd5 "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u6beb\u79d2\u3002\n\u8d8a\u4f4e\u8d8a\u5feb\u3002"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 334
    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/tutusw/phonespeedup/InfoActivity$2;

    invoke-direct {v2, p0}, Lcom/tutusw/phonespeedup/InfoActivity$2;-><init>(Lcom/tutusw/phonespeedup/InfoActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 338
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 339
    iget-object v1, p0, Lcom/tutusw/phonespeedup/InfoActivity;->settings:Landroid/content/SharedPreferences;

    const-string v2, "autorefresh"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 341
    iput-boolean v4, p0, Lcom/tutusw/phonespeedup/InfoActivity;->autorefresh:Z

    .line 342
    iget-object v1, p0, Lcom/tutusw/phonespeedup/InfoActivity;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/tutusw/phonespeedup/InfoActivity;->refreshCounter:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 346
    :goto_0
    return-void

    .line 344
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tutusw/phonespeedup/InfoActivity;->autorefresh:Z

    goto :goto_0
.end method

.method private getBatteryLevel()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 200
    const/4 v1, 0x0

    .line 201
    .local v1, "read":Ljava/lang/String;
    const-string v2, "/sys/class/power_supply/battery/capacity"

    invoke-direct {p0, v2}, Lcom/tutusw/phonespeedup/InfoActivity;->readInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 203
    if-eqz v1, :cond_0

    :try_start_0
    const-string v2, ""

    if-eq v1, v2, :cond_0

    .line 204
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 211
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 207
    goto :goto_0

    .line 210
    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, "e":Ljava/lang/Exception;
    move v2, v3

    .line 211
    goto :goto_0
.end method

.method private getBatteryTemp()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    const-string v4, ""

    .line 181
    const/4 v1, 0x0

    .line 182
    .local v1, "read":Ljava/lang/String;
    const-string v2, "/sys/class/power_supply/battery/temp"

    invoke-direct {p0, v2}, Lcom/tutusw/phonespeedup/InfoActivity;->readInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 183
    if-eqz v1, :cond_0

    const-string v2, ""

    if-ne v1, v4, :cond_1

    .line 184
    :cond_0
    const-string v2, "/sys/class/power_supply/battery/batt_temp"

    invoke-direct {p0, v2}, Lcom/tutusw/phonespeedup/InfoActivity;->readInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 187
    :cond_1
    if-eqz v1, :cond_2

    :try_start_0
    const-string v2, ""

    if-eq v1, v4, :cond_2

    .line 188
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 195
    :goto_0
    return v2

    :cond_2
    move v2, v3

    .line 191
    goto :goto_0

    .line 194
    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, "e":Ljava/lang/Exception;
    move v2, v3

    .line 195
    goto :goto_0
.end method

.method private launchClass(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 116
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/tutusw/phonespeedup/InfoActivity;->startActivity(Landroid/content/Intent;)V

    .line 117
    return-void
.end method

.method private readInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 158
    iput-object v5, p0, Lcom/tutusw/phonespeedup/InfoActivity;->in:Ljava/io/DataInputStream;

    .line 159
    const/4 v1, 0x0

    .line 160
    .local v1, "line":Ljava/lang/String;
    const-string v2, ""

    .line 162
    .local v2, "lines":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v3, p0, Lcom/tutusw/phonespeedup/InfoActivity;->in:Ljava/io/DataInputStream;

    .line 163
    :goto_0
    iget-object v3, p0, Lcom/tutusw/phonespeedup/InfoActivity;->in:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_0

    .line 172
    :try_start_1
    iget-object v3, p0, Lcom/tutusw/phonespeedup/InfoActivity;->in:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 177
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    :goto_1
    return-object v3

    .line 164
    :cond_0
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 167
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 172
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    iget-object v3, p0, Lcom/tutusw/phonespeedup/InfoActivity;->in:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v3, v5

    .line 168
    goto :goto_1

    .line 173
    :catch_1
    move-exception v3

    move-object v0, v3

    move-object v3, v5

    .line 174
    goto :goto_1

    .line 170
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 172
    :try_start_4
    iget-object v4, p0, Lcom/tutusw/phonespeedup/InfoActivity;->in:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 176
    throw v3

    .line 173
    :catch_2
    move-exception v3

    move-object v0, v3

    .restart local v0    # "e":Ljava/lang/Exception;
    move-object v3, v5

    .line 174
    goto :goto_1

    .line 173
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v3

    move-object v0, v3

    .restart local v0    # "e":Ljava/lang/Exception;
    move-object v3, v5

    .line 174
    goto :goto_1
.end method

.method private runBenchmark(I)V
    .locals 5
    .param p1, "cycles"    # I

    .prologue
    .line 221
    const-string v1, "\u8bf7\u7a0d\u7b49"

    const-string v2, "\u6b63\u5728\u8fdb\u884c\u57fa\u51c6\u6d4b\u8bd5..."

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {p0, v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/tutusw/phonespeedup/InfoActivity;->pd:Landroid/app/ProgressDialog;

    .line 223
    new-instance v0, Lcom/tutusw/phonespeedup/InfoActivity$Benchmark;

    invoke-direct {v0, p0, p1}, Lcom/tutusw/phonespeedup/InfoActivity$Benchmark;-><init>(Lcom/tutusw/phonespeedup/InfoActivity;I)V

    .line 224
    .local v0, "bench":Lcom/tutusw/phonespeedup/InfoActivity$Benchmark;
    return-void
.end method

.method private runBenchmark2(I)V
    .locals 5
    .param p1, "cycles"    # I

    .prologue
    .line 227
    const-string v1, "\u8bf7\u7a0d\u7b49"

    const-string v2, "\u6b63\u5728\u8fdb\u884c\u57fa\u51c6\u6d4b\u8bd5..."

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {p0, v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/tutusw/phonespeedup/InfoActivity;->pd:Landroid/app/ProgressDialog;

    .line 229
    new-instance v0, Lcom/tutusw/phonespeedup/InfoActivity$Benchmark2;

    invoke-direct {v0, p0, p1}, Lcom/tutusw/phonespeedup/InfoActivity$Benchmark2;-><init>(Lcom/tutusw/phonespeedup/InfoActivity;I)V

    .line 230
    .local v0, "bench":Lcom/tutusw/phonespeedup/InfoActivity$Benchmark2;
    return-void
.end method

.method private setInfo()V
    .locals 9

    .prologue
    const/16 v7, 0xa

    const/high16 v6, 0x41200000    # 10.0f

    const-wide v4, 0x3ffccccccccccccdL    # 1.8

    const-string v8, "\u00b0 C ("

    const-string v2, ""

    .line 121
    const-string v0, "/proc/cpuinfo"

    invoke-direct {p0, v0}, Lcom/tutusw/phonespeedup/InfoActivity;->readInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tutusw/phonespeedup/InfoActivity;->cpuinfo:Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lcom/tutusw/phonespeedup/InfoActivity;->infotext:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    const-string v0, "/sys/class/hwmon/hwmon0/device/temp1_input"

    invoke-static {v0, v7}, Lcom/tutusw/phonespeedup/Io;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tutusw/phonespeedup/InfoActivity;->omapTemp:Ljava/lang/String;

    .line 131
    const-string v0, ""

    iput-object v2, p0, Lcom/tutusw/phonespeedup/InfoActivity;->cpuTemp:Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lcom/tutusw/phonespeedup/InfoActivity;->omapTemp:Ljava/lang/String;

    const-string v1, ""

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/tutusw/phonespeedup/InfoActivity;->omapTemp:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/tutusw/phonespeedup/InfoActivity;->omapTemp:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/tutusw/phonespeedup/InfoActivity;->omapTempC:F

    .line 135
    const-wide/high16 v0, 0x4040000000000000L    # 32.0

    iget-object v2, p0, Lcom/tutusw/phonespeedup/InfoActivity;->omapTemp:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/tutusw/phonespeedup/InfoActivity;->omapTempF:F

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\nOMAP3 \u6e29\u5ea6\u4f20\u611f\u5668: \u88ab\u68c0\u6d4b\u5230\nOMAP3 \u6e29\u5ea6: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/tutusw/phonespeedup/InfoActivity;->omapTempC:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u00b0 C ("

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tutusw/phonespeedup/InfoActivity;->omapTempF:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u00b0 F)\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tutusw/phonespeedup/InfoActivity;->cpuTemp:Ljava/lang/String;

    .line 140
    :cond_0
    invoke-direct {p0}, Lcom/tutusw/phonespeedup/InfoActivity;->getBatteryTemp()I

    move-result v0

    iput v0, p0, Lcom/tutusw/phonespeedup/InfoActivity;->temp:I

    .line 141
    const-wide/high16 v0, 0x4074000000000000L    # 320.0

    iget v2, p0, Lcom/tutusw/phonespeedup/InfoActivity;->temp:I

    int-to-double v2, v2

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/tutusw/phonespeedup/InfoActivity;->tempf:I

    .line 143
    iget v0, p0, Lcom/tutusw/phonespeedup/InfoActivity;->temp:I

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    div-float/2addr v0, v6

    iput v0, p0, Lcom/tutusw/phonespeedup/InfoActivity;->c:F

    .line 144
    iget v0, p0, Lcom/tutusw/phonespeedup/InfoActivity;->tempf:I

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    div-float/2addr v0, v6

    iput v0, p0, Lcom/tutusw/phonespeedup/InfoActivity;->f:F

    .line 146
    invoke-direct {p0}, Lcom/tutusw/phonespeedup/InfoActivity;->getBatteryLevel()I

    move-result v0

    iput v0, p0, Lcom/tutusw/phonespeedup/InfoActivity;->level:I

    .line 147
    iget-object v0, p0, Lcom/tutusw/phonespeedup/InfoActivity;->infotext:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tutusw/phonespeedup/InfoActivity;->infotext:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Kernel\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/proc/version"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/tutusw/phonespeedup/Io;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 148
    const-string v2, "\n\u7535\u6c60\n\u7535\u6c60\u6e29\u5ea6: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tutusw/phonespeedup/InfoActivity;->c:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u00b0 C ("

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tutusw/phonespeedup/InfoActivity;->f:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u00b0 F)\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u7535\u6c60\u7ea7\u522b: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 149
    iget v2, p0, Lcom/tutusw/phonespeedup/InfoActivity;->level:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tutusw/phonespeedup/InfoActivity;->cpuTemp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nCPU\n\u9891\u7387: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 150
    const-string v2, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq"

    invoke-static {v2, v7}, Lcom/tutusw/phonespeedup/Io;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 151
    const-string v2, " kHz\n\u5e73\u5747\u8377\u8f7d: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/proc/loadavg"

    invoke-direct {p0, v2}, Lcom/tutusw/phonespeedup/InfoActivity;->readInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tutusw/phonespeedup/InfoActivity;->cpuinfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n\u65f6\u95f4\u72b6\u6001\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 152
    const-string v2, "/sys/devices/system/cpu/cpu0/cpufreq/stats/time_in_state"

    invoke-direct {p0, v2}, Lcom/tutusw/phonespeedup/InfoActivity;->readInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n\u5185\u5b58\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 153
    const-string v2, "/proc/meminfo"

    invoke-direct {p0, v2}, Lcom/tutusw/phonespeedup/InfoActivity;->readInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 147
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 216
    iget-object v1, p0, Lcom/tutusw/phonespeedup/InfoActivity;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 217
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 218
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0, v2}, Lcom/tutusw/phonespeedup/InfoActivity;->requestWindowFeature(I)Z

    .line 57
    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/tutusw/phonespeedup/InfoActivity;->setContentView(I)V

    .line 58
    const v0, 0x7f08005b

    invoke-virtual {p0, v0}, Lcom/tutusw/phonespeedup/InfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tutusw/phonespeedup/InfoActivity;->infotext:Landroid/widget/TextView;

    .line 59
    const v0, 0x7f080058

    invoke-virtual {p0, v0}, Lcom/tutusw/phonespeedup/InfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tutusw/phonespeedup/InfoActivity;->benchmark:Landroid/widget/Button;

    .line 60
    const v0, 0x7f080059

    invoke-virtual {p0, v0}, Lcom/tutusw/phonespeedup/InfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tutusw/phonespeedup/InfoActivity;->longbenchmark:Landroid/widget/Button;

    .line 61
    const v0, 0x7f08005a

    invoke-virtual {p0, v0}, Lcom/tutusw/phonespeedup/InfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tutusw/phonespeedup/InfoActivity;->stresstest:Landroid/widget/Button;

    .line 63
    iget-object v0, p0, Lcom/tutusw/phonespeedup/InfoActivity;->benchmark:Landroid/widget/Button;

    iget-object v1, p0, Lcom/tutusw/phonespeedup/InfoActivity;->clicker:Lcom/tutusw/phonespeedup/InfoActivity$clicker;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v0, p0, Lcom/tutusw/phonespeedup/InfoActivity;->longbenchmark:Landroid/widget/Button;

    iget-object v1, p0, Lcom/tutusw/phonespeedup/InfoActivity;->clicker:Lcom/tutusw/phonespeedup/InfoActivity$clicker;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v0, p0, Lcom/tutusw/phonespeedup/InfoActivity;->stresstest:Landroid/widget/Button;

    iget-object v1, p0, Lcom/tutusw/phonespeedup/InfoActivity;->clicker:Lcom/tutusw/phonespeedup/InfoActivity$clicker;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    invoke-virtual {p0}, Lcom/tutusw/phonespeedup/InfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tutusw/phonespeedup/InfoActivity;->context:Landroid/content/Context;

    .line 69
    iget-object v0, p0, Lcom/tutusw/phonespeedup/InfoActivity;->context:Landroid/content/Context;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    iput-object v0, p0, Lcom/tutusw/phonespeedup/InfoActivity;->clipboard:Landroid/text/ClipboardManager;

    .line 71
    new-instance v0, Lcom/tutusw/phonespeedup/InfoActivity$1;

    invoke-direct {v0, p0}, Lcom/tutusw/phonespeedup/InfoActivity$1;-><init>(Lcom/tutusw/phonespeedup/InfoActivity;)V

    iput-object v0, p0, Lcom/tutusw/phonespeedup/InfoActivity;->refreshCounter:Ljava/lang/Runnable;

    .line 80
    const-string v0, "Speedup"

    invoke-virtual {p0, v0, v3}, Lcom/tutusw/phonespeedup/InfoActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/tutusw/phonespeedup/InfoActivity;->settings:Landroid/content/SharedPreferences;

    .line 81
    iget-object v0, p0, Lcom/tutusw/phonespeedup/InfoActivity;->settings:Landroid/content/SharedPreferences;

    const-string v1, "autorefresh"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 83
    iput-boolean v2, p0, Lcom/tutusw/phonespeedup/InfoActivity;->autorefresh:Z

    .line 84
    iget-object v0, p0, Lcom/tutusw/phonespeedup/InfoActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tutusw/phonespeedup/InfoActivity;->refreshCounter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 88
    :goto_0
    invoke-direct {p0}, Lcom/tutusw/phonespeedup/InfoActivity;->setInfo()V

    .line 90
    return-void

    .line 86
    :cond_0
    iput-boolean v3, p0, Lcom/tutusw/phonespeedup/InfoActivity;->autorefresh:Z

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x0

    .line 350
    const-string v0, "\u590d\u5236\u5230\u526a\u8d34\u677f"

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const/high16 v1, 0x7f020000

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 351
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 381
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 382
    iget-object v0, p0, Lcom/tutusw/phonespeedup/InfoActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tutusw/phonespeedup/InfoActivity;->refreshCounter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 383
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 356
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 362
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 359
    :pswitch_0
    iget-object v0, p0, Lcom/tutusw/phonespeedup/InfoActivity;->clipboard:Landroid/text/ClipboardManager;

    iget-object v1, p0, Lcom/tutusw/phonespeedup/InfoActivity;->infotext:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 360
    const/4 v0, 0x1

    goto :goto_0

    .line 356
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 367
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 368
    iget-object v0, p0, Lcom/tutusw/phonespeedup/InfoActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tutusw/phonespeedup/InfoActivity;->refreshCounter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 369
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 373
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 374
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/tutusw/phonespeedup/InfoActivity;->setRequestedOrientation(I)V

    .line 375
    iget-object v0, p0, Lcom/tutusw/phonespeedup/InfoActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tutusw/phonespeedup/InfoActivity;->refreshCounter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 376
    iget-object v0, p0, Lcom/tutusw/phonespeedup/InfoActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tutusw/phonespeedup/InfoActivity;->refreshCounter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 377
    return-void
.end method
