.class public Lcom/netflix/mediaclient/ui/details/DummySeasonDetails;
.super Ljava/lang/Object;
.source "DummySeasonDetails.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;


# instance fields
.field private final id:Ljava/lang/String;

.field private final seasonNumber:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/DummySeasonDetails;->id:Ljava/lang/String;

    .line 27
    iput p2, p0, Lcom/netflix/mediaclient/ui/details/DummySeasonDetails;->seasonNumber:I

    .line 28
    return-void
.end method

.method public static createDummyArray()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x64

    if-ge v0, v2, :cond_0

    .line 17
    new-instance v2, Lcom/netflix/mediaclient/ui/details/DummySeasonDetails;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/netflix/mediaclient/ui/details/DummySeasonDetails;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 19
    :cond_0
    return-object v1
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DummySeasonDetails;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getNumOfEpisodes()I
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public getSeasonNumber()I
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public getShowId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->UNKNOWN:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    return-object v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method
