.class public Lcom/facebook/device/yearclass/YearClass;
.super Ljava/lang/Object;
.source "YearClass.java"


# static fields
.field private static volatile mYearCategory:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static categorizeByYear(Landroid/content/Context;)I
    .locals 6

    .prologue
    const/4 v2, -0x1

    .line 69
    const-string/jumbo v0, "YearClass"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getClockSpeedYear(): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/facebook/device/yearclass/YearClass;->getClockSpeedYear()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const-string/jumbo v0, "YearClass"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getNumCoresYear(): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/facebook/device/yearclass/YearClass;->getNumCoresYear()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const-string/jumbo v0, "YearClass"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getRamYear(): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/facebook/device/yearclass/YearClass;->getRamYear(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 74
    invoke-static {}, Lcom/facebook/device/yearclass/YearClass;->getClockSpeedYear()I

    move-result v0

    invoke-static {v3, v0}, Lcom/facebook/device/yearclass/YearClass;->conditionallyAdd(Ljava/util/ArrayList;I)V

    .line 75
    invoke-static {p0}, Lcom/facebook/device/yearclass/YearClass;->getRamYear(Landroid/content/Context;)I

    move-result v0

    invoke-static {v3, v0}, Lcom/facebook/device/yearclass/YearClass;->conditionallyAdd(Ljava/util/ArrayList;I)V

    .line 77
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-static {}, Lcom/facebook/device/yearclass/YearClass;->getNumCoresYear()I

    move-result v0

    invoke-static {v3, v0}, Lcom/facebook/device/yearclass/YearClass;->conditionallyAdd(Ljava/util/ArrayList;I)V

    .line 83
    :cond_0
    const/4 v0, 0x0

    .line 84
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 85
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v5, v2, :cond_3

    .line 86
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    .line 88
    goto :goto_0

    .line 90
    :cond_1
    if-lez v1, :cond_2

    .line 91
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int v0, v1, v0

    .line 90
    :goto_2
    return v0

    :cond_2
    move v0, v2

    .line 91
    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private static conditionallyAdd(Ljava/util/ArrayList;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 55
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 56
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_0
    return-void
.end method

.method public static get(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 44
    sget-object v0, Lcom/facebook/device/yearclass/YearClass;->mYearCategory:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 45
    const-class v1, Lcom/facebook/device/yearclass/YearClass;

    monitor-enter v1

    .line 46
    :try_start_0
    sget-object v0, Lcom/facebook/device/yearclass/YearClass;->mYearCategory:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 47
    invoke-static {p0}, Lcom/facebook/device/yearclass/YearClass;->categorizeByYear(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/facebook/device/yearclass/YearClass;->mYearCategory:Ljava/lang/Integer;

    .line 49
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :cond_1
    sget-object v0, Lcom/facebook/device/yearclass/YearClass;->mYearCategory:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 49
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static getClockSpeedYear()I
    .locals 8

    .prologue
    const-wide/32 v6, 0x173180

    const/16 v1, 0x7df

    const/16 v0, 0x7de

    .line 115
    invoke-static {}, Lcom/facebook/device/yearclass/DeviceInfo;->getCPUMaxFreqKHz()I

    move-result v2

    int-to-long v2, v2

    .line 116
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    const/4 v0, -0x1

    .line 133
    :cond_0
    :goto_0
    return v0

    .line 119
    :cond_1
    invoke-static {}, Lcom/facebook/device/yearclass/DeviceInfo;->getNumberOfCPUCores()I

    move-result v4

    .line 120
    const/16 v5, 0x8

    if-ge v4, v5, :cond_8

    .line 123
    const-wide/32 v4, 0x80e80

    cmp-long v4, v2, v4

    if-gtz v4, :cond_2

    const/16 v0, 0x7d8

    goto :goto_0

    .line 124
    :cond_2
    const-wide/32 v4, 0x975e0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_3

    const/16 v0, 0x7d9

    goto :goto_0

    .line 125
    :cond_3
    const-wide/32 v4, 0xf9060

    cmp-long v4, v2, v4

    if-gtz v4, :cond_4

    const/16 v0, 0x7da

    goto :goto_0

    .line 126
    :cond_4
    const-wide/32 v4, 0x129da0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_5

    const/16 v0, 0x7db

    goto :goto_0

    .line 127
    :cond_5
    cmp-long v4, v2, v6

    if-gtz v4, :cond_6

    const/16 v0, 0x7dc

    goto :goto_0

    .line 128
    :cond_6
    const-wide/32 v4, 0x1ed2a0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_7

    const/16 v0, 0x7dd

    goto :goto_0

    .line 129
    :cond_7
    const-wide/32 v4, 0x2191c0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    move v0, v1

    .line 130
    goto :goto_0

    .line 132
    :cond_8
    cmp-long v2, v2, v6

    if-lez v2, :cond_0

    move v0, v1

    .line 133
    goto :goto_0
.end method

.method private static getNumCoresYear()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 101
    invoke-static {}, Lcom/facebook/device/yearclass/DeviceInfo;->getNumberOfCPUCores()I

    move-result v0

    .line 102
    if-ge v0, v1, :cond_0

    const/4 v0, -0x1

    .line 106
    :goto_0
    return v0

    .line 103
    :cond_0
    if-ne v0, v1, :cond_1

    const/16 v0, 0x7d8

    goto :goto_0

    .line 104
    :cond_1
    const/4 v1, 0x3

    if-gt v0, v1, :cond_2

    const/16 v0, 0x7db

    goto :goto_0

    .line 105
    :cond_2
    const/4 v1, 0x4

    if-gt v0, v1, :cond_3

    const/16 v0, 0x7de

    goto :goto_0

    .line 106
    :cond_3
    const/16 v0, 0x7df

    goto :goto_0
.end method

.method private static getRamYear(Landroid/content/Context;)I
    .locals 4

    .prologue
    .line 143
    invoke-static {p0}, Lcom/facebook/device/yearclass/DeviceInfo;->getTotalMemory(Landroid/content/Context;)J

    move-result-wide v0

    .line 144
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    const/4 v0, -0x1

    .line 151
    :goto_0
    return v0

    .line 145
    :cond_0
    const-wide/32 v2, 0xc000000

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    const/16 v0, 0x7d8

    goto :goto_0

    .line 146
    :cond_1
    const-wide/32 v2, 0x12200000

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    const/16 v0, 0x7d9

    goto :goto_0

    .line 147
    :cond_2
    const-wide/32 v2, 0x20000000

    cmp-long v2, v0, v2

    if-gtz v2, :cond_3

    const/16 v0, 0x7da

    goto :goto_0

    .line 148
    :cond_3
    const-wide/32 v2, 0x40000000

    cmp-long v2, v0, v2

    if-gtz v2, :cond_4

    const/16 v0, 0x7db

    goto :goto_0

    .line 149
    :cond_4
    const-wide/32 v2, 0x60000000

    cmp-long v2, v0, v2

    if-gtz v2, :cond_5

    const/16 v0, 0x7dc

    goto :goto_0

    .line 150
    :cond_5
    const-wide v2, 0x80000000L

    cmp-long v0, v0, v2

    if-gtz v0, :cond_6

    const/16 v0, 0x7dd

    goto :goto_0

    .line 151
    :cond_6
    const/16 v0, 0x7df

    goto :goto_0
.end method
