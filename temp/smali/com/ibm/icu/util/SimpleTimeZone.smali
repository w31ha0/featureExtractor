.class public Lcom/ibm/icu/util/SimpleTimeZone;
.super Lcom/ibm/icu/util/BasicTimeZone;
.source "SimpleTimeZone.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final staticMonthLength:[B


# instance fields
.field private dst:I

.field private transient dstRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

.field private endDay:I

.field private endDayOfWeek:I

.field private endMode:I

.field private endMonth:I

.field private endTime:I

.field private endTimeMode:I

.field private transient firstTransition:Lcom/ibm/icu/util/TimeZoneTransition;

.field private transient initialRule:Lcom/ibm/icu/util/InitialTimeZoneRule;

.field private volatile transient isFrozen:Z

.field private raw:I

.field private startDay:I

.field private startDayOfWeek:I

.field private startMode:I

.field private startMonth:I

.field private startTime:I

.field private startTimeMode:I

.field private startYear:I

.field private transient stdRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

.field private transient transitionRulesInitialized:Z

.field private useDaylight:Z

.field private xinfo:Lcom/ibm/icu/util/STZInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/ibm/icu/util/SimpleTimeZone;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/ibm/icu/util/SimpleTimeZone;->$assertionsDisabled:Z

    .line 637
    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ibm/icu/util/SimpleTimeZone;->staticMonthLength:[B

    return-void

    .line 34
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 637
    nop

    :array_0
    .array-data 1
        0x1ft
        0x1dt
        0x1ft
        0x1et
        0x1ft
        0x1et
        0x1ft
        0x1ft
        0x1et
        0x1ft
        0x1et
        0x1ft
    .end array-data
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 13

    .prologue
    const v12, 0x36ee80

    const/4 v2, 0x0

    .line 67
    invoke-direct {p0, p2}, Lcom/ibm/icu/util/BasicTimeZone;-><init>(Ljava/lang/String;)V

    .line 943
    iput v12, p0, Lcom/ibm/icu/util/SimpleTimeZone;->dst:I

    .line 944
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->xinfo:Lcom/ibm/icu/util/STZInfo;

    .line 1417
    iput-boolean v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->isFrozen:Z

    move-object v0, p0

    move v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    move v8, v2

    move v9, v2

    move v10, v2

    move v11, v2

    .line 68
    invoke-direct/range {v0 .. v12}, Lcom/ibm/icu/util/SimpleTimeZone;->construct(IIIIIIIIIIII)V

    .line 73
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIIIIIIIIII)V
    .locals 13

    .prologue
    .line 187
    invoke-direct {p0, p2}, Lcom/ibm/icu/util/BasicTimeZone;-><init>(Ljava/lang/String;)V

    .line 943
    const v0, 0x36ee80

    iput v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->dst:I

    .line 944
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->xinfo:Lcom/ibm/icu/util/STZInfo;

    .line 1417
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->isFrozen:Z

    move-object v0, p0

    move v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move/from16 v11, p12

    move/from16 v12, p13

    .line 188
    invoke-direct/range {v0 .. v12}, Lcom/ibm/icu/util/SimpleTimeZone;->construct(IIIIIIIIIIII)V

    .line 194
    return-void
.end method

.method private compareToRule(IIIIIIIIIIII)I
    .locals 7

    .prologue
    .line 855
    add-int v1, p6, p7

    move v2, p5

    move v3, p4

    move v4, p1

    .line 857
    :cond_0
    :goto_0
    const v5, 0x5265c00

    if-lt v1, v5, :cond_b

    .line 858
    const v5, 0x5265c00

    sub-int/2addr v1, v5

    .line 859
    add-int/lit8 v3, v3, 0x1

    .line 860
    rem-int/lit8 v2, v2, 0x7

    add-int/lit8 v2, v2, 0x1

    .line 861
    if-le v3, p2, :cond_0

    .line 862
    const/4 v3, 0x1

    .line 867
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 880
    :goto_1
    if-gez v3, :cond_2

    .line 882
    add-int/lit8 v1, v5, -0x1

    .line 883
    add-int/lit8 v4, v4, 0x5

    rem-int/lit8 v4, v4, 0x7

    add-int/lit8 v4, v4, 0x1

    .line 884
    const/4 v5, 0x1

    if-ge v1, v5, :cond_1

    .line 886
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    move v1, p3

    .line 888
    :cond_1
    const v5, 0x5265c00

    add-int/2addr v3, v5

    move v5, v1

    goto :goto_1

    .line 891
    :cond_2
    move/from16 v0, p9

    if-ge v2, v0, :cond_3

    const/4 v1, -0x1

    .line 937
    :goto_2
    return v1

    .line 892
    :cond_3
    move/from16 v0, p9

    if-le v2, v0, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    .line 894
    :cond_4
    const/4 v2, 0x0

    .line 897
    move/from16 v0, p11

    if-le v0, p2, :cond_a

    move v1, p2

    .line 901
    :goto_3
    packed-switch p8, :pswitch_data_0

    move v1, v2

    .line 929
    :goto_4
    :pswitch_0
    if-ge v5, v1, :cond_6

    const/4 v1, -0x1

    goto :goto_2

    .line 908
    :pswitch_1
    if-lez v1, :cond_5

    .line 909
    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v1, v1, 0x7

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, p10, 0x7

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    sub-int/2addr v2, v4

    rem-int/lit8 v2, v2, 0x7

    add-int/2addr v1, v2

    goto :goto_4

    .line 913
    :cond_5
    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x7

    add-int/2addr v1, p2

    add-int v2, v4, p2

    sub-int/2addr v2, v5

    add-int/lit8 v2, v2, 0x7

    sub-int v2, v2, p10

    rem-int/lit8 v2, v2, 0x7

    sub-int/2addr v1, v2

    .line 916
    goto :goto_4

    .line 918
    :pswitch_2
    add-int/lit8 v2, p10, 0x31

    sub-int/2addr v2, v1

    sub-int/2addr v2, v4

    add-int/2addr v2, v5

    rem-int/lit8 v2, v2, 0x7

    add-int/2addr v1, v2

    .line 920
    goto :goto_4

    .line 922
    :pswitch_3
    rsub-int/lit8 v2, p10, 0x31

    add-int/2addr v2, v1

    add-int/2addr v2, v4

    sub-int/2addr v2, v5

    rem-int/lit8 v2, v2, 0x7

    sub-int/2addr v1, v2

    goto :goto_4

    .line 930
    :cond_6
    if-le v5, v1, :cond_7

    const/4 v1, 0x1

    goto :goto_2

    .line 932
    :cond_7
    move/from16 v0, p12

    if-ge v3, v0, :cond_8

    .line 933
    const/4 v1, -0x1

    goto :goto_2

    .line 934
    :cond_8
    move/from16 v0, p12

    if-le v3, v0, :cond_9

    .line 935
    const/4 v1, 0x1

    goto :goto_2

    .line 937
    :cond_9
    const/4 v1, 0x0

    goto :goto_2

    :cond_a
    move/from16 v1, p11

    goto :goto_3

    :cond_b
    move v5, v3

    move v3, v1

    move v6, v2

    move v2, v4

    move v4, v6

    goto :goto_1

    .line 901
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private construct(IIIIIIIIIIII)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1000
    iput p1, p0, Lcom/ibm/icu/util/SimpleTimeZone;->raw:I

    .line 1001
    iput p2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startMonth:I

    .line 1002
    iput p3, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startDay:I

    .line 1003
    iput p4, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startDayOfWeek:I

    .line 1004
    iput p5, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startTime:I

    .line 1005
    iput p6, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startTimeMode:I

    .line 1006
    iput p7, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endMonth:I

    .line 1007
    iput p8, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endDay:I

    .line 1008
    iput p9, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endDayOfWeek:I

    .line 1009
    iput p10, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endTime:I

    .line 1010
    iput p11, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endTimeMode:I

    .line 1011
    iput p12, p0, Lcom/ibm/icu/util/SimpleTimeZone;->dst:I

    .line 1012
    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startYear:I

    .line 1013
    iput v1, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startMode:I

    .line 1014
    iput v1, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endMode:I

    .line 1016
    invoke-direct {p0}, Lcom/ibm/icu/util/SimpleTimeZone;->decodeRules()V

    .line 1018
    if-gtz p12, :cond_0

    .line 1019
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1021
    :cond_0
    return-void
