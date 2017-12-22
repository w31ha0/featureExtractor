.class public final enum Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;
.super Ljava/lang/Enum;
.source "SearchUtils.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

.field public static final enum PHONE:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

.field public static final enum TABLET:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-instance v0, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    const-string/jumbo v1, "PHONE"

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->PHONE:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    new-instance v0, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    const-string/jumbo v1, "TABLET"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->TABLET:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    sget-object v1, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->PHONE:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->TABLET:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    aput-object v1, v0, v3

    sput-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->$VALUES:[Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

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
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->$VALUES:[Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    return-object v0
.end method
