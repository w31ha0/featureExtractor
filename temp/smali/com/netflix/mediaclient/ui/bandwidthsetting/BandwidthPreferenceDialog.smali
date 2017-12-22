.class public Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;
.super Landroid/preference/DialogPreference;
.source "BandwidthPreferenceDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_bw"


# instance fields
.field private getmTextUnlimitedDetail:Landroid/widget/TextView;

.field private mBandwidthControlAuto:Landroid/support/v7/widget/SwitchCompat;

.field private mRbGroupHigh:Landroid/widget/RelativeLayout;

.field private mRbGroupLow:Landroid/widget/RelativeLayout;

.field private mRbGroupMedium:Landroid/widget/RelativeLayout;

.field private mRbGroupOff:Landroid/widget/RelativeLayout;

.field private mRbGroupUnlimited:Landroid/widget/RelativeLayout;

.field private mRbHigh:Landroid/widget/RadioButton;

.field private mRbLow:Landroid/widget/RadioButton;

.field private mRbMedium:Landroid/widget/RadioButton;

.field private mRbOff:Landroid/widget/RadioButton;

.field private mRbUnlimited:Landroid/widget/RadioButton;

.field private mTextHigh:Landroid/widget/TextView;

.field private mTextHighDetail:Landroid/widget/TextView;

.field private mTextLow:Landroid/widget/TextView;

.field private mTextLowDetail:Landroid/widget/TextView;

.field private mTextMedium:Landroid/widget/TextView;

.field private mTextMediumDetail:Landroid/widget/TextView;

.field private mTextOff:Landroid/widget/TextView;

.field private mTextOffDetail:Landroid/widget/TextView;

.field private mTextUnlimited:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->setPersistent(Z)V

    .line 47
    const v0, 0x7f0300e0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->setDialogLayoutResource(I)V

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->unselectManualChoices()V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;Z)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->enableManualViews(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->selectManualChoice(Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;)V

    return-void
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;)Z
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->isAutoSelectorViewOn()Z

    move-result v0

    return v0
.end method

.method private enableManualViews(Z)V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbOff:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 159
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbLow:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 160
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbMedium:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 161
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbHigh:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 162
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbUnlimited:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 164
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mTextOff:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 165
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mTextOffDetail:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 166
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mTextLow:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 167
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mTextLowDetail:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 168
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mTextMedium:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 169
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mTextMediumDetail:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 170
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mTextHigh:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 171
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mTextHighDetail:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 172
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mTextUnlimited:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 173
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->getmTextUnlimitedDetail:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 175
    return-void
.end method

.method private getSelectedManualBwChoice()Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbOff:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    sget-object v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->OFF:Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;

    .line 294
    :goto_0
    return-object v0

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbLow:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    sget-object v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->LOW:Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;

    goto :goto_0

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbMedium:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 286
    sget-object v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->MEDIUM:Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;

    goto :goto_0

    .line 288
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbHigh:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 289
    sget-object v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->HIGH:Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;

    goto :goto_0

    .line 291
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbUnlimited:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 292
    sget-object v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->UNLIMITED:Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;

    goto :goto_0

    .line 294
    :cond_4
    sget-object v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->LOW:Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;

    goto :goto_0
.end method

