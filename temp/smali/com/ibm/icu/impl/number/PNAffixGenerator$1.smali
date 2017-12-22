.class final Lcom/ibm/icu/impl/number/PNAffixGenerator$1;
.super Ljava/lang/ThreadLocal;
.source "PNAffixGenerator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Lcom/ibm/icu/impl/number/PNAffixGenerator;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Lcom/ibm/icu/impl/number/PNAffixGenerator;
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/ibm/icu/impl/number/PNAffixGenerator;

    invoke-direct {v0}, Lcom/ibm/icu/impl/number/PNAffixGenerator;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/PNAffixGenerator$1;->initialValue()Lcom/ibm/icu/impl/number/PNAffixGenerator;

    move-result-object v0

    return-object v0
.end method
