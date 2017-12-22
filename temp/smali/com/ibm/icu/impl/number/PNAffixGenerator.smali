.class public Lcom/ibm/icu/impl/number/PNAffixGenerator;
.super Ljava/lang/Object;
.source "PNAffixGenerator.java"


# static fields
.field protected static final threadLocalInstance:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/ibm/icu/impl/number/PNAffixGenerator;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private resultInstance:Lcom/ibm/icu/impl/number/PNAffixGenerator$Result;

.field private sb1:Lcom/ibm/icu/impl/number/NumberStringBuilder;

.field private sb2:Lcom/ibm/icu/impl/number/NumberStringBuilder;

.field private sb3:Lcom/ibm/icu/impl/number/NumberStringBuilder;

.field private sb4:Lcom/ibm/icu/impl/number/NumberStringBuilder;

.field private sb5:Lcom/ibm/icu/impl/number/NumberStringBuilder;

.field private sb6:Lcom/ibm/icu/impl/number/NumberStringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/ibm/icu/impl/number/PNAffixGenerator$1;

    invoke-direct {v0}, Lcom/ibm/icu/impl/number/PNAffixGenerator$1;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/number/PNAffixGenerator;->threadLocalInstance:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lcom/ibm/icu/impl/number/PNAffixGenerator$Result;

    invoke-direct {v0}, Lcom/ibm/icu/impl/number/PNAffixGenerator$Result;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/number/PNAffixGenerator;->resultInstance:Lcom/ibm/icu/impl/number/PNAffixGenerator$Result;

    .line 51
    new-instance v0, Lcom/ibm/icu/impl/number/NumberStringBuilder;

    invoke-direct {v0}, Lcom/ibm/icu/impl/number/NumberStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/number/PNAffixGenerator;->sb1:Lcom/ibm/icu/impl/number/NumberStringBuilder;

    .line 52
    new-instance v0, Lcom/ibm/icu/impl/number/NumberStringBuilder;

    invoke-direct {v0}, Lcom/ibm/icu/impl/number/NumberStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/number/PNAffixGenerator;->sb2:Lcom/ibm/icu/impl/number/NumberStringBuilder;

    .line 53
    new-instance v0, Lcom/ibm/icu/impl/number/NumberStringBuilder;

    invoke-direct {v0}, Lcom/ibm/icu/impl/number/NumberStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/number/PNAffixGenerator;->sb3:Lcom/ibm/icu/impl/number/NumberStringBuilder;

    .line 54
    new-instance v0, Lcom/ibm/icu/impl/number/NumberStringBuilder;

    invoke-direct {v0}, Lcom/ibm/icu/impl/number/NumberStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/number/PNAffixGenerator;->sb4:Lcom/ibm/icu/impl/number/NumberStringBuilder;

    .line 55
    new-instance v0, Lcom/ibm/icu/impl/number/NumberStringBuilder;

    invoke-direct {v0}, Lcom/ibm/icu/impl/number/NumberStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/number/PNAffixGenerator;->sb5:Lcom/ibm/icu/impl/number/NumberStringBuilder;

    .line 56
    new-instance v0, Lcom/ibm/icu/impl/number/NumberStringBuilder;

    invoke-direct {v0}, Lcom/ibm/icu/impl/number/NumberStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/number/PNAffixGenerator;->sb6:Lcom/ibm/icu/impl/number/NumberStringBuilder;

    return-void
.end method

.method private static charSequenceEquals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 273
    if-ne p0, p1, :cond_1

    move v1, v2

    .line 279
    :cond_0
    :goto_0
    return v1

    .line 274
    :cond_1
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 275
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ne v0, v3, :cond_0

    move v0, v1

    .line 276
    :goto_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 277
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_0

    .line 276
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    .line 279
    goto :goto_0
.end method

