.class final Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;
.super Lcom/ibm/icu/impl/UResource$Sink;
.source "DayPeriodRules.java"


# instance fields
.field private cutoffType:Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;

.field private cutoffs:[I

.field private data:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesData;

.field private period:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

.field private ruleSetNum:I


# direct methods
.method private constructor <init>(Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesData;)V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/ibm/icu/impl/UResource$Sink;-><init>()V

    .line 138
    const/16 v0, 0x19

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->cutoffs:[I

    .line 77
    iput-object p1, p0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->data:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesData;

    .line 78
    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesData;Lcom/ibm/icu/impl/DayPeriodRules$1;)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;-><init>(Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesData;)V

    return-void
.end method

.method private addCutoff(Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 147
    if-nez p1, :cond_0

    new-instance v0, Lcom/ibm/icu/util/ICUException;

    const-string/jumbo v1, "Cutoff type not recognized."

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_0
    invoke-static {p2}, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->parseHour(Ljava/lang/String;)I

    move-result v0

    .line 149
    iget-object v1, p0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->cutoffs:[I

    aget v2, v1, v0

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;->ordinal()I

    move-result v4

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    aput v2, v1, v0

    .line 150
    return-void
.end method

.method private static parseHour(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 186
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 187
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ":00"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 188
    :cond_0
    new-instance v0, Lcom/ibm/icu/util/ICUException;

    const-string/jumbo v1, "Cutoff time must end in \":00\"."

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 192
    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    .line 193
    new-instance v0, Lcom/ibm/icu/util/ICUException;

    const-string/jumbo v1, "Cutoff time must begin with h: or hh:"

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 199
    if-ltz v0, :cond_3

    const/16 v1, 0x18

    if-le v0, v1, :cond_4

    .line 200
    :cond_3
    new-instance v0, Lcom/ibm/icu/util/ICUException;

    const-string/jumbo v1, "Cutoff hour must be between 0 and 24, inclusive."

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_4
    return v0
.end method

.method private processRules(Lcom/ibm/icu/impl/UResource$Table;Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)V
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 98
    move v0, v1

    :goto_0
    invoke-interface {p1, v0, p2, p3}, Lcom/ibm/icu/impl/UResource$Table;->getKeyAndValue(ILcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 99
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ibm/icu/impl/DayPeriodRules;->access$000(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->ruleSetNum:I

    .line 100
    iget-object v2, p0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->data:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesData;

    iget-object v2, v2, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesData;->rules:[Lcom/ibm/icu/impl/DayPeriodRules;

    iget v3, p0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->ruleSetNum:I

    new-instance v4, Lcom/ibm/icu/impl/DayPeriodRules;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/ibm/icu/impl/DayPeriodRules;-><init>(Lcom/ibm/icu/impl/DayPeriodRules$1;)V

    aput-object v4, v2, v3

    .line 102
    invoke-virtual {p3}, Lcom/ibm/icu/impl/UResource$Value;->getTable()Lcom/ibm/icu/impl/UResource$Table;

    move-result-object v5

    move v2, v1

    .line 103
    :goto_1
    invoke-interface {v5, v2, p2, p3}, Lcom/ibm/icu/impl/UResource$Table;->getKeyAndValue(ILcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 104
    invoke-static {p2}, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->access$200(Ljava/lang/CharSequence;)Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    move-result-object v3

    iput-object v3, p0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->period:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    .line 105
    iget-object v3, p0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->period:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    if-nez v3, :cond_0

    new-instance v0, Lcom/ibm/icu/util/ICUException;

    const-string/jumbo v1, "Unknown day period in data."

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    invoke-virtual {p3}, Lcom/ibm/icu/impl/UResource$Value;->getTable()Lcom/ibm/icu/impl/UResource$Table;

    move-result-object v6

    move v3, v1

    .line 108
    :goto_2
    invoke-interface {v6, v3, p2, p3}, Lcom/ibm/icu/impl/UResource$Table;->getKeyAndValue(ILcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 109
    invoke-virtual {p3}, Lcom/ibm/icu/impl/UResource$Value;->getType()I

    move-result v4

    if-nez v4, :cond_2

    .line 111
    invoke-static {p2}, Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;->access$300(Ljava/lang/CharSequence;)Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;

    move-result-object v4

    .line 112
    invoke-virtual {p3}, Lcom/ibm/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v4, v7}, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->addCutoff(Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;Ljava/lang/String;)V

    .line 108
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 115
    :cond_2
    invoke-static {p2}, Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;->access$300(Ljava/lang/CharSequence;)Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;

    move-result-object v4

    iput-object v4, p0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->cutoffType:Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;

    .line 116
    invoke-virtual {p3}, Lcom/ibm/icu/impl/UResource$Value;->getArray()Lcom/ibm/icu/impl/UResource$Array;

    move-result-object v7

    .line 117
    invoke-interface {v7}, Lcom/ibm/icu/impl/UResource$Array;->getSize()I

    move-result v8

    move v4, v1

    .line 118
    :goto_3
    if-ge v4, v8, :cond_1

    .line 119
    invoke-interface {v7, v4, p3}, Lcom/ibm/icu/impl/UResource$Array;->getValue(ILcom/ibm/icu/impl/UResource$Value;)Z

    .line 120
    iget-object v9, p0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->cutoffType:Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;

    invoke-virtual {p3}, Lcom/ibm/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->addCutoff(Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;Ljava/lang/String;)V

    .line 118
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 124
    :cond_3
    invoke-direct {p0}, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->setDayPeriodForHoursFromCutoffs()V

    move v3, v1

    .line 125
    :goto_4
    iget-object v4, p0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->cutoffs:[I

    array-length v4, v4

    if-ge v3, v4, :cond_4

    .line 126
    iget-object v4, p0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->cutoffs:[I

    aput v1, v4, v3

    .line 125
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 103
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 129
    :cond_5
    iget-object v2, p0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->data:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesData;

    iget-object v2, v2, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesData;->rules:[Lcom/ibm/icu/impl/DayPeriodRules;

    iget v3, p0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->ruleSetNum:I

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/ibm/icu/impl/DayPeriodRules;->access$400(Lcom/ibm/icu/impl/DayPeriodRules;)[Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_5
    if-ge v2, v4, :cond_7

    aget-object v5, v3, v2

    .line 130
    if-nez v5, :cond_6

    .line 131
    new-instance v0, Lcom/ibm/icu/util/ICUException;

    const-string/jumbo v1, "Rules in data don\'t cover all 24 hours (they should)."

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 98
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 135
    :cond_8
    return-void
.end method

.method private setDayPeriodForHoursFromCutoffs()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 153
    iget-object v0, p0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->data:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesData;

    iget-object v0, v0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesData;->rules:[Lcom/ibm/icu/impl/DayPeriodRules;

    iget v2, p0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->ruleSetNum:I

    aget-object v3, v0, v2

    move v2, v1

    .line 154
    :goto_0
    const/16 v0, 0x18

    if-gt v2, v0, :cond_8

    .line 156
    iget-object v0, p0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->cutoffs:[I

    aget v0, v0, v2

    sget-object v4, Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;->AT:Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;

    invoke-virtual {v4}, Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;->ordinal()I

    move-result v4

    shl-int v4, v6, v4

    and-int/2addr v0, v4

    if-lez v0, :cond_0

    .line 157
    if-nez v2, :cond_2

    iget-object v0, p0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->period:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    sget-object v4, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->MIDNIGHT:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    if-ne v0, v4, :cond_2

    .line 158
    invoke-static {v3, v6}, Lcom/ibm/icu/impl/DayPeriodRules;->access$502(Lcom/ibm/icu/impl/DayPeriodRules;Z)Z

    .line 167
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->cutoffs:[I

    aget v0, v0, v2

    sget-object v4, Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;->FROM:Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;

    invoke-virtual {v4}, Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;->ordinal()I

    move-result v4

    shl-int v4, v6, v4

    and-int/2addr v0, v4

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->cutoffs:[I

    aget v0, v0, v2

    sget-object v4, Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;->AFTER:Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;

    .line 168
    invoke-virtual {v4}, Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;->ordinal()I

    move-result v4

    shl-int v4, v6, v4

    and-int/2addr v0, v4

    if-lez v0, :cond_6

    .line 169
    :cond_1
    add-int/lit8 v0, v2, 0x1

    .line 170
    :goto_2
    if-ne v0, v2, :cond_4

    .line 172
    new-instance v0, Lcom/ibm/icu/util/ICUException;

    const-string/jumbo v1, "FROM/AFTER cutoffs must have a matching BEFORE cutoff."

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_2
    const/16 v0, 0xc

    if-ne v2, v0, :cond_3

    iget-object v0, p0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->period:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    sget-object v4, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;->NOON:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    if-ne v0, v4, :cond_3

    .line 160
    invoke-static {v3, v6}, Lcom/ibm/icu/impl/DayPeriodRules;->access$602(Lcom/ibm/icu/impl/DayPeriodRules;Z)Z

    goto :goto_1

    .line 162
    :cond_3
    new-instance v0, Lcom/ibm/icu/util/ICUException;

    const-string/jumbo v1, "AT cutoff must only be set for 0:00 or 12:00."

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_4
    const/16 v4, 0x19

    if-ne v0, v4, :cond_5

    move v0, v1

    .line 176
    :cond_5
    iget-object v4, p0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->cutoffs:[I

    aget v4, v4, v0

    sget-object v5, Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;->BEFORE:Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;

    invoke-virtual {v5}, Lcom/ibm/icu/impl/DayPeriodRules$CutoffType;->ordinal()I

    move-result v5

    shl-int v5, v6, v5

    and-int/2addr v4, v5

    if-lez v4, :cond_7

    .line 177
    iget-object v4, p0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->period:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriod;

    invoke-static {v3, v2, v0, v4}, Lcom/ibm/icu/impl/DayPeriodRules;->access$700(Lcom/ibm/icu/impl/DayPeriodRules;IILcom/ibm/icu/impl/DayPeriodRules$DayPeriod;)V

    .line 154
    :cond_6
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 169
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 183
    :cond_8
    return-void
.end method


# virtual methods
.method public put(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;Z)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getTable()Lcom/ibm/icu/impl/UResource$Table;

    move-result-object v3

    move v0, v1

    .line 83
    :goto_0
    invoke-interface {v3, v0, p1, p2}, Lcom/ibm/icu/impl/UResource$Table;->getKeyAndValue(ILcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 84
    const-string/jumbo v2, "locales"

    invoke-virtual {p1, v2}, Lcom/ibm/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getTable()Lcom/ibm/icu/impl/UResource$Table;

    move-result-object v4

    move v2, v1

    .line 86
    :goto_1
    invoke-interface {v4, v2, p1, p2}, Lcom/ibm/icu/impl/UResource$Table;->getKeyAndValue(ILcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 87
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ibm/icu/impl/DayPeriodRules;->access$000(Ljava/lang/String;)I

    move-result v5

    .line 88
    iget-object v6, p0, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->data:Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesData;

    iget-object v6, v6, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesData;->localesToRuleSetNumMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/ibm/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 90
    :cond_0
    const-string/jumbo v2, "rules"

    invoke-virtual {p1, v2}, Lcom/ibm/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 91
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getTable()Lcom/ibm/icu/impl/UResource$Table;

    move-result-object v2

    .line 92
    invoke-direct {p0, v2, p1, p2}, Lcom/ibm/icu/impl/DayPeriodRules$DayPeriodRulesDataSink;->processRules(Lcom/ibm/icu/impl/UResource$Table;Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)V

    .line 83
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    :cond_2
    return-void
.end method
