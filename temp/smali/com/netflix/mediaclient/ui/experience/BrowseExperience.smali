.class public abstract enum Lcom/netflix/mediaclient/ui/experience/BrowseExperience;
.super Ljava/lang/Enum;
.source "BrowseExperience.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/experience/IExperience;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/ui/experience/BrowseExperience;",
        ">;",
        "Lcom/netflix/mediaclient/ui/experience/IExperience;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

.field public static final enum DISPLAY_PAGE_REFRESH:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

.field protected static final IMAGE_LOADER_CONFIG_ENUM:Ljava/lang/String; = "IMAGE_LOADER_CONFIG_ENUM"

.field protected static final IMAGE_LOADER_CONFIG_NO_PLACEHOLDER_ENUM:Ljava/lang/String; = "IMAGE_LOADER_CONFIG_NO_PLACEHOLDER_ENUM"

.field public static final enum KIDS_TABLET_STANDARD:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

.field protected static final LOMO_FRAG_OFFSET_LEFT_DIMEN_INT:Ljava/lang/String; = "LOMO_FRAG_OFFSET_LEFT_DIMEN_INT"

.field protected static final SEARCH_EXPERIENCE_ENUM:Ljava/lang/String; = "SEARCH_EXPERIENCE_ENUM"

.field protected static final SHOULD_INCLUDE_CHARACTER_LEAVES_BOOL:Ljava/lang/String; = "SHOULD_INCLUDE_CHARACTER_LEAVES_BOOL"

.field protected static final SHOULD_LOAD_KUBRICK_LEAVES_IN_DETAILS_BOOL:Ljava/lang/String; = "SHOULD_LOAD_KUBRICK_LEAVES_IN_DETAILS_BOOL"

.field protected static final SHOULD_LOAD_KUBRICK_LEAVES_IN_LOLOMO_BOOL:Ljava/lang/String; = "SHOULD_LOAD_KUBRICK_LEAVES_IN_LOLOMO_BOOL"

.field public static final enum STANDARD:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

.field public static final enum STANDARD_LIGHT_THEME:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

.field private static final TAG:Ljava/lang/String; = "BrowseExperience"

.field protected static final USE_KIDS_GENRES_LOMO:Ljava/lang/String; = "USE_KIDS_GENRES_LOMO"

.field protected static final USE_LOLOMO_BOXART:Ljava/lang/String; = "USE_LOLOMO_BOXART"

.field private static final USE_PRODUCTION_KUBRICK:Z

.field private static currExperience:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;


# instance fields
.field private final data:Lcom/netflix/mediaclient/ui/experience/BrowseExperience$ExperienceMap;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 71
    new-instance v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$2;

    const-string/jumbo v1, "STANDARD"

    new-instance v2, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$1;

    invoke-direct {v2}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$1;-><init>()V

    invoke-direct {v0, v1, v3, v2}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$2;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/ui/experience/BrowseExperience$ExperienceMap;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->STANDARD:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    .line 236
    new-instance v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$4;

    const-string/jumbo v1, "STANDARD_LIGHT_THEME"

    new-instance v2, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$3;

    invoke-direct {v2}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$3;-><init>()V

    invoke-direct {v0, v1, v4, v2}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$4;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/ui/experience/BrowseExperience$ExperienceMap;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->STANDARD_LIGHT_THEME:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    .line 286
    new-instance v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$6;

    const-string/jumbo v1, "DISPLAY_PAGE_REFRESH"

    new-instance v2, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$5;

    invoke-direct {v2}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$5;-><init>()V

    invoke-direct {v0, v1, v5, v2}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$6;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/ui/experience/BrowseExperience$ExperienceMap;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->DISPLAY_PAGE_REFRESH:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    .line 342
    new-instance v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$8;

    const-string/jumbo v1, "KIDS_TABLET_STANDARD"

    new-instance v2, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$7;

    invoke-direct {v2}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$7;-><init>()V

    invoke-direct {v0, v1, v6, v2}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$8;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/ui/experience/BrowseExperience$ExperienceMap;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->KIDS_TABLET_STANDARD:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    .line 68
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    sget-object v1, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->STANDARD:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->STANDARD_LIGHT_THEME:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->DISPLAY_PAGE_REFRESH:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->KIDS_TABLET_STANDARD:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    aput-object v1, v0, v6

    sput-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->$VALUES:[Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    .line 422
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->STANDARD:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    sput-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->currExperience:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/netflix/mediaclient/ui/experience/BrowseExperience$ExperienceMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/ui/experience/BrowseExperience$ExperienceMap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 428
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 429
    iput-object p3, p0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->data:Lcom/netflix/mediaclient/ui/experience/BrowseExperience$ExperienceMap;

    .line 430
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/netflix/mediaclient/ui/experience/BrowseExperience$ExperienceMap;Lcom/netflix/mediaclient/ui/experience/BrowseExperience$1;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/ui/experience/BrowseExperience$ExperienceMap;)V

    return-void
.end method

.method public static get()Lcom/netflix/mediaclient/ui/experience/BrowseExperience;
    .locals 1

    .prologue
    .line 480
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->currExperience:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    return-object v0
.end method

