.class final Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity$BackStackData$1;
.super Ljava/lang/Object;
.source "MovieDetailsActivity.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity$BackStackData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity$BackStackData;
    .locals 2

    .prologue
    .line 242
    new-instance v0, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity$BackStackData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity$BackStackData;-><init>(Landroid/os/Parcel;Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity$BackStackData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity$BackStackData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity$BackStackData;
    .locals 1

    .prologue
    .line 247
    new-array v0, p1, [Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity$BackStackData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity$BackStackData$1;->newArray(I)[Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity$BackStackData;

    move-result-object v0

    return-object v0
.end method
