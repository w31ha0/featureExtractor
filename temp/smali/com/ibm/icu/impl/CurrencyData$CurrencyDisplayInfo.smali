.class public abstract Lcom/ibm/icu/impl/CurrencyData$CurrencyDisplayInfo;
.super Lcom/ibm/icu/text/CurrencyDisplayNames;
.source "CurrencyData.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/ibm/icu/text/CurrencyDisplayNames;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getFormatInfo(Ljava/lang/String;)Lcom/ibm/icu/impl/CurrencyData$CurrencyFormatInfo;
.end method

.method public abstract getSpacingInfo()Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo;
.end method

.method public abstract getUnitPatterns()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
