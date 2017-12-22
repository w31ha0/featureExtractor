.class Lcom/ibm/icu/impl/locale/BaseLocale$Key;
.super Ljava/lang/Object;
.source "BaseLocale.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/ibm/icu/impl/locale/BaseLocale$Key;",
        ">;"
    }
.end annotation


# instance fields
.field private volatile _hash:I

.field private _lang:Ljava/lang/String;

.field private _regn:Ljava/lang/String;

.field private _scrt:Ljava/lang/String;

.field private _vart:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ibm/icu/impl/locale/BaseLocale$Key;->_lang:Ljava/lang/String;

    .line 152
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ibm/icu/impl/locale/BaseLocale$Key;->_scrt:Ljava/lang/String;

    .line 153
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ibm/icu/impl/locale/BaseLocale$Key;->_regn:Ljava/lang/String;

    .line 154
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ibm/icu/impl/locale/BaseLocale$Key;->_vart:Ljava/lang/String;

    .line 159
    if-eqz p1, :cond_0

    .line 160
    iput-object p1, p0, Lcom/ibm/icu/impl/locale/BaseLocale$Key;->_lang:Ljava/lang/String;

    .line 162
    :cond_0
    if-eqz p2, :cond_1

    .line 163
    iput-object p2, p0, Lcom/ibm/icu/impl/locale/BaseLocale$Key;->_scrt:Ljava/lang/String;

    .line 165
    :cond_1
    if-eqz p3, :cond_2

    .line 166
    iput-object p3, p0, Lcom/ibm/icu/impl/locale/BaseLocale$Key;->_regn:Ljava/lang/String;

    .line 168
    :cond_2
    if-eqz p4, :cond_3

    .line 169
    iput-object p4, p0, Lcom/ibm/icu/impl/locale/BaseLocale$Key;->_vart:Ljava/lang/String;

    .line 171
    :cond_3
    return-void
.end method

