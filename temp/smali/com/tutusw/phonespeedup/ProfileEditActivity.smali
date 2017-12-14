.class public Lcom/tutusw/phonespeedup/ProfileEditActivity;
.super Landroid/app/Activity;
.source "ProfileEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tutusw/phonespeedup/ProfileEditActivity$Clicker;,
        Lcom/tutusw/phonespeedup/ProfileEditActivity$Seeker;,
        Lcom/tutusw/phonespeedup/ProfileEditActivity$SeekerFocus;
    }
.end annotation


# instance fields
.field final SDK_CUPCAKE:I

.field final SDK_VERSION:I

.field buttonClose:Landroid/widget/ImageView;

.field checkWarning:Landroid/widget/CheckBox;

.field clicker:Lcom/tutusw/phonespeedup/ProfileEditActivity$Clicker;

.field conditionPosition:I

.field conditionSpinner:Landroid/widget/Spinner;

.field cursor:Landroid/database/Cursor;

.field db:Lcom/tutusw/phonespeedup/DBHelper;

.field defaultMax:I

.field defaultMin:I

.field deleteButton:Landroid/widget/Button;

.field editor:Landroid/content/SharedPreferences$Editor;

.field extras:Landroid/os/Bundle;

.field freq:[I

.field freqText:[Ljava/lang/String;

.field governorSpinner:Landroid/widget/Spinner;

.field governors:[Ljava/lang/String;

.field headerText:Landroid/widget/TextView;

.field invisible:I

.field final isGone:Z

.field limitMax:I

.field limitMin:I

.field maxMeter:Landroid/widget/TextView;

.field maxSeek:Landroid/widget/SeekBar;

.field minMeter:Landroid/widget/TextView;

.field minSeek:Landroid/widget/SeekBar;

.field paramLayout:Landroid/widget/RelativeLayout;

.field paramMeter:Landroid/widget/TextView;

.field paramSeek:Landroid/widget/SeekBar;

.field paramText:Landroid/widget/TextView;

.field priorityMeter:Landroid/widget/TextView;

.field prioritySeek:Landroid/widget/SeekBar;

.field final refreshInterval:[I

.field final refreshIntervalString:[Ljava/lang/String;

.field refreshLayout:Landroid/widget/RelativeLayout;

.field refreshSpinner:Landroid/widget/Spinner;

.field row_id:I

.field saveButton:Landroid/widget/Button;

.field seeker:Lcom/tutusw/phonespeedup/ProfileEditActivity$Seeker;

.field seekerFocus:Lcom/tutusw/phonespeedup/ProfileEditActivity$SeekerFocus;

.field settings:Landroid/content/SharedPreferences;

.field warningLayout:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 30
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->SDK_VERSION:I

    .line 31
    iput v3, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->SDK_CUPCAKE:I

    .line 32
    iget v0, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->SDK_VERSION:I

    if-le v0, v3, :cond_0

    move v0, v4

    :goto_0
    iput-boolean v0, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->isGone:Z

    .line 36
    iput-object v1, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->freqText:[Ljava/lang/String;

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->row_id:I

    .line 47
    new-instance v0, Lcom/tutusw/phonespeedup/ProfileEditActivity$Clicker;

    invoke-direct {v0, p0, v1}, Lcom/tutusw/phonespeedup/ProfileEditActivity$Clicker;-><init>(Lcom/tutusw/phonespeedup/ProfileEditActivity;Lcom/tutusw/phonespeedup/ProfileEditActivity$Clicker;)V

    iput-object v0, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->clicker:Lcom/tutusw/phonespeedup/ProfileEditActivity$Clicker;

    .line 48
    new-instance v0, Lcom/tutusw/phonespeedup/ProfileEditActivity$Seeker;

    invoke-direct {v0, p0, v1}, Lcom/tutusw/phonespeedup/ProfileEditActivity$Seeker;-><init>(Lcom/tutusw/phonespeedup/ProfileEditActivity;Lcom/tutusw/phonespeedup/ProfileEditActivity$Seeker;)V

    iput-object v0, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->seeker:Lcom/tutusw/phonespeedup/ProfileEditActivity$Seeker;

    .line 49
    new-instance v0, Lcom/tutusw/phonespeedup/ProfileEditActivity$SeekerFocus;

    invoke-direct {v0, p0, v1}, Lcom/tutusw/phonespeedup/ProfileEditActivity$SeekerFocus;-><init>(Lcom/tutusw/phonespeedup/ProfileEditActivity;Lcom/tutusw/phonespeedup/ProfileEditActivity$SeekerFocus;)V

    iput-object v0, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->seekerFocus:Lcom/tutusw/phonespeedup/ProfileEditActivity$SeekerFocus;

    .line 58
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->refreshInterval:[I

    .line 59
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "\u88ab\u52a8"

    aput-object v1, v0, v2

    const-string v1, "240 \u79d2"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "120 \u79d2"

    aput-object v2, v0, v1

    const-string v1, "60 \u79d2"

    aput-object v1, v0, v3

    const/4 v1, 0x4

    const-string v2, "30 \u79d2"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "15 \u79d2"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "10 \u79d2"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "5 \u79d2"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->refreshIntervalString:[Ljava/lang/String;

    .line 28
    return-void

    :cond_0
    move v0, v2

    .line 32
    goto :goto_0

    .line 58
    nop

    :array_0
    .array-data 4
        -0x1
        0x3a980
        0x1d4c0
        0xea60
        0x7530
        0x3a98
        0x2710
        0x1388
    .end array-data
.end method

.method static synthetic access$0(Lcom/tutusw/phonespeedup/ProfileEditActivity;F)F
    .locals 1

    .prologue
    .line 534
    invoke-direct {p0, p1}, Lcom/tutusw/phonespeedup/ProfileEditActivity;->cToF(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/tutusw/phonespeedup/ProfileEditActivity;I)V
    .locals 0

    .prologue
    .line 342
    invoke-direct {p0, p1}, Lcom/tutusw/phonespeedup/ProfileEditActivity;->configHide(I)V

    return-void
.end method

.method private cToF(F)F
    .locals 6
    .param p1, "temp"    # F

    .prologue
    .line 535
    const-wide/high16 v0, 0x4040000000000000L    # 32.0

    const-wide v2, 0x3ffccccccccccccdL    # 1.8

    float-to-double v4, p1

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method private configHide(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/16 v3, 0x32

    const/4 v2, 0x0

    const-string v4, "50.0\u00b0C (122.0\u00b0F)"

    .line 345
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 346
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->paramText:Landroid/widget/TextView;

    const-string v1, "\u7535\u6c60\u7535\u91cf <"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->warningLayout:Landroid/widget/RelativeLayout;

    iget v1, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->invisible:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 348
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->paramLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 349
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->refreshLayout:Landroid/widget/RelativeLayout;

    iget v1, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->invisible:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 350
    iget v0, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->conditionPosition:I

    if-eq v0, p1, :cond_0

    .line 351
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->paramSeek:Landroid/widget/SeekBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 352
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->paramSeek:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 353
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->paramMeter:Landroid/widget/TextView;

    const-string v1, "50%"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    :cond_0
    :goto_0
    iput p1, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->conditionPosition:I

    .line 386
    return-void

    .line 356
    :cond_1
    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    .line 357
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->paramText:Landroid/widget/TextView;

    const-string v1, "\u6e29\u5ea6 >"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->warningLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 359
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->paramLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 360
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->refreshLayout:Landroid/widget/RelativeLayout;

    iget v1, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->invisible:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 361
    iget v0, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->conditionPosition:I

    if-eq v0, p1, :cond_0

    .line 362
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->paramSeek:Landroid/widget/SeekBar;

    const/16 v1, 0x320

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 363
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->paramSeek:Landroid/widget/SeekBar;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 364
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->paramMeter:Landroid/widget/TextView;

    const-string v1, "50.0\u00b0C (122.0\u00b0F)"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 367
    :cond_2
    const/4 v0, 0x6

    if-ne p1, v0, :cond_3

    .line 368
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->paramText:Landroid/widget/TextView;

    const-string v1, "CPU >"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->warningLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 370
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->paramLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 371
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->refreshLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 372
    iget v0, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->conditionPosition:I

    if-eq v0, p1, :cond_0

    .line 373
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->paramSeek:Landroid/widget/SeekBar;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 374
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->paramSeek:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 375
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->paramMeter:Landroid/widget/TextView;

    const-string v1, "50.0\u00b0C (122.0\u00b0F)"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 379
    :cond_3
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->warningLayout:Landroid/widget/RelativeLayout;

    iget v1, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->invisible:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 380
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->paramLayout:Landroid/widget/RelativeLayout;

    iget v1, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->invisible:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 381
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->refreshLayout:Landroid/widget/RelativeLayout;

    iget v1, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->invisible:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private configSpinner()V
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->conditionSpinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/tutusw/phonespeedup/ProfileEditActivity$1;

    invoke-direct {v1, p0}, Lcom/tutusw/phonespeedup/ProfileEditActivity$1;-><init>(Lcom/tutusw/phonespeedup/ProfileEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 340
    return-void
.end method

.method private convertIntArray([I)[Ljava/lang/String;
    .locals 4
    .param p1, "sarray"    # [I

    .prologue
    .line 506
    if-eqz p1, :cond_1

    .line 507
    array-length v2, p1

    new-array v1, v2, [Ljava/lang/String;

    .line 508
    .local v1, "intarray":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_0

    move-object v2, v1

    .line 513
    .end local v0    # "i":I
    .end local v1    # "intarray":[Ljava/lang/String;
    :goto_1
    return-object v2

    .line 509
    .restart local v0    # "i":I
    .restart local v1    # "intarray":[Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 508
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 513
    .end local v0    # "i":I
    .end local v1    # "intarray":[Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private convertStringArray([Ljava/lang/String;)[I
    .locals 3
    .param p1, "sarray"    # [Ljava/lang/String;

    .prologue
    .line 495
    if-eqz p1, :cond_1

    .line 496
    array-length v2, p1

    new-array v1, v2, [I

    .line 497
    .local v1, "intarray":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_0

    move-object v2, v1

    .line 502
    .end local v0    # "i":I
    .end local v1    # "intarray":[I
    :goto_1
    return-object v2

    .line 498
    .restart local v0    # "i":I
    .restart local v1    # "intarray":[I
    :cond_0
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v0

    .line 497
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 502
    .end local v0    # "i":I
    .end local v1    # "intarray":[I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getFrequencies()V
    .locals 12

    .prologue
    const/16 v11, 0x4b00

    const/4 v10, 0x1

    const/4 v7, 0x0

    const-string v9, "Speedup"

    const-string v8, ""

    .line 389
    const-string v4, "Speedup"

    invoke-virtual {p0, v9, v7}, Lcom/tutusw/phonespeedup/ProfileEditActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->settings:Landroid/content/SharedPreferences;

    .line 390
    iget-object v4, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    iput-object v4, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 392
    iget-object v4, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->settings:Landroid/content/SharedPreferences;

    const-string v5, "device"

    const-string v6, "htc_msm"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 393
    .local v1, "device":Ljava/lang/String;
    new-instance v0, Lcom/tutusw/phonespeedup/Constants;

    invoke-direct {v0, v1}, Lcom/tutusw/phonespeedup/Constants;-><init>(Ljava/lang/String;)V

    .line 395
    .local v0, "constants":Lcom/tutusw/phonespeedup/Constants;
    const-string v4, "custom"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 397
    :try_start_0
    const-string v4, "Speedup"

    const-string v5, "\u81ea\u5b9a\u4e49\u914d\u7f6e"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const/4 v3, 0x0

    .line 399
    .local v3, "read":Ljava/lang/String;
    const-string v4, "/sdcard/Speedup.txt"

    invoke-direct {p0, v4}, Lcom/tutusw/phonespeedup/ProfileEditActivity;->readInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 401
    if-eqz v3, :cond_0

    const-string v4, ""

    if-ne v3, v8, :cond_1

    .line 402
    :cond_0
    const-string v4, "/system/sd/Speedup.txt"

    invoke-direct {p0, v4}, Lcom/tutusw/phonespeedup/ProfileEditActivity;->readInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 404
    :cond_1
    if-eqz v3, :cond_2

    const-string v4, ""

    if-ne v3, v8, :cond_3

    .line 405
    :cond_2
    const-string v4, "/system/Speedup"

    invoke-direct {p0, v4}, Lcom/tutusw/phonespeedup/ProfileEditActivity;->readInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 407
    :cond_3
    if-eqz v3, :cond_4

    const-string v4, ""

    if-ne v3, v8, :cond_5

    .line 408
    :cond_4
    const-string v4, "/data/local/Speedup"

    invoke-direct {p0, v4}, Lcom/tutusw/phonespeedup/ProfileEditActivity;->readInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 410
    :cond_5
    if-eqz v3, :cond_9

    const-string v4, ""

    if-eq v3, v8, :cond_9

    .line 411
    const-string v4, "Speedup"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u81ea\u5b9a\u4e49\u9891\u7387\u901f\u5ea6\u88ab\u68c0\u6d4b\u5230: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->freqText:[Ljava/lang/String;

    .line 414
    iget-object v4, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->freqText:[Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/tutusw/phonespeedup/ProfileEditActivity;->convertStringArray([Ljava/lang/String;)[I

    move-result-object v4

    iput-object v4, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->freq:[I

    .line 416
    iget-object v4, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->freq:[I

    invoke-static {v4}, Ljava/util/Arrays;->sort([I)V

    .line 418
    iget-object v4, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->freq:[I

    invoke-direct {p0, v4}, Lcom/tutusw/phonespeedup/ProfileEditActivity;->convertIntArray([I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->freqText:[Ljava/lang/String;

    .line 420
    iget-object v4, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->freq:[I

    iget-object v5, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->freq:[I

    array-length v5, v5

    sub-int/2addr v5, v10

    aget v4, v4, v5

    iput v4, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->defaultMax:I

    .line 421
    iget-object v4, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->freq:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    if-eq v4, v11, :cond_8

    .line 422
    iget-object v4, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->freq:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    iput v4, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->defaultMin:I

    .line 427
    :goto_0
    const v4, 0x3b9aca00

    iput v4, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->limitMax:I

    .line 428
    const/4 v4, 0x0

    iput v4, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->limitMin:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    .end local v3    # "read":Ljava/lang/String;
    :cond_6
    :goto_1
    const-string v4, "custom"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "\u81ea\u52a8\u68c0\u6d4b"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 484
    invoke-virtual {v0}, Lcom/tutusw/phonespeedup/Constants;->getFreq()[I

    move-result-object v4

    iput-object v4, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->freq:[I

    .line 485
    invoke-virtual {v0}, Lcom/tutusw/phonespeedup/Constants;->getFreqText()[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->freqText:[Ljava/lang/String;

    .line 486
    invoke-virtual {v0}, Lcom/tutusw/phonespeedup/Constants;->getDefaultMax()I

    move-result v4

    iput v4, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->defaultMax:I

    .line 487
    invoke-virtual {v0}, Lcom/tutusw/phonespeedup/Constants;->getDefaultMin()I

    move-result v4

    iput v4, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->defaultMin:I

    .line 488
    invoke-virtual {v0}, Lcom/tutusw/phonespeedup/Constants;->getLimitMax()I

    move-result v4

    iput v4, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->limitMax:I

    .line 489
    invoke-virtual {v0}, Lcom/tutusw/phonespeedup/Constants;->getLimitMin()I

    move-result v4

    iput v4, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->limitMin:I

    .line 491
    :cond_7
    return-void

    .line 425
    .restart local v3    # "read":Ljava/lang/String;
    :cond_8
    :try_start_1
    iget-object v4, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->freq:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    iput v4, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->defaultMin:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 434
    .end local v3    # "read":Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 435
    .local v2, "e":Ljava/lang/Exception;
    const-string v1, ""

    goto :goto_1

    .line 432
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "read":Ljava/lang/String;
    :cond_9
    :try_start_2
    const-string v1, ""
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 439
    .end local v3    # "read":Ljava/lang/String;
    :cond_a
    const-string v4, "\u81ea\u52a8\u68c0\u6d4b"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 442
    const-string v4, "Speedup"

    const-string v4, "\u6b63\u5728\u81ea\u52a8\u68c0\u6d4b\u9891\u7387\u901f\u5ea6"

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    const/4 v3, 0x0

    .line 444
    .restart local v3    # "read":Ljava/lang/String;
    const-string v4, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_frequencies"

    invoke-static {v4}, Lcom/tutusw/phonespeedup/Io;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 445
    const-string v4, ""

    if-eq v3, v8, :cond_b

    if-nez v3, :cond_d

    .line 446
    :cond_b
    invoke-static {}, Lcom/tutusw/phonespeedup/Io;->autodetect()[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->freqText:[Ljava/lang/String;

    .line 451
    :cond_c
    :goto_2
    iget-object v4, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->freqText:[Ljava/lang/String;

    if-eqz v4, :cond_f

    .line 453
    const-string v4, "Speedup"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u9891\u7387\u901f\u5ea6\u88ab\u81ea\u52a8\u68c0\u6d4b\u5230: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v4, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->freqText:[Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/tutusw/phonespeedup/ProfileEditActivity;->convertStringArray([Ljava/lang/String;)[I

    move-result-object v4

    iput-object v4, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->freq:[I

    .line 457
    iget-object v4, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->freq:[I

    invoke-static {v4}, Ljava/util/Arrays;->sort([I)V

    .line 459
    iget-object v4, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->freq:[I

    invoke-direct {p0, v4}, Lcom/tutusw/phonespeedup/ProfileEditActivity;->convertIntArray([I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->freqText:[Ljava/lang/String;

    .line 461
    iget-object v4, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->freq:[I

    iget-object v5, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->freq:[I

    array-length v5, v5

    sub-int/2addr v5, v10

    aget v4, v4, v5

    iput v4, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->defaultMax:I

    .line 462
    iget-object v4, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->freq:[I

    aget v4, v4, v7

    if-eq v4, v11, :cond_e

    .line 463
    iget-object v4, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->freq:[I

    aget v4, v4, v7

    iput v4, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->defaultMin:I

    .line 468
    :goto_3
    const v4, 0x3b9aca00

    iput v4, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->limitMax:I

    .line 469
    iput v7, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->limitMin:I

    goto/16 :goto_1

    .line 448
    :cond_d
    const-string v4, ""

    if-eq v3, v8, :cond_c

    if-eqz v3, :cond_c

    .line 449
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->freqText:[Ljava/lang/String;

    goto :goto_2

    .line 466
    :cond_e
    iget-object v4, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->freq:[I

    aget v4, v4, v10

    iput v4, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->defaultMin:I

    goto :goto_3

    .line 472
    :cond_f
    const-string v1, ""

    goto/16 :goto_1
.end method

.method private getIndex(I[I)I
    .locals 2
    .param p1, "f"    # I
    .param p2, "array"    # [I

    .prologue
    .line 517
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-lt v0, v1, :cond_0

    .line 522
    const/4 v1, -0x1

    :goto_1
    return v1

    .line 518
    :cond_0
    aget v1, p2, v0

    if-ne v1, p1, :cond_1

    move v1, v0

    .line 519
    goto :goto_1

    .line 517
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getIndex(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1, "f"    # Ljava/lang/String;
    .param p2, "array"    # [Ljava/lang/String;

    .prologue
    .line 526
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-lt v0, v1, :cond_0

    .line 531
    const/4 v1, -0x1

    :goto_1
    return v1

    .line 527
    :cond_0
    aget-object v1, p2, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    aget-object v1, p2, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move v1, v0

    .line 528
    goto :goto_1

    .line 526
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getTempSensor()I
    .locals 4

    .prologue
    const/16 v3, -0x64

    .line 540
    :try_start_0
    const-string v2, "/sys/class/hwmon/hwmon0/device/temp1_input"

    invoke-static {v2}, Lcom/tutusw/phonespeedup/Io;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 541
    .local v1, "omapTemp":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    if-ne v1, v2, :cond_1

    :cond_0
    move v2, v3

    .line 547
    .end local v1    # "omapTemp":Ljava/lang/String;
    :goto_0
    return v2

    .line 544
    .restart local v1    # "omapTemp":Ljava/lang/String;
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    mul-int/lit8 v2, v2, 0xa

    goto :goto_0

    .line 546
    .end local v1    # "omapTemp":Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, "e":Ljava/lang/Exception;
    move v2, v3

    .line 547
    goto :goto_0
.end method

.method private readInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 552
    const/4 v1, 0x0

    .line 553
    .local v1, "in":Ljava/io/DataInputStream;
    const/4 v3, 0x0

    .line 554
    .local v3, "line":Ljava/lang/String;
    const-string v4, ""

    .line 556
    .local v4, "lines":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 557
    .end local v1    # "in":Ljava/io/DataInputStream;
    .local v2, "in":Ljava/io/DataInputStream;
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    if-nez v3, :cond_0

    .line 566
    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 571
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    move-object v1, v2

    .end local v2    # "in":Ljava/io/DataInputStream;
    .restart local v1    # "in":Ljava/io/DataInputStream;
    :goto_1
    return-object v5

    .line 558
    .end local v1    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "in":Ljava/io/DataInputStream;
    :cond_0
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v4

    goto :goto_0

    .line 561
    .end local v2    # "in":Ljava/io/DataInputStream;
    .restart local v1    # "in":Ljava/io/DataInputStream;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 566
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object v5, v7

    .line 562
    goto :goto_1

    .line 567
    :catch_1
    move-exception v0

    move-object v5, v7

    .line 568
    goto :goto_1

    .line 564
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 566
    :goto_3
    :try_start_5
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 570
    throw v5

    .line 567
    :catch_2
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    move-object v5, v7

    .line 568
    goto :goto_1

    .line 567
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "in":Ljava/io/DataInputStream;
    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    move-object v1, v2

    .end local v2    # "in":Ljava/io/DataInputStream;
    .restart local v1    # "in":Ljava/io/DataInputStream;
    move-object v5, v7

    .line 568
    goto :goto_1

    .line 564
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "in":Ljava/io/DataInputStream;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "in":Ljava/io/DataInputStream;
    .restart local v1    # "in":Ljava/io/DataInputStream;
    goto :goto_3

    .line 561
    .end local v1    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "in":Ljava/io/DataInputStream;
    :catch_4
    move-exception v5

    move-object v0, v5

    move-object v1, v2

    .end local v2    # "in":Ljava/io/DataInputStream;
    .restart local v1    # "in":Ljava/io/DataInputStream;
    goto :goto_2
.end method

.method private showProfilesWarning()V
    .locals 3

    .prologue
    .line 575
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 576
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    const-string v1, "\u60a8\u7684\u8bbe\u7f6e\u5df2\u4fdd\u5b58"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 577
    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/tutusw/phonespeedup/ProfileEditActivity$2;

    invoke-direct {v2, p0}, Lcom/tutusw/phonespeedup/ProfileEditActivity$2;-><init>(Lcom/tutusw/phonespeedup/ProfileEditActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 582
    const v1, 0x7f070004

    invoke-virtual {p0, v1}, Lcom/tutusw/phonespeedup/ProfileEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 584
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 585
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v9, 0x8

    const/4 v7, 0x3

    const v6, 0x1090009

    const v5, 0x1090008

    const/4 v8, 0x1

    .line 63
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0, v8}, Lcom/tutusw/phonespeedup/ProfileEditActivity;->requestWindowFeature(I)Z

    .line 65
    const v3, 0x7f03000c

    invoke-virtual {p0, v3}, Lcom/tutusw/phonespeedup/ProfileEditActivity;->setContentView(I)V

    .line 67
    iget-boolean v3, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->isGone:Z

    if-eqz v3, :cond_1

    .line 68
    iput v9, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->invisible:I

    .line 74
    :goto_0
    invoke-virtual {p0}, Lcom/tutusw/phonespeedup/ProfileEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->extras:Landroid/os/Bundle;

    .line 76
    new-instance v3, Lcom/tutusw/phonespeedup/DBHelper;

    invoke-virtual {p0}, Lcom/tutusw/phonespeedup/ProfileEditActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/tutusw/phonespeedup/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->db:Lcom/tutusw/phonespeedup/DBHelper;

    .line 78
    invoke-direct {p0}, Lcom/tutusw/phonespeedup/ProfileEditActivity;->getFrequencies()V

    .line 80
    const v3, 0x7f080073

    invoke-virtual {p0, v3}, Lcom/tutusw/phonespeedup/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->paramLayout:Landroid/widget/RelativeLayout;

    .line 81
    const v3, 0x7f080077

    invoke-virtual {p0, v3}, Lcom/tutusw/phonespeedup/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->warningLayout:Landroid/widget/RelativeLayout;

    .line 82
    const v3, 0x7f080080

    invoke-virtual {p0, v3}, Lcom/tutusw/phonespeedup/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->refreshLayout:Landroid/widget/RelativeLayout;

    .line 84
    const v3, 0x7f08006c

    invoke-virtual {p0, v3}, Lcom/tutusw/phonespeedup/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->headerText:Landroid/widget/TextView;

    .line 85
    const v3, 0x7f080076

    invoke-virtual {p0, v3}, Lcom/tutusw/phonespeedup/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->paramMeter:Landroid/widget/TextView;

    .line 86
    const v3, 0x7f080078

    invoke-virtual {p0, v3}, Lcom/tutusw/phonespeedup/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->maxMeter:Landroid/widget/TextView;

    .line 87
    const v3, 0x7f080079

    invoke-virtual {p0, v3}, Lcom/tutusw/phonespeedup/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->minMeter:Landroid/widget/TextView;

    .line 88
    const v3, 0x7f08007d

    invoke-virtual {p0, v3}, Lcom/tutusw/phonespeedup/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->priorityMeter:Landroid/widget/TextView;

    .line 89
    const v3, 0x7f080074

    invoke-virtual {p0, v3}, Lcom/tutusw/phonespeedup/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->paramText:Landroid/widget/TextView;

    .line 91
    const v3, 0x7f080010

    invoke-virtual {p0, v3}, Lcom/tutusw/phonespeedup/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->checkWarning:Landroid/widget/CheckBox;

    .line 93
    const v3, 0x7f080072

    invoke-virtual {p0, v3}, Lcom/tutusw/phonespeedup/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->conditionSpinner:Landroid/widget/Spinner;

    .line 94
    const v3, 0x7f08007a

    invoke-virtual {p0, v3}, Lcom/tutusw/phonespeedup/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->governorSpinner:Landroid/widget/Spinner;

    .line 95
    const v3, 0x7f080082

    invoke-virtual {p0, v3}, Lcom/tutusw/phonespeedup/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->refreshSpinner:Landroid/widget/Spinner;

    .line 97
    const-string v3, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_governors"

    invoke-static {v3}, Lcom/tutusw/phonespeedup/Io;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->governors:[Ljava/lang/String;

    .line 99
    new-instance v1, Landroid/widget/ArrayAdapter;

    .line 101
    iget-object v3, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->governors:[Ljava/lang/String;

    .line 99
    invoke-direct {v1, p0, v5, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 102
    .local v1, "governorArrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<*>;"
    invoke-virtual {v1, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 104
    new-instance v2, Landroid/widget/ArrayAdapter;

    .line 106
    iget-object v3, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->refreshIntervalString:[Ljava/lang/String;

    .line 104
    invoke-direct {v2, p0, v5, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 107
    .local v2, "refreshArrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<*>;"
    invoke-virtual {v2, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 112
    invoke-direct {p0}, Lcom/tutusw/phonespeedup/ProfileEditActivity;->getTempSensor()I

    move-result v3

    const/16 v4, -0x28

    if-le v3, v4, :cond_2

    .line 113
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 115
    sget-object v3, Lcom/tutusw/phonespeedup/Profiles;->profileNames:[Ljava/lang/String;

    .line 113
    invoke-direct {v0, p0, v5, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 116
    .local v0, "conditionArrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<*>;"
    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 125
    :goto_1
    iget-object v3, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->conditionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 126
    iget-object v3, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->governorSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 127
    iget-object v3, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->refreshSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 129
    iget-object v3, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->refreshSpinner:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->settings:Landroid/content/SharedPreferences;

    const-string v5, "profileFailsafeInterval"

    const/4 v6, -0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iget-object v5, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->refreshInterval:[I

    invoke-direct {p0, v4, v5}, Lcom/tutusw/phonespeedup/ProfileEditActivity;->getIndex(I[I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 131
    invoke-direct {p0}, Lcom/tutusw/phonespeedup/ProfileEditActivity;->configSpinner()V

    .line 133
    const v3, 0x7f08006d

    invoke-virtual {p0, v3}, Lcom/tutusw/phonespeedup/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->buttonClose:Landroid/widget/ImageView;

    .line 134
    const v3, 0x7f080083

    invoke-virtual {p0, v3}, Lcom/tutusw/phonespeedup/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->saveButton:Landroid/widget/Button;

    .line 135
    const v3, 0x7f080084

    invoke-virtual {p0, v3}, Lcom/tutusw/phonespeedup/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->deleteButton:Landroid/widget/Button;

    .line 137
    iget-object v3, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->buttonClose:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->clicker:Lcom/tutusw/phonespeedup/ProfileEditActivity$Clicker;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v3, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->saveButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->clicker:Lcom/tutusw/phonespeedup/ProfileEditActivity$Clicker;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v3, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->deleteButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->clicker:Lcom/tutusw/phonespeedup/ProfileEditActivity$Clicker;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    const v3, 0x7f080025

    invoke-virtual {p0, v3}, Lcom/tutusw/phonespeedup/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->maxSeek:Landroid/widget/SeekBar;

    .line 142
    const v3, 0x7f080027

    invoke-virtual {p0, v3}, Lcom/tutusw/phonespeedup/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->minSeek:Landroid/widget/SeekBar;

    .line 143
    const v3, 0x7f080075

    invoke-virtual {p0, v3}, Lcom/tutusw/phonespeedup/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->paramSeek:Landroid/widget/SeekBar;

    .line 144
    const v3, 0x7f08007c

    invoke-virtual {p0, v3}, Lcom/tutusw/phonespeedup/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->prioritySeek:Landroid/widget/SeekBar;

    .line 146
    iget-object v3, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->maxSeek:Landroid/widget/SeekBar;

    iget-object v4, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->freq:[I

    array-length v4, v4

    sub-int/2addr v4, v8

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 147
    iget-object v3, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->minSeek:Landroid/widget/SeekBar;

    iget-object v4, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->freq:[I

    array-length v4, v4

    sub-int/2addr v4, v8

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 149
    iget-object v3, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->maxSeek:Landroid/widget/SeekBar;

    iget-object v4, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->seeker:Lcom/tutusw/phonespeedup/ProfileEditActivity$Seeker;

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 150
    iget-object v3, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->minSeek:Landroid/widget/SeekBar;

    iget-object v4, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->seeker:Lcom/tutusw/phonespeedup/ProfileEditActivity$Seeker;

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 151
    iget-object v3, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->paramSeek:Landroid/widget/SeekBar;

    iget-object v4, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->seeker:Lcom/tutusw/phonespeedup/ProfileEditActivity$Seeker;

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 152
    iget-object v3, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->prioritySeek:Landroid/widget/SeekBar;

    iget-object v4, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->seeker:Lcom/tutusw/phonespeedup/ProfileEditActivity$Seeker;

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 154
    iget-object v3, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->maxSeek:Landroid/widget/SeekBar;

    iget-object v4, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->seekerFocus:Lcom/tutusw/phonespeedup/ProfileEditActivity$SeekerFocus;

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 155
    iget-object v3, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->minSeek:Landroid/widget/SeekBar;

    iget-object v4, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->seekerFocus:Lcom/tutusw/phonespeedup/ProfileEditActivity$SeekerFocus;

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 156
    iget-object v3, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->paramSeek:Landroid/widget/SeekBar;

    iget-object v4, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->seekerFocus:Lcom/tutusw/phonespeedup/ProfileEditActivity$SeekerFocus;

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 159
    iget-object v3, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->extras:Landroid/os/Bundle;

    if-eqz v3, :cond_5

    .line 161
    iget-object v3, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->extras:Landroid/os/Bundle;

    const-string v4, "row_id"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->row_id:I

    .line 162
    iget-object v3, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->db:Lcom/tutusw/phonespeedup/DBHelper;

    iget v4, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->row_id:I

    invoke-virtual {v3, v4}, Lcom/tutusw/phonespeedup/DBHelper;->getProfileDetails(I)Landroid/database/Cursor;

    move-result-object v3

    iput-object v3, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->cursor:Landroid/database/Cursor;

    .line 163
    iget-object v3, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->cursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 167
    iget-object v3, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->cursor:Landroid/database/Cursor;

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/tutusw/phonespeedup/ProfileEditActivity;->configHide(I)V

    .line 169
    iget-object v3, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->governorSpinner:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->cursor:Landroid/database/Cursor;

    const/4 v5, 0x6

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->governors:[Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/tutusw/phonespeedup/ProfileEditActivity;->getIndex(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 170
    iget-object v3, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->conditionSpinner:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->cursor:Landroid/database/Cursor;

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 172
    iget-object v3, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->maxSeek:Landroid/widget/SeekBar;

    iget-object v4, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->cursor:Landroid/database/Cursor;

    const/4 v5, 0x4

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iget-object v5, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->freq:[I

    invoke-direct {p0, v4, v5}, Lcom/tutusw/phonespeedup/ProfileEditActivity;->getIndex(I[I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 173
    iget-object v3, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->minSeek:Landroid/widget/SeekBar;

    iget-object v4, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->cursor:Landroid/database/Cursor;

    const/4 v5, 0x5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iget-object v5, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->freq:[I

    invoke-direct {p0, v4, v5}, Lcom/tutusw/phonespeedup/ProfileEditActivity;->getIndex(I[I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 175
    iget-object v3, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->cursor:Landroid/database/Cursor;

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_3

    .line 177
    iget-object v3, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->paramSeek:Landroid/widget/SeekBar;

    iget-object v4, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->cursor:Landroid/database/Cursor;

    const/4 v5, 0x7

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    div-int/lit8 v4, v4, 0xa

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 182
    :goto_2
    iget-object v3, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->prioritySeek:Landroid/widget/SeekBar;

    iget-object v4, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->cursor:Landroid/database/Cursor;

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 183
    iget-object v3, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->checkWarning:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->cursor:Landroid/database/Cursor;

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-lez v4, :cond_4

    move v4, v8

    :goto_3
    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 185
    iget-object v3, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->cursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 210
    :cond_0
    :goto_4
    iget-object v3, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->maxMeter:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->freqText:[Ljava/lang/String;

    iget-object v5, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->maxSeek:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getProgress()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v3, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->minMeter:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->freqText:[Ljava/lang/String;

    iget-object v5, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->minSeek:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getProgress()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    return-void

    .line 71
    .end local v0    # "conditionArrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<*>;"
    .end local v1    # "governorArrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<*>;"
    .end local v2    # "refreshArrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<*>;"
    :cond_1
    const/4 v3, 0x4

    iput v3, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->invisible:I

    goto/16 :goto_0

    .line 119
    .restart local v1    # "governorArrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<*>;"
    .restart local v2    # "refreshArrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<*>;"
    :cond_2
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 121
    sget-object v3, Lcom/tutusw/phonespeedup/Profiles;->profileNamesNoSensor:[Ljava/lang/String;

    .line 119
    invoke-direct {v0, p0, v5, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 122
    .restart local v0    # "conditionArrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<*>;"
    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    goto/16 :goto_1

    .line 180
    :cond_3
    iget-object v3, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->paramSeek:Landroid/widget/SeekBar;

    iget-object v4, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->cursor:Landroid/database/Cursor;

    const/4 v5, 0x7

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_2

    .line 183
    :cond_4
    const/4 v4, 0x0

    goto :goto_3

    .line 190
    :cond_5
    iget-object v3, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->deleteButton:Landroid/widget/Button;

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 191
    iget-object v3, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->headerText:Landroid/widget/TextView;

    const-string v4, "\u65b0\u7684\u914d\u7f6e"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v3, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->maxSeek:Landroid/widget/SeekBar;

    iget v4, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->defaultMax:I

    iget-object v5, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->freq:[I

    invoke-direct {p0, v4, v5}, Lcom/tutusw/phonespeedup/ProfileEditActivity;->getIndex(I[I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 194
    iget-object v3, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->minSeek:Landroid/widget/SeekBar;

    iget v4, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->defaultMin:I

    iget-object v5, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->freq:[I

    invoke-direct {p0, v4, v5}, Lcom/tutusw/phonespeedup/ProfileEditActivity;->getIndex(I[I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 196
    iget-object v3, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->governorSpinner:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->settings:Landroid/content/SharedPreferences;

    const-string v5, "stringGovernor"

    iget-object v6, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->governors:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->governors:[Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/tutusw/phonespeedup/ProfileEditActivity;->getIndex(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 198
    iget-object v3, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->warningLayout:Landroid/widget/RelativeLayout;

    iget v4, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->invisible:I

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 199
    iget-object v3, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->paramLayout:Landroid/widget/RelativeLayout;

    iget v4, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->invisible:I

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 200
    iget-object v3, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->refreshLayout:Landroid/widget/RelativeLayout;

    iget v4, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->invisible:I

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 203
    iget-object v3, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->settings:Landroid/content/SharedPreferences;

    const-string v4, "profilesFirstLaunch3"

    invoke-interface {v3, v4, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 204
    invoke-direct {p0}, Lcom/tutusw/phonespeedup/ProfileEditActivity;->showProfilesWarning()V

    goto/16 :goto_4
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 589
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 590
    iget-object v0, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity;->db:Lcom/tutusw/phonespeedup/DBHelper;

    invoke-virtual {v0}, Lcom/tutusw/phonespeedup/DBHelper;->close()V

    .line 591
    return-void
.end method
