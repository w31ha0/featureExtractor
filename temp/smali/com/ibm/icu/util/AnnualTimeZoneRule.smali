.class public Lcom/ibm/icu/util/AnnualTimeZoneRule;
.super Lcom/ibm/icu/util/TimeZoneRule;
.source "AnnualTimeZoneRule.java"


# instance fields
.field private final dateTimeRule:Lcom/ibm/icu/util/DateTimeRule;

.field private final endYear:I

.field private final startYear:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IILcom/ibm/icu/util/DateTimeRule;II)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/util/TimeZoneRule;-><init>(Ljava/lang/String;II)V

    .line 56
    iput-object p4, p0, Lcom/ibm/icu/util/AnnualTimeZoneRule;->dateTimeRule:Lcom/ibm/icu/util/DateTimeRule;

    .line 57
    iput p5, p0, Lcom/ibm/icu/util/AnnualTimeZoneRule;->startYear:I

    .line 58
    iput p6, p0, Lcom/ibm/icu/util/AnnualTimeZoneRule;->endYear:I

    .line 59
    return-void
.end method


# virtual methods
.method public getEndYear()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/ibm/icu/util/AnnualTimeZoneRule;->endYear:I

    return v0
.end method

.method public getFinalStart(II)Ljava/util/Date;
    .locals 2

    .prologue
    .line 182
    iget v0, p0, Lcom/ibm/icu/util/AnnualTimeZoneRule;->endYear:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 183
    const/4 v0, 0x0

    .line 185
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/ibm/icu/util/AnnualTimeZoneRule;->endYear:I

    invoke-virtual {p0, v0, p1, p2}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getStartInYear(III)Ljava/util/Date;

    move-result-object v0

    goto :goto_0
.end method