.method private initClickListeners()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbOff:Landroid/widget/RadioButton;

    new-instance v1, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$DataSelectorViewListener;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$DataSelectorViewListener;-><init>(Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbLow:Landroid/widget/RadioButton;

    new-instance v1, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$DataSelectorViewListener;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$DataSelectorViewListener;-><init>(Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbMedium:Landroid/widget/RadioButton;

    new-instance v1, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$DataSelectorViewListener;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$DataSelectorViewListener;-><init>(Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbHigh:Landroid/widget/RadioButton;

    new-instance v1, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$DataSelectorViewListener;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$DataSelectorViewListener;-><init>(Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbUnlimited:Landroid/widget/RadioButton;

    new-instance v1, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$DataSelectorViewListener;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$DataSelectorViewListener;-><init>(Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbGroupOff:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$DataSelectorViewListener;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$DataSelectorViewListener;-><init>(Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbGroupLow:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$DataSelectorViewListener;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$DataSelectorViewListener;-><init>(Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbGroupMedium:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$DataSelectorViewListener;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$DataSelectorViewListener;-><init>(Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbGroupHigh:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$DataSelectorViewListener;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$DataSelectorViewListener;-><init>(Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbGroupUnlimited:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$DataSelectorViewListener;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$DataSelectorViewListener;-><init>(Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mBandwidthControlAuto:Landroid/support/v7/widget/SwitchCompat;

    new-instance v1, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$1;-><init>(Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 155
    return-void
.end method

.method private initViews(Landroid/view/View;ZI)V
    .locals 1

    .prologue
    .line 92
    const v0, 0x7f100314

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbOff:Landroid/widget/RadioButton;

    .line 93
    const v0, 0x7f100318

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbLow:Landroid/widget/RadioButton;

    .line 94
    const v0, 0x7f10031c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbMedium:Landroid/widget/RadioButton;

    .line 95
    const v0, 0x7f100320

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbHigh:Landroid/widget/RadioButton;

    .line 96
    const v0, 0x7f100324

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbUnlimited:Landroid/widget/RadioButton;

    .line 98
    const v0, 0x7f100315

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mTextOff:Landroid/widget/TextView;

    .line 99
    const v0, 0x7f100316

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mTextOffDetail:Landroid/widget/TextView;

    .line 101
    const v0, 0x7f100319

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mTextLow:Landroid/widget/TextView;

    .line 102
    const v0, 0x7f10031a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mTextLowDetail:Landroid/widget/TextView;

    .line 104
    const v0, 0x7f10031d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mTextMedium:Landroid/widget/TextView;

    .line 105
    const v0, 0x7f10031e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mTextMediumDetail:Landroid/widget/TextView;

    .line 107
    const v0, 0x7f100321

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mTextHigh:Landroid/widget/TextView;

    .line 108
    const v0, 0x7f100322

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mTextHighDetail:Landroid/widget/TextView;

    .line 110
    const v0, 0x7f100325

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mTextUnlimited:Landroid/widget/TextView;

    .line 111
    const v0, 0x7f100326

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->getmTextUnlimitedDetail:Landroid/widget/TextView;

    .line 113
    const v0, 0x7f100313

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbGroupOff:Landroid/widget/RelativeLayout;

    .line 114
    const v0, 0x7f100317

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbGroupLow:Landroid/widget/RelativeLayout;

    .line 115
    const v0, 0x7f10031b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbGroupMedium:Landroid/widget/RelativeLayout;

    .line 116
    const v0, 0x7f10031f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbGroupHigh:Landroid/widget/RelativeLayout;

    .line 117
    const v0, 0x7f100323

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbGroupUnlimited:Landroid/widget/RelativeLayout;

    .line 119
    const v0, 0x7f10030f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mBandwidthControlAuto:Landroid/support/v7/widget/SwitchCompat;

    .line 120
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mBandwidthControlAuto:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 122
    if-nez p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->enableManualViews(Z)V

    .line 123
    if-nez p2, :cond_0

    .line 124
    invoke-static {p3}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->create(I)Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->selectManualChoice(Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;)V

    .line 126
    :cond_0
    return-void

    .line 122
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isAutoSelectorViewOn()Z
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mBandwidthControlAuto:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v0

    return v0
.end method

.method private notifyCaller()V
    .locals 3

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$BandwidthSavingCallback;

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$BandwidthSavingCallback;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$BandwidthSavingCallback;->onBandwidthSettingsDone(Landroid/content/Context;)V

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    const-string/jumbo v0, "nf_bw"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyCaller: no callback interface!! activity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private selectManualChoice(Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 186
    sget-object v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$2;->$SwitchMap$com$netflix$mediaclient$ui$bandwidthsetting$BandwidthPreferenceDialog$ManualBwChoice:[I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 205
    :goto_0
    return-void

    .line 188
    :pswitch_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbOff:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 191
    :pswitch_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbLow:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 194
    :pswitch_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbMedium:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 197
    :pswitch_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbHigh:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 200
    :pswitch_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbUnlimited:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private unselectManualChoices()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 178
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbOff:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 179
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbLow:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 180
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbMedium:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 181
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbHigh:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 182
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbUnlimited:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 183
    return-void
.end method


# virtual methods
.method protected dismissDialog()V
    .locals 2

    .prologue
    .line 72
    const-string/jumbo v0, "nf_bw"

    const-string/jumbo v1, "dismissing bw dialog"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 74
    return-void
.end method

.method public onBindDialogView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->isAutomaticOn(Landroid/content/Context;)Z

    move-result v0

    .line 54
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->getManualChoice(Landroid/content/Context;)I

    move-result v1

    .line 52
    invoke-direct {p0, p1, v0, v1}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->initViews(Landroid/view/View;ZI)V

    .line 56
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->initClickListeners()V

    .line 57
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 58
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 3

    .prologue
    .line 65
    if-eqz p1, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->isAutoSelectorViewOn()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->getSelectedManualBwChoice()Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->getValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->saveUserSelections(Landroid/content/Context;Ljava/lang/Boolean;I)V

    .line 67
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->notifyCaller()V

    .line 69
    :cond_0
    return-void
.end method
