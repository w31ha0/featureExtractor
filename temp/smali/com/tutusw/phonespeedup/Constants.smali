.class public Lcom/tutusw/phonespeedup/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# instance fields
.field defaultMax:I

.field final defaultMax_acer_qsd:I

.field final defaultMax_dext_msm:I

.field final defaultMax_generic_omap3:I

.field final defaultMax_generic_qsd:I

.field final defaultMax_htc_msm:I

.field final defaultMax_htc_msm_turbo:I

.field final defaultMax_huawei_msm_turbo:I

.field final defaultMax_msm_7x27:I

.field final defaultMax_msm_7x30:I

.field final defaultMax_qsd_8x55:I

.field final defaultMax_samsung_arm:I

.field final defaultMax_samsung_msm:I

.field final defaultMax_sholes_omap3:I

.field defaultMin:I

.field final defaultMin_acer_qsd:I

.field final defaultMin_dext_msm:I

.field final defaultMin_generic_omap3:I

.field final defaultMin_generic_qsd:I

.field final defaultMin_htc_msm:I

.field final defaultMin_htc_msm_turbo:I

.field final defaultMin_huawei_msm_turbo:I

.field final defaultMin_msm_7x27:I

.field final defaultMin_msm_7x30:I

.field final defaultMin_qsd_8x55:I

.field final defaultMin_samsung_arm:I

.field final defaultMin_samsung_msm:I

.field final defaultMin_sholes_omap3:I

