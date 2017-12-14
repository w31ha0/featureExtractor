.class public Lcom/tutusw/phonespeedup/AdvancedActivity;
.super Landroid/app/Activity;
.source "AdvancedActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tutusw/phonespeedup/AdvancedActivity$clicker;
    }
.end annotation


# instance fields
.field final SDK_CUPCAKE:I

.field final SDK_VERSION:I

.field advancedApply:Landroid/widget/Button;

.field advancedBoot:Landroid/widget/CheckBox;

.field context:Landroid/content/Context;

.field down_threshold:I

.field down_threshold_edit:Landroid/widget/EditText;

.field down_threshold_text:Landroid/widget/TextView;

.field editLayout:Landroid/widget/RelativeLayout;

.field editor:Landroid/content/SharedPreferences$Editor;

.field freq_step:I

.field freq_step_edit:Landroid/widget/EditText;

.field freq_step_text:Landroid/widget/TextView;

.field governor:Ljava/lang/String;

.field ignore_nice_load:I

.field ignore_nice_load_edit:Landroid/widget/EditText;

.field invisible:I

.field final isGone:Z

.field os:Ljava/io/DataOutputStream;

.field powersave_bias:I

.field powersave_bias_edit:Landroid/widget/EditText;

.field powersave_bias_text:Landroid/widget/TextView;

.field process:Ljava/lang/Process;

.field sampling_rate:J

.field sampling_rate_edit:Landroid/widget/EditText;

.field sampling_rate_max:J

.field sampling_rate_min:J

.field sampling_rate_text:Landroid/widget/TextView;

.field settings:Landroid/content/SharedPreferences;

.field up_threshold:I

.field up_threshold_edit:Landroid/widget/EditText;

.field warningText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 27
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->SDK_VERSION:I

    .line 28
    iput v1, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->SDK_CUPCAKE:I

    .line 29
    iget v0, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->SDK_VERSION:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->isGone:Z

    .line 26
    return-void

    .line 29
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/tutusw/phonespeedup/AdvancedActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 335
    invoke-direct {p0}, Lcom/tutusw/phonespeedup/AdvancedActivity;->readGovernor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/tutusw/phonespeedup/AdvancedActivity;)V
    .locals 0

    .prologue
    .line 354
    invoke-direct {p0}, Lcom/tutusw/phonespeedup/AdvancedActivity;->chmodInit()V

    return-void
.end method

.method static synthetic access$2(Lcom/tutusw/phonespeedup/AdvancedActivity;)V
    .locals 0

    .prologue
    .line 373
    invoke-direct {p0}, Lcom/tutusw/phonespeedup/AdvancedActivity;->chmod()V

    return-void
.end method

