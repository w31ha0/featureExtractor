.class public abstract Lcom/ibm/icu/text/BreakIterator;
.super Ljava/lang/Object;
.source "BreakIterator.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final DEBUG:Z

.field private static final iterCache:[Lcom/ibm/icu/impl/CacheValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/ibm/icu/impl/CacheValue",
            "<*>;"
        }
    .end annotation
.end field

.field private static shim:Lcom/ibm/icu/text/BreakIterator$BreakIteratorServiceShim;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 217
    const-string/jumbo v0, "breakiterator"

    invoke-static {v0}, Lcom/ibm/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/ibm/icu/text/BreakIterator;->DEBUG:Z

    .line 562
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/ibm/icu/impl/CacheValue;

    sput-object v0, Lcom/ibm/icu/text/BreakIterator;->iterCache:[Lcom/ibm/icu/impl/CacheValue;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    return-void
.end method

.method public static getBreakInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/BreakIterator;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 857
    if-nez p0, :cond_0

    .line 858
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Specified locale is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 860
    :cond_0
    sget-object v0, Lcom/ibm/icu/text/BreakIterator;->iterCache:[Lcom/ibm/icu/impl/CacheValue;

    aget-object v0, v0, p1

    if-eqz v0, :cond_2

    .line 861
    sget-object v0, Lcom/ibm/icu/text/BreakIterator;->iterCache:[Lcom/ibm/icu/impl/CacheValue;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/ibm/icu/impl/CacheValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/BreakIterator$BreakIteratorCache;

    .line 862
    if-eqz v0, :cond_2

    .line 863
    invoke-virtual {v0}, Lcom/ibm/icu/text/BreakIterator$BreakIteratorCache;->getLocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/ibm/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 864
    invoke-virtual {v0}, Lcom/ibm/icu/text/BreakIterator$BreakIteratorCache;->createBreakInstance()Lcom/ibm/icu/text/BreakIterator;

    move-result-object v1

    .line 879
    :cond_1
    :goto_0
    return-object v1

    .line 870
    :cond_2
    invoke-static {}, Lcom/ibm/icu/text/BreakIterator;->getShim()Lcom/ibm/icu/text/BreakIterator$BreakIteratorServiceShim;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ibm/icu/text/BreakIterator$BreakIteratorServiceShim;->createBreakIterator(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/BreakIterator;

    move-result-object v1

    .line 872
    new-instance v0, Lcom/ibm/icu/text/BreakIterator$BreakIteratorCache;

    invoke-direct {v0, p0, v1}, Lcom/ibm/icu/text/BreakIterator$BreakIteratorCache;-><init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/BreakIterator;)V

    .line 873
    sget-object v2, Lcom/ibm/icu/text/BreakIterator;->iterCache:[Lcom/ibm/icu/impl/CacheValue;

    invoke-static {v0}, Lcom/ibm/icu/impl/CacheValue;->getInstance(Ljava/lang/Object;)Lcom/ibm/icu/impl/CacheValue;

    move-result-object v0

    aput-object v0, v2, p1

    .line 874
    instance-of v0, v1, Lcom/ibm/icu/text/RuleBasedBreakIterator;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 875
    check-cast v0, Lcom/ibm/icu/text/RuleBasedBreakIterator;

    .line 876
    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->setBreakType(I)V

    goto :goto_0
.end method

.method public static getSentenceInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/BreakIterator;
    .locals 1

    .prologue
    .line 717
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/ibm/icu/text/BreakIterator;->getBreakInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/BreakIterator;

    move-result-object v0

    return-object v0
.end method

.method private static getShim()Lcom/ibm/icu/text/BreakIterator$BreakIteratorServiceShim;
    .locals 2

    .prologue
    .line 941
    sget-object v0, Lcom/ibm/icu/text/BreakIterator;->shim:Lcom/ibm/icu/text/BreakIterator$BreakIteratorServiceShim;

    if-nez v0, :cond_0

    .line 943
    :try_start_0
    const-string/jumbo v0, "com.ibm.icu.text.BreakIteratorFactory"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 944
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/BreakIterator$BreakIteratorServiceShim;

    sput-object v0, Lcom/ibm/icu/text/BreakIterator;->shim:Lcom/ibm/icu/text/BreakIterator$BreakIteratorServiceShim;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 959
    :cond_0
    sget-object v0, Lcom/ibm/icu/text/BreakIterator;->shim:Lcom/ibm/icu/text/BreakIterator$BreakIteratorServiceShim;

    return-object v0

    .line 946
    :catch_0
    move-exception v0

    .line 948
    throw v0

    .line 950
    :catch_1
    move-exception v0

    .line 952
    sget-boolean v1, Lcom/ibm/icu/text/BreakIterator;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 953
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 955
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getWordInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/BreakIterator;
    .locals 1

    .prologue
    .line 599
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/ibm/icu/text/BreakIterator;->getBreakInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/BreakIterator;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 238
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 240
    :catch_0
    move-exception v0

    .line 242
    new-instance v1, Lcom/ibm/icu/util/ICUCloneNotSupportedException;

    invoke-direct {v1, v0}, Lcom/ibm/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public abstract first()I
.end method

.method public abstract following(I)I
.end method

.method public abstract next()I
.end method

.method public preceding(I)I
    .locals 2

    .prologue
    .line 351
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/BreakIterator;->following(I)I

    move-result v0

    .line 352
    :goto_0
    if-lt v0, p1, :cond_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 353
    invoke-virtual {p0}, Lcom/ibm/icu/text/BreakIterator;->previous()I

    move-result v0

    goto :goto_0

    .line 354
    :cond_0
    return v0
.end method

.method public abstract previous()I
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 515
    new-instance v0, Ljava/text/StringCharacterIterator;

    invoke-direct {v0, p1}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    .line 516
    return-void
.end method

.method public abstract setText(Ljava/text/CharacterIterator;)V
.end method
