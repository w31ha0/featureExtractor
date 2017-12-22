.class final Lcom/ibm/icu/impl/ICUBinary$DatPackageReader$IsAcceptable;
.super Ljava/lang/Object;
.source "ICUBinary.java"

# interfaces
.implements Lcom/ibm/icu/impl/ICUBinary$Authenticate;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/impl/ICUBinary$1;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/ibm/icu/impl/ICUBinary$DatPackageReader$IsAcceptable;-><init>()V

    return-void
.end method


# virtual methods
.method public isDataVersionAcceptable([B)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 44
    aget-byte v2, p1, v1

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
