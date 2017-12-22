.class public final enum Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;
.super Ljava/lang/Enum;
.source "DetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

.field public static final enum AddToMyList:Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

.field public static final enum Download:Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

.field public static final enum RemoveFromMyList:Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 63
    new-instance v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    const-string/jumbo v1, "AddToMyList"

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;->AddToMyList:Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    .line 64
    new-instance v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    const-string/jumbo v1, "RemoveFromMyList"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;->RemoveFromMyList:Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    .line 65
    new-instance v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    const-string/jumbo v1, "Download"

    invoke-direct {v0, v1, v4}, Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;->Download:Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    .line 62
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    sget-object v1, Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;->AddToMyList:Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;->RemoveFromMyList:Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;->Download:Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;->$VALUES:[Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

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
    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;->$VALUES:[Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    return-object v0
.end method
