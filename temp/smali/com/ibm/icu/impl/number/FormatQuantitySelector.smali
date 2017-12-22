.class public Lcom/ibm/icu/impl/number/FormatQuantitySelector;
.super Ljava/lang/Object;
.source "FormatQuantitySelector.java"


# direct methods
.method public static from(I)Lcom/ibm/icu/impl/number/FormatQuantityBCD;
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/ibm/icu/impl/number/FormatQuantity4;

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/number/FormatQuantity4;-><init>(I)V

    return-object v0
.end method
