.class public abstract Lcom/ibm/icu/impl/UResource$Value;
.super Ljava/lang/Object;
.source "UResource.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAliasString()Ljava/lang/String;
.end method

.method public abstract getArray()Lcom/ibm/icu/impl/UResource$Array;
.end method

.method public abstract getInt()I
.end method

.method public abstract getIntVector()[I
.end method

.method public abstract getString()Ljava/lang/String;
.end method

.method public abstract getStringArray()[Ljava/lang/String;
.end method

.method public abstract getTable()Lcom/ibm/icu/impl/UResource$Table;
.end method

.method public abstract getType()I
.end method

.method public abstract isNoInheritanceMarker()Z
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 420
    invoke-virtual {p0}, Lcom/ibm/icu/impl/UResource$Value;->getType()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 443
    const-string/jumbo v0, "???"

    :goto_0
    return-object v0

    .line 422
    :sswitch_0
    invoke-virtual {p0}, Lcom/ibm/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 424
    :sswitch_1
    invoke-virtual {p0}, Lcom/ibm/icu/impl/UResource$Value;->getInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 426
    :sswitch_2
    invoke-virtual {p0}, Lcom/ibm/icu/impl/UResource$Value;->getIntVector()[I

    move-result-object v1

    .line 427
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "["

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 428
    array-length v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "]{"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    array-length v0, v1

    if-eqz v0, :cond_0

    .line 430
    const/4 v0, 0x0

    aget v0, v1, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 431
    const/4 v0, 0x1

    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 432
    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 431
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 435
    :cond_0
    const/16 v0, 0x7d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 437
    :sswitch_3
    const-string/jumbo v0, "(binary blob)"

    goto :goto_0

    .line 439
    :sswitch_4
    const-string/jumbo v0, "(array)"

    goto :goto_0

    .line 441
    :sswitch_5
    const-string/jumbo v0, "(table)"

    goto :goto_0

    .line 420
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_3
        0x2 -> :sswitch_5
        0x7 -> :sswitch_1
        0x8 -> :sswitch_4
        0xe -> :sswitch_2
    .end sparse-switch
.end method