.method public static getImageLoaderConfig()Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;
    .locals 2

    .prologue
    .line 523
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->currExperience:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->data:Lcom/netflix/mediaclient/ui/experience/BrowseExperience$ExperienceMap;

    const-string/jumbo v1, "IMAGE_LOADER_CONFIG_ENUM"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$ExperienceMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    .line 524
    if-nez v0, :cond_0

    .line 525
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "staticImgConfig should never be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 527
    :cond_0
    return-object v0
.end method

.method public static getImageLoaderConfigNoPlaceholder()Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;
    .locals 2

    .prologue
    .line 532
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->currExperience:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->data:Lcom/netflix/mediaclient/ui/experience/BrowseExperience$ExperienceMap;

    const-string/jumbo v1, "IMAGE_LOADER_CONFIG_NO_PLACEHOLDER_ENUM"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$ExperienceMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    return-object v0
.end method

.method public static getLomoFragOffsetStartDimenId()I
    .locals 2

    .prologue
    .line 519
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->currExperience:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->data:Lcom/netflix/mediaclient/ui/experience/BrowseExperience$ExperienceMap;

    const-string/jumbo v1, "LOMO_FRAG_OFFSET_LEFT_DIMEN_INT"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$ExperienceMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getLomoVideoViewImageUrl(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/Video;Ljava/lang/Class;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 544
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->currExperience:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->get()Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->getViewImageUrl(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/Video;Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSearchExperience()Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;
    .locals 2

    .prologue
    .line 515
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->currExperience:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->data:Lcom/netflix/mediaclient/ui/experience/BrowseExperience$ExperienceMap;

    const-string/jumbo v1, "SEARCH_EXPERIENCE_ENUM"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$ExperienceMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    return-object v0
.end method

.method public static isDisplayPageRefresh()Z
    .locals 2

    .prologue
    .line 487
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->currExperience:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    sget-object v1, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->DISPLAY_PAGE_REFRESH:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLightTheme()Z
    .locals 2

    .prologue
    .line 496
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->currExperience:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    sget-object v1, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->STANDARD_LIGHT_THEME:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static refresh(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;)V
    .locals 3

    .prologue
    .line 438
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;->get(Landroid/content/Context;)Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

    move-result-object v1

    .line 439
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->isKidsProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 441
    :goto_0
    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isTabletByContext(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->isKidsParity(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 442
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->KIDS_TABLET_STANDARD:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    sput-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->currExperience:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    .line 474
    :goto_1
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->currExperience:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->setUsername(Ljava/lang/String;)V

    .line 475
    return-void

    .line 439
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 444
    :cond_1
    sget-object v2, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$9;->$SwitchMap$com$netflix$mediaclient$ui$experience$PersistentExperience:[I

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;->ordinal()I

    move-result v1

    aget v1, v2, v1

    .line 448
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper;->isInTest(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 449
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->DISPLAY_PAGE_REFRESH:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    sput-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->currExperience:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    goto :goto_1

    .line 451
    :cond_2
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->isKidsParity(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 452
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->STANDARD_LIGHT_THEME:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    sput-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->currExperience:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    goto :goto_1

    .line 453
    :cond_3
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->isThemed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->getTheme()Lcom/netflix/mediaclient/ui/user_theme/Theme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/user_theme/Theme;->isLight()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 454
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->STANDARD_LIGHT_THEME:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    sput-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->currExperience:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    goto :goto_1

    .line 456
    :cond_4
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->STANDARD:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    sput-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->currExperience:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    goto :goto_1
.end method

.method public static shouldLoadExtraCharacterLeaves()Z
    .locals 2

    .prologue
    .line 511
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->currExperience:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->data:Lcom/netflix/mediaclient/ui/experience/BrowseExperience$ExperienceMap;

    const-string/jumbo v1, "SHOULD_INCLUDE_CHARACTER_LEAVES_BOOL"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$ExperienceMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static shouldLoadKubrickLeavesInDetails()Z
    .locals 2

    .prologue
    .line 503
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->currExperience:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->data:Lcom/netflix/mediaclient/ui/experience/BrowseExperience$ExperienceMap;

    const-string/jumbo v1, "SHOULD_LOAD_KUBRICK_LEAVES_IN_DETAILS_BOOL"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$ExperienceMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static shouldLoadKubrickLeavesInLolomo()Z
    .locals 2

    .prologue
    .line 507
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->currExperience:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->data:Lcom/netflix/mediaclient/ui/experience/BrowseExperience$ExperienceMap;

    const-string/jumbo v1, "SHOULD_LOAD_KUBRICK_LEAVES_IN_LOLOMO_BOOL"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$ExperienceMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static showKidsExperience()Z
    .locals 2

    .prologue
    .line 491
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->currExperience:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    sget-object v1, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->KIDS_TABLET_STANDARD:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static useKidsGenresLoMo()Z
    .locals 2

    .prologue
    .line 540
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->currExperience:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->data:Lcom/netflix/mediaclient/ui/experience/BrowseExperience$ExperienceMap;

    const-string/jumbo v1, "USE_KIDS_GENRES_LOMO"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$ExperienceMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static useLolomoBoxArt()Z
    .locals 2

    .prologue
    .line 536
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->currExperience:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->data:Lcom/netflix/mediaclient/ui/experience/BrowseExperience$ExperienceMap;

    const-string/jumbo v1, "USE_LOLOMO_BOXART"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$ExperienceMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/experience/BrowseExperience;
    .locals 1

    .prologue
    .line 68
    const-class v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/ui/experience/BrowseExperience;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->$VALUES:[Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    return-object v0
.end method