.end method

.method private decodeEndRule()V
    .locals 5

    .prologue
    const v4, 0x5265c00

    const/4 v3, 0x2

    const/4 v1, 0x1

    .line 1098
    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startDay:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endDay:I

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->useDaylight:Z

    .line 1099
    iget-boolean v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->dst:I

    if-nez v0, :cond_0

    .line 1100
    iput v4, p0, Lcom/ibm/icu/util/SimpleTimeZone;->dst:I

    .line 1102
    :cond_0
    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endDay:I

    if-eqz v0, :cond_d

    .line 1103
    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endMonth:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endMonth:I

    const/16 v2, 0xb

    if-le v0, v2, :cond_3

    .line 1104
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1098
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1106
    :cond_3
    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endTime:I

    if-ltz v0, :cond_4

    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endTime:I

    if-gt v0, v4, :cond_4

    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endTimeMode:I

    if-ltz v0, :cond_4

    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endTimeMode:I

    if-le v0, v3, :cond_5

    .line 1108
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1110
    :cond_5
    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endDayOfWeek:I

    if-nez v0, :cond_8

    .line 1111
    iput v1, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endMode:I

    .line 1128
    :cond_6
    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endMode:I

    if-ne v0, v3, :cond_b

    .line 1129
    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endDay:I

    const/4 v1, -0x5

    if-lt v0, v1, :cond_7

    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endDay:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_d

    .line 1130
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1113
    :cond_8
    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endDayOfWeek:I

    if-lez v0, :cond_9

    .line 1114
    iput v3, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endMode:I

    .line 1124
    :goto_1
    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endDayOfWeek:I

    const/4 v2, 0x7

    if-le v0, v2, :cond_6

    .line 1125
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1116
    :cond_9
    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endDayOfWeek:I

    neg-int v0, v0

    iput v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endDayOfWeek:I

    .line 1117
    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endDay:I

    if-lez v0, :cond_a

    .line 1118
    const/4 v0, 0x3

    iput v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endMode:I

    goto :goto_1

    .line 1120
    :cond_a
    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endDay:I

    neg-int v0, v0

    iput v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endDay:I

    .line 1121
    const/4 v0, 0x4

    iput v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endMode:I

    goto :goto_1

    .line 1132
    :cond_b
    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endDay:I

    if-lt v0, v1, :cond_c

    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endDay:I

    sget-object v1, Lcom/ibm/icu/util/SimpleTimeZone;->staticMonthLength:[B

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endMonth:I

    aget-byte v1, v1, v2

    if-le v0, v1, :cond_d

    .line 1133
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1136
    :cond_d
    return-void
.end method

.method private decodeRules()V
    .locals 0

    .prologue
    .line 1023
    invoke-direct {p0}, Lcom/ibm/icu/util/SimpleTimeZone;->decodeStartRule()V

    .line 1024
    invoke-direct {p0}, Lcom/ibm/icu/util/SimpleTimeZone;->decodeEndRule()V

    .line 1025
    return-void
.end method

.method private decodeStartRule()V
    .locals 5

    .prologue
    const v4, 0x5265c00

    const/4 v3, 0x2

    const/4 v1, 0x1

    .line 1052
    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startDay:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endDay:I

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->useDaylight:Z

    .line 1053
    iget-boolean v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->dst:I

    if-nez v0, :cond_0

    .line 1054
    iput v4, p0, Lcom/ibm/icu/util/SimpleTimeZone;->dst:I

    .line 1056
    :cond_0
    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startDay:I

    if-eqz v0, :cond_d

    .line 1057
    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startMonth:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startMonth:I

    const/16 v2, 0xb

    if-le v0, v2, :cond_3

    .line 1058
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1052
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1060
    :cond_3
    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startTime:I

    if-ltz v0, :cond_4

    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startTime:I

    if-gt v0, v4, :cond_4

    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startTimeMode:I

    if-ltz v0, :cond_4

    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startTimeMode:I

    if-le v0, v3, :cond_5

    .line 1062
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1064
    :cond_5
    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startDayOfWeek:I

    if-nez v0, :cond_8

    .line 1065
    iput v1, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startMode:I

    .line 1082
    :cond_6
    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startMode:I

    if-ne v0, v3, :cond_b

    .line 1083
    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startDay:I

    const/4 v1, -0x5

    if-lt v0, v1, :cond_7

    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startDay:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_d

    .line 1084
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1067
    :cond_8
    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startDayOfWeek:I

    if-lez v0, :cond_9

    .line 1068
    iput v3, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startMode:I

    .line 1078
    :goto_1
    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startDayOfWeek:I

    const/4 v2, 0x7

    if-le v0, v2, :cond_6

    .line 1079
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1070
    :cond_9
    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startDayOfWeek:I

    neg-int v0, v0

    iput v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startDayOfWeek:I

    .line 1071
    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startDay:I

    if-lez v0, :cond_a

    .line 1072
    const/4 v0, 0x3

    iput v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startMode:I

    goto :goto_1

    .line 1074
    :cond_a
    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startDay:I

    neg-int v0, v0

    iput v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startDay:I

    .line 1075
    const/4 v0, 0x4

    iput v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startMode:I

    goto :goto_1

    .line 1086
    :cond_b
    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startDay:I

    if-lt v0, v1, :cond_c

    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startDay:I

    sget-object v1, Lcom/ibm/icu/util/SimpleTimeZone;->staticMonthLength:[B

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startMonth:I

    aget-byte v1, v1, v2

    if-le v0, v1, :cond_d

    .line 1087
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1090
    :cond_d
    return-void
.end method

.method private getOffset(IIIIIIII)I
    .locals 18

    .prologue
    .line 692
    const/4 v2, 0x1

    move/from16 v0, p1

    if-eq v0, v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    if-ltz p3, :cond_1

    const/16 v2, 0xb

    move/from16 v0, p3

    if-gt v0, v2, :cond_1

    const/4 v2, 0x1

    move/from16 v0, p4

    if-lt v0, v2, :cond_1

    move/from16 v0, p4

    move/from16 v1, p7

    if-gt v0, v1, :cond_1

    const/4 v2, 0x1

    move/from16 v0, p5

    if-lt v0, v2, :cond_1

    const/4 v2, 0x7

    move/from16 v0, p5

    if-gt v0, v2, :cond_1

    if-ltz p6, :cond_1

    const v2, 0x5265c00

    move/from16 v0, p6

    if-ge v0, v2, :cond_1

    const/16 v2, 0x1c

    move/from16 v0, p7

    if-lt v0, v2, :cond_1

    const/16 v2, 0x1f

    move/from16 v0, p7

    if-gt v0, v2, :cond_1

    const/16 v2, 0x1c

    move/from16 v0, p8

    if-lt v0, v2, :cond_1

    const/16 v2, 0x1f

    move/from16 v0, p8

    if-le v0, v2, :cond_2

    .line 705
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 742
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ibm/icu/util/SimpleTimeZone;->raw:I

    move/from16 v16, v0

    .line 745
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ibm/icu/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/ibm/icu/util/SimpleTimeZone;->startYear:I

    move/from16 v0, p2

    if-lt v0, v2, :cond_3

    const/4 v2, 0x1

    move/from16 v0, p1

    if-eq v0, v2, :cond_4

    :cond_3
    move/from16 v2, v16

    .line 786
    :goto_0
    return v2

    .line 749
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ibm/icu/util/SimpleTimeZone;->startMonth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/ibm/icu/util/SimpleTimeZone;->endMonth:I

    if-le v2, v3, :cond_8

    const/4 v2, 0x1

    move v15, v2

    .line 753
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ibm/icu/util/SimpleTimeZone;->startTimeMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/ibm/icu/util/SimpleTimeZone;->raw:I

    neg-int v9, v2

    :goto_2
    move-object/from16 v0, p0

    iget v10, v0, Lcom/ibm/icu/util/SimpleTimeZone;->startMode:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/ibm/icu/util/SimpleTimeZone;->startMonth:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/ibm/icu/util/SimpleTimeZone;->startDayOfWeek:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/ibm/icu/util/SimpleTimeZone;->startDay:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/ibm/icu/util/SimpleTimeZone;->startTime:I

    move-object/from16 v2, p0

    move/from16 v3, p3

    move/from16 v4, p7

    move/from16 v5, p8

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v2 .. v14}, Lcom/ibm/icu/util/SimpleTimeZone;->compareToRule(IIIIIIIIIIII)I

    move-result v17

    .line 758
    const/4 v2, 0x0

    .line 766
    if-ltz v17, :cond_a

    const/4 v3, 0x1

    :goto_3
    if-eq v15, v3, :cond_5

    .line 770
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ibm/icu/util/SimpleTimeZone;->endTimeMode:I

    if-nez v2, :cond_b

    move-object/from16 v0, p0

    iget v9, v0, Lcom/ibm/icu/util/SimpleTimeZone;->dst:I

    :goto_4
    move-object/from16 v0, p0

    iget v10, v0, Lcom/ibm/icu/util/SimpleTimeZone;->endMode:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/ibm/icu/util/SimpleTimeZone;->endMonth:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/ibm/icu/util/SimpleTimeZone;->endDayOfWeek:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/ibm/icu/util/SimpleTimeZone;->endDay:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/ibm/icu/util/SimpleTimeZone;->endTime:I

    move-object/from16 v2, p0

    move/from16 v3, p3

    move/from16 v4, p7

    move/from16 v5, p8

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v2 .. v14}, Lcom/ibm/icu/util/SimpleTimeZone;->compareToRule(IIIIIIIIIIII)I

    move-result v2

    .line 782
    :cond_5
    if-nez v15, :cond_6

    if-ltz v17, :cond_6

    if-ltz v2, :cond_7

    :cond_6
    if-eqz v15, :cond_d

    if-gez v17, :cond_7

    if-gez v2, :cond_d

    .line 784
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ibm/icu/util/SimpleTimeZone;->dst:I

    add-int v2, v2, v16

    goto/16 :goto_0

    .line 749
    :cond_8
    const/4 v2, 0x0

    move v15, v2

    goto :goto_1

    .line 753
    :cond_9
    const/4 v9, 0x0

    goto :goto_2

    .line 766
    :cond_a
    const/4 v3, 0x0

    goto :goto_3

    .line 770
    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ibm/icu/util/SimpleTimeZone;->endTimeMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/ibm/icu/util/SimpleTimeZone;->raw:I

    neg-int v9, v2

    goto :goto_4

    :cond_c
    const/4 v9, 0x0

    goto :goto_4

    :cond_d
    move/from16 v2, v16

    goto/16 :goto_0
