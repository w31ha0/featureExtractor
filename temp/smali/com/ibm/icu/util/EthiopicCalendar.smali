.class public final Lcom/ibm/icu/util/EthiopicCalendar;
.super Lcom/ibm/icu/util/CECalendar;
.source "EthiopicCalendar.java"


# instance fields
.field private eraType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 158
    invoke-static {}, Lcom/ibm/icu/util/TimeZone;->getDefault()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v1}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/util/EthiopicCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    .line 159
    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V
    .locals 1

    .prologue
    .line 215
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/util/CECalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    .line 150
    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu/util/EthiopicCalendar;->eraType:I

    .line 216
    invoke-direct {p0, p2}, Lcom/ibm/icu/util/EthiopicCalendar;->setCalcTypeForLocale(Lcom/ibm/icu/util/ULocale;)V

    .line 217
    return-void
.end method

.method private setCalcTypeForLocale(Lcom/ibm/icu/util/ULocale;)V
    .locals 2

    .prologue
    .line 402
    invoke-static {p1}, Lcom/ibm/icu/impl/CalendarUtil;->getCalendarType(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    .line 403
    const-string/jumbo v1, "ethiopic-amete-alem"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/EthiopicCalendar;->setAmeteAlemEra(Z)V

    .line 408
    :goto_0
    return-void

    .line 406
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/EthiopicCalendar;->setAmeteAlemEra(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected getJDEpochOffset()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 377
    const v0, 0x1a4dd0

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/ibm/icu/util/EthiopicCalendar;->isAmeteAlemEra()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    const-string/jumbo v0, "ethiopic-amete-alem"

    .line 271
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "ethiopic"

    goto :goto_0
.end method

.method protected handleComputeFields(I)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 329
    const/4 v0, 0x3

    new-array v4, v0, [I

    .line 330
    invoke-virtual {p0}, Lcom/ibm/icu/util/EthiopicCalendar;->getJDEpochOffset()I

    move-result v0

    invoke-static {p1, v0, v4}, Lcom/ibm/icu/util/EthiopicCalendar;->jdToCE(II[I)V

    .line 336
    invoke-virtual {p0}, Lcom/ibm/icu/util/EthiopicCalendar;->isAmeteAlemEra()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    aget v0, v4, v2

    add-int/lit16 v0, v0, 0x157c

    move v1, v2

    .line 349
    :goto_0
    const/16 v5, 0x13

    aget v6, v4, v2

    invoke-virtual {p0, v5, v6}, Lcom/ibm/icu/util/EthiopicCalendar;->internalSet(II)V

    .line 350
    invoke-virtual {p0, v2, v1}, Lcom/ibm/icu/util/EthiopicCalendar;->internalSet(II)V

    .line 351
    invoke-virtual {p0, v3, v0}, Lcom/ibm/icu/util/EthiopicCalendar;->internalSet(II)V

    .line 352
    aget v0, v4, v3

    invoke-virtual {p0, v7, v0}, Lcom/ibm/icu/util/EthiopicCalendar;->internalSet(II)V

    .line 353
    const/4 v0, 0x5

    aget v1, v4, v7

    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/util/EthiopicCalendar;->internalSet(II)V

    .line 354
    const/4 v0, 0x6

    aget v1, v4, v3

    mul-int/lit8 v1, v1, 0x1e

    aget v2, v4, v7

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/util/EthiopicCalendar;->internalSet(II)V

    .line 355
    return-void

    .line 340
    :cond_0
    aget v0, v4, v2

    if-lez v0, :cond_1

    .line 342
    aget v0, v4, v2

    move v1, v3

    goto :goto_0

    .line 345
    :cond_1
    aget v0, v4, v2

    add-int/lit16 v0, v0, 0x157c

    move v1, v2

    goto :goto_0
.end method

.method protected handleGetExtendedYear()I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/16 v2, 0x13

    const/4 v1, 0x1

    .line 304
    invoke-virtual {p0, v2, v1}, Lcom/ibm/icu/util/EthiopicCalendar;->newerField(II)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 305
    invoke-virtual {p0, v2, v1}, Lcom/ibm/icu/util/EthiopicCalendar;->internalGet(II)I

    move-result v0

    .line 318
    :goto_0
    return v0

    .line 306
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/util/EthiopicCalendar;->isAmeteAlemEra()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 307
    const/16 v0, 0x157d

    invoke-virtual {p0, v1, v0}, Lcom/ibm/icu/util/EthiopicCalendar;->internalGet(II)I

    move-result v0

    add-int/lit16 v0, v0, -0x157c

    goto :goto_0

    .line 311
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/util/EthiopicCalendar;->internalGet(II)I

    move-result v0

    .line 312
    if-ne v0, v1, :cond_2

    .line 313
    invoke-virtual {p0, v1, v1}, Lcom/ibm/icu/util/EthiopicCalendar;->internalGet(II)I

    move-result v0

    goto :goto_0

    .line 315
    :cond_2
    invoke-virtual {p0, v1, v1}, Lcom/ibm/icu/util/EthiopicCalendar;->internalGet(II)I

    move-result v0

    add-int/lit16 v0, v0, -0x157c

    goto :goto_0
.end method

.method protected handleGetLimit(II)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/ibm/icu/util/EthiopicCalendar;->isAmeteAlemEra()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 365
    const/4 v0, 0x0

    .line 367
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ibm/icu/util/CECalendar;->handleGetLimit(II)I

    move-result v0

    goto :goto_0
.end method

.method public isAmeteAlemEra()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 291
    iget v1, p0, Lcom/ibm/icu/util/EthiopicCalendar;->eraType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAmeteAlemEra(Z)V
    .locals 1

    .prologue
    .line 281
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/ibm/icu/util/EthiopicCalendar;->eraType:I

    .line 282
    return-void

    .line 281
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
