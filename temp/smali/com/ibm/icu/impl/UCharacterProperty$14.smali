.class Lcom/ibm/icu/impl/UCharacterProperty$14;
.super Lcom/ibm/icu/impl/UCharacterProperty$CombiningClassIntProperty;
.source "UCharacterProperty.java"


# instance fields
.field final synthetic this$0:Lcom/ibm/icu/impl/UCharacterProperty;


# direct methods
.method constructor <init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V
    .locals 0

    .prologue
    .line 516
    iput-object p1, p0, Lcom/ibm/icu/impl/UCharacterProperty$14;->this$0:Lcom/ibm/icu/impl/UCharacterProperty;

    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/UCharacterProperty$CombiningClassIntProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    return-void
.end method


# virtual methods
.method getValue(I)I
    .locals 1

    .prologue
    .line 519
    invoke-static {}, Lcom/ibm/icu/text/Normalizer2;->getNFDInstance()Lcom/ibm/icu/text/Normalizer2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/Normalizer2;->getCombiningClass(I)I

    move-result v0

    return v0
.end method
