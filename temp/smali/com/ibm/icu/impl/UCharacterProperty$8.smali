.class Lcom/ibm/icu/impl/UCharacterProperty$8;
.super Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;
.source "UCharacterProperty.java"


# instance fields
.field final synthetic this$0:Lcom/ibm/icu/impl/UCharacterProperty;


# direct methods
.method constructor <init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lcom/ibm/icu/impl/UCharacterProperty$8;->this$0:Lcom/ibm/icu/impl/UCharacterProperty;

    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    return-void
.end method


# virtual methods
.method contains(I)Z
    .locals 1

    .prologue
    .line 331
    invoke-static {p1}, Lcom/ibm/icu/impl/UCharacterProperty;->access$000(I)Z

    move-result v0

    return v0
.end method
