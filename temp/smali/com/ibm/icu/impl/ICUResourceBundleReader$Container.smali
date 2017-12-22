.class Lcom/ibm/icu/impl/ICUResourceBundleReader$Container;
.super Ljava/lang/Object;
.source "ICUResourceBundleReader.java"


# instance fields
.field protected itemsOffset:I

.field protected size:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 973
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 974
    return-void
.end method


# virtual methods
.method protected getContainer16Resource(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)I
    .locals 2

    .prologue
    .line 951
    if-ltz p2, :cond_0

    iget v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$Container;->size:I

    if-gt v0, p2, :cond_1

    .line 952
    :cond_0
    const/4 v0, -0x1

    .line 962
    :goto_0
    return v0

    .line 954
    :cond_1
    invoke-static {p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->access$600(Lcom/ibm/icu/impl/ICUResourceBundleReader;)Ljava/nio/CharBuffer;

    move-result-object v0

    iget v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$Container;->itemsOffset:I

    add-int/2addr v1, p2

    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result v0

    .line 955
    invoke-static {p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->access$700(Lcom/ibm/icu/impl/ICUResourceBundleReader;)I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 962
    :goto_1
    const/high16 v1, 0x60000000

    or-int/2addr v0, v1

    goto :goto_0

    .line 960
    :cond_2
    invoke-static {p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->access$700(Lcom/ibm/icu/impl/ICUResourceBundleReader;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->access$800(Lcom/ibm/icu/impl/ICUResourceBundleReader;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1
.end method

.method protected getContainer32Resource(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)I
    .locals 2

    .prologue
    .line 965
    if-ltz p2, :cond_0

    iget v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$Container;->size:I

    if-gt v0, p2, :cond_1

    .line 966
    :cond_0
    const/4 v0, -0x1

    .line 968
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$Container;->itemsOffset:I

    mul-int/lit8 v1, p2, 0x4

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->access$900(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)I

    move-result v0

    goto :goto_0
.end method

.method getContainerResource(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)I
    .locals 1

    .prologue
    .line 948
    const/4 v0, -0x1

    return v0
.end method

.method getResource(Lcom/ibm/icu/impl/ICUResourceBundleReader;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 971
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/impl/ICUResourceBundleReader$Container;->getContainerResource(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)I

    move-result v0

    return v0
.end method

.method public final getSize()I
    .locals 1

    .prologue
    .line 945
    iget v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$Container;->size:I

    return v0
.end method
