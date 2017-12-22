.class public Lcom/ibm/icu/text/MessageFormat;
.super Lcom/ibm/icu/text/UFormat;
.source "MessageFormat.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final dateModifierList:[Ljava/lang/String;

.field private static final modifierList:[Ljava/lang/String;

.field private static final rootLocale:Ljava/util/Locale;

.field private static final typeList:[Ljava/lang/String;


# instance fields
.field private transient cachedFormatters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/text/Format;",
            ">;"
        }
    .end annotation
.end field

.field private transient customFormatArgStarts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private transient msgPattern:Lcom/ibm/icu/text/MessagePattern;

.field private transient ordinalProvider:Lcom/ibm/icu/text/MessageFormat$PluralSelectorProvider;

.field private transient pluralProvider:Lcom/ibm/icu/text/MessageFormat$PluralSelectorProvider;

.field private transient stockDateFormatter:Lcom/ibm/icu/text/DateFormat;

.field private transient stockNumberFormatter:Lcom/ibm/icu/text/NumberFormat;

.field private transient ulocale:Lcom/ibm/icu/util/ULocale;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 335
    const-class v0, Lcom/ibm/icu/text/MessageFormat;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/ibm/icu/text/MessageFormat;->$assertionsDisabled:Z

    .line 2158
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v3, "number"

    aput-object v3, v0, v2

    const-string/jumbo v3, "date"

    aput-object v3, v0, v1

    const-string/jumbo v3, "time"

    aput-object v3, v0, v5

    const-string/jumbo v3, "spellout"

    aput-object v3, v0, v6

    const-string/jumbo v3, "ordinal"

    aput-object v3, v0, v7

    const/4 v3, 0x5

    const-string/jumbo v4, "duration"

    aput-object v4, v0, v3

    sput-object v0, Lcom/ibm/icu/text/MessageFormat;->typeList:[Ljava/lang/String;

    .line 2168
    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v3, ""

    aput-object v3, v0, v2

    const-string/jumbo v3, "currency"

    aput-object v3, v0, v1

    const-string/jumbo v3, "percent"

    aput-object v3, v0, v5

    const-string/jumbo v3, "integer"

    aput-object v3, v0, v6

    sput-object v0, Lcom/ibm/icu/text/MessageFormat;->modifierList:[Ljava/lang/String;

    .line 2177
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v3, ""

    aput-object v3, v0, v2

    const-string/jumbo v2, "short"

    aput-object v2, v0, v1

    const-string/jumbo v1, "medium"

    aput-object v1, v0, v5

    const-string/jumbo v1, "long"

    aput-object v1, v0, v6

    const-string/jumbo v1, "full"

    aput-object v1, v0, v7

    sput-object v0, Lcom/ibm/icu/text/MessageFormat;->dateModifierList:[Ljava/lang/String;

    .line 2311
    new-instance v0, Ljava/util/Locale;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/text/MessageFormat;->rootLocale:Ljava/util/Locale;

    return-void

    :cond_0
    move v0, v2

    .line 335
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 350
    invoke-direct {p0}, Lcom/ibm/icu/text/UFormat;-><init>()V

    .line 351
    sget-object v0, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    .line 352
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/MessageFormat;->applyPattern(Ljava/lang/String;)V

    .line 353
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V
    .locals 0

    .prologue
    .line 379
    invoke-direct {p0}, Lcom/ibm/icu/text/UFormat;-><init>()V

    .line 380
    iput-object p2, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    .line 381
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/MessageFormat;->applyPattern(Ljava/lang/String;)V

    .line 382
    return-void
.end method

.method static synthetic access$1000(Lcom/ibm/icu/text/MessageFormat;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/ibm/icu/text/MessageFormat;)Lcom/ibm/icu/text/NumberFormat;
    .locals 1

    .prologue
    .line 335
    invoke-direct {p0}, Lcom/ibm/icu/text/MessageFormat;->getStockNumberFormatter()Lcom/ibm/icu/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/ibm/icu/text/MessageFormat;)Lcom/ibm/icu/util/ULocale;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    return-object v0
.end method

.method static synthetic access$800(Lcom/ibm/icu/text/MessageFormat;I)I
    .locals 1

    .prologue
    .line 335
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/MessageFormat;->findOtherSubMessage(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/ibm/icu/text/MessageFormat;ILjava/lang/String;)I
    .locals 1

    .prologue
    .line 335
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/MessageFormat;->findFirstPluralNumberArg(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private cacheExplicitFormats()V
    .locals 8

    .prologue
    .line 2397
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2398
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2400
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    .line 2403
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v0}, Lcom/ibm/icu/text/MessagePattern;->countParts()I

    move-result v0

    add-int/lit8 v3, v0, -0x2

    .line 2406
    const/4 v2, 0x1

    :goto_0
    if-ge v2, v3, :cond_4

    .line 2407
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v0, v2}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v0

    .line 2408
    invoke-virtual {v0}, Lcom/ibm/icu/text/MessagePattern$Part;->getType()Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object v1

    sget-object v4, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_START:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-eq v1, v4, :cond_1

    move v1, v2

    .line 2406
    :goto_1
    add-int/lit8 v2, v1, 0x1

    goto :goto_0

    .line 2411
    :cond_1
    invoke-virtual {v0}, Lcom/ibm/icu/text/MessagePattern$Part;->getArgType()Lcom/ibm/icu/text/MessagePattern$ArgType;

    move-result-object v0

    .line 2412
    sget-object v1, Lcom/ibm/icu/text/MessagePattern$ArgType;->SIMPLE:Lcom/ibm/icu/text/MessagePattern$ArgType;

    if-eq v0, v1, :cond_2

    move v1, v2

    .line 2413
    goto :goto_1

    .line 2416
    :cond_2
    add-int/lit8 v0, v2, 0x2

    .line 2417
    iget-object v4, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    iget-object v5, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {v5, v0}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/ibm/icu/text/MessagePattern;->getSubstring(Lcom/ibm/icu/text/MessagePattern$Part;)Ljava/lang/String;

    move-result-object v4

    .line 2418
    const-string/jumbo v0, ""

    .line 2419
    iget-object v5, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v5, v1}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ibm/icu/text/MessagePattern$Part;->getType()Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object v6

    sget-object v7, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_STYLE:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v6, v7, :cond_3

    .line 2420
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v0, v5}, Lcom/ibm/icu/text/MessagePattern;->getSubstring(Lcom/ibm/icu/text/MessagePattern$Part;)Ljava/lang/String;

    move-result-object v0

    .line 2421
    add-int/lit8 v1, v1, 0x1

    .line 2423
    :cond_3
    invoke-direct {p0, v4, v0}, Lcom/ibm/icu/text/MessageFormat;->createAppropriateFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/text/Format;

    move-result-object v0

    .line 2424
    invoke-direct {p0, v2, v0}, Lcom/ibm/icu/text/MessageFormat;->setArgStartFormat(ILjava/text/Format;)V

    goto :goto_1

    .line 2426
    :cond_4
    return-void
.end method

