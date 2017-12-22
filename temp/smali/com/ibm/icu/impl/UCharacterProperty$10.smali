.class Lcom/ibm/icu/impl/UCharacterProperty$10;
.super Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;
.source "UCharacterProperty.java"


# instance fields
.field final synthetic this$0:Lcom/ibm/icu/impl/UCharacterProperty;


# direct methods
.method constructor <init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lcom/ibm/icu/impl/UCharacterProperty$10;->this$0:Lcom/ibm/icu/impl/UCharacterProperty;

    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V

    return-void
.end method


# virtual methods
.method contains(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 350
    const/16 v1, 0x66

    if-gt p1, v1, :cond_0

    const/16 v1, 0x41

    if-lt p1, v1, :cond_0

    const/16 v1, 0x46

    if-le p1, v1, :cond_1

    const/16 v1, 0x61

    if-ge p1, v1, :cond_1

    :cond_0
    const v1, 0xff21

    if-lt p1, v1, :cond_2

    const v1, 0xff46

    if-gt p1, v1, :cond_2

    const v1, 0xff26

    if-le p1, v1, :cond_1

    const v1, 0xff41

    if-lt p1, v1, :cond_2

    .line 356
    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-static {p1}, Lcom/ibm/icu/lang/UCharacter;->getType(I)I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_1

    const/4 v0, 0x0

    goto :goto_0
.end method