.method public getFirstStart(II)Ljava/util/Date;
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/ibm/icu/util/AnnualTimeZoneRule;->startYear:I

    invoke-virtual {p0, v0, p1, p2}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getStartInYear(III)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getNextStart(JIIZ)Ljava/util/Date;
    .locals 5

    .prologue
    .line 194
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/ibm/icu/impl/Grego;->timeToFields(J[I)[I

    move-result-object v0

    .line 195
    const/4 v1, 0x0

    aget v1, v0, v1

    .line 196
    iget v0, p0, Lcom/ibm/icu/util/AnnualTimeZoneRule;->startYear:I

    if-ge v1, v0, :cond_1

    .line 197
    invoke-virtual {p0, p3, p4}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getFirstStart(II)Ljava/util/Date;

    move-result-object v0

    .line 203
    :cond_0
    :goto_0
    return-object v0

    .line 199
    :cond_1
    invoke-virtual {p0, v1, p3, p4}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getStartInYear(III)Ljava/util/Date;

    move-result-object v0

    .line 200
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-ltz v2, :cond_2

    if-nez p5, :cond_0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 201
    :cond_2
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0, p3, p4}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getStartInYear(III)Ljava/util/Date;

    move-result-object v0

    goto :goto_0
.end method

.method public getPreviousStart(JIIZ)Ljava/util/Date;
    .locals 5

    .prologue
    .line 212
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/ibm/icu/impl/Grego;->timeToFields(J[I)[I

    move-result-object v0

    .line 213
    const/4 v1, 0x0

    aget v1, v0, v1

    .line 214
    iget v0, p0, Lcom/ibm/icu/util/AnnualTimeZoneRule;->endYear:I

    if-le v1, v0, :cond_1

    .line 215
    invoke-virtual {p0, p3, p4}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getFinalStart(II)Ljava/util/Date;

    move-result-object v0

    .line 221
    :cond_0
    :goto_0
    return-object v0

    .line 217
    :cond_1
    invoke-virtual {p0, v1, p3, p4}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getStartInYear(III)Ljava/util/Date;

    move-result-object v0

    .line 218
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-gtz v2, :cond_2

    if-nez p5, :cond_0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 219
    :cond_2
    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v0, p3, p4}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getStartInYear(III)Ljava/util/Date;

    move-result-object v0

    goto :goto_0
.end method

.method public getStartInYear(III)Ljava/util/Date;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 112
    iget v2, p0, Lcom/ibm/icu/util/AnnualTimeZoneRule;->startYear:I

    if-lt p1, v2, :cond_0

    iget v2, p0, Lcom/ibm/icu/util/AnnualTimeZoneRule;->endYear:I

    if-le p1, v2, :cond_1

    .line 113
    :cond_0
    const/4 v0, 0x0

    .line 164
    :goto_0
    return-object v0

    .line 117
    :cond_1
    iget-object v2, p0, Lcom/ibm/icu/util/AnnualTimeZoneRule;->dateTimeRule:Lcom/ibm/icu/util/DateTimeRule;

    invoke-virtual {v2}, Lcom/ibm/icu/util/DateTimeRule;->getDateRuleType()I

    move-result v3

    .line 119
    if-nez v3, :cond_4

    .line 120
    iget-object v0, p0, Lcom/ibm/icu/util/AnnualTimeZoneRule;->dateTimeRule:Lcom/ibm/icu/util/DateTimeRule;

    invoke-virtual {v0}, Lcom/ibm/icu/util/DateTimeRule;->getRuleMonth()I

    move-result v0

    iget-object v1, p0, Lcom/ibm/icu/util/AnnualTimeZoneRule;->dateTimeRule:Lcom/ibm/icu/util/DateTimeRule;

    invoke-virtual {v1}, Lcom/ibm/icu/util/DateTimeRule;->getRuleDayOfMonth()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/ibm/icu/impl/Grego;->fieldsToDay(III)J

    move-result-wide v0

    .line 157
    :goto_1
    const-wide/32 v2, 0x5265c00

    mul-long/2addr v0, v2

    iget-object v2, p0, Lcom/ibm/icu/util/AnnualTimeZoneRule;->dateTimeRule:Lcom/ibm/icu/util/DateTimeRule;

    invoke-virtual {v2}, Lcom/ibm/icu/util/DateTimeRule;->getRuleMillisInDay()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 158
    iget-object v2, p0, Lcom/ibm/icu/util/AnnualTimeZoneRule;->dateTimeRule:Lcom/ibm/icu/util/DateTimeRule;

    invoke-virtual {v2}, Lcom/ibm/icu/util/DateTimeRule;->getTimeRuleType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    .line 159
    int-to-long v2, p2

    sub-long/2addr v0, v2

    .line 161
    :cond_2
    iget-object v2, p0, Lcom/ibm/icu/util/AnnualTimeZoneRule;->dateTimeRule:Lcom/ibm/icu/util/DateTimeRule;

    invoke-virtual {v2}, Lcom/ibm/icu/util/DateTimeRule;->getTimeRuleType()I

    move-result v2

    if-nez v2, :cond_3

    .line 162
    int-to-long v2, p3

    sub-long/2addr v0, v2

    .line 164
    :cond_3
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    move-object v0, v2

    goto :goto_0

    .line 123
    :cond_4
    if-ne v3, v0, :cond_6

    .line 124
    iget-object v2, p0, Lcom/ibm/icu/util/AnnualTimeZoneRule;->dateTimeRule:Lcom/ibm/icu/util/DateTimeRule;

    invoke-virtual {v2}, Lcom/ibm/icu/util/DateTimeRule;->getRuleWeekInMonth()I

    move-result v2

    .line 125
    if-lez v2, :cond_5

    .line 126
    iget-object v1, p0, Lcom/ibm/icu/util/AnnualTimeZoneRule;->dateTimeRule:Lcom/ibm/icu/util/DateTimeRule;

    invoke-virtual {v1}, Lcom/ibm/icu/util/DateTimeRule;->getRuleMonth()I

    move-result v1

    invoke-static {p1, v1, v0}, Lcom/ibm/icu/impl/Grego;->fieldsToDay(III)J

    move-result-wide v4

    .line 127
    add-int/lit8 v1, v2, -0x1

    mul-int/lit8 v1, v1, 0x7

    int-to-long v2, v1

    add-long/2addr v2, v4

    .line 147
    :goto_2
    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Grego;->dayOfWeek(J)I

    move-result v1

    .line 148
    iget-object v4, p0, Lcom/ibm/icu/util/AnnualTimeZoneRule;->dateTimeRule:Lcom/ibm/icu/util/DateTimeRule;

    invoke-virtual {v4}, Lcom/ibm/icu/util/DateTimeRule;->getRuleDayOfWeek()I

    move-result v4

    sub-int v1, v4, v1

    .line 149
    if-eqz v0, :cond_8

    .line 150
    if-gez v1, :cond_7

    add-int/lit8 v0, v1, 0x7

    .line 154
    :goto_3
    int-to-long v0, v0

    add-long/2addr v0, v2

    goto :goto_1

    .line 130
    :cond_5
    iget-object v0, p0, Lcom/ibm/icu/util/AnnualTimeZoneRule;->dateTimeRule:Lcom/ibm/icu/util/DateTimeRule;

    invoke-virtual {v0}, Lcom/ibm/icu/util/DateTimeRule;->getRuleMonth()I

    move-result v0

    iget-object v3, p0, Lcom/ibm/icu/util/AnnualTimeZoneRule;->dateTimeRule:Lcom/ibm/icu/util/DateTimeRule;

    .line 131
    invoke-virtual {v3}, Lcom/ibm/icu/util/DateTimeRule;->getRuleMonth()I

    move-result v3

    invoke-static {p1, v3}, Lcom/ibm/icu/impl/Grego;->monthLength(II)I

    move-result v3

    .line 130
    invoke-static {p1, v0, v3}, Lcom/ibm/icu/impl/Grego;->fieldsToDay(III)J

    move-result-wide v4

    .line 132
    add-int/lit8 v0, v2, 0x1

    mul-int/lit8 v0, v0, 0x7

    int-to-long v2, v0

    add-long/2addr v2, v4

    move v0, v1

    goto :goto_2

    .line 135
    :cond_6
    iget-object v2, p0, Lcom/ibm/icu/util/AnnualTimeZoneRule;->dateTimeRule:Lcom/ibm/icu/util/DateTimeRule;

    invoke-virtual {v2}, Lcom/ibm/icu/util/DateTimeRule;->getRuleMonth()I

    move-result v4

    .line 136
    iget-object v2, p0, Lcom/ibm/icu/util/AnnualTimeZoneRule;->dateTimeRule:Lcom/ibm/icu/util/DateTimeRule;

    invoke-virtual {v2}, Lcom/ibm/icu/util/DateTimeRule;->getRuleDayOfMonth()I

    move-result v2

    .line 137
    const/4 v5, 0x3

    if-ne v3, v5, :cond_b

    .line 140
    if-ne v4, v0, :cond_a

    const/16 v0, 0x1d

    if-ne v2, v0, :cond_a

    invoke-static {p1}, Lcom/ibm/icu/impl/Grego;->isLeapYear(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 141
    add-int/lit8 v0, v2, -0x1

    .line 144
    :goto_4
    invoke-static {p1, v4, v0}, Lcom/ibm/icu/impl/Grego;->fieldsToDay(III)J

    move-result-wide v2

    move v0, v1

    goto :goto_2

    :cond_7
    move v0, v1

    .line 150
    goto :goto_3

    .line 152
    :cond_8
    if-lez v1, :cond_9

    add-int/lit8 v1, v1, -0x7

    :cond_9
    move v0, v1

    goto :goto_3

    :cond_a
    move v0, v2

    goto :goto_4

    :cond_b
    move v1, v0

    move v0, v2

    goto :goto_4
.end method

.method public isTransitionRule()Z
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    invoke-super {p0}, Lcom/ibm/icu/util/TimeZoneRule;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ", rule={"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ibm/icu/util/AnnualTimeZoneRule;->dateTimeRule:Lcom/ibm/icu/util/DateTimeRule;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ", startYear="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ibm/icu/util/AnnualTimeZoneRule;->startYear:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    const-string/jumbo v1, ", endYear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    iget v1, p0, Lcom/ibm/icu/util/AnnualTimeZoneRule;->endYear:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    .line 267
    const-string/jumbo v1, "max"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 269
    :cond_0
    iget v1, p0, Lcom/ibm/icu/util/AnnualTimeZoneRule;->endYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
