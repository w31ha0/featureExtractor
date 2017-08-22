.class public Lcom/novel/reader/SettingActivity;
.super Lcom/novel/reader/NovelReaderBaseActivity;
.source "SettingActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field private articleAdType:I

.field private articleAdTypeRadioGroup:Landroid/widget/RadioGroup;

.field private audioClickRadioGroup:Landroid/widget/RadioGroup;

.field private audioClickToNextPage:I

.field private clickToNextPage:I

.field private dbResetButton:Landroid/widget/Button;

.field private directionRadioGroup:Landroid/widget/RadioGroup;

.field private finishDialog:Landroid/app/AlertDialog$Builder;

.field private isSettingChanged:Z

.field private langRadioGroup:Landroid/widget/RadioGroup;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private modeRadioGroup:Landroid/widget/RadioGroup;

.field private moonModeImageViewTextColor:Landroid/widget/ImageView;

.field private moonModeTextBackground:I

.field private moonModeTextColor:I

.field private moonModeTextPreView:Landroid/widget/TextView;

.field private moonnModeImageViewTextBackground:Landroid/widget/ImageView;

.field private readingDirection:I

.field private stopSleepRadioGroup:Landroid/widget/RadioGroup;

.field private stopSleeping:I

.field private sunModeImageViewTextBackground:Landroid/widget/ImageView;

.field private sunModeImageViewTextColor:Landroid/widget/ImageView;

.field private sunModeTextBackground:I

.field private sunModeTextColor:I

.field private sunModeTextPreView:Landroid/widget/TextView;

.field private tapRadioGroup:Landroid/widget/RadioGroup;

.field private textLanguage:I

.field private textMode:Ljava/lang/String;

.field private textSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/novel/reader/NovelReaderBaseActivity;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/novel/reader/SettingActivity;->isSettingChanged:Z

    return-void
.end method

