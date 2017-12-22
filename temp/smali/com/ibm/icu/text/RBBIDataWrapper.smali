.class final Lcom/ibm/icu/text/RBBIDataWrapper;
.super Ljava/lang/Object;
.source "RBBIDataWrapper.java"


# static fields
.field private static final IS_ACCEPTABLE:Lcom/ibm/icu/text/RBBIDataWrapper$IsAcceptable;

.field static fTrieFoldingFunc:Lcom/ibm/icu/text/RBBIDataWrapper$TrieFoldingFunc;


# instance fields
.field fFTable:[S

.field fHeader:Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;

.field fRTable:[S

.field fRuleSource:Ljava/lang/String;

.field fSFTable:[S

.field fSRTable:[S

.field fTrie:Lcom/ibm/icu/impl/CharTrie;

.field private isBigEndian:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    new-instance v0, Lcom/ibm/icu/text/RBBIDataWrapper$IsAcceptable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/RBBIDataWrapper$IsAcceptable;-><init>(Lcom/ibm/icu/text/RBBIDataWrapper$1;)V

    sput-object v0, Lcom/ibm/icu/text/RBBIDataWrapper;->IS_ACCEPTABLE:Lcom/ibm/icu/text/RBBIDataWrapper$IsAcceptable;

    .line 160
    new-instance v0, Lcom/ibm/icu/text/RBBIDataWrapper$TrieFoldingFunc;

    invoke-direct {v0}, Lcom/ibm/icu/text/RBBIDataWrapper$TrieFoldingFunc;-><init>()V

    sput-object v0, Lcom/ibm/icu/text/RBBIDataWrapper;->fTrieFoldingFunc:Lcom/ibm/icu/text/RBBIDataWrapper$TrieFoldingFunc;

    return-void
.end method

.method public static intToHexString(II)Ljava/lang/String;
    .locals 3

    .prologue
    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 384
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ge v1, p1, :cond_0

    .line 386
    const/4 v1, 0x0

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 388
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static intToString(II)Ljava/lang/String;
    .locals 3

    .prologue
    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 372
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 373
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ge v1, p1, :cond_0

    .line 374
    const/4 v1, 0x0

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 376
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method getRowIndex(I)I
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/ibm/icu/text/RBBIDataWrapper;->fHeader:Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;

    iget v0, v0, Lcom/ibm/icu/text/RBBIDataWrapper$RBBIDataHeader;->fCatCount:I

    add-int/lit8 v0, v0, 0x4

    mul-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method getStateTableFlags([S)I
    .locals 1

    .prologue
    .line 341
    iget-boolean v0, p0, Lcom/ibm/icu/text/RBBIDataWrapper;->isBigEndian:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    :goto_0
    aget-short v0, p1, v0

    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method
