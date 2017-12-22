.class public final enum Lcom/netflix/mediaclient/ui/experience/PersistentExperience;
.super Ljava/lang/Enum;
.source "PersistentExperience.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/ui/experience/PersistentExperience;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

.field public static final enum KUBRICK_HERO_IMGS:Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

.field public static final enum KUBRICK_HIGH_DENSITY:Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

.field public static final enum LOLOMO_TITLE_ART_LARGE_HORIZONTAL:Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

.field public static final enum LOLOMO_TITLE_ART_LARGE_PORTRAIT_BOXART:Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

.field public static final enum LOLOMO_TITLE_ART_SMALL_BOXART:Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

.field public static final enum LOLOMO_TITLE_ART_SMALL_HORIZONTAL:Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

.field public static final enum NON_KUBRICK:Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

.field private static final PERSISTENT_EXPERIENCE_PREFS_KEY:Ljava/lang/String; = "persistent_experience_key"

.field private static final TAG:Ljava/lang/String; = "PersistentExperience"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 22
    new-instance v0, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

    const-string/jumbo v1, "NON_KUBRICK"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;->NON_KUBRICK:Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

    .line 23
    new-instance v0, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

    const-string/jumbo v1, "KUBRICK_HERO_IMGS"

    invoke-direct {v0, v1, v4}, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;->KUBRICK_HERO_IMGS:Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

    .line 24
    new-instance v0, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

    const-string/jumbo v1, "KUBRICK_HIGH_DENSITY"

    invoke-direct {v0, v1, v5}, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;->KUBRICK_HIGH_DENSITY:Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

    .line 25
    new-instance v0, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

    const-string/jumbo v1, "LOLOMO_TITLE_ART_SMALL_BOXART"

    invoke-direct {v0, v1, v6}, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;->LOLOMO_TITLE_ART_SMALL_BOXART:Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

    .line 26
    new-instance v0, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

    const-string/jumbo v1, "LOLOMO_TITLE_ART_LARGE_PORTRAIT_BOXART"

    invoke-direct {v0, v1, v7}, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;->LOLOMO_TITLE_ART_LARGE_PORTRAIT_BOXART:Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

    .line 27
    new-instance v0, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

    const-string/jumbo v1, "LOLOMO_TITLE_ART_LARGE_HORIZONTAL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;->LOLOMO_TITLE_ART_LARGE_HORIZONTAL:Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

    .line 28
    new-instance v0, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

    const-string/jumbo v1, "LOLOMO_TITLE_ART_SMALL_HORIZONTAL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;->LOLOMO_TITLE_ART_SMALL_HORIZONTAL:Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

    .line 13
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

    sget-object v1, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;->NON_KUBRICK:Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;->KUBRICK_HERO_IMGS:Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;->KUBRICK_HIGH_DENSITY:Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;->LOLOMO_TITLE_ART_SMALL_BOXART:Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;->LOLOMO_TITLE_ART_LARGE_PORTRAIT_BOXART:Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;->LOLOMO_TITLE_ART_LARGE_HORIZONTAL:Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;->LOLOMO_TITLE_ART_SMALL_HORIZONTAL:Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;->$VALUES:[Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static get(Landroid/content/Context;)Lcom/netflix/mediaclient/ui/experience/PersistentExperience;
    .locals 2

    .prologue
    .line 44
    const-string/jumbo v0, "persistent_experience_key"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    const-string/jumbo v0, "SPY-7682: found null string for PERSISTENT_EXPERIENCE_PREFS_KEY - falling back to non-kubrick"

    .line 47
    const-string/jumbo v1, "PersistentExperience"

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;->NON_KUBRICK:Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

    .line 66
    :goto_0
    return-object v0

    .line 53
    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/experience/PersistentExperience;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 59
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;->NON_KUBRICK:Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

    goto :goto_0
.end method

.method public static update(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)V
    .locals 2

    .prologue
    .line 38
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;->NON_KUBRICK:Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

    .line 40
    const-string/jumbo v1, "persistent_experience_key"

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 41
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/experience/PersistentExperience;
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/ui/experience/PersistentExperience;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/PersistentExperience;->$VALUES:[Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/ui/experience/PersistentExperience;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/ui/experience/PersistentExperience;

    return-object v0
.end method
