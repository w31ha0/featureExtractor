.class public Lcom/ibm/icu/impl/locale/AsciiUtil$CaseInsensitiveKey;
.super Ljava/lang/Object;
.source "AsciiUtil.java"


# instance fields
.field private _hash:I

.field private _key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-object p1, p0, Lcom/ibm/icu/impl/locale/AsciiUtil$CaseInsensitiveKey;->_key:Ljava/lang/String;

    .line 170
    invoke-static {p1}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/impl/locale/AsciiUtil$CaseInsensitiveKey;->_hash:I

    .line 171
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 175
    if-ne p0, p1, :cond_0

    .line 176
    const/4 v0, 0x1

    .line 181
    :goto_0
    return v0

    .line 178
    :cond_0
    instance-of v0, p1, Lcom/ibm/icu/impl/locale/AsciiUtil$CaseInsensitiveKey;

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/ibm/icu/impl/locale/AsciiUtil$CaseInsensitiveKey;->_key:Ljava/lang/String;

    check-cast p1, Lcom/ibm/icu/impl/locale/AsciiUtil$CaseInsensitiveKey;

    iget-object v1, p1, Lcom/ibm/icu/impl/locale/AsciiUtil$CaseInsensitiveKey;->_key:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/locale/AsciiUtil;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 181
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/ibm/icu/impl/locale/AsciiUtil$CaseInsensitiveKey;->_hash:I

    return v0
.end method
