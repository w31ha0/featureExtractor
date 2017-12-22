.class final Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationReceivedEvent$1;
.super Ljava/lang/Object;
.source "PushNotificationReceivedEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationReceivedEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationReceivedEvent;
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationReceivedEvent;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationReceivedEvent;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationReceivedEvent$1;->createFromParcel(Landroid/os/Parcel;)Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationReceivedEvent;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationReceivedEvent;
    .locals 1

    .prologue
    .line 86
    new-array v0, p1, [Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationReceivedEvent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationReceivedEvent$1;->newArray(I)[Lcom/netflix/mediaclient/service/logging/pushnotification/model/PushNotificationReceivedEvent;

    move-result-object v0

    return-object v0
.end method
