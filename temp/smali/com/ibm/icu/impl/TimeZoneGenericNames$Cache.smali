.class Lcom/ibm/icu/impl/TimeZoneGenericNames$Cache;
.super Lcom/ibm/icu/impl/SoftCache;
.source "TimeZoneGenericNames.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ibm/icu/impl/SoftCache",
        "<",
        "Ljava/lang/String;",
        "Lcom/ibm/icu/impl/TimeZoneGenericNames;",
        "Lcom/ibm/icu/util/ULocale;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 895
    invoke-direct {p0}, Lcom/ibm/icu/impl/SoftCache;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/impl/TimeZoneGenericNames$1;)V
    .locals 0

    .prologue
    .line 895
    invoke-direct {p0}, Lcom/ibm/icu/impl/TimeZoneGenericNames$Cache;-><init>()V

    return-void
.end method


# virtual methods
.method protected createInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/impl/TimeZoneGenericNames;
    .locals 2

    .prologue
    .line 902
    new-instance v0, Lcom/ibm/icu/impl/TimeZoneGenericNames;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/ibm/icu/impl/TimeZoneGenericNames;-><init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/impl/TimeZoneGenericNames$1;)V

    invoke-virtual {v0}, Lcom/ibm/icu/impl/TimeZoneGenericNames;->freeze()Lcom/ibm/icu/impl/TimeZoneGenericNames;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 895
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/ibm/icu/util/ULocale;

    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/TimeZoneGenericNames$Cache;->createInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/impl/TimeZoneGenericNames;

    move-result-object v0

    return-object v0
.end method
