.class Lcom/ibm/icu/impl/UCharacterProperty$2;
.super Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;
.source "UCharacterProperty.java"


# instance fields
.field final synthetic this$0:Lcom/ibm/icu/impl/UCharacterProperty;


# direct methods
.method constructor <init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/ibm/icu/impl/UCharacterProperty$2;->this$0:Lcom/ibm/icu/impl/UCharacterProperty;

    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    return-void
.end method


# virtual methods
.method contains(I)Z
    .locals 1

    .prologue
    .line 249
    sget-object v0, Lcom/ibm/icu/impl/UBiDiProps;->INSTANCE:Lcom/ibm/icu/impl/UBiDiProps;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/UBiDiProps;->isMirrored(I)Z

    move-result v0

    return v0
.end method
