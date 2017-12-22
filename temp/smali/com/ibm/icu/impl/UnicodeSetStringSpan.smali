.class public Lcom/ibm/icu/impl/UnicodeSetStringSpan;
.super Ljava/lang/Object;
.source "UnicodeSetStringSpan.java"


# instance fields
.field private all:Z

.field private final maxLength16:I

.field private offsets:Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;

.field private someRelevant:Z

.field private spanLengths:[S

.field private spanNotSet:Lcom/ibm/icu/text/UnicodeSet;

.field private spanSet:Lcom/ibm/icu/text/UnicodeSet;

.field private strings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ibm/icu/text/UnicodeSet;Ljava/util/ArrayList;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/text/UnicodeSet;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    const/16 v9, 0xff

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    const v3, 0x10ffff

    invoke-direct {v0, v2, v3}, Lcom/ibm/icu/text/UnicodeSet;-><init>(II)V

    iput-object v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanSet:Lcom/ibm/icu/text/UnicodeSet;

    .line 91
    iput-object p2, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    .line 92
    const/16 v0, 0x7f

    if-ne p3, v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->all:Z

    .line 93
    iget-object v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/UnicodeSet;->retainAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    .line 94
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanSet:Lcom/ibm/icu/text/UnicodeSet;

    iput-object v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanNotSet:Lcom/ibm/icu/text/UnicodeSet;

    .line 99
    :cond_0
    new-instance v0, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;

    invoke-direct {v0}, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->offsets:Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;

    .line 108
    iget-object v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 112
    iput-boolean v2, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->someRelevant:Z

    move v4, v2

    move v6, v2

    .line 113
    :goto_1
    if-ge v6, v5, :cond_3

    .line 114
    iget-object v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 115
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 116
    iget-object v7, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanSet:Lcom/ibm/icu/text/UnicodeSet;

    sget-object v8, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->CONTAINED:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    invoke-virtual {v7, v0, v8}, Lcom/ibm/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;Lcom/ibm/icu/text/UnicodeSet$SpanCondition;)I

    move-result v0

    .line 117
    if-ge v0, v3, :cond_1

    .line 118
    iput-boolean v1, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->someRelevant:Z

    .line 120
    :cond_1
    if-le v3, v4, :cond_11

    move v0, v3

    .line 113
    :goto_2
    add-int/lit8 v3, v6, 0x1

    move v4, v0

    move v6, v3

    goto :goto_1

    :cond_2
    move v0, v2

    .line 92
    goto :goto_0

    .line 124
    :cond_3
    iput v4, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->maxLength16:I

    .line 125
    iget-boolean v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->someRelevant:Z

    if-nez v0, :cond_5

    and-int/lit8 v0, p3, 0x40

    if-nez v0, :cond_5

    .line 204
    :cond_4
    :goto_3
    return-void

    .line 131
    :cond_5
    iget-boolean v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->all:Z

    if-eqz v0, :cond_6

    .line 132
    iget-object v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Lcom/ibm/icu/text/UnicodeSet;

    .line 139
    :cond_6
    iget-boolean v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->all:Z

    if-eqz v0, :cond_b

    .line 141
    mul-int/lit8 v0, v5, 0x2

    .line 145
    :goto_4
    new-array v0, v0, [S

    iput-object v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanLengths:[S

    .line 147
    iget-boolean v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->all:Z

    if-eqz v0, :cond_c

    move v1, v5

    :goto_5
    move v3, v2

    .line 157
    :goto_6
    if-ge v3, v5, :cond_10

    .line 158
    iget-object v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 159
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    .line 160
    iget-object v6, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanSet:Lcom/ibm/icu/text/UnicodeSet;

    sget-object v7, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->CONTAINED:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    invoke-virtual {v6, v0, v7}, Lcom/ibm/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;Lcom/ibm/icu/text/UnicodeSet$SpanCondition;)I

    move-result v6

    .line 161
    if-ge v6, v4, :cond_e

    .line 163
    and-int/lit8 v7, p3, 0x2

    if-eqz v7, :cond_d

    .line 164
    and-int/lit8 v7, p3, 0x20

    if-eqz v7, :cond_7

    .line 165
    iget-object v7, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanLengths:[S

    invoke-static {v6}, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->makeSpanLengthByte(I)S

    move-result v6

    aput-short v6, v7, v3

    .line 167
    :cond_7
    and-int/lit8 v6, p3, 0x10

    if-eqz v6, :cond_8

    .line 168
    iget-object v6, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanSet:Lcom/ibm/icu/text/UnicodeSet;

    sget-object v7, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->CONTAINED:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    .line 169
    invoke-virtual {v6, v0, v4, v7}, Lcom/ibm/icu/text/UnicodeSet;->spanBack(Ljava/lang/CharSequence;ILcom/ibm/icu/text/UnicodeSet$SpanCondition;)I

    move-result v6

    sub-int v6, v4, v6

    .line 170
    iget-object v7, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanLengths:[S

    add-int v8, v1, v3

    invoke-static {v6}, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->makeSpanLengthByte(I)S

    move-result v6

    aput-short v6, v7, v8

    .line 177
    :cond_8
    :goto_7
    and-int/lit8 v6, p3, 0x1

    if-eqz v6, :cond_a

    .line 181
    and-int/lit8 v6, p3, 0x20

    if-eqz v6, :cond_9

    .line 182
    invoke-virtual {v0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v6

    .line 183
    invoke-direct {p0, v6}, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->addToSpanNotSet(I)V

    .line 185
    :cond_9
    and-int/lit8 v6, p3, 0x10

    if-eqz v6, :cond_a

    .line 186
    invoke-virtual {v0, v4}, Ljava/lang/String;->codePointBefore(I)I

    move-result v0

    .line 187
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->addToSpanNotSet(I)V

    .line 157
    :cond_a
    :goto_8
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_6

    :cond_b
    move v0, v5

    .line 143
    goto :goto_4

    :cond_c
    move v1, v2

    .line 152
    goto :goto_5

    .line 173
    :cond_d
    iget-object v6, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanLengths:[S

    iget-object v7, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanLengths:[S

    add-int v8, v1, v3

    aput-short v2, v7, v8

    aput-short v2, v6, v3

    goto :goto_7

    .line 191
    :cond_e
    iget-boolean v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->all:Z

    if-eqz v0, :cond_f

    .line 192
    iget-object v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanLengths:[S

    iget-object v4, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanLengths:[S

    add-int v6, v1, v3

    aput-short v9, v4, v6

    aput-short v9, v0, v3

    goto :goto_8

    .line 195
    :cond_f
    iget-object v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanLengths:[S

    aput-short v9, v0, v3

    goto :goto_8

    .line 201
    :cond_10
    iget-boolean v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->all:Z

    if-eqz v0, :cond_4

    .line 202
    iget-object v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanNotSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Lcom/ibm/icu/text/UnicodeSet;

    goto/16 :goto_3

    :cond_11
    move v0, v4

    goto/16 :goto_2
.end method

.method private addToSpanNotSet(I)V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanNotSet:Lcom/ibm/icu/text/UnicodeSet;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/Utility;->sameObjects(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanNotSet:Lcom/ibm/icu/text/UnicodeSet;

    iget-object v1, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/Utility;->sameObjects(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    :goto_0
    return-void

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->cloneAsThawed()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanNotSet:Lcom/ibm/icu/text/UnicodeSet;

    .line 253
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanNotSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_0
.end method

.method static makeSpanLengthByte(I)S
    .locals 1

    .prologue
    const/16 v0, 0xfe

    .line 936
    if-ge p0, v0, :cond_0

    int-to-short v0, p0

    :cond_0
    return v0
.end method

.method private static matches16(Ljava/lang/CharSequence;ILjava/lang/String;I)Z
    .locals 4

    .prologue
    .line 941
    add-int v0, p1, p3

    .line 942
    :goto_0
    add-int/lit8 v1, p3, -0x1

    if-lez p3, :cond_0

    .line 943
    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_1

    .line 944
    const/4 v0, 0x0

    .line 947
    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move p3, v1

    goto :goto_0
.end method

.method static matches16CPB(Ljava/lang/CharSequence;IILjava/lang/String;I)Z
    .locals 1

    .prologue
    .line 961
    invoke-static {p0, p1, p3, p4}, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->matches16(Ljava/lang/CharSequence;ILjava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    if-lez p1, :cond_0

    add-int/lit8 v0, p1, -0x1

    .line 962
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 963
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    add-int v0, p1, p4

    if-ge v0, p2, :cond_1

    add-int v0, p1, p4

    add-int/lit8 v0, v0, -0x1

    .line 964
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int v0, p1, p4

    .line 965
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 961
    :goto_0
    return v0

    .line 965
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized spanContainedAndCount(Ljava/lang/CharSequence;ILcom/ibm/icu/util/OutputInt;)I
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 600
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->offsets:Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;

    iget v1, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->maxLength16:I

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->setMaxLength(I)V

    .line 601
    iget-object v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 602
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    .line 604
    sub-int v0, v7, p2

    move v4, v3

    move v5, v0

    move v1, p2

    .line 606
    :goto_0
    if-eqz v5, :cond_4

    .line 608
    iget-object v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-static {v0, p1, v1, v5}, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanOne(Lcom/ibm/icu/text/UnicodeSet;Ljava/lang/CharSequence;II)I

    move-result v0

    .line 609
    if-lez v0, :cond_0

    .line 610
    iget-object v2, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->offsets:Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v2, v0, v8}, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->addOffsetAndCount(II)V

    :cond_0
    move v2, v3

    .line 613
    :goto_1
    if-ge v2, v6, :cond_2

    .line 614
    iget-object v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 615
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    .line 618
    if-gt v8, v5, :cond_1

    iget-object v9, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->offsets:Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;

    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v9, v8, v10}, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->hasCountAtOffset(II)Z

    move-result v9

    if-nez v9, :cond_1

    .line 619
    invoke-static {p1, v1, v7, v0, v8}, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->matches16CPB(Ljava/lang/CharSequence;IILjava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 620
    iget-object v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->offsets:Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v0, v8, v9}, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->addOffsetAndCount(II)V

    .line 613
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 624
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->offsets:Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 625
    iput v4, p3, Lcom/ibm/icu/util/OutputInt;->value:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .line 635
    :goto_2
    monitor-exit p0

    return v0

    .line 629
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->offsets:Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;

    invoke-virtual {v0, p3}, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->popMinimum(Lcom/ibm/icu/util/OutputInt;)I

    move-result v2

    .line 630
    iget v0, p3, Lcom/ibm/icu/util/OutputInt;->value:I

    .line 631
    add-int p2, v1, v2

    .line 632
    sub-int v1, v5, v2

    move v4, v0

    move v5, v1

    move v1, p2

    .line 633
    goto :goto_0

    .line 634
    :cond_4
    iput v4, p3, Lcom/ibm/icu/util/OutputInt;->value:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 635
    goto :goto_2

    .line 600
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private spanNot(Ljava/lang/CharSequence;ILcom/ibm/icu/util/OutputInt;)I
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 839
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 840
    sub-int v0, v1, p2

    .line 841
    iget-object v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v0, v4

    .line 847
    :cond_0
    if-nez p3, :cond_1

    .line 848
    iget-object v2, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanNotSet:Lcom/ibm/icu/text/UnicodeSet;

    sget-object v3, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    invoke-virtual {v2, p1, p2, v3}, Lcom/ibm/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;ILcom/ibm/icu/text/UnicodeSet$SpanCondition;)I

    move-result v2

    move v5, v0

    .line 853
    :goto_0
    if-ne v2, v1, :cond_2

    move v0, v1

    .line 889
    :goto_1
    return v0

    .line 850
    :cond_1
    iget-object v2, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanNotSet:Lcom/ibm/icu/text/UnicodeSet;

    sget-object v3, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    invoke-virtual {v2, p1, p2, v3, p3}, Lcom/ibm/icu/text/UnicodeSet;->spanAndCount(Ljava/lang/CharSequence;ILcom/ibm/icu/text/UnicodeSet$SpanCondition;Lcom/ibm/icu/util/OutputInt;)I

    move-result v2

    .line 851
    iget v3, p3, Lcom/ibm/icu/util/OutputInt;->value:I

    add-int/2addr v0, v3

    iput v0, p3, Lcom/ibm/icu/util/OutputInt;->value:I

    move v5, v0

    goto :goto_0

    .line 857
    :cond_2
    sub-int v7, v1, v2

    .line 861
    iget-object v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-static {v0, p1, v2, v7}, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanOne(Lcom/ibm/icu/text/UnicodeSet;Ljava/lang/CharSequence;II)I

    move-result v8

    .line 862
    if-lez v8, :cond_3

    move v0, v2

    .line 863
    goto :goto_1

    :cond_3
    move v3, v4

    .line 867
    :goto_2
    if-ge v3, v6, :cond_6

    .line 868
    iget-object v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanLengths:[S

    aget-short v0, v0, v3

    const/16 v9, 0xff

    if-ne v0, v9, :cond_5

    .line 867
    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 871
    :cond_5
    iget-object v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 873
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    .line 874
    if-gt v9, v7, :cond_4

    invoke-static {p1, v2, v1, v0, v9}, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->matches16CPB(Ljava/lang/CharSequence;IILjava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    .line 875
    goto :goto_1

    .line 882
    :cond_6
    sub-int p2, v2, v8

    .line 883
    add-int v2, v7, v8

    .line 884
    add-int/lit8 v0, v5, 0x1

    .line 885
    if-nez v2, :cond_0

    .line 886
    if-eqz p3, :cond_7

    .line 887
    iput v0, p3, Lcom/ibm/icu/util/OutputInt;->value:I

    :cond_7
    move v0, v1

    .line 889
    goto :goto_1
.end method

.method private spanNotBack(Ljava/lang/CharSequence;I)I
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 893
    .line 894
    iget-object v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v0, p2

    .line 898
    :cond_0
    iget-object v2, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanNotSet:Lcom/ibm/icu/text/UnicodeSet;

    sget-object v3, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    invoke-virtual {v2, p1, v0, v3}, Lcom/ibm/icu/text/UnicodeSet;->spanBack(Ljava/lang/CharSequence;ILcom/ibm/icu/text/UnicodeSet$SpanCondition;)I

    move-result v2

    .line 899
    if-nez v2, :cond_1

    move v0, v1

    .line 931
    :goto_0
    return v0

    .line 905
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-static {v0, p1, v2}, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanOneBack(Lcom/ibm/icu/text/UnicodeSet;Ljava/lang/CharSequence;I)I

    move-result v5

    .line 906
    if-lez v5, :cond_2

    move v0, v2

    .line 907
    goto :goto_0

    :cond_2
    move v3, v1

    .line 911
    :goto_1
    if-ge v3, v4, :cond_5

    .line 915
    iget-object v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanLengths:[S

    aget-short v0, v0, v3

    const/16 v6, 0xff

    if-ne v0, v6, :cond_4

    .line 911
    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 918
    :cond_4
    iget-object v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 920
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    .line 921
    if-gt v6, v2, :cond_3

    sub-int v7, v2, v6

    invoke-static {p1, v7, p2, v0, v6}, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->matches16CPB(Ljava/lang/CharSequence;IILjava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    .line 922
    goto :goto_0

    .line 929
    :cond_5
    add-int v0, v2, v5

    .line 930
    if-nez v0, :cond_0

    move v0, v1

    .line 931
    goto :goto_0
.end method

.method static spanOne(Lcom/ibm/icu/text/UnicodeSet;Ljava/lang/CharSequence;II)I
    .locals 4

    .prologue
    const/4 v0, 0x2

    .line 973
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 974
    const v2, 0xd800

    if-lt v1, v2, :cond_1

    const v2, 0xdbff

    if-gt v1, v2, :cond_1

    if-lt p3, v0, :cond_1

    .line 975
    add-int/lit8 v2, p2, 0x1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 976
    invoke-static {v2}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 977
    invoke-static {v1, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    .line 978
    invoke-virtual {p0, v1}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 981
    :goto_0
    return v0

    .line 978
    :cond_0
    const/4 v0, -0x2

    goto :goto_0

    .line 981
    :cond_1
    invoke-virtual {p0, v1}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static spanOneBack(Lcom/ibm/icu/text/UnicodeSet;Ljava/lang/CharSequence;I)I
    .locals 4

    .prologue
    const/4 v0, 0x2

    .line 985
    add-int/lit8 v1, p2, -0x1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 986
    const v2, 0xdc00

    if-lt v1, v2, :cond_1

    const v2, 0xdfff

    if-gt v1, v2, :cond_1

    if-lt p2, v0, :cond_1

    .line 987
    add-int/lit8 v2, p2, -0x2

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 988
    invoke-static {v2}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 989
    invoke-static {v2, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    .line 990
    invoke-virtual {p0, v1}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 993
    :goto_0
    return v0

    .line 990
    :cond_0
    const/4 v0, -0x2

    goto :goto_0

    .line 993
    :cond_1
    invoke-virtual {p0, v1}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private declared-synchronized spanWithStrings(Ljava/lang/CharSequence;IILcom/ibm/icu/text/UnicodeSet$SpanCondition;)I
    .locals 15

    .prologue
    .line 387
    monitor-enter p0

    const/4 v1, 0x0

    .line 388
    :try_start_0
    sget-object v2, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->CONTAINED:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    move-object/from16 v0, p4

    if-ne v0, v2, :cond_0

    .line 390
    iget v1, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->maxLength16:I

    .line 392
    :cond_0
    iget-object v2, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->offsets:Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;

    invoke-virtual {v2, v1}, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->setMaxLength(I)V

    .line 393
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    .line 394
    sub-int v1, v7, p3

    .line 395
    sub-int v3, p3, p2

    .line 396
    iget-object v2, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    move v11, v1

    move/from16 v8, p3

    .line 398
    :goto_0
    sget-object v1, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->CONTAINED:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    move-object/from16 v0, p4

    if-ne v0, v1, :cond_8

    .line 399
    const/4 v1, 0x0

    move v5, v1

    :goto_1
    if-ge v5, v12, :cond_11

    .line 400
    iget-object v1, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanLengths:[S

    aget-short v2, v1, v5

    .line 401
    const/16 v1, 0xff

    if-ne v2, v1, :cond_2

    .line 399
    :cond_1
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_1

    .line 404
    :cond_2
    iget-object v1, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 406
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    .line 409
    const/16 v4, 0xfe

    if-lt v2, v4, :cond_3

    .line 412
    const/4 v2, -0x1

    invoke-virtual {v1, v6, v2}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v2

    .line 415
    :cond_3
    if-le v2, v3, :cond_4

    move v2, v3

    .line 418
    :cond_4
    sub-int v4, v6, v2

    move v14, v4

    move v4, v2

    move v2, v14

    .line 420
    :goto_2
    if-gt v2, v11, :cond_1

    .line 424
    iget-object v9, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->offsets:Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;

    invoke-virtual {v9, v2}, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->containsOffset(I)Z

    move-result v9

    if-nez v9, :cond_7

    sub-int v9, v8, v4

    move-object/from16 v0, p1

    invoke-static {v0, v9, v7, v1, v6}, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->matches16CPB(Ljava/lang/CharSequence;IILjava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    if-eqz v9, :cond_7

    .line 425
    if-ne v2, v11, :cond_6

    move v1, v7

    .line 520
    :cond_5
    :goto_3
    monitor-exit p0

    return v1

    .line 428
    :cond_6
    :try_start_1
    iget-object v9, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->offsets:Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;

    invoke-virtual {v9, v2}, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->addOffset(I)V

    .line 430
    :cond_7
    if-eqz v4, :cond_1

    .line 433
    add-int/lit8 v4, v4, -0x1

    .line 434
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 438
    :cond_8
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 439
    const/4 v1, 0x0

    move v10, v1

    :goto_4
    if-ge v10, v12, :cond_e

    .line 440
    iget-object v1, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanLengths:[S

    aget-short v2, v1, v10

    .line 444
    iget-object v1, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 446
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    .line 449
    const/16 v6, 0xfe

    if-lt v2, v6, :cond_9

    move v2, v9

    .line 454
    :cond_9
    if-le v2, v3, :cond_a

    move v2, v3

    .line 457
    :cond_a
    sub-int v6, v9, v2

    .line 459
    :goto_5
    if-gt v6, v11, :cond_17

    if-ge v2, v4, :cond_b

    move v1, v4

    move v2, v5

    .line 439
    :goto_6
    add-int/lit8 v4, v10, 0x1

    move v5, v2

    move v10, v4

    move v4, v1

    goto :goto_4

    .line 463
    :cond_b
    if-gt v2, v4, :cond_c

    if-le v6, v5, :cond_d

    :cond_c
    sub-int v13, v8, v2

    .line 464
    move-object/from16 v0, p1

    invoke-static {v0, v13, v7, v1, v9}, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->matches16CPB(Ljava/lang/CharSequence;IILjava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_d

    move v1, v2

    move v2, v6

    .line 467
    goto :goto_6

    .line 469
    :cond_d
    add-int/lit8 v2, v2, -0x1

    .line 470
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 474
    :cond_e
    if-nez v5, :cond_f

    if-eqz v4, :cond_11

    .line 477
    :cond_f
    add-int/2addr v8, v5

    .line 478
    sub-int v1, v11, v5

    .line 479
    if-nez v1, :cond_10

    move v1, v7

    .line 480
    goto :goto_3

    .line 482
    :cond_10
    const/4 v3, 0x0

    move v11, v1

    .line 483
    goto/16 :goto_0

    .line 488
    :cond_11
    if-nez v3, :cond_12

    if-nez v8, :cond_13

    .line 494
    :cond_12
    iget-object v1, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->offsets:Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_16

    move v1, v8

    .line 495
    goto :goto_3

    .line 500
    :cond_13
    iget-object v1, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->offsets:Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 503
    iget-object v1, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanSet:Lcom/ibm/icu/text/UnicodeSet;

    sget-object v2, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->CONTAINED:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v8, v2}, Lcom/ibm/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;ILcom/ibm/icu/text/UnicodeSet$SpanCondition;)I

    move-result v1

    .line 504
    sub-int v3, v1, v8

    .line 505
    if-eq v3, v11, :cond_5

    if-eqz v3, :cond_5

    .line 510
    add-int/2addr v8, v3

    .line 511
    sub-int v1, v11, v3

    move v11, v1

    .line 512
    goto/16 :goto_0

    .line 517
    :cond_14
    iget-object v1, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanSet:Lcom/ibm/icu/text/UnicodeSet;

    move-object/from16 v0, p1

    invoke-static {v1, v0, v8, v11}, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanOne(Lcom/ibm/icu/text/UnicodeSet;Ljava/lang/CharSequence;II)I

    move-result v2

    .line 518
    if-lez v2, :cond_16

    .line 519
    if-ne v2, v11, :cond_15

    move v1, v7

    .line 520
    goto/16 :goto_3

    .line 525
    :cond_15
    add-int/2addr v8, v2

    .line 526
    sub-int v1, v11, v2

    .line 527
    iget-object v3, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->offsets:Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;

    invoke-virtual {v3, v2}, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->shift(I)V

    .line 528
    const/4 v3, 0x0

    move v11, v1

    .line 529
    goto/16 :goto_0

    .line 534
    :cond_16
    iget-object v1, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->offsets:Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->popMinimum(Lcom/ibm/icu/util/OutputInt;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 535
    add-int/2addr v8, v1

    .line 536
    sub-int v1, v11, v1

    .line 537
    const/4 v3, 0x0

    move v11, v1

    .line 538
    goto/16 :goto_0

    .line 387
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_17
    move v1, v4

    move v2, v5

    goto/16 :goto_6
.end method


# virtual methods
.method public contains(I)Z
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    return v0
.end method

.method public needsStringSpanUTF16()Z
    .locals 1

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->someRelevant:Z

    return v0
.end method

.method public span(Ljava/lang/CharSequence;ILcom/ibm/icu/text/UnicodeSet$SpanCondition;)I
    .locals 2

    .prologue
    .line 368
    sget-object v0, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    if-ne p3, v0, :cond_1

    .line 369
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanNot(Ljava/lang/CharSequence;ILcom/ibm/icu/util/OutputInt;)I

    move-result v0

    .line 375
    :cond_0
    :goto_0
    return v0

    .line 371
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanSet:Lcom/ibm/icu/text/UnicodeSet;

    sget-object v1, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->CONTAINED:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    invoke-virtual {v0, p1, p2, v1}, Lcom/ibm/icu/text/UnicodeSet;->span(Ljava/lang/CharSequence;ILcom/ibm/icu/text/UnicodeSet$SpanCondition;)I

    move-result v0

    .line 372
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 375
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanWithStrings(Ljava/lang/CharSequence;IILcom/ibm/icu/text/UnicodeSet$SpanCondition;)I

    move-result v0

    goto :goto_0
.end method

.method public spanAndCount(Ljava/lang/CharSequence;ILcom/ibm/icu/text/UnicodeSet$SpanCondition;Lcom/ibm/icu/util/OutputInt;)I
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 557
    sget-object v0, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    if-ne p3, v0, :cond_0

    .line 558
    invoke-direct {p0, p1, p2, p4}, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanNot(Ljava/lang/CharSequence;ILcom/ibm/icu/util/OutputInt;)I

    move-result v0

    .line 595
    :goto_0
    return v0

    .line 562
    :cond_0
    sget-object v0, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->CONTAINED:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    if-ne p3, v0, :cond_1

    .line 563
    invoke-direct {p0, p1, p2, p4}, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanContainedAndCount(Ljava/lang/CharSequence;ILcom/ibm/icu/util/OutputInt;)I

    move-result v0

    goto :goto_0

    .line 566
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 567
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v9

    .line 569
    sub-int v0, v9, p2

    move v6, v1

    move v7, v0

    move v4, p2

    .line 571
    :goto_1
    if-eqz v7, :cond_5

    .line 573
    iget-object v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-static {v0, p1, v4, v7}, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanOne(Lcom/ibm/icu/text/UnicodeSet;Ljava/lang/CharSequence;II)I

    move-result v0

    .line 574
    if-lez v0, :cond_2

    :goto_2
    move v5, v1

    move v3, v0

    .line 576
    :goto_3
    if-ge v5, v8, :cond_3

    .line 577
    iget-object v0, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 578
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 579
    if-ge v3, v2, :cond_6

    if-gt v2, v7, :cond_6

    .line 580
    invoke-static {p1, v4, v9, v0, v2}, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->matches16CPB(Ljava/lang/CharSequence;IILjava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v2

    .line 576
    :goto_4
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v3, v0

    goto :goto_3

    :cond_2
    move v0, v1

    .line 574
    goto :goto_2

    .line 585
    :cond_3
    if-nez v3, :cond_4

    .line 586
    iput v6, p4, Lcom/ibm/icu/util/OutputInt;->value:I

    move v0, v4

    .line 587
    goto :goto_0

    .line 590
    :cond_4
    add-int/lit8 v0, v6, 0x1

    .line 591
    add-int/2addr v4, v3

    .line 592
    sub-int v2, v7, v3

    move v6, v0

    move v7, v2

    .line 593
    goto :goto_1

    .line 594
    :cond_5
    iput v6, p4, Lcom/ibm/icu/util/OutputInt;->value:I

    move v0, v4

    .line 595
    goto :goto_0

    :cond_6
    move v0, v3

    goto :goto_4
.end method

.method public declared-synchronized spanBack(Ljava/lang/CharSequence;ILcom/ibm/icu/text/UnicodeSet$SpanCondition;)I
    .locals 14

    .prologue
    .line 646
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    move-object/from16 v0, p3

    if-ne v0, v1, :cond_1

    .line 647
    invoke-direct/range {p0 .. p2}, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanNotBack(Ljava/lang/CharSequence;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 789
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 649
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanSet:Lcom/ibm/icu/text/UnicodeSet;

    sget-object v2, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->CONTAINED:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    move/from16 v0, p2

    invoke-virtual {v1, p1, v0, v2}, Lcom/ibm/icu/text/UnicodeSet;->spanBack(Ljava/lang/CharSequence;ILcom/ibm/icu/text/UnicodeSet$SpanCondition;)I

    move-result v7

    .line 650
    if-nez v7, :cond_2

    .line 651
    const/4 v1, 0x0

    goto :goto_0

    .line 653
    :cond_2
    sub-int v3, p2, v7

    .line 656
    const/4 v1, 0x0

    .line 657
    sget-object v2, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->CONTAINED:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    move-object/from16 v0, p3

    if-ne v0, v2, :cond_3

    .line 659
    iget v1, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->maxLength16:I

    .line 661
    :cond_3
    iget-object v2, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->offsets:Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;

    invoke-virtual {v2, v1}, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->setMaxLength(I)V

    .line 662
    iget-object v1, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 663
    const/4 v1, 0x0

    .line 664
    iget-boolean v2, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->all:Z

    if-eqz v2, :cond_1a

    move v10, v11

    .line 668
    :goto_1
    sget-object v1, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->CONTAINED:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    move-object/from16 v0, p3

    if-ne v0, v1, :cond_a

    .line 669
    const/4 v1, 0x0

    move v5, v1

    :goto_2
    if-ge v5, v11, :cond_13

    .line 670
    iget-object v1, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanLengths:[S

    add-int v2, v10, v5

    aget-short v2, v1, v2

    .line 671
    const/16 v1, 0xff

    if-ne v2, v1, :cond_5

    .line 669
    :cond_4
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_2

    .line 674
    :cond_5
    iget-object v1, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 676
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    .line 679
    const/16 v4, 0xfe

    if-lt v2, v4, :cond_6

    .line 683
    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v2

    .line 684
    sub-int v2, v6, v2

    .line 686
    :cond_6
    if-le v2, v3, :cond_7

    move v2, v3

    .line 689
    :cond_7
    sub-int v4, v6, v2

    move v13, v4

    move v4, v2

    move v2, v13

    .line 691
    :goto_3
    if-gt v2, v7, :cond_4

    .line 695
    iget-object v8, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->offsets:Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;

    invoke-virtual {v8, v2}, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->containsOffset(I)Z

    move-result v8

    if-nez v8, :cond_9

    sub-int v8, v7, v2

    move/from16 v0, p2

    invoke-static {p1, v8, v0, v1, v6}, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->matches16CPB(Ljava/lang/CharSequence;IILjava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 696
    if-ne v2, v7, :cond_8

    .line 697
    const/4 v1, 0x0

    goto :goto_0

    .line 699
    :cond_8
    iget-object v8, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->offsets:Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;

    invoke-virtual {v8, v2}, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->addOffset(I)V

    .line 701
    :cond_9
    if-eqz v4, :cond_4

    .line 704
    add-int/lit8 v4, v4, -0x1

    .line 705
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 709
    :cond_a
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 710
    const/4 v1, 0x0

    move v9, v1

    :goto_4
    if-ge v9, v11, :cond_10

    .line 711
    iget-object v1, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanLengths:[S

    add-int v2, v10, v9

    aget-short v2, v1, v2

    .line 715
    iget-object v1, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->strings:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 717
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    .line 720
    const/16 v6, 0xfe

    if-lt v2, v6, :cond_b

    move v2, v8

    .line 725
    :cond_b
    if-le v2, v3, :cond_c

    move v2, v3

    .line 728
    :cond_c
    sub-int v6, v8, v2

    .line 730
    :goto_5
    if-gt v6, v7, :cond_19

    if-ge v2, v4, :cond_d

    move v1, v4

    move v2, v5

    .line 710
    :goto_6
    add-int/lit8 v4, v9, 0x1

    move v5, v2

    move v9, v4

    move v4, v1

    goto :goto_4

    .line 734
    :cond_d
    if-gt v2, v4, :cond_e

    if-le v6, v5, :cond_f

    :cond_e
    sub-int v12, v7, v6

    .line 735
    move/from16 v0, p2

    invoke-static {p1, v12, v0, v1, v8}, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->matches16CPB(Ljava/lang/CharSequence;IILjava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_f

    move v1, v2

    move v2, v6

    .line 738
    goto :goto_6

    .line 740
    :cond_f
    add-int/lit8 v2, v2, -0x1

    .line 741
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 745
    :cond_10
    if-nez v5, :cond_11

    if-eqz v4, :cond_13

    .line 748
    :cond_11
    sub-int/2addr v7, v5

    .line 749
    if-nez v7, :cond_12

    .line 750
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 752
    :cond_12
    const/4 v3, 0x0

    .line 753
    goto/16 :goto_1

    .line 758
    :cond_13
    if-nez v3, :cond_14

    move/from16 v0, p2

    if-ne v7, v0, :cond_15

    .line 764
    :cond_14
    iget-object v1, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->offsets:Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18

    move v1, v7

    .line 765
    goto/16 :goto_0

    .line 770
    :cond_15
    iget-object v1, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->offsets:Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 774
    iget-object v1, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanSet:Lcom/ibm/icu/text/UnicodeSet;

    sget-object v2, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->CONTAINED:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    invoke-virtual {v1, p1, v7, v2}, Lcom/ibm/icu/text/UnicodeSet;->spanBack(Ljava/lang/CharSequence;ILcom/ibm/icu/text/UnicodeSet$SpanCondition;)I

    move-result v1

    .line 775
    sub-int v3, v7, v1

    .line 776
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    move v7, v1

    goto/16 :goto_1

    .line 786
    :cond_16
    iget-object v1, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-static {v1, p1, v7}, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->spanOneBack(Lcom/ibm/icu/text/UnicodeSet;Ljava/lang/CharSequence;I)I

    move-result v1

    .line 787
    if-lez v1, :cond_18

    .line 788
    if-ne v1, v7, :cond_17

    .line 789
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 794
    :cond_17
    sub-int/2addr v7, v1

    .line 795
    iget-object v2, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->offsets:Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;

    invoke-virtual {v2, v1}, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->shift(I)V

    .line 796
    const/4 v3, 0x0

    .line 797
    goto/16 :goto_1

    .line 802
    :cond_18
    iget-object v1, p0, Lcom/ibm/icu/impl/UnicodeSetStringSpan;->offsets:Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ibm/icu/impl/UnicodeSetStringSpan$OffsetList;->popMinimum(Lcom/ibm/icu/util/OutputInt;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    sub-int/2addr v7, v1

    .line 803
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 646
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_19
    move v1, v4

    move v2, v5

    goto :goto_6

    :cond_1a
    move v10, v1

    goto/16 :goto_1
.end method
