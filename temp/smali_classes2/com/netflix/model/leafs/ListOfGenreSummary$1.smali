.class final Lcom/netflix/model/leafs/ListOfGenreSummary$1;
.super Ljava/lang/Object;
.source "ListOfGenreSummary.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/netflix/model/leafs/ListOfGenreSummary;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/netflix/model/leafs/ListOfGenreSummary;
    .locals 1

    .prologue
    .line 110
    new-instance v0, Lcom/netflix/model/leafs/ListOfGenreSummary;

    invoke-direct {v0, p1}, Lcom/netflix/model/leafs/ListOfGenreSummary;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcom/netflix/model/leafs/ListOfGenreSummary$1;->createFromParcel(Landroid/os/Parcel;)Lcom/netflix/model/leafs/ListOfGenreSummary;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/netflix/model/leafs/ListOfGenreSummary;
    .locals 1

    .prologue
    .line 115
    new-array v0, p1, [Lcom/netflix/model/leafs/ListOfGenreSummary;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcom/netflix/model/leafs/ListOfGenreSummary$1;->newArray(I)[Lcom/netflix/model/leafs/ListOfGenreSummary;

    move-result-object v0

    return-object v0
.end method
