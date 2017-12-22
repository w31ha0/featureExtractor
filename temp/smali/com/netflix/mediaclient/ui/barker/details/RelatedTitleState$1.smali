.class final Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState$1;
.super Ljava/lang/Object;
.source "RelatedTitleState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;-><init>(Landroid/os/Parcel;Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;
    .locals 1

    .prologue
    .line 69
    new-array v0, p1, [Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState$1;->newArray(I)[Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;

    move-result-object v0

    return-object v0
.end method
