.class public Lcom/ibm/icu/text/CurrencyMetaInfo;
.super Ljava/lang/Object;
.source "CurrencyMetaInfo.java"


# static fields
.field protected static final defaultDigits:Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyDigits;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final hasData:Z

.field private static final impl:Lcom/ibm/icu/text/CurrencyMetaInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 565
    new-instance v0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyDigits;

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyDigits;-><init>(II)V

    sput-object v0, Lcom/ibm/icu/text/CurrencyMetaInfo;->defaultDigits:Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyDigits;

    .line 571
    :try_start_0
    const-string/jumbo v0, "com.ibm.icu.impl.ICUCurrencyMetaInfo"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 572
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/CurrencyMetaInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    const/4 v1, 0x1

    move v3, v1

    move-object v1, v0

    move v0, v3

    .line 577
    :goto_0
    sput-object v1, Lcom/ibm/icu/text/CurrencyMetaInfo;->impl:Lcom/ibm/icu/text/CurrencyMetaInfo;

    .line 578
    sput-boolean v0, Lcom/ibm/icu/text/CurrencyMetaInfo;->hasData:Z

    .line 579
    return-void

    .line 574
    :catch_0
    move-exception v0

    .line 575
    new-instance v0, Lcom/ibm/icu/text/CurrencyMetaInfo;

    invoke-direct {v0}, Lcom/ibm/icu/text/CurrencyMetaInfo;-><init>()V

    move v3, v1

    move-object v1, v0

    move v0, v3

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    return-void
.end method

.method static synthetic access$000(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    invoke-static {p0}, Lcom/ibm/icu/text/CurrencyMetaInfo;->debugString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static dateString(J)Ljava/lang/String;
    .locals 2

    .prologue
    .line 582
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    .line 583
    :cond_0
    const/4 v0, 0x0

    .line 585
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/Grego;->timeToString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static debugString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 589
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 591
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    array-length v5, v4

    move v1, v2

    :goto_0
    if-ge v1, v5, :cond_5

    aget-object v6, v4, v1

    .line 592
    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 593
    if-eqz v0, :cond_0

    .line 595
    instance-of v7, v0, Ljava/util/Date;

    if-eqz v7, :cond_1

    .line 596
    check-cast v0, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/ibm/icu/text/CurrencyMetaInfo;->dateString(J)Ljava/lang/String;

    move-result-object v0

    .line 602
    :goto_1
    if-nez v0, :cond_3

    .line 591
    :cond_0
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 597
    :cond_1
    instance-of v7, v0, Ljava/lang/Long;

    if-eqz v7, :cond_2

    .line 598
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/ibm/icu/text/CurrencyMetaInfo;->dateString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 600
    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 605
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_4

    .line 606
    const-string/jumbo v7, ","

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    :cond_4
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "=\'"

    .line 609
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 610
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, "\'"

    .line 611
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 614
    :catch_0
    move-exception v0

    .line 616
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    const-string/jumbo v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/ibm/icu/text/CurrencyMetaInfo;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/ibm/icu/text/CurrencyMetaInfo;->impl:Lcom/ibm/icu/text/CurrencyMetaInfo;

    return-object v0
.end method


# virtual methods
.method public currencies(Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 521
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public currencyDigits(Ljava/lang/String;Lcom/ibm/icu/util/Currency$CurrencyUsage;)Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyDigits;
    .locals 1

    .prologue
    .line 557
    sget-object v0, Lcom/ibm/icu/text/CurrencyMetaInfo;->defaultDigits:Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyDigits;

    return-object v0
.end method
