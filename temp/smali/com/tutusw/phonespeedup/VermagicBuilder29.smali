.class public Lcom/tutusw/phonespeedup/VermagicBuilder29;
.super Ljava/lang/Object;
.source "VermagicBuilder29.java"


# static fields
.field private static final KERNEL_VERSION:Ljava/lang/String; = "2.6.29"

.field public static final MODULE_NAME:Ljava/lang/String; = "perflock_disable29.ko"

.field private static final VERMAGIC_LENGTH:I = 0x44

.field private static final VERMAGIC_MIDDLE:Ljava/lang/String; = "preempt mod_unload"

.field private static final VERMAGIC_OFFSET_END:I = 0x289

.field private static final VERMAGIC_OFFSET_START:I = 0x245


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getArch()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v5, 0x0

    const-string v6, "Speedup_perflock_disabler"

    const-string v4, "ARMv7"

    const-string v3, "ARMv6"

    .line 70
    :try_start_0
    const-string v2, "/proc/cpuinfo"

    invoke-static {v2}, Lcom/tutusw/phonespeedup/Io;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "arch":Ljava/lang/String;
    const-string v2, "ARMv6"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    const-string v2, "ARMv6"

    move-object v2, v3

    .line 83
    .end local v0    # "arch":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 74
    .restart local v0    # "arch":Ljava/lang/String;
    :cond_0
    :try_start_1
    const-string v2, "ARMv7"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    const-string v2, "ARMv7"

    move-object v2, v4

    goto :goto_0

    .line 78
    :cond_1
    :try_start_2
    const-string v2, "Speedup_perflock_disabler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u65e0\u6cd5\u8bc6\u522bCPU\u4fe1\u606f\u5206\u7ea7 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v5

    .line 79
    goto :goto_0

    .line 81
    .end local v0    # "arch":Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 82
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Speedup_perflock_disabler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u8bfb\u53d6\u5206\u7ea7\u65f6\u6355\u83b7\u5f02\u5e38: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 83
    goto :goto_0
.end method

.method private static getUnameR()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v5, 0x0

    const-string v6, "Speedup_perflock_disabler"

    const-string v2, "2.6.29"

    .line 55
    const-string v2, "/proc/version"

    invoke-static {v2}, Lcom/tutusw/phonespeedup/Io;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v1, v2, v3

    .line 57
    .local v1, "unameR":Ljava/lang/String;
    :try_start_0
    const-string v2, "2.6.29"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 58
    const-string v2, "Speedup_perflock_disabler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u4e0d\u517c\u5bb9\u7684\u5185\u6838(kernel) "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u4e0d\u5339\u914d "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "2.6.29"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v5

    .line 64
    :goto_0
    return-object v2

    :cond_0
    move-object v2, v1

    .line 61
    goto :goto_0

    .line 62
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Speedup_perflock_disabler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u8bfb\u53d6\u5185\u6838(kernel)\u540d\u79f0\u65f6\u6355\u83b7\u5f02\u5e38: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 64
    goto :goto_0
.end method

.method private static getVermagic()Ljava/lang/String;
    .locals 5

    .prologue
    const-string v4, " "

    .line 45
    invoke-static {}, Lcom/tutusw/phonespeedup/VermagicBuilder29;->getUnameR()Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "unameR":Ljava/lang/String;
    invoke-static {}, Lcom/tutusw/phonespeedup/VermagicBuilder29;->getArch()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "arch":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "preempt mod_unload"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 51
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static writeVermagic(Ljava/lang/String;)Z
    .locals 9
    .param p0, "filepath"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 22
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    .local v2, "f":Ljava/io/File;
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v5, "rwd"

    invoke-direct {v3, v2, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 26
    .local v3, "ra":Ljava/io/RandomAccessFile;
    invoke-static {}, Lcom/tutusw/phonespeedup/VermagicBuilder29;->getVermagic()Ljava/lang/String;

    move-result-object v4

    .line 27
    .local v4, "verMagic":Ljava/lang/String;
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x44

    if-le v5, v6, :cond_0

    .line 30
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 31
    .local v0, "buffer":[B
    const-wide/16 v5, 0x245

    invoke-virtual {v3, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 32
    const/4 v5, 0x0

    array-length v6, v0

    invoke-virtual {v3, v0, v5, v6}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 33
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 34
    const/4 v5, 0x1

    .line 39
    .end local v0    # "buffer":[B
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "ra":Ljava/io/RandomAccessFile;
    .end local v4    # "verMagic":Ljava/lang/String;
    :goto_1
    return v5

    .line 28
    .restart local v2    # "f":Ljava/io/File;
    .restart local v3    # "ra":Ljava/io/RandomAccessFile;
    .restart local v4    # "verMagic":Ljava/lang/String;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 36
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "ra":Ljava/io/RandomAccessFile;
    .end local v4    # "verMagic":Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 38
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "Speedup_perflock_disabler"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u6355\u83b7\u5f02\u5e38,\u5de5\u5177\u5305\u547d\u4ee4(.ko)\u5904\u7406\u5931\u8d25: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v8

    .line 39
    goto :goto_1
.end method
