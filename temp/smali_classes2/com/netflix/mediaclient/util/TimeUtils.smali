.class public Lcom/netflix/mediaclient/util/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field public static final DAYS_PER_MONTH:I = 0x1e

.field public static final HOURS_PER_DAY:I = 0x18

.field private static final MARGIN_FOR_BOOKMARK_RESET_SECONDS:I = 0x1e

.field public static final MILLISECONDS_PER_HOUR:I = 0x36ee80

.field public static final MILLISECONDS_PER_MINUTE:I = 0xea60

.field public static final MILLISECONDS_PER_MONTH:J = 0x9a7ec800L

.field public static final MILLISECONDS_PER_SECOND:I = 0x3e8

.field public static final MINUTES_PER_HOUR:I = 0x3c

.field public static final NANOSECONDS_PER_MILLISECOND:I = 0xf4240

.field public static final NANOSECONDS_PER_SECOND:I = 0x3b9aca00

.field public static final SECONDS_PER_DAY:I = 0x15180

.field public static final SECONDS_PER_HOUR:I = 0xe10

.field public static final SECONDS_PER_MINUTE:I = 0x3c


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computePlayPos(III)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 85
    if-lez p1, :cond_1

    if-lt p0, p1, :cond_1

    move p0, v0

    .line 94
    :cond_0
    :goto_0
    return p0

    .line 88
    :cond_1
    if-lez p2, :cond_2

    add-int/lit8 v1, p2, -0x1e

    if-lt p0, v1, :cond_2

    move p0, v0

    .line 89
    goto :goto_0

    .line 91
    :cond_2
    if-gez p0, :cond_0

    move p0, v0

    .line 92
    goto :goto_0
.end method

.method public static computeTimeInMsSinceStart(J)J
    .locals 4

    .prologue
    .line 54
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr v0, p0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static convertNsToMs(J)J
    .locals 2

    .prologue
    .line 50
    const-wide/32 v0, 0xf4240

    div-long v0, p0, v0

    return-wide v0
.end method

.method public static convertSecondsToMinutes(I)I
    .locals 2

    .prologue
    .line 46
    int-to-float v0, p0

    const/high16 v1, 0x42700000    # 60.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static getDeviceCurrentBootTimeInMs()J
    .locals 4

    .prologue
    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public static getFormattedTime(ILandroid/content/Context;)Ljava/lang/String;
    .locals 7

    .prologue
    const v3, 0x7f09014f

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 62
    const-string/jumbo v0, "iw"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    div-int/lit8 v2, p0, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 75
    :goto_0
    return-object v0

    .line 66
    :cond_0
    div-int/lit16 v0, p0, 0xe10

    .line 67
    mul-int/lit16 v1, v0, 0xe10

    sub-int v1, p0, v1

    div-int/lit8 v1, v1, 0x3c

    .line 68
    if-lez v0, :cond_2

    .line 69
    if-lez v1, :cond_1

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09014e

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09014d

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 72
    :cond_2
    if-lez v1, :cond_3

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v5

    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 75
    :cond_3
    const-string/jumbo v0, ""

    goto :goto_0
.end method
