.class public Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;
.super Ljava/lang/Object;
.source "PluralRules.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final bounded:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final sampleType:Lcom/ibm/icu/text/PluralRules$SampleType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final samples:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/ibm/icu/text/PluralRules$FixedDecimalRange;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/ibm/icu/text/PluralRules$SampleType;Ljava/util/Set;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/text/PluralRules$SampleType;",
            "Ljava/util/Set",
            "<",
            "Lcom/ibm/icu/text/PluralRules$FixedDecimalRange;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1105
    iput-object p1, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;->sampleType:Lcom/ibm/icu/text/PluralRules$SampleType;

    .line 1106
    iput-object p2, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;->samples:Ljava/util/Set;

    .line 1107
    iput-boolean p3, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;->bounded:Z

    .line 1108
    return-void
.end method

.method private static checkDecimal(Lcom/ibm/icu/text/PluralRules$SampleType;Lcom/ibm/icu/text/PluralRules$FixedDecimal;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1157
    sget-object v0, Lcom/ibm/icu/text/PluralRules$SampleType;->INTEGER:Lcom/ibm/icu/text/PluralRules$SampleType;

    if-ne p0, v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1}, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->getVisibleDecimalDigitCount()I

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    if-eq v0, v1, :cond_2

    .line 1158
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ill-formed number range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v2

    .line 1157
    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    .line 1160
    :cond_2
    return-void
.end method

.method static parse(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;
    .locals 12

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1114
    .line 1116
    new-instance v6, Ljava/util/LinkedHashSet;

    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1118
    const-string/jumbo v0, "integer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1119
    sget-object v0, Lcom/ibm/icu/text/PluralRules$SampleType;->INTEGER:Lcom/ibm/icu/text/PluralRules$SampleType;

    .line 1125
    :goto_0
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1127
    sget-object v3, Lcom/ibm/icu/text/PluralRules;->COMMA_SEPARATED:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    move v5, v4

    move v1, v4

    move v3, v2

    :goto_1
    if-ge v5, v8, :cond_5

    aget-object v9, v7, v5

    .line 1128
    const-string/jumbo v10, "\u2026"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string/jumbo v10, "..."

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    :cond_0
    move v1, v2

    move v3, v4

    .line 1127
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1120
    :cond_1
    const-string/jumbo v0, "decimal"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1121
    sget-object v0, Lcom/ibm/icu/text/PluralRules$SampleType;->DECIMAL:Lcom/ibm/icu/text/PluralRules$SampleType;

    goto :goto_0

    .line 1123
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Samples must start with \'integer\' or \'decimal\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1133
    :cond_3
    if-eqz v1, :cond_4

    .line 1134
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can only have \u2026 at the end of samples: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1136
    :cond_4
    sget-object v10, Lcom/ibm/icu/text/PluralRules;->TILDE_SEPARATED:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v9}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v10

    .line 1137
    array-length v11, v10

    packed-switch v11, :pswitch_data_0

    .line 1150
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ill-formed number range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1139
    :pswitch_0
    new-instance v9, Lcom/ibm/icu/text/PluralRules$FixedDecimal;

    aget-object v10, v10, v4

    invoke-direct {v9, v10}, Lcom/ibm/icu/text/PluralRules$FixedDecimal;-><init>(Ljava/lang/String;)V

    .line 1140
    invoke-static {v0, v9}, Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;->checkDecimal(Lcom/ibm/icu/text/PluralRules$SampleType;Lcom/ibm/icu/text/PluralRules$FixedDecimal;)V

    .line 1141
    new-instance v10, Lcom/ibm/icu/text/PluralRules$FixedDecimalRange;

    invoke-direct {v10, v9, v9}, Lcom/ibm/icu/text/PluralRules$FixedDecimalRange;-><init>(Lcom/ibm/icu/text/PluralRules$FixedDecimal;Lcom/ibm/icu/text/PluralRules$FixedDecimal;)V

    invoke-interface {v6, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1144
    :pswitch_1
    new-instance v9, Lcom/ibm/icu/text/PluralRules$FixedDecimal;

    aget-object v11, v10, v4

    invoke-direct {v9, v11}, Lcom/ibm/icu/text/PluralRules$FixedDecimal;-><init>(Ljava/lang/String;)V

    .line 1145
    new-instance v11, Lcom/ibm/icu/text/PluralRules$FixedDecimal;

    aget-object v10, v10, v2

    invoke-direct {v11, v10}, Lcom/ibm/icu/text/PluralRules$FixedDecimal;-><init>(Ljava/lang/String;)V

    .line 1146
    invoke-static {v0, v9}, Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;->checkDecimal(Lcom/ibm/icu/text/PluralRules$SampleType;Lcom/ibm/icu/text/PluralRules$FixedDecimal;)V

    .line 1147
    invoke-static {v0, v11}, Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;->checkDecimal(Lcom/ibm/icu/text/PluralRules$SampleType;Lcom/ibm/icu/text/PluralRules$FixedDecimal;)V

    .line 1148
    new-instance v10, Lcom/ibm/icu/text/PluralRules$FixedDecimalRange;

    invoke-direct {v10, v9, v11}, Lcom/ibm/icu/text/PluralRules$FixedDecimalRange;-><init>(Lcom/ibm/icu/text/PluralRules$FixedDecimal;Lcom/ibm/icu/text/PluralRules$FixedDecimal;)V

    invoke-interface {v6, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1153
    :cond_5
    new-instance v1, Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v0, v2, v3}, Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;-><init>(Lcom/ibm/icu/text/PluralRules$SampleType;Ljava/util/Set;Z)V

    return-object v1

    .line 1137
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1187
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;->sampleType:Lcom/ibm/icu/text/PluralRules$SampleType;

    invoke-virtual {v1}, Lcom/ibm/icu/text/PluralRules$SampleType;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1188
    const/4 v0, 0x1

    .line 1189
    iget-object v1, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;->samples:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/PluralRules$FixedDecimalRange;

    .line 1190
    if-eqz v1, :cond_0

    .line 1191
    const/4 v1, 0x0

    .line 1195
    :goto_1
    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1193
    :cond_0
    const-string/jumbo v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1197
    :cond_1
    iget-boolean v0, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;->bounded:Z

    if-nez v0, :cond_2

    .line 1198
    const-string/jumbo v0, ", \u2026"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1200
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
