.class public Lcom/ibm/icu/text/DecimalFormat;
.super Lcom/ibm/icu/text/NumberFormat;
.source "DecimalFormat.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final threadLocalProperties:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/ibm/icu/impl/number/Properties;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field volatile transient exportedProperties:Lcom/ibm/icu/impl/number/Properties;

.field volatile transient formatter:Lcom/ibm/icu/impl/number/Format$SingularFormat;

.field private transient icuMathContextForm:I

.field transient properties:Lcom/ibm/icu/impl/number/Properties;

.field private final serialVersionOnStream:I

.field volatile transient symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 231
    const-class v0, Lcom/ibm/icu/text/DecimalFormat;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/ibm/icu/text/DecimalFormat;->$assertionsDisabled:Z

    .line 2426
    new-instance v0, Lcom/ibm/icu/text/DecimalFormat$1;

    invoke-direct {v0}, Lcom/ibm/icu/text/DecimalFormat$1;-><init>()V

    sput-object v0, Lcom/ibm/icu/text/DecimalFormat;->threadLocalProperties:Ljava/lang/ThreadLocal;

    return-void

    .line 231
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 297
    invoke-direct {p0}, Lcom/ibm/icu/text/NumberFormat;-><init>()V

    .line 240
    const/4 v0, 0x5

    iput v0, p0, Lcom/ibm/icu/text/DecimalFormat;->serialVersionOnStream:I

    .line 1255
    iput v1, p0, Lcom/ibm/icu/text/DecimalFormat;->icuMathContextForm:I

    .line 299
    sget-object v0, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    .line 300
    invoke-static {v0, v1}, Lcom/ibm/icu/text/DecimalFormat;->getPattern(Lcom/ibm/icu/util/ULocale;I)Ljava/lang/String;

    move-result-object v0

    .line 301
    invoke-static {}, Lcom/ibm/icu/text/DecimalFormat;->getDefaultSymbols()Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-result-object v1

    iput-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    .line 302
    new-instance v1, Lcom/ibm/icu/impl/number/Properties;

    invoke-direct {v1}, Lcom/ibm/icu/impl/number/Properties;-><init>()V

    iput-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    .line 303
    new-instance v1, Lcom/ibm/icu/impl/number/Properties;

    invoke-direct {v1}, Lcom/ibm/icu/impl/number/Properties;-><init>()V

    iput-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->exportedProperties:Lcom/ibm/icu/impl/number/Properties;

    .line 305
    invoke-static {v0}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->hasCurrencySymbols(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 306
    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/text/DecimalFormat;->setPropertiesFromPattern(Ljava/lang/String;Z)V

    .line 307
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V

    .line 308
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/ibm/icu/text/DecimalFormatSymbols;)V
    .locals 1

    .prologue
    .line 360
    invoke-direct {p0}, Lcom/ibm/icu/text/NumberFormat;-><init>()V

    .line 240
    const/4 v0, 0x5

    iput v0, p0, Lcom/ibm/icu/text/DecimalFormat;->serialVersionOnStream:I

    .line 1255
    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu/text/DecimalFormat;->icuMathContextForm:I

    .line 361
    invoke-virtual {p2}, Lcom/ibm/icu/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/DecimalFormatSymbols;

    iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    .line 362
    new-instance v0, Lcom/ibm/icu/impl/number/Properties;

    invoke-direct {v0}, Lcom/ibm/icu/impl/number/Properties;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    .line 363
    new-instance v0, Lcom/ibm/icu/impl/number/Properties;

    invoke-direct {v0}, Lcom/ibm/icu/impl/number/Properties;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->exportedProperties:Lcom/ibm/icu/impl/number/Properties;

    .line 365
    invoke-static {p1}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->hasCurrencySymbols(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 366
    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/text/DecimalFormat;->setPropertiesFromPattern(Ljava/lang/String;Z)V

    .line 367
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V

    .line 368
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/ibm/icu/text/DecimalFormatSymbols;I)V
    .locals 4

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 398
    invoke-direct {p0}, Lcom/ibm/icu/text/NumberFormat;-><init>()V

    .line 240
    iput v3, p0, Lcom/ibm/icu/text/DecimalFormat;->serialVersionOnStream:I

    .line 1255
    iput v1, p0, Lcom/ibm/icu/text/DecimalFormat;->icuMathContextForm:I

    .line 399
    invoke-virtual {p2}, Lcom/ibm/icu/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/DecimalFormatSymbols;

    iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    .line 400
    new-instance v0, Lcom/ibm/icu/impl/number/Properties;

    invoke-direct {v0}, Lcom/ibm/icu/impl/number/Properties;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    .line 401
    new-instance v0, Lcom/ibm/icu/impl/number/Properties;

    invoke-direct {v0}, Lcom/ibm/icu/impl/number/Properties;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->exportedProperties:Lcom/ibm/icu/impl/number/Properties;

    .line 403
    if-eq p3, v2, :cond_0

    if-eq p3, v3, :cond_0

    const/4 v0, 0x7

    if-eq p3, v0, :cond_0

    const/16 v0, 0x8

    if-eq p3, v0, :cond_0

    const/16 v0, 0x9

    if-eq p3, v0, :cond_0

    const/4 v0, 0x6

    if-eq p3, v0, :cond_0

    .line 409
    invoke-static {p1}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->hasCurrencySymbols(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 410
    :cond_0
    invoke-virtual {p0, p1, v2}, Lcom/ibm/icu/text/DecimalFormat;->setPropertiesFromPattern(Ljava/lang/String;Z)V

    .line 414
    :goto_0
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V

    .line 415
    return-void

    .line 412
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/ibm/icu/text/DecimalFormat;->setPropertiesFromPattern(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private static getDefaultSymbols()Lcom/ibm/icu/text/DecimalFormatSymbols;
    .locals 1

    .prologue
    .line 418
    invoke-static {}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getInstance()Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized applyPattern(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 453
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/text/DecimalFormat;->setPropertiesFromPattern(Ljava/lang/String;Z)V

    .line 456
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/number/Properties;->setPositivePrefix(Ljava/lang/String;)Lcom/ibm/icu/impl/number/Properties;

    .line 457
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/number/Properties;->setNegativePrefix(Ljava/lang/String;)Lcom/ibm/icu/impl/number/Properties;

    .line 458
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/number/Properties;->setPositiveSuffix(Ljava/lang/String;)Lcom/ibm/icu/impl/number/Properties;

    .line 459
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/number/Properties;->setNegativeSuffix(Ljava/lang/String;)Lcom/ibm/icu/impl/number/Properties;

    .line 460
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/number/Properties;->setCurrencyPluralInfo(Lcom/ibm/icu/text/CurrencyPluralInfo;)Lcom/ibm/icu/impl/number/Properties;

    .line 461
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    monitor-exit p0

    return-void

    .line 453
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 488
    invoke-super {p0}, Lcom/ibm/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/DecimalFormat;

    .line 489
    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/text/DecimalFormatSymbols;

    iput-object v1, v0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    .line 490
    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/number/Properties;->clone()Lcom/ibm/icu/impl/number/Properties;

    move-result-object v1

    iput-object v1, v0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    .line 491
    new-instance v1, Lcom/ibm/icu/impl/number/Properties;

    invoke-direct {v1}, Lcom/ibm/icu/impl/number/Properties;-><init>()V

    iput-object v1, v0, Lcom/ibm/icu/text/DecimalFormat;->exportedProperties:Lcom/ibm/icu/impl/number/Properties;

    .line 492
    invoke-virtual {v0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V

    .line 493
    return-object v0
.end method

.method public declared-synchronized equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2335
    monitor-enter p0

    if-nez p1, :cond_1

    .line 2339
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 2336
    :cond_1
    if-ne p1, p0, :cond_2

    move v1, v0

    goto :goto_0

    .line 2337
    :cond_2
    :try_start_0
    instance-of v2, p1, Lcom/ibm/icu/text/DecimalFormat;

    if-eqz v2, :cond_0

    .line 2338
    check-cast p1, Lcom/ibm/icu/text/DecimalFormat;

    .line 2339
    iget-object v2, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    iget-object v3, p1, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v2, v3}, Lcom/ibm/icu/impl/number/Properties;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    iget-object v3, p1, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v2, v3}, Lcom/ibm/icu/text/DecimalFormatSymbols;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    .line 2335
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 3

    .prologue
    .line 691
    new-instance v0, Lcom/ibm/icu/impl/number/FormatQuantity4;

    invoke-direct {v0, p1, p2}, Lcom/ibm/icu/impl/number/FormatQuantity4;-><init>(D)V

    .line 692
    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->formatter:Lcom/ibm/icu/impl/number/Format$SingularFormat;

    invoke-virtual {v1, v0, p3, p4}, Lcom/ibm/icu/impl/number/Format$SingularFormat;->format(Lcom/ibm/icu/impl/number/FormatQuantity;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)V

    .line 693
    invoke-virtual {v0, p4}, Lcom/ibm/icu/impl/number/FormatQuantity4;->populateUFieldPosition(Ljava/text/FieldPosition;)V

    .line 694
    return-object p3
.end method

.method public format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 3

    .prologue
    .line 704
    new-instance v0, Lcom/ibm/icu/impl/number/FormatQuantity4;

    invoke-direct {v0, p1, p2}, Lcom/ibm/icu/impl/number/FormatQuantity4;-><init>(J)V

    .line 705
    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->formatter:Lcom/ibm/icu/impl/number/Format$SingularFormat;

    invoke-virtual {v1, v0, p3, p4}, Lcom/ibm/icu/impl/number/Format$SingularFormat;->format(Lcom/ibm/icu/impl/number/FormatQuantity;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)V

    .line 706
    invoke-virtual {v0, p4}, Lcom/ibm/icu/impl/number/FormatQuantity4;->populateUFieldPosition(Ljava/text/FieldPosition;)V

    .line 707
    return-object p3
.end method

.method public format(Lcom/ibm/icu/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2

    .prologue
    .line 744
    new-instance v0, Lcom/ibm/icu/impl/number/FormatQuantity4;

    invoke-virtual {p1}, Lcom/ibm/icu/math/BigDecimal;->toBigDecimal()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/number/FormatQuantity4;-><init>(Ljava/math/BigDecimal;)V

    .line 745
    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->formatter:Lcom/ibm/icu/impl/number/Format$SingularFormat;

    invoke-virtual {v1, v0, p2, p3}, Lcom/ibm/icu/impl/number/Format$SingularFormat;->format(Lcom/ibm/icu/impl/number/FormatQuantity;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)V

    .line 746
    invoke-virtual {v0, p3}, Lcom/ibm/icu/impl/number/FormatQuantity4;->populateUFieldPosition(Ljava/text/FieldPosition;)V

    .line 747
    return-object p2
.end method

.method public format(Lcom/ibm/icu/util/CurrencyAmount;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 4

    .prologue
    .line 773
    sget-object v0, Lcom/ibm/icu/text/DecimalFormat;->threadLocalProperties:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/number/Properties;

    .line 774
    const/4 v1, 0x0

    .line 775
    monitor-enter p0

    .line 779
    :try_start_0
    invoke-virtual {p1}, Lcom/ibm/icu/util/CurrencyAmount;->getCurrency()Lcom/ibm/icu/util/Currency;

    move-result-object v2

    iget-object v3, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v3}, Lcom/ibm/icu/impl/number/Properties;->getCurrency()Lcom/ibm/icu/util/Currency;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ibm/icu/util/Currency;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 780
    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->formatter:Lcom/ibm/icu/impl/number/Format$SingularFormat;

    .line 784
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 785
    if-nez v1, :cond_1

    .line 786
    invoke-virtual {p1}, Lcom/ibm/icu/util/CurrencyAmount;->getCurrency()Lcom/ibm/icu/util/Currency;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/number/Properties;->setCurrency(Lcom/ibm/icu/util/Currency;)Lcom/ibm/icu/impl/number/Properties;

    .line 787
    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/number/Endpoint;->fromBTA(Lcom/ibm/icu/impl/number/Properties;Lcom/ibm/icu/text/DecimalFormatSymbols;)Lcom/ibm/icu/impl/number/Format$SingularFormat;

    move-result-object v0

    .line 789
    :goto_1
    new-instance v1, Lcom/ibm/icu/impl/number/FormatQuantity4;

    invoke-virtual {p1}, Lcom/ibm/icu/util/CurrencyAmount;->getNumber()Ljava/lang/Number;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ibm/icu/impl/number/FormatQuantity4;-><init>(Ljava/lang/Number;)V

    .line 790
    invoke-virtual {v0, v1, p2, p3}, Lcom/ibm/icu/impl/number/Format$SingularFormat;->format(Lcom/ibm/icu/impl/number/FormatQuantity;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)V

    .line 791
    invoke-virtual {v1, p3}, Lcom/ibm/icu/impl/number/FormatQuantity4;->populateUFieldPosition(Ljava/text/FieldPosition;)V

    .line 792
    return-object p2

    .line 782
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v0, v2}, Lcom/ibm/icu/impl/number/Properties;->copyFrom(Lcom/ibm/icu/impl/number/Properties;)Lcom/ibm/icu/impl/number/Properties;

    goto :goto_0

    .line 784
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public format(Ljava/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2

    .prologue
    .line 731
    new-instance v0, Lcom/ibm/icu/impl/number/FormatQuantity4;

    invoke-direct {v0, p1}, Lcom/ibm/icu/impl/number/FormatQuantity4;-><init>(Ljava/math/BigDecimal;)V

    .line 732
    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->formatter:Lcom/ibm/icu/impl/number/Format$SingularFormat;

    invoke-virtual {v1, v0, p2, p3}, Lcom/ibm/icu/impl/number/Format$SingularFormat;->format(Lcom/ibm/icu/impl/number/FormatQuantity;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)V

    .line 733
    invoke-virtual {v0, p3}, Lcom/ibm/icu/impl/number/FormatQuantity4;->populateUFieldPosition(Ljava/text/FieldPosition;)V

    .line 734
    return-object p2
.end method

.method public format(Ljava/math/BigInteger;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2

    .prologue
    .line 717
    new-instance v0, Lcom/ibm/icu/impl/number/FormatQuantity4;

    invoke-direct {v0, p1}, Lcom/ibm/icu/impl/number/FormatQuantity4;-><init>(Ljava/math/BigInteger;)V

    .line 718
    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->formatter:Lcom/ibm/icu/impl/number/Format$SingularFormat;

    invoke-virtual {v1, v0, p2, p3}, Lcom/ibm/icu/impl/number/Format$SingularFormat;->format(Lcom/ibm/icu/impl/number/FormatQuantity;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)V

    .line 719
    invoke-virtual {v0, p3}, Lcom/ibm/icu/impl/number/FormatQuantity4;->populateUFieldPosition(Ljava/text/FieldPosition;)V

    .line 720
    return-object p2
.end method

.method public formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .locals 2

    .prologue
    .line 757
    instance-of v0, p1, Ljava/lang/Number;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 758
    :cond_0
    check-cast p1, Ljava/lang/Number;

    .line 759
    new-instance v0, Lcom/ibm/icu/impl/number/FormatQuantity4;

    invoke-direct {v0, p1}, Lcom/ibm/icu/impl/number/FormatQuantity4;-><init>(Ljava/lang/Number;)V

    .line 760
    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->formatter:Lcom/ibm/icu/impl/number/Format$SingularFormat;

    invoke-virtual {v1, v0}, Lcom/ibm/icu/impl/number/Format$SingularFormat;->formatToCharacterIterator(Lcom/ibm/icu/impl/number/FormatQuantity;)Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    .line 761
    return-object v0
.end method

.method public declared-synchronized getCurrency()Lcom/ibm/icu/util/Currency;
    .locals 1

    .prologue
    .line 1964
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/Properties;->getCurrency()Lcom/ibm/icu/util/Currency;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDecimalFormatSymbols()Lcom/ibm/icu/text/DecimalFormatSymbols;
    .locals 1

    .prologue
    .line 849
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/DecimalFormatSymbols;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFixedDecimal(D)Lcom/ibm/icu/text/PluralRules$IFixedDecimal;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2421
    new-instance v0, Lcom/ibm/icu/impl/number/FormatQuantity4;

    invoke-direct {v0, p1, p2}, Lcom/ibm/icu/impl/number/FormatQuantity4;-><init>(D)V

    .line 2422
    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->formatter:Lcom/ibm/icu/impl/number/Format$SingularFormat;

    invoke-virtual {v1, v0}, Lcom/ibm/icu/impl/number/Format$SingularFormat;->format(Lcom/ibm/icu/impl/number/FormatQuantity;)Ljava/lang/String;

    .line 2423
    return-object v0
.end method

.method public declared-synchronized getMaximumFractionDigits()I
    .locals 1

    .prologue
    .line 1414
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->exportedProperties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/Properties;->getMaximumFractionDigits()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNegativePrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 914
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->exportedProperties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/Properties;->getNegativePrefix()Ljava/lang/String;

    move-result-object v0

    .line 915
    if-nez v0, :cond_0

    const-string/jumbo v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    .line 914
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRoundingMode()I
    .locals 1

    .prologue
    .line 1189
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->exportedProperties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/Properties;->getRoundingMode()Ljava/math/RoundingMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1190
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/math/RoundingMode;->ordinal()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 1189
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hashCode()I
    .locals 2

    .prologue
    .line 2349
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/Properties;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    xor-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .locals 2

    .prologue
    .line 802
    sget-object v0, Lcom/ibm/icu/text/DecimalFormat;->threadLocalProperties:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/number/Properties;

    .line 803
    monitor-enter p0

    .line 804
    :try_start_0
    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/number/Properties;->copyFrom(Lcom/ibm/icu/impl/number/Properties;)Lcom/ibm/icu/impl/number/Properties;

    .line 805
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 807
    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-static {p1, p2, v0, v1}, Lcom/ibm/icu/impl/number/Parse;->parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;Lcom/ibm/icu/impl/number/Parse$IProperties;Lcom/ibm/icu/text/DecimalFormatSymbols;)Ljava/lang/Number;

    move-result-object v0

    .line 809
    instance-of v1, v0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_0

    .line 810
    new-instance v1, Lcom/ibm/icu/math/BigDecimal;

    check-cast v0, Ljava/math/BigDecimal;

    invoke-direct {v1, v0}, Lcom/ibm/icu/math/BigDecimal;-><init>(Ljava/math/BigDecimal;)V

    move-object v0, v1

    .line 812
    :cond_0
    return-object v0

    .line 805
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method refreshFormatter()V
    .locals 2

    .prologue
    .line 2436
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->exportedProperties:Lcom/ibm/icu/impl/number/Properties;

    if-nez v0, :cond_0

    .line 2444
    :goto_0
    return-void

    .line 2441
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/number/Endpoint;->fromBTA(Lcom/ibm/icu/impl/number/Properties;Lcom/ibm/icu/text/DecimalFormatSymbols;)Lcom/ibm/icu/impl/number/Format$SingularFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->formatter:Lcom/ibm/icu/impl/number/Format$SingularFormat;

    .line 2442
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->exportedProperties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/Properties;->clear()Lcom/ibm/icu/impl/number/Properties;

    .line 2443
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->formatter:Lcom/ibm/icu/impl/number/Format$SingularFormat;

    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->exportedProperties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/number/Format$SingularFormat;->export(Lcom/ibm/icu/impl/number/Properties;)V

    goto :goto_0
.end method

.method public declared-synchronized setCurrency(Lcom/ibm/icu/util/Currency;)V
    .locals 3

    .prologue
    .line 1985
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/Properties;->setCurrency(Lcom/ibm/icu/util/Currency;)Lcom/ibm/icu/impl/number/Properties;

    .line 1987
    if-eqz p1, :cond_0

    .line 1988
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->setCurrency(Lcom/ibm/icu/util/Currency;)V

    .line 1989
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getULocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/ibm/icu/util/Currency;->getName(Lcom/ibm/icu/util/ULocale;I[Z)Ljava/lang/String;

    move-result-object v0

    .line 1990
    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1, v0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->setCurrencySymbol(Ljava/lang/String;)V

    .line 1992
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1993
    monitor-exit p0

    return-void

    .line 1985
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCurrencyPluralInfo(Lcom/ibm/icu/text/CurrencyPluralInfo;)V
    .locals 1

    .prologue
    .line 2063
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/Properties;->setCurrencyPluralInfo(Lcom/ibm/icu/text/CurrencyPluralInfo;)Lcom/ibm/icu/impl/number/Properties;

    .line 2064
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2065
    monitor-exit p0

    return-void

    .line 2063
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCurrencyUsage(Lcom/ibm/icu/util/Currency$CurrencyUsage;)V
    .locals 1

    .prologue
    .line 2035
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/Properties;->setCurrencyUsage(Lcom/ibm/icu/util/Currency$CurrencyUsage;)Lcom/ibm/icu/impl/number/Properties;

    .line 2036
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2037
    monitor-exit p0

    return-void

    .line 2035
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDecimalSeparatorAlwaysShown(Z)V
    .locals 1

    .prologue
    .line 1950
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/Properties;->setDecimalSeparatorAlwaysShown(Z)Lcom/ibm/icu/impl/number/Properties;

    .line 1951
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1952
    monitor-exit p0

    return-void

    .line 1950
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setGroupingUsed(Z)V
    .locals 2

    .prologue
    .line 1823
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1825
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/number/Properties;->setGroupingSize(I)Lcom/ibm/icu/impl/number/Properties;

    .line 1830
    :goto_0
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1831
    monitor-exit p0

    return-void

    .line 1827
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/number/Properties;->setGroupingSize(I)Lcom/ibm/icu/impl/number/Properties;

    .line 1828
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/number/Properties;->setSecondaryGroupingSize(I)Lcom/ibm/icu/impl/number/Properties;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1823
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMaximumFractionDigits(I)V
    .locals 1

    .prologue
    .line 1437
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/Properties;->setMaximumFractionDigits(I)Lcom/ibm/icu/impl/number/Properties;

    .line 1438
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1439
    monitor-exit p0

    return-void

    .line 1437
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMaximumIntegerDigits(I)V
    .locals 1

    .prologue
    .line 1361
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/Properties;->setMaximumIntegerDigits(I)Lcom/ibm/icu/impl/number/Properties;

    .line 1362
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1363
    monitor-exit p0

    return-void

    .line 1361
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMinimumFractionDigits(I)V
    .locals 1

    .prologue
    .line 1401
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/Properties;->setMinimumFractionDigits(I)Lcom/ibm/icu/impl/number/Properties;

    .line 1402
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1403
    monitor-exit p0

    return-void

    .line 1401
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMinimumIntegerDigits(I)V
    .locals 1

    .prologue
    .line 1328
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/Properties;->setMinimumIntegerDigits(I)Lcom/ibm/icu/impl/number/Properties;

    .line 1329
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1330
    monitor-exit p0

    return-void

    .line 1328
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setNegativePrefix(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 931
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/Properties;->setNegativePrefix(Ljava/lang/String;)Lcom/ibm/icu/impl/number/Properties;

    .line 932
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 933
    monitor-exit p0

    return-void

    .line 931
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setParseIntegerOnly(Z)V
    .locals 1

    .prologue
    .line 2169
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/Properties;->setParseIntegerOnly(Z)Lcom/ibm/icu/impl/number/Properties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2171
    monitor-exit p0

    return-void

    .line 2169
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setPropertiesFromPattern(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 2455
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    invoke-static {p1, v0, p2}, Lcom/ibm/icu/impl/number/PatternString;->parseToExistingProperties(Ljava/lang/String;Lcom/ibm/icu/impl/number/Properties;Z)V

    .line 2456
    return-void
.end method

.method public declared-synchronized setRoundingMode(I)V
    .locals 2

    .prologue
    .line 1217
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    invoke-static {p1}, Ljava/math/RoundingMode;->valueOf(I)Ljava/math/RoundingMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/number/Properties;->setRoundingMode(Ljava/math/RoundingMode;)Lcom/ibm/icu/impl/number/Properties;

    .line 1218
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1219
    monitor-exit p0

    return-void

    .line 1217
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toPattern()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2393
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/ibm/icu/text/DecimalFormat;->threadLocalProperties:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/number/Properties;

    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/number/Properties;->copyFrom(Lcom/ibm/icu/impl/number/Properties;)Lcom/ibm/icu/impl/number/Properties;

    move-result-object v0

    .line 2394
    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    invoke-static {v1}, Lcom/ibm/icu/impl/number/formatters/CurrencyFormat;->useCurrency(Lcom/ibm/icu/impl/number/formatters/CurrencyFormat$IProperties;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2395
    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->exportedProperties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/number/Properties;->getMinimumFractionDigits()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/number/Properties;->setMinimumFractionDigits(I)Lcom/ibm/icu/impl/number/Properties;

    .line 2396
    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->exportedProperties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/number/Properties;->getMaximumFractionDigits()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/number/Properties;->setMaximumFractionDigits(I)Lcom/ibm/icu/impl/number/Properties;

    .line 2397
    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->exportedProperties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/number/Properties;->getRoundingIncrement()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/number/Properties;->setRoundingIncrement(Ljava/math/BigDecimal;)Lcom/ibm/icu/impl/number/Properties;

    .line 2399
    :cond_0
    invoke-static {v0}, Lcom/ibm/icu/impl/number/PatternString;->propertiesToString(Lcom/ibm/icu/impl/number/Properties;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 2393
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2362
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2363
    const-string/jumbo v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2364
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2365
    const-string/jumbo v1, " { symbols@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2366
    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2367
    monitor-enter p0

    .line 2368
    :try_start_0
    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v1, v0}, Lcom/ibm/icu/impl/number/Properties;->toStringBare(Ljava/lang/StringBuilder;)V

    .line 2369
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2370
    const-string/jumbo v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2371
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2369
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
