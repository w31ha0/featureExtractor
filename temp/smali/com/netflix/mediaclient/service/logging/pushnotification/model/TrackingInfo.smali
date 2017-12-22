.class public Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo;
.super Ljava/lang/Object;
.source "TrackingInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mEventGuid:Ljava/lang/String;

.field private mMessageGuid:Ljava/lang/String;

.field private mMessageId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 117
    new-instance v0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo$1;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo$1;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo;->mMessageId:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo;->mMessageGuid:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo;->mEventGuid:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/service/pushnotification/MessageData;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    if-nez p1, :cond_0

    .line 36
    :goto_0
    return-void

    .line 33
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/pushnotification/MessageData;->getGuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo;->mMessageId:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/pushnotification/MessageData;->getMessageGuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo;->mMessageGuid:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/pushnotification/MessageData;->getGuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo;->mEventGuid:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/service/pushnotification/Payload;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    if-nez p1, :cond_0

    .line 50
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v0, p1, Lcom/netflix/mediaclient/service/pushnotification/Payload;->guid:Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo;->mMessageId:Ljava/lang/String;

    .line 48
    iget-object v0, p1, Lcom/netflix/mediaclient/service/pushnotification/Payload;->messageGuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo;->mMessageGuid:Ljava/lang/String;

    .line 49
    iget-object v0, p1, Lcom/netflix/mediaclient/service/pushnotification/Payload;->guid:Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo;->mEventGuid:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo;->mMessageId:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo;->mMessageGuid:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo;->mEventGuid:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public getEventGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo;->mEventGuid:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo;->mMessageGuid:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo;->mMessageId:Ljava/lang/String;

    return-object v0
.end method

.method public toJsonObject()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 73
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 75
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo;->mMessageId:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    const-string/jumbo v1, "messageId"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo;->mMessageId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo;->mMessageGuid:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    const-string/jumbo v1, "messageGuid:"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo;->mMessageGuid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo;->mEventGuid:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 83
    const-string/jumbo v1, "eventGuid"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo;->mEventGuid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    :cond_2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "TrackingInfo{messageId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo;->mMessageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", messageGuid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo;->mMessageGuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", eventGuid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo;->mEventGuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo;->mMessageId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo;->mMessageGuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pushnotification/model/TrackingInfo;->mEventGuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    return-void
.end method
