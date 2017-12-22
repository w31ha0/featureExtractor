.class public Lcom/ibm/icu/impl/number/PNAffixGenerator$Result;
.super Ljava/lang/Object;
.source "PNAffixGenerator.java"


# instance fields
.field public negative:Lcom/ibm/icu/impl/number/Modifier$AffixModifier;

.field public positive:Lcom/ibm/icu/impl/number/Modifier$AffixModifier;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v0, p0, Lcom/ibm/icu/impl/number/PNAffixGenerator$Result;->positive:Lcom/ibm/icu/impl/number/Modifier$AffixModifier;

    .line 32
    iput-object v0, p0, Lcom/ibm/icu/impl/number/PNAffixGenerator$Result;->negative:Lcom/ibm/icu/impl/number/Modifier$AffixModifier;

    return-void
.end method
