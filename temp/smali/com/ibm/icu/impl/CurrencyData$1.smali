.class final Lcom/ibm/icu/impl/CurrencyData$1;
.super Ljava/lang/Object;
.source "CurrencyData.java"

# interfaces
.implements Lcom/ibm/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInstance(Lcom/ibm/icu/util/ULocale;Z)Lcom/ibm/icu/impl/CurrencyData$CurrencyDisplayInfo;
    .locals 1

    .prologue
    .line 109
    invoke-static {p2}, Lcom/ibm/icu/impl/CurrencyData$DefaultInfo;->getWithFallback(Z)Lcom/ibm/icu/impl/CurrencyData$CurrencyDisplayInfo;

    move-result-object v0

    return-object v0
.end method
