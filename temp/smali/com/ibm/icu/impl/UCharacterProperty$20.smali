.class Lcom/ibm/icu/impl/UCharacterProperty$20;
.super Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;
.source "UCharacterProperty.java"


# instance fields
.field final synthetic this$0:Lcom/ibm/icu/impl/UCharacterProperty;


# direct methods
.method constructor <init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V
    .locals 0

    .prologue
    .line 563
    iput-object p1, p0, Lcom/ibm/icu/impl/UCharacterProperty$20;->this$0:Lcom/ibm/icu/impl/UCharacterProperty;

    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    return-void
.end method


# virtual methods
.method getValue(I)I
    .locals 2

    .prologue
    .line 567
    iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterProperty$20;->this$0:Lcom/ibm/icu/impl/UCharacterProperty;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/ibm/icu/impl/UCharacterProperty;->getAdditional(II)I

    move-result v0

    and-int/lit16 v0, v0, 0x3e0

    ushr-int/lit8 v0, v0, 0x5

    .line 568
    invoke-static {}, Lcom/ibm/icu/impl/UCharacterProperty;->access$300()[I

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 569
    invoke-static {}, Lcom/ibm/icu/impl/UCharacterProperty;->access$300()[I

    move-result-object v1

    aget v0, v1, v0

    .line 571
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