.field freq:[I

.field freqText:[Ljava/lang/String;

.field final freqText_acer_qsd:[Ljava/lang/String;

.field final freqText_dext_msm:[Ljava/lang/String;

.field final freqText_generic_omap3:[Ljava/lang/String;

.field final freqText_generic_qsd:[Ljava/lang/String;

.field final freqText_htc_msm:[Ljava/lang/String;

.field final freqText_htc_msm_turbo:[Ljava/lang/String;

.field final freqText_huawei_msm_turbo:[Ljava/lang/String;

.field final freqText_msm_7x27:[Ljava/lang/String;

.field final freqText_msm_7x30:[Ljava/lang/String;

.field final freqText_qsd_8x55:[Ljava/lang/String;

.field final freqText_samsung_arm:[Ljava/lang/String;

.field final freqText_samsung_msm:[Ljava/lang/String;

.field final freqText_sholes_omap3:[Ljava/lang/String;

.field final freq_acer_qsd:[I

.field final freq_dext_msm:[I

.field final freq_generic_omap3:[I

.field final freq_generic_qsd:[I

.field final freq_htc_msm:[I

.field final freq_htc_msm_turbo:[I

.field final freq_huawei_msm_turbo:[I

.field final freq_msm_7x27:[I

.field final freq_msm_7x30:[I

.field final freq_qsd_8x55:[I

.field final freq_samsung_arm:[I

.field final freq_samsung_msm:[I

.field final freq_sholes_omap3:[I

.field limitMax:I

.field final limitMax_acer_qsd:I

.field final limitMax_dext_msm:I

.field final limitMax_generic_omap3:I

.field final limitMax_generic_qsd:I

.field final limitMax_htc_msm:I

.field final limitMax_htc_msm_turbo:I

.field final limitMax_huawei_msm_turbo:I

.field final limitMax_msm_7x27:I

.field final limitMax_msm_7x30:I

.field final limitMax_qsd_8x55:I

.field final limitMax_samsung_arm:I

.field final limitMax_samsung_msm:I

.field final limitMax_sholes_omap3:I

.field limitMin:I

.field final limitMin_acer_qsd:I

.field final limitMin_dext_msm:I

.field final limitMin_generic_omap3:I

.field final limitMin_generic_qsd:I

.field final limitMin_htc_msm:I

.field final limitMin_htc_msm_turbo:I

.field final limitMin_huawei_msm_turbo:I

.field final limitMin_msm_7x27:I

.field final limitMin_msm_7x30:I

.field final limitMin_qsd_8x55:I

.field final limitMin_samsung_arm:I

.field final limitMin_samsung_msm:I

.field final limitMin_sholes_omap3:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 9
    .param p1, "config"    # Ljava/lang/String;

    .prologue
    const v8, 0x3c000

    const/4 v7, 0x5

    const/4 v6, 0x4

    const v5, 0x80e80

    const/4 v4, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freq_htc_msm:[I

    .line 12
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "19.2MHz"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "122MHz"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "128MHz"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "245MHz"

    aput-object v3, v1, v2

    const-string v2, "384MHz"

    aput-object v2, v1, v6

    const-string v2, "528MHz"

    aput-object v2, v1, v7

    iput-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freqText_htc_msm:[Ljava/lang/String;

    .line 13
    const v1, 0x5dc00

    iput v1, p0, Lcom/tutusw/phonespeedup/Constants;->defaultMax_htc_msm:I

    .line 14
    iput v8, p0, Lcom/tutusw/phonespeedup/Constants;->defaultMin_htc_msm:I

    .line 15
    iput v5, p0, Lcom/tutusw/phonespeedup/Constants;->limitMax_htc_msm:I

    .line 16
    const v1, 0x1f400

    iput v1, p0, Lcom/tutusw/phonespeedup/Constants;->limitMin_htc_msm:I

    .line 18
    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freq_htc_msm_turbo:[I

    .line 19
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "19.2MHz"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "122MHz"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "160MHz"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "245MHz"

    aput-object v3, v1, v2

    const-string v2, "480MHz"

    aput-object v2, v1, v6

    const-string v2, "528MHz"

    aput-object v2, v1, v7

    iput-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freqText_htc_msm_turbo:[Ljava/lang/String;

    .line 20
    iput v5, p0, Lcom/tutusw/phonespeedup/Constants;->defaultMax_htc_msm_turbo:I

    .line 21
    iput v8, p0, Lcom/tutusw/phonespeedup/Constants;->defaultMin_htc_msm_turbo:I

    .line 22
    iput v5, p0, Lcom/tutusw/phonespeedup/Constants;->limitMax_htc_msm_turbo:I

    .line 23
    const v1, 0x27100

    iput v1, p0, Lcom/tutusw/phonespeedup/Constants;->limitMin_htc_msm_turbo:I

    .line 25
    new-array v1, v7, [I

    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freq_huawei_msm_turbo:[I

    .line 26
    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "122MHz"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "160MHz"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "245MHz"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "480MHz"

    aput-object v3, v1, v2

    const-string v2, "528MHz"

    aput-object v2, v1, v6

    iput-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freqText_huawei_msm_turbo:[Ljava/lang/String;

    .line 27
    iput v5, p0, Lcom/tutusw/phonespeedup/Constants;->defaultMax_huawei_msm_turbo:I

    .line 28
    const v1, 0x1e000

    iput v1, p0, Lcom/tutusw/phonespeedup/Constants;->defaultMin_huawei_msm_turbo:I

    .line 29
    iput v5, p0, Lcom/tutusw/phonespeedup/Constants;->limitMax_huawei_msm_turbo:I

    .line 30
    const v1, 0x1e000

    iput v1, p0, Lcom/tutusw/phonespeedup/Constants;->limitMin_huawei_msm_turbo:I

    .line 32
    new-array v1, v6, [I

    fill-array-data v1, :array_3

    iput-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freq_samsung_msm:[I

    .line 33
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "245MHz"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "320MHz"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "480MHz"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "528MHz"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freqText_samsung_msm:[Ljava/lang/String;

    .line 34
    iput v5, p0, Lcom/tutusw/phonespeedup/Constants;->defaultMax_samsung_msm:I

    .line 35
    iput v8, p0, Lcom/tutusw/phonespeedup/Constants;->defaultMin_samsung_msm:I

    .line 36
    iput v5, p0, Lcom/tutusw/phonespeedup/Constants;->limitMax_samsung_msm:I

    .line 37
    iput v8, p0, Lcom/tutusw/phonespeedup/Constants;->limitMin_samsung_msm:I

    .line 39
    new-array v1, v7, [I

    fill-array-data v1, :array_4

    iput-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freq_dext_msm:[I

    .line 40
    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "122MHz"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "128MHz"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "245MHz"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "384MHz"

    aput-object v3, v1, v2

    const-string v2, "528MHz"

    aput-object v2, v1, v6

    iput-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freqText_dext_msm:[Ljava/lang/String;

    .line 41
    iput v5, p0, Lcom/tutusw/phonespeedup/Constants;->defaultMax_dext_msm:I

    .line 42
    iput v8, p0, Lcom/tutusw/phonespeedup/Constants;->defaultMin_dext_msm:I

    .line 43
    iput v5, p0, Lcom/tutusw/phonespeedup/Constants;->limitMax_dext_msm:I

    .line 44
    const v1, 0x1f400

    iput v1, p0, Lcom/tutusw/phonespeedup/Constants;->limitMin_dext_msm:I

    .line 46
    const/16 v1, 0xc

    new-array v1, v1, [I

    fill-array-data v1, :array_5

    iput-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freq_generic_qsd:[I

    .line 47
    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "245MHz"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "384MHz"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "461MHz"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "499MHz"

    aput-object v3, v1, v2

    const-string v2, "576MHz"

    aput-object v2, v1, v6

    const-string v2, "614MHz"

    aput-object v2, v1, v7

    const/4 v2, 0x6

    const-string v3, "653MHz"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "691MHz"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "768MHz"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "806MHz"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "845MHz"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "998MHz"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freqText_generic_qsd:[Ljava/lang/String;

    .line 48
    const v1, 0xf3c00

    iput v1, p0, Lcom/tutusw/phonespeedup/Constants;->defaultMax_generic_qsd:I

    .line 49
    const v1, 0x3bd08

    iput v1, p0, Lcom/tutusw/phonespeedup/Constants;->defaultMin_generic_qsd:I

    .line 50
    const v1, 0xf3c00

    iput v1, p0, Lcom/tutusw/phonespeedup/Constants;->limitMax_generic_qsd:I

    .line 51
    const v1, 0x3bd08

    iput v1, p0, Lcom/tutusw/phonespeedup/Constants;->limitMin_generic_qsd:I

    .line 53
    new-array v1, v6, [I

    fill-array-data v1, :array_6

    iput-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freq_acer_qsd:[I

    .line 54
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "245MHz"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "384MHz"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "576MHz"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "768MHz"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freqText_acer_qsd:[Ljava/lang/String;

    .line 55
    const v1, 0xbb800

    iput v1, p0, Lcom/tutusw/phonespeedup/Constants;->defaultMax_acer_qsd:I

    .line 56
    const v1, 0x3bd08

    iput v1, p0, Lcom/tutusw/phonespeedup/Constants;->defaultMin_acer_qsd:I

    .line 57
    const v1, 0xbb800

    iput v1, p0, Lcom/tutusw/phonespeedup/Constants;->limitMax_acer_qsd:I

    .line 58
    const v1, 0x3bd08

    iput v1, p0, Lcom/tutusw/phonespeedup/Constants;->limitMin_acer_qsd:I

    .line 60
    new-array v1, v6, [I

    fill-array-data v1, :array_7

    iput-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freq_sholes_omap3:[I

    .line 61
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "125MHz"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "250MHz"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "500MHz"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "550MHz"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freqText_sholes_omap3:[Ljava/lang/String;

    .line 62
    const v1, 0x86470

    iput v1, p0, Lcom/tutusw/phonespeedup/Constants;->defaultMax_sholes_omap3:I

    .line 63
    const v1, 0x3d090

    iput v1, p0, Lcom/tutusw/phonespeedup/Constants;->defaultMin_sholes_omap3:I

    .line 64
    const v1, 0x86470

    iput v1, p0, Lcom/tutusw/phonespeedup/Constants;->limitMax_sholes_omap3:I

    .line 65
    const v1, 0x1e848

    iput v1, p0, Lcom/tutusw/phonespeedup/Constants;->limitMin_sholes_omap3:I

    .line 67
    new-array v1, v7, [I

    fill-array-data v1, :array_8

    iput-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freq_generic_omap3:[I

    .line 68
    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "125MHz"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "250MHz"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "500MHz"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "550MHz"

    aput-object v3, v1, v2

    const-string v2, "600MHz"

    aput-object v2, v1, v6

    iput-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freqText_generic_omap3:[Ljava/lang/String;

    .line 69
    const v1, 0x927c0

    iput v1, p0, Lcom/tutusw/phonespeedup/Constants;->defaultMax_generic_omap3:I

    .line 70
    const v1, 0x3d090

    iput v1, p0, Lcom/tutusw/phonespeedup/Constants;->defaultMin_generic_omap3:I

    .line 71
    const v1, 0x927c0

    iput v1, p0, Lcom/tutusw/phonespeedup/Constants;->limitMax_generic_omap3:I

    .line 72
    const v1, 0x1e848

    iput v1, p0, Lcom/tutusw/phonespeedup/Constants;->limitMin_generic_omap3:I

    .line 74
    new-array v1, v7, [I

    fill-array-data v1, :array_9

    iput-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freq_samsung_arm:[I

    .line 75
    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "66MHz"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "133MHz"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "266MHz"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "400MHz"

    aput-object v3, v1, v2

    const-string v2, "800MHz"

    aput-object v2, v1, v6

    iput-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freqText_samsung_arm:[Ljava/lang/String;

    .line 76
    const v1, 0xc3500

    iput v1, p0, Lcom/tutusw/phonespeedup/Constants;->defaultMax_samsung_arm:I

    .line 77
    const v1, 0x101d0

    iput v1, p0, Lcom/tutusw/phonespeedup/Constants;->defaultMin_samsung_arm:I

    .line 78
    const v1, 0xc3500

    iput v1, p0, Lcom/tutusw/phonespeedup/Constants;->limitMax_samsung_arm:I

    .line 79
    const v1, 0x101d0

    iput v1, p0, Lcom/tutusw/phonespeedup/Constants;->limitMin_samsung_arm:I

    .line 81
    const/16 v1, 0x9

    new-array v1, v1, [I

    fill-array-data v1, :array_a

    iput-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freq_msm_7x27:[I

    .line 82
    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "19.2MHz"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "120MHz"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "122MHz"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "200MHz"

    aput-object v3, v1, v2

    const-string v2, "245MHz"

    aput-object v2, v1, v6

    const-string v2, "320MHz"

    aput-object v2, v1, v7

    const/4 v2, 0x6

    const-string v3, "400MHz"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "480MHz"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "600MHz"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freqText_msm_7x27:[Ljava/lang/String;

    .line 83
    const v1, 0x927c0

    iput v1, p0, Lcom/tutusw/phonespeedup/Constants;->defaultMax_msm_7x27:I

    .line 84
    const v1, 0x30d40

    iput v1, p0, Lcom/tutusw/phonespeedup/Constants;->defaultMin_msm_7x27:I

    .line 85
    const v1, 0x3b9aca00

    iput v1, p0, Lcom/tutusw/phonespeedup/Constants;->limitMax_msm_7x27:I

    .line 86
    iput v4, p0, Lcom/tutusw/phonespeedup/Constants;->limitMin_msm_7x27:I

    .line 88
    new-array v1, v7, [I

    fill-array-data v1, :array_b

    iput-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freq_msm_7x30:[I

    .line 89
    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "122MHz"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "245MHz"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "368MHz"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "768MHz"

    aput-object v3, v1, v2

    const-string v2, "806MHz"

    aput-object v2, v1, v6

    iput-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freqText_msm_7x30:[Ljava/lang/String;

    .line 90
    const v1, 0xc4e00

    iput v1, p0, Lcom/tutusw/phonespeedup/Constants;->defaultMax_msm_7x30:I

    .line 91
    iput v8, p0, Lcom/tutusw/phonespeedup/Constants;->defaultMin_msm_7x30:I

    .line 92
    const v1, 0x3b9aca00

    iput v1, p0, Lcom/tutusw/phonespeedup/Constants;->limitMax_msm_7x30:I

    .line 93
    iput v4, p0, Lcom/tutusw/phonespeedup/Constants;->limitMin_msm_7x30:I

    .line 95
    new-array v1, v7, [I

    fill-array-data v1, :array_c

    iput-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freq_qsd_8x55:[I

    .line 96
    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "122MHz"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "245MHz"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "368MHz"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "768MHz"

    aput-object v3, v1, v2

    const-string v2, "1024MHz"

    aput-object v2, v1, v6

    iput-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freqText_qsd_8x55:[Ljava/lang/String;

    .line 97
    const v1, 0xfa000

    iput v1, p0, Lcom/tutusw/phonespeedup/Constants;->defaultMax_qsd_8x55:I

    .line 98
    iput v8, p0, Lcom/tutusw/phonespeedup/Constants;->defaultMin_qsd_8x55:I

    .line 99
    const v1, 0x3b9aca00

    iput v1, p0, Lcom/tutusw/phonespeedup/Constants;->limitMax_qsd_8x55:I

    .line 100
    iput v4, p0, Lcom/tutusw/phonespeedup/Constants;->limitMin_qsd_8x55:I

    .line 102
    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_d

    iput-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freq:[I

    .line 103
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "19.2MHz"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "122MHz"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "128MHz"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "245MHz"

    aput-object v3, v1, v2

    const-string v2, "384MHz"

    aput-object v2, v1, v6

    const-string v2, "528MHz"

    aput-object v2, v1, v7

    iput-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freqText:[Ljava/lang/String;

    .line 104
    const v1, 0x5dc00

    iput v1, p0, Lcom/tutusw/phonespeedup/Constants;->defaultMax:I

    .line 105
    iput v8, p0, Lcom/tutusw/phonespeedup/Constants;->defaultMin:I

    .line 106
    iput v5, p0, Lcom/tutusw/phonespeedup/Constants;->limitMax:I

    .line 107
    const v1, 0x1f400

    iput v1, p0, Lcom/tutusw/phonespeedup/Constants;->limitMin:I

    .line 110
    const-string v1, "htc_msm"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freq_htc_msm:[I

    iput-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freq:[I

    .line 112
    iget-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freqText_htc_msm:[Ljava/lang/String;

    iput-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freqText:[Ljava/lang/String;

    .line 113
    const v1, 0x5dc00

    iput v1, p0, Lcom/tutusw/phonespeedup/Constants;->defaultMax:I

    .line 114
    iput v8, p0, Lcom/tutusw/phonespeedup/Constants;->defaultMin:I

    .line 115
    iput v5, p0, Lcom/tutusw/phonespeedup/Constants;->limitMax:I

    .line 116
    const v1, 0x1f400

    iput v1, p0, Lcom/tutusw/phonespeedup/Constants;->limitMin:I

    .line 118
    :cond_0
    const-string v1, "htc_msm_turbo"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 119
    iget-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freq_htc_msm_turbo:[I

    iput-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freq:[I

    .line 120
    iget-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freqText_htc_msm_turbo:[Ljava/lang/String;

    iput-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freqText:[Ljava/lang/String;

    .line 121
    iput v5, p0, Lcom/tutusw/phonespeedup/Constants;->defaultMax:I

    .line 122
    iput v8, p0, Lcom/tutusw/phonespeedup/Constants;->defaultMin:I

    .line 123
    iput v5, p0, Lcom/tutusw/phonespeedup/Constants;->limitMax:I

    .line 124
    const v1, 0x27100

    iput v1, p0, Lcom/tutusw/phonespeedup/Constants;->limitMin:I

    .line 220
    :cond_1
    :goto_0
    return-void

    .line 126
    :cond_2
    const-string v1, "huawei_msm_turbo"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 127
    iget-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freq_huawei_msm_turbo:[I

    iput-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freq:[I

    .line 128
    iget-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freqText_huawei_msm_turbo:[Ljava/lang/String;

    iput-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freqText:[Ljava/lang/String;

    .line 129
    iput v5, p0, Lcom/tutusw/phonespeedup/Constants;->defaultMax:I

    .line 130
    const v1, 0x1e000

    iput v1, p0, Lcom/tutusw/phonespeedup/Constants;->defaultMin:I

    .line 131
    iput v5, p0, Lcom/tutusw/phonespeedup/Constants;->limitMax:I

    .line 132
    const v1, 0x1e000

    iput v1, p0, Lcom/tutusw/phonespeedup/Constants;->limitMin:I

    goto :goto_0

    .line 134
    :cond_3
    const-string v1, "samsung_msm"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 135
    iget-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freq_samsung_msm:[I

    iput-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freq:[I

    .line 136
    iget-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freqText_samsung_msm:[Ljava/lang/String;

    iput-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freqText:[Ljava/lang/String;

    .line 137
    iput v5, p0, Lcom/tutusw/phonespeedup/Constants;->defaultMax:I

    .line 138
    iput v8, p0, Lcom/tutusw/phonespeedup/Constants;->defaultMin:I

    .line 139
    iput v5, p0, Lcom/tutusw/phonespeedup/Constants;->limitMax:I

    .line 140
    iput v8, p0, Lcom/tutusw/phonespeedup/Constants;->limitMin:I

    goto :goto_0

    .line 142
    :cond_4
    const-string v1, "dext_msm"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 143
    iget-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freq_dext_msm:[I

    iput-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freq:[I

    .line 144
    iget-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freqText_dext_msm:[Ljava/lang/String;

    iput-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freqText:[Ljava/lang/String;

    .line 145
    iput v5, p0, Lcom/tutusw/phonespeedup/Constants;->defaultMax:I

    .line 146
    iput v8, p0, Lcom/tutusw/phonespeedup/Constants;->defaultMin:I

    .line 147
    iput v5, p0, Lcom/tutusw/phonespeedup/Constants;->limitMax:I

    .line 148
    const v1, 0x1f400

    iput v1, p0, Lcom/tutusw/phonespeedup/Constants;->limitMin:I

    goto :goto_0

    .line 150
    :cond_5
    const-string v1, "generic_qsd"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 151
    iget-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freq_generic_qsd:[I

    iput-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freq:[I

    .line 152
    iget-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freqText_generic_qsd:[Ljava/lang/String;

    iput-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freqText:[Ljava/lang/String;

    .line 153
    const v1, 0xf3c00

    iput v1, p0, Lcom/tutusw/phonespeedup/Constants;->defaultMax:I

    .line 154
    const v1, 0x3bd08

    iput v1, p0, Lcom/tutusw/phonespeedup/Constants;->defaultMin:I

    .line 155
    const v1, 0xf3c00

    iput v1, p0, Lcom/tutusw/phonespeedup/Constants;->limitMax:I

    .line 156
    const v1, 0x3bd08

    iput v1, p0, Lcom/tutusw/phonespeedup/Constants;->limitMin:I

    goto :goto_0

    .line 158
    :cond_6
    const-string v1, "acer_qsd"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 159
    iget-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freq_acer_qsd:[I

    iput-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freq:[I

    .line 160
    iget-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freqText_acer_qsd:[Ljava/lang/String;

    iput-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freqText:[Ljava/lang/String;

    .line 161
    const v1, 0xbb800

    iput v1, p0, Lcom/tutusw/phonespeedup/Constants;->defaultMax:I

    .line 162
    const v1, 0x3bd08

    iput v1, p0, Lcom/tutusw/phonespeedup/Constants;->defaultMin:I

    .line 163
    const v1, 0xbb800

    iput v1, p0, Lcom/tutusw/phonespeedup/Constants;->limitMax:I

    .line 164
    const v1, 0x3bd08

    iput v1, p0, Lcom/tutusw/phonespeedup/Constants;->limitMin:I

    goto/16 :goto_0

    .line 166
    :cond_7
    const-string v1, "sholes_omap3"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 168
    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_frequencies"

    invoke-direct {p0, v1}, Lcom/tutusw/phonespeedup/Constants;->readInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "freqList":Ljava/lang/String;
    if-eqz v0, :cond_8

    const-string v1, ""

    if-eq v0, v1, :cond_8

    const-string v1, "600000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 172
    iget-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freq_generic_omap3:[I

    iput-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freq:[I

    .line 173
    iget-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freqText_generic_omap3:[Ljava/lang/String;

    iput-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freqText:[Ljava/lang/String;

    .line 174
    const v1, 0x927c0

    iput v1, p0, Lcom/tutusw/phonespeedup/Constants;->defaultMax:I

    .line 175
    const v1, 0x3d090

    iput v1, p0, Lcom/tutusw/phonespeedup/Constants;->defaultMin:I

    .line 176
    const v1, 0x927c0

    iput v1, p0, Lcom/tutusw/phonespeedup/Constants;->limitMax:I

    .line 177
    const v1, 0x1e848

    iput v1, p0, Lcom/tutusw/phonespeedup/Constants;->limitMin:I

    goto/16 :goto_0

    .line 180
    :cond_8
    iget-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freq_sholes_omap3:[I

    iput-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freq:[I

    .line 181
    iget-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freqText_sholes_omap3:[Ljava/lang/String;

    iput-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freqText:[Ljava/lang/String;

    .line 182
    const v1, 0x86470

    iput v1, p0, Lcom/tutusw/phonespeedup/Constants;->defaultMax:I

    .line 183
    const v1, 0x3d090

    iput v1, p0, Lcom/tutusw/phonespeedup/Constants;->defaultMin:I

    .line 184
    const v1, 0x86470

    iput v1, p0, Lcom/tutusw/phonespeedup/Constants;->limitMax:I

    .line 185
    const v1, 0x1e848

    iput v1, p0, Lcom/tutusw/phonespeedup/Constants;->limitMin:I

    goto/16 :goto_0

    .line 188
    .end local v0    # "freqList":Ljava/lang/String;
    :cond_9
    const-string v1, "samsung_arm"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 189
    iget-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freq_samsung_arm:[I

    iput-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freq:[I

    .line 190
    iget-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freqText_samsung_arm:[Ljava/lang/String;

    iput-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freqText:[Ljava/lang/String;

    .line 191
    const v1, 0xc3500

    iput v1, p0, Lcom/tutusw/phonespeedup/Constants;->defaultMax:I

    .line 192
    const v1, 0x101d0

    iput v1, p0, Lcom/tutusw/phonespeedup/Constants;->defaultMin:I

    .line 193
    const v1, 0xc3500

    iput v1, p0, Lcom/tutusw/phonespeedup/Constants;->limitMax:I

    .line 194
    const v1, 0x101d0

    iput v1, p0, Lcom/tutusw/phonespeedup/Constants;->limitMin:I

    goto/16 :goto_0

    .line 196
    :cond_a
    const-string v1, "msm_7x27"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 197
    iget-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freq_msm_7x27:[I

    iput-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freq:[I

    .line 198
    iget-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freqText_msm_7x27:[Ljava/lang/String;

    iput-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freqText:[Ljava/lang/String;

    .line 199
    const v1, 0x927c0

    iput v1, p0, Lcom/tutusw/phonespeedup/Constants;->defaultMax:I

    .line 200
    const v1, 0x30d40

    iput v1, p0, Lcom/tutusw/phonespeedup/Constants;->defaultMin:I

    .line 201
    const v1, 0x3b9aca00

    iput v1, p0, Lcom/tutusw/phonespeedup/Constants;->limitMax:I

    .line 202
    iput v4, p0, Lcom/tutusw/phonespeedup/Constants;->limitMin:I

    goto/16 :goto_0

    .line 204
    :cond_b
    const-string v1, "msm_7x30"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 205
    iget-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freq_msm_7x30:[I

    iput-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freq:[I

    .line 206
    iget-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freqText_msm_7x30:[Ljava/lang/String;

    iput-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freqText:[Ljava/lang/String;

    .line 207
    const v1, 0xc4e00

    iput v1, p0, Lcom/tutusw/phonespeedup/Constants;->defaultMax:I

    .line 208
    iput v8, p0, Lcom/tutusw/phonespeedup/Constants;->defaultMin:I

    .line 209
    const v1, 0x3b9aca00

    iput v1, p0, Lcom/tutusw/phonespeedup/Constants;->limitMax:I

    .line 210
    iput v4, p0, Lcom/tutusw/phonespeedup/Constants;->limitMin:I

    goto/16 :goto_0

    .line 212
    :cond_c
    const-string v1, "qsd_8x55"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 213
    iget-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freq_qsd_8x55:[I

    iput-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freq:[I

    .line 214
    iget-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freqText_qsd_8x55:[Ljava/lang/String;

    iput-object v1, p0, Lcom/tutusw/phonespeedup/Constants;->freqText:[Ljava/lang/String;

    .line 215
    const v1, 0xfa000

    iput v1, p0, Lcom/tutusw/phonespeedup/Constants;->defaultMax:I

    .line 216
    iput v8, p0, Lcom/tutusw/phonespeedup/Constants;->defaultMin:I

    .line 217
    const v1, 0x3b9aca00

    iput v1, p0, Lcom/tutusw/phonespeedup/Constants;->limitMax:I

    .line 218
    iput v4, p0, Lcom/tutusw/phonespeedup/Constants;->limitMin:I

    goto/16 :goto_0

    .line 11
    nop

    :array_0
    .array-data 4
        0x4b00
        0x1e000
        0x1f400
        0x3c000
        0x5dc00
        0x80e80
    .end array-data

    .line 18
    :array_1
    .array-data 4
        0x4b00
        0x1e000
        0x27100
        0x3c000
        0x75300
        0x80e80
    .end array-data

    .line 25
    :array_2
    .array-data 4
        0x1e000
        0x27100
        0x3c000
        0x75300
        0x80e80
    .end array-data

    .line 32
    :array_3
    .array-data 4
        0x3c000
        0x4e200
        0x75300
        0x80e80
    .end array-data

    .line 39
    :array_4
    .array-data 4
        0x1e000
        0x1f400
        0x3c000
        0x5dc00
        0x80e80
    .end array-data

    .line 46
    :array_5
    .array-data 4
        0x3bd08
        0x5dc00
        0x70800
        0x79e00
        0x8ca00
        0x96000
        0x9f600
        0xa8c00
        0xbb800
        0xc4e00
        0xce400
        0xf3c00
    .end array-data

    .line 53
    :array_6
    .array-data 4
        0x3bd08
        0x5dc00
        0x8ca00
        0xbb800
    .end array-data

    .line 60
    :array_7
    .array-data 4
        0x1e848
        0x3d090
        0x7a120
        0x86470
    .end array-data

    .line 67
    :array_8
    .array-data 4
        0x1e848
        0x3d090
        0x7a120
        0x86470
        0x927c0
    .end array-data

    .line 74
    :array_9
    .array-data 4
        0x101d0
        0x20788
        0x40f10
        0x61a80
        0xc3500
    .end array-data

    .line 81
    :array_a
    .array-data 4
        0x4b00
        0x1d4c0
        0x1e000
        0x30d40
        0x3c000
        0x4e200
        0x61a80
        0x75300
        0x927c0
    .end array-data

    .line 88
    :array_b
    .array-data 4
        0x1e000
        0x3c000
        0x5a000
        0xbb800
        0xc4e00
    .end array-data

    .line 95
    :array_c
    .array-data 4
        0x1e000
        0x3c000
        0x5a000
        0xbb800
        0xfa000
    .end array-data

    .line 102
    :array_d
    .array-data 4
        0x4b00
        0x1e000
        0x1f400
        0x3c000
        0x5dc00
        0x80e80
    .end array-data
.end method

.method private readInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 247
    const/4 v4, 0x0

    .line 248
    .local v4, "line":Ljava/lang/String;
    const/4 v0, 0x0

    .line 249
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 250
    .local v2, "ins":Ljava/io/InputStream;
    const-string v5, ""

    .line 252
    .local v5, "lines":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    .end local v2    # "ins":Ljava/io/InputStream;
    .local v3, "ins":Ljava/io/InputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v7, 0x2000

    invoke-direct {v1, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 254
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v4

    if-nez v4, :cond_0

    .line 262
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 263
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v2, v3

    .end local v3    # "ins":Ljava/io/InputStream;
    .restart local v2    # "ins":Ljava/io/InputStream;
    move-object v0, v1

    .line 268
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 255
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "ins":Ljava/io/InputStream;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "ins":Ljava/io/InputStream;
    :cond_0
    :try_start_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v5

    goto :goto_0

    .line 257
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "ins":Ljava/io/InputStream;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "ins":Ljava/io/InputStream;
    :catch_0
    move-exception v6

    .line 262
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 263
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 264
    :catch_1
    move-exception v6

    goto :goto_1

    .line 260
    :catchall_0
    move-exception v6

    .line 262
    :goto_3
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 263
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 267
    :goto_4
    throw v6

    .line 264
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "ins":Ljava/io/InputStream;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "ins":Ljava/io/InputStream;
    :catch_2
    move-exception v6

    move-object v2, v3

    .end local v3    # "ins":Ljava/io/InputStream;
    .restart local v2    # "ins":Ljava/io/InputStream;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_1

    :catch_3
    move-exception v7

    goto :goto_4

    .line 260
    .end local v2    # "ins":Ljava/io/InputStream;
    .restart local v3    # "ins":Ljava/io/InputStream;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "ins":Ljava/io/InputStream;
    .restart local v2    # "ins":Ljava/io/InputStream;
    goto :goto_3

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "ins":Ljava/io/InputStream;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "ins":Ljava/io/InputStream;
    :catchall_2
    move-exception v6

    move-object v2, v3

    .end local v3    # "ins":Ljava/io/InputStream;
    .restart local v2    # "ins":Ljava/io/InputStream;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    .line 257
    .end local v2    # "ins":Ljava/io/InputStream;
    .restart local v3    # "ins":Ljava/io/InputStream;
    :catch_4
    move-exception v6

    move-object v2, v3

    .end local v3    # "ins":Ljava/io/InputStream;
    .restart local v2    # "ins":Ljava/io/InputStream;
    goto :goto_2

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "ins":Ljava/io/InputStream;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "ins":Ljava/io/InputStream;
    :catch_5
    move-exception v6

    move-object v2, v3

    .end local v3    # "ins":Ljava/io/InputStream;
    .restart local v2    # "ins":Ljava/io/InputStream;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2
.end method


# virtual methods
.method getDefaultMax()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lcom/tutusw/phonespeedup/Constants;->defaultMax:I

    return v0
.end method

.method getDefaultMin()I
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lcom/tutusw/phonespeedup/Constants;->defaultMin:I

    return v0
.end method

.method getFreq()[I
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/tutusw/phonespeedup/Constants;->freq:[I

    return-object v0
.end method

.method getFreqText()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/tutusw/phonespeedup/Constants;->freqText:[Ljava/lang/String;

    return-object v0
.end method

.method getLimitMax()I
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lcom/tutusw/phonespeedup/Constants;->limitMax:I

    return v0
.end method

.method getLimitMin()I
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lcom/tutusw/phonespeedup/Constants;->limitMin:I

    return v0
.end method
