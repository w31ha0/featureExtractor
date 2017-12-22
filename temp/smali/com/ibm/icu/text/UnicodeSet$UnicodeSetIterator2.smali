.class Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;
.super Ljava/lang/Object;
.source "UnicodeSet.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private buffer:[C

.field private current:I

.field private item:I

.field private len:I

.field private limit:I

.field private sourceList:[I

.field private sourceStrings:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private stringIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/ibm/icu/text/UnicodeSet;)V
    .locals 3

    .prologue
    .line 4352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4354
    invoke-static {p1}, Lcom/ibm/icu/text/UnicodeSet;->access$400(Lcom/ibm/icu/text/UnicodeSet;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;->len:I

    .line 4355
    iget v0, p0, Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;->len:I

    if-lez v0, :cond_0

    .line 4356
    iget-object v0, p1, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;->sourceStrings:Ljava/util/TreeSet;

    .line 4357
    invoke-static {p1}, Lcom/ibm/icu/text/UnicodeSet;->access$500(Lcom/ibm/icu/text/UnicodeSet;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;->sourceList:[I

    .line 4358
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;->sourceList:[I

    iget v1, p0, Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;->item:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;->item:I

    aget v0, v0, v1

    iput v0, p0, Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;->current:I

    .line 4359
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;->sourceList:[I

    iget v1, p0, Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;->item:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;->item:I

    aget v0, v0, v1

    iput v0, p0, Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;->limit:I

    .line 4364
    :goto_0
    return-void

    .line 4361
    :cond_0
    iget-object v0, p1, Lcom/ibm/icu/text/UnicodeSet;->strings:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;->stringIterator:Ljava/util/Iterator;

    .line 4362
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;->sourceList:[I

    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 4371
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;->sourceList:[I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;->stringIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4339
    invoke-virtual {p0}, Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 5

    .prologue
    .line 4379
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;->sourceList:[I

    if-nez v0, :cond_0

    .line 4380
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;->stringIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4406
    :goto_0
    return-object v0

    .line 4382
    :cond_0
    iget v0, p0, Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;->current:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;->current:I

    .line 4384
    iget v1, p0, Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;->current:I

    iget v2, p0, Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;->limit:I

    if-lt v1, v2, :cond_1

    .line 4385
    iget v1, p0, Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;->item:I

    iget v2, p0, Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;->len:I

    if-lt v1, v2, :cond_2

    .line 4386
    iget-object v1, p0, Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;->sourceStrings:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iput-object v1, p0, Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;->stringIterator:Ljava/util/Iterator;

    .line 4387
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;->sourceList:[I

    .line 4394
    :cond_1
    :goto_1
    const v1, 0xffff

    if-gt v0, v1, :cond_3

    .line 4395
    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4389
    :cond_2
    iget-object v1, p0, Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;->sourceList:[I

    iget v2, p0, Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;->item:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;->item:I

    aget v1, v1, v2

    iput v1, p0, Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;->current:I

    .line 4390
    iget-object v1, p0, Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;->sourceList:[I

    iget v2, p0, Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;->item:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;->item:I

    aget v1, v1, v2

    iput v1, p0, Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;->limit:I

    goto :goto_1

    .line 4399
    :cond_3
    iget-object v1, p0, Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;->buffer:[C

    if-nez v1, :cond_4

    .line 4400
    const/4 v1, 0x2

    new-array v1, v1, [C

    iput-object v1, p0, Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;->buffer:[C

    .line 4403
    :cond_4
    const/high16 v1, 0x10000

    sub-int/2addr v0, v1

    .line 4404
    iget-object v1, p0, Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;->buffer:[C

    const/4 v2, 0x0

    ushr-int/lit8 v3, v0, 0xa

    const v4, 0xd800

    add-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, v1, v2

    .line 4405
    iget-object v1, p0, Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;->buffer:[C

    const/4 v2, 0x1

    and-int/lit16 v0, v0, 0x3ff

    const v3, 0xdc00

    add-int/2addr v0, v3

    int-to-char v0, v0

    aput-char v0, v1, v2

    .line 4406
    iget-object v0, p0, Lcom/ibm/icu/text/UnicodeSet$UnicodeSetIterator2;->buffer:[C

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 4414
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
