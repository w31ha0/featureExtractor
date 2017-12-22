.class public Lcom/netflix/mediaclient/ui/lolomo/GalleryGenreLoMoFrag;
.super Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;
.source "GalleryGenreLoMoFrag.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GalleryGenreLoMoFrag"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;)Lcom/netflix/mediaclient/ui/lolomo/GalleryGenreLoMoFrag;
    .locals 4

    .prologue
    .line 21
    new-instance v1, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenreLoMoFrag;

    invoke-direct {v1}, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenreLoMoFrag;-><init>()V

    .line 23
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 24
    const-string/jumbo v0, "list_id"

    invoke-virtual {v2, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const-string/jumbo v3, "is_genre_list"

    const-string/jumbo v0, "lolomo"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 26
    if-eqz p1, :cond_0

    .line 27
    const-string/jumbo v0, "genre_parcel"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 29
    :cond_0
    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenreLoMoFrag;->setArguments(Landroid/os/Bundle;)V

    .line 31
    return-object v1

    .line 25
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected fetchListData(Lcom/netflix/mediaclient/servicemgr/ServiceManager;IILcom/netflix/mediaclient/servicemgr/ManagerCallback;)V
    .locals 6

    .prologue
    .line 37
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenreLoMoFrag$FlatGenre;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/netflix/mediaclient/ui/lolomo/GalleryGenreLoMoFrag$FlatGenre;-><init>(Lcom/netflix/mediaclient/ui/lolomo/GalleryGenreLoMoFrag;Lcom/netflix/mediaclient/ui/lolomo/GalleryGenreLoMoFrag$1;)V

    const/4 v4, 0x0

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchGenreVideos(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;IIZLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    .line 39
    return-void
.end method