.method private createAppropriateFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/text/Format;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x2

    .line 2190
    .line 2191
    sget-object v0, Lcom/ibm/icu/text/MessageFormat;->typeList:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/ibm/icu/text/MessageFormat;->findKeyword(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 2192
    packed-switch v0, :pswitch_data_0

    .line 2306
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown format type \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2194
    :pswitch_0
    sget-object v0, Lcom/ibm/icu/text/MessageFormat;->modifierList:[Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/ibm/icu/text/MessageFormat;->findKeyword(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 2208
    new-instance v0, Lcom/ibm/icu/text/DecimalFormat;

    new-instance v1, Lcom/ibm/icu/text/DecimalFormatSymbols;

    iget-object v2, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-direct {v1, v2}, Lcom/ibm/icu/text/DecimalFormatSymbols;-><init>(Lcom/ibm/icu/util/ULocale;)V

    invoke-direct {v0, p2, v1}, Lcom/ibm/icu/text/DecimalFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/DecimalFormatSymbols;)V

    .line 2308
    :cond_0
    :goto_0
    return-object v0

    .line 2196
    :pswitch_1
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v0}, Lcom/ibm/icu/text/NumberFormat;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberFormat;

    move-result-object v0

    goto :goto_0

    .line 2199
    :pswitch_2
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v0}, Lcom/ibm/icu/text/NumberFormat;->getCurrencyInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberFormat;

    move-result-object v0

    goto :goto_0

    .line 2202
    :pswitch_3
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v0}, Lcom/ibm/icu/text/NumberFormat;->getPercentInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberFormat;

    move-result-object v0

    goto :goto_0

    .line 2205
    :pswitch_4
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v0}, Lcom/ibm/icu/text/NumberFormat;->getIntegerInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberFormat;

    move-result-object v0

    goto :goto_0

    .line 2214
    :pswitch_5
    sget-object v0, Lcom/ibm/icu/text/MessageFormat;->dateModifierList:[Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/ibm/icu/text/MessageFormat;->findKeyword(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_2

    .line 2231
    new-instance v0, Lcom/ibm/icu/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-direct {v0, p2, v1}, Lcom/ibm/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V

    goto :goto_0

    .line 2216
    :pswitch_6
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v2, v0}, Lcom/ibm/icu/text/DateFormat;->getDateInstance(ILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object v0

    goto :goto_0

    .line 2219
    :pswitch_7
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v4, v0}, Lcom/ibm/icu/text/DateFormat;->getDateInstance(ILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object v0

    goto :goto_0

    .line 2222
    :pswitch_8
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v2, v0}, Lcom/ibm/icu/text/DateFormat;->getDateInstance(ILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object v0

    goto :goto_0

    .line 2225
    :pswitch_9
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v3, v0}, Lcom/ibm/icu/text/DateFormat;->getDateInstance(ILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object v0

    goto :goto_0

    .line 2228
    :pswitch_a
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v1, v0}, Lcom/ibm/icu/text/DateFormat;->getDateInstance(ILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object v0

    goto :goto_0

    .line 2236
    :pswitch_b
    sget-object v0, Lcom/ibm/icu/text/MessageFormat;->dateModifierList:[Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/ibm/icu/text/MessageFormat;->findKeyword(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_3

    .line 2253
    new-instance v0, Lcom/ibm/icu/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-direct {v0, p2, v1}, Lcom/ibm/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V

    goto :goto_0

    .line 2238
    :pswitch_c
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v2, v0}, Lcom/ibm/icu/text/DateFormat;->getTimeInstance(ILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object v0

    goto :goto_0

    .line 2241
    :pswitch_d
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v4, v0}, Lcom/ibm/icu/text/DateFormat;->getTimeInstance(ILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object v0

    goto :goto_0

    .line 2244
    :pswitch_e
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v2, v0}, Lcom/ibm/icu/text/DateFormat;->getTimeInstance(ILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object v0

    goto :goto_0

    .line 2247
    :pswitch_f
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v3, v0}, Lcom/ibm/icu/text/DateFormat;->getTimeInstance(ILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object v0

    goto :goto_0

    .line 2250
    :pswitch_10
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v1, v0}, Lcom/ibm/icu/text/DateFormat;->getTimeInstance(ILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object v0

    goto/16 :goto_0

    .line 2259
    :pswitch_11
    new-instance v0, Lcom/ibm/icu/text/RuleBasedNumberFormat;

    iget-object v1, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-direct {v0, v1, v3}, Lcom/ibm/icu/text/RuleBasedNumberFormat;-><init>(Lcom/ibm/icu/util/ULocale;I)V

    .line 2261
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 2262
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 2264
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->setDefaultRuleSet(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2266
    :catch_0
    move-exception v1

    goto/16 :goto_0

    .line 2275
    :pswitch_12
    new-instance v0, Lcom/ibm/icu/text/RuleBasedNumberFormat;

    iget-object v1, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/RuleBasedNumberFormat;-><init>(Lcom/ibm/icu/util/ULocale;I)V

    .line 2277
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 2278
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 2280
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->setDefaultRuleSet(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 2282
    :catch_1
    move-exception v1

    goto/16 :goto_0

    .line 2291
    :pswitch_13
    new-instance v0, Lcom/ibm/icu/text/RuleBasedNumberFormat;

    iget-object v1, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-direct {v0, v1, v4}, Lcom/ibm/icu/text/RuleBasedNumberFormat;-><init>(Lcom/ibm/icu/util/ULocale;I)V

    .line 2293
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 2294
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 2296
    :try_start_2
    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->setDefaultRuleSet(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 2298
    :catch_2
    move-exception v1

    goto/16 :goto_0

    .line 2192
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
        :pswitch_b
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch

    .line 2194
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 2214
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 2236
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method private static findChoiceSubMessage(Lcom/ibm/icu/text/MessagePattern;ID)I
    .locals 8

    .prologue
    .line 1873
    invoke-virtual {p0}, Lcom/ibm/icu/text/MessagePattern;->countParts()I

    move-result v2

    .line 1878
    add-int/lit8 v0, p1, 0x2

    .line 1882
    :goto_0
    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result v1

    .line 1883
    add-int/lit8 v1, v1, 0x1

    if-lt v1, v2, :cond_1

    .line 1909
    :cond_0
    :goto_1
    return v0

    .line 1888
    :cond_1
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v1

    .line 1889
    invoke-virtual {v1}, Lcom/ibm/icu/text/MessagePattern$Part;->getType()Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object v4

    .line 1890
    sget-object v5, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_LIMIT:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-eq v4, v5, :cond_0

    .line 1896
    sget-boolean v5, Lcom/ibm/icu/text/MessageFormat;->$assertionsDisabled:Z

    if-nez v5, :cond_2

    invoke-virtual {v4}, Lcom/ibm/icu/text/MessagePattern$Part$Type;->hasNumericValue()Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1897
    :cond_2
    invoke-virtual {p0, v1}, Lcom/ibm/icu/text/MessagePattern;->getNumericValue(Lcom/ibm/icu/text/MessagePattern$Part;)D

    move-result-wide v4

    .line 1899
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {p0, v3}, Lcom/ibm/icu/text/MessagePattern;->getPatternIndex(I)I

    move-result v3

    .line 1900
    invoke-virtual {p0}, Lcom/ibm/icu/text/MessagePattern;->getPatternString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1901
    const/16 v6, 0x3c

    if-ne v3, v6, :cond_4

    cmpl-double v3, p2, v4

    if-lez v3, :cond_0

    :cond_3
    move v0, v1

    .line 1908
    goto :goto_0

    .line 1901
    :cond_4
    cmpl-double v3, p2, v4

    if-gez v3, :cond_3

    goto :goto_1
.end method

.method private findFirstPluralNumberArg(ILjava/lang/String;)I
    .locals 4

    .prologue
    .line 2015
    add-int/lit8 v0, p1, 0x1

    .line 2016
    :goto_0
    iget-object v1, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v1, v0}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v1

    .line 2017
    invoke-virtual {v1}, Lcom/ibm/icu/text/MessagePattern$Part;->getType()Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object v2

    .line 2018
    sget-object v3, Lcom/ibm/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v2, v3, :cond_1

    .line 2019
    const/4 v0, 0x0

    .line 2029
    :cond_0
    :goto_1
    return v0

    .line 2021
    :cond_1
    sget-object v3, Lcom/ibm/icu/text/MessagePattern$Part$Type;->REPLACE_NUMBER:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v2, v3, :cond_2

    .line 2022
    const/4 v0, -0x1

    goto :goto_1

    .line 2024
    :cond_2
    sget-object v3, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_START:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v2, v3, :cond_5

    .line 2025
    invoke-virtual {v1}, Lcom/ibm/icu/text/MessagePattern$Part;->getArgType()Lcom/ibm/icu/text/MessagePattern$ArgType;

    move-result-object v1

    .line 2026
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/ibm/icu/text/MessagePattern$ArgType;->NONE:Lcom/ibm/icu/text/MessagePattern$ArgType;

    if-eq v1, v2, :cond_3

    sget-object v2, Lcom/ibm/icu/text/MessagePattern$ArgType;->SIMPLE:Lcom/ibm/icu/text/MessagePattern$ArgType;

    if-ne v1, v2, :cond_4

    .line 2027
    :cond_3
    iget-object v1, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v1

    .line 2028
    iget-object v2, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v2, v1, p2}, Lcom/ibm/icu/text/MessagePattern;->partSubstringMatches(Lcom/ibm/icu/text/MessagePattern$Part;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2032
    :cond_4
    iget-object v1, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v1, v0}, Lcom/ibm/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result v0

    .line 2015
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static final findKeyword(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 2314
    invoke-static {p0}, Lcom/ibm/icu/impl/PatternProps;->trimWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/text/MessageFormat;->rootLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 2315
    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 2316
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2319
    :goto_1
    return v0

    .line 2315
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2319
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private findOtherSubMessage(I)I
    .locals 5

    .prologue
    .line 1983
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v0}, Lcom/ibm/icu/text/MessagePattern;->countParts()I

    move-result v1

    .line 1984
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v0

    .line 1985
    invoke-virtual {v0}, Lcom/ibm/icu/text/MessagePattern$Part;->getType()Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/text/MessagePattern$Part$Type;->hasNumericValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1986
    add-int/lit8 p1, p1, 0x1

    .line 1991
    :cond_0
    iget-object v2, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v2, p1}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v2

    .line 1992
    invoke-virtual {v2}, Lcom/ibm/icu/text/MessagePattern$Part;->getType()Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object v3

    .line 1993
    sget-object v4, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_LIMIT:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v3, v4, :cond_2

    .line 2006
    :goto_0
    const/4 v0, 0x0

    :cond_1
    return v0

    .line 1996
    :cond_2
    sget-boolean v4, Lcom/ibm/icu/text/MessageFormat;->$assertionsDisabled:Z

    if-nez v4, :cond_3

    sget-object v4, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_SELECTOR:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-eq v3, v4, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1998
    :cond_3
    iget-object v3, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    const-string/jumbo v4, "other"

    invoke-virtual {v3, v2, v4}, Lcom/ibm/icu/text/MessagePattern;->partSubstringMatches(Lcom/ibm/icu/text/MessagePattern$Part;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2001
    iget-object v2, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v2, v0}, Lcom/ibm/icu/text/MessagePattern;->getPartType(I)Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ibm/icu/text/MessagePattern$Part$Type;->hasNumericValue()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2002
    add-int/lit8 v0, v0, 0x1

    .line 2004
    :cond_4
    iget-object v2, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v2, v0}, Lcom/ibm/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result v0

    .line 2005
    add-int/lit8 p1, v0, 0x1

    if-lt p1, v1, :cond_0

    goto :goto_0
.end method

.method private format(ILcom/ibm/icu/text/MessageFormat$PluralSelectorContext;[Ljava/lang/Object;Ljava/util/Map;Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;",
            "Ljava/text/FieldPosition;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1612
    iget-object v2, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v2}, Lcom/ibm/icu/text/MessagePattern;->getPatternString()Ljava/lang/String;

    move-result-object v13

    .line 1613
    iget-object v2, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ibm/icu/text/MessagePattern$Part;->getLimit()I

    move-result v3

    .line 1614
    add-int/lit8 v2, p1, 0x1

    .line 1615
    :goto_0
    iget-object v4, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v4, v2}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v4

    .line 1616
    invoke-virtual {v4}, Lcom/ibm/icu/text/MessagePattern$Part;->getType()Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object v5

    .line 1617
    invoke-virtual {v4}, Lcom/ibm/icu/text/MessagePattern$Part;->getIndex()I

    move-result v6

    .line 1618
    move-object/from16 v0, p5

    invoke-virtual {v0, v13, v3, v6}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->append(Ljava/lang/CharSequence;II)V

    .line 1619
    sget-object v3, Lcom/ibm/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v5, v3, :cond_0

    .line 1620
    return-void

    .line 1622
    :cond_0
    invoke-virtual {v4}, Lcom/ibm/icu/text/MessagePattern$Part;->getLimit()I

    move-result v3

    .line 1623
    sget-object v6, Lcom/ibm/icu/text/MessagePattern$Part$Type;->REPLACE_NUMBER:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v5, v6, :cond_3

    .line 1624
    move-object/from16 v0, p2

    iget-boolean v4, v0, Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;->forReplaceNumber:Z

    if-eqz v4, :cond_2

    .line 1626
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;->formatter:Ljava/text/Format;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;->number:Ljava/lang/Number;

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;->numberString:Ljava/lang/String;

    move-object/from16 v0, p5

    invoke-virtual {v0, v4, v5, v6}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->formatAndAppend(Ljava/text/Format;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1614
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1629
    :cond_2
    invoke-direct {p0}, Lcom/ibm/icu/text/MessageFormat;->getStockNumberFormatter()Lcom/ibm/icu/text/NumberFormat;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;->number:Ljava/lang/Number;

    move-object/from16 v0, p5

    invoke-virtual {v0, v4, v5}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->formatAndAppend(Ljava/text/Format;Ljava/lang/Object;)V

    goto :goto_1

    .line 1633
    :cond_3
    sget-object v6, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_START:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v5, v6, :cond_1

    .line 1636
    iget-object v3, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v3, v2}, Lcom/ibm/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result v12

    .line 1637
    invoke-virtual {v4}, Lcom/ibm/icu/text/MessagePattern$Part;->getArgType()Lcom/ibm/icu/text/MessagePattern$ArgType;

    move-result-object v6

    .line 1638
    iget-object v3, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v3, v7}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v3

    .line 1640
    const/4 v2, 0x0

    .line 1641
    const/4 v5, 0x0

    .line 1642
    iget-object v4, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v4, v3}, Lcom/ibm/icu/text/MessagePattern;->getSubstring(Lcom/ibm/icu/text/MessagePattern$Part;)Ljava/lang/String;

    move-result-object v4

    .line 1643
    if-eqz p3, :cond_6

    .line 1644
    invoke-virtual {v3}, Lcom/ibm/icu/text/MessagePattern$Part;->getValue()I

    move-result v3

    .line 1645
    invoke-static/range {p5 .. p5}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->access$000(Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 1647
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1649
    :cond_4
    if-ltz v3, :cond_5

    move-object/from16 v0, p3

    array-length v8, v0

    if-ge v3, v8, :cond_5

    .line 1650
    aget-object v3, p3, v3

    :goto_2
    move-object v10, v5

    move-object v5, v3

    .line 1664
    :goto_3
    add-int/lit8 v3, v7, 0x1

    .line 1665
    invoke-static/range {p5 .. p5}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->access$500(Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;)I

    move-result v14

    .line 1667
    if-eqz v2, :cond_8

    .line 1668
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->append(Ljava/lang/CharSequence;)V

    .line 1757
    :goto_4
    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-direct {p0, v0, v14, v1, v10}, Lcom/ibm/icu/text/MessageFormat;->updateMetaData(Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;ILjava/text/FieldPosition;Ljava/lang/Object;)Ljava/text/FieldPosition;

    move-result-object p6

    .line 1758
    iget-object v2, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v2, v12}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ibm/icu/text/MessagePattern$Part;->getLimit()I

    move-result v3

    move v2, v12

    .line 1759
    goto/16 :goto_1

    .line 1652
    :cond_5
    const/4 v3, 0x0

    .line 1653
    const/4 v2, 0x1

    goto :goto_2

    .line 1657
    :cond_6
    if-eqz p4, :cond_7

    move-object/from16 v0, p4

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1658
    move-object/from16 v0, p4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v10, v4

    goto :goto_3

    .line 1660
    :cond_7
    const/4 v5, 0x0

    .line 1661
    const/4 v2, 0x1

    move-object v10, v4

    goto :goto_3

    .line 1669
    :cond_8
    if-nez v5, :cond_9

    .line 1670
    const-string/jumbo v2, "null"

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->append(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 1671
    :cond_9
    if-eqz p2, :cond_b

    move-object/from16 v0, p2

    iget v2, v0, Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;->numberArgIndex:I

    add-int/lit8 v7, v3, -0x2

    if-ne v2, v7, :cond_b

    .line 1672
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;->offset:D

    const-wide/16 v6, 0x0

    cmpl-double v2, v2, v6

    if-nez v2, :cond_a

    .line 1674
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;->formatter:Ljava/text/Format;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;->number:Ljava/lang/Number;

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;->numberString:Ljava/lang/String;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v3, v4}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->formatAndAppend(Ljava/text/Format;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    .line 1678
    :cond_a
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;->formatter:Ljava/text/Format;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v5}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->formatAndAppend(Ljava/text/Format;Ljava/lang/Object;)V

    goto :goto_4

    .line 1680
    :cond_b
    iget-object v2, p0, Lcom/ibm/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/ibm/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    add-int/lit8 v7, v3, -0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/Format;

    if-eqz v2, :cond_11

    .line 1682
    instance-of v3, v2, Ljava/text/ChoiceFormat;

    if-nez v3, :cond_c

    instance-of v3, v2, Lcom/ibm/icu/text/PluralFormat;

    if-nez v3, :cond_c

    instance-of v3, v2, Lcom/ibm/icu/text/SelectFormat;

    if-eqz v3, :cond_10

    .line 1687
    :cond_c
    invoke-virtual {v2, v5}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1688
    const/16 v4, 0x7b

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_d

    const/16 v4, 0x27

    .line 1689
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_e

    iget-object v4, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v4}, Lcom/ibm/icu/text/MessagePattern;->jdkAposMode()Z

    move-result v4

    if-nez v4, :cond_e

    .line 1690
    :cond_d
    new-instance v2, Lcom/ibm/icu/text/MessageFormat;

    iget-object v4, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-direct {v2, v3, v4}, Lcom/ibm/icu/text/MessageFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V

    .line 1691
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v8}, Lcom/ibm/icu/text/MessageFormat;->format(ILcom/ibm/icu/text/MessageFormat$PluralSelectorContext;[Ljava/lang/Object;Ljava/util/Map;Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V

    goto/16 :goto_4

    .line 1692
    :cond_e
    invoke-static/range {p5 .. p5}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->access$000(Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;)Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_f

    .line 1693
    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 1701
    :cond_f
    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v5}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->formatAndAppend(Ljava/text/Format;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 1704
    :cond_10
    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v5}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->formatAndAppend(Ljava/text/Format;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 1706
    :cond_11
    sget-object v2, Lcom/ibm/icu/text/MessagePattern$ArgType;->NONE:Lcom/ibm/icu/text/MessagePattern$ArgType;

    if-eq v6, v2, :cond_12

    iget-object v2, p0, Lcom/ibm/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/ibm/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    add-int/lit8 v7, v3, -0x2

    .line 1708
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1711
    :cond_12
    instance-of v2, v5, Ljava/lang/Number;

    if-eqz v2, :cond_13

    .line 1713
    invoke-direct {p0}, Lcom/ibm/icu/text/MessageFormat;->getStockNumberFormatter()Lcom/ibm/icu/text/NumberFormat;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v5}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->formatAndAppend(Ljava/text/Format;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 1714
    :cond_13
    instance-of v2, v5, Ljava/util/Date;

    if-eqz v2, :cond_14

    .line 1716
    invoke-direct {p0}, Lcom/ibm/icu/text/MessageFormat;->getStockDateFormatter()Lcom/ibm/icu/text/DateFormat;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v5}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->formatAndAppend(Ljava/text/Format;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 1718
    :cond_14
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 1720
    :cond_15
    sget-object v2, Lcom/ibm/icu/text/MessagePattern$ArgType;->CHOICE:Lcom/ibm/icu/text/MessagePattern$ArgType;

    if-ne v6, v2, :cond_17

    .line 1721
    instance-of v2, v5, Ljava/lang/Number;

    if-nez v2, :cond_16

    .line 1722
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\' is not a Number"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_16
    move-object v2, v5

    .line 1724
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    .line 1725
    iget-object v2, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-static {v2, v3, v4, v5}, Lcom/ibm/icu/text/MessageFormat;->findChoiceSubMessage(Lcom/ibm/icu/text/MessagePattern;ID)I

    move-result v3

    .line 1726
    const/4 v4, 0x0

    move-object v2, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/ibm/icu/text/MessageFormat;->formatComplexSubMessage(ILcom/ibm/icu/text/MessageFormat$PluralSelectorContext;[Ljava/lang/Object;Ljava/util/Map;Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;)V

    goto/16 :goto_4

    .line 1727
    :cond_17
    invoke-virtual {v6}, Lcom/ibm/icu/text/MessagePattern$ArgType;->hasPluralStyle()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1728
    instance-of v2, v5, Ljava/lang/Number;

    if-nez v2, :cond_18

    .line 1729
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\' is not a Number"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1732
    :cond_18
    sget-object v2, Lcom/ibm/icu/text/MessagePattern$ArgType;->PLURAL:Lcom/ibm/icu/text/MessagePattern$ArgType;

    if-ne v6, v2, :cond_1a

    .line 1733
    iget-object v2, p0, Lcom/ibm/icu/text/MessageFormat;->pluralProvider:Lcom/ibm/icu/text/MessageFormat$PluralSelectorProvider;

    if-nez v2, :cond_19

    .line 1734
    new-instance v2, Lcom/ibm/icu/text/MessageFormat$PluralSelectorProvider;

    sget-object v6, Lcom/ibm/icu/text/PluralRules$PluralType;->CARDINAL:Lcom/ibm/icu/text/PluralRules$PluralType;

    invoke-direct {v2, p0, v6}, Lcom/ibm/icu/text/MessageFormat$PluralSelectorProvider;-><init>(Lcom/ibm/icu/text/MessageFormat;Lcom/ibm/icu/text/PluralRules$PluralType;)V

    iput-object v2, p0, Lcom/ibm/icu/text/MessageFormat;->pluralProvider:Lcom/ibm/icu/text/MessageFormat$PluralSelectorProvider;

    .line 1736
    :cond_19
    iget-object v2, p0, Lcom/ibm/icu/text/MessageFormat;->pluralProvider:Lcom/ibm/icu/text/MessageFormat$PluralSelectorProvider;

    move-object v11, v2

    .line 1743
    :goto_5
    check-cast v5, Ljava/lang/Number;

    .line 1744
    iget-object v2, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v2, v3}, Lcom/ibm/icu/text/MessagePattern;->getPluralOffset(I)D

    move-result-wide v6

    .line 1745
    new-instance v2, Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;-><init>(ILjava/lang/String;Ljava/lang/Number;DLcom/ibm/icu/text/MessageFormat$1;)V

    .line 1747
    iget-object v4, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    .line 1748
    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    move v5, v3

    move-object v6, v11

    move-object v7, v2

    .line 1747
    invoke-static/range {v4 .. v9}, Lcom/ibm/icu/text/PluralFormat;->findSubMessage(Lcom/ibm/icu/text/MessagePattern;ILcom/ibm/icu/text/PluralFormat$PluralSelector;Ljava/lang/Object;D)I

    move-result v4

    move-object v3, p0

    move-object v5, v2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    .line 1749
    invoke-direct/range {v3 .. v8}, Lcom/ibm/icu/text/MessageFormat;->formatComplexSubMessage(ILcom/ibm/icu/text/MessageFormat$PluralSelectorContext;[Ljava/lang/Object;Ljava/util/Map;Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;)V

    goto/16 :goto_4

    .line 1738
    :cond_1a
    iget-object v2, p0, Lcom/ibm/icu/text/MessageFormat;->ordinalProvider:Lcom/ibm/icu/text/MessageFormat$PluralSelectorProvider;

    if-nez v2, :cond_1b

    .line 1739
    new-instance v2, Lcom/ibm/icu/text/MessageFormat$PluralSelectorProvider;

    sget-object v6, Lcom/ibm/icu/text/PluralRules$PluralType;->ORDINAL:Lcom/ibm/icu/text/PluralRules$PluralType;

    invoke-direct {v2, p0, v6}, Lcom/ibm/icu/text/MessageFormat$PluralSelectorProvider;-><init>(Lcom/ibm/icu/text/MessageFormat;Lcom/ibm/icu/text/PluralRules$PluralType;)V

    iput-object v2, p0, Lcom/ibm/icu/text/MessageFormat;->ordinalProvider:Lcom/ibm/icu/text/MessageFormat$PluralSelectorProvider;

    .line 1741
    :cond_1b
    iget-object v2, p0, Lcom/ibm/icu/text/MessageFormat;->ordinalProvider:Lcom/ibm/icu/text/MessageFormat$PluralSelectorProvider;

    move-object v11, v2

    goto :goto_5

    .line 1750
    :cond_1c
    sget-object v2, Lcom/ibm/icu/text/MessagePattern$ArgType;->SELECT:Lcom/ibm/icu/text/MessagePattern$ArgType;

    if-ne v6, v2, :cond_1d

    .line 1751
    iget-object v2, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/ibm/icu/text/SelectFormat;->findSubMessage(Lcom/ibm/icu/text/MessagePattern;ILjava/lang/String;)I

    move-result v3

    .line 1752
    const/4 v4, 0x0

    move-object v2, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/ibm/icu/text/MessageFormat;->formatComplexSubMessage(ILcom/ibm/icu/text/MessageFormat$PluralSelectorContext;[Ljava/lang/Object;Ljava/util/Map;Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;)V

    goto/16 :goto_4

    .line 1755
    :cond_1d
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unexpected argType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private format(Ljava/lang/Object;Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2124
    if-eqz p1, :cond_0

    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 2125
    :cond_0
    check-cast p1, Ljava/util/Map;

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/ibm/icu/text/MessageFormat;->format([Ljava/lang/Object;Ljava/util/Map;Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V

    .line 2129
    :goto_0
    return-void

    .line 2127
    :cond_1
    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    invoke-direct {p0, p1, v1, p2, p3}, Lcom/ibm/icu/text/MessageFormat;->format([Ljava/lang/Object;Ljava/util/Map;Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V

    goto :goto_0
.end method

.method private format([Ljava/lang/Object;Ljava/util/Map;Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;",
            "Ljava/text/FieldPosition;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2140
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v0}, Lcom/ibm/icu/text/MessagePattern;->hasNamedArguments()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2141
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "This method is not available in MessageFormat objects that use alphanumeric argument names."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2145
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/text/MessageFormat;->format(ILcom/ibm/icu/text/MessageFormat$PluralSelectorContext;[Ljava/lang/Object;Ljava/util/Map;Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V

    .line 2146
    return-void
.end method

.method private formatComplexSubMessage(ILcom/ibm/icu/text/MessageFormat$PluralSelectorContext;[Ljava/lang/Object;Ljava/util/Map;Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1767
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v0}, Lcom/ibm/icu/text/MessagePattern;->jdkAposMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1768
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/text/MessageFormat;->format(ILcom/ibm/icu/text/MessageFormat$PluralSelectorContext;[Ljava/lang/Object;Ljava/util/Map;Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V

    .line 1824
    :goto_0
    return-void

    .line 1776
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v0}, Lcom/ibm/icu/text/MessagePattern;->getPatternString()Ljava/lang/String;

    move-result-object v3

    .line 1778
    const/4 v0, 0x0

    .line 1779
    iget-object v1, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v1, p1}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ibm/icu/text/MessagePattern$Part;->getLimit()I

    move-result v2

    .line 1781
    :goto_1
    iget-object v4, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v4, v1}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v4

    .line 1782
    invoke-virtual {v4}, Lcom/ibm/icu/text/MessagePattern$Part;->getType()Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object v5

    .line 1783
    invoke-virtual {v4}, Lcom/ibm/icu/text/MessagePattern$Part;->getIndex()I

    move-result v6

    .line 1784
    sget-object v7, Lcom/ibm/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v5, v7, :cond_2

    .line 1785
    if-nez v0, :cond_1

    .line 1786
    invoke-virtual {v3, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 1817
    :goto_2
    const/16 v0, 0x7b

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_9

    .line 1818
    new-instance v0, Lcom/ibm/icu/text/MessageFormat;

    const-string/jumbo v2, ""

    iget-object v3, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-direct {v0, v2, v3}, Lcom/ibm/icu/text/MessageFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V

    .line 1819
    sget-object v2, Lcom/ibm/icu/text/MessagePattern$ApostropheMode;->DOUBLE_REQUIRED:Lcom/ibm/icu/text/MessagePattern$ApostropheMode;

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/text/MessageFormat;->applyPattern(Ljava/lang/String;Lcom/ibm/icu/text/MessagePattern$ApostropheMode;)V

    .line 1820
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/text/MessageFormat;->format(ILcom/ibm/icu/text/MessageFormat$PluralSelectorContext;[Ljava/lang/Object;Ljava/util/Map;Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V

    goto :goto_0

    .line 1788
    :cond_1
    invoke-virtual {v0, v3, v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 1790
    goto :goto_2

    .line 1791
    :cond_2
    sget-object v7, Lcom/ibm/icu/text/MessagePattern$Part$Type;->REPLACE_NUMBER:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-eq v5, v7, :cond_3

    sget-object v7, Lcom/ibm/icu/text/MessagePattern$Part$Type;->SKIP_SYNTAX:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v5, v7, :cond_7

    .line 1792
    :cond_3
    if-nez v0, :cond_4

    .line 1793
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1795
    :cond_4
    invoke-virtual {v0, v3, v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1796
    sget-object v2, Lcom/ibm/icu/text/MessagePattern$Part$Type;->REPLACE_NUMBER:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v5, v2, :cond_5

    .line 1797
    iget-boolean v2, p2, Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;->forReplaceNumber:Z

    if-eqz v2, :cond_6

    .line 1799
    iget-object v2, p2, Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;->numberString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1804
    :cond_5
    :goto_3
    invoke-virtual {v4}, Lcom/ibm/icu/text/MessagePattern$Part;->getLimit()I

    move-result v2

    move v8, v1

    move v1, v2

    move-object v2, v0

    move v0, v8

    :goto_4
    move p1, v0

    move-object v0, v2

    move v2, v1

    .line 1816
    goto :goto_1

    .line 1801
    :cond_6
    invoke-direct {p0}, Lcom/ibm/icu/text/MessageFormat;->getStockNumberFormatter()Lcom/ibm/icu/text/NumberFormat;

    move-result-object v2

    iget-object v5, p2, Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;->number:Ljava/lang/Number;

    invoke-virtual {v2, v5}, Lcom/ibm/icu/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1805
    :cond_7
    sget-object v4, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_START:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v5, v4, :cond_a

    .line 1806
    if-nez v0, :cond_8

    .line 1807
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1809
    :cond_8
    invoke-virtual {v0, v3, v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1811
    iget-object v2, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v2, v1}, Lcom/ibm/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result v1

    .line 1812
    iget-object v2, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v2, v1}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ibm/icu/text/MessagePattern$Part;->getLimit()I

    move-result v2

    .line 1813
    invoke-static {v3, v6, v2, v0}, Lcom/ibm/icu/text/MessagePattern;->appendReducedApostrophes(Ljava/lang/String;IILjava/lang/StringBuilder;)V

    move v8, v1

    move v1, v2

    move-object v2, v0

    move v0, v8

    .line 1814
    goto :goto_4

    .line 1822
    :cond_9
    invoke-virtual {p5, v1}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_a
    move v8, v1

    move v1, v2

    move-object v2, v0

    move v0, v8

    goto :goto_4
.end method

.method private getLiteralStringUntilNextArgument(I)Ljava/lang/String;
    .locals 7

    .prologue
    .line 1834
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1835
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v0}, Lcom/ibm/icu/text/MessagePattern;->getPatternString()Ljava/lang/String;

    move-result-object v3

    .line 1836
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/text/MessagePattern$Part;->getLimit()I

    move-result v1

    .line 1837
    add-int/lit8 v0, p1, 0x1

    .line 1838
    :goto_0
    iget-object v4, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v4, v0}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v4

    .line 1839
    invoke-virtual {v4}, Lcom/ibm/icu/text/MessagePattern$Part;->getType()Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object v5

    .line 1840
    invoke-virtual {v4}, Lcom/ibm/icu/text/MessagePattern$Part;->getIndex()I

    move-result v6

    .line 1841
    invoke-virtual {v2, v3, v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1842
    sget-object v1, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_START:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-eq v5, v1, :cond_0

    sget-object v1, Lcom/ibm/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v5, v1, :cond_1

    .line 1843
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1845
    :cond_1
    sget-boolean v1, Lcom/ibm/icu/text/MessageFormat;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    sget-object v1, Lcom/ibm/icu/text/MessagePattern$Part$Type;->SKIP_SYNTAX:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-eq v5, v1, :cond_2

    sget-object v1, Lcom/ibm/icu/text/MessagePattern$Part$Type;->INSERT_CHAR:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-eq v5, v1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected Part "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " in parsed message."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1847
    :cond_2
    invoke-virtual {v4}, Lcom/ibm/icu/text/MessagePattern$Part;->getLimit()I

    move-result v1

    .line 1837
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getStockDateFormatter()Lcom/ibm/icu/text/DateFormat;
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 1578
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->stockDateFormatter:Lcom/ibm/icu/text/DateFormat;

    if-nez v0, :cond_0

    .line 1579
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v1, v1, v0}, Lcom/ibm/icu/text/DateFormat;->getDateTimeInstance(IILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->stockDateFormatter:Lcom/ibm/icu/text/DateFormat;

    .line 1582
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->stockDateFormatter:Lcom/ibm/icu/text/DateFormat;

    return-object v0
.end method

.method private getStockNumberFormatter()Lcom/ibm/icu/text/NumberFormat;
    .locals 1

    .prologue
    .line 1585
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->stockNumberFormatter:Lcom/ibm/icu/text/NumberFormat;

    if-nez v0, :cond_0

    .line 1586
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v0}, Lcom/ibm/icu/text/NumberFormat;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->stockNumberFormatter:Lcom/ibm/icu/text/NumberFormat;

    .line 1588
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->stockNumberFormatter:Lcom/ibm/icu/text/NumberFormat;

    return-object v0
.end method

.method private static matchStringUntilLimitPart(Lcom/ibm/icu/text/MessagePattern;IILjava/lang/String;I)I
    .locals 6

    .prologue
    .line 1957
    const/4 v1, 0x0

    .line 1958
    invoke-virtual {p0}, Lcom/ibm/icu/text/MessagePattern;->getPatternString()Ljava/lang/String;

    move-result-object v2

    .line 1959
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/text/MessagePattern$Part;->getLimit()I

    move-result v0

    .line 1961
    :cond_0
    :goto_0
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v3

    .line 1962
    if-eq p1, p2, :cond_1

    invoke-virtual {v3}, Lcom/ibm/icu/text/MessagePattern$Part;->getType()Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object v4

    sget-object v5, Lcom/ibm/icu/text/MessagePattern$Part$Type;->SKIP_SYNTAX:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v4, v5, :cond_0

    .line 1963
    :cond_1
    invoke-virtual {v3}, Lcom/ibm/icu/text/MessagePattern$Part;->getIndex()I

    move-result v4

    .line 1964
    sub-int/2addr v4, v0

    .line 1965
    if-eqz v4, :cond_3

    invoke-virtual {p3, p4, v2, v0, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1966
    const/4 v1, -0x1

    .line 1970
    :cond_2
    return v1

    .line 1968
    :cond_3
    add-int/2addr v1, v4

    .line 1969
    if-eq p1, p2, :cond_2

    .line 1972
    invoke-virtual {v3}, Lcom/ibm/icu/text/MessagePattern$Part;->getLimit()I

    move-result v0

    goto :goto_0
.end method

.method private nextTopLevelArgStart(I)I
    .locals 2

    .prologue
    .line 533
    if-eqz p1, :cond_0

    .line 534
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result p1

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/MessagePattern;->getPartType(I)Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object v0

    .line 538
    sget-object v1, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_START:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v0, v1, :cond_1

    .line 542
    :goto_0
    return p1

    .line 541
    :cond_1
    sget-object v1, Lcom/ibm/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v0, v1, :cond_0

    .line 542
    const/4 p1, -0x1

    goto :goto_0
.end method

.method private parse(ILjava/lang/String;Ljava/text/ParsePosition;[Ljava/lang/Object;Ljava/util/Map;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/text/ParsePosition;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1237
    if-nez p2, :cond_0

    .line 1333
    :goto_0
    return-void

    .line 1240
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v2}, Lcom/ibm/icu/text/MessagePattern;->getPatternString()Ljava/lang/String;

    move-result-object v11

    .line 1241
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ibm/icu/text/MessagePattern$Part;->getLimit()I

    move-result v4

    .line 1242
    invoke-virtual/range {p3 .. p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    .line 1243
    new-instance v12, Ljava/text/ParsePosition;

    const/4 v2, 0x0

    invoke-direct {v12, v2}, Ljava/text/ParsePosition;-><init>(I)V

    .line 1245
    add-int/lit8 v2, p1, 0x1

    .line 1246
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v5, v2}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v5

    .line 1247
    invoke-virtual {v5}, Lcom/ibm/icu/text/MessagePattern$Part;->getType()Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object v6

    .line 1248
    invoke-virtual {v5}, Lcom/ibm/icu/text/MessagePattern$Part;->getIndex()I

    move-result v7

    .line 1250
    sub-int/2addr v7, v4

    .line 1251
    if-eqz v7, :cond_1

    move-object/from16 v0, p2

    invoke-virtual {v11, v4, v0, v3, v7}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1252
    :cond_1
    add-int v9, v3, v7

    .line 1253
    add-int v3, v4, v7

    .line 1258
    sget-object v3, Lcom/ibm/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v6, v3, :cond_3

    .line 1260
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/text/ParsePosition;->setIndex(I)V

    goto :goto_0

    .line 1255
    :cond_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    goto :goto_0

    .line 1263
    :cond_3
    sget-object v3, Lcom/ibm/icu/text/MessagePattern$Part$Type;->SKIP_SYNTAX:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-eq v6, v3, :cond_4

    sget-object v3, Lcom/ibm/icu/text/MessagePattern$Part$Type;->INSERT_CHAR:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v6, v3, :cond_5

    .line 1264
    :cond_4
    invoke-virtual {v5}, Lcom/ibm/icu/text/MessagePattern$Part;->getLimit()I

    move-result v4

    move v3, v9

    .line 1245
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1268
    :cond_5
    sget-boolean v3, Lcom/ibm/icu/text/MessageFormat;->$assertionsDisabled:Z

    if-nez v3, :cond_6

    sget-object v3, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_START:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-eq v6, v3, :cond_6

    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unexpected Part "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " in parsed message."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 1269
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v3, v2}, Lcom/ibm/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result v8

    .line 1271
    invoke-virtual {v5}, Lcom/ibm/icu/text/MessagePattern$Part;->getArgType()Lcom/ibm/icu/text/MessagePattern$ArgType;

    move-result-object v10

    .line 1272
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v3, v6}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v4

    .line 1275
    const/4 v3, 0x0

    .line 1276
    const/4 v2, 0x0

    .line 1277
    if-eqz p4, :cond_7

    .line 1278
    invoke-virtual {v4}, Lcom/ibm/icu/text/MessagePattern$Part;->getValue()I

    move-result v3

    .line 1279
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v5, v4

    move v4, v3

    move-object v3, v2

    .line 1289
    :goto_3
    add-int/lit8 v13, v6, 0x1

    .line 1291
    const/4 v7, 0x0

    .line 1292
    const/4 v6, 0x0

    .line 1293
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ibm/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ibm/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    add-int/lit8 v14, v13, -0x2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v2, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/Format;

    if-eqz v2, :cond_b

    .line 1295
    invoke-virtual {v12, v9}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1296
    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v12}, Ljava/text/Format;->parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;

    move-result-object v2

    .line 1297
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    if-ne v5, v9, :cond_9

    .line 1298
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    goto/16 :goto_0

    .line 1281
    :cond_7
    invoke-virtual {v4}, Lcom/ibm/icu/text/MessagePattern$Part;->getType()Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object v2

    sget-object v5, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_NAME:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v2, v5, :cond_8

    .line 1282
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v2, v4}, Lcom/ibm/icu/text/MessagePattern;->getSubstring(Lcom/ibm/icu/text/MessagePattern$Part;)Ljava/lang/String;

    move-result-object v2

    :goto_4
    move v4, v3

    move-object v5, v2

    move-object v3, v2

    .line 1286
    goto :goto_3

    .line 1284
    :cond_8
    invoke-virtual {v4}, Lcom/ibm/icu/text/MessagePattern$Part;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 1301
    :cond_9
    const/4 v5, 0x1

    .line 1302
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    move-object v15, v2

    move v2, v6

    move v6, v5

    move-object v5, v15

    .line 1346
    :goto_5
    if-eqz v6, :cond_a

    .line 1347
    if-eqz p4, :cond_14

    .line 1348
    aput-object v5, p4, v4

    .line 1353
    :cond_a
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v3, v8}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ibm/icu/text/MessagePattern$Part;->getLimit()I

    move-result v4

    move v3, v2

    move v2, v8

    .line 1354
    goto/16 :goto_2

    .line 1303
    :cond_b
    sget-object v2, Lcom/ibm/icu/text/MessagePattern$ArgType;->NONE:Lcom/ibm/icu/text/MessagePattern$ArgType;

    if-eq v10, v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ibm/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ibm/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    add-int/lit8 v14, v13, -0x2

    .line 1305
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v2, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1310
    :cond_c
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/ibm/icu/text/MessageFormat;->getLiteralStringUntilNextArgument(I)Ljava/lang/String;

    move-result-object v2

    .line 1312
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_d

    .line 1313
    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v10

    .line 1317
    :goto_7
    if-gez v10, :cond_e

    .line 1318
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    goto/16 :goto_0

    .line 1315
    :cond_d
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v10

    goto :goto_7

    .line 1321
    :cond_e
    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1322
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "{"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v9, "}"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_15

    .line 1323
    const/4 v5, 0x1

    :goto_8
    move v6, v5

    move-object v5, v2

    move v2, v10

    .line 1328
    goto :goto_5

    :cond_f
    sget-object v2, Lcom/ibm/icu/text/MessagePattern$ArgType;->CHOICE:Lcom/ibm/icu/text/MessagePattern$ArgType;

    if-ne v10, v2, :cond_11

    .line 1329
    invoke-virtual {v12, v9}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1330
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    move-object/from16 v0, p2

    invoke-static {v2, v13, v0, v12}, Lcom/ibm/icu/text/MessageFormat;->parseChoiceArgument(Lcom/ibm/icu/text/MessagePattern;ILjava/lang/String;Ljava/text/ParsePosition;)D

    move-result-wide v6

    .line 1331
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    if-ne v2, v9, :cond_10

    .line 1332
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    goto/16 :goto_0

    .line 1335
    :cond_10
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 1336
    const/4 v5, 0x1

    .line 1337
    invoke-virtual {v12}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    move-object v15, v2

    move v2, v6

    move v6, v5

    move-object v5, v15

    .line 1338
    goto/16 :goto_5

    :cond_11
    invoke-virtual {v10}, Lcom/ibm/icu/text/MessagePattern$ArgType;->hasPluralStyle()Z

    move-result v2

    if-nez v2, :cond_12

    sget-object v2, Lcom/ibm/icu/text/MessagePattern$ArgType;->SELECT:Lcom/ibm/icu/text/MessagePattern$ArgType;

    if-ne v10, v2, :cond_13

    .line 1340
    :cond_12
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v3, "Parsing of plural/select/selectordinal argument is not supported."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1344
    :cond_13
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unexpected argType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1349
    :cond_14
    if-eqz p5, :cond_a

    .line 1350
    move-object/from16 v0, p5

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    :cond_15
    move-object v2, v6

    move v5, v7

    goto :goto_8
.end method

.method private static parseChoiceArgument(Lcom/ibm/icu/text/MessagePattern;ILjava/lang/String;Ljava/text/ParsePosition;)D
    .locals 8

    .prologue
    .line 1917
    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    .line 1919
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    move v2, v3

    .line 1921
    :goto_0
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/MessagePattern;->getPartType(I)Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object v4

    sget-object v5, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_LIMIT:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-eq v4, v5, :cond_3

    .line 1922
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/ibm/icu/text/MessagePattern;->getNumericValue(Lcom/ibm/icu/text/MessagePattern$Part;)D

    move-result-wide v4

    .line 1923
    add-int/lit8 v6, p1, 0x2

    .line 1924
    invoke-virtual {p0, v6}, Lcom/ibm/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result v7

    .line 1925
    invoke-static {p0, v6, v7, p2, v3}, Lcom/ibm/icu/text/MessageFormat;->matchStringUntilLimitPart(Lcom/ibm/icu/text/MessagePattern;IILjava/lang/String;I)I

    move-result v6

    .line 1926
    if-ltz v6, :cond_1

    .line 1927
    add-int/2addr v6, v3

    .line 1928
    if-le v6, v2, :cond_1

    .line 1931
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v6, v0, :cond_0

    .line 1938
    :goto_1
    if-ne v6, v3, :cond_2

    .line 1939
    invoke-virtual {p3, v3}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1943
    :goto_2
    return-wide v4

    :cond_0
    move-wide v0, v4

    move v2, v6

    .line 1936
    :cond_1
    add-int/lit8 p1, v7, 0x1

    .line 1937
    goto :goto_0

    .line 1941
    :cond_2
    invoke-virtual {p3, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    goto :goto_2

    :cond_3
    move-wide v4, v0

    move v6, v2

    goto :goto_1
.end method

.method private resetPattern()V
    .locals 1

    .prologue
    .line 2149
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    if-eqz v0, :cond_0

    .line 2150
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v0}, Lcom/ibm/icu/text/MessagePattern;->clear()V

    .line 2152
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 2153
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2155
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    .line 2156
    return-void
.end method

.method private setArgStartFormat(ILjava/text/Format;)V
    .locals 2

    .prologue
    .line 2432
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2433
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    .line 2435
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2436
    return-void
.end method

.method private setCustomArgStartFormat(ILjava/text/Format;)V
    .locals 2

    .prologue
    .line 2443
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/MessageFormat;->setArgStartFormat(ILjava/text/Format;)V

    .line 2444
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 2445
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    .line 2447
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2448
    return-void
.end method

.method private updateMetaData(Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;ILjava/text/FieldPosition;Ljava/lang/Object;)Ljava/text/FieldPosition;
    .locals 3

    .prologue
    .line 1853
    invoke-static {p1}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->access$000(Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->access$500(Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;)I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 1854
    invoke-static {p1}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->access$000(Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/ibm/icu/text/MessageFormat$AttributeAndPosition;

    invoke-static {p1}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->access$500(Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;)I

    move-result v2

    invoke-direct {v1, p4, p2, v2}, Lcom/ibm/icu/text/MessageFormat$AttributeAndPosition;-><init>(Ljava/lang/Object;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1856
    :cond_0
    if-eqz p3, :cond_1

    sget-object v0, Lcom/ibm/icu/text/MessageFormat$Field;->ARGUMENT:Lcom/ibm/icu/text/MessageFormat$Field;

    invoke-virtual {p3}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/MessageFormat$Field;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1857
    invoke-virtual {p3, p2}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 1858
    invoke-static {p1}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->access$500(Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;)I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 1859
    const/4 p3, 0x0

    .line 1861
    :cond_1
    return-object p3
.end method


# virtual methods
.method public applyPattern(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 453
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    if-nez v0, :cond_0

    .line 454
    new-instance v0, Lcom/ibm/icu/text/MessagePattern;

    invoke-direct {v0, p1}, Lcom/ibm/icu/text/MessagePattern;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    .line 459
    :goto_0
    invoke-direct {p0}, Lcom/ibm/icu/text/MessageFormat;->cacheExplicitFormats()V

    .line 464
    return-void

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/MessagePattern;->parse(Ljava/lang/String;)Lcom/ibm/icu/text/MessagePattern;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 460
    :catch_0
    move-exception v0

    .line 461
    invoke-direct {p0}, Lcom/ibm/icu/text/MessageFormat;->resetPattern()V

    .line 462
    throw v0
.end method

.method public applyPattern(Ljava/lang/String;Lcom/ibm/icu/text/MessagePattern$ApostropheMode;)V
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    if-nez v0, :cond_1

    .line 483
    new-instance v0, Lcom/ibm/icu/text/MessagePattern;

    invoke-direct {v0, p2}, Lcom/ibm/icu/text/MessagePattern;-><init>(Lcom/ibm/icu/text/MessagePattern$ApostropheMode;)V

    iput-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    .line 487
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/MessageFormat;->applyPattern(Ljava/lang/String;)V

    .line 488
    return-void

    .line 484
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v0}, Lcom/ibm/icu/text/MessagePattern;->getApostropheMode()Lcom/ibm/icu/text/MessagePattern$ApostropheMode;

    move-result-object v0

    if-eq p2, v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v0, p2}, Lcom/ibm/icu/text/MessagePattern;->clearPatternAndSetApostropheMode(Lcom/ibm/icu/text/MessagePattern$ApostropheMode;)V

    goto :goto_0
.end method

.method public clone()Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1425
    invoke-super {p0}, Lcom/ibm/icu/text/UFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/MessageFormat;

    .line 1427
    iget-object v1, p0, Lcom/ibm/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    if-eqz v1, :cond_0

    .line 1428
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, v0, Lcom/ibm/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    .line 1429
    iget-object v1, p0, Lcom/ibm/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1430
    iget-object v4, v0, Lcom/ibm/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1433
    :cond_0
    iput-object v2, v0, Lcom/ibm/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    .line 1436
    :cond_1
    iget-object v1, p0, Lcom/ibm/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 1437
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/ibm/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    .line 1438
    iget-object v1, p0, Lcom/ibm/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1439
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1440
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1441
    iget-object v4, v0, Lcom/ibm/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1444
    :cond_2
    iput-object v2, v0, Lcom/ibm/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    .line 1447
    :cond_3
    iget-object v1, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    if-nez v1, :cond_4

    move-object v1, v2

    :goto_2
    iput-object v1, v0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    .line 1448
    iget-object v1, p0, Lcom/ibm/icu/text/MessageFormat;->stockDateFormatter:Lcom/ibm/icu/text/DateFormat;

    if-nez v1, :cond_5

    move-object v1, v2

    .line 1449
    :goto_3
    iput-object v1, v0, Lcom/ibm/icu/text/MessageFormat;->stockDateFormatter:Lcom/ibm/icu/text/DateFormat;

    .line 1450
    iget-object v1, p0, Lcom/ibm/icu/text/MessageFormat;->stockNumberFormatter:Lcom/ibm/icu/text/NumberFormat;

    if-nez v1, :cond_6

    move-object v1, v2

    .line 1451
    :goto_4
    iput-object v1, v0, Lcom/ibm/icu/text/MessageFormat;->stockNumberFormatter:Lcom/ibm/icu/text/NumberFormat;

    .line 1453
    iput-object v2, v0, Lcom/ibm/icu/text/MessageFormat;->pluralProvider:Lcom/ibm/icu/text/MessageFormat$PluralSelectorProvider;

    .line 1454
    iput-object v2, v0, Lcom/ibm/icu/text/MessageFormat;->ordinalProvider:Lcom/ibm/icu/text/MessageFormat$PluralSelectorProvider;

    .line 1455
    return-object v0

    .line 1447
    :cond_4
    iget-object v1, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v1}, Lcom/ibm/icu/text/MessagePattern;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/text/MessagePattern;

    goto :goto_2

    .line 1448
    :cond_5
    iget-object v1, p0, Lcom/ibm/icu/text/MessageFormat;->stockDateFormatter:Lcom/ibm/icu/text/DateFormat;

    .line 1449
    invoke-virtual {v1}, Lcom/ibm/icu/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/text/DateFormat;

    goto :goto_3

    .line 1450
    :cond_6
    iget-object v1, p0, Lcom/ibm/icu/text/MessageFormat;->stockNumberFormatter:Lcom/ibm/icu/text/NumberFormat;

    .line 1451
    invoke-virtual {v1}, Lcom/ibm/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/text/NumberFormat;

    goto :goto_4
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1464
    if-ne p0, p1, :cond_1

    .line 1469
    :cond_0
    :goto_0
    return v0

    .line 1466
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 1467
    goto :goto_0

    .line 1468
    :cond_3
    check-cast p1, Lcom/ibm/icu/text/MessageFormat;

    .line 1469
    iget-object v2, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    iget-object v3, p1, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    iget-object v3, p1, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    .line 1470
    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ibm/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    iget-object v3, p1, Lcom/ibm/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    .line 1471
    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ibm/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    iget-object v3, p1, Lcom/ibm/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    .line 1472
    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1

    .prologue
    .line 1060
    new-instance v0, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;

    invoke-direct {v0, p2}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;-><init>(Ljava/lang/StringBuffer;)V

    invoke-direct {p0, p1, v0, p3}, Lcom/ibm/icu/text/MessageFormat;->format(Ljava/lang/Object;Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V

    .line 1061
    return-object p2
.end method

.method public final format([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2

    .prologue
    .line 943
    const/4 v0, 0x0

    new-instance v1, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;

    invoke-direct {v1, p2}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;-><init>(Ljava/lang/StringBuffer;)V

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/ibm/icu/text/MessageFormat;->format([Ljava/lang/Object;Ljava/util/Map;Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V

    .line 944
    return-object p2
.end method

.method public formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .locals 6

    .prologue
    .line 1102
    if-nez p1, :cond_0

    .line 1103
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "formatToCharacterIterator must be passed non-null object"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1106
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1107
    new-instance v1, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;

    invoke-direct {v1, v0}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;-><init>(Ljava/lang/StringBuilder;)V

    .line 1108
    invoke-virtual {v1}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->useAttributes()V

    .line 1109
    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/ibm/icu/text/MessageFormat;->format(Ljava/lang/Object;Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V

    .line 1110
    new-instance v2, Ljava/text/AttributedString;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    .line 1111
    invoke-static {v1}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->access$000(Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/MessageFormat$AttributeAndPosition;

    .line 1112
    invoke-static {v0}, Lcom/ibm/icu/text/MessageFormat$AttributeAndPosition;->access$100(Lcom/ibm/icu/text/MessageFormat$AttributeAndPosition;)Ljava/text/AttributedCharacterIterator$Attribute;

    move-result-object v3

    invoke-static {v0}, Lcom/ibm/icu/text/MessageFormat$AttributeAndPosition;->access$200(Lcom/ibm/icu/text/MessageFormat$AttributeAndPosition;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0}, Lcom/ibm/icu/text/MessageFormat$AttributeAndPosition;->access$300(Lcom/ibm/icu/text/MessageFormat$AttributeAndPosition;)I

    move-result v5

    invoke-static {v0}, Lcom/ibm/icu/text/MessageFormat$AttributeAndPosition;->access$400(Lcom/ibm/icu/text/MessageFormat$AttributeAndPosition;)I

    move-result v0

    invoke-virtual {v2, v3, v4, v5, v0}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    goto :goto_0

    .line 1114
    :cond_1
    invoke-virtual {v2}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1483
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v0}, Lcom/ibm/icu/text/MessagePattern;->getPatternString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)[Ljava/lang/Object;
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 1148
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v0}, Lcom/ibm/icu/text/MessagePattern;->hasNamedArguments()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1149
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "This method is not available in MessageFormat objects that use named argument."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1155
    :cond_0
    const/4 v0, -0x1

    move v2, v0

    move v0, v1

    .line 1156
    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lcom/ibm/icu/text/MessageFormat;->nextTopLevelArgStart(I)I

    move-result v0

    if-ltz v0, :cond_2

    .line 1157
    iget-object v3, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ibm/icu/text/MessagePattern$Part;->getValue()I

    move-result v3

    .line 1158
    if-le v3, v2, :cond_1

    move v2, v3

    .line 1159
    goto :goto_0

    .line 1162
    :cond_2
    add-int/lit8 v0, v2, 0x1

    new-array v4, v0, [Ljava/lang/Object;

    .line 1164
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    .line 1165
    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/MessageFormat;->parse(ILjava/lang/String;Ljava/text/ParsePosition;[Ljava/lang/Object;Ljava/util/Map;)V

    .line 1166
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    if-ne v0, v6, :cond_3

    .line 1170
    :goto_1
    return-object v5

    :cond_3
    move-object v5, v4

    goto :goto_1
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1412
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v0}, Lcom/ibm/icu/text/MessagePattern;->hasNamedArguments()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1413
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/MessageFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)[Ljava/lang/Object;

    move-result-object v0

    .line 1415
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/MessageFormat;->parseToMap(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public parseToMap(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/text/ParsePosition;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1187
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1188
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    .line 1189
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/MessageFormat;->parse(ILjava/lang/String;Ljava/text/ParsePosition;[Ljava/lang/Object;Ljava/util/Map;)V

    .line 1190
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    if-ne v0, v6, :cond_0

    .line 1193
    :goto_0
    return-object v4

    :cond_0
    move-object v4, v5

    goto :goto_0
.end method

.method public setFormatByArgumentIndex(ILjava/text/Format;)V
    .locals 3

    .prologue
    .line 690
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v0}, Lcom/ibm/icu/text/MessagePattern;->hasNamedArguments()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 691
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "This method is not available in MessageFormat objects that use alphanumeric argument names."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 695
    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lcom/ibm/icu/text/MessageFormat;->nextTopLevelArgStart(I)I

    move-result v0

    if-ltz v0, :cond_2

    .line 696
    iget-object v1, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ibm/icu/text/MessagePattern$Part;->getValue()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 697
    invoke-direct {p0, v0, p2}, Lcom/ibm/icu/text/MessageFormat;->setCustomArgStartFormat(ILjava/text/Format;)V

    goto :goto_0

    .line 700
    :cond_2
    return-void
.end method

.method public usesNamedArguments()Z
    .locals 1

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v0}, Lcom/ibm/icu/text/MessagePattern;->hasNamedArguments()Z

    move-result v0

    return v0
.end method
