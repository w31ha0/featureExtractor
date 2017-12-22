.class public final Lcom/ibm/icu/impl/DayPeriodRules;
.super Ljava/lang/Object;
.source "DayPeriodRules.java"


# static fields
.field private static final DATA:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesData;


# instance fields
.field private dayPeriodForHour:[Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

.field private hasMidnight:Z

.field private hasNoon:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 226
    invoke-static {}, Lcom/ibm/icu/impl/DayPeriodRules;->loadData()Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesData;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/impl/DayPeriodRules;->DATA:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesData;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput-boolean v0, p0, Lcom/ibm/icu/impl/DayPeriodRules;->hasMidnight:Z

    .line 234
    iput-boolean v0, p0, Lcom/ibm/icu/impl/DayPeriodRules;->hasNoon:Z

    .line 235
    const/16 v0, 0x18

    new-array v0, v0, [Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    iput-object v0, p0, Lcom/ibm/icu/impl/DayPeriodRules;->dayPeriodForHour:[Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    .line 236
    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/impl/DayPeriodRules$1;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/ibm/icu/impl/DayPeriodRules;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 18
    invoke-static {p0}, Lcom/ibm/icu/impl/DayPeriodRules;->parseSetNum(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/ibm/icu/impl/DayPeriodRules;)[Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/ibm/icu/impl/DayPeriodRules;->dayPeriodForHour:[Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    return-object v0
.end method

.method static synthetic access$502(Lcom/ibm/icu/impl/DayPeriodRules;Z)Z
    .locals 0

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/ibm/icu/impl/DayPeriodRules;->hasMidnight:Z

    return p1
.end method

.method static synthetic access$602(Lcom/ibm/icu/impl/DayPeriodRules;Z)Z
    .locals 0

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/ibm/icu/impl/DayPeriodRules;->hasNoon:Z

    return p1
.end method

.method static synthetic access$700(Lcom/ibm/icu/impl/DayPeriodRules;IILcom/ibm/icu/impl/DayPeriodRules$DayPeriod;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/impl/DayPeriodRules;->add(IILcom/ibm/icu/impl/DayPeriodRules$DayPeriod;)V

    return-void
.end method

.method private add(IILcom/ibm/icu/impl/DayPeriodRules$DayPeriod;)V
    .locals 2

    .prologue
    .line 360
    move v0, p1

    :goto_0
    if-eq v0, p2, :cond_1

    .line 361
    const/16 v1, 0x18

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 362
    :cond_0
    iget-object v1, p0, Lcom/ibm/icu/impl/DayPeriodRules;->dayPeriodForHour:[Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    aput-object p3, v1, v0

    .line 360
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 364
    :cond_1
    return-void
.end method

.method private getEndHourForDayPeriod(Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;)I
    .locals 3

    .prologue
    const/16 v1, 0x17

    const/4 v0, 0x0

    .line 330
    sget-object v2, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->MIDNIGHT:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    if-ne p1, v2, :cond_1

    .line 344
    :cond_0
    :goto_0
    return v0

    .line 331
    :cond_1
    sget-object v2, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->NOON:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    if-ne p1, v2, :cond_2

    const/16 v0, 0xc

    goto :goto_0

    .line 333
    :cond_2
    iget-object v2, p0, Lcom/ibm/icu/impl/DayPeriodRules;->dayPeriodForHour:[Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    aget-object v0, v2, v0

    if-ne v0, p1, :cond_3

    iget-object v0, p0, Lcom/ibm/icu/impl/DayPeriodRules;->dayPeriodForHour:[Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    aget-object v0, v0, v1

    if-ne v0, p1, :cond_3

    .line 335
    const/4 v0, 0x1

    :goto_1
    const/16 v1, 0x16

    if-gt v0, v1, :cond_5

    .line 336
    iget-object v1, p0, Lcom/ibm/icu/impl/DayPeriodRules;->dayPeriodForHour:[Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 335
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    .line 342
    :goto_2
    if-ltz v0, :cond_5

    .line 343
    iget-object v1, p0, Lcom/ibm/icu/impl/DayPeriodRules;->dayPeriodForHour:[Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_4

    .line 344
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 342
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 350
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/impl/DayPeriodRules;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 245
    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object v0

    .line 246
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v0, "root"

    :cond_0
    move-object v2, v0

    move-object v0, v1

    .line 249
    :cond_1
    if-nez v0, :cond_2

    .line 250
    sget-object v0, Lcom/ibm/icu/impl/DayPeriodRules;->DATA:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesData;

    iget-object v0, v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesData;->localesToRuleSetNumMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 251
    if-nez v0, :cond_2

    .line 252
    invoke-static {v2}, Lcom/ibm/icu/util/ULocale;->getFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 253
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 262
    :cond_2
    if-eqz v0, :cond_3

    sget-object v2, Lcom/ibm/icu/impl/DayPeriodRules;->DATA:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesData;

    iget-object v2, v2, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesData;->rules:[Lcom/ibm/icu/impl/DayPeriodRules;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, v2, v3

    if-nez v2, :cond_4

    :cond_3
    move-object v0, v1

    .line 267
    :goto_0
    return-object v0

    :cond_4
    sget-object v1, Lcom/ibm/icu/impl/DayPeriodRules;->DATA:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesData;

    iget-object v1, v1, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesData;->rules:[Lcom/ibm/icu/impl/DayPeriodRules;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v1, v0

    goto :goto_0
.end method

.method private getStartHourForDayPeriod(Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;)I
    .locals 3

    .prologue
    const/16 v2, 0x17

    const/4 v0, 0x0

    .line 307
    sget-object v1, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->MIDNIGHT:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    if-ne p1, v1, :cond_0

    .line 320
    :goto_0
    return v0

    .line 308
    :cond_0
    sget-object v1, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->NOON:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    if-ne p1, v1, :cond_1

    const/16 v0, 0xc

    goto :goto_0

    .line 310
    :cond_1
    iget-object v1, p0, Lcom/ibm/icu/impl/DayPeriodRules;->dayPeriodForHour:[Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_4

    iget-object v1, p0, Lcom/ibm/icu/impl/DayPeriodRules;->dayPeriodForHour:[Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    aget-object v1, v1, v2

    if-ne v1, p1, :cond_4

    .line 312
    const/16 v0, 0x16

    :goto_1
    const/4 v1, 0x1

    if-lt v0, v1, :cond_5

    .line 313
    iget-object v1, p0, Lcom/ibm/icu/impl/DayPeriodRules;->dayPeriodForHour:[Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    aget-object v1, v1, v0

    if-eq v1, p1, :cond_2

    .line 314
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 312
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 318
    :cond_3
    add-int/lit8 v0, v0, 0x1

    :cond_4
    if-gt v0, v2, :cond_5

    .line 319
    iget-object v1, p0, Lcom/ibm/icu/impl/DayPeriodRules;->dayPeriodForHour:[Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_3

    goto :goto_0

    .line 326
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private static loadData()Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesData;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 289
    new-instance v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesData;

    invoke-direct {v0, v5}, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesData;-><init>(Lcom/ibm/icu/impl/DayPeriodRules$1;)V

    .line 290
    const-string/jumbo v1, "com/ibm/icu/impl/data/icudt59b"

    const-string/jumbo v2, "dayPeriods"

    sget-object v3, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/ibm/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v1

    .line 296
    new-instance v2, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesCountSink;

    invoke-direct {v2, v0, v5}, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesCountSink;-><init>(Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesData;Lcom/ibm/icu/impl/DayPeriodRules$1;)V

    .line 297
    const-string/jumbo v3, "rules"

    invoke-virtual {v1, v3, v2}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Lcom/ibm/icu/impl/UResource$Sink;)V

    .line 299
    iget v2, v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesData;->maxRuleSetNum:I

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [Lcom/ibm/icu/impl/DayPeriodRules;

    iput-object v2, v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesData;->rules:[Lcom/ibm/icu/impl/DayPeriodRules;

    .line 300
    new-instance v2, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;

    invoke-direct {v2, v0, v5}, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;-><init>(Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesData;Lcom/ibm/icu/impl/DayPeriodRules$1;)V

    .line 301
    const-string/jumbo v3, ""

    invoke-virtual {v1, v3, v2}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Lcom/ibm/icu/impl/UResource$Sink;)V

    .line 303
    return-object v0
.end method

.method private static parseSetNum(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 367
    const-string/jumbo v0, "set"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 368
    new-instance v0, Lcom/ibm/icu/util/ICUException;

    const-string/jumbo v1, "Set number should start with \"set\"."

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 372
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getDayPeriodForHour(I)Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/ibm/icu/impl/DayPeriodRules;->dayPeriodForHour:[Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getMidPointForDayPeriod(Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;)D
    .locals 8

    .prologue
    const-wide/high16 v6, 0x4038000000000000L    # 24.0

    .line 271
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/DayPeriodRules;->getStartHourForDayPeriod(Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;)I

    move-result v2

    .line 272
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/DayPeriodRules;->getEndHourForDayPeriod(Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;)I

    move-result v3

    .line 274
    add-int v0, v2, v3

    int-to-double v0, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v4

    .line 276
    if-le v2, v3, :cond_0

    .line 279
    const-wide/high16 v2, 0x4028000000000000L    # 12.0

    add-double/2addr v0, v2

    .line 280
    cmpl-double v2, v0, v6

    if-ltz v2, :cond_0

    .line 281
    sub-double/2addr v0, v6

    .line 285
    :cond_0
    return-wide v0
.end method

.method public hasMidnight()Z
    .locals 1

    .prologue
    .line 354
    iget-boolean v0, p0, Lcom/ibm/icu/impl/DayPeriodRules;->hasMidnight:Z

    return v0
.end method

.method public hasNoon()Z
    .locals 1

    .prologue
    .line 355
    iget-boolean v0, p0, Lcom/ibm/icu/impl/DayPeriodRules;->hasNoon:Z

    return v0
.end method
