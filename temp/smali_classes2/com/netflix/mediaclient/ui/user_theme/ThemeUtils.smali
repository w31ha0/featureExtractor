.class public Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;
.super Ljava/lang/Object;
.source "ThemeUtils.java"


# static fields
.field private static final LARGE_DETAIL_PAGE_THRESHOLD_DP:I = 0x400

.field private static final LIST_VIEW_FRICTION_SCALE_FACTOR:F = 7.5f

.field public static final PARAM_IS_KIDS_PARITY:Ljava/lang/String; = "isKidsParity"

.field public static final PREF_KEY:Ljava/lang/String; = "theme_pref"

.field private static final TAG:Ljava/lang/String; = "KidsUtils"

.field public static cachedTheme:Lcom/netflix/mediaclient/ui/user_theme/Theme;

.field private static phoneLandscape:Ljava/util/List;

.field private static phonePortrait:Ljava/util/List;

.field private static sMyListForKidsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 45
    sput-boolean v3, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->sMyListForKidsDisabled:Z

    .line 166
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;

    sget-object v1, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;->TITLE:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;->INFO:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;

    aput-object v1, v0, v3

    const/4 v1, 0x2

    sget-object v2, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;->SYNOPSIS:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;->CREDITS:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;->SPINNER:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;->ACTIONS:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;->ACTION_LABEL:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;->MATCH:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->phoneLandscape:Ljava/util/List;

    .line 176
    new-array v0, v3, [Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;

    sget-object v1, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;->TITLE:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;

    aput-object v1, v0, v4

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->phonePortrait:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearPrefs(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 88
    const/4 v0, 0x0

    sput-object v0, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->cachedTheme:Lcom/netflix/mediaclient/ui/user_theme/Theme;

    .line 89
    const-string/jumbo v0, "theme_pref"

    const-string/jumbo v1, ""

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 90
    return-void
.end method

.method public static configureListViewForKids(Landroid/widget/ListView;)V
    .locals 2

    .prologue
    .line 265
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 266
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    const/high16 v1, 0x40f00000    # 7.5f

    mul-float/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setFriction(F)V

    .line 267
    return-void
.end method

.method public static getDetailsPageContentWidth(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 270
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper;->isInTest(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    new-instance v0, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;-><init>(Landroid/content/Context;)V

    .line 272
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;->getModalWidth()I

    move-result v0

    .line 285
    :goto_0
    return v0

    .line 273
    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->isKidsParity(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenWidthInPixels(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    .line 276
    :cond_1
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenWidthInDPs(Landroid/content/Context;)I

    move-result v0

    .line 278
    const/16 v1, 0x400

    if-lt v0, v1, :cond_2

    .line 280
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenHeightInPixels(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenWidthInPixels(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0

    .line 282
    :cond_2
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenWidthInPixels(Landroid/content/Context;)I

    move-result v0

    goto :goto_0
.end method

.method public static getSavedTheme(Landroid/content/Context;)Lcom/netflix/mediaclient/ui/user_theme/Theme;
    .locals 3

    .prologue
    .line 93
    sget-object v0, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->cachedTheme:Lcom/netflix/mediaclient/ui/user_theme/Theme;

    if-eqz v0, :cond_0

    .line 94
    sget-object v0, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->cachedTheme:Lcom/netflix/mediaclient/ui/user_theme/Theme;

    .line 101
    :goto_0
    return-object v0

    .line 97
    :cond_0
    :try_start_0
    const-string/jumbo v0, "theme_pref"

    const-string/jumbo v1, ""

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/netflix/mediaclient/ui/user_theme/Theme;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/user_theme/Theme;

    sput-object v0, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->cachedTheme:Lcom/netflix/mediaclient/ui/user_theme/Theme;

    .line 99
    sget-object v0, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->cachedTheme:Lcom/netflix/mediaclient/ui/user_theme/Theme;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSectionTextColor(Landroid/content/Context;Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;)I
    .locals 4

    .prologue
    .line 202
    invoke-static {}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->getTheme()Lcom/netflix/mediaclient/ui/user_theme/Theme;

    move-result-object v1

    .line 204
    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/user_theme/Theme;->isLight()Z

    move-result v0

    .line 205
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->shouldTextBeForcedLight(Landroid/content/Context;Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;)Z

    move-result v2

    .line 208
    if-eqz v2, :cond_0

    .line 209
    const/4 v0, 0x0

    .line 213
    :cond_0
    sget-object v3, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;->MATCH:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;

    if-ne p1, v3, :cond_2

    .line 214
    if-eqz v0, :cond_1

    const v0, 0x7f0f001a

    :goto_0
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 225
    :goto_1
    return v0

    .line 214
    :cond_1
    const v0, 0x7f0f001b

    goto :goto_0

    .line 217
    :cond_2
    sget-object v3, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;->ACTION_LABEL:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;

    if-ne p1, v3, :cond_4

    .line 218
    if-eqz v0, :cond_3

    const v0, 0x7f0f0021

    :goto_2
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    goto :goto_1

    :cond_3
    const v0, 0x7f0f0105

    goto :goto_2

    .line 222
    :cond_4
    if-eqz v2, :cond_5

    .line 223
    const/4 v0, -0x1

    goto :goto_1

    .line 225
    :cond_5
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;->isSecondaryText()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/user_theme/Theme;->getSecondaryTextColor()I

    move-result v0

    goto :goto_1

    :cond_6
    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/user_theme/Theme;->getTextColor()I

    move-result v0

    goto :goto_1
.end method

.method public static getTheme()Lcom/netflix/mediaclient/ui/user_theme/Theme;
    .locals 2

    .prologue
    .line 75
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 77
    invoke-static {v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->isNetflixGiftEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    invoke-static {v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->getSavedTheme(Landroid/content/Context;)Lcom/netflix/mediaclient/ui/user_theme/Theme;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_0

    .line 84
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->isLightTheme()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;->LIGHT:Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;->getTheme()Lcom/netflix/mediaclient/ui/user_theme/Theme;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;->DARK:Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeBundle;->getTheme()Lcom/netflix/mediaclient/ui/user_theme/Theme;

    move-result-object v0

    goto :goto_0
.end method

.method private static isCharacterPage(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 240
    .line 241
    instance-of v1, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsDetailsActivity;

    if-eqz v1, :cond_0

    .line 242
    check-cast p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsDetailsActivity;

    .line 243
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsDetailsActivity;->getVideoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->CHARACTERS:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 245
    :cond_0
    return v0
.end method

.method public static isKidsParity(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 252
    if-nez p0, :cond_1

    .line 255
    :cond_0
    :goto_0
    return v0

    :cond_1
    const-class v1, Lcom/netflix/mediaclient/service/configuration/persistent/KidsParityTablet;

    invoke-static {v1, p0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getCellForTest(Ljava/lang/Class;Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_2:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    if-eq v1, v2, :cond_2

    const-class v1, Lcom/netflix/mediaclient/service/configuration/persistent/KidsParityPhone;

    .line 256
    invoke-static {v1, p0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getCellForTest(Ljava/lang/Class;Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_2:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    if-ne v1, v2, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isMyListForKidsDisabled()Z
    .locals 1

    .prologue
    .line 48
    sget-boolean v0, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->sMyListForKidsDisabled:Z

    return v0
.end method

.method public static isNetflixGiftEnabled(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 261
    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab8319;->isInTest(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isThemed(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 70
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->isKidsParity(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab8319;->isInTest(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static manageActionBarIcon(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 144
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->isThemed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->shouldIconBeWhite(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 147
    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    invoke-static {p1, p0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->setIconIfApplicable(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static manageSectionTextColor(Landroid/widget/TextView;Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;)V
    .locals 1

    .prologue
    .line 155
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->isThemed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->getSectionTextColor(Landroid/content/Context;Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public static saveTheme(Landroid/content/Context;Lcom/netflix/mediaclient/ui/user_theme/Theme;)V
    .locals 2

    .prologue
    .line 106
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/user_theme/Theme;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    const-string/jumbo v1, "theme_pref"

    invoke-static {p0, v1, v0}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 108
    return-void
.end method

.method public static setBackgroundIfApplicable(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 128
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->isThemed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-static {}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->getTheme()Lcom/netflix/mediaclient/ui/user_theme/Theme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/user_theme/Theme;->getBackgroundColor()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 131
    :cond_0
    return-void
.end method

.method public static setIconIfApplicable(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 134
    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->isThemed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 136
    invoke-static {}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->getTheme()Lcom/netflix/mediaclient/ui/user_theme/Theme;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/user_theme/Theme;->getIconColor()I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 138
    :cond_0
    return-void
.end method

.method public static setMyListForKidsDisabled(Z)V
    .locals 0

    .prologue
    .line 55
    sput-boolean p0, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->sMyListForKidsDisabled:Z

    .line 56
    return-void
.end method

.method public static setSecondaryTextColorIfApplicable(Landroid/widget/TextView;)V
    .locals 1

    .prologue
    .line 122
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->isThemed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-static {}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->getTheme()Lcom/netflix/mediaclient/ui/user_theme/Theme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/user_theme/Theme;->getSecondaryTextColor()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 125
    :cond_0
    return-void
.end method

.method public static setTextColorIfApplicable(Landroid/widget/TextView;)V
    .locals 1

    .prologue
    .line 116
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->isThemed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-static {}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->getTheme()Lcom/netflix/mediaclient/ui/user_theme/Theme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/user_theme/Theme;->getTextColor()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 119
    :cond_0
    return-void
.end method

.method private static shouldIconBeWhite(Landroid/app/Activity;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 233
    instance-of v1, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    if-nez v1, :cond_1

    .line 236
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->isCharacterPage(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isNotTabletByContext(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isTabletByContext(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static shouldPadInfo(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 112
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->isThemed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isNotTabletByContext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shouldTextBeForcedLight(Landroid/content/Context;Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 184
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->isCharacterPage(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 185
    sget-object v1, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;->SPINNER:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    .line 197
    :cond_0
    :goto_0
    return v0

    .line 188
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->isLightTheme()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isTabletByContext(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 196
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->phonePortrait:Ljava/util/List;

    .line 197
    :goto_1
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 196
    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->phoneLandscape:Ljava/util/List;

    goto :goto_1
.end method
