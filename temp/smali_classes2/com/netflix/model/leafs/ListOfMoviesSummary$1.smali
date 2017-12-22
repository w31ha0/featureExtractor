.class final Lcom/netflix/model/leafs/ListOfMoviesSummary$1;
.super Ljava/lang/Object;
.source "ListOfMoviesSummary.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/netflix/model/leafs/ListOfMoviesSummary;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/netflix/model/leafs/ListOfMoviesSummary;
    .locals 1

    .prologue
    .line 145
    new-instance v0, Lcom/netflix/model/leafs/ListOfMoviesSummary;

    invoke-direct {v0, p1}, Lcom/netflix/model/leafs/ListOfMoviesSummary;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Lcom/netflix/model/leafs/ListOfMoviesSummary$1;->createFromParcel(Landroid/os/Parcel;)Lcom/netflix/model/leafs/ListOfMoviesSummary;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/netflix/model/leafs/ListOfMoviesSummary;
    .locals 1

    .prologue
    .line 150
    new-array v0, p1, [Lcom/netflix/model/leafs/ListOfMoviesSummary;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Lcom/netflix/model/leafs/ListOfMoviesSummary$1;->newArray(I)[Lcom/netflix/model/leafs/ListOfMoviesSummary;

    move-result-object v0

    return-object v0
.end method