.method static synthetic access$000(Lcom/novel/reader/SettingActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/novel/reader/SettingActivity;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/novel/reader/SettingActivity;->showDbResetDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/novel/reader/SettingActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/SettingActivity;

    .prologue
    .line 32
    iget v0, p0, Lcom/novel/reader/SettingActivity;->sunModeTextColor:I

    return v0
.end method

.method static synthetic access$1000(Lcom/novel/reader/SettingActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/SettingActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/novel/reader/SettingActivity;->moonModeTextPreView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/novel/reader/SettingActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/SettingActivity;

    .prologue
    .line 32
    iget v0, p0, Lcom/novel/reader/SettingActivity;->moonModeTextBackground:I

    return v0
.end method

.method static synthetic access$1200(Lcom/novel/reader/SettingActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/SettingActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/novel/reader/SettingActivity;->moonnModeImageViewTextBackground:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/novel/reader/SettingActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/novel/reader/SettingActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/novel/reader/SettingActivity;->isSettingChanged:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/novel/reader/SettingActivity;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/SettingActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/novel/reader/SettingActivity;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/novel/reader/SettingActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/novel/reader/SettingActivity;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/novel/reader/SettingActivity;->saveModeRadioGroup()V

    return-void
.end method

.method static synthetic access$1600(Lcom/novel/reader/SettingActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/novel/reader/SettingActivity;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/novel/reader/SettingActivity;->saveModeColor()V

    return-void
.end method

.method static synthetic access$1700(Lcom/novel/reader/SettingActivity;)Landroid/widget/RadioGroup;
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/SettingActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/novel/reader/SettingActivity;->langRadioGroup:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/novel/reader/SettingActivity;Landroid/widget/RadioGroup;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/novel/reader/SettingActivity;
    .param p1, "x1"    # Landroid/widget/RadioGroup;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/novel/reader/SettingActivity;->saveRadioGroupValue(Landroid/widget/RadioGroup;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/novel/reader/SettingActivity;)Landroid/widget/RadioGroup;
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/SettingActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/novel/reader/SettingActivity;->directionRadioGroup:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$200(Lcom/novel/reader/SettingActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/SettingActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/novel/reader/SettingActivity;->sunModeImageViewTextColor:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/novel/reader/SettingActivity;)Landroid/widget/RadioGroup;
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/SettingActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/novel/reader/SettingActivity;->tapRadioGroup:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/novel/reader/SettingActivity;)Landroid/widget/RadioGroup;
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/SettingActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/novel/reader/SettingActivity;->stopSleepRadioGroup:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/novel/reader/SettingActivity;)Landroid/widget/RadioGroup;
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/SettingActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/novel/reader/SettingActivity;->articleAdTypeRadioGroup:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/novel/reader/SettingActivity;)Landroid/widget/RadioGroup;
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/SettingActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/novel/reader/SettingActivity;->audioClickRadioGroup:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$300(Lcom/novel/reader/SettingActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/SettingActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/novel/reader/SettingActivity;->sunModeTextPreView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/novel/reader/SettingActivity;ILandroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0
    .param p0, "x0"    # Lcom/novel/reader/SettingActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/widget/ImageView;
    .param p3, "x3"    # Landroid/widget/TextView;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/novel/reader/SettingActivity;->showTextColorPicker(ILandroid/widget/ImageView;Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$500(Lcom/novel/reader/SettingActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/SettingActivity;

    .prologue
    .line 32
    iget v0, p0, Lcom/novel/reader/SettingActivity;->sunModeTextBackground:I

    return v0
.end method

.method static synthetic access$600(Lcom/novel/reader/SettingActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/SettingActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/novel/reader/SettingActivity;->sunModeImageViewTextBackground:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/novel/reader/SettingActivity;ILandroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0
    .param p0, "x0"    # Lcom/novel/reader/SettingActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/widget/ImageView;
    .param p3, "x3"    # Landroid/widget/TextView;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/novel/reader/SettingActivity;->showTextBackgroundPicker(ILandroid/widget/ImageView;Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$800(Lcom/novel/reader/SettingActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/SettingActivity;

    .prologue
    .line 32
    iget v0, p0, Lcom/novel/reader/SettingActivity;->moonModeTextColor:I

    return v0
.end method

.method static synthetic access$900(Lcom/novel/reader/SettingActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/SettingActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/novel/reader/SettingActivity;->moonModeImageViewTextColor:Landroid/widget/ImageView;

    return-object v0
.end method

.method private saveModeColor()V
    .locals 3

    .prologue
    .line 285
    iget-object v0, p0, Lcom/novel/reader/SettingActivity;->sunModeImageViewTextBackground:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    iput v0, p0, Lcom/novel/reader/SettingActivity;->sunModeTextBackground:I

    .line 286
    iget-object v0, p0, Lcom/novel/reader/SettingActivity;->sunModeImageViewTextColor:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    iput v0, p0, Lcom/novel/reader/SettingActivity;->sunModeTextColor:I

    .line 287
    iget-object v0, p0, Lcom/novel/reader/SettingActivity;->moonnModeImageViewTextBackground:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    iput v0, p0, Lcom/novel/reader/SettingActivity;->moonModeTextBackground:I

    .line 288
    iget-object v0, p0, Lcom/novel/reader/SettingActivity;->moonModeImageViewTextColor:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    iput v0, p0, Lcom/novel/reader/SettingActivity;->moonModeTextColor:I

    .line 289
    const-string v0, "SunModeSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/novel/reader/SettingActivity;->sunModeTextBackground:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/novel/reader/SettingActivity;->sunModeTextColor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/novel/reader/util/Setting;->saveSetting(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 290
    const-string v0, "MoonModeSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/novel/reader/SettingActivity;->moonModeTextBackground:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/novel/reader/SettingActivity;->moonModeTextColor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/novel/reader/util/Setting;->saveSetting(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 291
    return-void
.end method

.method private saveModeRadioGroup()V
    .locals 5

    .prologue
    .line 274
    iget-object v3, p0, Lcom/novel/reader/SettingActivity;->modeRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    .line 275
    .local v2, "radioButtonID":I
    iget-object v3, p0, Lcom/novel/reader/SettingActivity;->modeRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3, v2}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 276
    .local v1, "radioButton":Landroid/view/View;
    iget-object v3, p0, Lcom/novel/reader/SettingActivity;->modeRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3, v1}, Landroid/widget/RadioGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 277
    .local v0, "idx":I
    if-nez v0, :cond_0

    .line 278
    const-string v3, "ModeSetting"

    const-string v4, "SunModeSetting"

    invoke-static {v3, v4, p0}, Lcom/novel/reader/util/Setting;->saveSetting(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 282
    :goto_0
    return-void

    .line 280
    :cond_0
    const-string v3, "ModeSetting"

    const-string v4, "MoonModeSetting"

    invoke-static {v3, v4, p0}, Lcom/novel/reader/util/Setting;->saveSetting(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method

.method private saveRadioGroupValue(Landroid/widget/RadioGroup;Ljava/lang/String;)V
    .locals 3
    .param p1, "theRadioGroup"    # Landroid/widget/RadioGroup;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 266
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    .line 267
    .local v2, "radioButtonID":I
    invoke-virtual {p1, v2}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 268
    .local v1, "radioButton":Landroid/view/View;
    invoke-virtual {p1, v1}, Landroid/widget/RadioGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 269
    .local v0, "idx":I
    invoke-static {p2, v0, p0}, Lcom/novel/reader/util/Setting;->saveSetting(Ljava/lang/String;ILandroid/content/Context;)V

    .line 271
    return-void
.end method

.method private setFinishDialog()V
    .locals 3

    .prologue
    .line 319
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/novel/reader/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700da

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 320
    invoke-virtual {p0}, Lcom/novel/reader/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700db

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 321
    invoke-virtual {p0}, Lcom/novel/reader/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700ed

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/novel/reader/SettingActivity$13;

    invoke-direct {v2, p0}, Lcom/novel/reader/SettingActivity$13;-><init>(Lcom/novel/reader/SettingActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 337
    invoke-virtual {p0}, Lcom/novel/reader/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/novel/reader/SettingActivity$12;

    invoke-direct {v2, p0}, Lcom/novel/reader/SettingActivity$12;-><init>(Lcom/novel/reader/SettingActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 342
    invoke-virtual {p0}, Lcom/novel/reader/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700de

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/novel/reader/SettingActivity$11;

    invoke-direct {v2, p0}, Lcom/novel/reader/SettingActivity$11;-><init>(Lcom/novel/reader/SettingActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/novel/reader/SettingActivity;->finishDialog:Landroid/app/AlertDialog$Builder;

    .line 348
    return-void
.end method

.method private setViews()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 104
    const v0, 0x7f0e00ff

    invoke-virtual {p0, v0}, Lcom/novel/reader/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/novel/reader/SettingActivity;->mSeekBar:Landroid/widget/SeekBar;

    .line 105
    const v0, 0x7f0e0106

    invoke-virtual {p0, v0}, Lcom/novel/reader/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/novel/reader/SettingActivity;->modeRadioGroup:Landroid/widget/RadioGroup;

    .line 106
    const v0, 0x7f0e0109

    invoke-virtual {p0, v0}, Lcom/novel/reader/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/novel/reader/SettingActivity;->langRadioGroup:Landroid/widget/RadioGroup;

    .line 107
    const v0, 0x7f0e010c

    invoke-virtual {p0, v0}, Lcom/novel/reader/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/novel/reader/SettingActivity;->directionRadioGroup:Landroid/widget/RadioGroup;

    .line 108
    const v0, 0x7f0e0110

    invoke-virtual {p0, v0}, Lcom/novel/reader/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/novel/reader/SettingActivity;->tapRadioGroup:Landroid/widget/RadioGroup;

    .line 109
    const v0, 0x7f0e0116

    invoke-virtual {p0, v0}, Lcom/novel/reader/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/novel/reader/SettingActivity;->stopSleepRadioGroup:Landroid/widget/RadioGroup;

    .line 110
    const v0, 0x7f0e0113

    invoke-virtual {p0, v0}, Lcom/novel/reader/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/novel/reader/SettingActivity;->audioClickRadioGroup:Landroid/widget/RadioGroup;

    .line 111
    const v0, 0x7f0e0119

    invoke-virtual {p0, v0}, Lcom/novel/reader/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/novel/reader/SettingActivity;->articleAdTypeRadioGroup:Landroid/widget/RadioGroup;

    .line 112
    const v0, 0x7f0e0102

    invoke-virtual {p0, v0}, Lcom/novel/reader/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/novel/reader/SettingActivity;->sunModeTextPreView:Landroid/widget/TextView;

    .line 113
    const v0, 0x7f0e0105

    invoke-virtual {p0, v0}, Lcom/novel/reader/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/novel/reader/SettingActivity;->moonModeTextPreView:Landroid/widget/TextView;

    .line 114
    const v0, 0x7f0e0101

    invoke-virtual {p0, v0}, Lcom/novel/reader/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/novel/reader/SettingActivity;->sunModeImageViewTextColor:Landroid/widget/ImageView;

    .line 115
    const v0, 0x7f0e0100

    invoke-virtual {p0, v0}, Lcom/novel/reader/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/novel/reader/SettingActivity;->sunModeImageViewTextBackground:Landroid/widget/ImageView;

    .line 116
    const v0, 0x7f0e0104

    invoke-virtual {p0, v0}, Lcom/novel/reader/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/novel/reader/SettingActivity;->moonModeImageViewTextColor:Landroid/widget/ImageView;

    .line 117
    const v0, 0x7f0e0103

    invoke-virtual {p0, v0}, Lcom/novel/reader/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/novel/reader/SettingActivity;->moonnModeImageViewTextBackground:Landroid/widget/ImageView;

    .line 120
    const v0, 0x7f0e011c

    invoke-virtual {p0, v0}, Lcom/novel/reader/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/novel/reader/SettingActivity;->dbResetButton:Landroid/widget/Button;

    .line 122
    iget-object v0, p0, Lcom/novel/reader/SettingActivity;->sunModeTextPreView:Landroid/widget/TextView;

    iget v1, p0, Lcom/novel/reader/SettingActivity;->textSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 123
    iget-object v0, p0, Lcom/novel/reader/SettingActivity;->moonModeTextPreView:Landroid/widget/TextView;

    iget v1, p0, Lcom/novel/reader/SettingActivity;->textSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 124
    iget-object v0, p0, Lcom/novel/reader/SettingActivity;->sunModeTextPreView:Landroid/widget/TextView;

    iget v1, p0, Lcom/novel/reader/SettingActivity;->sunModeTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 125
    iget-object v0, p0, Lcom/novel/reader/SettingActivity;->sunModeTextPreView:Landroid/widget/TextView;

    iget v1, p0, Lcom/novel/reader/SettingActivity;->sunModeTextBackground:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 126
    iget-object v0, p0, Lcom/novel/reader/SettingActivity;->moonModeTextPreView:Landroid/widget/TextView;

    iget v1, p0, Lcom/novel/reader/SettingActivity;->moonModeTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 127
    iget-object v0, p0, Lcom/novel/reader/SettingActivity;->moonModeTextPreView:Landroid/widget/TextView;

    iget v1, p0, Lcom/novel/reader/SettingActivity;->moonModeTextBackground:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 129
    iget-object v0, p0, Lcom/novel/reader/SettingActivity;->sunModeImageViewTextColor:Landroid/widget/ImageView;

    iget v1, p0, Lcom/novel/reader/SettingActivity;->sunModeTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 130
    iget-object v0, p0, Lcom/novel/reader/SettingActivity;->sunModeImageViewTextBackground:Landroid/widget/ImageView;

    iget v1, p0, Lcom/novel/reader/SettingActivity;->sunModeTextBackground:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 131
    iget-object v0, p0, Lcom/novel/reader/SettingActivity;->moonModeImageViewTextColor:Landroid/widget/ImageView;

    iget v1, p0, Lcom/novel/reader/SettingActivity;->moonModeTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 132
    iget-object v0, p0, Lcom/novel/reader/SettingActivity;->moonnModeImageViewTextBackground:Landroid/widget/ImageView;

    iget v1, p0, Lcom/novel/reader/SettingActivity;->moonModeTextBackground:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 134
    iget-object v0, p0, Lcom/novel/reader/SettingActivity;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/novel/reader/SettingActivity;->textSize:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 135
    iget-object v0, p0, Lcom/novel/reader/SettingActivity;->modeRadioGroup:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/novel/reader/SettingActivity;->textMode:Ljava/lang/String;

    invoke-static {v1}, Lcom/novel/reader/util/Setting;->getTextModePosition(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 136
    iget-object v0, p0, Lcom/novel/reader/SettingActivity;->langRadioGroup:Landroid/widget/RadioGroup;

    iget v1, p0, Lcom/novel/reader/SettingActivity;->textLanguage:I

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 137
    iget-object v0, p0, Lcom/novel/reader/SettingActivity;->directionRadioGroup:Landroid/widget/RadioGroup;

    iget v1, p0, Lcom/novel/reader/SettingActivity;->readingDirection:I

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 138
    iget-object v0, p0, Lcom/novel/reader/SettingActivity;->tapRadioGroup:Landroid/widget/RadioGroup;

    iget v1, p0, Lcom/novel/reader/SettingActivity;->clickToNextPage:I

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 139
    iget-object v0, p0, Lcom/novel/reader/SettingActivity;->stopSleepRadioGroup:Landroid/widget/RadioGroup;

    iget v1, p0, Lcom/novel/reader/SettingActivity;->textLanguage:I

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 140
    iget-object v0, p0, Lcom/novel/reader/SettingActivity;->articleAdTypeRadioGroup:Landroid/widget/RadioGroup;

    iget v1, p0, Lcom/novel/reader/SettingActivity;->articleAdType:I

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 141
    iget-object v0, p0, Lcom/novel/reader/SettingActivity;->audioClickRadioGroup:Landroid/widget/RadioGroup;

    iget v1, p0, Lcom/novel/reader/SettingActivity;->audioClickToNextPage:I

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 143
    iget-object v0, p0, Lcom/novel/reader/SettingActivity;->modeRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 144
    iget-object v0, p0, Lcom/novel/reader/SettingActivity;->langRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 145
    iget-object v0, p0, Lcom/novel/reader/SettingActivity;->directionRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 146
    iget-object v0, p0, Lcom/novel/reader/SettingActivity;->tapRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 147
    iget-object v0, p0, Lcom/novel/reader/SettingActivity;->stopSleepRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 148
    iget-object v0, p0, Lcom/novel/reader/SettingActivity;->articleAdTypeRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 149
    iget-object v0, p0, Lcom/novel/reader/SettingActivity;->audioClickRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 151
    iget-object v0, p0, Lcom/novel/reader/SettingActivity;->dbResetButton:Landroid/widget/Button;

    new-instance v1, Lcom/novel/reader/SettingActivity$1;

    invoke-direct {v1, p0}, Lcom/novel/reader/SettingActivity$1;-><init>(Lcom/novel/reader/SettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v0, p0, Lcom/novel/reader/SettingActivity;->sunModeImageViewTextColor:Landroid/widget/ImageView;

    new-instance v1, Lcom/novel/reader/SettingActivity$2;

    invoke-direct {v1, p0}, Lcom/novel/reader/SettingActivity$2;-><init>(Lcom/novel/reader/SettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v0, p0, Lcom/novel/reader/SettingActivity;->sunModeImageViewTextBackground:Landroid/widget/ImageView;

    new-instance v1, Lcom/novel/reader/SettingActivity$3;

    invoke-direct {v1, p0}, Lcom/novel/reader/SettingActivity$3;-><init>(Lcom/novel/reader/SettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v0, p0, Lcom/novel/reader/SettingActivity;->moonModeImageViewTextColor:Landroid/widget/ImageView;

    new-instance v1, Lcom/novel/reader/SettingActivity$4;

    invoke-direct {v1, p0}, Lcom/novel/reader/SettingActivity$4;-><init>(Lcom/novel/reader/SettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/novel/reader/SettingActivity;->moonnModeImageViewTextBackground:Landroid/widget/ImageView;

    new-instance v1, Lcom/novel/reader/SettingActivity$5;

    invoke-direct {v1, p0}, Lcom/novel/reader/SettingActivity$5;-><init>(Lcom/novel/reader/SettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v0, p0, Lcom/novel/reader/SettingActivity;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/novel/reader/SettingActivity$6;

    invoke-direct {v1, p0}, Lcom/novel/reader/SettingActivity$6;-><init>(Lcom/novel/reader/SettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 203
    invoke-direct {p0}, Lcom/novel/reader/SettingActivity;->setFinishDialog()V

    .line 205
    return-void
.end method

.method private showDbResetDialog()V
    .locals 3

    .prologue
    .line 294
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/novel/reader/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700c9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 295
    invoke-virtual {p0}, Lcom/novel/reader/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700ca

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 296
    invoke-virtual {p0}, Lcom/novel/reader/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070103

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/novel/reader/SettingActivity$10;

    invoke-direct {v2, p0}, Lcom/novel/reader/SettingActivity$10;-><init>(Lcom/novel/reader/SettingActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 310
    invoke-virtual {p0}, Lcom/novel/reader/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700b9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/novel/reader/SettingActivity$9;

    invoke-direct {v2, p0}, Lcom/novel/reader/SettingActivity$9;-><init>(Lcom/novel/reader/SettingActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 314
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 316
    return-void
.end method

.method private showTextBackgroundPicker(ILandroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 2
    .param p1, "modeColor"    # I
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "textPreview"    # Landroid/widget/TextView;

    .prologue
    .line 226
    new-instance v0, Lyuku/ambilwarna/AmbilWarnaDialog;

    new-instance v1, Lcom/novel/reader/SettingActivity$8;

    invoke-direct {v1, p0, p2, p3}, Lcom/novel/reader/SettingActivity$8;-><init>(Lcom/novel/reader/SettingActivity;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    invoke-direct {v0, p0, p1, v1}, Lyuku/ambilwarna/AmbilWarnaDialog;-><init>(Landroid/content/Context;ILyuku/ambilwarna/AmbilWarnaDialog$OnAmbilWarnaListener;)V

    .line 240
    .local v0, "dialog":Lyuku/ambilwarna/AmbilWarnaDialog;
    invoke-virtual {v0}, Lyuku/ambilwarna/AmbilWarnaDialog;->show()V

    .line 241
    return-void
.end method

.method private showTextColorPicker(ILandroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 2
    .param p1, "modeColor"    # I
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "textPreview"    # Landroid/widget/TextView;

    .prologue
    .line 208
    new-instance v0, Lyuku/ambilwarna/AmbilWarnaDialog;

    new-instance v1, Lcom/novel/reader/SettingActivity$7;

    invoke-direct {v1, p0, p2, p3}, Lcom/novel/reader/SettingActivity$7;-><init>(Lcom/novel/reader/SettingActivity;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    invoke-direct {v0, p0, p1, v1}, Lyuku/ambilwarna/AmbilWarnaDialog;-><init>(Landroid/content/Context;ILyuku/ambilwarna/AmbilWarnaDialog$OnAmbilWarnaListener;)V

    .line 222
    .local v0, "dialog":Lyuku/ambilwarna/AmbilWarnaDialog;
    invoke-virtual {v0}, Lyuku/ambilwarna/AmbilWarnaDialog;->show()V

    .line 223
    return-void
.end method

.method private trackScreen()V
    .locals 3

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/novel/reader/SettingActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/analytics/NovelReaderAnalyticsApp;

    sget-object v2, Lcom/analytics/NovelReaderAnalyticsApp$TrackerName;->APP_TRACKER:Lcom/analytics/NovelReaderAnalyticsApp$TrackerName;

    invoke-virtual {v1, v2}, Lcom/analytics/NovelReaderAnalyticsApp;->getTracker(Lcom/analytics/NovelReaderAnalyticsApp$TrackerName;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    .line 97
    .local v0, "t":Lcom/google/android/gms/analytics/Tracker;
    const-string v1, "Setting Activity"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 98
    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 99
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/novel/reader/SettingActivity;->isSettingChanged:Z

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/novel/reader/SettingActivity;->finishDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 356
    :goto_0
    return-void

    .line 355
    :cond_0
    invoke-virtual {p0}, Lcom/novel/reader/SettingActivity;->finish()V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1
    .param p1, "arg0"    # Landroid/widget/RadioGroup;
    .param p2, "arg1"    # I

    .prologue
    .line 361
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/novel/reader/SettingActivity;->isSettingChanged:Z

    .line 362
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/novel/reader/NovelReaderBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const v1, 0x7f030051

    invoke-virtual {p0, v1}, Lcom/novel/reader/SettingActivity;->setContentView(I)V

    .line 73
    const-string v1, "TextSize"

    invoke-static {v1, p0}, Lcom/novel/reader/util/Setting;->getSettingInt(Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/novel/reader/SettingActivity;->textSize:I

    .line 74
    const-string v1, "TextLanguage"

    invoke-static {v1, p0}, Lcom/novel/reader/util/Setting;->getSettingInt(Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/novel/reader/SettingActivity;->textLanguage:I

    .line 75
    const-string v1, "ReadingDirections"

    invoke-static {v1, p0}, Lcom/novel/reader/util/Setting;->getSettingInt(Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/novel/reader/SettingActivity;->readingDirection:I

    .line 76
    const-string v1, "ClickToNextPage"

    invoke-static {v1, p0}, Lcom/novel/reader/util/Setting;->getSettingInt(Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/novel/reader/SettingActivity;->clickToNextPage:I

    .line 77
    const-string v1, "StopSleeping"

    invoke-static {v1, p0}, Lcom/novel/reader/util/Setting;->getSettingInt(Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/novel/reader/SettingActivity;->stopSleeping:I

    .line 78
    const-string v1, "ArticleAdType"

    invoke-static {v1, p0}, Lcom/novel/reader/util/Setting;->getSettingInt(Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/novel/reader/SettingActivity;->articleAdType:I

    .line 79
    const-string v1, "ModeSetting"

    invoke-static {v1, p0}, Lcom/novel/reader/util/Setting;->getSettingString(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/novel/reader/SettingActivity;->textMode:Ljava/lang/String;

    .line 80
    const-string v1, "SunModeSetting"

    invoke-static {v1, p0}, Lcom/novel/reader/util/Setting;->getBackgroundModeBackgroundColor(Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/novel/reader/SettingActivity;->sunModeTextBackground:I

    .line 81
    const-string v1, "SunModeSetting"

    invoke-static {v1, p0}, Lcom/novel/reader/util/Setting;->getBackgroundModeTextColor(Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/novel/reader/SettingActivity;->sunModeTextColor:I

    .line 82
    const-string v1, "MoonModeSetting"

    invoke-static {v1, p0}, Lcom/novel/reader/util/Setting;->getBackgroundModeBackgroundColor(Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/novel/reader/SettingActivity;->moonModeTextBackground:I

    .line 83
    const-string v1, "MoonModeSetting"

    invoke-static {v1, p0}, Lcom/novel/reader/util/Setting;->getBackgroundModeTextColor(Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/novel/reader/SettingActivity;->moonModeTextColor:I

    .line 84
    const-string v1, "AudioClickToNextPage"

    invoke-static {v1, p0}, Lcom/novel/reader/util/Setting;->getSettingInt(Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/novel/reader/SettingActivity;->audioClickToNextPage:I

    .line 86
    invoke-direct {p0}, Lcom/novel/reader/SettingActivity;->setViews()V

    .line 88
    invoke-virtual {p0}, Lcom/novel/reader/SettingActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 89
    .local v0, "ab":Landroid/support/v7/app/ActionBar;
    invoke-virtual {p0}, Lcom/novel/reader/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700f6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 90
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 92
    invoke-direct {p0}, Lcom/novel/reader/SettingActivity;->trackScreen()V

    .line 93
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 246
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 252
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 253
    .local v0, "itemId":I
    packed-switch v0, :pswitch_data_0

    .line 261
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 255
    :pswitch_0
    iget-boolean v1, p0, Lcom/novel/reader/SettingActivity;->isSettingChanged:Z

    if-eqz v1, :cond_0

    .line 256
    iget-object v1, p0, Lcom/novel/reader/SettingActivity;->finishDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 258
    :cond_0
    invoke-virtual {p0}, Lcom/novel/reader/SettingActivity;->finish()V

    goto :goto_0

    .line 253
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
