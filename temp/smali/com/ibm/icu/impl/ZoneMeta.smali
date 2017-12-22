.class public final Lcom/ibm/icu/impl/ZoneMeta;
.super Ljava/lang/Object;
.source "ZoneMeta.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static CANONICAL_ID_CACHE:Lcom/ibm/icu/impl/ICUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ibm/icu/impl/ICUCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CUSTOM_ZONE_CACHE:Lcom/ibm/icu/impl/ZoneMeta$CustomTimeZoneCache;

.field private static REF_CANONICAL_SYSTEM_LOCATION_ZONES:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static REF_CANONICAL_SYSTEM_ZONES:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static REF_SYSTEM_ZONES:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static REGION_CACHE:Lcom/ibm/icu/impl/ICUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ibm/icu/impl/ICUCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static SINGLE_COUNTRY_CACHE:Lcom/ibm/icu/impl/ICUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ibm/icu/impl/ICUCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final SYSTEM_ZONE_CACHE:Lcom/ibm/icu/impl/ZoneMeta$SystemTimeZoneCache;

.field private static ZONEIDS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    const-class v0, Lcom/ibm/icu/impl/ZoneMeta;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/ibm/icu/impl/ZoneMeta;->$assertionsDisabled:Z

    .line 281
    sput-object v1, Lcom/ibm/icu/impl/ZoneMeta;->ZONEIDS:[Ljava/lang/String;

    .line 342
    new-instance v0, Lcom/ibm/icu/impl/SimpleCache;

    invoke-direct {v0}, Lcom/ibm/icu/impl/SimpleCache;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/ZoneMeta;->CANONICAL_ID_CACHE:Lcom/ibm/icu/impl/ICUCache;

    .line 343
    new-instance v0, Lcom/ibm/icu/impl/SimpleCache;

    invoke-direct {v0}, Lcom/ibm/icu/impl/SimpleCache;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/ZoneMeta;->REGION_CACHE:Lcom/ibm/icu/impl/ICUCache;

    .line 344
    new-instance v0, Lcom/ibm/icu/impl/SimpleCache;

    invoke-direct {v0}, Lcom/ibm/icu/impl/SimpleCache;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/ZoneMeta;->SINGLE_COUNTRY_CACHE:Lcom/ibm/icu/impl/ICUCache;

    .line 570
    new-instance v0, Lcom/ibm/icu/impl/ZoneMeta$SystemTimeZoneCache;

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/ZoneMeta$SystemTimeZoneCache;-><init>(Lcom/ibm/icu/impl/ZoneMeta$1;)V

    sput-object v0, Lcom/ibm/icu/impl/ZoneMeta;->SYSTEM_ZONE_CACHE:Lcom/ibm/icu/impl/ZoneMeta$SystemTimeZoneCache;

    .line 608
    new-instance v0, Lcom/ibm/icu/impl/ZoneMeta$CustomTimeZoneCache;

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/ZoneMeta$CustomTimeZoneCache;-><init>(Lcom/ibm/icu/impl/ZoneMeta$1;)V

    sput-object v0, Lcom/ibm/icu/impl/ZoneMeta;->CUSTOM_ZONE_CACHE:Lcom/ibm/icu/impl/ZoneMeta$CustomTimeZoneCache;

    return-void

    .line 44
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findCLDRCanonicalID(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 394
    const/4 v0, 0x0

    .line 395
    const/16 v1, 0x2f

    const/16 v2, 0x3a

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 399
    :try_start_0
    const-string/jumbo v2, "com/ibm/icu/impl/data/icudt59b"

    const-string/jumbo v3, "keyTypeData"

    sget-object v4, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v2, v3, v4}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v2

    .line 401
    const-string/jumbo v3, "typeMap"

    invoke-virtual {v2, v3}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v3

    .line 402
    const-string/jumbo v4, "timezone"

    invoke-virtual {v3, v4}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 404
    :try_start_1
    invoke-virtual {v3, v1}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, p0

    .line 410
    :goto_0
    if-nez v0, :cond_0

    .line 412
    :try_start_2
    const-string/jumbo v3, "typeAlias"

    invoke-virtual {v2, v3}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v2

    .line 413
    const-string/jumbo v3, "timezone"

    invoke-virtual {v2, v3}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v2

    .line 414
    invoke-virtual {v2, v1}, Lcom/ibm/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    .line 419
    :cond_0
    :goto_1
    return-object v0

    .line 407
    :catch_0
    move-exception v3

    goto :goto_0

    .line 416
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method static formatCustomID(IIIZ)Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x3a

    const/16 v3, 0x30

    const/16 v2, 0xa

    .line 804
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "GMT"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 805
    if-nez p0, :cond_0

    if-eqz p1, :cond_4

    .line 806
    :cond_0
    if-eqz p3, :cond_5

    .line 807
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 812
    :goto_0
    if-ge p0, v2, :cond_1

    .line 813
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 815
    :cond_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 816
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 817
    if-ge p1, v2, :cond_2

    .line 818
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 820
    :cond_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 822
    if-eqz p2, :cond_4

    .line 824
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 825
    if-ge p2, v2, :cond_3

    .line 826
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 828
    :cond_3
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 831
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 809
    :cond_5
    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static getAvailableIDs(Lcom/ibm/icu/util/TimeZone$SystemTimeZoneType;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/util/TimeZone$SystemTimeZoneType;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    .line 161
    sget-object v0, Lcom/ibm/icu/impl/ZoneMeta$1;->$SwitchMap$com$ibm$icu$util$TimeZone$SystemTimeZoneType:[I

    invoke-virtual {p0}, Lcom/ibm/icu/util/TimeZone$SystemTimeZoneType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 173
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unknown SystemTimeZoneType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :pswitch_0
    invoke-static {}, Lcom/ibm/icu/impl/ZoneMeta;->getSystemZIDs()Ljava/util/Set;

    move-result-object v0

    .line 176
    :goto_0
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 206
    :goto_1
    return-object v0

    .line 166
    :pswitch_1
    invoke-static {}, Lcom/ibm/icu/impl/ZoneMeta;->getCanonicalSystemZIDs()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    .line 169
    :pswitch_2
    invoke-static {}, Lcom/ibm/icu/impl/ZoneMeta;->getCanonicalSystemLocationZIDs()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    .line 180
    :cond_0
    if-eqz p1, :cond_1

    .line 181
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 185
    :cond_1
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 186
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 187
    if-eqz p1, :cond_3

    .line 188
    invoke-static {v0}, Lcom/ibm/icu/impl/ZoneMeta;->getRegion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 189
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 193
    :cond_3
    if-eqz p2, :cond_4

    .line 195
    invoke-static {v0}, Lcom/ibm/icu/impl/ZoneMeta;->getSystemTimeZone(Ljava/lang/String;)Lcom/ibm/icu/impl/OlsonTimeZone;

    move-result-object v3

    .line 196
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/ibm/icu/util/TimeZone;->getRawOffset()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 200
    :cond_4
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 202
    :cond_5
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 203
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_1

    .line 206
    :cond_6
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    goto :goto_1

    .line 161
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getCanonicalCLDRID(Lcom/ibm/icu/util/TimeZone;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 347
    instance-of v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;

    if-eqz v0, :cond_0

    .line 348
    check-cast p0, Lcom/ibm/icu/impl/OlsonTimeZone;

    invoke-virtual {p0}, Lcom/ibm/icu/impl/OlsonTimeZone;->getCanonicalID()Ljava/lang/String;

    move-result-object v0

    .line 350
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ibm/icu/impl/ZoneMeta;->getCanonicalCLDRID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getCanonicalCLDRID(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 361
    sget-object v0, Lcom/ibm/icu/impl/ZoneMeta;->CANONICAL_ID_CACHE:Lcom/ibm/icu/impl/ICUCache;

    invoke-interface {v0, p0}, Lcom/ibm/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 362
    if-nez v0, :cond_1

    .line 363
    invoke-static {p0}, Lcom/ibm/icu/impl/ZoneMeta;->findCLDRCanonicalID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 364
    if-nez v0, :cond_0

    .line 367
    :try_start_0
    invoke-static {p0}, Lcom/ibm/icu/impl/ZoneMeta;->getZoneIndex(Ljava/lang/String;)I

    move-result v1

    .line 368
    if-ltz v1, :cond_0

    .line 369
    const-string/jumbo v2, "com/ibm/icu/impl/data/icudt59b"

    const-string/jumbo v3, "zoneinfo64"

    sget-object v4, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v2, v3, v4}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v2

    .line 371
    const-string/jumbo v3, "Zones"

    invoke-virtual {v2, v3}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v2

    .line 372
    invoke-virtual {v2, v1}, Lcom/ibm/icu/util/UResourceBundle;->get(I)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v1

    .line 373
    invoke-virtual {v1}, Lcom/ibm/icu/util/UResourceBundle;->getType()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_3

    .line 375
    invoke-virtual {v1}, Lcom/ibm/icu/util/UResourceBundle;->getInt()I

    move-result v1

    invoke-static {v1}, Lcom/ibm/icu/impl/ZoneMeta;->getZoneID(I)Ljava/lang/String;

    move-result-object p0

    .line 376
    invoke-static {p0}, Lcom/ibm/icu/impl/ZoneMeta;->findCLDRCanonicalID(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v0, p0

    .line 378
    :goto_0
    if-nez v1, :cond_2

    move-object p0, v0

    .line 386
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 387
    sget-object v1, Lcom/ibm/icu/impl/ZoneMeta;->CANONICAL_ID_CACHE:Lcom/ibm/icu/impl/ICUCache;

    invoke-interface {v1, p0, v0}, Lcom/ibm/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 390
    :cond_1
    return-object v0

    .line 382
    :catch_0
    move-exception v1

    goto :goto_1

    :cond_2
    move-object p0, v0

    move-object v0, v1

    goto :goto_1

    :cond_3
    move-object v1, v0

    move-object v0, p0

    goto :goto_0
.end method

.method public static getCanonicalCountry(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 454
    invoke-static {p0}, Lcom/ibm/icu/impl/ZoneMeta;->getRegion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 455
    if-eqz v0, :cond_0

    const-string/jumbo v1, "001"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 456
    const/4 v0, 0x0

    .line 458
    :cond_0
    return-object v0
.end method

.method public static getCanonicalCountry(Ljava/lang/String;Lcom/ibm/icu/util/Output;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/util/Output",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 467
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p1, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    .line 469
    invoke-static {p0}, Lcom/ibm/icu/impl/ZoneMeta;->getRegion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 470
    if-eqz v3, :cond_0

    const-string/jumbo v0, "001"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v2

    .line 508
    :goto_0
    return-object v0

    .line 475
    :cond_0
    sget-object v0, Lcom/ibm/icu/impl/ZoneMeta;->SINGLE_COUNTRY_CACHE:Lcom/ibm/icu/impl/ICUCache;

    invoke-interface {v0, p0}, Lcom/ibm/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 476
    if-nez v0, :cond_2

    .line 477
    sget-object v0, Lcom/ibm/icu/util/TimeZone$SystemTimeZoneType;->CANONICAL_LOCATION:Lcom/ibm/icu/util/TimeZone$SystemTimeZoneType;

    invoke-static {v0, v3, v2}, Lcom/ibm/icu/util/TimeZone;->getAvailableIDs(Lcom/ibm/icu/util/TimeZone$SystemTimeZoneType;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object v0

    .line 478
    sget-boolean v2, Lcom/ibm/icu/impl/ZoneMeta;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    if-ge v2, v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 479
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gt v0, v1, :cond_4

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 480
    sget-object v1, Lcom/ibm/icu/impl/ZoneMeta;->SINGLE_COUNTRY_CACHE:Lcom/ibm/icu/impl/ICUCache;

    invoke-interface {v1, p0, v0}, Lcom/ibm/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 483
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 484
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p1, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    :cond_3
    :goto_2
    move-object v0, v3

    .line 508
    goto :goto_0

    .line 479
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 491
    :cond_5
    :try_start_0
    const-string/jumbo v0, "com/ibm/icu/impl/data/icudt59b"

    const-string/jumbo v1, "metaZones"

    invoke-static {v0, v1}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    .line 492
    const-string/jumbo v1, "primaryZones"

    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    .line 493
    invoke-virtual {v0, v3}, Lcom/ibm/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 494
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 495
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p1, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    goto :goto_2

    .line 503
    :catch_0
    move-exception v0

    goto :goto_2

    .line 498
    :cond_6
    invoke-static {p0}, Lcom/ibm/icu/impl/ZoneMeta;->getCanonicalCLDRID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 499
    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 500
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p1, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method

.method private static declared-synchronized getCanonicalSystemLocationZIDs()Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    const-class v1, Lcom/ibm/icu/impl/ZoneMeta;

    monitor-enter v1

    const/4 v0, 0x0

    .line 127
    :try_start_0
    sget-object v2, Lcom/ibm/icu/impl/ZoneMeta;->REF_CANONICAL_SYSTEM_LOCATION_ZONES:Ljava/lang/ref/SoftReference;

    if-eqz v2, :cond_0

    .line 128
    sget-object v0, Lcom/ibm/icu/impl/ZoneMeta;->REF_CANONICAL_SYSTEM_LOCATION_ZONES:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 130
    :cond_0
    if-nez v0, :cond_4

    .line 131
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 132
    invoke-static {}, Lcom/ibm/icu/impl/ZoneMeta;->getZoneIDs()[Ljava/lang/String;

    move-result-object v3

    .line 133
    array-length v4, v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_3

    aget-object v5, v3, v0

    .line 135
    const-string/jumbo v6, "Etc/Unknown"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 133
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    :cond_2
    invoke-static {v5}, Lcom/ibm/icu/impl/ZoneMeta;->getCanonicalCLDRID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 139
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 140
    invoke-static {v5}, Lcom/ibm/icu/impl/ZoneMeta;->getRegion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 141
    if-eqz v6, :cond_1

    const-string/jumbo v7, "001"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 142
    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 146
    :cond_3
    :try_start_1
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 147
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/ibm/icu/impl/ZoneMeta;->REF_CANONICAL_SYSTEM_LOCATION_ZONES:Ljava/lang/ref/SoftReference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    :cond_4
    monitor-exit v1

    return-object v0
.end method

.method private static declared-synchronized getCanonicalSystemZIDs()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    const-class v1, Lcom/ibm/icu/impl/ZoneMeta;

    monitor-enter v1

    const/4 v0, 0x0

    .line 95
    :try_start_0
    sget-object v2, Lcom/ibm/icu/impl/ZoneMeta;->REF_CANONICAL_SYSTEM_ZONES:Ljava/lang/ref/SoftReference;

    if-eqz v2, :cond_0

    .line 96
    sget-object v0, Lcom/ibm/icu/impl/ZoneMeta;->REF_CANONICAL_SYSTEM_ZONES:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 98
    :cond_0
    if-nez v0, :cond_4

    .line 99
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 100
    invoke-static {}, Lcom/ibm/icu/impl/ZoneMeta;->getZoneIDs()[Ljava/lang/String;

    move-result-object v3

    .line 101
    array-length v4, v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_3

    aget-object v5, v3, v0

    .line 103
    const-string/jumbo v6, "Etc/Unknown"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 101
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    :cond_2
    invoke-static {v5}, Lcom/ibm/icu/impl/ZoneMeta;->getCanonicalCLDRID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 107
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 108
    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 111
    :cond_3
    :try_start_1
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 112
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/ibm/icu/impl/ZoneMeta;->REF_CANONICAL_SYSTEM_ZONES:Ljava/lang/ref/SoftReference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    :cond_4
    monitor-exit v1

    return-object v0
.end method

.method public static getCustomID(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 639
    const/4 v2, 0x4

    new-array v2, v2, [I

    .line 640
    invoke-static {p0, v2}, Lcom/ibm/icu/impl/ZoneMeta;->parseCustomID(Ljava/lang/String;[I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 641
    aget v3, v2, v0

    const/4 v4, 0x2

    aget v4, v2, v4

    const/4 v5, 0x3

    aget v5, v2, v5

    aget v2, v2, v1

    if-gez v2, :cond_0

    :goto_0
    invoke-static {v3, v4, v5, v0}, Lcom/ibm/icu/impl/ZoneMeta;->formatCustomID(IIIZ)Ljava/lang/String;

    move-result-object v0

    .line 643
    :goto_1
    return-object v0

    :cond_0
    move v0, v1

    .line 641
    goto :goto_0

    .line 643
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getCustomTimeZone(I)Lcom/ibm/icu/util/SimpleTimeZone;
    .locals 4

    .prologue
    .line 775
    const/4 v0, 0x0

    .line 777
    if-gez p0, :cond_0

    .line 778
    const/4 v1, 0x1

    .line 779
    neg-int v0, p0

    .line 787
    :goto_0
    div-int/lit16 v0, v0, 0x3e8

    .line 788
    rem-int/lit8 v2, v0, 0x3c

    .line 789
    div-int/lit8 v0, v0, 0x3c

    .line 790
    rem-int/lit8 v3, v0, 0x3c

    .line 791
    div-int/lit8 v0, v0, 0x3c

    .line 794
    invoke-static {v0, v3, v2, v1}, Lcom/ibm/icu/impl/ZoneMeta;->formatCustomID(IIIZ)Ljava/lang/String;

    move-result-object v0

    .line 796
    new-instance v1, Lcom/ibm/icu/util/SimpleTimeZone;

    invoke-direct {v1, p0, v0}, Lcom/ibm/icu/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    return-object v1

    :cond_0
    move v1, v0

    move v0, p0

    goto :goto_0
.end method

.method public static getCustomTimeZone(Ljava/lang/String;)Lcom/ibm/icu/util/SimpleTimeZone;
    .locals 4

    .prologue
    .line 618
    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 619
    invoke-static {p0, v0}, Lcom/ibm/icu/impl/ZoneMeta;->parseCustomID(Ljava/lang/String;[I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 624
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v3, v0, v3

    shl-int/lit8 v3, v3, 0x5

    or-int/2addr v2, v3

    const/4 v3, 0x3

    aget v3, v0, v3

    shl-int/lit8 v3, v3, 0xb

    or-int/2addr v2, v3

    mul-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 626
    sget-object v2, Lcom/ibm/icu/impl/ZoneMeta;->CUSTOM_ZONE_CACHE:Lcom/ibm/icu/impl/ZoneMeta$CustomTimeZoneCache;

    invoke-virtual {v2, v1, v0}, Lcom/ibm/icu/impl/ZoneMeta$CustomTimeZoneCache;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/util/SimpleTimeZone;

    .line 628
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getRegion(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 427
    sget-object v0, Lcom/ibm/icu/impl/ZoneMeta;->REGION_CACHE:Lcom/ibm/icu/impl/ICUCache;

    invoke-interface {v0, p0}, Lcom/ibm/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 428
    if-nez v0, :cond_1

    .line 429
    invoke-static {p0}, Lcom/ibm/icu/impl/ZoneMeta;->getZoneIndex(Ljava/lang/String;)I

    move-result v1

    .line 430
    if-ltz v1, :cond_1

    .line 432
    :try_start_0
    const-string/jumbo v2, "com/ibm/icu/impl/data/icudt59b"

    const-string/jumbo v3, "zoneinfo64"

    sget-object v4, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v2, v3, v4}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v2

    .line 434
    const-string/jumbo v3, "Regions"

    invoke-virtual {v2, v3}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v2

    .line 435
    invoke-virtual {v2}, Lcom/ibm/icu/util/UResourceBundle;->getSize()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 436
    invoke-virtual {v2, v1}, Lcom/ibm/icu/util/UResourceBundle;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 441
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 442
    sget-object v1, Lcom/ibm/icu/impl/ZoneMeta;->REGION_CACHE:Lcom/ibm/icu/impl/ICUCache;

    invoke-interface {v1, p0, v0}, Lcom/ibm/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 446
    :cond_1
    return-object v0

    .line 438
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getShortID(Lcom/ibm/icu/util/TimeZone;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 841
    .line 843
    instance-of v0, p0, Lcom/ibm/icu/impl/OlsonTimeZone;

    if-eqz v0, :cond_0

    .line 844
    check-cast p0, Lcom/ibm/icu/impl/OlsonTimeZone;

    invoke-virtual {p0}, Lcom/ibm/icu/impl/OlsonTimeZone;->getCanonicalID()Ljava/lang/String;

    move-result-object v0

    .line 849
    :goto_0
    if-nez v0, :cond_1

    .line 850
    const/4 v0, 0x0

    .line 852
    :goto_1
    return-object v0

    .line 847
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ibm/icu/impl/ZoneMeta;->getCanonicalCLDRID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 852
    :cond_1
    invoke-static {v0}, Lcom/ibm/icu/impl/ZoneMeta;->getShortIDFromCanonical(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static getShortID(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 862
    invoke-static {p0}, Lcom/ibm/icu/impl/ZoneMeta;->getCanonicalCLDRID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 863
    if-nez v0, :cond_0

    .line 864
    const/4 v0, 0x0

    .line 866
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/ibm/icu/impl/ZoneMeta;->getShortIDFromCanonical(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getShortIDFromCanonical(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 870
    const/4 v0, 0x0

    .line 871
    const/16 v1, 0x2f

    const/16 v2, 0x3a

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 875
    :try_start_0
    const-string/jumbo v2, "com/ibm/icu/impl/data/icudt59b"

    const-string/jumbo v3, "keyTypeData"

    sget-object v4, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v2, v3, v4}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v2

    .line 877
    const-string/jumbo v3, "typeMap"

    invoke-virtual {v2, v3}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v2

    .line 878
    const-string/jumbo v3, "timezone"

    invoke-virtual {v2, v3}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v2

    .line 879
    invoke-virtual {v2, v1}, Lcom/ibm/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 884
    :goto_0
    return-object v0

    .line 880
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getSystemTimeZone(Ljava/lang/String;)Lcom/ibm/icu/impl/OlsonTimeZone;
    .locals 1

    .prologue
    .line 577
    sget-object v0, Lcom/ibm/icu/impl/ZoneMeta;->SYSTEM_ZONE_CACHE:Lcom/ibm/icu/impl/ZoneMeta$SystemTimeZoneCache;

    invoke-virtual {v0, p0, p0}, Lcom/ibm/icu/impl/ZoneMeta$SystemTimeZoneCache;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/OlsonTimeZone;

    return-object v0
.end method

.method private static declared-synchronized getSystemZIDs()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    const-class v1, Lcom/ibm/icu/impl/ZoneMeta;

    monitor-enter v1

    const/4 v0, 0x0

    .line 68
    :try_start_0
    sget-object v2, Lcom/ibm/icu/impl/ZoneMeta;->REF_SYSTEM_ZONES:Ljava/lang/ref/SoftReference;

    if-eqz v2, :cond_0

    .line 69
    sget-object v0, Lcom/ibm/icu/impl/ZoneMeta;->REF_SYSTEM_ZONES:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 71
    :cond_0
    if-nez v0, :cond_3

    .line 72
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 73
    invoke-static {}, Lcom/ibm/icu/impl/ZoneMeta;->getZoneIDs()[Ljava/lang/String;

    move-result-object v3

    .line 74
    array-length v4, v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_2

    aget-object v5, v3, v0

    .line 76
    const-string/jumbo v6, "Etc/Unknown"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 74
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    :cond_1
    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 81
    :cond_2
    :try_start_1
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 82
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/ibm/icu/impl/ZoneMeta;->REF_SYSTEM_ZONES:Ljava/lang/ref/SoftReference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    :cond_3
    monitor-exit v1

    return-object v0
.end method

.method private static getZoneID(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 303
    if-ltz p0, :cond_0

    .line 304
    invoke-static {}, Lcom/ibm/icu/impl/ZoneMeta;->getZoneIDs()[Ljava/lang/String;

    move-result-object v0

    .line 305
    array-length v1, v0

    if-ge p0, v1, :cond_0

    .line 306
    aget-object v0, v0, p0

    .line 309
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static declared-synchronized getZoneIDs()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 287
    const-class v1, Lcom/ibm/icu/impl/ZoneMeta;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ibm/icu/impl/ZoneMeta;->ZONEIDS:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 289
    :try_start_1
    const-string/jumbo v0, "com/ibm/icu/impl/data/icudt59b"

    const-string/jumbo v2, "zoneinfo64"

    sget-object v3, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v0, v2, v3}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    .line 291
    const-string/jumbo v2, "Names"

    invoke-virtual {v0, v2}, Lcom/ibm/icu/util/UResourceBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/impl/ZoneMeta;->ZONEIDS:[Ljava/lang/String;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 296
    :cond_0
    :goto_0
    :try_start_2
    sget-object v0, Lcom/ibm/icu/impl/ZoneMeta;->ZONEIDS:[Ljava/lang/String;

    if-nez v0, :cond_1

    .line 297
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/ibm/icu/impl/ZoneMeta;->ZONEIDS:[Ljava/lang/String;

    .line 299
    :cond_1
    sget-object v0, Lcom/ibm/icu/impl/ZoneMeta;->ZONEIDS:[Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-object v0

    .line 287
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 292
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static getZoneIndex(Ljava/lang/String;)I
    .locals 6

    .prologue
    .line 313
    const/4 v4, -0x1

    .line 315
    invoke-static {}, Lcom/ibm/icu/impl/ZoneMeta;->getZoneIDs()[Ljava/lang/String;

    move-result-object v5

    .line 316
    array-length v0, v5

    if-lez v0, :cond_3

    .line 317
    const/4 v2, 0x0

    .line 318
    array-length v1, v5

    .line 320
    const v0, 0x7fffffff

    move v3, v2

    move v2, v1

    .line 322
    :goto_0
    add-int v1, v3, v2

    div-int/lit8 v1, v1, 0x2

    .line 323
    if-ne v0, v1, :cond_1

    move v1, v4

    .line 339
    :cond_0
    :goto_1
    return v1

    .line 327
    :cond_1
    aget-object v0, v5, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 328
    if-eqz v0, :cond_0

    .line 331
    if-gez v0, :cond_2

    move v0, v1

    move v2, v3

    :goto_2
    move v3, v2

    move v2, v0

    move v0, v1

    .line 336
    goto :goto_0

    :cond_2
    move v0, v2

    move v2, v1

    .line 334
    goto :goto_2

    :cond_3
    move v1, v4

    goto :goto_1
.end method

.method public static openOlsonResource(Lcom/ibm/icu/util/UResourceBundle;Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 521
    .line 522
    invoke-static {p1}, Lcom/ibm/icu/impl/ZoneMeta;->getZoneIndex(Ljava/lang/String;)I

    move-result v0

    .line 523
    if-ltz v0, :cond_2

    .line 525
    if-nez p0, :cond_0

    .line 526
    :try_start_0
    const-string/jumbo v2, "com/ibm/icu/impl/data/icudt59b"

    const-string/jumbo v3, "zoneinfo64"

    sget-object v4, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v2, v3, v4}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object p0

    .line 529
    :cond_0
    const-string/jumbo v2, "Zones"

    invoke-virtual {p0, v2}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v2

    .line 530
    invoke-virtual {v2, v0}, Lcom/ibm/icu/util/UResourceBundle;->get(I)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    .line 531
    invoke-virtual {v0}, Lcom/ibm/icu/util/UResourceBundle;->getType()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_1

    .line 533
    invoke-virtual {v0}, Lcom/ibm/icu/util/UResourceBundle;->getInt()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/ibm/icu/util/UResourceBundle;->get(I)Lcom/ibm/icu/util/UResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 540
    :cond_1
    :goto_0
    return-object v0

    .line 536
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 537
    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method static parseCustomID(Ljava/lang/String;[I)Z
    .locals 12

    .prologue
    const/16 v9, 0x3a

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 657
    .line 659
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string/jumbo v2, "GMT"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v0, v2, :cond_0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 660
    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "GMT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 661
    new-instance v2, Ljava/text/ParsePosition;

    const-string/jumbo v0, "GMT"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/text/ParsePosition;-><init>(I)V

    .line 667
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x2d

    if-ne v0, v4, :cond_1

    .line 668
    const/4 v0, -0x1

    .line 672
    :goto_0
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 674
    invoke-static {}, Lcom/ibm/icu/text/NumberFormat;->getInstance()Lcom/ibm/icu/text/NumberFormat;

    move-result-object v6

    .line 675
    invoke-virtual {v6, v1}, Lcom/ibm/icu/text/NumberFormat;->setParseIntegerOnly(Z)V

    .line 678
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    .line 680
    invoke-virtual {v6, p0, v2}, Lcom/ibm/icu/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v5

    .line 681
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    if-ne v7, v4, :cond_2

    .line 766
    :cond_0
    :goto_1
    return v3

    .line 669
    :cond_1
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x2b

    if-ne v0, v4, :cond_0

    move v0, v1

    goto :goto_0

    .line 684
    :cond_2
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 686
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_7

    .line 687
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    sub-int v4, v7, v4

    if-gt v4, v10, :cond_0

    .line 688
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v9, :cond_0

    .line 692
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 693
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    .line 694
    invoke-virtual {v6, p0, v2}, Lcom/ibm/icu/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v7

    .line 695
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    sub-int v4, v8, v4

    if-ne v4, v10, :cond_0

    .line 699
    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 700
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_8

    .line 701
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v9, :cond_0

    .line 705
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v2, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 706
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    .line 707
    invoke-virtual {v6, p0, v2}, Lcom/ibm/icu/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v6

    .line 708
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v8, v9, :cond_0

    .line 709
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    sub-int/2addr v2, v7

    if-ne v2, v10, :cond_0

    .line 712
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 748
    :goto_2
    const/16 v6, 0x17

    if-gt v5, v6, :cond_0

    const/16 v6, 0x3b

    if-gt v4, v6, :cond_0

    const/16 v6, 0x3b

    if-gt v2, v6, :cond_0

    .line 749
    if-eqz p1, :cond_6

    .line 750
    array-length v6, p1

    if-lt v6, v1, :cond_3

    .line 751
    aput v0, p1, v3

    .line 753
    :cond_3
    array-length v0, p1

    if-lt v0, v10, :cond_4

    .line 754
    aput v5, p1, v1

    .line 756
    :cond_4
    array-length v0, p1

    if-lt v0, v11, :cond_5

    .line 757
    aput v4, p1, v10

    .line 759
    :cond_5
    array-length v0, p1

    const/4 v3, 0x4

    if-lt v0, v3, :cond_6

    .line 760
    aput v2, p1, v11

    :cond_6
    move v3, v1

    .line 763
    goto/16 :goto_1

    .line 724
    :cond_7
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    sub-int/2addr v2, v4

    .line 725
    if-lez v2, :cond_0

    const/4 v4, 0x6

    if-lt v4, v2, :cond_0

    .line 729
    packed-switch v2, :pswitch_data_0

    move v2, v3

    move v4, v3

    goto :goto_2

    :pswitch_0
    move v2, v3

    move v4, v3

    .line 733
    goto :goto_2

    .line 736
    :pswitch_1
    rem-int/lit8 v2, v5, 0x64

    .line 737
    div-int/lit8 v4, v5, 0x64

    move v5, v4

    move v4, v2

    move v2, v3

    .line 738
    goto :goto_2

    .line 741
    :pswitch_2
    rem-int/lit8 v2, v5, 0x64

    .line 742
    div-int/lit8 v4, v5, 0x64

    rem-int/lit8 v4, v4, 0x64

    .line 743
    div-int/lit16 v5, v5, 0x2710

    goto :goto_2

    :cond_8
    move v2, v3

    goto :goto_2

    .line 729
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
