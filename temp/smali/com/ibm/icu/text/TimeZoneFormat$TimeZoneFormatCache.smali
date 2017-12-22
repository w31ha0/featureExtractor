.class Lcom/ibm/icu/text/TimeZoneFormat$TimeZoneFormatCache;
.super Lcom/ibm/icu/impl/SoftCache;
.source "TimeZoneFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ibm/icu/impl/SoftCache",
        "<",
        "Lcom/ibm/icu/util/ULocale;",
        "Lcom/ibm/icu/text/TimeZoneFormat;",
        "Lcom/ibm/icu/util/ULocale;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 3105
    invoke-direct {p0}, Lcom/ibm/icu/impl/SoftCache;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/text/TimeZoneFormat$1;)V
    .locals 0

    .prologue
    .line 3105
    invoke-direct {p0}, Lcom/ibm/icu/text/TimeZoneFormat$TimeZoneFormatCache;-><init>()V

    return-void
.end method


# virtual methods
.method protected createInstance(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/TimeZoneFormat;
    .locals 1

    .prologue
    .line 3112
    new-instance v0, Lcom/ibm/icu/text/TimeZoneFormat;

    invoke-direct {v0, p2}, Lcom/ibm/icu/text/TimeZoneFormat;-><init>(Lcom/ibm/icu/util/ULocale;)V

    .line 3113
    invoke-virtual {v0}, Lcom/ibm/icu/text/TimeZoneFormat;->freeze()Lcom/ibm/icu/text/TimeZoneFormat;

    .line 3114
    return-object v0
.end method

.method protected bridge synthetic createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3105
    check-cast p1, Lcom/ibm/icu/util/ULocale;

    check-cast p2, Lcom/ibm/icu/util/ULocale;

    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/TimeZoneFormat$TimeZoneFormatCache;->createInstance(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/TimeZoneFormat;

    move-result-object v0

    return-object v0
.end method
