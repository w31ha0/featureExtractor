.class Lcom/ibm/icu/text/QuantityFormatter;
.super Ljava/lang/Object;
.source "QuantityFormatter.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final templates:[Lcom/ibm/icu/text/SimpleFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/ibm/icu/text/QuantityFormatter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/ibm/icu/text/QuantityFormatter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sget v0, Lcom/ibm/icu/impl/StandardPlural;->COUNT:I

    new-array v0, v0, [Lcom/ibm/icu/text/SimpleFormatter;

    iput-object v0, p0, Lcom/ibm/icu/text/QuantityFormatter;->templates:[Lcom/ibm/icu/text/SimpleFormatter;

    .line 29
    return-void
.end method

.method public static format(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Ljava/text/FieldPosition;)Ljava/lang/StringBuilder;
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 127
    new-array v0, v1, [I

    .line 128
    new-array v1, v1, [Ljava/lang/CharSequence;

    aput-object p1, v1, v3

    invoke-static {p0, p2, v0, v1}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->formatAndAppend(Ljava/lang/String;Ljava/lang/StringBuilder;[I[Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p3}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    :cond_0
    aget v1, v0, v3

    if-ltz v1, :cond_2

    .line 131
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v1

    aget v2, v0, v3

    add-int/2addr v1, v2

    invoke-virtual {p3, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 132
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v1

    aget v0, v0, v3

    add-int/2addr v0, v1

    invoke-virtual {p3, v0}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 138
    :cond_1
    :goto_0
    return-object p2

    .line 134
    :cond_2
    invoke-virtual {p3, v3}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 135
    invoke-virtual {p3, v3}, Ljava/text/FieldPosition;->setEndIndex(I)V

    goto :goto_0
.end method

.method public static selectPlural(Ljava/lang/Number;Lcom/ibm/icu/text/NumberFormat;Lcom/ibm/icu/text/PluralRules;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Lcom/ibm/icu/impl/StandardPlural;
    .locals 7

    .prologue
    .line 110
    new-instance v6, Lcom/ibm/icu/text/UFieldPosition;

    invoke-virtual {p4}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v0

    invoke-virtual {p4}, Ljava/text/FieldPosition;->getField()I

    move-result v1

    invoke-direct {v6, v0, v1}, Lcom/ibm/icu/text/UFieldPosition;-><init>(Ljava/text/Format$Field;I)V

    .line 111
    invoke-virtual {p1, p0, p3, v6}, Lcom/ibm/icu/text/NumberFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 113
    new-instance v0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;

    .line 114
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    .line 115
    invoke-virtual {v6}, Lcom/ibm/icu/text/UFieldPosition;->getCountVisibleFractionDigits()I

    move-result v3

    invoke-virtual {v6}, Lcom/ibm/icu/text/UFieldPosition;->getFractionDigits()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/PluralRules$FixedDecimal;-><init>(DIJ)V

    .line 116
    invoke-virtual {p2, v0}, Lcom/ibm/icu/text/PluralRules;->select(Lcom/ibm/icu/text/PluralRules$IFixedDecimal;)Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-virtual {v6}, Lcom/ibm/icu/text/UFieldPosition;->getBeginIndex()I

    move-result v1

    invoke-virtual {p4, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 118
    invoke-virtual {v6}, Lcom/ibm/icu/text/UFieldPosition;->getEndIndex()I

    move-result v1

    invoke-virtual {p4, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 119
    invoke-static {v0}, Lcom/ibm/icu/impl/StandardPlural;->orOtherFromString(Ljava/lang/CharSequence;)Lcom/ibm/icu/impl/StandardPlural;

    move-result-object v0

    return-object v0
.end method
