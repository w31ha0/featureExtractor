.class public Lcom/ibm/icu/text/PluralRules;
.super Ljava/lang/Object;
.source "PluralRules.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final ALLOWED_ID:Lcom/ibm/icu/text/UnicodeSet;

.field static final AND_SEPARATED:Ljava/util/regex/Pattern;

.field static final AT_SEPARATED:Ljava/util/regex/Pattern;

.field static final COMMA_SEPARATED:Ljava/util/regex/Pattern;

.field public static final DEFAULT:Lcom/ibm/icu/text/PluralRules;

.field private static final DEFAULT_RULE:Lcom/ibm/icu/text/PluralRules$Rule;

.field static final DOTDOT_SEPARATED:Ljava/util/regex/Pattern;

.field private static final NO_CONSTRAINT:Lcom/ibm/icu/text/PluralRules$Constraint;

.field static final OR_SEPARATED:Ljava/util/regex/Pattern;

.field static final SEMI_SEPARATED:Ljava/util/regex/Pattern;

.field static final TILDE_SEPARATED:Ljava/util/regex/Pattern;


# instance fields
.field private final transient keywords:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final rules:Lcom/ibm/icu/text/PluralRules$RuleList;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 172
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    const-string/jumbo v1, "[a-z]"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/text/PluralRules;->ALLOWED_ID:Lcom/ibm/icu/text/UnicodeSet;

    .line 355
    new-instance v0, Lcom/ibm/icu/text/PluralRules$1;

    invoke-direct {v0}, Lcom/ibm/icu/text/PluralRules$1;-><init>()V

    sput-object v0, Lcom/ibm/icu/text/PluralRules;->NO_CONSTRAINT:Lcom/ibm/icu/text/PluralRules$Constraint;

    .line 377
    new-instance v0, Lcom/ibm/icu/text/PluralRules$Rule;

    const-string/jumbo v1, "other"

    sget-object v2, Lcom/ibm/icu/text/PluralRules;->NO_CONSTRAINT:Lcom/ibm/icu/text/PluralRules$Constraint;

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/ibm/icu/text/PluralRules$Rule;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/PluralRules$Constraint;Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;)V

    sput-object v0, Lcom/ibm/icu/text/PluralRules;->DEFAULT_RULE:Lcom/ibm/icu/text/PluralRules$Rule;

    .line 413
    new-instance v0, Lcom/ibm/icu/text/PluralRules;

    new-instance v1, Lcom/ibm/icu/text/PluralRules$RuleList;

    invoke-direct {v1, v3}, Lcom/ibm/icu/text/PluralRules$RuleList;-><init>(Lcom/ibm/icu/text/PluralRules$1;)V

    sget-object v2, Lcom/ibm/icu/text/PluralRules;->DEFAULT_RULE:Lcom/ibm/icu/text/PluralRules$Rule;

    invoke-virtual {v1, v2}, Lcom/ibm/icu/text/PluralRules$RuleList;->addRule(Lcom/ibm/icu/text/PluralRules$Rule;)Lcom/ibm/icu/text/PluralRules$RuleList;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/PluralRules;-><init>(Lcom/ibm/icu/text/PluralRules$RuleList;)V

    sput-object v0, Lcom/ibm/icu/text/PluralRules;->DEFAULT:Lcom/ibm/icu/text/PluralRules;

    .line 1448
    const-string/jumbo v0, "\\s*\\Q\\E@\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/text/PluralRules;->AT_SEPARATED:Ljava/util/regex/Pattern;

    .line 1449
    const-string/jumbo v0, "\\s*or\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/text/PluralRules;->OR_SEPARATED:Ljava/util/regex/Pattern;

    .line 1450
    const-string/jumbo v0, "\\s*and\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/text/PluralRules;->AND_SEPARATED:Ljava/util/regex/Pattern;

    .line 1451
    const-string/jumbo v0, "\\s*,\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/text/PluralRules;->COMMA_SEPARATED:Ljava/util/regex/Pattern;

    .line 1452
    const-string/jumbo v0, "\\s*\\Q..\\E\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/text/PluralRules;->DOTDOT_SEPARATED:Ljava/util/regex/Pattern;

    .line 1453
    const-string/jumbo v0, "\\s*~\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/text/PluralRules;->TILDE_SEPARATED:Ljava/util/regex/Pattern;

    .line 1454
    const-string/jumbo v0, "\\s*;\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/text/PluralRules;->SEMI_SEPARATED:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Lcom/ibm/icu/text/PluralRules$RuleList;)V
    .locals 1

    .prologue
    .line 2046
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2047
    iput-object p1, p0, Lcom/ibm/icu/text/PluralRules;->rules:Lcom/ibm/icu/text/PluralRules$RuleList;

    .line 2048
    invoke-virtual {p1}, Lcom/ibm/icu/text/PluralRules$RuleList;->getKeywords()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/PluralRules;->keywords:Ljava/util/Set;

    .line 2049
    return-void
