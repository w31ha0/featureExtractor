.class final Lcom/ibm/icu/impl/ICUResourceBundleReader$IsAcceptable;
.super Ljava/lang/Object;
.source "ICUResourceBundleReader.java"

# interfaces
.implements Lcom/ibm/icu/impl/ICUBinary$Authenticate;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/impl/ICUResourceBundleReader$1;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/ibm/icu/impl/ICUResourceBundleReader$IsAcceptable;-><init>()V

    return-void
.end method


# virtual methods
.method public isDataVersionAcceptable([B)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 39
    aget-byte v2, p1, v0

    if-ne v2, v1, :cond_0

    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    if-ge v2, v1, :cond_1

    :cond_0
    const/4 v2, 0x2

    aget-byte v3, p1, v0

    if-gt v2, v3, :cond_2

    aget-byte v2, p1, v0

    const/4 v3, 0x3

    if-gt v2, v3, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    return v0
.end method