.method static synthetic access$3(Lcom/tutusw/phonespeedup/AdvancedActivity;JIIII)Z
    .locals 1

    .prologue
    .line 237
    invoke-direct/range {p0 .. p6}, Lcom/tutusw/phonespeedup/AdvancedActivity;->writeOndemand(JIIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4(Lcom/tutusw/phonespeedup/AdvancedActivity;JIII)Z
    .locals 1

    .prologue
    .line 221
    invoke-direct/range {p0 .. p5}, Lcom/tutusw/phonespeedup/AdvancedActivity;->writeOndemand(JIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5(Lcom/tutusw/phonespeedup/AdvancedActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 398
    invoke-direct {p0, p1}, Lcom/tutusw/phonespeedup/AdvancedActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method private chmod()V
    .locals 3

    .prologue
    .line 375
    :try_start_0
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->os:Ljava/io/DataOutputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "chmod 777 /sys/devices/system/cpu/cpu0/cpufreq/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->governor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->os:Ljava/io/DataOutputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "chmod 666 /sys/devices/system/cpu/cpu0/cpufreq/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->governor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/*\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    :goto_0
    return-void

    .line 378
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private chmodExit()V
    .locals 2

    .prologue
    .line 385
    :try_start_0
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->os:Ljava/io/DataOutputStream;

    const-string v1, "exit\n"

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->os:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 387
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->os:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 388
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->process:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    .line 389
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->process:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    :goto_0
    return-void

    .line 393
    :catch_0
    move-exception v0

    goto :goto_0

    .line 391
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private chmodInit()V
    .locals 3

    .prologue
    .line 356
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "su"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    iput-object v0, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->process:Ljava/lang/Process;

    .line 357
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->process:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->os:Ljava/io/DataOutputStream;

    .line 359
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->os:Ljava/io/DataOutputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "chmod 777 /sys/devices/system/cpu/cpu0/cpufreq/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->governor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->os:Ljava/io/DataOutputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "chmod 666 /sys/devices/system/cpu/cpu0/cpufreq/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->governor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/*\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    :goto_0
    return-void

    .line 368
    :catch_0
    move-exception v0

    goto :goto_0

    .line 366
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private read(Ljava/lang/String;)I
    .locals 11
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v10, -0x1

    .line 253
    const/4 v5, 0x0

    .line 254
    .local v5, "line":Ljava/lang/String;
    const/4 v0, 0x0

    .line 255
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 256
    .local v3, "ins":Ljava/io/InputStream;
    const-string v6, ""

    .line 258
    .local v6, "lines":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "/sys/devices/system/cpu/cpu0/cpufreq/"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->governor:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    .end local v3    # "ins":Ljava/io/InputStream;
    .local v4, "ins":Ljava/io/InputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v8, 0x2000

    invoke-direct {v1, v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 260
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v5

    if-nez v5, :cond_0

    .line 268
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 269
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 274
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move-object v3, v4

    .end local v4    # "ins":Ljava/io/InputStream;
    .restart local v3    # "ins":Ljava/io/InputStream;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_1
    return v7

    .line 261
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "ins":Ljava/io/InputStream;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "ins":Ljava/io/InputStream;
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

    .line 263
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "ins":Ljava/io/InputStream;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "ins":Ljava/io/InputStream;
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 268
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 269
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move v7, v10

    .line 264
    goto :goto_1

    .line 270
    :catch_1
    move-exception v7

    move-object v2, v7

    move v7, v10

    .line 271
    goto :goto_1

    .line 266
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 268
    :goto_3
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 269
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 273
    throw v7

    .line 270
    :catch_2
    move-exception v7

    move-object v2, v7

    .restart local v2    # "e":Ljava/lang/Exception;
    move v7, v10

    .line 271
    goto :goto_1

    .line 270
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "ins":Ljava/io/InputStream;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "ins":Ljava/io/InputStream;
    :catch_3
    move-exception v7

    move-object v2, v7

    .restart local v2    # "e":Ljava/lang/Exception;
    move-object v3, v4

    .end local v4    # "ins":Ljava/io/InputStream;
    .restart local v3    # "ins":Ljava/io/InputStream;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move v7, v10

    .line 271
    goto :goto_1

    .line 266
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "ins":Ljava/io/InputStream;
    .restart local v4    # "ins":Ljava/io/InputStream;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "ins":Ljava/io/InputStream;
    .restart local v3    # "ins":Ljava/io/InputStream;
    goto :goto_3

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "ins":Ljava/io/InputStream;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "ins":Ljava/io/InputStream;
    :catchall_2
    move-exception v7

    move-object v3, v4

    .end local v4    # "ins":Ljava/io/InputStream;
    .restart local v3    # "ins":Ljava/io/InputStream;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    .line 263
    .end local v3    # "ins":Ljava/io/InputStream;
    .restart local v4    # "ins":Ljava/io/InputStream;
    :catch_4
    move-exception v7

    move-object v2, v7

    move-object v3, v4

    .end local v4    # "ins":Ljava/io/InputStream;
    .restart local v3    # "ins":Ljava/io/InputStream;
    goto :goto_2

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "ins":Ljava/io/InputStream;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "ins":Ljava/io/InputStream;
    :catch_5
    move-exception v7

    move-object v2, v7

    move-object v3, v4

    .end local v4    # "ins":Ljava/io/InputStream;
    .restart local v3    # "ins":Ljava/io/InputStream;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private readGovernor()Ljava/lang/String;
    .locals 4

    .prologue
    const-string v3, ""

    .line 336
    invoke-direct {p0}, Lcom/tutusw/phonespeedup/AdvancedActivity;->readGovernorAttempt()Ljava/lang/String;

    move-result-object v1

    .line 338
    .local v1, "i":Ljava/lang/String;
    const/4 v0, 0x0

    .line 339
    .local v0, "c":I
    :goto_0
    if-eqz v1, :cond_1

    const-string v2, ""

    if-eq v1, v3, :cond_1

    .line 350
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :goto_1
    return-object v2

    .line 341
    :cond_1
    invoke-direct {p0}, Lcom/tutusw/phonespeedup/AdvancedActivity;->readGovernorAttempt()Ljava/lang/String;

    move-result-object v1

    .line 342
    if-eqz v1, :cond_2

    const-string v2, ""

    if-ne v1, v3, :cond_3

    .line 343
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 345
    :cond_3
    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    .line 348
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private readGovernorAttempt()Ljava/lang/String;
    .locals 2

    .prologue
    .line 331
    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor"

    invoke-direct {p0, v1}, Lcom/tutusw/phonespeedup/AdvancedActivity;->readInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, "out":Ljava/lang/String;
    return-object v0
.end method

.method private readInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 307
    const/4 v1, 0x0

    .line 308
    .local v1, "in":Ljava/io/DataInputStream;
    const/4 v3, 0x0

    .line 309
    .local v3, "line":Ljava/lang/String;
    const-string v4, ""

    .line 311
    .local v4, "lines":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    .end local v1    # "in":Ljava/io/DataInputStream;
    .local v2, "in":Ljava/io/DataInputStream;
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    if-nez v3, :cond_0

    .line 321
    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 326
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    move-object v1, v2

    .end local v2    # "in":Ljava/io/DataInputStream;
    .restart local v1    # "in":Ljava/io/DataInputStream;
    :goto_1
    return-object v5

    .line 313
    .end local v1    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "in":Ljava/io/DataInputStream;
    :cond_0
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v4

    goto :goto_0

    .line 316
    .end local v2    # "in":Ljava/io/DataInputStream;
    .restart local v1    # "in":Ljava/io/DataInputStream;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 321
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object v5, v7

    .line 317
    goto :goto_1

    .line 322
    :catch_1
    move-exception v0

    move-object v5, v7

    .line 323
    goto :goto_1

    .line 319
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 321
    :goto_3
    :try_start_5
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 325
    throw v5

    .line 322
    :catch_2
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    move-object v5, v7

    .line 323
    goto :goto_1

    .line 322
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "in":Ljava/io/DataInputStream;
    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    move-object v1, v2

    .end local v2    # "in":Ljava/io/DataInputStream;
    .restart local v1    # "in":Ljava/io/DataInputStream;
    move-object v5, v7

    .line 323
    goto :goto_1

    .line 319
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "in":Ljava/io/DataInputStream;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "in":Ljava/io/DataInputStream;
    .restart local v1    # "in":Ljava/io/DataInputStream;
    goto :goto_3

    .line 316
    .end local v1    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "in":Ljava/io/DataInputStream;
    :catch_4
    move-exception v5

    move-object v0, v5

    move-object v1, v2

    .end local v2    # "in":Ljava/io/DataInputStream;
    .restart local v1    # "in":Ljava/io/DataInputStream;
    goto :goto_2
.end method

.method private readLong(Ljava/lang/String;)J
    .locals 12
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const-wide/16 v10, -0x1

    .line 280
    const/4 v5, 0x0

    .line 281
    .local v5, "line":Ljava/lang/String;
    const/4 v0, 0x0

    .line 282
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 283
    .local v3, "ins":Ljava/io/InputStream;
    const-string v6, ""

    .line 285
    .local v6, "lines":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "/sys/devices/system/cpu/cpu0/cpufreq/"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->governor:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    .end local v3    # "ins":Ljava/io/InputStream;
    .local v4, "ins":Ljava/io/InputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v8, 0x2000

    invoke-direct {v1, v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 287
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v5

    if-nez v5, :cond_0

    .line 295
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 296
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 301
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    move-object v3, v4

    .end local v4    # "ins":Ljava/io/InputStream;
    .restart local v3    # "ins":Ljava/io/InputStream;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_1
    return-wide v7

    .line 288
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "ins":Ljava/io/InputStream;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "ins":Ljava/io/InputStream;
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

    .line 290
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "ins":Ljava/io/InputStream;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "ins":Ljava/io/InputStream;
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 295
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 296
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-wide v7, v10

    .line 291
    goto :goto_1

    .line 297
    :catch_1
    move-exception v7

    move-object v2, v7

    move-wide v7, v10

    .line 298
    goto :goto_1

    .line 293
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 295
    :goto_3
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 296
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 300
    throw v7

    .line 297
    :catch_2
    move-exception v7

    move-object v2, v7

    .restart local v2    # "e":Ljava/lang/Exception;
    move-wide v7, v10

    .line 298
    goto :goto_1

    .line 297
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "ins":Ljava/io/InputStream;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "ins":Ljava/io/InputStream;
    :catch_3
    move-exception v7

    move-object v2, v7

    .restart local v2    # "e":Ljava/lang/Exception;
    move-object v3, v4

    .end local v4    # "ins":Ljava/io/InputStream;
    .restart local v3    # "ins":Ljava/io/InputStream;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-wide v7, v10

    .line 298
    goto :goto_1

    .line 293
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "ins":Ljava/io/InputStream;
    .restart local v4    # "ins":Ljava/io/InputStream;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "ins":Ljava/io/InputStream;
    .restart local v3    # "ins":Ljava/io/InputStream;
    goto :goto_3

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "ins":Ljava/io/InputStream;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "ins":Ljava/io/InputStream;
    :catchall_2
    move-exception v7

    move-object v3, v4

    .end local v4    # "ins":Ljava/io/InputStream;
    .restart local v3    # "ins":Ljava/io/InputStream;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    .line 290
    .end local v3    # "ins":Ljava/io/InputStream;
    .restart local v4    # "ins":Ljava/io/InputStream;
    :catch_4
    move-exception v7

    move-object v2, v7

    move-object v3, v4

    .end local v4    # "ins":Ljava/io/InputStream;
    .restart local v3    # "ins":Ljava/io/InputStream;
    goto :goto_2

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "ins":Ljava/io/InputStream;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "ins":Ljava/io/InputStream;
    :catch_5
    move-exception v7

    move-object v2, v7

    move-object v3, v4

    .end local v4    # "ins":Ljava/io/InputStream;
    .restart local v3    # "ins":Ljava/io/InputStream;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/tutusw/phonespeedup/AdvancedActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->context:Landroid/content/Context;

    .line 400
    iget-object v1, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 401
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 402
    return-void
.end method

.method private writeOndemand(JIII)Z
    .locals 5
    .param p1, "sampling_rate"    # J
    .param p3, "up_threshold"    # I
    .param p4, "ignore_nice_load"    # I
    .param p5, "powersave_bias"    # I

    .prologue
    const/4 v4, 0x1

    const-string v2, "echo "

    const-string v2, " > /sys/devices/system/cpu/cpu0/cpufreq/"

    .line 223
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v4, :cond_0

    move v2, v4

    .line 233
    :goto_1
    return v2

    .line 224
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "echo "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > /sys/devices/system/cpu/cpu0/cpufreq/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->governor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/sampling_rate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tutusw/phonespeedup/Io;->runCommand(Ljava/lang/String;)I

    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "echo "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > /sys/devices/system/cpu/cpu0/cpufreq/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->governor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/up_threshold"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tutusw/phonespeedup/Io;->runCommand(Ljava/lang/String;)I

    .line 226
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "echo "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > /sys/devices/system/cpu/cpu0/cpufreq/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->governor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/ignore_nice_load"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tutusw/phonespeedup/Io;->runCommand(Ljava/lang/String;)I

    .line 227
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "echo "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > /sys/devices/system/cpu/cpu0/cpufreq/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->governor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/powersave_bias"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tutusw/phonespeedup/Io;->runCommand(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 230
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 231
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto/16 :goto_1
.end method

.method private writeOndemand(JIIII)Z
    .locals 5
    .param p1, "sampling_rate"    # J
    .param p3, "up_threshold"    # I
    .param p4, "ignore_nice_load"    # I
    .param p5, "freq_step"    # I
    .param p6, "down_threshold"    # I

    .prologue
    const/4 v4, 0x1

    const-string v2, "echo "

    const-string v2, " > /sys/devices/system/cpu/cpu0/cpufreq/"

    .line 239
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v4, :cond_0

    move v2, v4

    .line 249
    :goto_1
    return v2

    .line 240
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "echo "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > /sys/devices/system/cpu/cpu0/cpufreq/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->governor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/sampling_rate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tutusw/phonespeedup/Io;->runCommand(Ljava/lang/String;)I

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "echo "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > /sys/devices/system/cpu/cpu0/cpufreq/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->governor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/up_threshold"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tutusw/phonespeedup/Io;->runCommand(Ljava/lang/String;)I

    .line 242
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "echo "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > /sys/devices/system/cpu/cpu0/cpufreq/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->governor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/ignore_nice_load"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tutusw/phonespeedup/Io;->runCommand(Ljava/lang/String;)I

    .line 243
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "echo "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > /sys/devices/system/cpu/cpu0/cpufreq/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->governor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/freq_step"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tutusw/phonespeedup/Io;->runCommand(Ljava/lang/String;)I

    .line 244
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "echo "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > /sys/devices/system/cpu/cpu0/cpufreq/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->governor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/down_threshold"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tutusw/phonespeedup/Io;->runCommand(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 246
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 247
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto/16 :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0, v4}, Lcom/tutusw/phonespeedup/AdvancedActivity;->requestWindowFeature(I)Z

    .line 52
    const v1, 0x7f030006

    invoke-virtual {p0, v1}, Lcom/tutusw/phonespeedup/AdvancedActivity;->setContentView(I)V

    .line 54
    iget-boolean v1, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->isGone:Z

    if-eqz v1, :cond_1

    .line 55
    const/16 v1, 0x8

    iput v1, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->invisible:I

    .line 63
    :goto_0
    invoke-direct {p0}, Lcom/tutusw/phonespeedup/AdvancedActivity;->chmodInit()V

    .line 66
    const v1, 0x7f080034

    invoke-virtual {p0, v1}, Lcom/tutusw/phonespeedup/AdvancedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->editLayout:Landroid/widget/RelativeLayout;

    .line 67
    const v1, 0x7f080033

    invoke-virtual {p0, v1}, Lcom/tutusw/phonespeedup/AdvancedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->warningText:Landroid/widget/TextView;

    .line 69
    const v1, 0x7f080035

    invoke-virtual {p0, v1}, Lcom/tutusw/phonespeedup/AdvancedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->sampling_rate_text:Landroid/widget/TextView;

    .line 72
    const v1, 0x7f080036

    invoke-virtual {p0, v1}, Lcom/tutusw/phonespeedup/AdvancedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->sampling_rate_edit:Landroid/widget/EditText;

    .line 73
    const v1, 0x7f080038

    invoke-virtual {p0, v1}, Lcom/tutusw/phonespeedup/AdvancedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->up_threshold_edit:Landroid/widget/EditText;

    .line 74
    const v1, 0x7f08003c

    invoke-virtual {p0, v1}, Lcom/tutusw/phonespeedup/AdvancedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->ignore_nice_load_edit:Landroid/widget/EditText;

    .line 75
    const v1, 0x7f08003e

    invoke-virtual {p0, v1}, Lcom/tutusw/phonespeedup/AdvancedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->powersave_bias_edit:Landroid/widget/EditText;

    .line 76
    const v1, 0x7f080040

    invoke-virtual {p0, v1}, Lcom/tutusw/phonespeedup/AdvancedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->freq_step_edit:Landroid/widget/EditText;

    .line 77
    const v1, 0x7f08003a

    invoke-virtual {p0, v1}, Lcom/tutusw/phonespeedup/AdvancedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->down_threshold_edit:Landroid/widget/EditText;

    .line 79
    const v1, 0x7f080039

    invoke-virtual {p0, v1}, Lcom/tutusw/phonespeedup/AdvancedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->down_threshold_text:Landroid/widget/TextView;

    .line 80
    const v1, 0x7f08003f

    invoke-virtual {p0, v1}, Lcom/tutusw/phonespeedup/AdvancedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->freq_step_text:Landroid/widget/TextView;

    .line 81
    const v1, 0x7f08003d

    invoke-virtual {p0, v1}, Lcom/tutusw/phonespeedup/AdvancedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->powersave_bias_text:Landroid/widget/TextView;

    .line 83
    new-instance v0, Lcom/tutusw/phonespeedup/AdvancedActivity$clicker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tutusw/phonespeedup/AdvancedActivity$clicker;-><init>(Lcom/tutusw/phonespeedup/AdvancedActivity;Lcom/tutusw/phonespeedup/AdvancedActivity$clicker;)V

    .line 84
    .local v0, "clicker":Lcom/tutusw/phonespeedup/AdvancedActivity$clicker;
    const v1, 0x7f080041

    invoke-virtual {p0, v1}, Lcom/tutusw/phonespeedup/AdvancedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->advancedApply:Landroid/widget/Button;

    .line 86
    const v1, 0x7f080042

    invoke-virtual {p0, v1}, Lcom/tutusw/phonespeedup/AdvancedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->advancedBoot:Landroid/widget/CheckBox;

    .line 88
    const-string v1, "Speedup"

    invoke-virtual {p0, v1, v3}, Lcom/tutusw/phonespeedup/AdvancedActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->settings:Landroid/content/SharedPreferences;

    .line 89
    iget-object v1, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 91
    iget-object v1, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->settings:Landroid/content/SharedPreferences;

    const-string v2, "advancedBoot"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->advancedBoot:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->advancedApply:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v1, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->advancedBoot:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    return-void

    .line 58
    .end local v0    # "clicker":Lcom/tutusw/phonespeedup/AdvancedActivity$clicker;
    :cond_1
    const/4 v1, 0x4

    iput v1, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->invisible:I

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 163
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 164
    invoke-direct {p0}, Lcom/tutusw/phonespeedup/AdvancedActivity;->chmodExit()V

    .line 165
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const-string v4, "ondemand"

    const-string v3, "conservative"

    .line 104
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 106
    invoke-direct {p0}, Lcom/tutusw/phonespeedup/AdvancedActivity;->readGovernor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->governor:Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->governor:Ljava/lang/String;

    const-string v1, "conservative"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->governor:Ljava/lang/String;

    const-string v1, "ondemand"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->editLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->warningText:Landroid/widget/TextView;

    iget v1, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->invisible:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->governor:Ljava/lang/String;

    const-string v1, "conservative"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    const-string v0, "freq_step"

    invoke-direct {p0, v0}, Lcom/tutusw/phonespeedup/AdvancedActivity;->read(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->freq_step:I

    .line 115
    const-string v0, "down_threshold"

    invoke-direct {p0, v0}, Lcom/tutusw/phonespeedup/AdvancedActivity;->read(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->down_threshold:I

    .line 116
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->freq_step_edit:Landroid/widget/EditText;

    iget v1, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->freq_step:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->down_threshold_edit:Landroid/widget/EditText;

    iget v1, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->down_threshold:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->freq_step_edit:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->down_threshold_edit:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->down_threshold_text:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->freq_step_text:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->powersave_bias_edit:Landroid/widget/EditText;

    iget v1, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->invisible:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->powersave_bias_text:Landroid/widget/TextView;

    iget v1, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->invisible:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    :cond_1
    :goto_0
    const-string v0, "sampling_rate"

    invoke-direct {p0, v0}, Lcom/tutusw/phonespeedup/AdvancedActivity;->readLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->sampling_rate:J

    .line 139
    const-string v0, "up_threshold"

    invoke-direct {p0, v0}, Lcom/tutusw/phonespeedup/AdvancedActivity;->read(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->up_threshold:I

    .line 140
    const-string v0, "ignore_nice_load"

    invoke-direct {p0, v0}, Lcom/tutusw/phonespeedup/AdvancedActivity;->read(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->ignore_nice_load:I

    .line 142
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->sampling_rate_edit:Landroid/widget/EditText;

    iget-wide v1, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->sampling_rate:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->up_threshold_edit:Landroid/widget/EditText;

    iget v1, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->up_threshold:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->ignore_nice_load_edit:Landroid/widget/EditText;

    iget v1, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->ignore_nice_load:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 147
    const-string v0, "sampling_rate_max"

    invoke-direct {p0, v0}, Lcom/tutusw/phonespeedup/AdvancedActivity;->readLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->sampling_rate_max:J

    .line 148
    const-string v0, "sampling_rate_min"

    invoke-direct {p0, v0}, Lcom/tutusw/phonespeedup/AdvancedActivity;->readLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->sampling_rate_min:J

    .line 150
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->sampling_rate_text:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u91c7\u6837\u9891\u7387 ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->sampling_rate_min:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u00b5s-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->sampling_rate_max:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u00b5s):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    :goto_1
    return-void

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->governor:Ljava/lang/String;

    const-string v1, "ondemand"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->freq_step_edit:Landroid/widget/EditText;

    iget v1, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->invisible:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->down_threshold_edit:Landroid/widget/EditText;

    iget v1, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->invisible:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->down_threshold_text:Landroid/widget/TextView;

    iget v1, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->invisible:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->freq_step_text:Landroid/widget/TextView;

    iget v1, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->invisible:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->powersave_bias_edit:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->powersave_bias_text:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    const-string v0, "powersave_bias"

    invoke-direct {p0, v0}, Lcom/tutusw/phonespeedup/AdvancedActivity;->read(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->powersave_bias:I

    .line 134
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->powersave_bias_edit:Landroid/widget/EditText;

    iget v1, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->powersave_bias:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 154
    :cond_3
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->editLayout:Landroid/widget/RelativeLayout;

    iget v1, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->invisible:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/tutusw/phonespeedup/AdvancedActivity;->warningText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