.end method

.method static synthetic access$500(Ljava/lang/StringBuilder;DDZ)V
    .locals 1

    .prologue
    .line 170
    invoke-static/range {p0 .. p5}, Lcom/ibm/icu/text/PluralRules;->addRange(Ljava/lang/StringBuilder;DDZ)V

    return-void
.end method

.method static synthetic access$600(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules$Rule;
    .locals 1

    .prologue
    .line 170
    invoke-static {p0}, Lcom/ibm/icu/text/PluralRules;->parseRule(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules$Rule;

    move-result-object v0

    return-object v0
.end method

.method private static addRange(Ljava/lang/StringBuilder;DDZ)V
    .locals 3

    .prologue
    .line 1656
    if-eqz p5, :cond_0

    .line 1657
    const-string/jumbo v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1659
    :cond_0
    cmpl-double v0, p1, p3

    if-nez v0, :cond_1

    .line 1660
    invoke-static {p1, p2}, Lcom/ibm/icu/text/PluralRules;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1664
    :goto_0
    return-void

    .line 1662
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Lcom/ibm/icu/text/PluralRules;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3, p4}, Lcom/ibm/icu/text/PluralRules;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static forLocale(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/PluralRules;
    .locals 2

    .prologue
    .line 1964
    invoke-static {}, Lcom/ibm/icu/text/PluralRules$Factory;->getDefaultFactory()Lcom/ibm/icu/impl/PluralRulesLoader;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/text/PluralRules$PluralType;->CARDINAL:Lcom/ibm/icu/text/PluralRules$PluralType;

    invoke-virtual {v0, p0, v1}, Lcom/ibm/icu/impl/PluralRulesLoader;->forLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/PluralRules$PluralType;)Lcom/ibm/icu/text/PluralRules;

    move-result-object v0

    return-object v0
.end method

.method public static forLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/PluralRules$PluralType;)Lcom/ibm/icu/text/PluralRules;
    .locals 1

    .prologue
    .line 2008
    invoke-static {}, Lcom/ibm/icu/text/PluralRules$Factory;->getDefaultFactory()Lcom/ibm/icu/impl/PluralRulesLoader;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ibm/icu/impl/PluralRulesLoader;->forLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/PluralRules$PluralType;)Lcom/ibm/icu/text/PluralRules;

    move-result-object v0

    return-object v0
.end method

