.class final Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo$1;
.super Ljava/lang/Object;
.source "TrackingInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo;
    .locals 1

    .prologue
    .line 120
    new-instance v0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo;
    .locals 1

    .prologue
    .line 125
    new-array v0, p1, [Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo$1;->newArray(I)[Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo;

    move-result-object v0

    return-object v0
.end method
