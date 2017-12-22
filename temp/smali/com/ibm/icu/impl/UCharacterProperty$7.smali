.class Lcom/ibm/icu/impl/UCharacterProperty$7;
.super Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;
.source "UCharacterProperty.java"


# instance fields
.field final synthetic this$0:Lcom/ibm/icu/impl/UCharacterProperty;


# direct methods
.method constructor <init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/ibm/icu/impl/UCharacterProperty$7;->this$0:Lcom/ibm/icu/impl/UCharacterProperty;

    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    return-void
.end method


# virtual methods
.method contains(I)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 320
    const/16 v2, 0x9f

    if-gt p1, v2, :cond_2

    .line 321
    const/16 v2, 0x9

    if-eq p1, v2, :cond_0

    const/16 v2, 0x20

    if-ne p1, v2, :cond_1

    :cond_0
    move v0, v1

    .line 324
    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-static {p1}, Lcom/ibm/icu/lang/UCharacter;->getType(I)I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_3

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_1
.end method
