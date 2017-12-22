.class public final enum Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;
.super Ljava/lang/Enum;
.source "PostPlayFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;

.field public static final enum EpisodesForMDX:Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;

.field public static final enum EpisodesForPhone:Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;

.field public static final enum EpisodesForTablet:Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;

.field public static final enum RecommendationForPhone:Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;

.field public static final enum RecommendationForTablet:Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;

.field public static final enum SignupForPhone:Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;

.field public static final enum SignupForTablet:Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;

    const-string/jumbo v1, "EpisodesForTablet"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;->EpisodesForTablet:Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;

    .line 12
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;

    const-string/jumbo v1, "EpisodesForPhone"

    invoke-direct {v0, v1, v4}, Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;->EpisodesForPhone:Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;

    .line 13
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;

    const-string/jumbo v1, "EpisodesForMDX"

    invoke-direct {v0, v1, v5}, Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;->EpisodesForMDX:Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;

    .line 14
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;

    const-string/jumbo v1, "RecommendationForTablet"

    invoke-direct {v0, v1, v6}, Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;->RecommendationForTablet:Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;

    .line 15
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;

    const-string/jumbo v1, "RecommendationForPhone"

    invoke-direct {v0, v1, v7}, Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;->RecommendationForPhone:Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;

    .line 16
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;

    const-string/jumbo v1, "SignupForTablet"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;->SignupForTablet:Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;

    .line 17
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;

    const-string/jumbo v1, "SignupForPhone"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;->SignupForPhone:Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;

    .line 10
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;->EpisodesForTablet:Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;->EpisodesForPhone:Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;->EpisodesForMDX:Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;->RecommendationForTablet:Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;->RecommendationForPhone:Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;->SignupForTablet:Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;->SignupForPhone:Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;->$VALUES:[Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;

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
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;->$VALUES:[Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/ui/player/PostPlayFactory$PostPlayType;

    return-object v0
.end method
