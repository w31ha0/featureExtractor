.class Lcom/netflix/mediaclient/ui/lolomo/GalleryGenreLoMoFrag$FlatGenre;
.super Ljava/lang/Object;
.source "GalleryGenreLoMoFrag.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/interface_/genre/Genre;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ParcelCreator"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/lolomo/GalleryGenreLoMoFrag;


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/ui/lolomo/GalleryGenreLoMoFrag;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenreLoMoFrag$FlatGenre;->this$0:Lcom/netflix/mediaclient/ui/lolomo/GalleryGenreLoMoFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/ui/lolomo/GalleryGenreLoMoFrag;Lcom/netflix/mediaclient/ui/lolomo/GalleryGenreLoMoFrag$1;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenreLoMoFrag$FlatGenre;-><init>(Lcom/netflix/mediaclient/ui/lolomo/GalleryGenreLoMoFrag;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public getHeroTrackId()I
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenreLoMoFrag$FlatGenre;->this$0:Lcom/netflix/mediaclient/ui/lolomo/GalleryGenreLoMoFrag;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenreLoMoFrag;->listId:Ljava/lang/String;

    return-object v0
.end method

.method public getImpressionToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method public getListPos()I
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public getMoreImages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNumVideos()I
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTrackId()I
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->FLAT_GENRE:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    return-object v0
.end method

.method public isBillboard()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public isHero()Z
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public setListPos(I)V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 85
    return-void
.end method
