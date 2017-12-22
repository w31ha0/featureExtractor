.class public Lcom/ibm/icu/util/DateTimeRule;
.super Ljava/lang/Object;
.source "DateTimeRule.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final DOWSTR:[Ljava/lang/String;

.field private static final MONSTR:[Ljava/lang/String;


# instance fields
.field private final dateRuleType:I

.field private final dayOfMonth:I

.field private final dayOfWeek:I

.field private final millisInDay:I

.field private final month:I

.field private final timeRuleType:I

.field private final weekInMonth:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 258
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, ""

    aput-object v1, v0, v3

    const-string/jumbo v1, "Sun"

    aput-object v1, v0, v4

    const-string/jumbo v1, "Mon"

    aput-object v1, v0, v5

    const-string/jumbo v1, "Tue"

    aput-object v1, v0, v6

    const-string/jumbo v1, "Wed"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "Thu"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "Fri"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "Sat"

    aput-object v2, v0, v1

    sput-object v0, Lcom/ibm/icu/util/DateTimeRule;->DOWSTR:[Ljava/lang/String;

    .line 259
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "Jan"

    aput-object v1, v0, v3

    const-string/jumbo v1, "Feb"

    aput-object v1, v0, v4

    const-string/jumbo v1, "Mar"

    aput-object v1, v0, v5

    const-string/jumbo v1, "Apr"

    aput-object v1, v0, v6

    const-string/jumbo v1, "May"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "Jun"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "Jul"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "Aug"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "Sep"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "Oct"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "Nov"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "Dec"

    aput-object v2, v0, v1

    sput-object v0, Lcom/ibm/icu/util/DateTimeRule;->MONSTR:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput v0, p0, Lcom/ibm/icu/util/DateTimeRule;->dateRuleType:I

    .line 105
    iput p1, p0, Lcom/ibm/icu/util/DateTimeRule;->month:I

    .line 106
    iput p2, p0, Lcom/ibm/icu/util/DateTimeRule;->dayOfMonth:I

    .line 108
    iput p3, p0, Lcom/ibm/icu/util/DateTimeRule;->millisInDay:I

    .line 109
    iput p4, p0, Lcom/ibm/icu/util/DateTimeRule;->timeRuleType:I

    .line 112
    iput v0, p0, Lcom/ibm/icu/util/DateTimeRule;->dayOfWeek:I

    .line 113
    iput v0, p0, Lcom/ibm/icu/util/DateTimeRule;->weekInMonth:I

    .line 114
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 1

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    const/4 v0, 0x1

    iput v0, p0, Lcom/ibm/icu/util/DateTimeRule;->dateRuleType:I

    .line 135
    iput p1, p0, Lcom/ibm/icu/util/DateTimeRule;->month:I

    .line 136
    iput p2, p0, Lcom/ibm/icu/util/DateTimeRule;->weekInMonth:I

    .line 137
    iput p3, p0, Lcom/ibm/icu/util/DateTimeRule;->dayOfWeek:I

    .line 139
    iput p4, p0, Lcom/ibm/icu/util/DateTimeRule;->millisInDay:I

    .line 140
    iput p5, p0, Lcom/ibm/icu/util/DateTimeRule;->timeRuleType:I

    .line 143
    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu/util/DateTimeRule;->dayOfMonth:I

    .line 144
    return-void
.end method

.method public constructor <init>(IIIZII)V
    .locals 1

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    if-eqz p4, :cond_0

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/ibm/icu/util/DateTimeRule;->dateRuleType:I

    .line 165
    iput p1, p0, Lcom/ibm/icu/util/DateTimeRule;->month:I

    .line 166
    iput p2, p0, Lcom/ibm/icu/util/DateTimeRule;->dayOfMonth:I

    .line 167
    iput p3, p0, Lcom/ibm/icu/util/DateTimeRule;->dayOfWeek:I

    .line 169
    iput p5, p0, Lcom/ibm/icu/util/DateTimeRule;->millisInDay:I

    .line 170
    iput p6, p0, Lcom/ibm/icu/util/DateTimeRule;->timeRuleType:I

    .line 173
    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu/util/DateTimeRule;->weekInMonth:I

    .line 174
    return-void

    .line 164
    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method


# virtual methods
.method public getDateRuleType()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/ibm/icu/util/DateTimeRule;->dateRuleType:I

    return v0
.end method

.method public getRuleDayOfMonth()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/ibm/icu/util/DateTimeRule;->dayOfMonth:I

    return v0
.end method

.method public getRuleDayOfWeek()I
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lcom/ibm/icu/util/DateTimeRule;->dayOfWeek:I

    return v0
.end method

.method public getRuleMillisInDay()I
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Lcom/ibm/icu/util/DateTimeRule;->millisInDay:I

    return v0
.end method

.method public getRuleMonth()I
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lcom/ibm/icu/util/DateTimeRule;->month:I

    return v0
.end method

.method public getRuleWeekInMonth()I
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lcom/ibm/icu/util/DateTimeRule;->weekInMonth:I

    return v0
.end method

.method public getTimeRuleType()I
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Lcom/ibm/icu/util/DateTimeRule;->timeRuleType:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 270
    .line 273
    iget v0, p0, Lcom/ibm/icu/util/DateTimeRule;->dateRuleType:I

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    .line 288
    :goto_0
    iget v2, p0, Lcom/ibm/icu/util/DateTimeRule;->timeRuleType:I

    packed-switch v2, :pswitch_data_1

    .line 300
    :goto_1
    iget v2, p0, Lcom/ibm/icu/util/DateTimeRule;->millisInDay:I

    .line 301
    rem-int/lit16 v3, v2, 0x3e8

    .line 302
    div-int/lit16 v2, v2, 0x3e8

    .line 303
    rem-int/lit8 v4, v2, 0x3c

    .line 304
    div-int/lit8 v2, v2, 0x3c

    .line 305
    rem-int/lit8 v5, v2, 0x3c

    .line 306
    div-int/lit8 v2, v2, 0x3c

    .line 308
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 309
    const-string/jumbo v7, "month="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    sget-object v7, Lcom/ibm/icu/util/DateTimeRule;->MONSTR:[Ljava/lang/String;

    iget v8, p0, Lcom/ibm/icu/util/DateTimeRule;->month:I

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    const-string/jumbo v7, ", date="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    const-string/jumbo v0, ", time="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 315
    const-string/jumbo v0, ":"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    div-int/lit8 v0, v5, 0xa

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 317
    rem-int/lit8 v0, v5, 0xa

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 318
    const-string/jumbo v0, ":"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    div-int/lit8 v0, v4, 0xa

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 320
    rem-int/lit8 v0, v4, 0xa

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 321
    const-string/jumbo v0, "."

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    div-int/lit8 v0, v3, 0x64

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 323
    div-int/lit8 v0, v3, 0xa

    rem-int/lit8 v0, v0, 0xa

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 324
    rem-int/lit8 v0, v3, 0xa

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 325
    const-string/jumbo v0, "("

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    const-string/jumbo v0, ")"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 275
    :pswitch_0
    iget v0, p0, Lcom/ibm/icu/util/DateTimeRule;->dayOfMonth:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 278
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/ibm/icu/util/DateTimeRule;->weekInMonth:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/ibm/icu/util/DateTimeRule;->DOWSTR:[Ljava/lang/String;

    iget v3, p0, Lcom/ibm/icu/util/DateTimeRule;->dayOfWeek:I

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 281
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/ibm/icu/util/DateTimeRule;->DOWSTR:[Ljava/lang/String;

    iget v3, p0, Lcom/ibm/icu/util/DateTimeRule;->dayOfWeek:I

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ">="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/ibm/icu/util/DateTimeRule;->dayOfMonth:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 284
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/ibm/icu/util/DateTimeRule;->DOWSTR:[Ljava/lang/String;

    iget v3, p0, Lcom/ibm/icu/util/DateTimeRule;->dayOfWeek:I

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "<="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/ibm/icu/util/DateTimeRule;->dayOfMonth:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 290
    :pswitch_4
    const-string/jumbo v1, "WALL"

    goto/16 :goto_1

    .line 293
    :pswitch_5
    const-string/jumbo v1, "STD"

    goto/16 :goto_1

    .line 296
    :pswitch_6
    const-string/jumbo v1, "UTC"

    goto/16 :goto_1

    .line 273
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 288
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
