.class public final Lcom/netflix/mediaclient/ui/common/LanguageSelectorPhone;
.super Lcom/netflix/mediaclient/ui/common/LanguageSelector;
.source "LanguageSelectorPhone.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# static fields
.field private static final LIST_AUDIOS_TAB_TAG:Ljava/lang/String; = "ListAudios"

.field private static final LIST_SUBTITLES_TAB_TAG:Ljava/lang/String; = "ListSubtitles"


# instance fields
.field protected mAudioTabLabel:Landroid/widget/TextView;

.field protected mSubtitleTabLabel:Landroid/widget/TextView;

.field protected mTabHost:Landroid/widget/TabHost;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/common/LanguageSelector$LanguageSelectorCallback;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/common/LanguageSelector;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/common/LanguageSelector$LanguageSelectorCallback;)V

    .line 49
    return-void
.end method

.method private calculateMaxNumberOfItems()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 118
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/common/LanguageSelectorPhone;->getLanguage()Lcom/netflix/mediaclient/media/Language;

    move-result-object v4

    .line 119
    if-nez v4, :cond_1

    .line 165
    :cond_0
    :goto_0
    return v1

    .line 123
    :cond_1
    invoke-virtual {v4}, Lcom/netflix/mediaclient/media/Language;->getSubtitles()[Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    .line 124
    :goto_1
    add-int/lit8 v3, v0, 0x1

    .line 126
    invoke-virtual {v4}, Lcom/netflix/mediaclient/media/Language;->getAltAudios()[Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v0

    if-nez v0, :cond_3

    .line 127
    invoke-virtual {v4}, Lcom/netflix/mediaclient/media/Language;->getSubtitles()[Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v0

    if-eqz v0, :cond_0

    move v1, v3

    .line 131
    goto :goto_0

    .line 123
    :cond_2
    invoke-virtual {v4}, Lcom/netflix/mediaclient/media/Language;->getSubtitles()[Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v0

    array-length v0, v0

    goto :goto_1

    .line 135
    :cond_3
    invoke-virtual {v4}, Lcom/netflix/mediaclient/media/Language;->getSubtitles()[Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v0

    if-nez v0, :cond_4

    .line 136
    invoke-virtual {v4}, Lcom/netflix/mediaclient/media/Language;->getAltAudios()[Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v0

    array-length v1, v0

    goto :goto_0

    .line 139
    :cond_4
    const-string/jumbo v0, "nf_language_selector"

    const-string/jumbo v2, "Calculate maximal item number"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {v4}, Lcom/netflix/mediaclient/media/Language;->getAltAudios()[Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v0

    array-length v0, v0

    if-lt v0, v3, :cond_5

    .line 145
    invoke-virtual {v4}, Lcom/netflix/mediaclient/media/Language;->getAltAudios()[Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v0

    array-length v1, v0

    goto :goto_0

    .line 153
    :cond_5
    invoke-virtual {v4}, Lcom/netflix/mediaclient/media/Language;->getAltAudios()[Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v0

    array-length v0, v0

    .line 154
    :goto_2
    invoke-virtual {v4}, Lcom/netflix/mediaclient/media/Language;->getAltAudios()[Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_7

    .line 155
    invoke-virtual {v4}, Lcom/netflix/mediaclient/media/Language;->getAltAudios()[Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/netflix/mediaclient/media/AudioSource;->getDisallowedSubtitles()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    sub-int v2, v3, v2

    .line 156
    if-le v2, v0, :cond_6

    move v0, v2

    .line 154
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    move v1, v0

    .line 165
    goto :goto_0
.end method

.method private getTabIndicator(Landroid/content/Context;Landroid/widget/TabHost;IZ)Landroid/view/View;
    .locals 4

    .prologue
    .line 212
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030087

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 213
    const v0, 0x7f100221

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 214
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(I)V

    .line 216
    if-eqz p4, :cond_0

    .line 217
    const-string/jumbo v2, "nf_language_selector"

    const-string/jumbo v3, "Set audio tab label"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorPhone;->mAudioTabLabel:Landroid/widget/TextView;

    .line 223
    :goto_0
    return-object v1

    .line 220
    :cond_0
    const-string/jumbo v2, "nf_language_selector"

    const-string/jumbo v3, "Set subtitle tab label"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorPhone;->mSubtitleTabLabel:Landroid/widget/TextView;

    goto :goto_0
.end method

.method private setNewTab(Landroid/content/Context;Landroid/widget/TabHost;Ljava/lang/String;IIZ)V
    .locals 2

    .prologue
    .line 205
    invoke-virtual {p2, p3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 206
    invoke-virtual {p2}, Landroid/widget/TabHost;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, p2, p4, p6}, Lcom/netflix/mediaclient/ui/common/LanguageSelectorPhone;->getTabIndicator(Landroid/content/Context;Landroid/widget/TabHost;IZ)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 207
    invoke-virtual {v0, p5}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 208
    invoke-virtual {p2, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 209
    return-void
.end method


# virtual methods
.method protected calculateListViewHeight()I
    .locals 4

    .prologue
    .line 174
    const-string/jumbo v0, "nf_language_selector"

    const-string/jumbo v1, "Phone calculate height"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorPhone;->mController:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 177
    const v0, 0x7f0a007c

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 178
    const v1, 0x7f0a0029

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 179
    const v3, 0x7f0a0191

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 181
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/common/LanguageSelectorPhone;->calculateMaxNumberOfItems()I

    move-result v3

    mul-int/2addr v2, v3

    .line 186
    if-gt v2, v0, :cond_0

    .line 200
    :goto_0
    return v0

    .line 193
    :cond_0
    if-le v2, v1, :cond_1

    move v0, v1

    .line 197
    goto :goto_0

    :cond_1
    move v0, v2

    .line 200
    goto :goto_0
.end method

.method protected getDialogLayoutId()I
    .locals 2

    .prologue
    .line 231
    const-string/jumbo v0, "nf_language_selector"

    const-string/jumbo v1, "Phone R.layout.language_selector_dialog"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const v0, 0x7f030085

    return v0
.end method

.method protected init(Landroid/view/View;Lcom/netflix/mediaclient/media/Language;)V
    .locals 7

    .prologue
    .line 90
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/ui/common/LanguageSelector;->init(Landroid/view/View;Lcom/netflix/mediaclient/media/Language;)V

    .line 92
    const-string/jumbo v0, "nf_language_selector"

    const-string/jumbo v1, "Add tabhost"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const v0, 0x7f10021e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorPhone;->mTabHost:Landroid/widget/TabHost;

    .line 94
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorPhone;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 95
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorPhone;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    .line 97
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorPhone;->mController:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorPhone;->mTabHost:Landroid/widget/TabHost;

    const-string/jumbo v3, "ListAudios"

    const v4, 0x7f0900a5

    const v5, 0x7f100211

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/ui/common/LanguageSelectorPhone;->setNewTab(Landroid/content/Context;Landroid/widget/TabHost;Ljava/lang/String;IIZ)V

    .line 98
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorPhone;->mController:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorPhone;->mTabHost:Landroid/widget/TabHost;

    const-string/jumbo v3, "ListSubtitles"

    const v4, 0x7f0901a9

    const v5, 0x7f100213

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/ui/common/LanguageSelectorPhone;->setNewTab(Landroid/content/Context;Landroid/widget/TabHost;Ljava/lang/String;IIZ)V

    .line 100
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorPhone;->mTabHost:Landroid/widget/TabHost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 102
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorPhone;->mAudioTabLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorPhone;->mAudioTabLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 103
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorPhone;->mSubtitleTabLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorPhone;->mSubtitleTabLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 105
    const-string/jumbo v0, "nf_language_selector"

    const-string/jumbo v1, "Done with tabhost"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    const-string/jumbo v0, "ListAudios"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorPhone;->mAudioTabLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorPhone;->mAudioTabLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorPhone;->mAudioTabLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 69
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorPhone;->mSubtitleTabLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorPhone;->mSubtitleTabLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorPhone;->mSubtitleTabLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 86
    :goto_1
    return-void

    .line 66
    :cond_0
    const-string/jumbo v0, "nf_language_selector"

    const-string/jumbo v1, "audio label is NULL!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 72
    :cond_1
    const-string/jumbo v0, "nf_language_selector"

    const-string/jumbo v1, "subtitle label is NULL!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorPhone;->mAudioTabLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 76
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorPhone;->mAudioTabLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorPhone;->mAudioTabLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 80
    :goto_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorPhone;->mSubtitleTabLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 81
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorPhone;->mSubtitleTabLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelectorPhone;->mSubtitleTabLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_1

    .line 78
    :cond_3
    const-string/jumbo v0, "nf_language_selector"

    const-string/jumbo v1, "audio label is NULL!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 83
    :cond_4
    const-string/jumbo v0, "nf_language_selector"

    const-string/jumbo v1, "subtitle label is NULL!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
