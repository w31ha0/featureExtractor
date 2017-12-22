.class public Lcom/ibm/icu/impl/Assert;
.super Ljava/lang/Object;
.source "Assert.java"


# direct methods
.method public static assrt(Z)V
    .locals 2

    .prologue
    .line 20
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "assert failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_0
    return-void
.end method
