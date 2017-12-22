.class final enum Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;
.super Ljava/lang/Enum;
.source "SearchResultsFrag.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

.field public static final enum PEOPLE:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

.field public static final enum SUGGESTIONS:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

.field public static final enum VIDEOS:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 67
    new-instance v0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    const-string/jumbo v1, "SUGGESTIONS"

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;->SUGGESTIONS:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    new-instance v0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    const-string/jumbo v1, "PEOPLE"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;->PEOPLE:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    new-instance v0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    const-string/jumbo v1, "VIDEOS"

    invoke-direct {v0, v1, v4}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;->VIDEOS:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    .line 66
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    sget-object v1, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;->SUGGESTIONS:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;->PEOPLE:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;->VIDEOS:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;->$VALUES:[Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

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
    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;
    .locals 1

    .prologue
    .line 66
    const-class v0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;->$VALUES:[Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    return-object v0
.end method
