.class public abstract Lcom/ibm/icu/impl/number/Format$SingularFormat;
.super Lcom/ibm/icu/impl/number/Format;
.source "Format.java"

# interfaces
.implements Lcom/ibm/icu/impl/number/Exportable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/Format;-><init>()V

    return-void
.end method

.method private formatToStringBuilder(Lcom/ibm/icu/impl/number/FormatQuantity;)Lcom/ibm/icu/impl/number/NumberStringBuilder;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 79
    sget-object v0, Lcom/ibm/icu/impl/number/Format$SingularFormat;->threadLocalModifierHolder:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/number/ModifierHolder;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/ModifierHolder;->clear()Lcom/ibm/icu/impl/number/ModifierHolder;

    move-result-object v1

    .line 80
    sget-object v0, Lcom/ibm/icu/impl/number/Format$SingularFormat;->threadLocalStringBuilder:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/number/NumberStringBuilder;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->clear()Lcom/ibm/icu/impl/number/NumberStringBuilder;

    move-result-object v0

    .line 83
    invoke-virtual {p0, p1, v1, v0, v3}, Lcom/ibm/icu/impl/number/Format$SingularFormat;->process(Lcom/ibm/icu/impl/number/FormatQuantity;Lcom/ibm/icu/impl/number/ModifierHolder;Lcom/ibm/icu/impl/number/NumberStringBuilder;I)I

    move-result v2

    .line 86
    invoke-virtual {v1, v0, v3, v2}, Lcom/ibm/icu/impl/number/ModifierHolder;->applyAll(Lcom/ibm/icu/impl/number/NumberStringBuilder;II)I

    move-result v1

    add-int/2addr v1, v2

    .line 87
    return-object v0
.end method


# virtual methods
.method public format(Lcom/ibm/icu/impl/number/FormatQuantity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/number/Format$SingularFormat;->formatToStringBuilder(Lcom/ibm/icu/impl/number/FormatQuantity;)Lcom/ibm/icu/impl/number/NumberStringBuilder;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(Lcom/ibm/icu/impl/number/FormatQuantity;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)V
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/number/Format$SingularFormat;->formatToStringBuilder(Lcom/ibm/icu/impl/number/FormatQuantity;)Lcom/ibm/icu/impl/number/NumberStringBuilder;

    move-result-object v0

    .line 68
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, p3, v1}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->populateFieldPosition(Ljava/text/FieldPosition;I)V

    .line 69
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 70
    return-void
.end method

.method public formatToCharacterIterator(Lcom/ibm/icu/impl/number/FormatQuantity;)Ljava/text/AttributedCharacterIterator;
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/number/Format$SingularFormat;->formatToStringBuilder(Lcom/ibm/icu/impl/number/FormatQuantity;)Lcom/ibm/icu/impl/number/NumberStringBuilder;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/NumberStringBuilder;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    return-object v0
.end method

.method public abstract process(Lcom/ibm/icu/impl/number/FormatQuantity;Lcom/ibm/icu/impl/number/ModifierHolder;Lcom/ibm/icu/impl/number/NumberStringBuilder;I)I
.end method
