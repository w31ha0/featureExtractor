.class Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;
.super Ljava/lang/Object;
.source "InternalLocaleBuilder.java"


# instance fields
.field private _c:C


# direct methods
.method constructor <init>(C)V
    .locals 0

    .prologue
    .line 665
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 666
    iput-char p1, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;->_c:C

    .line 667
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 680
    if-ne p0, p1, :cond_1

    .line 686
    :cond_0
    :goto_0
    return v0

    .line 683
    :cond_1
    instance-of v2, p1, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    if-nez v2, :cond_2

    move v0, v1

    .line 684
    goto :goto_0

    .line 686
    :cond_2
    iget-char v2, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;->_c:C

    check-cast p1, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;->value()C

    move-result v3

    invoke-static {v3}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLower(C)C

    move-result v3

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 675
    iget-char v0, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;->_c:C

    invoke-static {v0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLower(C)C

    move-result v0

    return v0
.end method

.method public value()C
    .locals 1

    .prologue
    .line 670
    iget-char v0, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;->_c:C

    return v0
.end method
