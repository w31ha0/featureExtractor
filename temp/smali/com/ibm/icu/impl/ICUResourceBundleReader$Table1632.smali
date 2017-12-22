.class final Lcom/ibm/icu/impl/ICUResourceBundleReader$Table1632;
.super Lcom/ibm/icu/impl/ICUResourceBundleReader$Table;
.source "ICUResourceBundleReader.java"


# direct methods
.method constructor <init>(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)V
    .locals 2

    .prologue
    .line 1073
    invoke-direct {p0}, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table;-><init>()V

    .line 1074
    invoke-static {p1, p2}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->access$1000(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)I

    move-result v0

    .line 1075
    invoke-static {p1, v0}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->access$1700(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)[C

    move-result-object v1

    iput-object v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table1632;->keyOffsets:[C

    .line 1076
    iget-object v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table1632;->keyOffsets:[C

    array-length v1, v1

    iput v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table1632;->size:I

    .line 1077
    iget v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table1632;->size:I

    add-int/lit8 v1, v1, 0x2

    and-int/lit8 v1, v1, -0x2

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table1632;->itemsOffset:I

    .line 1078
    return-void
.end method


# virtual methods
.method getContainerResource(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)I
    .locals 1

    .prologue
    .line 1071
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table1632;->getContainer32Resource(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)I

    move-result v0

    return v0
.end method