.method private getModifiersWithPlusSign(Lcom/ibm/icu/text/DecimalFormatSymbols;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/impl/number/formatters/PositiveNegativeAffixFormat$IProperties;)Lcom/ibm/icu/impl/number/PNAffixGenerator$Result;
    .locals 12

    .prologue
    .line 154
    invoke-interface/range {p5 .. p5}, Lcom/ibm/icu/impl/number/formatters/PositiveNegativeAffixFormat$IProperties;->getPositivePrefixPattern()Ljava/lang/String;

    move-result-object v9

    .line 155
    invoke-interface/range {p5 .. p5}, Lcom/ibm/icu/impl/number/formatters/PositiveNegativeAffixFormat$IProperties;->getPositiveSuffixPattern()Ljava/lang/String;

    move-result-object v10

    .line 156
    invoke-interface/range {p5 .. p5}, Lcom/ibm/icu/impl/number/formatters/PositiveNegativeAffixFormat$IProperties;->getNegativePrefixPattern()Ljava/lang/String;

    move-result-object v1

    .line 157
    invoke-interface/range {p5 .. p5}, Lcom/ibm/icu/impl/number/formatters/PositiveNegativeAffixFormat$IProperties;->getNegativeSuffixPattern()Ljava/lang/String;

    move-result-object v11

    .line 172
    if-nez v1, :cond_0

    if-eqz v11, :cond_3

    .line 174
    :cond_0
    iget-object v2, p0, Lcom/ibm/icu/impl/number/PNAffixGenerator;->sb1:Lcom/ibm/icu/impl/number/NumberStringBuilder;

    invoke-virtual {v2}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->clear()Lcom/ibm/icu/impl/number/NumberStringBuilder;

    .line 175
    iget-object v2, p0, Lcom/ibm/icu/impl/number/PNAffixGenerator;->sb2:Lcom/ibm/icu/impl/number/NumberStringBuilder;

    invoke-virtual {v2}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->clear()Lcom/ibm/icu/impl/number/NumberStringBuilder;

    .line 176
    iget-object v2, p0, Lcom/ibm/icu/impl/number/PNAffixGenerator;->sb3:Lcom/ibm/icu/impl/number/NumberStringBuilder;

    invoke-virtual {v2}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->clear()Lcom/ibm/icu/impl/number/NumberStringBuilder;

    .line 177
    iget-object v2, p0, Lcom/ibm/icu/impl/number/PNAffixGenerator;->sb4:Lcom/ibm/icu/impl/number/NumberStringBuilder;

    invoke-virtual {v2}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->clear()Lcom/ibm/icu/impl/number/NumberStringBuilder;

    .line 178
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/ibm/icu/impl/number/PNAffixGenerator;->sb1:Lcom/ibm/icu/impl/number/NumberStringBuilder;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    invoke-static/range {v1 .. v7}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->unescape(Ljava/lang/CharSequence;Lcom/ibm/icu/text/DecimalFormatSymbols;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/impl/number/NumberStringBuilder;)V

    .line 179
    const/4 v7, 0x0

    iget-object v8, p0, Lcom/ibm/icu/impl/number/PNAffixGenerator;->sb2:Lcom/ibm/icu/impl/number/NumberStringBuilder;

    move-object v2, v11

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    invoke-static/range {v2 .. v8}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->unescape(Ljava/lang/CharSequence;Lcom/ibm/icu/text/DecimalFormatSymbols;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/impl/number/NumberStringBuilder;)V

    .line 181
    invoke-virtual {p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getPlusSignString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/ibm/icu/impl/number/PNAffixGenerator;->sb3:Lcom/ibm/icu/impl/number/NumberStringBuilder;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    .line 180
    invoke-static/range {v1 .. v7}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->unescape(Ljava/lang/CharSequence;Lcom/ibm/icu/text/DecimalFormatSymbols;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/impl/number/NumberStringBuilder;)V

    .line 183
    invoke-virtual {p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getPlusSignString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/ibm/icu/impl/number/PNAffixGenerator;->sb4:Lcom/ibm/icu/impl/number/NumberStringBuilder;

    move-object v2, v11

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    .line 182
    invoke-static/range {v2 .. v8}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->unescape(Ljava/lang/CharSequence;Lcom/ibm/icu/text/DecimalFormatSymbols;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/impl/number/NumberStringBuilder;)V

    .line 184
    iget-object v2, p0, Lcom/ibm/icu/impl/number/PNAffixGenerator;->sb1:Lcom/ibm/icu/impl/number/NumberStringBuilder;

    iget-object v3, p0, Lcom/ibm/icu/impl/number/PNAffixGenerator;->sb3:Lcom/ibm/icu/impl/number/NumberStringBuilder;

    invoke-static {v2, v3}, Lcom/ibm/icu/impl/number/PNAffixGenerator;->charSequenceEquals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ibm/icu/impl/number/PNAffixGenerator;->sb2:Lcom/ibm/icu/impl/number/NumberStringBuilder;

    iget-object v3, p0, Lcom/ibm/icu/impl/number/PNAffixGenerator;->sb4:Lcom/ibm/icu/impl/number/NumberStringBuilder;

    invoke-static {v2, v3}, Lcom/ibm/icu/impl/number/PNAffixGenerator;->charSequenceEquals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 186
    :cond_1
    iget-object v1, p0, Lcom/ibm/icu/impl/number/PNAffixGenerator;->sb3:Lcom/ibm/icu/impl/number/NumberStringBuilder;

    iget-object v2, p0, Lcom/ibm/icu/impl/number/PNAffixGenerator;->sb4:Lcom/ibm/icu/impl/number/NumberStringBuilder;

    move-object/from16 v0, p5

    invoke-direct {p0, v1, v2, v0}, Lcom/ibm/icu/impl/number/PNAffixGenerator;->setPositiveResult(Lcom/ibm/icu/impl/number/NumberStringBuilder;Lcom/ibm/icu/impl/number/NumberStringBuilder;Lcom/ibm/icu/impl/number/formatters/PositiveNegativeAffixFormat$IProperties;)V

    .line 187
    iget-object v1, p0, Lcom/ibm/icu/impl/number/PNAffixGenerator;->sb1:Lcom/ibm/icu/impl/number/NumberStringBuilder;

    iget-object v2, p0, Lcom/ibm/icu/impl/number/PNAffixGenerator;->sb2:Lcom/ibm/icu/impl/number/NumberStringBuilder;

    move-object/from16 v0, p5

    invoke-direct {p0, v1, v2, v0}, Lcom/ibm/icu/impl/number/PNAffixGenerator;->setNegativeResult(Lcom/ibm/icu/impl/number/NumberStringBuilder;Lcom/ibm/icu/impl/number/NumberStringBuilder;Lcom/ibm/icu/impl/number/formatters/PositiveNegativeAffixFormat$IProperties;)V

    .line 188
    iget-object v1, p0, Lcom/ibm/icu/impl/number/PNAffixGenerator;->resultInstance:Lcom/ibm/icu/impl/number/PNAffixGenerator$Result;

    .line 213
    :goto_0
    return-object v1

    .line 191
    :cond_2
    iget-object v2, p0, Lcom/ibm/icu/impl/number/PNAffixGenerator;->sb1:Lcom/ibm/icu/impl/number/NumberStringBuilder;

    iget-object v3, p0, Lcom/ibm/icu/impl/number/PNAffixGenerator;->sb2:Lcom/ibm/icu/impl/number/NumberStringBuilder;

    move-object/from16 v0, p5

    invoke-direct {p0, v2, v3, v0}, Lcom/ibm/icu/impl/number/PNAffixGenerator;->setNegativeResult(Lcom/ibm/icu/impl/number/NumberStringBuilder;Lcom/ibm/icu/impl/number/NumberStringBuilder;Lcom/ibm/icu/impl/number/formatters/PositiveNegativeAffixFormat$IProperties;)V

    .line 196
    :cond_3
    iget-object v2, p0, Lcom/ibm/icu/impl/number/PNAffixGenerator;->sb1:Lcom/ibm/icu/impl/number/NumberStringBuilder;

    invoke-virtual {v2}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->clear()Lcom/ibm/icu/impl/number/NumberStringBuilder;

    .line 197
    iget-object v2, p0, Lcom/ibm/icu/impl/number/PNAffixGenerator;->sb2:Lcom/ibm/icu/impl/number/NumberStringBuilder;

    invoke-virtual {v2}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->clear()Lcom/ibm/icu/impl/number/NumberStringBuilder;

    .line 198
    const/4 v7, 0x0

    iget-object v8, p0, Lcom/ibm/icu/impl/number/PNAffixGenerator;->sb1:Lcom/ibm/icu/impl/number/NumberStringBuilder;

    move-object v2, v9

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    invoke-static/range {v2 .. v8}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->unescape(Ljava/lang/CharSequence;Lcom/ibm/icu/text/DecimalFormatSymbols;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/impl/number/NumberStringBuilder;)V

    .line 199
    const/4 v7, 0x0

    iget-object v8, p0, Lcom/ibm/icu/impl/number/PNAffixGenerator;->sb2:Lcom/ibm/icu/impl/number/NumberStringBuilder;

    move-object v2, v10

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    invoke-static/range {v2 .. v8}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->unescape(Ljava/lang/CharSequence;Lcom/ibm/icu/text/DecimalFormatSymbols;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/impl/number/NumberStringBuilder;)V

    .line 201
    if-nez v1, :cond_4

    if-nez v11, :cond_4

    .line 203
    iget-object v1, p0, Lcom/ibm/icu/impl/number/PNAffixGenerator;->sb3:Lcom/ibm/icu/impl/number/NumberStringBuilder;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->clear()Lcom/ibm/icu/impl/number/NumberStringBuilder;

    .line 204
    iget-object v1, p0, Lcom/ibm/icu/impl/number/PNAffixGenerator;->sb3:Lcom/ibm/icu/impl/number/NumberStringBuilder;

    invoke-virtual {p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getMinusSignString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/ibm/icu/text/NumberFormat$Field;->SIGN:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual {v1, v2, v3}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->append(Ljava/lang/CharSequence;Lcom/ibm/icu/text/NumberFormat$Field;)I

    .line 205
    iget-object v1, p0, Lcom/ibm/icu/impl/number/PNAffixGenerator;->sb3:Lcom/ibm/icu/impl/number/NumberStringBuilder;

    iget-object v2, p0, Lcom/ibm/icu/impl/number/PNAffixGenerator;->sb1:Lcom/ibm/icu/impl/number/NumberStringBuilder;

    invoke-virtual {v1, v2}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->append(Lcom/ibm/icu/impl/number/NumberStringBuilder;)I

    .line 206
    iget-object v1, p0, Lcom/ibm/icu/impl/number/PNAffixGenerator;->sb3:Lcom/ibm/icu/impl/number/NumberStringBuilder;

    iget-object v2, p0, Lcom/ibm/icu/impl/number/PNAffixGenerator;->sb2:Lcom/ibm/icu/impl/number/NumberStringBuilder;

    move-object/from16 v0, p5

    invoke-direct {p0, v1, v2, v0}, Lcom/ibm/icu/impl/number/PNAffixGenerator;->setNegativeResult(Lcom/ibm/icu/impl/number/NumberStringBuilder;Lcom/ibm/icu/impl/number/NumberStringBuilder;Lcom/ibm/icu/impl/number/formatters/PositiveNegativeAffixFormat$IProperties;)V

    .line 210
    :cond_4
    iget-object v1, p0, Lcom/ibm/icu/impl/number/PNAffixGenerator;->sb1:Lcom/ibm/icu/impl/number/NumberStringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getPlusSignString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/ibm/icu/text/NumberFormat$Field;->SIGN:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual {v1, v2, v3, v4}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->insert(ILjava/lang/CharSequence;Lcom/ibm/icu/text/NumberFormat$Field;)I

    .line 211
    iget-object v1, p0, Lcom/ibm/icu/impl/number/PNAffixGenerator;->sb1:Lcom/ibm/icu/impl/number/NumberStringBuilder;

    iget-object v2, p0, Lcom/ibm/icu/impl/number/PNAffixGenerator;->sb2:Lcom/ibm/icu/impl/number/NumberStringBuilder;

    move-object/from16 v0, p5

    invoke-direct {p0, v1, v2, v0}, Lcom/ibm/icu/impl/number/PNAffixGenerator;->setPositiveResult(Lcom/ibm/icu/impl/number/NumberStringBuilder;Lcom/ibm/icu/impl/number/NumberStringBuilder;Lcom/ibm/icu/impl/number/formatters/PositiveNegativeAffixFormat$IProperties;)V

    .line 213
    iget-object v1, p0, Lcom/ibm/icu/impl/number/PNAffixGenerator;->resultInstance:Lcom/ibm/icu/impl/number/PNAffixGenerator$Result;

    goto :goto_0
.end method

.method public static getThreadLocalInstance()Lcom/ibm/icu/impl/number/PNAffixGenerator;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/ibm/icu/impl/number/PNAffixGenerator;->threadLocalInstance:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/number/PNAffixGenerator;

    return-object v0
.end method

.method private setNegativeResult(Lcom/ibm/icu/impl/number/NumberStringBuilder;Lcom/ibm/icu/impl/number/NumberStringBuilder;Lcom/ibm/icu/impl/number/formatters/PositiveNegativeAffixFormat$IProperties;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 248
    invoke-interface {p3}, Lcom/ibm/icu/impl/number/formatters/PositiveNegativeAffixFormat$IProperties;->getNegativePrefix()Ljava/lang/String;

    move-result-object v0

    .line 249
    invoke-interface {p3}, Lcom/ibm/icu/impl/number/formatters/PositiveNegativeAffixFormat$IProperties;->getNegativeSuffix()Ljava/lang/String;

    move-result-object v1

    .line 250
    if-eqz v0, :cond_0

    .line 251
    iget-object v2, p0, Lcom/ibm/icu/impl/number/PNAffixGenerator;->sb5:Lcom/ibm/icu/impl/number/NumberStringBuilder;

    invoke-virtual {v2}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->clear()Lcom/ibm/icu/impl/number/NumberStringBuilder;

    move-result-object p1

    .line 252
    invoke-virtual {p1, v0, v3}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->append(Ljava/lang/CharSequence;Lcom/ibm/icu/text/NumberFormat$Field;)I

    .line 254
    :cond_0
    if-eqz v1, :cond_1

    .line 255
    iget-object v0, p0, Lcom/ibm/icu/impl/number/PNAffixGenerator;->sb6:Lcom/ibm/icu/impl/number/NumberStringBuilder;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->clear()Lcom/ibm/icu/impl/number/NumberStringBuilder;

    move-result-object p2

    .line 256
    invoke-virtual {p2, v1, v3}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->append(Ljava/lang/CharSequence;Lcom/ibm/icu/text/NumberFormat$Field;)I

    .line 258
    :cond_1
    invoke-virtual {p1}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 259
    iget-object v0, p0, Lcom/ibm/icu/impl/number/PNAffixGenerator;->resultInstance:Lcom/ibm/icu/impl/number/PNAffixGenerator$Result;

    sget-object v1, Lcom/ibm/icu/impl/number/modifiers/ConstantAffixModifier;->EMPTY:Lcom/ibm/icu/impl/number/Modifier$AffixModifier;

    iput-object v1, v0, Lcom/ibm/icu/impl/number/PNAffixGenerator$Result;->negative:Lcom/ibm/icu/impl/number/Modifier$AffixModifier;

    .line 269
    :cond_2
    :goto_0
    return-void

    .line 262
    :cond_3
    iget-object v0, p0, Lcom/ibm/icu/impl/number/PNAffixGenerator;->resultInstance:Lcom/ibm/icu/impl/number/PNAffixGenerator$Result;

    iget-object v0, v0, Lcom/ibm/icu/impl/number/PNAffixGenerator$Result;->negative:Lcom/ibm/icu/impl/number/Modifier$AffixModifier;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ibm/icu/impl/number/PNAffixGenerator;->resultInstance:Lcom/ibm/icu/impl/number/PNAffixGenerator$Result;

    iget-object v0, v0, Lcom/ibm/icu/impl/number/PNAffixGenerator$Result;->negative:Lcom/ibm/icu/impl/number/Modifier$AffixModifier;

    instance-of v0, v0, Lcom/ibm/icu/impl/number/modifiers/ConstantMultiFieldModifier;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ibm/icu/impl/number/PNAffixGenerator;->resultInstance:Lcom/ibm/icu/impl/number/PNAffixGenerator$Result;

    iget-object v0, v0, Lcom/ibm/icu/impl/number/PNAffixGenerator$Result;->negative:Lcom/ibm/icu/impl/number/Modifier$AffixModifier;

    check-cast v0, Lcom/ibm/icu/impl/number/modifiers/ConstantMultiFieldModifier;

    .line 264
    invoke-virtual {v0, p1, p2}, Lcom/ibm/icu/impl/number/modifiers/ConstantMultiFieldModifier;->contentEquals(Lcom/ibm/icu/impl/number/NumberStringBuilder;Lcom/ibm/icu/impl/number/NumberStringBuilder;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 268
    :cond_4
    iget-object v0, p0, Lcom/ibm/icu/impl/number/PNAffixGenerator;->resultInstance:Lcom/ibm/icu/impl/number/PNAffixGenerator$Result;

    new-instance v1, Lcom/ibm/icu/impl/number/modifiers/ConstantMultiFieldModifier;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/ibm/icu/impl/number/modifiers/ConstantMultiFieldModifier;-><init>(Lcom/ibm/icu/impl/number/NumberStringBuilder;Lcom/ibm/icu/impl/number/NumberStringBuilder;Z)V

    iput-object v1, v0, Lcom/ibm/icu/impl/number/PNAffixGenerator$Result;->negative:Lcom/ibm/icu/impl/number/Modifier$AffixModifier;

    goto :goto_0
.end method

.method private setPositiveResult(Lcom/ibm/icu/impl/number/NumberStringBuilder;Lcom/ibm/icu/impl/number/NumberStringBuilder;Lcom/ibm/icu/impl/number/formatters/PositiveNegativeAffixFormat$IProperties;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 223
    invoke-interface {p3}, Lcom/ibm/icu/impl/number/formatters/PositiveNegativeAffixFormat$IProperties;->getPositivePrefix()Ljava/lang/String;

    move-result-object v0

    .line 224
    invoke-interface {p3}, Lcom/ibm/icu/impl/number/formatters/PositiveNegativeAffixFormat$IProperties;->getPositiveSuffix()Ljava/lang/String;

    move-result-object v1

    .line 225
    if-eqz v0, :cond_0

    .line 226
    iget-object v2, p0, Lcom/ibm/icu/impl/number/PNAffixGenerator;->sb5:Lcom/ibm/icu/impl/number/NumberStringBuilder;

    invoke-virtual {v2}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->clear()Lcom/ibm/icu/impl/number/NumberStringBuilder;

    move-result-object p1

    .line 227
    invoke-virtual {p1, v0, v3}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->append(Ljava/lang/CharSequence;Lcom/ibm/icu/text/NumberFormat$Field;)I

    .line 229
    :cond_0
    if-eqz v1, :cond_1

    .line 230
    iget-object v0, p0, Lcom/ibm/icu/impl/number/PNAffixGenerator;->sb6:Lcom/ibm/icu/impl/number/NumberStringBuilder;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->clear()Lcom/ibm/icu/impl/number/NumberStringBuilder;

    move-result-object p2

    .line 231
    invoke-virtual {p2, v1, v3}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->append(Ljava/lang/CharSequence;Lcom/ibm/icu/text/NumberFormat$Field;)I

    .line 233
    :cond_1
    invoke-virtual {p1}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 234
    iget-object v0, p0, Lcom/ibm/icu/impl/number/PNAffixGenerator;->resultInstance:Lcom/ibm/icu/impl/number/PNAffixGenerator$Result;

    sget-object v1, Lcom/ibm/icu/impl/number/modifiers/ConstantAffixModifier;->EMPTY:Lcom/ibm/icu/impl/number/Modifier$AffixModifier;

    iput-object v1, v0, Lcom/ibm/icu/impl/number/PNAffixGenerator$Result;->positive:Lcom/ibm/icu/impl/number/Modifier$AffixModifier;

    .line 244
    :cond_2
    :goto_0
    return-void

    .line 237
    :cond_3
    iget-object v0, p0, Lcom/ibm/icu/impl/number/PNAffixGenerator;->resultInstance:Lcom/ibm/icu/impl/number/PNAffixGenerator$Result;

    iget-object v0, v0, Lcom/ibm/icu/impl/number/PNAffixGenerator$Result;->positive:Lcom/ibm/icu/impl/number/Modifier$AffixModifier;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ibm/icu/impl/number/PNAffixGenerator;->resultInstance:Lcom/ibm/icu/impl/number/PNAffixGenerator$Result;

    iget-object v0, v0, Lcom/ibm/icu/impl/number/PNAffixGenerator$Result;->positive:Lcom/ibm/icu/impl/number/Modifier$AffixModifier;

    instance-of v0, v0, Lcom/ibm/icu/impl/number/modifiers/ConstantMultiFieldModifier;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ibm/icu/impl/number/PNAffixGenerator;->resultInstance:Lcom/ibm/icu/impl/number/PNAffixGenerator$Result;

    iget-object v0, v0, Lcom/ibm/icu/impl/number/PNAffixGenerator$Result;->positive:Lcom/ibm/icu/impl/number/Modifier$AffixModifier;

    check-cast v0, Lcom/ibm/icu/impl/number/modifiers/ConstantMultiFieldModifier;

    .line 239
    invoke-virtual {v0, p1, p2}, Lcom/ibm/icu/impl/number/modifiers/ConstantMultiFieldModifier;->contentEquals(Lcom/ibm/icu/impl/number/NumberStringBuilder;Lcom/ibm/icu/impl/number/NumberStringBuilder;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 243
    :cond_4
    iget-object v0, p0, Lcom/ibm/icu/impl/number/PNAffixGenerator;->resultInstance:Lcom/ibm/icu/impl/number/PNAffixGenerator$Result;

    new-instance v1, Lcom/ibm/icu/impl/number/modifiers/ConstantMultiFieldModifier;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/ibm/icu/impl/number/modifiers/ConstantMultiFieldModifier;-><init>(Lcom/ibm/icu/impl/number/NumberStringBuilder;Lcom/ibm/icu/impl/number/NumberStringBuilder;Z)V

    iput-object v1, v0, Lcom/ibm/icu/impl/number/PNAffixGenerator$Result;->positive:Lcom/ibm/icu/impl/number/Modifier$AffixModifier;

    goto :goto_0
.end method


# virtual methods
.method public getModifiers(Lcom/ibm/icu/text/DecimalFormatSymbols;Lcom/ibm/icu/impl/number/formatters/PositiveNegativeAffixFormat$IProperties;)Lcom/ibm/icu/impl/number/PNAffixGenerator$Result;
    .locals 6

    .prologue
    .line 69
    .line 71
    invoke-virtual {p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v2

    .line 72
    invoke-virtual {p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getInternationalCurrencySymbol()Ljava/lang/String;

    move-result-object v3

    .line 73
    invoke-virtual {p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    .line 69
    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/impl/number/PNAffixGenerator;->getModifiers(Lcom/ibm/icu/text/DecimalFormatSymbols;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/impl/number/formatters/PositiveNegativeAffixFormat$IProperties;)Lcom/ibm/icu/impl/number/PNAffixGenerator$Result;

    move-result-object v0

    return-object v0
.end method

.method public getModifiers(Lcom/ibm/icu/text/DecimalFormatSymbols;Ljava/lang/String;Lcom/ibm/icu/impl/number/formatters/PositiveNegativeAffixFormat$IProperties;)Lcom/ibm/icu/impl/number/PNAffixGenerator$Result;
    .locals 6

    .prologue
    .line 93
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p2

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/impl/number/PNAffixGenerator;->getModifiers(Lcom/ibm/icu/text/DecimalFormatSymbols;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/impl/number/formatters/PositiveNegativeAffixFormat$IProperties;)Lcom/ibm/icu/impl/number/PNAffixGenerator$Result;

    move-result-object v0

    return-object v0
.end method

.method public getModifiers(Lcom/ibm/icu/text/DecimalFormatSymbols;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/impl/number/formatters/PositiveNegativeAffixFormat$IProperties;)Lcom/ibm/icu/impl/number/PNAffixGenerator$Result;
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 115
    invoke-interface {p5}, Lcom/ibm/icu/impl/number/formatters/PositiveNegativeAffixFormat$IProperties;->getSignAlwaysShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-direct/range {p0 .. p5}, Lcom/ibm/icu/impl/number/PNAffixGenerator;->getModifiersWithPlusSign(Lcom/ibm/icu/text/DecimalFormatSymbols;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/impl/number/formatters/PositiveNegativeAffixFormat$IProperties;)Lcom/ibm/icu/impl/number/PNAffixGenerator$Result;

    move-result-object v0

    .line 144
    :goto_0
    return-object v0

    .line 119
    :cond_0
    invoke-interface {p5}, Lcom/ibm/icu/impl/number/formatters/PositiveNegativeAffixFormat$IProperties;->getPositivePrefixPattern()Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-interface {p5}, Lcom/ibm/icu/impl/number/formatters/PositiveNegativeAffixFormat$IProperties;->getPositiveSuffixPattern()Ljava/lang/String;

    move-result-object v7

    .line 121
    invoke-interface {p5}, Lcom/ibm/icu/impl/number/formatters/PositiveNegativeAffixFormat$IProperties;->getNegativePrefixPattern()Ljava/lang/String;

    move-result-object v8

    .line 122
    invoke-interface {p5}, Lcom/ibm/icu/impl/number/formatters/PositiveNegativeAffixFormat$IProperties;->getNegativeSuffixPattern()Ljava/lang/String;

    move-result-object v9

    .line 125
    iget-object v1, p0, Lcom/ibm/icu/impl/number/PNAffixGenerator;->sb1:Lcom/ibm/icu/impl/number/NumberStringBuilder;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->clear()Lcom/ibm/icu/impl/number/NumberStringBuilder;

    .line 126
    iget-object v1, p0, Lcom/ibm/icu/impl/number/PNAffixGenerator;->sb2:Lcom/ibm/icu/impl/number/NumberStringBuilder;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->clear()Lcom/ibm/icu/impl/number/NumberStringBuilder;

    .line 127
    iget-object v6, p0, Lcom/ibm/icu/impl/number/PNAffixGenerator;->sb1:Lcom/ibm/icu/impl/number/NumberStringBuilder;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->unescape(Ljava/lang/CharSequence;Lcom/ibm/icu/text/DecimalFormatSymbols;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/impl/number/NumberStringBuilder;)V

    .line 128
    iget-object v6, p0, Lcom/ibm/icu/impl/number/PNAffixGenerator;->sb2:Lcom/ibm/icu/impl/number/NumberStringBuilder;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->unescape(Ljava/lang/CharSequence;Lcom/ibm/icu/text/DecimalFormatSymbols;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/impl/number/NumberStringBuilder;)V

    .line 129
    iget-object v0, p0, Lcom/ibm/icu/impl/number/PNAffixGenerator;->sb1:Lcom/ibm/icu/impl/number/NumberStringBuilder;

    iget-object v1, p0, Lcom/ibm/icu/impl/number/PNAffixGenerator;->sb2:Lcom/ibm/icu/impl/number/NumberStringBuilder;

    invoke-direct {p0, v0, v1, p5}, Lcom/ibm/icu/impl/number/PNAffixGenerator;->setPositiveResult(Lcom/ibm/icu/impl/number/NumberStringBuilder;Lcom/ibm/icu/impl/number/NumberStringBuilder;Lcom/ibm/icu/impl/number/formatters/PositiveNegativeAffixFormat$IProperties;)V

    .line 132
    if-nez v8, :cond_1

    if-nez v9, :cond_1

    .line 135
    iget-object v0, p0, Lcom/ibm/icu/impl/number/PNAffixGenerator;->sb1:Lcom/ibm/icu/impl/number/NumberStringBuilder;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getMinusSignString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/ibm/icu/text/NumberFormat$Field;->SIGN:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual {v0, v1, v2, v3}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->insert(ILjava/lang/CharSequence;Lcom/ibm/icu/text/NumberFormat$Field;)I

    .line 142
    :goto_1
    iget-object v0, p0, Lcom/ibm/icu/impl/number/PNAffixGenerator;->sb1:Lcom/ibm/icu/impl/number/NumberStringBuilder;

    iget-object v1, p0, Lcom/ibm/icu/impl/number/PNAffixGenerator;->sb2:Lcom/ibm/icu/impl/number/NumberStringBuilder;

    invoke-direct {p0, v0, v1, p5}, Lcom/ibm/icu/impl/number/PNAffixGenerator;->setNegativeResult(Lcom/ibm/icu/impl/number/NumberStringBuilder;Lcom/ibm/icu/impl/number/NumberStringBuilder;Lcom/ibm/icu/impl/number/formatters/PositiveNegativeAffixFormat$IProperties;)V

    .line 144
    iget-object v0, p0, Lcom/ibm/icu/impl/number/PNAffixGenerator;->resultInstance:Lcom/ibm/icu/impl/number/PNAffixGenerator$Result;

    goto :goto_0

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/impl/number/PNAffixGenerator;->sb1:Lcom/ibm/icu/impl/number/NumberStringBuilder;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->clear()Lcom/ibm/icu/impl/number/NumberStringBuilder;

    .line 138
    iget-object v0, p0, Lcom/ibm/icu/impl/number/PNAffixGenerator;->sb2:Lcom/ibm/icu/impl/number/NumberStringBuilder;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->clear()Lcom/ibm/icu/impl/number/NumberStringBuilder;

    .line 139
    iget-object v6, p0, Lcom/ibm/icu/impl/number/PNAffixGenerator;->sb1:Lcom/ibm/icu/impl/number/NumberStringBuilder;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->unescape(Ljava/lang/CharSequence;Lcom/ibm/icu/text/DecimalFormatSymbols;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/impl/number/NumberStringBuilder;)V

    .line 140
    iget-object v6, p0, Lcom/ibm/icu/impl/number/PNAffixGenerator;->sb2:Lcom/ibm/icu/impl/number/NumberStringBuilder;

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->unescape(Ljava/lang/CharSequence;Lcom/ibm/icu/text/DecimalFormatSymbols;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/impl/number/NumberStringBuilder;)V

    goto :goto_1
.end method
