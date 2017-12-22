.class public Lcom/ibm/icu/util/UResourceBundleIterator;
.super Ljava/lang/Object;
.source "UResourceBundleIterator.java"


# instance fields
.field private bundle:Lcom/ibm/icu/util/UResourceBundle;

.field private index:I

.field private size:I


# direct methods
.method public constructor <init>(Lcom/ibm/icu/util/UResourceBundle;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput v0, p0, Lcom/ibm/icu/util/UResourceBundleIterator;->index:I

    .line 41
    iput v0, p0, Lcom/ibm/icu/util/UResourceBundleIterator;->size:I

    .line 50
    iput-object p1, p0, Lcom/ibm/icu/util/UResourceBundleIterator;->bundle:Lcom/ibm/icu/util/UResourceBundle;

    .line 51
    iget-object v0, p0, Lcom/ibm/icu/util/UResourceBundleIterator;->bundle:Lcom/ibm/icu/util/UResourceBundle;

    invoke-virtual {v0}, Lcom/ibm/icu/util/UResourceBundle;->getSize()I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/util/UResourceBundleIterator;->size:I

    .line 52
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 95
    iget v0, p0, Lcom/ibm/icu/util/UResourceBundleIterator;->index:I

    iget v1, p0, Lcom/ibm/icu/util/UResourceBundleIterator;->size:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Lcom/ibm/icu/util/UResourceBundle;
    .locals 3

    .prologue
    .line 61
    iget v0, p0, Lcom/ibm/icu/util/UResourceBundleIterator;->index:I

    iget v1, p0, Lcom/ibm/icu/util/UResourceBundleIterator;->size:I

    if-ge v0, v1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/ibm/icu/util/UResourceBundleIterator;->bundle:Lcom/ibm/icu/util/UResourceBundle;

    iget v1, p0, Lcom/ibm/icu/util/UResourceBundleIterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/ibm/icu/util/UResourceBundleIterator;->index:I

    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/UResourceBundle;->get(I)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    return-object v0

    .line 64
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public nextString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 74
    iget v0, p0, Lcom/ibm/icu/util/UResourceBundleIterator;->index:I

    iget v1, p0, Lcom/ibm/icu/util/UResourceBundleIterator;->size:I

    if-ge v0, v1, :cond_0

    .line 75
    iget-object v0, p0, Lcom/ibm/icu/util/UResourceBundleIterator;->bundle:Lcom/ibm/icu/util/UResourceBundle;

    iget v1, p0, Lcom/ibm/icu/util/UResourceBundleIterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/ibm/icu/util/UResourceBundleIterator;->index:I

    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/UResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 77
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu/util/UResourceBundleIterator;->index:I

    .line 87
    return-void
.end method
