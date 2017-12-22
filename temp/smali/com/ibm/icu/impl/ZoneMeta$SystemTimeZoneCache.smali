.class Lcom/ibm/icu/impl/ZoneMeta$SystemTimeZoneCache;
.super Lcom/ibm/icu/impl/SoftCache;
.source "ZoneMeta.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ibm/icu/impl/SoftCache",
        "<",
        "Ljava/lang/String;",
        "Lcom/ibm/icu/impl/OlsonTimeZone;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 547
    invoke-direct {p0}, Lcom/ibm/icu/impl/SoftCache;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/impl/ZoneMeta$1;)V
    .locals 0

    .prologue
    .line 547
    invoke-direct {p0}, Lcom/ibm/icu/impl/ZoneMeta$SystemTimeZoneCache;-><init>()V

    return-void
.end method


# virtual methods
.method protected createInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/impl/OlsonTimeZone;
    .locals 4

    .prologue
    .line 554
    const/4 v1, 0x0

    .line 556
    :try_start_0
    const-string/jumbo v0, "com/ibm/icu/impl/data/icudt59b"

    const-string/jumbo v2, "zoneinfo64"

    sget-object v3, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v0, v2, v3}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v2

    .line 558
    invoke-static {v2, p2}, Lcom/ibm/icu/impl/ZoneMeta;->openOlsonResource(Lcom/ibm/icu/util/UResourceBundle;Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v3

    .line 559
    if-eqz v3, :cond_0

    .line 560
    new-instance v0, Lcom/ibm/icu/impl/OlsonTimeZone;

    invoke-direct {v0, v2, v3, p2}, Lcom/ibm/icu/impl/OlsonTimeZone;-><init>(Lcom/ibm/icu/util/UResourceBundle;Lcom/ibm/icu/util/UResourceBundle;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    :try_start_1
    invoke-virtual {v0}, Lcom/ibm/icu/impl/OlsonTimeZone;->freeze()Lcom/ibm/icu/util/TimeZone;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    .line 566
    :goto_0
    return-object v0

    .line 563
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method protected bridge synthetic createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 547
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/ZoneMeta$SystemTimeZoneCache;->createInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/impl/OlsonTimeZone;

    move-result-object v0

    return-object v0
.end method
