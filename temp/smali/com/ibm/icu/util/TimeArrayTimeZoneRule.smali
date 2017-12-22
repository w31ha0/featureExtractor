.class public Lcom/ibm/icu/util/TimeArrayTimeZoneRule;
.super Lcom/ibm/icu/util/TimeZoneRule;
.source "TimeArrayTimeZoneRule.java"


# instance fields
.field private final startTimes:[J

.field private final timeType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II[JI)V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/util/TimeZoneRule;-><init>(Ljava/lang/String;II)V

    .line 46
    if-eqz p4, :cond_0

    array-length v0, p4

    if-nez v0, :cond_1

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No start times are specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_1
    invoke-virtual {p4}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    iput-object v0, p0, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    .line 50
    iget-object v0, p0, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    invoke-static {v0}, Ljava/util/Arrays;->sort([J)V

    .line 52
    iput p5, p0, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;->timeType:I

    .line 53
    return-void
.end method

.method private getUTC(JII)J
    .locals 3

    .prologue
    .line 159
    iget v0, p0, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;->timeType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 160
    int-to-long v0, p3

    sub-long/2addr p1, v0

    .line 162
    :cond_0
    iget v0, p0, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;->timeType:I

    if-nez v0, :cond_1

    .line 163
    int-to-long v0, p4

    sub-long/2addr p1, v0

    .line 165
    :cond_1
    return-wide p1
.end method


# virtual methods
.method public getNextStart(JIIZ)Ljava/util/Date;
    .locals 5

    .prologue
    .line 102
    iget-object v0, p0, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    .line 103
    :goto_0
    if-ltz v1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    aget-wide v2, v0, v1

    invoke-direct {p0, v2, v3, p3, p4}, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;->getUTC(JII)J

    move-result-wide v2

    .line 105
    cmp-long v0, v2, p1

    if-ltz v0, :cond_0

    if-nez p5, :cond_1

    cmp-long v0, v2, p1

    if-nez v0, :cond_1

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_2

    .line 110
    const/4 v0, 0x0

    .line 112
    :goto_1
    return-object v0

    .line 103
    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 112
    :cond_2
    new-instance v0, Ljava/util/Date;

    iget-object v2, p0, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    add-int/lit8 v1, v1, 0x1

    aget-wide v2, v2, v1

    invoke-direct {p0, v2, v3, p3, p4}, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;->getUTC(JII)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto :goto_1
.end method

.method public isTransitionRule()Z
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    invoke-super {p0}, Lcom/ibm/icu/util/TimeZoneRule;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    const-string/jumbo v0, ", timeType="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    iget v0, p0, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;->timeType:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    const-string/jumbo v0, ", startTimes=["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 183
    if-eqz v0, :cond_0

    .line 184
    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    :cond_0
    iget-object v2, p0, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;->startTimes:[J

    aget-wide v2, v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 188
    :cond_1
    const-string/jumbo v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