.method static synthetic access$000(Lcom/ibm/icu/impl/locale/BaseLocale$Key;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/ibm/icu/impl/locale/BaseLocale$Key;->_lang:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ibm/icu/impl/locale/BaseLocale$Key;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/ibm/icu/impl/locale/BaseLocale$Key;->_scrt:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ibm/icu/impl/locale/BaseLocale$Key;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/ibm/icu/impl/locale/BaseLocale$Key;->_regn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ibm/icu/impl/locale/BaseLocale$Key;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/ibm/icu/impl/locale/BaseLocale$Key;->_vart:Ljava/lang/String;

    return-object v0
.end method

.method public static normalize(Lcom/ibm/icu/impl/locale/BaseLocale$Key;)Lcom/ibm/icu/impl/locale/BaseLocale$Key;
    .locals 5

    .prologue
    .line 237
    iget-object v0, p0, Lcom/ibm/icu/impl/locale/BaseLocale$Key;->_lang:Ljava/lang/String;

    invoke-static {v0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 238
    iget-object v1, p0, Lcom/ibm/icu/impl/locale/BaseLocale$Key;->_scrt:Ljava/lang/String;

    invoke-static {v1}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toTitleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 239
    iget-object v2, p0, Lcom/ibm/icu/impl/locale/BaseLocale$Key;->_regn:Ljava/lang/String;

    invoke-static {v2}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toUpperString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 245
    iget-object v3, p0, Lcom/ibm/icu/impl/locale/BaseLocale$Key;->_vart:Ljava/lang/String;

    invoke-static {v3}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toUpperString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 247
    new-instance v4, Lcom/ibm/icu/impl/locale/BaseLocale$Key;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/ibm/icu/impl/locale/BaseLocale$Key;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method


# virtual methods
.method public compareTo(Lcom/ibm/icu/impl/locale/BaseLocale$Key;)I
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/ibm/icu/impl/locale/BaseLocale$Key;->_lang:Ljava/lang/String;

    iget-object v1, p1, Lcom/ibm/icu/impl/locale/BaseLocale$Key;->_lang:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/locale/AsciiUtil;->caseIgnoreCompare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 194
    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/ibm/icu/impl/locale/BaseLocale$Key;->_scrt:Ljava/lang/String;

    iget-object v1, p1, Lcom/ibm/icu/impl/locale/BaseLocale$Key;->_scrt:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/locale/AsciiUtil;->caseIgnoreCompare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 196
    if-nez v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/ibm/icu/impl/locale/BaseLocale$Key;->_regn:Ljava/lang/String;

    iget-object v1, p1, Lcom/ibm/icu/impl/locale/BaseLocale$Key;->_regn:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/locale/AsciiUtil;->caseIgnoreCompare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 198
    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/ibm/icu/impl/locale/BaseLocale$Key;->_vart:Ljava/lang/String;

    iget-object v1, p1, Lcom/ibm/icu/impl/locale/BaseLocale$Key;->_vart:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/locale/AsciiUtil;->caseIgnoreCompare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 207
    :cond_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 150
    check-cast p1, Lcom/ibm/icu/impl/locale/BaseLocale$Key;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/locale/BaseLocale$Key;->compareTo(Lcom/ibm/icu/impl/locale/BaseLocale$Key;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 183
    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lcom/ibm/icu/impl/locale/BaseLocale$Key;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/ibm/icu/impl/locale/BaseLocale$Key;

    iget-object v0, v0, Lcom/ibm/icu/impl/locale/BaseLocale$Key;->_lang:Ljava/lang/String;

    iget-object v1, p0, Lcom/ibm/icu/impl/locale/BaseLocale$Key;->_lang:Ljava/lang/String;

    .line 185
    invoke-static {v0, v1}, Lcom/ibm/icu/impl/locale/AsciiUtil;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/ibm/icu/impl/locale/BaseLocale$Key;

    iget-object v0, v0, Lcom/ibm/icu/impl/locale/BaseLocale$Key;->_scrt:Ljava/lang/String;

    iget-object v1, p0, Lcom/ibm/icu/impl/locale/BaseLocale$Key;->_scrt:Ljava/lang/String;

    .line 186
    invoke-static {v0, v1}, Lcom/ibm/icu/impl/locale/AsciiUtil;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/ibm/icu/impl/locale/BaseLocale$Key;

    iget-object v0, v0, Lcom/ibm/icu/impl/locale/BaseLocale$Key;->_regn:Ljava/lang/String;

    iget-object v1, p0, Lcom/ibm/icu/impl/locale/BaseLocale$Key;->_regn:Ljava/lang/String;

    .line 187
    invoke-static {v0, v1}, Lcom/ibm/icu/impl/locale/AsciiUtil;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p1, Lcom/ibm/icu/impl/locale/BaseLocale$Key;

    iget-object v0, p1, Lcom/ibm/icu/impl/locale/BaseLocale$Key;->_vart:Ljava/lang/String;

    iget-object v1, p0, Lcom/ibm/icu/impl/locale/BaseLocale$Key;->_vart:Ljava/lang/String;

    .line 188
    invoke-static {v0, v1}, Lcom/ibm/icu/impl/locale/AsciiUtil;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 183
    :goto_0
    return v0

    .line 188
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 212
    iget v0, p0, Lcom/ibm/icu/impl/locale/BaseLocale$Key;->_hash:I

    .line 213
    if-nez v0, :cond_4

    move v2, v0

    move v0, v1

    .line 215
    :goto_0
    iget-object v3, p0, Lcom/ibm/icu/impl/locale/BaseLocale$Key;->_lang:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 216
    mul-int/lit8 v2, v2, 0x1f

    iget-object v3, p0, Lcom/ibm/icu/impl/locale/BaseLocale$Key;->_lang:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLower(C)C

    move-result v3

    add-int/2addr v2, v3

    .line 215
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 218
    :goto_1
    iget-object v3, p0, Lcom/ibm/icu/impl/locale/BaseLocale$Key;->_scrt:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 219
    mul-int/lit8 v2, v2, 0x1f

    iget-object v3, p0, Lcom/ibm/icu/impl/locale/BaseLocale$Key;->_scrt:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLower(C)C

    move-result v3

    add-int/2addr v2, v3

    .line 218
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 221
    :goto_2
    iget-object v3, p0, Lcom/ibm/icu/impl/locale/BaseLocale$Key;->_regn:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 222
    mul-int/lit8 v2, v2, 0x1f

    iget-object v3, p0, Lcom/ibm/icu/impl/locale/BaseLocale$Key;->_regn:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLower(C)C

    move-result v3

    add-int/2addr v2, v3

    .line 221
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 224
    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/ibm/icu/impl/locale/BaseLocale$Key;->_vart:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 228
    mul-int/lit8 v0, v2, 0x1f

    iget-object v2, p0, Lcom/ibm/icu/impl/locale/BaseLocale$Key;->_vart:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLower(C)C

    move-result v2

    add-int/2addr v2, v0

    .line 224
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 231
    :cond_3
    iput v2, p0, Lcom/ibm/icu/impl/locale/BaseLocale$Key;->_hash:I

    .line 233
    :goto_4
    return v2

    :cond_4
    move v2, v0

    goto :goto_4
.end method
