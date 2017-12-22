.class Lcom/ibm/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;
.super Lcom/ibm/icu/impl/SoftCache;
.source "TimeZoneNamesImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ibm/icu/impl/SoftCache",
        "<",
        "Ljava/lang/String;",
        "Ljava/util/List",
        "<",
        "Lcom/ibm/icu/impl/TimeZoneNamesImpl$MZMapEntry;",
        ">;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 851
    invoke-direct {p0}, Lcom/ibm/icu/impl/SoftCache;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/impl/TimeZoneNamesImpl$1;)V
    .locals 0

    .prologue
    .line 851
    invoke-direct {p0}, Lcom/ibm/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;-><init>()V

    return-void
.end method

.method private static parseDate(Ljava/lang/String;)J
    .locals 8

    .prologue
    const/16 v7, 0xa

    const/4 v1, 0x0

    .line 897
    move v0, v1

    move v5, v1

    .line 902
    :goto_0
    const/4 v2, 0x3

    if-gt v0, v2, :cond_1

    .line 903
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    .line 904
    if-ltz v2, :cond_0

    if-ge v2, v7, :cond_0

    .line 905
    mul-int/lit8 v3, v5, 0xa

    add-int/2addr v2, v3

    .line 902
    add-int/lit8 v0, v0, 0x1

    move v5, v2

    goto :goto_0

    .line 907
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Bad year"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 911
    :cond_1
    const/4 v0, 0x5

    move v4, v1

    :goto_1
    const/4 v2, 0x6

    if-gt v0, v2, :cond_3

    .line 912
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    .line 913
    if-ltz v2, :cond_2

    if-ge v2, v7, :cond_2

    .line 914
    mul-int/lit8 v3, v4, 0xa

    add-int/2addr v2, v3

    .line 911
    add-int/lit8 v0, v0, 0x1

    move v4, v2

    goto :goto_1

    .line 916
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Bad month"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 920
    :cond_3
    const/16 v0, 0x8

    move v3, v1

    :goto_2
    const/16 v2, 0x9

    if-gt v0, v2, :cond_5

    .line 921
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    .line 922
    if-ltz v2, :cond_4

    if-ge v2, v7, :cond_4

    .line 923
    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v2, v3

    .line 920
    add-int/lit8 v0, v0, 0x1

    move v3, v2

    goto :goto_2

    .line 925
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Bad day"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 929
    :cond_5
    const/16 v0, 0xb

    move v2, v1

    :goto_3
    const/16 v6, 0xc

    if-gt v0, v6, :cond_7

    .line 930
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/lit8 v6, v6, -0x30

    .line 931
    if-ltz v6, :cond_6

    if-ge v6, v7, :cond_6

    .line 932
    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v6

    .line 929
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 934
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Bad hour"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 938
    :cond_7
    const/16 v0, 0xe

    :goto_4
    const/16 v6, 0xf

    if-gt v0, v6, :cond_9

    .line 939
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/lit8 v6, v6, -0x30

    .line 940
    if-ltz v6, :cond_8

    if-ge v6, v7, :cond_8

    .line 941
    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v6

    .line 938
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 943
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Bad minute"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 947
    :cond_9
    add-int/lit8 v0, v4, -0x1

    invoke-static {v5, v0, v3}, Lcom/ibm/icu/impl/Grego;->fieldsToDay(III)J

    move-result-wide v4

    const-wide/32 v6, 0x5265c00

    mul-long/2addr v4, v6

    int-to-long v2, v2

    const-wide/32 v6, 0x36ee80

    mul-long/2addr v2, v6

    add-long/2addr v2, v4

    int-to-long v0, v1

    const-wide/32 v4, 0xea60

    mul-long/2addr v0, v4

    add-long/2addr v0, v2

    .line 949
    return-wide v0
.end method


# virtual methods
.method protected bridge synthetic createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 851
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;->createInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected createInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ibm/icu/impl/TimeZoneNamesImpl$MZMapEntry;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 857
    .line 859
    const-string/jumbo v1, "com/ibm/icu/impl/data/icudt59b"

    const-string/jumbo v2, "metaZones"

    invoke-static {v1, v2}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v1

    .line 860
    const-string/jumbo v2, "metazoneInfo"

    invoke-virtual {v1, v2}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v1

    .line 862
    const/16 v2, 0x2f

    const/16 v3, 0x3a

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 864
    :try_start_0
    invoke-virtual {v1, v2}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v8

    .line 866
    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {v8}, Lcom/ibm/icu/util/UResourceBundle;->getSize()I

    move-result v1

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    move v7, v0

    .line 867
    :goto_0
    invoke-virtual {v8}, Lcom/ibm/icu/util/UResourceBundle;->getSize()I

    move-result v0

    if-ge v7, v0, :cond_1

    .line 868
    invoke-virtual {v8, v7}, Lcom/ibm/icu/util/UResourceBundle;->get(I)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v3

    .line 869
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/ibm/icu/util/UResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 870
    const-string/jumbo v2, "1970-01-01 00:00"

    .line 871
    const-string/jumbo v0, "9999-12-31 23:59"

    .line 872
    invoke-virtual {v3}, Lcom/ibm/icu/util/UResourceBundle;->getSize()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 873
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/ibm/icu/util/UResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 874
    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Lcom/ibm/icu/util/UResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 877
    :cond_0
    invoke-static {v2}, Lcom/ibm/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;->parseDate(Ljava/lang/String;)J

    move-result-wide v2

    .line 878
    invoke-static {v0}, Lcom/ibm/icu/impl/TimeZoneNamesImpl$TZ2MZsCache;->parseDate(Ljava/lang/String;)J

    move-result-wide v4

    .line 879
    new-instance v0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$MZMapEntry;

    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/impl/TimeZoneNamesImpl$MZMapEntry;-><init>(Ljava/lang/String;JJ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 867
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :cond_1
    move-object v0, v6

    .line 885
    :goto_1
    return-object v0

    .line 882
    :catch_0
    move-exception v0

    .line 883
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method
