.class public Lcom/tutusw/phonespeedup/Io;
.super Ljava/lang/Object;
.source "Io.java"


# static fields
.field static is:Ljava/io/FileInputStream;

.field static mBuffer:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/16 v0, 0x400

    new-array v0, v0, [B

    sput-object v0, Lcom/tutusw/phonespeedup/Io;->mBuffer:[B

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static autodetect()[Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 60
    :try_start_0
    const-string v4, "/sys/devices/system/cpu/cpu0/cpufreq/stats/time_in_state"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/tutusw/phonespeedup/Io;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, "time_in_state":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 62
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 63
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, "ret":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-lt v1, v4, :cond_0

    move-object v4, v2

    .line 74
    .end local v1    # "i":I
    .end local v2    # "ret":[Ljava/lang/String;
    .end local v3    # "time_in_state":Ljava/lang/String;
    :goto_1
    return-object v4

    .line 65
    .restart local v1    # "i":I
    .restart local v2    # "ret":[Ljava/lang/String;
    .restart local v3    # "time_in_state":Ljava/lang/String;
    :cond_0
    aget-object v4, v2, v1

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    aput-object v4, v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    .end local v2    # "ret":[Ljava/lang/String;
    :cond_1
    move-object v4, v6

    .line 70
    goto :goto_1

    .line 73
    .end local v3    # "time_in_state":Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v0, v4

    .local v0, "e":Ljava/lang/Exception;
    move-object v4, v6

    .line 74
    goto :goto_1
.end method

.method public static readFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "file"    # Ljava/lang/String;

    .prologue
    .line 38
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/tutusw/phonespeedup/Io;->is:Ljava/io/FileInputStream;

    .line 39
    sget-object v2, Lcom/tutusw/phonespeedup/Io;->is:Ljava/io/FileInputStream;

    sget-object v3, Lcom/tutusw/phonespeedup/Io;->mBuffer:[B

    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    .line 40
    .local v1, "len":I
    sget-object v2, Lcom/tutusw/phonespeedup/Io;->is:Ljava/io/FileInputStream;

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 42
    if-lez v1, :cond_2

    .line 44
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_1

    .line 49
    :cond_0
    new-instance v2, Ljava/lang/String;

    sget-object v3, Lcom/tutusw/phonespeedup/Io;->mBuffer:[B

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5, v0}, Ljava/lang/String;-><init>([BIII)V

    .line 54
    .end local v0    # "i":I
    .end local v1    # "len":I
    :goto_1
    return-object v2

    .line 45
    .restart local v0    # "i":I
    .restart local v1    # "len":I
    :cond_1
    sget-object v2, Lcom/tutusw/phonespeedup/Io;->mBuffer:[B

    aget-byte v2, v2, v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    .end local v0    # "i":I
    .end local v1    # "len":I
    :catch_0
    move-exception v2

    .line 54
    :cond_2
    :goto_2
    const/4 v2, 0x0

    goto :goto_1

    .line 51
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method public static readFile(Ljava/lang/String;C)Ljava/lang/String;
    .locals 9
    .param p0, "file"    # Ljava/lang/String;
    .param p1, "endChar"    # C

    .prologue
    const-string v8, "Speedup"

    const-string v7, "ioexception "

    .line 15
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    sput-object v3, Lcom/tutusw/phonespeedup/Io;->is:Ljava/io/FileInputStream;

    .line 16
    sget-object v3, Lcom/tutusw/phonespeedup/Io;->is:Ljava/io/FileInputStream;

    sget-object v4, Lcom/tutusw/phonespeedup/Io;->mBuffer:[B

    invoke-virtual {v3, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    .line 17
    .local v2, "len":I
    sget-object v3, Lcom/tutusw/phonespeedup/Io;->is:Ljava/io/FileInputStream;

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 19
    if-lez v2, :cond_2

    .line 21
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_1

    .line 26
    :cond_0
    new-instance v3, Ljava/lang/String;

    sget-object v4, Lcom/tutusw/phonespeedup/Io;->mBuffer:[B

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v1}, Ljava/lang/String;-><init>([BIII)V

    .line 33
    .end local v1    # "i":I
    .end local v2    # "len":I
    :goto_1
    return-object v3

    .line 22
    .restart local v1    # "i":I
    .restart local v2    # "len":I
    :cond_1
    sget-object v3, Lcom/tutusw/phonespeedup/Io;->mBuffer:[B

    aget-byte v3, v3, v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eq v3, p1, :cond_0

    .line 21
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 28
    .end local v1    # "i":I
    .end local v2    # "len":I
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 29
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v3, "Speedup"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ioexception "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_2
    :goto_2
    const/4 v3, 0x0

    goto :goto_1

    .line 30
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 31
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "Speedup"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ioexception "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static runCommand(Ljava/lang/String;)I
    .locals 1
    .param p0, "command"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-static {p0}, Lcom/mhuang/overclocking/jni;->run(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
