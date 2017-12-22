.class Lcom/ibm/icu/text/RBBIDataWrapper$TrieFoldingFunc;
.super Ljava/lang/Object;
.source "RBBIDataWrapper.java"

# interfaces
.implements Lcom/ibm/icu/impl/Trie$DataManipulate;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFoldingOffset(I)I
    .locals 1

    .prologue
    .line 153
    const v0, 0x8000

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 154
    and-int/lit16 v0, p1, 0x7fff

    .line 156
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
