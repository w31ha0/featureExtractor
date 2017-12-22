.class Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;
.super Ljava/lang/Object;
.source "UCharacterProperty.java"


# instance fields
.field column:I

.field mask:I

.field shift:I

.field final synthetic this$0:Lcom/ibm/icu/impl/UCharacterProperty;


# direct methods
.method constructor <init>(Lcom/ibm/icu/impl/UCharacterProperty;I)V
    .locals 1

    .prologue
    .line 454
    iput-object p1, p0, Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;->this$0:Lcom/ibm/icu/impl/UCharacterProperty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 455
    iput p2, p0, Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;->column:I

    .line 456
    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;->mask:I

    .line 457
    return-void
.end method

.method constructor <init>(Lcom/ibm/icu/impl/UCharacterProperty;III)V
    .locals 0

    .prologue
    .line 449
    iput-object p1, p0, Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;->this$0:Lcom/ibm/icu/impl/UCharacterProperty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    iput p2, p0, Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;->column:I

    .line 451
    iput p3, p0, Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;->mask:I

    .line 452
    iput p4, p0, Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;->shift:I

    .line 453
    return-void
.end method


# virtual methods
.method final getSource()I
    .locals 1

    .prologue
    .line 459
    iget v0, p0, Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;->mask:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;->column:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method getValue(I)I
    .locals 2

    .prologue
    .line 463
    iget-object v0, p0, Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;->this$0:Lcom/ibm/icu/impl/UCharacterProperty;

    iget v1, p0, Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;->column:I

    invoke-virtual {v0, p1, v1}, Lcom/ibm/icu/impl/UCharacterProperty;->getAdditional(II)I

    move-result v0

    iget v1, p0, Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;->mask:I

    and-int/2addr v0, v1

    iget v1, p0, Lcom/ibm/icu/impl/UCharacterProperty$IntProperty;->shift:I

    ushr-int/2addr v0, v1

    return v0
.end method
