.class public Lcom/ibm/icu/util/CurrencyAmount;
.super Lcom/ibm/icu/util/Measure;
.source "CurrencyAmount.java"


# direct methods
.method public constructor <init>(Ljava/lang/Number;Lcom/ibm/icu/util/Currency;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/util/Measure;-><init>(Ljava/lang/Number;Lcom/ibm/icu/util/MeasureUnit;)V

    .line 35
    return-void
.end method


# virtual methods
.method public getCurrency()Lcom/ibm/icu/util/Currency;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/ibm/icu/util/CurrencyAmount;->getUnit()Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/util/Currency;

    return-object v0
.end method
