.class public Lcom/ibm/icu/util/BuddhistCalendar;
.super Lcom/ibm/icu/util/GregorianCalendar;
.source "BuddhistCalendar.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/ibm/icu/util/GregorianCalendar;-><init>()V

    .line 67
    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/util/GregorianCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    .line 126
    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    const-string/jumbo v0, "buddhist"

    return-object v0
.end method

.method protected handleComputeFields(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 221
    invoke-super {p0, p1}, Lcom/ibm/icu/util/GregorianCalendar;->handleComputeFields(I)V

    .line 222
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/BuddhistCalendar;->internalGet(I)I

    move-result v0

    add-int/lit16 v0, v0, 0x21f

    .line 223
    invoke-virtual {p0, v1, v1}, Lcom/ibm/icu/util/BuddhistCalendar;->internalSet(II)V

    .line 224
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/ibm/icu/util/BuddhistCalendar;->internalSet(II)V

    .line 225
    return-void
.end method

.method protected handleComputeMonthStart(IIZ)I
    .locals 1

    .prologue
    .line 214
    invoke-super {p0, p1, p2, p3}, Lcom/ibm/icu/util/GregorianCalendar;->handleComputeMonthStart(IIZ)I

    move-result v0

    return v0
.end method

.method protected handleGetExtendedYear()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/16 v1, 0x13

    .line 200
    invoke-virtual {p0, v1, v2}, Lcom/ibm/icu/util/BuddhistCalendar;->newerField(II)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 201
    const/16 v0, 0x7b2

    invoke-virtual {p0, v1, v0}, Lcom/ibm/icu/util/BuddhistCalendar;->internalGet(II)I

    move-result v0

    .line 206
    :goto_0
    return v0

    .line 203
    :cond_0
    const/16 v0, 0x9d1

    invoke-virtual {p0, v2, v0}, Lcom/ibm/icu/util/BuddhistCalendar;->internalGet(II)I

    move-result v0

    add-int/lit16 v0, v0, -0x21f

    goto :goto_0
.end method

.method protected handleGetLimit(II)I
    .locals 1

    .prologue
    .line 234
    if-nez p1, :cond_0

    .line 235
    const/4 v0, 0x0

    .line 237
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ibm/icu/util/GregorianCalendar;->handleGetLimit(II)I

    move-result v0

    goto :goto_0
.end method
