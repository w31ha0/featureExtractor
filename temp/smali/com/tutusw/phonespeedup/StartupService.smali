.class public Lcom/tutusw/phonespeedup/StartupService;
.super Landroid/app/Service;
.source "StartupService.java"


# instance fields
.field currentGovernor:Ljava/lang/String;

.field public defaultMax:I

.field public defaultMin:I

.field freq:[I

.field freqText:[Ljava/lang/String;

.field process:Ljava/lang/Process;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public chmod()V
    .locals 3

    .prologue
    .line 221
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "su"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    iput-object v1, p0, Lcom/tutusw/phonespeedup/StartupService;->process:Ljava/lang/Process;

    .line 222
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lcom/tutusw/phonespeedup/StartupService;->process:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 224
    .local v0, "os":Ljava/io/DataOutputStream;
    const-string v1, "chmod 777 /sys/devices/system/cpu/cpu0/cpufreq/\n"

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 225
    const-string v1, "chmod 666 /sys/devices/system/cpu/cpu0/cpufreq/*\n"

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 226
    const-string v1, "exit\n"

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 228
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 229
    iget-object v1, p0, Lcom/tutusw/phonespeedup/StartupService;->process:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    .line 230
    iget-object v1, p0, Lcom/tutusw/phonespeedup/StartupService;->process:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    .end local v0    # "os":Ljava/io/DataOutputStream;
    :goto_0
    return-void

    .line 233
    :catch_0
    move-exception v1

    goto :goto_0

    .line 231
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public chmodGovernor()V
    .locals 3

    .prologue
    .line 240
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "su"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    iput-object v1, p0, Lcom/tutusw/phonespeedup/StartupService;->process:Ljava/lang/Process;

    .line 241
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lcom/tutusw/phonespeedup/StartupService;->process:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 243
    .local v0, "os":Ljava/io/DataOutputStream;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "chmod 777 /sys/devices/system/cpu/cpu0/cpufreq/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tutusw/phonespeedup/StartupService;->currentGovernor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "chmod 666 /sys/devices/system/cpu/cpu0/cpufreq/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tutusw/phonespeedup/StartupService;->currentGovernor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/*\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 245
    const-string v1, "exit\n"

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 247
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 248
    iget-object v1, p0, Lcom/tutusw/phonespeedup/StartupService;->process:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    .line 249
    iget-object v1, p0, Lcom/tutusw/phonespeedup/StartupService;->process:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    .end local v0    # "os":Ljava/io/DataOutputStream;
    :goto_0
    return-void

    .line 252
    :catch_0
    move-exception v1

    goto :goto_0

    .line 250
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public convertIntArray([I)[Ljava/lang/String;
    .locals 4
    .param p1, "sarray"    # [I

    .prologue
    .line 305
    if-eqz p1, :cond_1

    .line 306
    array-length v2, p1

    new-array v1, v2, [Ljava/lang/String;

    .line 307
    .local v1, "intarray":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_0

    move-object v2, v1

    .line 312
    .end local v0    # "i":I
    .end local v1    # "intarray":[Ljava/lang/String;
    :goto_1
    return-object v2

    .line 308
    .restart local v0    # "i":I
    .restart local v1    # "intarray":[Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 307
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 312
    .end local v0    # "i":I
    .end local v1    # "intarray":[Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public convertStringArray([Ljava/lang/String;)[I
    .locals 3
    .param p1, "sarray"    # [Ljava/lang/String;

    .prologue
    .line 294
    if-eqz p1, :cond_1

    .line 295
    array-length v2, p1

    new-array v1, v2, [I

    .line 296
    .local v1, "intarray":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_0

    move-object v2, v1

    .line 301
    .end local v0    # "i":I
    .end local v1    # "intarray":[I
    :goto_1
    return-object v2

    .line 297
    .restart local v0    # "i":I
    .restart local v1    # "intarray":[I
    :cond_0
    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v0

    .line 296
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 301
    .end local v0    # "i":I
    .end local v1    # "intarray":[I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getIndex(I)I
    .locals 2
    .param p1, "f"    # I

    .prologue
    .line 258
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/tutusw/phonespeedup/StartupService;->freq:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 263
    const/4 v1, -0x1

    :goto_1
    return v1

    .line 259
    :cond_0
    iget-object v1, p0, Lcom/tutusw/phonespeedup/StartupService;->freq:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_1

    move v1, v0

    .line 260
    goto :goto_1

    .line 258
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 23

    .prologue
    .line 35
    invoke-super/range {p0 .. p0}, Landroid/app/Service;->onDestroy()V

    .line 37
    const-string v4, "Speedup"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/tutusw/phonespeedup/StartupService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v21

    .line 39
    .local v21, "settings":Landroid/content/SharedPreferences;
    const-string v4, "device"

    const-string v5, "htc_msm"

    move-object/from16 v0, v21

    move-object v1, v4

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 40
    .local v14, "device":Ljava/lang/String;
    new-instance v13, Lcom/tutusw/phonespeedup/Constants;

    invoke-direct {v13, v14}, Lcom/tutusw/phonespeedup/Constants;-><init>(Ljava/lang/String;)V

    .line 42
    .local v13, "constants":Lcom/tutusw/phonespeedup/Constants;
    const-string v4, "custom"

    invoke-virtual {v14, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 44
    :try_start_0
    const-string v4, "Speedup"

    const-string v5, "\u81ea\u5b9a\u4e49\u914d\u7f6e"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const/16 v20, 0x0

    .line 46
    .local v20, "read":Ljava/lang/String;
    const-string v4, "/sdcard/Speedup.txt"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/tutusw/phonespeedup/StartupService;->readInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 48
    if-eqz v20, :cond_0

    const-string v4, ""

    move-object/from16 v0, v20

    move-object v1, v4

    if-ne v0, v1, :cond_1

    .line 49
    :cond_0
    const-string v4, "/system/sd/Speedup.txt"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/tutusw/phonespeedup/StartupService;->readInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 51
    :cond_1
    if-eqz v20, :cond_2

    const-string v4, ""

    move-object/from16 v0, v20

    move-object v1, v4

    if-ne v0, v1, :cond_3

    .line 52
    :cond_2
    const-string v4, "/system/Speedup"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/tutusw/phonespeedup/StartupService;->readInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 54
    :cond_3
    if-eqz v20, :cond_4

    const-string v4, ""

    move-object/from16 v0, v20

    move-object v1, v4

    if-ne v0, v1, :cond_5

    .line 55
    :cond_4
    const-string v4, "/data/local/Speedup"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/tutusw/phonespeedup/StartupService;->readInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 57
    :cond_5
    if-eqz v20, :cond_d

    const-string v4, ""

    move-object/from16 v0, v20

    move-object v1, v4

    if-eq v0, v1, :cond_d

    .line 58
    const-string v4, "Speedup"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u81ea\u5b9a\u4e49\u9891\u7387\u901f\u5ea6\u88ab\u68c0\u6d4b\u5230: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tutusw/phonespeedup/StartupService;->freqText:[Ljava/lang/String;

    .line 61
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/StartupService;->freqText:[Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/tutusw/phonespeedup/StartupService;->convertStringArray([Ljava/lang/String;)[I

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tutusw/phonespeedup/StartupService;->freq:[I

    .line 63
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/StartupService;->freq:[I

    move-object v4, v0

    invoke-static {v4}, Ljava/util/Arrays;->sort([I)V

    .line 65
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/StartupService;->freq:[I

    move-object v4, v0

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/tutusw/phonespeedup/StartupService;->convertIntArray([I)[Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tutusw/phonespeedup/StartupService;->freqText:[Ljava/lang/String;

    .line 67
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/StartupService;->freq:[I

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/StartupService;->freq:[I

    move-object v5, v0

    array-length v5, v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    aget v4, v4, v5

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tutusw/phonespeedup/StartupService;->defaultMax:I

    .line 68
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/StartupService;->freq:[I

    move-object v4, v0

    const/4 v5, 0x0

    aget v4, v4, v5

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tutusw/phonespeedup/StartupService;->defaultMin:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .end local v20    # "read":Ljava/lang/String;
    :cond_6
    :goto_0
    const-string v4, "custom"

    invoke-virtual {v14, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "\u81ea\u52a8\u68c0\u6d4b"

    invoke-virtual {v14, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 109
    invoke-virtual {v13}, Lcom/tutusw/phonespeedup/Constants;->getFreq()[I

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tutusw/phonespeedup/StartupService;->freq:[I

    .line 110
    invoke-virtual {v13}, Lcom/tutusw/phonespeedup/Constants;->getFreqText()[Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tutusw/phonespeedup/StartupService;->freqText:[Ljava/lang/String;

    .line 111
    invoke-virtual {v13}, Lcom/tutusw/phonespeedup/Constants;->getDefaultMax()I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tutusw/phonespeedup/StartupService;->defaultMax:I

    .line 112
    invoke-virtual {v13}, Lcom/tutusw/phonespeedup/Constants;->getDefaultMin()I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tutusw/phonespeedup/StartupService;->defaultMin:I

    .line 115
    :cond_7
    const-string v4, "stringGovernor"

    const-string v5, "ondemand"

    move-object/from16 v0, v21

    move-object v1, v4

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 116
    .local v18, "governor":Ljava/lang/String;
    const-string v4, "advancedBoot"

    const/4 v5, 0x0

    move-object/from16 v0, v21

    move-object v1, v4

    move v2, v5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 117
    .local v12, "advancedBoot":Z
    const-string v4, "startBoot"

    const/4 v5, 0x0

    move-object/from16 v0, v21

    move-object v1, v4

    move v2, v5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v22

    .line 119
    .local v22, "startBoot":I
    if-nez v12, :cond_8

    const/4 v4, 0x1

    move/from16 v0, v22

    move v1, v4

    if-ne v0, v1, :cond_9

    .line 120
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/tutusw/phonespeedup/StartupService;->chmod()V

    .line 124
    :cond_9
    const/4 v4, 0x1

    move/from16 v0, v22

    move v1, v4

    if-ne v0, v1, :cond_a

    .line 125
    const-string v4, "max"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tutusw/phonespeedup/StartupService;->defaultMax:I

    move v5, v0

    move-object/from16 v0, v21

    move-object v1, v4

    move v2, v5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 126
    .local v16, "f":I
    const-string v4, "min"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tutusw/phonespeedup/StartupService;->defaultMin:I

    move v5, v0

    move-object/from16 v0, v21

    move-object v1, v4

    move v2, v5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v17

    .line 127
    .local v17, "g":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/tutusw/phonespeedup/StartupService;->setSettings(IILjava/lang/String;)V

    .line 131
    .end local v16    # "f":I
    .end local v17    # "g":I
    :cond_a
    const-string v4, "profilesOn"

    const/4 v5, 0x0

    move-object/from16 v0, v21

    move-object v1, v4

    move v2, v5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 132
    new-instance v19, Landroid/content/Intent;

    const-class v4, Lcom/tutusw/phonespeedup/ProfilesService;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 133
    .local v19, "i":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tutusw/phonespeedup/StartupService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 136
    .end local v19    # "i":Landroid/content/Intent;
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/tutusw/phonespeedup/StartupService;->readGovernor()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tutusw/phonespeedup/StartupService;->currentGovernor:Ljava/lang/String;

    .line 137
    if-eqz v12, :cond_c

    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/tutusw/phonespeedup/StartupService;->chmodGovernor()V

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/StartupService;->currentGovernor:Ljava/lang/String;

    move-object v4, v0

    const-string v5, "ondemand"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 140
    const-string v4, "sampling_rate_long"

    const-wide/16 v5, 0x4e20

    move-object/from16 v0, v21

    move-object v1, v4

    move-wide v2, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    const-string v4, "up_threshold"

    const/16 v7, 0x56

    move-object/from16 v0, v21

    move-object v1, v4

    move v2, v7

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    const-string v4, "ignore_nice_load"

    const/4 v8, 0x0

    move-object/from16 v0, v21

    move-object v1, v4

    move v2, v8

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    const-string v4, "powersave_bias"

    const/4 v9, 0x0

    move-object/from16 v0, v21

    move-object v1, v4

    move v2, v9

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/tutusw/phonespeedup/StartupService;->writeOndemand(JIII)Z

    .line 147
    :cond_c
    :goto_1
    return-void

    .line 71
    .end local v12    # "advancedBoot":Z
    .end local v18    # "governor":Ljava/lang/String;
    .end local v22    # "startBoot":I
    .restart local v20    # "read":Ljava/lang/String;
    :cond_d
    :try_start_1
    const-string v4, "Speedup"

    const-string v5, "\u8bfb\u53d6\u81ea\u5b9a\u4e49\u914d\u7f6e\u9519\u8bef"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const-string v14, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 74
    .end local v20    # "read":Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v15, v4

    .line 75
    .local v15, "e":Ljava/lang/Exception;
    const-string v4, "Speedup"

    const-string v5, "\u8bfb\u53d6\u81ea\u5b9a\u4e49\u914d\u7f6e\u9519\u8bef"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const-string v14, ""

    goto/16 :goto_0

    .line 80
    .end local v15    # "e":Ljava/lang/Exception;
    :cond_e
    const-string v4, "\u81ea\u52a8\u68c0\u6d4b"

    invoke-virtual {v14, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 83
    :try_start_2
    const-string v4, "Speedup"

    const-string v5, "\u6b63\u5728\u81ea\u52a8\u68c0\u6d4b\u9891\u7387\u901f\u5ea6"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const/16 v20, 0x0

    .line 85
    .restart local v20    # "read":Ljava/lang/String;
    const-string v4, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_frequencies"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/tutusw/phonespeedup/StartupService;->readInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 86
    if-eqz v20, :cond_f

    .line 87
    const-string v4, "Speedup"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u9891\u7387\u901f\u5ea6\u88ab\u81ea\u52a8\u68c0\u6d4b\u5230: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const-string v4, " "

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tutusw/phonespeedup/StartupService;->freqText:[Ljava/lang/String;

    .line 91
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/StartupService;->freqText:[Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/tutusw/phonespeedup/StartupService;->convertStringArray([Ljava/lang/String;)[I

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tutusw/phonespeedup/StartupService;->freq:[I

    .line 93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/StartupService;->freq:[I

    move-object v4, v0

    invoke-static {v4}, Ljava/util/Arrays;->sort([I)V

    .line 95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/StartupService;->freq:[I

    move-object v4, v0

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/tutusw/phonespeedup/StartupService;->convertIntArray([I)[Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tutusw/phonespeedup/StartupService;->freqText:[Ljava/lang/String;

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/StartupService;->freq:[I

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/StartupService;->freq:[I

    move-object v5, v0

    array-length v5, v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    aget v4, v4, v5

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tutusw/phonespeedup/StartupService;->defaultMax:I

    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/StartupService;->freq:[I

    move-object v4, v0

    const/4 v5, 0x0

    aget v4, v4, v5

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tutusw/phonespeedup/StartupService;->defaultMin:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 103
    .end local v20    # "read":Ljava/lang/String;
    :catch_1
    move-exception v4

    move-object v15, v4

    .line 104
    .restart local v15    # "e":Ljava/lang/Exception;
    const-string v14, ""

    goto/16 :goto_0

    .line 101
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v20    # "read":Ljava/lang/String;
    :cond_f
    :try_start_3
    const-string v14, ""
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 142
    .end local v20    # "read":Ljava/lang/String;
    .restart local v12    # "advancedBoot":Z
    .restart local v18    # "governor":Ljava/lang/String;
    .restart local v22    # "startBoot":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tutusw/phonespeedup/StartupService;->currentGovernor:Ljava/lang/String;

    move-object v4, v0

    const-string v5, "conservative"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 143
    const-string v4, "sampling_rate_long"

    const-wide/16 v5, 0x4e20

    move-object/from16 v0, v21

    move-object v1, v4

    move-wide v2, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    const-string v4, "up_threshold"

    const/16 v7, 0x56

    move-object/from16 v0, v21

    move-object v1, v4

    move v2, v7

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    const-string v4, "ignore_nice_load"

    const/4 v8, 0x0

    move-object/from16 v0, v21

    move-object v1, v4

    move v2, v8

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    const-string v4, "powersave_bias"

    const/4 v9, 0x0

    move-object/from16 v0, v21

    move-object v1, v4

    move v2, v9

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    const-string v4, "freq_step"

    const/4 v10, 0x0

    move-object/from16 v0, v21

    move-object v1, v4

    move v2, v10

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    const-string v4, "down_threshold"

    const/4 v11, 0x0

    move-object/from16 v0, v21

    move-object v1, v4

    move v2, v11

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/tutusw/phonespeedup/StartupService;->writeOndemand(JIIIII)Z

    goto/16 :goto_1
.end method

.method public readGovernor()Ljava/lang/String;
    .locals 4

    .prologue
    const-string v3, ""

    .line 322
    invoke-virtual {p0}, Lcom/tutusw/phonespeedup/StartupService;->readGovernorAttempt()Ljava/lang/String;

    move-result-object v1

    .line 324
    .local v1, "i":Ljava/lang/String;
    const/4 v0, 0x0

    .line 325
    .local v0, "c":I
    :goto_0
    if-eqz v1, :cond_1

    const-string v2, ""

    if-eq v1, v3, :cond_1

    .line 336
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :goto_1
    return-object v2

    .line 327
    :cond_1
    invoke-virtual {p0}, Lcom/tutusw/phonespeedup/StartupService;->readGovernorAttempt()Ljava/lang/String;

    move-result-object v1

    .line 328
    if-eqz v1, :cond_2

    const-string v2, ""

    if-ne v1, v3, :cond_3

    .line 329
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 331
    :cond_3
    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    .line 334
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public readGovernorAttempt()Ljava/lang/String;
    .locals 2

    .prologue
    .line 317
    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor"

    invoke-virtual {p0, v1}, Lcom/tutusw/phonespeedup/StartupService;->readInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, "out":Ljava/lang/String;
    return-object v0
.end method

.method public readInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 267
    const/4 v3, 0x0

    .line 268
    .local v3, "ins":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 270
    .local v1, "in":Ljava/io/DataInputStream;
    const-string v6, ""

    .line 272
    .local v6, "lines":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    .end local v3    # "ins":Ljava/io/InputStream;
    .local v4, "ins":Ljava/io/InputStream;
    :try_start_1
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 275
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

    .line 284
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 285
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 290
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

    .line 276
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

    .line 279
    .end local v2    # "in":Ljava/io/DataInputStream;
    .end local v4    # "ins":Ljava/io/InputStream;
    .end local v5    # "line":Ljava/lang/String;
    .restart local v1    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "ins":Ljava/io/InputStream;
    :catch_0
    move-exception v7

    move-object v0, v7

    .line 284
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 285
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-object v7, v9

    .line 280
    goto :goto_1

    .line 286
    :catch_1
    move-exception v7

    move-object v0, v7

    move-object v7, v9

    .line 287
    goto :goto_1

    .line 282
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 284
    :goto_3
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 285
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 289
    throw v7

    .line 286
    :catch_2
    move-exception v7

    move-object v0, v7

    .restart local v0    # "e":Ljava/lang/Exception;
    move-object v7, v9

    .line 287
    goto :goto_1

    .line 286
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

    .line 287
    goto :goto_1

    .line 282
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

    .line 279
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

.method public setSettings(IILjava/lang/String;)V
    .locals 5
    .param p1, "f"    # I
    .param p2, "g"    # I
    .param p3, "governor"    # Ljava/lang/String;

    .prologue
    const-string v3, " > /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq\n"

    const-string v3, " > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor\n"

    const-string v3, "echo "

    .line 197
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const-string v4, "sh"

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    iput-object v3, p0, Lcom/tutusw/phonespeedup/StartupService;->process:Ljava/lang/Process;

    .line 198
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v3, p0, Lcom/tutusw/phonespeedup/StartupService;->process:Ljava/lang/Process;

    invoke-virtual {v3}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 199
    .local v0, "os":Ljava/io/DataOutputStream;
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, "t":Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, "s":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "echo "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " > /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 202
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "echo "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " > /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 203
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "echo "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " > /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 204
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "echo "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 205
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "echo "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 206
    const-string v3, "exit\n"

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 208
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 209
    iget-object v3, p0, Lcom/tutusw/phonespeedup/StartupService;->process:Ljava/lang/Process;

    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    .line 210
    iget-object v3, p0, Lcom/tutusw/phonespeedup/StartupService;->process:Ljava/lang/Process;

    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    .line 211
    div-int/lit16 v3, p1, 0x3e8

    div-int/lit16 v4, p2, 0x3e8

    invoke-virtual {p0, v3, v4}, Lcom/tutusw/phonespeedup/StartupService;->updateWidget(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    .end local v0    # "os":Ljava/io/DataOutputStream;
    .end local v1    # "s":Ljava/lang/String;
    .end local v2    # "t":Ljava/lang/String;
    :goto_0
    return-void

    .line 214
    :catch_0
    move-exception v3

    goto :goto_0

    .line 212
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public updateWidget(II)V
    .locals 2
    .param p1, "max"    # I
    .param p2, "min"    # I

    .prologue
    .line 340
    new-instance v0, Landroid/content/Intent;

    const-string v1, "Speedup.intent.action.updatewidget"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/tutusw/phonespeedup/StartupService;->sendBroadcast(Landroid/content/Intent;)V

    .line 341
    return-void
.end method

.method public writeOndemand(JIII)Z
    .locals 6
    .param p1, "sampling_rate"    # J
    .param p3, "up_threshold"    # I
    .param p4, "ignore_nice_load"    # I
    .param p5, "powersave_bias"    # I

    .prologue
    const/4 v5, 0x1

    const-string v3, "echo "

    const-string v3, " > /sys/devices/system/cpu/cpu0/cpufreq/"

    .line 151
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const-string v4, "sh"

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    iput-object v3, p0, Lcom/tutusw/phonespeedup/StartupService;->process:Ljava/lang/Process;

    .line 152
    new-instance v2, Ljava/io/DataOutputStream;

    iget-object v3, p0, Lcom/tutusw/phonespeedup/StartupService;->process:Ljava/lang/Process;

    invoke-virtual {v3}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 153
    .local v2, "os":Ljava/io/DataOutputStream;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v5, :cond_0

    .line 159
    const-string v3, "exit\n"

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 161
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 162
    iget-object v3, p0, Lcom/tutusw/phonespeedup/StartupService;->process:Ljava/lang/Process;

    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    .line 163
    iget-object v3, p0, Lcom/tutusw/phonespeedup/StartupService;->process:Ljava/lang/Process;

    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    move v3, v5

    .line 167
    .end local v1    # "i":I
    .end local v2    # "os":Ljava/io/DataOutputStream;
    :goto_1
    return v3

    .line 154
    .restart local v1    # "i":I
    .restart local v2    # "os":Ljava/io/DataOutputStream;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "echo "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " > /sys/devices/system/cpu/cpu0/cpufreq/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tutusw/phonespeedup/StartupService;->currentGovernor:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/sampling_rate\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 155
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "echo "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " > /sys/devices/system/cpu/cpu0/cpufreq/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tutusw/phonespeedup/StartupService;->currentGovernor:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/up_threshold\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 156
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "echo "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " > /sys/devices/system/cpu/cpu0/cpufreq/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tutusw/phonespeedup/StartupService;->currentGovernor:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/ignore_nice_load\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 157
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "echo "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " > /sys/devices/system/cpu/cpu0/cpufreq/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tutusw/phonespeedup/StartupService;->currentGovernor:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/powersave_bias\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 164
    .end local v1    # "i":I
    .end local v2    # "os":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 165
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    goto/16 :goto_1
.end method

.method public writeOndemand(JIIIII)Z
    .locals 7
    .param p1, "sampling_rate"    # J
    .param p3, "up_threshold"    # I
    .param p4, "ignore_nice_load"    # I
    .param p5, "powersave_bias"    # I
    .param p6, "freq_step"    # I
    .param p7, "down_threshold"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v3, "echo "

    const-string v3, " > /sys/devices/system/cpu/cpu0/cpufreq/"

    .line 173
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const-string v4, "sh"

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    iput-object v3, p0, Lcom/tutusw/phonespeedup/StartupService;->process:Ljava/lang/Process;

    .line 174
    new-instance v2, Ljava/io/DataOutputStream;

    iget-object v3, p0, Lcom/tutusw/phonespeedup/StartupService;->process:Ljava/lang/Process;

    invoke-virtual {v3}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 175
    .local v2, "os":Ljava/io/DataOutputStream;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v6, :cond_0

    .line 182
    const-string v3, "exit\n"

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 184
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 185
    iget-object v3, p0, Lcom/tutusw/phonespeedup/StartupService;->process:Ljava/lang/Process;

    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    .line 186
    iget-object v3, p0, Lcom/tutusw/phonespeedup/StartupService;->process:Ljava/lang/Process;

    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    move v3, v6

    .line 192
    .end local v1    # "i":I
    .end local v2    # "os":Ljava/io/DataOutputStream;
    :goto_1
    return v3

    .line 176
    .restart local v1    # "i":I
    .restart local v2    # "os":Ljava/io/DataOutputStream;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "echo "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " > /sys/devices/system/cpu/cpu0/cpufreq/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tutusw/phonespeedup/StartupService;->currentGovernor:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/sampling_rate\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 177
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "echo "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " > /sys/devices/system/cpu/cpu0/cpufreq/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tutusw/phonespeedup/StartupService;->currentGovernor:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/up_threshold\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 178
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "echo "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " > /sys/devices/system/cpu/cpu0/cpufreq/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tutusw/phonespeedup/StartupService;->currentGovernor:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/ignore_nice_load\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 179
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "echo "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " > /sys/devices/system/cpu/cpu0/cpufreq/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tutusw/phonespeedup/StartupService;->currentGovernor:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/freq_step\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 180
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "echo "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " > /sys/devices/system/cpu/cpu0/cpufreq/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tutusw/phonespeedup/StartupService;->currentGovernor:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/down_threshold\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 175
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 187
    .end local v1    # "i":I
    .end local v2    # "os":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, "e":Ljava/io/IOException;
    move v3, v5

    .line 188
    goto/16 :goto_1

    .line 189
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .local v0, "e":Ljava/lang/Exception;
    move v3, v5

    .line 190
    goto/16 :goto_1
.end method
