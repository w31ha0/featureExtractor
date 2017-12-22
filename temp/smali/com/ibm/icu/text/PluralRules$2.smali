.class synthetic Lcom/ibm/icu/text/PluralRules$2;
.super Ljava/lang/Object;
.source "PluralRules.java"


# static fields
.field static final synthetic $SwitchMap$com$ibm$icu$text$PluralRules$Operand:[I

.field static final synthetic $SwitchMap$com$ibm$icu$text$PluralRules$SampleType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1615
    invoke-static {}, Lcom/ibm/icu/text/PluralRules$SampleType;->values()[Lcom/ibm/icu/text/PluralRules$SampleType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ibm/icu/text/PluralRules$2;->$SwitchMap$com$ibm$icu$text$PluralRules$SampleType:[I

    :try_start_0
    sget-object v0, Lcom/ibm/icu/text/PluralRules$2;->$SwitchMap$com$ibm$icu$text$PluralRules$SampleType:[I

    sget-object v1, Lcom/ibm/icu/text/PluralRules$SampleType;->INTEGER:Lcom/ibm/icu/text/PluralRules$SampleType;

    invoke-virtual {v1}, Lcom/ibm/icu/text/PluralRules$SampleType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_0
    :try_start_1
    sget-object v0, Lcom/ibm/icu/text/PluralRules$2;->$SwitchMap$com$ibm$icu$text$PluralRules$SampleType:[I

    sget-object v1, Lcom/ibm/icu/text/PluralRules$SampleType;->DECIMAL:Lcom/ibm/icu/text/PluralRules$SampleType;

    invoke-virtual {v1}, Lcom/ibm/icu/text/PluralRules$SampleType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    .line 830
    :goto_1
    invoke-static {}, Lcom/ibm/icu/text/PluralRules$Operand;->values()[Lcom/ibm/icu/text/PluralRules$Operand;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ibm/icu/text/PluralRules$2;->$SwitchMap$com$ibm$icu$text$PluralRules$Operand:[I

    :try_start_2
    sget-object v0, Lcom/ibm/icu/text/PluralRules$2;->$SwitchMap$com$ibm$icu$text$PluralRules$Operand:[I

    sget-object v1, Lcom/ibm/icu/text/PluralRules$Operand;->n:Lcom/ibm/icu/text/PluralRules$Operand;

    invoke-virtual {v1}, Lcom/ibm/icu/text/PluralRules$Operand;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_2
    :try_start_3
    sget-object v0, Lcom/ibm/icu/text/PluralRules$2;->$SwitchMap$com$ibm$icu$text$PluralRules$Operand:[I

    sget-object v1, Lcom/ibm/icu/text/PluralRules$Operand;->i:Lcom/ibm/icu/text/PluralRules$Operand;

    invoke-virtual {v1}, Lcom/ibm/icu/text/PluralRules$Operand;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_3
    :try_start_4
    sget-object v0, Lcom/ibm/icu/text/PluralRules$2;->$SwitchMap$com$ibm$icu$text$PluralRules$Operand:[I

    sget-object v1, Lcom/ibm/icu/text/PluralRules$Operand;->f:Lcom/ibm/icu/text/PluralRules$Operand;

    invoke-virtual {v1}, Lcom/ibm/icu/text/PluralRules$Operand;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_4
    :try_start_5
    sget-object v0, Lcom/ibm/icu/text/PluralRules$2;->$SwitchMap$com$ibm$icu$text$PluralRules$Operand:[I

    sget-object v1, Lcom/ibm/icu/text/PluralRules$Operand;->t:Lcom/ibm/icu/text/PluralRules$Operand;

    invoke-virtual {v1}, Lcom/ibm/icu/text/PluralRules$Operand;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_5
    :try_start_6
    sget-object v0, Lcom/ibm/icu/text/PluralRules$2;->$SwitchMap$com$ibm$icu$text$PluralRules$Operand:[I

    sget-object v1, Lcom/ibm/icu/text/PluralRules$Operand;->v:Lcom/ibm/icu/text/PluralRules$Operand;

    invoke-virtual {v1}, Lcom/ibm/icu/text/PluralRules$Operand;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_6
    :try_start_7
    sget-object v0, Lcom/ibm/icu/text/PluralRules$2;->$SwitchMap$com$ibm$icu$text$PluralRules$Operand:[I

    sget-object v1, Lcom/ibm/icu/text/PluralRules$Operand;->w:Lcom/ibm/icu/text/PluralRules$Operand;

    invoke-virtual {v1}, Lcom/ibm/icu/text/PluralRules$Operand;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_7
    return-void

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v0

    goto :goto_2

    .line 1615
    :catch_6
    move-exception v0

    goto :goto_1

    :catch_7
    move-exception v0

    goto :goto_0
.end method
