.class Lcom/ibm/icu/impl/UCharacterProperty$CaseBinaryProperty;
.super Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;
.source "UCharacterProperty.java"


# instance fields
.field final synthetic this$0:Lcom/ibm/icu/impl/UCharacterProperty;

.field which:I


# direct methods
.method constructor <init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V
    .locals 1

    .prologue
    .line 211
    iput-object p1, p0, Lcom/ibm/icu/impl/UCharacterProperty$CaseBinaryProperty;->this$0:Lcom/ibm/icu/impl/UCharacterProperty;

    .line 212
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    .line 213
    iput p2, p0, Lcom/ibm/icu/impl/UCharacterProperty$CaseBinaryProperty;->which:I

    .line 214
    return-void
.end method


# virtual methods
.method contains(I)Z
    .locals 2

    .prologue
    .line 217
    sget-object v0, Lcom/ibm/icu/impl/UCaseProps;->INSTANCE:Lcom/ibm/icu/impl/UCaseProps;

    iget v1, p0, Lcom/ibm/icu/impl/UCharacterProperty$CaseBinaryProperty;->which:I

    invoke-virtual {v0, p1, v1}, Lcom/ibm/icu/impl/UCaseProps;->hasBinaryProperty(II)Z

    move-result v0

    return v0
.end method
