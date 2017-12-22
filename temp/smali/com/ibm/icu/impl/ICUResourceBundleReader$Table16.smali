.class final Lcom/ibm/icu/impl/ICUResourceBundleReader$Table16;
.super Lcom/ibm/icu/impl/ICUResourceBundleReader$Table;
.source "ICUResourceBundleReader.java"


# direct methods
.method constructor <init>(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)V
    .locals 2

    .prologue
    .line 1085
    invoke-direct {p0}, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table;-><init>()V

    .line 1086
    invoke-static {p1, p2}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->access$1800(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)[C

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table16;->keyOffsets:[C

    .line 1087
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table16;->keyOffsets:[C

    array-length v0, v0

    iput v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table16;->size:I

    .line 1088
    add-int/lit8 v0, p2, 0x1

    iget v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table16;->size:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table16;->itemsOffset:I

    .line 1089
    return-void
.end method


# virtual methods
.method getContainerResource(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)I
    .locals 1

    .prologue
    .line 1083
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table16;->getContainer16Resource(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)I

    move-result v0

    return v0
.end method
