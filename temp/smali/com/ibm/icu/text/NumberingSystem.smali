.class public Lcom/ibm/icu/text/NumberingSystem;
.super Ljava/lang/Object;
.source "NumberingSystem.java"


# static fields
.field private static final OTHER_NS_KEYWORDS:[Ljava/lang/String;

.field private static cachedLocaleData:Lcom/ibm/icu/impl/CacheBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ibm/icu/impl/CacheBase",
            "<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/text/NumberingSystem;",
            "Lcom/ibm/icu/text/NumberingSystem$LocaleLookupData;",
            ">;"
        }
    .end annotation
.end field

.field private static cachedStringData:Lcom/ibm/icu/impl/CacheBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ibm/icu/impl/CacheBase",
            "<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/text/NumberingSystem;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private algorithmic:Z

.field private desc:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private radix:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "native"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "traditional"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "finance"

    aput-object v2, v0, v1

    sput-object v0, Lcom/ibm/icu/text/NumberingSystem;->OTHER_NS_KEYWORDS:[Ljava/lang/String;

    .line 329
    new-instance v0, Lcom/ibm/icu/text/NumberingSystem$1;

    invoke-direct {v0}, Lcom/ibm/icu/text/NumberingSystem$1;-><init>()V

    sput-object v0, Lcom/ibm/icu/text/NumberingSystem;->cachedLocaleData:Lcom/ibm/icu/impl/CacheBase;

    .line 340
    new-instance v0, Lcom/ibm/icu/text/NumberingSystem$2;

    invoke-direct {v0}, Lcom/ibm/icu/text/NumberingSystem$2;-><init>()V

    sput-object v0, Lcom/ibm/icu/text/NumberingSystem;->cachedStringData:Lcom/ibm/icu/impl/CacheBase;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/16 v0, 0xa

    iput v0, p0, Lcom/ibm/icu/text/NumberingSystem;->radix:I

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ibm/icu/text/NumberingSystem;->algorithmic:Z

    .line 47
    const-string/jumbo v0, "0123456789"

    iput-object v0, p0, Lcom/ibm/icu/text/NumberingSystem;->desc:Ljava/lang/String;

    .line 48
    const-string/jumbo v0, "latn"

    iput-object v0, p0, Lcom/ibm/icu/text/NumberingSystem;->name:Ljava/lang/String;

    .line 49
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Lcom/ibm/icu/text/NumberingSystem;
    .locals 1

    .prologue
    .line 36
    invoke-static {p0}, Lcom/ibm/icu/text/NumberingSystem;->lookupInstanceByName(Ljava/lang/String;)Lcom/ibm/icu/text/NumberingSystem;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberingSystem;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 117
    const/4 v1, 0x1

    .line 118
    const-string/jumbo v2, "numbers"

    invoke-virtual {p0, v2}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 119
    if-eqz v2, :cond_1

    .line 120
    sget-object v4, Lcom/ibm/icu/text/NumberingSystem;->OTHER_NS_KEYWORDS:[Ljava/lang/String;

    array-length v5, v4

    move v3, v0

    :goto_0
    if-ge v3, v5, :cond_4

    aget-object v6, v4, v3

    .line 121
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    :goto_1
    move v1, v0

    move-object v0, v2

    .line 131
    :goto_2
    if-eqz v1, :cond_3

    .line 132
    invoke-static {v0}, Lcom/ibm/icu/text/NumberingSystem;->getInstanceByName(Ljava/lang/String;)Lcom/ibm/icu/text/NumberingSystem;

    move-result-object v0

    .line 133
    if-eqz v0, :cond_2

    .line 149
    :goto_3
    return-object v0

    .line 120
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 127
    :cond_1
    const-string/jumbo v1, "default"

    move-object v7, v1

    move v1, v0

    move-object v0, v7

    .line 128
    goto :goto_2

    .line 138
    :cond_2
    const-string/jumbo v0, "default"

    .line 142
    :cond_3
    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v1

    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "@numbers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 148
    new-instance v2, Lcom/ibm/icu/text/NumberingSystem$LocaleLookupData;

    invoke-direct {v2, p0, v0}, Lcom/ibm/icu/text/NumberingSystem$LocaleLookupData;-><init>(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)V

    .line 149
    sget-object v0, Lcom/ibm/icu/text/NumberingSystem;->cachedLocaleData:Lcom/ibm/icu/impl/CacheBase;

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/impl/CacheBase;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/NumberingSystem;

    goto :goto_3

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method private static getInstance(Ljava/lang/String;IZLjava/lang/String;)Lcom/ibm/icu/text/NumberingSystem;
    .locals 2

    .prologue
    .line 86
    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid radix for numbering system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    if-nez p2, :cond_2

    .line 91
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, p1, :cond_1

    invoke-static {p3}, Lcom/ibm/icu/text/NumberingSystem;->isValidDigitString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 92
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid digit string for numbering system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_2
    new-instance v0, Lcom/ibm/icu/text/NumberingSystem;

    invoke-direct {v0}, Lcom/ibm/icu/text/NumberingSystem;-><init>()V

    .line 96
    iput p1, v0, Lcom/ibm/icu/text/NumberingSystem;->radix:I

    .line 97
    iput-boolean p2, v0, Lcom/ibm/icu/text/NumberingSystem;->algorithmic:Z

    .line 98
    iput-object p3, v0, Lcom/ibm/icu/text/NumberingSystem;->desc:Ljava/lang/String;

    .line 99
    iput-object p0, v0, Lcom/ibm/icu/text/NumberingSystem;->name:Ljava/lang/String;

    .line 100
    return-object v0
.end method

.method public static getInstanceByName(Ljava/lang/String;)Lcom/ibm/icu/text/NumberingSystem;
    .locals 2

    .prologue
    .line 221
    sget-object v0, Lcom/ibm/icu/text/NumberingSystem;->cachedStringData:Lcom/ibm/icu/impl/CacheBase;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/ibm/icu/impl/CacheBase;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/NumberingSystem;

    return-object v0
.end method

.method public static isValidDigitString(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 277
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->codePointCount(II)I

    move-result v1

    .line 278
    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static lookupInstanceByLocale(Lcom/ibm/icu/text/NumberingSystem$LocaleLookupData;)Lcom/ibm/icu/text/NumberingSystem;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 163
    iget-object v0, p0, Lcom/ibm/icu/text/NumberingSystem$LocaleLookupData;->locale:Lcom/ibm/icu/util/ULocale;

    .line 166
    :try_start_0
    const-string/jumbo v2, "com/ibm/icu/impl/data/icudt59b"

    invoke-static {v2, v0}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 167
    const-string/jumbo v2, "NumberElements"

    invoke-virtual {v0, v2}, Lcom/ibm/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 172
    iget-object v0, p0, Lcom/ibm/icu/text/NumberingSystem$LocaleLookupData;->numbersKeyword:Ljava/lang/String;

    .line 176
    :goto_0
    :try_start_1
    invoke-virtual {v2, v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 190
    :goto_1
    if-eqz v0, :cond_4

    .line 191
    invoke-static {v0}, Lcom/ibm/icu/text/NumberingSystem;->getInstanceByName(Ljava/lang/String;)Lcom/ibm/icu/text/NumberingSystem;

    move-result-object v0

    .line 194
    :goto_2
    if-nez v0, :cond_0

    .line 195
    new-instance v0, Lcom/ibm/icu/text/NumberingSystem;

    invoke-direct {v0}, Lcom/ibm/icu/text/NumberingSystem;-><init>()V

    .line 197
    :cond_0
    :goto_3
    return-object v0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    new-instance v0, Lcom/ibm/icu/text/NumberingSystem;

    invoke-direct {v0}, Lcom/ibm/icu/text/NumberingSystem;-><init>()V

    goto :goto_3

    .line 178
    :catch_1
    move-exception v3

    .line 179
    const-string/jumbo v3, "native"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "finance"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 180
    :cond_1
    const-string/jumbo v0, "default"

    goto :goto_0

    .line 181
    :cond_2
    const-string/jumbo v3, "traditional"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 182
    const-string/jumbo v0, "native"

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 184
    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method

.method private static lookupInstanceByName(Ljava/lang/String;)Lcom/ibm/icu/text/NumberingSystem;
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 229
    :try_start_0
    const-string/jumbo v1, "com/ibm/icu/impl/data/icudt59b"

    const-string/jumbo v2, "numberingSystems"

    invoke-static {v1, v2}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v1

    .line 230
    const-string/jumbo v2, "numberingSystems"

    invoke-virtual {v1, v2}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v1

    .line 231
    invoke-virtual {v1, p0}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v1

    .line 233
    const-string/jumbo v2, "desc"

    invoke-virtual {v1, v2}, Lcom/ibm/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 234
    const-string/jumbo v3, "radix"

    invoke-virtual {v1, v3}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v3

    .line 235
    const-string/jumbo v4, "algorithmic"

    invoke-virtual {v1, v4}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v1

    .line 236
    invoke-virtual {v3}, Lcom/ibm/icu/util/UResourceBundle;->getInt()I

    move-result v3

    .line 237
    invoke-virtual {v1}, Lcom/ibm/icu/util/UResourceBundle;->getInt()I
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 239
    if-ne v1, v0, :cond_0

    .line 245
    :goto_0
    invoke-static {p0, v3, v0, v2}, Lcom/ibm/icu/text/NumberingSystem;->getInstance(Ljava/lang/String;IZLjava/lang/String;)Lcom/ibm/icu/text/NumberingSystem;

    move-result-object v0

    :goto_1
    return-object v0

    .line 239
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 241
    :catch_0
    move-exception v0

    .line 242
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/ibm/icu/text/NumberingSystem;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/ibm/icu/text/NumberingSystem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRadix()I
    .locals 1

    .prologue
    .line 286
    iget v0, p0, Lcom/ibm/icu/text/NumberingSystem;->radix:I

    return v0
.end method

.method public isAlgorithmic()Z
    .locals 1

    .prologue
    .line 318
    iget-boolean v0, p0, Lcom/ibm/icu/text/NumberingSystem;->algorithmic:Z

    return v0
.end method
