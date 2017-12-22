.class final Lcom/ibm/icu/impl/ICUResourceBundleReader$Table32;
.super Lcom/ibm/icu/impl/ICUResourceBundleReader$Table;
.source "ICUResourceBundleReader.java"


# direct methods
.method constructor <init>(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)V
    .locals 2

    .prologue
    .line 1096
    invoke-direct {p0}, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table;-><init>()V

    .line 1097
    invoke-static {p1, p2}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->access$1000(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)I

    move-result v0

    .line 1098
    invoke-static {p1, v0}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->access$1900(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table32;->key32Offsets:[I

    .line 1099
    iget-object v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table32;->key32Offsets:[I

    array-length v1, v1

    iput v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table32;->size:I

    .line 1100
    iget v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table32;->size:I

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table32;->itemsOffset:I

    .line 1101
    return-void
.end method


# virtual methods
.method getContainerResource(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)I
    .locals 1

    .prologue
    .line 1094
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table32;->getContainer32Resource(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)I

    move-result v0

    return v0
.end method