.end method

.method private getSTZInfo()Lcom/ibm/icu/util/STZInfo;
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->xinfo:Lcom/ibm/icu/util/STZInfo;

    if-nez v0, :cond_0

    .line 622
    new-instance v0, Lcom/ibm/icu/util/STZInfo;

    invoke-direct {v0}, Lcom/ibm/icu/util/STZInfo;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->xinfo:Lcom/ibm/icu/util/STZInfo;

    .line 624
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->xinfo:Lcom/ibm/icu/util/STZInfo;

    return-object v0
.end method

.method private idEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1170
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 1171
    const/4 v0, 0x1

    .line 1176
    :goto_0
    return v0

    .line 1173
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1174
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 1176
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized initTransitionRules()V
    .locals 18

    .prologue
    .line 1338
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ibm/icu/util/SimpleTimeZone;->transitionRulesInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 1414
    :goto_0
    monitor-exit p0

    return-void

    .line 1341
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ibm/icu/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v2, :cond_6

    .line 1342
    const/4 v8, 0x0

    .line 1347
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ibm/icu/util/SimpleTimeZone;->startTimeMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v7, 0x1

    .line 1349
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ibm/icu/util/SimpleTimeZone;->startMode:I

    packed-switch v2, :pswitch_data_0

    move-object v6, v8

    .line 1367
    :goto_2
    new-instance v2, Lcom/ibm/icu/util/AnnualTimeZoneRule;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "(DST)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/util/SimpleTimeZone;->getRawOffset()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/util/SimpleTimeZone;->getDSTSavings()I

    move-result v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/ibm/icu/util/SimpleTimeZone;->startYear:I

    const v8, 0x7fffffff

    invoke-direct/range {v2 .. v8}, Lcom/ibm/icu/util/AnnualTimeZoneRule;-><init>(Ljava/lang/String;IILcom/ibm/icu/util/DateTimeRule;II)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ibm/icu/util/SimpleTimeZone;->dstRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    .line 1371
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ibm/icu/util/SimpleTimeZone;->dstRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/util/SimpleTimeZone;->getRawOffset()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getFirstStart(II)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    .line 1374
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ibm/icu/util/SimpleTimeZone;->endTimeMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    const/4 v7, 0x1

    .line 1376
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ibm/icu/util/SimpleTimeZone;->endMode:I

    packed-switch v2, :pswitch_data_1

    .line 1393
    :goto_4
    new-instance v2, Lcom/ibm/icu/util/AnnualTimeZoneRule;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "(STD)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/util/SimpleTimeZone;->getRawOffset()I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/ibm/icu/util/SimpleTimeZone;->startYear:I

    const v8, 0x7fffffff

    invoke-direct/range {v2 .. v8}, Lcom/ibm/icu/util/AnnualTimeZoneRule;-><init>(Ljava/lang/String;IILcom/ibm/icu/util/DateTimeRule;II)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ibm/icu/util/SimpleTimeZone;->stdRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    .line 1397
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ibm/icu/util/SimpleTimeZone;->stdRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/util/SimpleTimeZone;->getRawOffset()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ibm/icu/util/SimpleTimeZone;->dstRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v4}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getFirstStart(II)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 1400
    cmp-long v4, v2, v16

    if-gez v4, :cond_5

    .line 1401
    new-instance v4, Lcom/ibm/icu/util/InitialTimeZoneRule;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "(DST)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/util/SimpleTimeZone;->getRawOffset()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ibm/icu/util/SimpleTimeZone;->dstRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    .line 1402
    invoke-virtual {v7}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Lcom/ibm/icu/util/InitialTimeZoneRule;-><init>(Ljava/lang/String;II)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/ibm/icu/util/SimpleTimeZone;->initialRule:Lcom/ibm/icu/util/InitialTimeZoneRule;

    .line 1403
    new-instance v4, Lcom/ibm/icu/util/TimeZoneTransition;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ibm/icu/util/SimpleTimeZone;->initialRule:Lcom/ibm/icu/util/InitialTimeZoneRule;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ibm/icu/util/SimpleTimeZone;->stdRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    invoke-direct {v4, v2, v3, v5, v6}, Lcom/ibm/icu/util/TimeZoneTransition;-><init>(JLcom/ibm/icu/util/TimeZoneRule;Lcom/ibm/icu/util/TimeZoneRule;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/ibm/icu/util/SimpleTimeZone;->firstTransition:Lcom/ibm/icu/util/TimeZoneTransition;

    .line 1413
    :goto_5
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/ibm/icu/util/SimpleTimeZone;->transitionRulesInitialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 1338
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1347
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ibm/icu/util/SimpleTimeZone;->startTimeMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    const/4 v7, 0x2

    goto/16 :goto_1

    :cond_2
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 1351
    :pswitch_0
    new-instance v8, Lcom/ibm/icu/util/DateTimeRule;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/ibm/icu/util/SimpleTimeZone;->startMonth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/ibm/icu/util/SimpleTimeZone;->startDay:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/ibm/icu/util/SimpleTimeZone;->startTime:I

    invoke-direct {v8, v2, v3, v4, v7}, Lcom/ibm/icu/util/DateTimeRule;-><init>(IIII)V

    move-object v6, v8

    .line 1352
    goto/16 :goto_2

    .line 1354
    :pswitch_1
    new-instance v2, Lcom/ibm/icu/util/DateTimeRule;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/ibm/icu/util/SimpleTimeZone;->startMonth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/ibm/icu/util/SimpleTimeZone;->startDay:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/ibm/icu/util/SimpleTimeZone;->startDayOfWeek:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/ibm/icu/util/SimpleTimeZone;->startTime:I

    invoke-direct/range {v2 .. v7}, Lcom/ibm/icu/util/DateTimeRule;-><init>(IIIII)V

    move-object v6, v2

    .line 1356
    goto/16 :goto_2

    .line 1358
    :pswitch_2
    new-instance v8, Lcom/ibm/icu/util/DateTimeRule;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/ibm/icu/util/SimpleTimeZone;->startMonth:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/ibm/icu/util/SimpleTimeZone;->startDay:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/ibm/icu/util/SimpleTimeZone;->startDayOfWeek:I

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/ibm/icu/util/SimpleTimeZone;->startTime:I

    move v14, v7

    invoke-direct/range {v8 .. v14}, Lcom/ibm/icu/util/DateTimeRule;-><init>(IIIZII)V

    move-object v6, v8

    .line 1360
    goto/16 :goto_2

    .line 1362
    :pswitch_3
    new-instance v8, Lcom/ibm/icu/util/DateTimeRule;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/ibm/icu/util/SimpleTimeZone;->startMonth:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/ibm/icu/util/SimpleTimeZone;->startDay:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/ibm/icu/util/SimpleTimeZone;->startDayOfWeek:I

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/ibm/icu/util/SimpleTimeZone;->startTime:I

    move v14, v7

    invoke-direct/range {v8 .. v14}, Lcom/ibm/icu/util/DateTimeRule;-><init>(IIIZII)V

    move-object v6, v8

    goto/16 :goto_2

    .line 1374
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ibm/icu/util/SimpleTimeZone;->endTimeMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    const/4 v7, 0x2

    goto/16 :goto_3

    :cond_4
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 1378
    :pswitch_4
    new-instance v6, Lcom/ibm/icu/util/DateTimeRule;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/ibm/icu/util/SimpleTimeZone;->endMonth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/ibm/icu/util/SimpleTimeZone;->endDay:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/ibm/icu/util/SimpleTimeZone;->endTime:I

    invoke-direct {v6, v2, v3, v4, v7}, Lcom/ibm/icu/util/DateTimeRule;-><init>(IIII)V

    goto/16 :goto_4

    .line 1381
    :pswitch_5
    new-instance v2, Lcom/ibm/icu/util/DateTimeRule;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/ibm/icu/util/SimpleTimeZone;->endMonth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/ibm/icu/util/SimpleTimeZone;->endDay:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/ibm/icu/util/SimpleTimeZone;->endDayOfWeek:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/ibm/icu/util/SimpleTimeZone;->endTime:I

    invoke-direct/range {v2 .. v7}, Lcom/ibm/icu/util/DateTimeRule;-><init>(IIIII)V

    move-object v6, v2

    .line 1382
    goto/16 :goto_4

    .line 1384
    :pswitch_6
    new-instance v8, Lcom/ibm/icu/util/DateTimeRule;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/ibm/icu/util/SimpleTimeZone;->endMonth:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/ibm/icu/util/SimpleTimeZone;->endDay:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/ibm/icu/util/SimpleTimeZone;->endDayOfWeek:I

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/ibm/icu/util/SimpleTimeZone;->endTime:I

    move v14, v7

    invoke-direct/range {v8 .. v14}, Lcom/ibm/icu/util/DateTimeRule;-><init>(IIIZII)V

    move-object v6, v8

    .line 1386
    goto/16 :goto_4

    .line 1388
    :pswitch_7
    new-instance v8, Lcom/ibm/icu/util/DateTimeRule;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/ibm/icu/util/SimpleTimeZone;->endMonth:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/ibm/icu/util/SimpleTimeZone;->endDay:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/ibm/icu/util/SimpleTimeZone;->endDayOfWeek:I

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/ibm/icu/util/SimpleTimeZone;->endTime:I

    move v14, v7

    invoke-direct/range {v8 .. v14}, Lcom/ibm/icu/util/DateTimeRule;-><init>(IIIZII)V

    move-object v6, v8

    goto/16 :goto_4

    .line 1405
    :cond_5
    new-instance v2, Lcom/ibm/icu/util/InitialTimeZoneRule;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "(STD)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/util/SimpleTimeZone;->getRawOffset()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/ibm/icu/util/InitialTimeZoneRule;-><init>(Ljava/lang/String;II)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ibm/icu/util/SimpleTimeZone;->initialRule:Lcom/ibm/icu/util/InitialTimeZoneRule;

    .line 1406
    new-instance v2, Lcom/ibm/icu/util/TimeZoneTransition;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ibm/icu/util/SimpleTimeZone;->initialRule:Lcom/ibm/icu/util/InitialTimeZoneRule;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ibm/icu/util/SimpleTimeZone;->dstRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    move-wide/from16 v0, v16

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/ibm/icu/util/TimeZoneTransition;-><init>(JLcom/ibm/icu/util/TimeZoneRule;Lcom/ibm/icu/util/TimeZoneRule;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ibm/icu/util/SimpleTimeZone;->firstTransition:Lcom/ibm/icu/util/TimeZoneTransition;

    goto/16 :goto_5

    .line 1411
    :cond_6
    new-instance v2, Lcom/ibm/icu/util/InitialTimeZoneRule;

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/util/SimpleTimeZone;->getRawOffset()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/ibm/icu/util/InitialTimeZoneRule;-><init>(Ljava/lang/String;II)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ibm/icu/util/SimpleTimeZone;->initialRule:Lcom/ibm/icu/util/InitialTimeZoneRule;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_5

    .line 1349
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1376
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1213
    invoke-virtual {p0}, Lcom/ibm/icu/util/SimpleTimeZone;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1216
    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/util/SimpleTimeZone;->cloneAsThawed()Lcom/ibm/icu/util/TimeZone;

    move-result-object p0

    goto :goto_0
.end method

.method public cloneAsThawed()Lcom/ibm/icu/util/TimeZone;
    .locals 2

    .prologue
    .line 1444
    invoke-super {p0}, Lcom/ibm/icu/util/BasicTimeZone;->cloneAsThawed()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/util/SimpleTimeZone;

    .line 1445
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/ibm/icu/util/SimpleTimeZone;->isFrozen:Z

    .line 1446
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1145
    if-ne p0, p1, :cond_1

    .line 1148
    :cond_0
    :goto_0
    return v0

    .line 1146
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 1147
    :cond_3
    check-cast p1, Lcom/ibm/icu/util/SimpleTimeZone;

    .line 1148
    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->raw:I

    iget v3, p1, Lcom/ibm/icu/util/SimpleTimeZone;->raw:I

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->useDaylight:Z

    iget-boolean v3, p1, Lcom/ibm/icu/util/SimpleTimeZone;->useDaylight:Z

    if-ne v2, v3, :cond_4

    .line 1150
    invoke-virtual {p0}, Lcom/ibm/icu/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ibm/icu/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/ibm/icu/util/SimpleTimeZone;->idEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->dst:I

    iget v3, p1, Lcom/ibm/icu/util/SimpleTimeZone;->dst:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startMode:I

    iget v3, p1, Lcom/ibm/icu/util/SimpleTimeZone;->startMode:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startMonth:I

    iget v3, p1, Lcom/ibm/icu/util/SimpleTimeZone;->startMonth:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startDay:I

    iget v3, p1, Lcom/ibm/icu/util/SimpleTimeZone;->startDay:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startDayOfWeek:I

    iget v3, p1, Lcom/ibm/icu/util/SimpleTimeZone;->startDayOfWeek:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startTime:I

    iget v3, p1, Lcom/ibm/icu/util/SimpleTimeZone;->startTime:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startTimeMode:I

    iget v3, p1, Lcom/ibm/icu/util/SimpleTimeZone;->startTimeMode:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endMode:I

    iget v3, p1, Lcom/ibm/icu/util/SimpleTimeZone;->endMode:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endMonth:I

    iget v3, p1, Lcom/ibm/icu/util/SimpleTimeZone;->endMonth:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endDay:I

    iget v3, p1, Lcom/ibm/icu/util/SimpleTimeZone;->endDay:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endDayOfWeek:I

    iget v3, p1, Lcom/ibm/icu/util/SimpleTimeZone;->endDayOfWeek:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endTime:I

    iget v3, p1, Lcom/ibm/icu/util/SimpleTimeZone;->endTime:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endTimeMode:I

    iget v3, p1, Lcom/ibm/icu/util/SimpleTimeZone;->endTimeMode:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startYear:I

    iget v3, p1, Lcom/ibm/icu/util/SimpleTimeZone;->startYear:I

    if-eq v2, v3, :cond_0

    :cond_4
    move v0, v1

    goto/16 :goto_0
.end method

.method public freeze()Lcom/ibm/icu/util/TimeZone;
    .locals 1

    .prologue
    .line 1434
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->isFrozen:Z

    .line 1435
    return-object p0
.end method

.method public getDSTSavings()I
    .locals 1

    .prologue
    .line 568
    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->dst:I

    return v0
.end method

.method public getNextTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 1263
    iget-boolean v1, p0, Lcom/ibm/icu/util/SimpleTimeZone;->useDaylight:Z

    if-nez v1, :cond_1

    .line 1282
    :cond_0
    :goto_0
    return-object v0

    .line 1267
    :cond_1
    invoke-direct {p0}, Lcom/ibm/icu/util/SimpleTimeZone;->initTransitionRules()V

    .line 1268
    iget-object v1, p0, Lcom/ibm/icu/util/SimpleTimeZone;->firstTransition:Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v2

    .line 1269
    cmp-long v1, p1, v2

    if-ltz v1, :cond_2

    if-eqz p3, :cond_3

    cmp-long v1, p1, v2

    if-nez v1, :cond_3

    .line 1270
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->firstTransition:Lcom/ibm/icu/util/TimeZoneTransition;

    goto :goto_0

    .line 1272
    :cond_3
    iget-object v1, p0, Lcom/ibm/icu/util/SimpleTimeZone;->stdRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    iget-object v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->dstRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v2}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v4

    iget-object v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->dstRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v2}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v5

    move-wide v2, p1

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object v7

    .line 1274
    iget-object v1, p0, Lcom/ibm/icu/util/SimpleTimeZone;->dstRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    iget-object v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->stdRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v2}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v4

    iget-object v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->stdRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v2}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v5

    move-wide v2, p1

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object v1

    .line 1276
    if-eqz v7, :cond_5

    if-eqz v1, :cond_4

    invoke-virtual {v7, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1277
    :cond_4
    new-instance v0, Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/ibm/icu/util/SimpleTimeZone;->dstRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    iget-object v4, p0, Lcom/ibm/icu/util/SimpleTimeZone;->stdRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/ibm/icu/util/TimeZoneTransition;-><init>(JLcom/ibm/icu/util/TimeZoneRule;Lcom/ibm/icu/util/TimeZoneRule;)V

    goto :goto_0

    .line 1279
    :cond_5
    if-eqz v1, :cond_0

    if-eqz v7, :cond_6

    invoke-virtual {v1, v7}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1280
    :cond_6
    new-instance v0, Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/ibm/icu/util/SimpleTimeZone;->stdRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    iget-object v4, p0, Lcom/ibm/icu/util/SimpleTimeZone;->dstRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/ibm/icu/util/TimeZoneTransition;-><init>(JLcom/ibm/icu/util/TimeZoneRule;Lcom/ibm/icu/util/TimeZoneRule;)V

    goto :goto_0
.end method

.method public getOffset(IIIIII)I
    .locals 8

    .prologue
    .line 654
    if-ltz p3, :cond_0

    const/16 v0, 0xb

    if-le p3, v0, :cond_1

    .line 655
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 658
    :cond_1
    invoke-static {p2, p3}, Lcom/ibm/icu/impl/Grego;->monthLength(II)I

    move-result v7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/ibm/icu/util/SimpleTimeZone;->getOffset(IIIIIII)I

    move-result v0

    return v0
.end method

.method public getOffset(IIIIIII)I
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 676
    if-ltz p3, :cond_0

    const/16 v0, 0xb

    if-le p3, v0, :cond_1

    .line 677
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 681
    :cond_1
    invoke-static {p2, p3}, Lcom/ibm/icu/impl/Grego;->monthLength(II)I

    move-result v7

    invoke-static {p2, p3}, Lcom/ibm/icu/impl/Grego;->previousMonthLength(II)I

    move-result v8

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 680
    invoke-direct/range {v0 .. v8}, Lcom/ibm/icu/util/SimpleTimeZone;->getOffset(IIIIIIII)I

    move-result v0

    return v0
.end method

.method public getOffsetFromLocal(JII[I)V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 798
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/ibm/icu/util/SimpleTimeZone;->getRawOffset()I

    move-result v1

    aput v1, p5, v0

    .line 799
    const/4 v0, 0x6

    new-array v7, v0, [I

    .line 800
    invoke-static {p1, p2, v7}, Lcom/ibm/icu/impl/Grego;->timeToFields(J[I)[I

    .line 801
    const/4 v8, 0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    aget v2, v7, v0

    const/4 v0, 0x1

    aget v3, v7, v0

    const/4 v0, 0x2

    aget v4, v7, v0

    const/4 v0, 0x3

    aget v5, v7, v0

    const/4 v0, 0x5

    aget v6, v7, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/ibm/icu/util/SimpleTimeZone;->getOffset(IIIIII)I

    move-result v0

    const/4 v1, 0x0

    aget v1, p5, v1

    sub-int/2addr v0, v1

    aput v0, p5, v8

    .line 805
    const/4 v0, 0x0

    .line 808
    const/4 v1, 0x1

    aget v1, p5, v1

    if-lez v1, :cond_3

    .line 809
    and-int/lit8 v1, p3, 0x3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    and-int/lit8 v1, p3, 0x3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    and-int/lit8 v1, p3, 0xc

    const/16 v2, 0xc

    if-eq v1, v2, :cond_1

    .line 812
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/util/SimpleTimeZone;->getDSTSavings()I

    move-result v0

    int-to-long v0, v0

    sub-long/2addr p1, v0

    .line 813
    const/4 v0, 0x1

    .line 824
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 825
    invoke-static {p1, p2, v7}, Lcom/ibm/icu/impl/Grego;->timeToFields(J[I)[I

    .line 826
    const/4 v8, 0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    aget v2, v7, v0

    const/4 v0, 0x1

    aget v3, v7, v0

    const/4 v0, 0x2

    aget v4, v7, v0

    const/4 v0, 0x3

    aget v5, v7, v0

    const/4 v0, 0x5

    aget v6, v7, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/ibm/icu/util/SimpleTimeZone;->getOffset(IIIIII)I

    move-result v0

    const/4 v1, 0x0

    aget v1, p5, v1

    sub-int/2addr v0, v1

    aput v0, p5, v8

    .line 830
    :cond_2
    return-void

    .line 816
    :cond_3
    and-int/lit8 v1, p4, 0x3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    and-int/lit8 v1, p4, 0x3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    and-int/lit8 v1, p4, 0xc

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 819
    :cond_4
    invoke-virtual {p0}, Lcom/ibm/icu/util/SimpleTimeZone;->getDSTSavings()I

    move-result v0

    int-to-long v0, v0

    sub-long/2addr p1, v0

    .line 820
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getPreviousTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 1291
    iget-boolean v1, p0, Lcom/ibm/icu/util/SimpleTimeZone;->useDaylight:Z

    if-nez v1, :cond_1

    .line 1310
    :cond_0
    :goto_0
    return-object v0

    .line 1295
    :cond_1
    invoke-direct {p0}, Lcom/ibm/icu/util/SimpleTimeZone;->initTransitionRules()V

    .line 1296
    iget-object v1, p0, Lcom/ibm/icu/util/SimpleTimeZone;->firstTransition:Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v2

    .line 1297
    cmp-long v1, p1, v2

    if-ltz v1, :cond_0

    if-nez p3, :cond_2

    cmp-long v1, p1, v2

    if-eqz v1, :cond_0

    .line 1300
    :cond_2
    iget-object v1, p0, Lcom/ibm/icu/util/SimpleTimeZone;->stdRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    iget-object v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->dstRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v2}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v4

    iget-object v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->dstRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    .line 1301
    invoke-virtual {v2}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v5

    move-wide v2, p1

    move v6, p3

    .line 1300
    invoke-virtual/range {v1 .. v6}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getPreviousStart(JIIZ)Ljava/util/Date;

    move-result-object v7

    .line 1302
    iget-object v1, p0, Lcom/ibm/icu/util/SimpleTimeZone;->dstRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    iget-object v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->stdRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v2}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v4

    iget-object v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->stdRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    .line 1303
    invoke-virtual {v2}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v5

    move-wide v2, p1

    move v6, p3

    .line 1302
    invoke-virtual/range {v1 .. v6}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getPreviousStart(JIIZ)Ljava/util/Date;

    move-result-object v1

    .line 1304
    if-eqz v7, :cond_4

    if-eqz v1, :cond_3

    invoke-virtual {v7, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1305
    :cond_3
    new-instance v0, Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/ibm/icu/util/SimpleTimeZone;->dstRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    iget-object v4, p0, Lcom/ibm/icu/util/SimpleTimeZone;->stdRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/ibm/icu/util/TimeZoneTransition;-><init>(JLcom/ibm/icu/util/TimeZoneRule;Lcom/ibm/icu/util/TimeZoneRule;)V

    goto :goto_0

    .line 1307
    :cond_4
    if-eqz v1, :cond_0

    if-eqz v7, :cond_5

    invoke-virtual {v1, v7}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1308
    :cond_5
    new-instance v0, Lcom/ibm/icu/util/TimeZoneTransition;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/ibm/icu/util/SimpleTimeZone;->stdRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    iget-object v4, p0, Lcom/ibm/icu/util/SimpleTimeZone;->dstRule:Lcom/ibm/icu/util/AnnualTimeZoneRule;

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/ibm/icu/util/TimeZoneTransition;-><init>(JLcom/ibm/icu/util/TimeZoneRule;Lcom/ibm/icu/util/TimeZoneRule;)V

    goto :goto_0
.end method

.method public getRawOffset()I
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->raw:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 1185
    invoke-super {p0}, Lcom/ibm/icu/util/BasicTimeZone;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/ibm/icu/util/SimpleTimeZone;->raw:I

    add-int/2addr v1, v0

    iget v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->raw:I

    ushr-int/lit8 v2, v0, 0x8

    iget-boolean v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v2

    xor-int/2addr v0, v1

    .line 1188
    iget-boolean v1, p0, Lcom/ibm/icu/util/SimpleTimeZone;->useDaylight:Z

    if-nez v1, :cond_0

    .line 1189
    iget v1, p0, Lcom/ibm/icu/util/SimpleTimeZone;->dst:I

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->dst:I

    ushr-int/lit8 v2, v2, 0xa

    iget v3, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startMode:I

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startMode:I

    ushr-int/lit8 v2, v2, 0xb

    iget v3, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startMonth:I

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startMonth:I

    ushr-int/lit8 v2, v2, 0xc

    iget v3, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startDay:I

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startDay:I

    ushr-int/lit8 v2, v2, 0xd

    iget v3, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startDayOfWeek:I

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startDayOfWeek:I

    ushr-int/lit8 v2, v2, 0xe

    iget v3, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startTime:I

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startTime:I

    ushr-int/lit8 v2, v2, 0xf

    iget v3, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startTimeMode:I

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startTimeMode:I

    ushr-int/lit8 v2, v2, 0x10

    iget v3, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endMode:I

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endMode:I

    ushr-int/lit8 v2, v2, 0x11

    iget v3, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endMonth:I

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endMonth:I

    ushr-int/lit8 v2, v2, 0x12

    iget v3, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endDay:I

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endDay:I

    ushr-int/lit8 v2, v2, 0x13

    iget v3, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endDayOfWeek:I

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endDayOfWeek:I

    ushr-int/lit8 v2, v2, 0x14

    iget v3, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endTime:I

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endTime:I

    ushr-int/lit8 v2, v2, 0x15

    iget v3, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endTimeMode:I

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->endTimeMode:I

    ushr-int/lit8 v2, v2, 0x16

    iget v3, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startYear:I

    add-int/2addr v2, v3

    xor-int/2addr v1, v2

    iget v2, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startYear:I

    ushr-int/lit8 v2, v2, 0x17

    xor-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1204
    :cond_0
    return v0

    .line 1185
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public inDaylightTime(Ljava/util/Date;)Z
    .locals 1

    .prologue
    .line 980
    new-instance v0, Lcom/ibm/icu/util/GregorianCalendar;

    invoke-direct {v0, p0}, Lcom/ibm/icu/util/GregorianCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;)V

    .line 981
    invoke-virtual {v0, p1}, Lcom/ibm/icu/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 982
    invoke-virtual {v0}, Lcom/ibm/icu/util/GregorianCalendar;->inDaylightTime()Z

    move-result v0

    return v0
.end method

.method public isFrozen()Z
    .locals 1

    .prologue
    .line 1425
    iget-boolean v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->isFrozen:Z

    return v0
.end method

.method public setID(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/ibm/icu/util/SimpleTimeZone;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Attempt to modify a frozen SimpleTimeZone instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_0
    invoke-super {p0, p1}, Lcom/ibm/icu/util/BasicTimeZone;->setID(Ljava/lang/String;)V

    .line 250
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->transitionRulesInitialized:Z

    .line 251
    return-void
.end method

.method public setStartYear(I)V
    .locals 2

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/ibm/icu/util/SimpleTimeZone;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Attempt to modify a frozen SimpleTimeZone instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_0
    invoke-direct {p0}, Lcom/ibm/icu/util/SimpleTimeZone;->getSTZInfo()Lcom/ibm/icu/util/STZInfo;

    move-result-object v0

    iput p1, v0, Lcom/ibm/icu/util/STZInfo;->sy:I

    .line 293
    iput p1, p0, Lcom/ibm/icu/util/SimpleTimeZone;->startYear:I

    .line 294
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->transitionRulesInitialized:Z

    .line 295
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SimpleTimeZone: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ibm/icu/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public useDaylightTime()Z
    .locals 1

    .prologue
    .line 961
    iget-boolean v0, p0, Lcom/ibm/icu/util/SimpleTimeZone;->useDaylight:Z

    return v0
.end method
