.class public final Lcom/ibm/icu/util/CopticCalendar;
.super Lcom/ibm/icu/util/CECalendar;
.source "CopticCalendar.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/ibm/icu/util/CECalendar;-><init>()V

    .line 134
    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V
    .locals 0

    .prologue
    .line 190
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/util/CECalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    .line 191
    return-void
.end method


# virtual methods
.method protected getJDEpochOffset()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 304
    const v0, 0x1bd799

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    const-string/jumbo v0, "coptic"

    return-object v0
.end method

.method protected handleComputeFields(I)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 274
    const/4 v0, 0x3

    new-array v4, v0, [I

    .line 275
    invoke-virtual {p0}, Lcom/ibm/icu/util/CopticCalendar;->getJDEpochOffset()I

    move-result v0

    invoke-static {p1, v0, v4}, Lcom/ibm/icu/util/CopticCalendar;->jdToCE(II[I)V

    .line 281
    aget v0, v4, v2

    if-gtz v0, :cond_0

    .line 283
    aget v0, v4, v2

    rsub-int/lit8 v0, v0, 0x1

    move v1, v2

    .line 289
    :goto_0
    const/16 v5, 0x13

    aget v6, v4, v2

    invoke-virtual {p0, v5, v6}, Lcom/ibm/icu/util/CopticCalendar;->internalSet(II)V

    .line 290
    invoke-virtual {p0, v2, v1}, Lcom/ibm/icu/util/CopticCalendar;->internalSet(II)V

    .line 291
    invoke-virtual {p0, v3, v0}, Lcom/ibm/icu/util/CopticCalendar;->internalSet(II)V

    .line 292
    aget v0, v4, v3

    invoke-virtual {p0, v7, v0}, Lcom/ibm/icu/util/CopticCalendar;->internalSet(II)V

    .line 293
    const/4 v0, 0x5

    aget v1, v4, v7

    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/util/CopticCalendar;->internalSet(II)V

    .line 294
    const/4 v0, 0x6

    aget v1, v4, v3

    mul-int/lit8 v1, v1, 0x1e

    aget v2, v4, v7

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/util/CopticCalendar;->internalSet(II)V

    .line 295
    return-void

    .line 286
    :cond_0
    aget v0, v4, v2

    move v1, v3

    goto :goto_0
.end method

.method protected handleGetExtendedYear()I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/16 v2, 0x13

    const/4 v1, 0x1

    .line 252
    invoke-virtual {p0, v2, v1}, Lcom/ibm/icu/util/CopticCalendar;->newerField(II)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 253
    invoke-virtual {p0, v2, v1}, Lcom/ibm/icu/util/CopticCalendar;->internalGet(II)I

    move-result v0

    .line 263
    :goto_0
    return v0

    .line 256
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/util/CopticCalendar;->internalGet(II)I

    move-result v0

    .line 257
    if-nez v0, :cond_1

    .line 258
    invoke-virtual {p0, v1, v1}, Lcom/ibm/icu/util/CopticCalendar;->internalGet(II)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 260
    :cond_1
    invoke-virtual {p0, v1, v1}, Lcom/ibm/icu/util/CopticCalendar;->internalGet(II)I

    move-result v0

    goto :goto_0
.end method
