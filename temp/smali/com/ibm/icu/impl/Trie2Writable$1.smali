.class synthetic Lcom/ibm/icu/impl/Trie2Writable$1;
.super Ljava/lang/Object;
.source "Trie2Writable.java"


# static fields
.field static final synthetic $SwitchMap$com$ibm$icu$impl$Trie2$ValueWidth:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1135
    invoke-static {}, Lcom/ibm/icu/impl/Trie2$ValueWidth;->values()[Lcom/ibm/icu/impl/Trie2$ValueWidth;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ibm/icu/impl/Trie2Writable$1;->$SwitchMap$com$ibm$icu$impl$Trie2$ValueWidth:[I

    :try_start_0
    sget-object v0, Lcom/ibm/icu/impl/Trie2Writable$1;->$SwitchMap$com$ibm$icu$impl$Trie2$ValueWidth:[I

    sget-object v1, Lcom/ibm/icu/impl/Trie2$ValueWidth;->BITS_16:Lcom/ibm/icu/impl/Trie2$ValueWidth;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/Trie2$ValueWidth;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/ibm/icu/impl/Trie2Writable$1;->$SwitchMap$com$ibm$icu$impl$Trie2$ValueWidth:[I

    sget-object v1, Lcom/ibm/icu/impl/Trie2$ValueWidth;->BITS_32:Lcom/ibm/icu/impl/Trie2$ValueWidth;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/Trie2$ValueWidth;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
