.class public Lcom/facebook/device/yearclass/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# static fields
.field private static final CPU_FILTER:Ljava/io/FileFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/facebook/device/yearclass/DeviceInfo$1;

    invoke-direct {v0}, Lcom/facebook/device/yearclass/DeviceInfo$1;-><init>()V

    sput-object v0, Lcom/facebook/device/yearclass/DeviceInfo;->CPU_FILTER:Ljava/io/FileFilter;

    return-void
.end method

.method private static extractValue([BI)I
    .locals 3

    .prologue
    .line 200
    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_2

    aget-byte v0, p0, p1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    .line 201
    aget-byte v0, p0, p1

    invoke-static {v0}, Ljava/lang/Character;->isDigit(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    add-int/lit8 v0, p1, 0x1

    .line 204
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-byte v1, p0, v0

    invoke-static {v1}, Ljava/lang/Character;->isDigit(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 207
    :cond_0
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    sub-int/2addr v0, p1

    invoke-direct {v1, p0, v2, p1, v0}, Ljava/lang/String;-><init>([BIII)V

    .line 208
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 212
    :goto_2
    return v0

    .line 210
    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 212
    :cond_2
    const/4 v0, -0x1

    goto :goto_2
.end method

.method public static getCPUMaxFreqKHz()I
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    move v4, v3

    move v0, v1

    .line 80
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/facebook/device/yearclass/DeviceInfo;->getNumberOfCPUCores()I

    move-result v2

    if-ge v4, v2, :cond_4

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "/sys/devices/system/cpu/cpu"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "/cpufreq/cpuinfo_max_freq"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 83
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 85
    const/16 v2, 0x80

    new-array v6, v2, [B

    .line 86
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 88
    :try_start_1
    invoke-virtual {v7, v6}, Ljava/io/FileInputStream;->read([B)I

    move v2, v3

    .line 91
    :goto_1
    aget-byte v5, v6, v2

    invoke-static {v5}, Ljava/lang/Character;->isDigit(I)Z

    move-result v5

    if-eqz v5, :cond_0

    array-length v5, v6

    if-ge v2, v5, :cond_0

    .line 92
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 94
    :cond_0
    new-instance v5, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v5, v6, v8, v2}, Ljava/lang/String;-><init>([BII)V

    .line 95
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 96
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v5, v0, :cond_1

    .line 97
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 102
    :cond_1
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 80
    :cond_2
    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_0

    .line 99
    :catch_0
    move-exception v2

    .line 102
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    goto :goto_2

    .line 116
    :catch_1
    move-exception v0

    move v0, v1

    .line 119
    :cond_3
    :goto_3
    return v0

    .line 102
    :catchall_0
    move-exception v0

    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    throw v0

    .line 106
    :cond_4
    if-ne v0, v1, :cond_3

    .line 107
    new-instance v3, Ljava/io/FileInputStream;

    const-string/jumbo v2, "/proc/cpuinfo"

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 109
    :try_start_3
    const-string/jumbo v2, "cpu MHz"

    invoke-static {v2, v3}, Lcom/facebook/device/yearclass/DeviceInfo;->parseFileForValue(Ljava/lang/String;Ljava/io/FileInputStream;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v2

    .line 110
    mul-int/lit16 v2, v2, 0x3e8

    .line 111
    if-le v2, v0, :cond_5

    move v0, v2

    .line 113
    :cond_5
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    goto :goto_3

    :catchall_1
    move-exception v0

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
.end method

.method public static getNumberOfCPUCores()I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 36
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-gt v1, v2, :cond_0

    .line 41
    const/4 v0, 0x1

    .line 51
    :goto_0
    return v0

    .line 45
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "/sys/devices/system/cpu/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/facebook/device/yearclass/DeviceInfo;->CPU_FILTER:Ljava/io/FileFilter;

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    array-length v0, v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 48
    :catch_0
    move-exception v1

    goto :goto_0

    .line 46
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static getTotalMemory(Landroid/content/Context;)J
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const-wide/16 v2, -0x1

    .line 131
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 132
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 133
    const-string/jumbo v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 134
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 135
    if-eqz v1, :cond_0

    .line 136
    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    .line 152
    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, v2

    .line 138
    goto :goto_0

    .line 143
    :cond_1
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    const-string/jumbo v0, "/proc/meminfo"

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 145
    :try_start_1
    const-string/jumbo v0, "MemTotal"

    invoke-static {v0, v4}, Lcom/facebook/device/yearclass/DeviceInfo;->parseFileForValue(Ljava/lang/String;Ljava/io/FileInputStream;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    int-to-long v0, v0

    .line 146
    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    .line 148
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 150
    :catch_0
    move-exception v2

    goto :goto_0

    .line 148
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 150
    :catch_1
    move-exception v0

    move-wide v0, v2

    goto :goto_0
.end method

.method private static parseFileForValue(Ljava/lang/String;Ljava/io/FileInputStream;)I
    .locals 8

    .prologue
    const/16 v7, 0xa

    .line 165
    const/16 v0, 0x400

    new-array v2, v0, [B

    .line 167
    :try_start_0
    invoke-virtual {p1, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .line 168
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_5

    .line 169
    aget-byte v1, v2, v0

    if-eq v1, v7, :cond_0

    if-nez v0, :cond_2

    .line 170
    :cond_0
    aget-byte v1, v2, v0

    if-ne v1, v7, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    move v1, v0

    .line 171
    :goto_1
    if-ge v1, v3, :cond_2

    .line 172
    sub-int v4, v1, v0

    .line 174
    aget-byte v5, v2, v1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_3

    .line 168
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_4

    .line 179
    invoke-static {v2, v1}, Lcom/facebook/device/yearclass/DeviceInfo;->extractValue([BI)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 188
    :goto_2
    return v0

    .line 171
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 186
    :catch_0
    move-exception v0

    .line 188
    :cond_5
    :goto_3
    const/4 v0, -0x1

    goto :goto_2

    .line 184
    :catch_1
    move-exception v0

    goto :goto_3
.end method
