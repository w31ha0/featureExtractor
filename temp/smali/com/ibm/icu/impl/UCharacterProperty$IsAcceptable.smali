.class final Lcom/ibm/icu/impl/UCharacterProperty$IsAcceptable;
.super Ljava/lang/Object;
.source "UCharacterProperty.java"

# interfaces
.implements Lcom/ibm/icu/impl/ICUBinary$Authenticate;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/impl/UCharacterProperty$1;)V
    .locals 0

    .prologue
    .line 1273
    invoke-direct {p0}, Lcom/ibm/icu/impl/UCharacterProperty$IsAcceptable;-><init>()V

    return-void
.end method


# virtual methods
.method public isDataVersionAcceptable([B)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1277
    aget-byte v1, p1, v0

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
