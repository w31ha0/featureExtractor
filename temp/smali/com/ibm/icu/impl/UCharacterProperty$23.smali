.class Lcom/ibm/icu/impl/UCharacterProperty$23;
.super Lcom/ibm/icu/impl/UCharacterProperty$BiDiIntProperty;
.source "UCharacterProperty.java"


# instance fields
.field final synthetic this$0:Lcom/ibm/icu/impl/UCharacterProperty;


# direct methods
.method constructor <init>(Lcom/ibm/icu/impl/UCharacterProperty;)V
    .locals 0

    .prologue
    .line 600
    iput-object p1, p0, Lcom/ibm/icu/impl/UCharacterProperty$23;->this$0:Lcom/ibm/icu/impl/UCharacterProperty;

    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/UCharacterProperty$BiDiIntProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;)V

    return-void
.end method


# virtual methods
.method getValue(I)I
    .locals 1

    .prologue
    .line 603
    sget-object v0, Lcom/ibm/icu/impl/UBiDiProps;->INSTANCE:Lcom/ibm/icu/impl/UBiDiProps;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/UBiDiProps;->getPairedBracketType(I)I

    move-result v0

    return v0
.end method
