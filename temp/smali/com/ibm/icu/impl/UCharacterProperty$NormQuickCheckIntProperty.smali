.class Lcom/ibm/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;
.super Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;
.source "UCharacterProperty.java"


# instance fields
.field max:I

.field final synthetic this$0:Lcom/ibm/icu/impl/UCharacterProperty;

.field which:I


# direct methods
.method constructor <init>(Lcom/ibm/icu/impl/UCharacterProperty;III)V
    .locals 0

    .prologue
    .line 493
    iput-object p1, p0, Lcom/ibm/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;->this$0:Lcom/ibm/icu/impl/UCharacterProperty;

    .line 494
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    .line 495
    iput p3, p0, Lcom/ibm/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;->which:I

    .line 496
    iput p4, p0, Lcom/ibm/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;->max:I

    .line 497
    return-void
.end method


# virtual methods
.method getValue(I)I
    .locals 1

    .prologue
    .line 500
    iget v0, p0, Lcom/ibm/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;->which:I

    add-int/lit16 v0, v0, -0x100c

    invoke-static {v0}, Lcom/ibm/icu/impl/Norm2AllModes;->getN2WithImpl(I)Lcom/ibm/icu/impl/Norm2AllModes$Normalizer2WithImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/Norm2AllModes$Normalizer2WithImpl;->getQuickCheck(I)I

    move-result v0

    return v0
.end method
