.class final Lcom/netflix/mediaclient/ui/lolomo/LoMoBasics$1;
.super Ljava/lang/Object;
.source "LoMoBasics.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/netflix/mediaclient/ui/lolomo/LoMoBasics;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/netflix/mediaclient/ui/lolomo/LoMoBasics;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lcom/netflix/mediaclient/ui/lolomo/LoMoBasics;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/netflix/mediaclient/ui/lolomo/LoMoBasics;-><init>(Landroid/os/Parcel;Lcom/netflix/mediaclient/ui/lolomo/LoMoBasics$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/LoMoBasics$1;->createFromParcel(Landroid/os/Parcel;)Lcom/netflix/mediaclient/ui/lolomo/LoMoBasics;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/netflix/mediaclient/ui/lolomo/LoMoBasics;
    .locals 1

    .prologue
    .line 50
    new-array v0, p1, [Lcom/netflix/mediaclient/ui/lolomo/LoMoBasics;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/LoMoBasics$1;->newArray(I)[Lcom/netflix/mediaclient/ui/lolomo/LoMoBasics;

    move-result-object v0

    return-object v0
.end method
