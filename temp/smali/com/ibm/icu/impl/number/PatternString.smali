.class public Lcom/ibm/icu/impl/number/PatternString;
.super Ljava/lang/Object;
.source "PatternString.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static escapePaddingString(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;I)I
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/16 v5, 0x27

    .line 245
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo p0, " "

    .line 246
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 247
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 248
    const-string/jumbo v0, "\'"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 249
    const-string/jumbo v0, "\'\'"

    invoke-virtual {p1, p2, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    :goto_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v2

    return v0

    .line 251
    :cond_2
    invoke-virtual {p1, p2, p0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 254
    :cond_3
    invoke-virtual {p1, p2, v5}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 256
    const/4 v0, 0x0

    :goto_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 258
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 259
    if-ne v3, v5, :cond_4

    .line 260
    add-int v3, p2, v1

    const-string/jumbo v4, "\'\'"

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    add-int/lit8 v1, v1, 0x2

    .line 256
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 263
    :cond_4
    add-int v4, p2, v1

    invoke-virtual {p1, v4, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 264
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 267
    :cond_5
    add-int v0, p2, v1

    invoke-virtual {p1, v0, v5}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static parseToExistingProperties(Ljava/lang/String;Lcom/ibm/icu/impl/number/Properties;)V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/ibm/icu/impl/number/PatternString;->parseToExistingProperties(Ljava/lang/String;Lcom/ibm/icu/impl/number/Properties;Z)V

    .line 56
    return-void
.end method

.method public static parseToExistingProperties(Ljava/lang/String;Lcom/ibm/icu/impl/number/Properties;Z)V
    .locals 0

    .prologue
    .line 51
    invoke-static {p0, p1, p2}, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser;->parse(Ljava/lang/String;Lcom/ibm/icu/impl/number/Properties;Z)V

    .line 52
    return-void
.end method

.method public static parseToProperties(Ljava/lang/String;)Lcom/ibm/icu/impl/number/Properties;
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/ibm/icu/impl/number/PatternString;->parseToProperties(Ljava/lang/String;Z)Lcom/ibm/icu/impl/number/Properties;

    move-result-object v0

    return-object v0
.end method

.method public static parseToProperties(Ljava/lang/String;Z)Lcom/ibm/icu/impl/number/Properties;
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/ibm/icu/impl/number/Properties;

    invoke-direct {v0}, Lcom/ibm/icu/impl/number/Properties;-><init>()V

    .line 28
    invoke-static {p0, v0, p1}, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser;->parse(Ljava/lang/String;Lcom/ibm/icu/impl/number/Properties;Z)V

    .line 29
    return-object v0
.end method

.method public static propertiesToString(Lcom/ibm/icu/impl/number/Properties;)Ljava/lang/String;
    .locals 32

    .prologue
    .line 69
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    const/16 v11, 0x64

    .line 74
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/Properties;->getSecondaryGroupingSize()I

    move-result v4

    invoke-static {v4, v11}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/Properties;->getGroupingSize()I

    move-result v5

    invoke-static {v5, v11}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/Properties;->getFormatWidth()I

    move-result v6

    invoke-static {v6, v11}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/Properties;->getPadPosition()Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;

    move-result-object v13

    .line 78
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/Properties;->getPadString()Ljava/lang/String;

    move-result-object v14

    .line 79
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/Properties;->getMinimumIntegerDigits()I

    move-result v6

    invoke-static {v6, v11}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 80
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/Properties;->getMaximumIntegerDigits()I

    move-result v6

    invoke-static {v6, v11}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 81
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/Properties;->getMinimumFractionDigits()I

    move-result v6

    invoke-static {v6, v11}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/4 v8, 0x0

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 82
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/Properties;->getMaximumFractionDigits()I

    move-result v6

    invoke-static {v6, v11}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 83
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/Properties;->getMinimumSignificantDigits()I

    move-result v6

    invoke-static {v6, v11}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/Properties;->getMaximumSignificantDigits()I

    move-result v6

    invoke-static {v6, v11}, Ljava/lang/Math;->min(II)I

    move-result v18

    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/Properties;->getDecimalSeparatorAlwaysShown()Z

    move-result v19

    .line 86
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/Properties;->getMinimumExponentDigits()I

    move-result v6

    invoke-static {v6, v11}, Ljava/lang/Math;->min(II)I

    move-result v20

    .line 87
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/Properties;->getExponentSignAlwaysShown()Z

    move-result v21

    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/Properties;->getPositivePrefix()Ljava/lang/String;

    move-result-object v6

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/Properties;->getPositivePrefixPattern()Ljava/lang/String;

    move-result-object v8

    .line 90
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/Properties;->getPositiveSuffix()Ljava/lang/String;

    move-result-object v22

    .line 91
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/Properties;->getPositiveSuffixPattern()Ljava/lang/String;

    move-result-object v23

    .line 92
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/Properties;->getNegativePrefix()Ljava/lang/String;

    move-result-object v24

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/Properties;->getNegativePrefixPattern()Ljava/lang/String;

    move-result-object v25

    .line 94
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/Properties;->getNegativeSuffix()Ljava/lang/String;

    move-result-object v26

    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/Properties;->getNegativeSuffixPattern()Ljava/lang/String;

    move-result-object v27

    .line 98
    if-eqz v8, :cond_0

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    :cond_0
    invoke-static {v6, v10}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->escape(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)I

    .line 100
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    .line 104
    const/4 v6, -0x1

    invoke-static {v11, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-eq v4, v6, :cond_1

    const/4 v6, -0x1

    .line 105
    invoke-static {v11, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-eq v5, v6, :cond_1

    if-eq v4, v5, :cond_1

    move v6, v4

    .line 123
    :goto_0
    add-int/2addr v6, v5

    add-int/lit8 v28, v6, 0x1

    .line 126
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/impl/number/Properties;->getRoundingIncrement()Ljava/math/BigDecimal;

    move-result-object v29

    .line 127
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    const/4 v6, 0x0

    .line 129
    const/16 v31, -0x1

    move/from16 v0, v31

    invoke-static {v11, v0}, Ljava/lang/Math;->min(II)I

    move-result v31

    move/from16 v0, v18

    move/from16 v1, v31

    if-eq v0, v1, :cond_5

    .line 131
    :goto_1
    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->length()I

    move-result v29

    move/from16 v0, v29

    move/from16 v1, v17

    if-ge v0, v1, :cond_4

    .line 132
    const/16 v29, 0x40

    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 110
    :cond_1
    const/4 v6, -0x1

    invoke-static {v11, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-eq v4, v6, :cond_2

    .line 112
    const/4 v5, 0x0

    move v6, v5

    move v5, v4

    .line 113
    goto :goto_0

    .line 114
    :cond_2
    const/4 v6, -0x1

    invoke-static {v11, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-eq v5, v6, :cond_3

    .line 116
    const/4 v6, 0x0

    .line 117
    goto :goto_0

    .line 119
    :cond_3
    const/4 v4, 0x0

    .line 120
    const/4 v6, 0x0

    .line 121
    const/4 v5, 0x0

    goto :goto_0

    .line 134
    :cond_4
    :goto_2
    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_6

    .line 135
    const/16 v17, 0x23

    move-object/from16 v0, v30

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 137
    :cond_5
    sget-object v17, Lcom/ibm/icu/impl/number/Properties;->DEFAULT_ROUNDING_INCREMENT:Ljava/math/BigDecimal;

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_6

    .line 139
    invoke-virtual/range {v29 .. v29}, Ljava/math/BigDecimal;->scale()I

    move-result v6

    neg-int v6, v6

    .line 141
    invoke-virtual/range {v29 .. v29}, Ljava/math/BigDecimal;->scale()I

    move-result v17

    move-object/from16 v0, v29

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->scaleByPowerOfTen(I)Ljava/math/BigDecimal;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v17

    .line 142
    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v29, 0x27

    move/from16 v0, v18

    move/from16 v1, v29

    if-ne v0, v1, :cond_7

    .line 144
    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v29

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 149
    :cond_6
    :goto_3
    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    add-int v17, v17, v6

    move/from16 v0, v17

    if-ge v0, v7, :cond_1c

    .line 150
    const/16 v17, 0x0

    const/16 v18, 0x30

    move-object/from16 v0, v30

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 146
    :cond_7
    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 152
    :goto_4
    neg-int v6, v7

    if-ge v6, v15, :cond_8

    .line 153
    const/16 v6, 0x30

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 154
    add-int/lit8 v7, v7, -0x1

    goto :goto_4

    .line 158
    :cond_8
    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/2addr v6, v7

    move/from16 v0, v28

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 159
    if-eq v9, v11, :cond_b

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v9, v6, -0x1

    .line 160
    :goto_5
    move/from16 v0, v16

    if-eq v0, v11, :cond_c

    move/from16 v0, v16

    neg-int v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 161
    :goto_6
    if-lt v9, v6, :cond_11

    .line 162
    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    add-int/2addr v15, v7

    sub-int/2addr v15, v9

    add-int/lit8 v15, v15, -0x1

    .line 163
    if-ltz v15, :cond_9

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->length()I

    move-result v16

    move/from16 v0, v16

    if-lt v15, v0, :cond_d

    .line 164
    :cond_9
    const/16 v15, 0x23

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 168
    :goto_7
    if-le v9, v5, :cond_e

    if-lez v4, :cond_e

    sub-int v15, v9, v5

    rem-int/2addr v15, v4

    if-nez v15, :cond_e

    .line 169
    const/16 v15, 0x2c

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 161
    :cond_a
    :goto_8
    add-int/lit8 v9, v9, -0x1

    goto :goto_6

    .line 159
    :cond_b
    add-int/lit8 v9, v6, -0x1

    goto :goto_5

    :cond_c
    move v6, v7

    .line 160
    goto :goto_6

    .line 166
    :cond_d
    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 170
    :cond_e
    if-lez v9, :cond_f

    if-ne v9, v5, :cond_f

    .line 171
    const/16 v15, 0x2c

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 172
    :cond_f
    if-nez v9, :cond_a

    if-nez v19, :cond_10

    if-gez v6, :cond_a

    .line 173
    :cond_10
    const/16 v15, 0x2e

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 178
    :cond_11
    const/4 v4, -0x1

    invoke-static {v11, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    move/from16 v0, v20

    if-eq v0, v4, :cond_13

    .line 179
    const/16 v4, 0x45

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 180
    if-eqz v21, :cond_12

    .line 181
    const/16 v4, 0x2b

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 183
    :cond_12
    const/4 v4, 0x0

    :goto_9
    move/from16 v0, v20

    if-ge v4, v0, :cond_13

    .line 184
    const/16 v5, 0x30

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 183
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 189
    :cond_13
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    .line 190
    if-eqz v23, :cond_14

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    :cond_14
    move-object/from16 v0, v22

    invoke-static {v0, v10}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->escape(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)I

    .line 194
    if-eqz v12, :cond_16

    .line 195
    :goto_a
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    sub-int v5, v12, v5

    if-lez v5, :cond_15

    .line 196
    const/16 v5, 0x23

    invoke-virtual {v10, v8, v5}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 197
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 200
    :cond_15
    sget-object v5, Lcom/ibm/icu/impl/number/PatternString$1;->$SwitchMap$com$ibm$icu$impl$number$formatters$PaddingFormat$PadPosition:[I

    invoke-virtual {v13}, Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    :cond_16
    :goto_b
    move v5, v8

    .line 226
    :goto_c
    if-nez v24, :cond_18

    if-nez v26, :cond_18

    if-nez v25, :cond_17

    if-nez v27, :cond_18

    :cond_17
    if-eqz v25, :cond_1b

    .line 229
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_18

    const/4 v6, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2d

    if-ne v6, v7, :cond_18

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1b

    .line 230
    :cond_18
    const/16 v6, 0x3b

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 231
    if-eqz v25, :cond_19

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    :cond_19
    move-object/from16 v0, v24

    invoke-static {v0, v10}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->escape(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)I

    .line 235
    invoke-virtual {v10, v10, v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 236
    if-eqz v27, :cond_1a

    move-object/from16 v0, v27

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    :cond_1a
    move-object/from16 v0, v26

    invoke-static {v0, v10}, Lcom/ibm/icu/impl/number/AffixPatternUtils;->escape(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)I

    .line 240
    :cond_1b
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 202
    :pswitch_0
    const/4 v5, 0x0

    invoke-static {v14, v10, v5}, Lcom/ibm/icu/impl/number/PatternString;->escapePaddingString(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;I)I

    move-result v6

    .line 203
    const/4 v5, 0x0

    const/16 v7, 0x2a

    invoke-virtual {v10, v5, v7}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 204
    add-int/lit8 v5, v6, 0x1

    add-int/2addr v5, v8

    .line 205
    add-int/lit8 v6, v6, 0x1

    add-int/2addr v4, v6

    .line 206
    goto :goto_c

    .line 208
    :pswitch_1
    invoke-static {v14, v10, v8}, Lcom/ibm/icu/impl/number/PatternString;->escapePaddingString(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;I)I

    move-result v6

    .line 209
    const/16 v5, 0x2a

    invoke-virtual {v10, v8, v5}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 210
    add-int/lit8 v5, v6, 0x1

    add-int/2addr v5, v8

    .line 211
    add-int/lit8 v6, v6, 0x1

    add-int/2addr v4, v6

    .line 212
    goto :goto_c

    .line 214
    :pswitch_2
    invoke-static {v14, v10, v4}, Lcom/ibm/icu/impl/number/PatternString;->escapePaddingString(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;I)I

    .line 215
    const/16 v5, 0x2a

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move v5, v8

    .line 216
    goto :goto_c

    .line 218
    :pswitch_3
    const/16 v5, 0x2a

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-static {v14, v10, v5}, Lcom/ibm/icu/impl/number/PatternString;->escapePaddingString(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;I)I

    goto :goto_b

    :cond_1c
    move v7, v6

    goto/16 :goto_4

    .line 200
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
