.class public final Ltwitter4j/util/TimeSpanUtil;
.super Ljava/lang/Object;
.source "TimeSpanUtil.java"


# static fields
.field private static ONE_DAY_IN_SECONDS:I

.field private static ONE_HOUR_IN_SECONDS:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/16 v0, 0xe10

    sput v0, Ltwitter4j/util/TimeSpanUtil;->ONE_HOUR_IN_SECONDS:I

    .line 37
    sget v0, Ltwitter4j/util/TimeSpanUtil;->ONE_HOUR_IN_SECONDS:I

    mul-int/lit8 v0, v0, 0x18

    sput v0, Ltwitter4j/util/TimeSpanUtil;->ONE_DAY_IN_SECONDS:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "not intended to be instantiated."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static toTimeSpanString(I)Ljava/lang/String;
    .locals 5
    .param p0, "deltaInSeconds"    # I

    .prologue
    .line 54
    const/4 v3, 0x5

    if-ge p0, v3, :cond_0

    .line 55
    const-string v3, "less than 5 seconds ago"

    .line 88
    :goto_0
    return-object v3

    .line 56
    :cond_0
    const/16 v3, 0xa

    if-ge p0, v3, :cond_1

    .line 57
    const-string v3, "less than 10 seconds ago"

    goto :goto_0

    .line 58
    :cond_1
    const/16 v3, 0x14

    if-ge p0, v3, :cond_2

    .line 59
    const-string v3, "less than 20 seconds ago"

    goto :goto_0

    .line 60
    :cond_2
    const/16 v3, 0x28

    if-ge p0, v3, :cond_3

    .line 61
    const-string v3, "half a minute ago"

    goto :goto_0

    .line 62
    :cond_3
    const/16 v3, 0x3c

    if-ge p0, v3, :cond_4

    .line 63
    const-string v3, "less than a minute ago"

    goto :goto_0

    .line 66
    :cond_4
    const/16 v3, 0xa8c

    if-ge p0, v3, :cond_6

    .line 67
    div-int/lit8 v2, p0, 0x3c

    .line 68
    .local v2, "minutes":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 69
    const-string v3, "1 minute ago"

    goto :goto_0

    .line 71
    :cond_5
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " minutes ago"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 74
    .end local v2    # "minutes":I
    :cond_6
    const/16 v3, 0x189c

    if-ge p0, v3, :cond_7

    .line 75
    const-string v3, "about an hour ago"

    goto :goto_0

    .line 77
    :cond_7
    sget v3, Ltwitter4j/util/TimeSpanUtil;->ONE_DAY_IN_SECONDS:I

    if-ge p0, v3, :cond_8

    .line 78
    add-int/lit16 v3, p0, 0x384

    sget v4, Ltwitter4j/util/TimeSpanUtil;->ONE_HOUR_IN_SECONDS:I

    div-int v1, v3, v4

    .line 79
    .local v1, "hours":I
    const/16 v3, 0x18

    if-ge v1, v3, :cond_8

    .line 80
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "about "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " hours ago"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 83
    .end local v1    # "hours":I
    :cond_8
    const v3, 0x2a300

    if-ge p0, v3, :cond_9

    .line 84
    const-string v3, "1 day ago"

    goto :goto_0

    .line 87
    :cond_9
    sget v3, Ltwitter4j/util/TimeSpanUtil;->ONE_DAY_IN_SECONDS:I

    div-int v0, p0, v3

    .line 88
    .local v0, "days":I
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " days ago"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0
.end method

.method public static toTimeSpanString(J)Ljava/lang/String;
    .locals 5
    .param p0, "milliseconds"    # J

    .prologue
    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p0

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v0, v1

    .line 49
    .local v0, "deltaInSeconds":I
    invoke-static {v0}, Ltwitter4j/util/TimeSpanUtil;->toTimeSpanString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static toTimeSpanString(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 44
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ltwitter4j/util/TimeSpanUtil;->toTimeSpanString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
