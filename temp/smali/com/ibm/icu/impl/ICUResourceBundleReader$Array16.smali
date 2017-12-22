.class final Lcom/ibm/icu/impl/ICUResourceBundleReader$Array16;
.super Lcom/ibm/icu/impl/ICUResourceBundleReader$Array;
.source "ICUResourceBundleReader.java"


# direct methods
.method constructor <init>(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)V
    .locals 1

    .prologue
    .line 1004
    invoke-direct {p0}, Lcom/ibm/icu/impl/ICUResourceBundleReader$Array;-><init>()V

    .line 1005
    invoke-static {p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->access$600(Lcom/ibm/icu/impl/ICUResourceBundleReader;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result v0

    iput v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$Array16;->size:I

    .line 1006
    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$Array16;->itemsOffset:I

    .line 1007
    return-void
.end method


# virtual methods
.method getContainerResource(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)I
    .locals 1

    .prologue
    .line 1002
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/ICUResourceBundleReader$Array16;->getContainer16Resource(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)I

    move-result v0

    return v0
.end method
