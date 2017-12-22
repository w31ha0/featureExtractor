.class final Lcom/netflix/mediaclient/ui/search/SearchItemClick$1;
.super Ljava/lang/Object;
.source "SearchItemClick.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/netflix/mediaclient/ui/search/SearchItemClick;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/netflix/mediaclient/ui/search/SearchItemClick;
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/netflix/mediaclient/ui/search/SearchItemClick;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/ui/search/SearchItemClick;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/search/SearchItemClick$1;->createFromParcel(Landroid/os/Parcel;)Lcom/netflix/mediaclient/ui/search/SearchItemClick;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/netflix/mediaclient/ui/search/SearchItemClick;
    .locals 1

    .prologue
    .line 52
    new-array v0, p1, [Lcom/netflix/mediaclient/ui/search/SearchItemClick;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/search/SearchItemClick$1;->newArray(I)[Lcom/netflix/mediaclient/ui/search/SearchItemClick;

    move-result-object v0

    return-object v0
.end method
