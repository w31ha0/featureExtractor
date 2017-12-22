.class final Lcom/ibm/icu/text/RBBIDataWrapper$IsAcceptable;
.super Ljava/lang/Object;
.source "RBBIDataWrapper.java"

# interfaces
.implements Lcom/ibm/icu/impl/ICUBinary$Authenticate;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/text/RBBIDataWrapper$1;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/ibm/icu/text/RBBIDataWrapper$IsAcceptable;-><init>()V

    return-void
.end method


# virtual methods
.method public isDataVersionAcceptable([B)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 49
    aget-byte v1, p1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