.method private static format(D)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1667
    double-to-long v0, p0

    .line 1668
    long-to-double v2, v0

    cmpl-double v2, p0, v2

    if-nez v2, :cond_0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static isValidKeyword(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 2040
    sget-object v0, Lcom/ibm/icu/text/PluralRules;->ALLOWED_ID:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0, p0}, Lcom/ibm/icu/text/UnicodeSet;->containsAll(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1468
    array-length v0, p0

    if-ge p1, v0, :cond_0

    .line 1469
    aget-object v0, p0, p1

    return-object v0

    .line 1471
    :cond_0
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "missing token at end of \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private static parseConstraint(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules$Constraint;
    .locals 32

    .prologue
    .line 1300
    const/4 v5, 0x0

    .line 1301
    sget-object v4, Lcom/ibm/icu/text/PluralRules;->OR_SEPARATED:Ljava/util/regex/Pattern;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v26

    .line 1302
    const/4 v4, 0x0

    move/from16 v16, v4

    move-object/from16 v17, v5

    :goto_0
    move-object/from16 v0, v26

    array-length v4, v0

    move/from16 v0, v16

    if-ge v0, v4, :cond_19

    .line 1303
    const/4 v15, 0x0

    .line 1304
    sget-object v4, Lcom/ibm/icu/text/PluralRules;->AND_SEPARATED:Ljava/util/regex/Pattern;

    aget-object v5, v26, v16

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v27

    .line 1305
    const/4 v4, 0x0

    move/from16 v18, v4

    :goto_1
    move-object/from16 v0, v27

    array-length v4, v0

    move/from16 v0, v18

    if-ge v0, v4, :cond_17

    .line 1306
    sget-object v4, Lcom/ibm/icu/text/PluralRules;->NO_CONSTRAINT:Lcom/ibm/icu/text/PluralRules$Constraint;

    .line 1308
    aget-object v5, v27, v18

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    .line 1309
    invoke-static/range {v28 .. v28}, Lcom/ibm/icu/text/PluralRules$SimpleTokenizer;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v29

    .line 1311
    const/4 v6, 0x0

    .line 1312
    const/4 v7, 0x1

    .line 1313
    const/4 v11, 0x1

    .line 1314
    const-wide/high16 v20, 0x43e0000000000000L    # 9.223372036854776E18

    .line 1315
    const-wide/high16 v12, -0x3c20000000000000L    # -9.223372036854776E18

    .line 1318
    const/4 v5, 0x0

    .line 1319
    const/4 v10, 0x1

    aget-object v5, v29, v5

    .line 1320
    const/4 v9, 0x0

    .line 1323
    :try_start_0
    invoke-static {v5}, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->getOperand(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules$Operand;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 1327
    move-object/from16 v0, v29

    array-length v5, v0

    if-ge v10, v5, :cond_15

    .line 1328
    const/4 v5, 0x2

    aget-object v4, v29, v10

    .line 1329
    const-string/jumbo v10, "mod"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string/jumbo v10, "%"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1330
    :cond_0
    const/4 v4, 0x3

    aget-object v5, v29, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1331
    const/4 v5, 0x4

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-static {v0, v4, v1}, Lcom/ibm/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1333
    :cond_1
    const-string/jumbo v10, "not"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1334
    const/4 v4, 0x0

    .line 1335
    add-int/lit8 v7, v5, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-static {v0, v5, v1}, Lcom/ibm/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1336
    const-string/jumbo v10, "="

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1337
    move-object/from16 v0, v28

    invoke-static {v5, v0}, Lcom/ibm/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v4

    throw v4

    .line 1324
    :catch_0
    move-exception v4

    .line 1325
    move-object/from16 v0, v28

    invoke-static {v5, v0}, Lcom/ibm/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v4

    throw v4

    .line 1339
    :cond_2
    const-string/jumbo v10, "!"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1340
    const/4 v4, 0x0

    .line 1341
    add-int/lit8 v7, v5, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-static {v0, v5, v1}, Lcom/ibm/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1342
    const-string/jumbo v10, "="

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 1343
    move-object/from16 v0, v28

    invoke-static {v5, v0}, Lcom/ibm/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v4

    throw v4

    :cond_3
    move-object/from16 v31, v5

    move v5, v7

    move v7, v4

    move-object/from16 v4, v31

    .line 1346
    :cond_4
    const-string/jumbo v10, "is"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    const-string/jumbo v10, "in"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    const-string/jumbo v10, "="

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1347
    :cond_5
    const-string/jumbo v9, "is"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 1348
    if-eqz v9, :cond_6

    if-nez v7, :cond_6

    .line 1349
    move-object/from16 v0, v28

    invoke-static {v4, v0}, Lcom/ibm/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v4

    throw v4

    .line 1351
    :cond_6
    add-int/lit8 v10, v5, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-static {v0, v5, v1}, Lcom/ibm/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move v5, v9

    move v9, v11

    .line 1358
    :goto_2
    const-string/jumbo v11, "not"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 1359
    if-nez v5, :cond_9

    if-nez v7, :cond_9

    .line 1360
    move-object/from16 v0, v28

    invoke-static {v4, v0}, Lcom/ibm/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v4

    throw v4

    .line 1352
    :cond_7
    const-string/jumbo v10, "within"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 1353
    const/4 v11, 0x0

    .line 1354
    add-int/lit8 v10, v5, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-static {v0, v5, v1}, Lcom/ibm/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move v5, v9

    move v9, v11

    goto :goto_2

    .line 1356
    :cond_8
    move-object/from16 v0, v28

    invoke-static {v4, v0}, Lcom/ibm/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v4

    throw v4

    .line 1362
    :cond_9
    if-nez v7, :cond_b

    const/4 v4, 0x1

    .line 1363
    :goto_3
    add-int/lit8 v11, v10, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-static {v0, v10, v1}, Lcom/ibm/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move v10, v11

    move-object/from16 v31, v7

    move v7, v4

    move-object/from16 v4, v31

    .line 1366
    :cond_a
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 1370
    :goto_4
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24

    .line 1372
    move-object/from16 v0, v29

    array-length v11, v0

    if-ge v10, v11, :cond_1d

    .line 1373
    add-int/lit8 v11, v10, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-static {v0, v10, v1}, Lcom/ibm/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1374
    const-string/jumbo v10, "."

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 1375
    add-int/lit8 v4, v11, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-static {v0, v11, v1}, Lcom/ibm/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1376
    const-string/jumbo v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_c

    .line 1377
    move-object/from16 v0, v28

    invoke-static {v10, v0}, Lcom/ibm/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v4

    throw v4

    .line 1362
    :cond_b
    const/4 v4, 0x0

    goto :goto_3

    .line 1379
    :cond_c
    add-int/lit8 v19, v4, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-static {v0, v4, v1}, Lcom/ibm/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1380
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 1381
    move-object/from16 v0, v29

    array-length v14, v0

    move/from16 v0, v19

    if-ge v0, v14, :cond_1c

    .line 1382
    add-int/lit8 v14, v19, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v19

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1383
    const-string/jumbo v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1b

    .line 1385
    move-object/from16 v0, v28

    invoke-static {v4, v0}, Lcom/ibm/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v4

    throw v4

    .line 1388
    :cond_d
    const-string/jumbo v10, ","

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e

    .line 1390
    move-object/from16 v0, v28

    invoke-static {v4, v0}, Lcom/ibm/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v4

    throw v4

    :cond_e
    move-wide/from16 v22, v24

    move/from16 v19, v11

    .line 1394
    :goto_5
    cmp-long v10, v24, v22

    if-lez v10, :cond_f

    .line 1395
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, v24

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "~"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v22

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-static {v4, v0}, Lcom/ibm/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v4

    throw v4

    .line 1396
    :cond_f
    if-eqz v6, :cond_10

    int-to-long v10, v6

    cmp-long v10, v22, v10

    if-ltz v10, :cond_10

    .line 1397
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, v22

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ">mod="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-static {v4, v0}, Lcom/ibm/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v4

    throw v4

    .line 1399
    :cond_10
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-object/from16 v0, v30

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1400
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-object/from16 v0, v30

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1401
    move-wide/from16 v0, v24

    long-to-double v10, v0

    move-wide/from16 v0, v20

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    .line 1402
    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    .line 1403
    move-object/from16 v0, v29

    array-length v14, v0

    move/from16 v0, v19

    if-lt v0, v14, :cond_11

    .line 1409
    const-string/jumbo v14, ","

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_12

    .line 1410
    move-object/from16 v0, v28

    invoke-static {v4, v0}, Lcom/ibm/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v4

    throw v4

    .line 1406
    :cond_11
    add-int/lit8 v14, v19, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v19

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-wide/from16 v20, v10

    move v10, v14

    .line 1407
    goto/16 :goto_4

    .line 1413
    :cond_12
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v4

    const/4 v14, 0x2

    if-ne v4, v14, :cond_13

    .line 1414
    const/4 v14, 0x0

    .line 1423
    :goto_6
    cmpl-double v4, v10, v12

    if-eqz v4, :cond_14

    if-eqz v5, :cond_14

    if-nez v7, :cond_14

    .line 1424
    const-string/jumbo v4, "is not <range>"

    move-object/from16 v0, v28

    invoke-static {v4, v0}, Lcom/ibm/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v4

    throw v4

    .line 1416
    :cond_13
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v4

    new-array v0, v4, [J

    move-object/from16 v19, v0

    .line 1417
    const/4 v4, 0x0

    move v14, v4

    :goto_7
    move-object/from16 v0, v19

    array-length v4, v0

    if-ge v14, v4, :cond_1a

    .line 1418
    move-object/from16 v0, v30

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    aput-wide v20, v19, v14

    .line 1417
    add-int/lit8 v4, v14, 0x1

    move v14, v4

    goto :goto_7

    .line 1427
    :cond_14
    new-instance v5, Lcom/ibm/icu/text/PluralRules$RangeConstraint;

    invoke-direct/range {v5 .. v14}, Lcom/ibm/icu/text/PluralRules$RangeConstraint;-><init>(IZLcom/ibm/icu/text/PluralRules$Operand;ZDD[J)V

    move-object v4, v5

    .line 1431
    :cond_15
    if-nez v15, :cond_16

    move-object v15, v4

    .line 1305
    :goto_8
    add-int/lit8 v4, v18, 0x1

    move/from16 v18, v4

    goto/16 :goto_1

    .line 1434
    :cond_16
    new-instance v5, Lcom/ibm/icu/text/PluralRules$AndConstraint;

    invoke-direct {v5, v15, v4}, Lcom/ibm/icu/text/PluralRules$AndConstraint;-><init>(Lcom/ibm/icu/text/PluralRules$Constraint;Lcom/ibm/icu/text/PluralRules$Constraint;)V

    move-object v15, v5

    goto :goto_8

    .line 1439
    :cond_17
    if-nez v17, :cond_18

    move-object v4, v15

    .line 1302
    :goto_9
    add-int/lit8 v5, v16, 0x1

    move/from16 v16, v5

    move-object/from16 v17, v4

    goto/16 :goto_0

    .line 1442
    :cond_18
    new-instance v4, Lcom/ibm/icu/text/PluralRules$OrConstraint;

    move-object/from16 v0, v17

    invoke-direct {v4, v0, v15}, Lcom/ibm/icu/text/PluralRules$OrConstraint;-><init>(Lcom/ibm/icu/text/PluralRules$Constraint;Lcom/ibm/icu/text/PluralRules$Constraint;)V

    goto :goto_9

    .line 1445
    :cond_19
    return-object v17

    :cond_1a
    move-object/from16 v14, v19

    goto :goto_6

    :cond_1b
    move-wide/from16 v22, v10

    move/from16 v19, v14

    goto/16 :goto_5

    :cond_1c
    move-wide/from16 v22, v10

    goto/16 :goto_5

    :cond_1d
    move-wide/from16 v22, v24

    move/from16 v19, v10

    goto/16 :goto_5
.end method

.method public static parseDescription(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules;
    .locals 2

    .prologue
    .line 389
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 390
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/ibm/icu/text/PluralRules;->DEFAULT:Lcom/ibm/icu/text/PluralRules;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/ibm/icu/text/PluralRules;

    invoke-static {v1}, Lcom/ibm/icu/text/PluralRules;->parseRuleChain(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules$RuleList;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/PluralRules;-><init>(Lcom/ibm/icu/text/PluralRules$RuleList;)V

    goto :goto_0
.end method

.method private static parseRule(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules$Rule;
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1480
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 1481
    sget-object v0, Lcom/ibm/icu/text/PluralRules;->DEFAULT_RULE:Lcom/ibm/icu/text/PluralRules$Rule;

    .line 1537
    :goto_0
    return-object v0

    .line 1484
    :cond_0
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 1486
    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 1487
    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 1488
    new-instance v0, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "missing \':\' in rule description \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1492
    :cond_1
    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 1493
    invoke-static {v5}, Lcom/ibm/icu/text/PluralRules;->isValidKeyword(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1494
    new-instance v0, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "keyword \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not valid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1498
    :cond_2
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 1499
    sget-object v3, Lcom/ibm/icu/text/PluralRules;->AT_SEPARATED:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v6

    .line 1502
    array-length v3, v6

    packed-switch v3, :pswitch_data_0

    .line 1519
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Too many samples in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move-object v3, v2

    .line 1526
    :cond_3
    :goto_1
    const-string/jumbo v4, "other"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1527
    aget-object v7, v6, v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_5

    :goto_2
    if-eq v4, v0, :cond_6

    .line 1528
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The keyword \'other\' must have no constraints, just samples."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1505
    :pswitch_1
    aget-object v3, v6, v0

    invoke-static {v3}, Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;->parse(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;

    move-result-object v3

    .line 1506
    iget-object v4, v3, Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;->sampleType:Lcom/ibm/icu/text/PluralRules$SampleType;

    sget-object v7, Lcom/ibm/icu/text/PluralRules$SampleType;->DECIMAL:Lcom/ibm/icu/text/PluralRules$SampleType;

    if-ne v4, v7, :cond_3

    move-object v9, v3

    move-object v3, v2

    move-object v2, v9

    .line 1508
    goto :goto_1

    .line 1512
    :pswitch_2
    aget-object v2, v6, v0

    invoke-static {v2}, Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;->parse(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;

    move-result-object v3

    .line 1513
    const/4 v2, 0x2

    aget-object v2, v6, v2

    invoke-static {v2}, Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;->parse(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;

    move-result-object v2

    .line 1514
    iget-object v7, v3, Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;->sampleType:Lcom/ibm/icu/text/PluralRules$SampleType;

    sget-object v8, Lcom/ibm/icu/text/PluralRules$SampleType;->INTEGER:Lcom/ibm/icu/text/PluralRules$SampleType;

    if-ne v7, v8, :cond_4

    iget-object v7, v2, Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;->sampleType:Lcom/ibm/icu/text/PluralRules$SampleType;

    sget-object v8, Lcom/ibm/icu/text/PluralRules$SampleType;->DECIMAL:Lcom/ibm/icu/text/PluralRules$SampleType;

    if-eq v7, v8, :cond_3

    .line 1515
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Must have @integer then @decimal in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move v0, v1

    .line 1527
    goto :goto_2

    .line 1532
    :cond_6
    if-eqz v4, :cond_7

    .line 1533
    sget-object v0, Lcom/ibm/icu/text/PluralRules;->NO_CONSTRAINT:Lcom/ibm/icu/text/PluralRules$Constraint;

    .line 1537
    :goto_3
    new-instance v1, Lcom/ibm/icu/text/PluralRules$Rule;

    invoke-direct {v1, v5, v0, v3, v2}, Lcom/ibm/icu/text/PluralRules$Rule;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/PluralRules$Constraint;Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;)V

    move-object v0, v1

    goto/16 :goto_0

    .line 1535
    :cond_7
    aget-object v0, v6, v1

    invoke-static {v0}, Lcom/ibm/icu/text/PluralRules;->parseConstraint(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules$Constraint;

    move-result-object v0

    goto :goto_3

    .line 1502
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static parseRuleChain(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules$RuleList;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1548
    new-instance v3, Lcom/ibm/icu/text/PluralRules$RuleList;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Lcom/ibm/icu/text/PluralRules$RuleList;-><init>(Lcom/ibm/icu/text/PluralRules$1;)V

    .line 1550
    const-string/jumbo v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1551
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1553
    :cond_0
    sget-object v0, Lcom/ibm/icu/text/PluralRules;->SEMI_SEPARATED:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v4

    move v0, v1

    .line 1554
    :goto_0
    array-length v2, v4

    if-ge v0, v2, :cond_3

    .line 1555
    aget-object v2, v4, v0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ibm/icu/text/PluralRules;->parseRule(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules$Rule;

    move-result-object v5

    .line 1556
    invoke-static {v3}, Lcom/ibm/icu/text/PluralRules$RuleList;->access$200(Lcom/ibm/icu/text/PluralRules$RuleList;)Z

    move-result v6

    invoke-static {v5}, Lcom/ibm/icu/text/PluralRules$Rule;->access$300(Lcom/ibm/icu/text/PluralRules$Rule;)Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {v5}, Lcom/ibm/icu/text/PluralRules$Rule;->access$400(Lcom/ibm/icu/text/PluralRules$Rule;)Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;

    move-result-object v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    :goto_1
    or-int/2addr v2, v6

    invoke-static {v3, v2}, Lcom/ibm/icu/text/PluralRules$RuleList;->access$202(Lcom/ibm/icu/text/PluralRules$RuleList;Z)Z

    .line 1557
    invoke-virtual {v3, v5}, Lcom/ibm/icu/text/PluralRules$RuleList;->addRule(Lcom/ibm/icu/text/PluralRules$Rule;)Lcom/ibm/icu/text/PluralRules$RuleList;

    .line 1554
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v2, v1

    .line 1556
    goto :goto_1

    .line 1559
    :cond_3
    invoke-virtual {v3}, Lcom/ibm/icu/text/PluralRules$RuleList;->finish()Lcom/ibm/icu/text/PluralRules$RuleList;

    move-result-object v0

    return-object v0
.end method

.method private static unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;
    .locals 3

    .prologue
    .line 1459
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected token \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' in \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public equals(Lcom/ibm/icu/text/PluralRules;)Z
    .locals 2

    .prologue
    .line 2330
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/ibm/icu/text/PluralRules;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ibm/icu/text/PluralRules;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 2319
    instance-of v0, p1, Lcom/ibm/icu/text/PluralRules;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/ibm/icu/text/PluralRules;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/PluralRules;->equals(Lcom/ibm/icu/text/PluralRules;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2058
    iget-object v0, p0, Lcom/ibm/icu/text/PluralRules;->rules:Lcom/ibm/icu/text/PluralRules$RuleList;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public select(D)Ljava/lang/String;
    .locals 3

    .prologue
    .line 2069
    iget-object v0, p0, Lcom/ibm/icu/text/PluralRules;->rules:Lcom/ibm/icu/text/PluralRules$RuleList;

    new-instance v1, Lcom/ibm/icu/text/PluralRules$FixedDecimal;

    invoke-direct {v1, p1, p2}, Lcom/ibm/icu/text/PluralRules$FixedDecimal;-><init>(D)V

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/PluralRules$RuleList;->select(Lcom/ibm/icu/text/PluralRules$IFixedDecimal;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public select(Lcom/ibm/icu/text/PluralRules$IFixedDecimal;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2097
    iget-object v0, p0, Lcom/ibm/icu/text/PluralRules;->rules:Lcom/ibm/icu/text/PluralRules$RuleList;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/PluralRules$RuleList;->select(Lcom/ibm/icu/text/PluralRules$IFixedDecimal;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2310
    iget-object v0, p0, Lcom/ibm/icu/text/PluralRules;->rules:Lcom/ibm/icu/text/PluralRules$RuleList;

    invoke-virtual {v0}, Lcom/ibm/icu/text/PluralRules$RuleList;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
