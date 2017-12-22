.class public final enum Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$SearchQueryDetailsType;
.super Ljava/lang/Enum;
.source "SearchQueryDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$SearchQueryDetailsType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$SearchQueryDetailsType;

.field public static final enum PERSON:Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$SearchQueryDetailsType;

.field public static final enum SEARCH_SUGGESTION:Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$SearchQueryDetailsType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    new-instance v0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$SearchQueryDetailsType;

    const-string/jumbo v1, "PERSON"

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$SearchQueryDetailsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$SearchQueryDetailsType;->PERSON:Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$SearchQueryDetailsType;

    .line 53
    new-instance v0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$SearchQueryDetailsType;

    const-string/jumbo v1, "SEARCH_SUGGESTION"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$SearchQueryDetailsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$SearchQueryDetailsType;->SEARCH_SUGGESTION:Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$SearchQueryDetailsType;

    .line 51
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$SearchQueryDetailsType;

    sget-object v1, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$SearchQueryDetailsType;->PERSON:Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$SearchQueryDetailsType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$SearchQueryDetailsType;->SEARCH_SUGGESTION:Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$SearchQueryDetailsType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$SearchQueryDetailsType;->$VALUES:[Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$SearchQueryDetailsType;

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
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$SearchQueryDetailsType;
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$SearchQueryDetailsType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$SearchQueryDetailsType;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$SearchQueryDetailsType;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$SearchQueryDetailsType;->$VALUES:[Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$SearchQueryDetailsType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$SearchQueryDetailsType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$SearchQueryDetailsType;

    return-object v0
.end method
