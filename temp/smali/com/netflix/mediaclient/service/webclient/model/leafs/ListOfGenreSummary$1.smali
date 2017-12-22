.class final Lcom/netflix/mediaclient/service/webclient/model/leafs/ListOfGenreSummary$1;
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
        "Lcom/netflix/mediaclient/service/webclient/model/leafs/ListOfGenreSummary;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ListOfGenreSummary;
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ListOfGenreSummary;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ListOfGenreSummary;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ListOfGenreSummary$1;->createFromParcel(Landroid/os/Parcel;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ListOfGenreSummary;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/netflix/mediaclient/service/webclient/model/leafs/ListOfGenreSummary;
    .locals 1

    .prologue
    .line 85
    new-array v0, p1, [Lcom/netflix/mediaclient/service/webclient/model/leafs/ListOfGenreSummary;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ListOfGenreSummary$1;->newArray(I)[Lcom/netflix/mediaclient/service/webclient/model/leafs/ListOfGenreSummary;

    move-result-object v0

    return-object v0
.end method
