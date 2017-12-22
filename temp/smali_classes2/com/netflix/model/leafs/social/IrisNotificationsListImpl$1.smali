.class final Lcom/netflix/model/leafs/social/IrisNotificationsListImpl$1;
.super Ljava/lang/Object;
.source "IrisNotificationsListImpl.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/netflix/model/leafs/social/IrisNotificationsListImpl;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/netflix/model/leafs/social/IrisNotificationsListImpl;
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/netflix/model/leafs/social/IrisNotificationsListImpl;

    invoke-direct {v0, p1}, Lcom/netflix/model/leafs/social/IrisNotificationsListImpl;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/netflix/model/leafs/social/IrisNotificationsListImpl$1;->createFromParcel(Landroid/os/Parcel;)Lcom/netflix/model/leafs/social/IrisNotificationsListImpl;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/netflix/model/leafs/social/IrisNotificationsListImpl;
    .locals 1

    .prologue
    .line 60
    new-array v0, p1, [Lcom/netflix/model/leafs/social/IrisNotificationsListImpl;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/netflix/model/leafs/social/IrisNotificationsListImpl$1;->newArray(I)[Lcom/netflix/model/leafs/social/IrisNotificationsListImpl;

    move-result-object v0

    return-object v0
.end method
