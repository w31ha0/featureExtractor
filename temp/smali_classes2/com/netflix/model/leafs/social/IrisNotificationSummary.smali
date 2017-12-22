.class public Lcom/netflix/model/leafs/social/IrisNotificationSummary;
.super Ljava/lang/Object;
.source "IrisNotificationSummary.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/netflix/mediaclient/servicemgr/interface_/JsonMerger;
.implements Lcom/netflix/mediaclient/servicemgr/interface_/JsonPopulator;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/netflix/model/leafs/social/IrisNotificationSummary;",
            ">;"
        }
    .end annotation
.end field

.field private static final NUM_OF_FIELDS:I = 0x19

.field private static final TAG:Ljava/lang/String; = "SocialNotificationSummary"


# instance fields
.field private bWasRead:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isRead"
    .end annotation
.end field

.field private bWasThanked:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isThanked"
    .end annotation
.end field

.field private bodyText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "body"
    .end annotation
.end field

.field private friendProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fromUser"
    .end annotation
.end field

.field private headerText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "header"
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private imageAltText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "imageAltText"
    .end annotation
.end field

.field private imageTarget:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "imageTarget"
    .end annotation
.end field

.field private imageUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "imageUrl"
    .end annotation
.end field

.field private inQueue:Z

.field private messageString:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "msgString"
    .end annotation
.end field

.field private showTimestamp:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "showTimestamp"
    .end annotation
.end field

.field private showType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "showType"
    .end annotation
.end field

.field private storyId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "storyId"
    .end annotation
.end field

.field private textTarget:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "textTarget"
    .end annotation
.end field

.field private timestamp:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "timestamp"
    .end annotation
.end field

.field private tvCardUrl:Ljava/lang/String;

.field private type:Lcom/netflix/model/leafs/social/IrisNotificationSummary$NotificationTypes;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "msgType"
    .end annotation
.end field

.field private urlTarget:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "urlTarget"
    .end annotation
.end field

.field private videoId:Ljava/lang/String;

.field private videoTitle:Ljava/lang/String;

.field private videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 381
    new-instance v0, Lcom/netflix/model/leafs/social/IrisNotificationSummary$1;

    invoke-direct {v0}, Lcom/netflix/model/leafs/social/IrisNotificationSummary$1;-><init>()V

    sput-object v0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 9

    .prologue
    const/16 v8, 0x14

    const/16 v7, 0x8

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    const/16 v0, 0x19

    new-array v6, v0, [Ljava/lang/String;

    .line 346
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 347
    const/4 v0, 0x0

    aget-object v0, v6, v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->bWasRead:Z

    .line 348
    const/4 v0, 0x1

    aget-object v0, v6, v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->bWasThanked:Z

    .line 350
    const/4 v0, 0x2

    aget-object v1, v6, v0

    .line 351
    const/4 v0, 0x3

    aget-object v2, v6, v0

    .line 352
    const/4 v0, 0x4

    aget-object v3, v6, v0

    .line 353
    const/4 v0, 0x5

    aget-object v4, v6, v0

    .line 354
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->friendProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;

    .line 356
    const/4 v0, 0x6

    aget-object v0, v6, v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->id:Ljava/lang/String;

    .line 357
    const/4 v0, 0x7

    aget-object v0, v6, v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->storyId:Ljava/lang/String;

    .line 358
    aget-object v0, v6, v7

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    aget-object v0, v6, v7

    invoke-static {v0}, Lcom/netflix/model/leafs/social/IrisNotificationSummary$NotificationTypes;->valueOf(Ljava/lang/String;)Lcom/netflix/model/leafs/social/IrisNotificationSummary$NotificationTypes;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->type:Lcom/netflix/model/leafs/social/IrisNotificationSummary$NotificationTypes;

    .line 361
    :cond_0
    const/16 v0, 0x9

    aget-object v0, v6, v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->messageString:Ljava/lang/String;

    .line 362
    const/16 v0, 0xa

    aget-object v0, v6, v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->timestamp:J

    .line 363
    const/16 v0, 0xb

    aget-object v0, v6, v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->imageAltText:Ljava/lang/String;

    .line 364
    const/16 v0, 0xc

    aget-object v0, v6, v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->showTimestamp:Z

    .line 365
    const/16 v0, 0xd

    aget-object v0, v6, v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->headerText:Ljava/lang/String;

    .line 366
    const/16 v0, 0xe

    aget-object v0, v6, v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->imageUrl:Ljava/lang/String;

    .line 367
    const/16 v0, 0xf

    aget-object v0, v6, v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->videoId:Ljava/lang/String;

    .line 368
    const/16 v0, 0x10

    aget-object v0, v6, v0

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->create(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 369
    const/16 v0, 0x11

    aget-object v0, v6, v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->videoTitle:Ljava/lang/String;

    .line 370
    const/16 v0, 0x12

    aget-object v0, v6, v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->tvCardUrl:Ljava/lang/String;

    .line 371
    const/16 v0, 0x13

    aget-object v0, v6, v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->inQueue:Z

    .line 372
    aget-object v0, v6, v8

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 373
    aget-object v0, v6, v8

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->showType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 375
    :cond_1
    const/16 v0, 0x15

    aget-object v0, v6, v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->bodyText:Ljava/lang/String;

    .line 376
    const/16 v0, 0x16

    aget-object v0, v6, v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->imageTarget:Ljava/lang/String;

    .line 377
    const/16 v0, 0x17

    aget-object v0, v6, v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->textTarget:Ljava/lang/String;

    .line 378
    const/16 v0, 0x18

    aget-object v0, v6, v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->urlTarget:Ljava/lang/String;

    .line 379
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    iput-object p1, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->id:Ljava/lang/String;

    .line 244
    iput-object p2, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->storyId:Ljava/lang/String;

    .line 245
    return-void
.end method

.method public static getNotificationType(Ljava/lang/String;)Lcom/netflix/model/leafs/social/IrisNotificationSummary$NotificationTypes;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/netflix/model/leafs/social/IrisNotificationSummary$NotificationTypes;->NEW_SEASON_ALERT:Lcom/netflix/model/leafs/social/IrisNotificationSummary$NotificationTypes;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 433
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 443
    if-ne p0, p1, :cond_1

    .line 479
    :cond_0
    :goto_0
    return v0

    .line 446
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 447
    goto :goto_0

    .line 449
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 450
    goto :goto_0

    .line 453
    :cond_3
    check-cast p1, Lcom/netflix/model/leafs/social/IrisNotificationSummary;

    .line 455
    iget-object v2, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->id:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 456
    iget-object v2, p1, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->id:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v0, v1

    .line 457
    goto :goto_0

    .line 459
    :cond_4
    iget-object v2, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 460
    goto :goto_0

    .line 463
    :cond_5
    iget-boolean v2, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->bWasRead:Z

    iget-boolean v3, p1, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->bWasRead:Z

    if-eq v2, v3, :cond_6

    move v0, v1

    .line 464
    goto :goto_0

    .line 467
    :cond_6
    iget-boolean v2, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->bWasThanked:Z

    iget-boolean v3, p1, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->bWasThanked:Z

    if-eq v2, v3, :cond_7

    move v0, v1

    .line 468
    goto :goto_0

    .line 471
    :cond_7
    iget-object v2, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->videoId:Ljava/lang/String;

    iget-object v3, p1, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->videoId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    move v0, v1

    .line 472
    goto :goto_0

    .line 475
    :cond_8
    iget-boolean v2, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->inQueue:Z

    iget-boolean v3, p1, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->inQueue:Z

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 476
    goto :goto_0
.end method

.method public fillVideoDetails(Lcom/netflix/model/branches/FalkorVideo;)V
    .locals 2

    .prologue
    .line 248
    const-string/jumbo v0, "summary"

    invoke-virtual {p1, v0}, Lcom/netflix/model/branches/FalkorVideo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/Video$Summary;

    .line 249
    invoke-virtual {v0}, Lcom/netflix/model/leafs/Video$Summary;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->videoId:Ljava/lang/String;

    .line 250
    invoke-virtual {v0}, Lcom/netflix/model/leafs/Video$Summary;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 251
    invoke-virtual {v0}, Lcom/netflix/model/leafs/Video$Summary;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->videoTitle:Ljava/lang/String;

    .line 252
    const-string/jumbo v0, "inQueue"

    invoke-virtual {p1, v0}, Lcom/netflix/model/branches/FalkorVideo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/Video$InQueue;

    iget-boolean v0, v0, Lcom/netflix/model/leafs/Video$InQueue;->inQueue:Z

    iput-boolean v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->inQueue:Z

    .line 253
    const-string/jumbo v0, "tvCardArt"

    invoke-virtual {p1, v0}, Lcom/netflix/model/branches/FalkorVideo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/Video$TvCardArt;

    .line 254
    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {v0}, Lcom/netflix/model/leafs/Video$TvCardArt;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->tvCardUrl:Ljava/lang/String;

    .line 257
    :cond_0
    return-void
.end method

.method public getBodyText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->bodyText:Ljava/lang/String;

    return-object v0
.end method

.method public getFriendProfile()Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->friendProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;

    return-object v0
.end method

.method public getHeaderText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->headerText:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImageAltText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->imageAltText:Ljava/lang/String;

    return-object v0
.end method

.method public getImageTarget()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->imageTarget:Ljava/lang/String;

    return-object v0
.end method

.method public getInQueueValue()Z
    .locals 1

    .prologue
    .line 328
    iget-boolean v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->inQueue:Z

    return v0
.end method

.method public getMessageString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->messageString:Ljava/lang/String;

    return-object v0
.end method

.method public getShowTimestamp()Z
    .locals 1

    .prologue
    .line 289
    iget-boolean v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->showTimestamp:Z

    return v0
.end method

.method public getShowType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->showType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    return-object v0
.end method

.method public getStoryId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->storyId:Ljava/lang/String;

    return-object v0
.end method

.method public getTVCardUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->tvCardUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->tvCardUrl:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->imageUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTextTarget()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->textTarget:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 281
    iget-wide v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->timestamp:J

    return-wide v0
.end method

.method public getType()Lcom/netflix/model/leafs/social/IrisNotificationSummary$NotificationTypes;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->type:Lcom/netflix/model/leafs/social/IrisNotificationSummary$NotificationTypes;

    return-object v0
.end method

.method public getUrlTarget()Ljava/lang/String;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->urlTarget:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->videoTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    return-object v0
.end method

.method public getWasRead()Z
    .locals 1

    .prologue
    .line 317
    iget-boolean v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->bWasRead:Z

    return v0
.end method

.method public getWasThanked()Z
    .locals 1

    .prologue
    .line 324
    iget-boolean v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->bWasThanked:Z

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 438
    invoke-virtual {p0}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public populate(Lcom/google/gson/JsonElement;)V
    .locals 5

    .prologue
    .line 105
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 110
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    .line 112
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v2

    if-nez v2, :cond_0

    .line 118
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_1
    move v0, v2

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 120
    :pswitch_0
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->id:Ljava/lang/String;

    goto :goto_0

    .line 118
    :sswitch_0
    const-string/jumbo v4, "id"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v4, "storyId"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v4, "msgType"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v4, "msgString"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v4, "fromUser"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_5
    const-string/jumbo v4, "timestamp"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_6
    const-string/jumbo v4, "imageAltText"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_7
    const-string/jumbo v4, "imageTarget"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_8
    const-string/jumbo v4, "showTimestamp"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_9
    const-string/jumbo v4, "header"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_a
    const-string/jumbo v4, "body"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_b
    const-string/jumbo v4, "textTarget"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_c
    const-string/jumbo v4, "imageUrl"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_d
    const-string/jumbo v4, "isRead"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_e
    const-string/jumbo v4, "isThanked"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_f
    const-string/jumbo v4, "showType"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_10
    const-string/jumbo v4, "urlTarget"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x10

    goto/16 :goto_1

    .line 123
    :pswitch_1
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->storyId:Ljava/lang/String;

    goto/16 :goto_0

    .line 126
    :pswitch_2
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getNotificationType(Ljava/lang/String;)Lcom/netflix/model/leafs/social/IrisNotificationSummary$NotificationTypes;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->type:Lcom/netflix/model/leafs/social/IrisNotificationSummary$NotificationTypes;

    goto/16 :goto_0

    .line 129
    :pswitch_3
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->messageString:Ljava/lang/String;

    goto/16 :goto_0

    .line 132
    :pswitch_4
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->friendProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;

    .line 133
    iget-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->friendProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;->populate(Lcom/google/gson/JsonElement;)V

    goto/16 :goto_0

    .line 136
    :pswitch_5
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->timestamp:J

    goto/16 :goto_0

    .line 139
    :pswitch_6
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->imageAltText:Ljava/lang/String;

    goto/16 :goto_0

    .line 142
    :pswitch_7
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->imageTarget:Ljava/lang/String;

    goto/16 :goto_0

    .line 145
    :pswitch_8
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->showTimestamp:Z

    goto/16 :goto_0

    .line 148
    :pswitch_9
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->headerText:Ljava/lang/String;

    goto/16 :goto_0

    .line 151
    :pswitch_a
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->bodyText:Ljava/lang/String;

    goto/16 :goto_0

    .line 154
    :pswitch_b
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->textTarget:Ljava/lang/String;

    goto/16 :goto_0

    .line 157
    :pswitch_c
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->imageUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 160
    :pswitch_d
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->bWasRead:Z

    goto/16 :goto_0

    .line 163
    :pswitch_e
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->bWasThanked:Z

    goto/16 :goto_0

    .line 166
    :pswitch_f
    const-string/jumbo v0, "movie"

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    :goto_2
    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->showType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    goto/16 :goto_0

    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    goto :goto_2

    .line 169
    :pswitch_10
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->urlTarget:Ljava/lang/String;

    goto/16 :goto_0

    .line 173
    :cond_3
    return-void

    .line 118
    :sswitch_data_0
    .sparse-switch
        -0x7dada934 -> :sswitch_7
        -0x73395781 -> :sswitch_e
        -0x704f6710 -> :sswitch_1
        -0x57d9710e -> :sswitch_3
        -0x4a2f6d6b -> :sswitch_4
        -0x48cb1d73 -> :sswitch_9
        -0x4657ca20 -> :sswitch_d
        -0x333c9dec -> :sswitch_c
        -0x22f08567 -> :sswitch_8
        -0x146eec20 -> :sswitch_10
        -0x1431e829 -> :sswitch_f
        -0x12450765 -> :sswitch_6
        0xd1b -> :sswitch_0
        0x2e39a2 -> :sswitch_a
        0x3492916 -> :sswitch_5
        0x5018025b -> :sswitch_2
        0x6f0a4d1e -> :sswitch_b
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method public set(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 180
    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 236
    :goto_1
    return v0

    .line 180
    :sswitch_0
    const-string/jumbo v3, "id"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v3, "storyId"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v3, "msgType"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v3, "msgString"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v3, "fromUser"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v3, "timestamp"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v3, "imageAltText"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x6

    goto :goto_0

    :sswitch_7
    const-string/jumbo v3, "imageTarget"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x7

    goto :goto_0

    :sswitch_8
    const-string/jumbo v3, "showTimestamp"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :sswitch_9
    const-string/jumbo v3, "header"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x9

    goto :goto_0

    :sswitch_a
    const-string/jumbo v3, "body"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0xa

    goto :goto_0

    :sswitch_b
    const-string/jumbo v3, "textTarget"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v3, "imageUrl"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string/jumbo v3, "isRead"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string/jumbo v3, "isThanked"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0xe

    goto/16 :goto_0

    :sswitch_f
    const-string/jumbo v3, "showType"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0xf

    goto/16 :goto_0

    :sswitch_10
    const-string/jumbo v3, "urlTarget"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0x10

    goto/16 :goto_0

    .line 182
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->id:Ljava/lang/String;

    :goto_2
    move v0, v1

    .line 236
    goto/16 :goto_1

    .line 185
    :pswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->storyId:Ljava/lang/String;

    goto :goto_2

    .line 188
    :pswitch_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getNotificationType(Ljava/lang/String;)Lcom/netflix/model/leafs/social/IrisNotificationSummary$NotificationTypes;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->type:Lcom/netflix/model/leafs/social/IrisNotificationSummary$NotificationTypes;

    goto :goto_2

    .line 191
    :pswitch_3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->messageString:Ljava/lang/String;

    goto :goto_2

    .line 194
    :pswitch_4
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->friendProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;

    .line 195
    iget-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->friendProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;->set(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)Z

    goto :goto_2

    .line 198
    :pswitch_5
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->timestamp:J

    goto :goto_2

    .line 201
    :pswitch_6
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->imageAltText:Ljava/lang/String;

    goto :goto_2

    .line 204
    :pswitch_7
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->imageTarget:Ljava/lang/String;

    goto :goto_2

    .line 207
    :pswitch_8
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->showTimestamp:Z

    goto :goto_2

    .line 210
    :pswitch_9
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->headerText:Ljava/lang/String;

    goto :goto_2

    .line 213
    :pswitch_a
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->bodyText:Ljava/lang/String;

    goto :goto_2

    .line 216
    :pswitch_b
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->textTarget:Ljava/lang/String;

    goto :goto_2

    .line 219
    :pswitch_c
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->imageUrl:Ljava/lang/String;

    goto :goto_2

    .line 222
    :pswitch_d
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->bWasRead:Z

    goto :goto_2

    .line 225
    :pswitch_e
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->bWasThanked:Z

    goto :goto_2

    .line 228
    :pswitch_f
    const-string/jumbo v0, "movie"

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    :goto_3
    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->showType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    goto :goto_2

    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    goto :goto_3

    .line 231
    :pswitch_10
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->urlTarget:Ljava/lang/String;

    goto/16 :goto_2

    .line 180
    :sswitch_data_0
    .sparse-switch
        -0x7dada934 -> :sswitch_7
        -0x73395781 -> :sswitch_e
        -0x704f6710 -> :sswitch_1
        -0x57d9710e -> :sswitch_3
        -0x4a2f6d6b -> :sswitch_4
        -0x48cb1d73 -> :sswitch_9
        -0x4657ca20 -> :sswitch_d
        -0x333c9dec -> :sswitch_c
        -0x22f08567 -> :sswitch_8
        -0x146eec20 -> :sswitch_10
        -0x1431e829 -> :sswitch_f
        -0x12450765 -> :sswitch_6
        0xd1b -> :sswitch_0
        0x2e39a2 -> :sswitch_a
        0x3492916 -> :sswitch_5
        0x5018025b -> :sswitch_2
        0x6f0a4d1e -> :sswitch_b
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method public setWasRead(Z)V
    .locals 0

    .prologue
    .line 321
    iput-boolean p1, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->bWasRead:Z

    .line 322
    return-void
.end method

.method public setWasThanked(Z)V
    .locals 0

    .prologue
    .line 326
    iput-boolean p1, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->bWasThanked:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SocialNotificationSummary [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", storyId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->storyId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->type:Lcom/netflix/model/leafs/social/IrisNotificationSummary$NotificationTypes;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", messageString="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->messageString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", friendProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->friendProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->timestamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", bWasRead="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->bWasRead:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", bWasThanked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->bWasThanked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    .line 395
    const/16 v0, 0x19

    new-array v0, v0, [Ljava/lang/String;

    .line 396
    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->bWasRead:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 397
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->bWasThanked:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 399
    iget-object v1, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->friendProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;

    if-eqz v1, :cond_0

    .line 400
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->friendProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;->getId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 401
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->friendProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;->getFirstName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 402
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->friendProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;->getLastName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 403
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->friendProfile:Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 405
    :cond_0
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->id:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 406
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->storyId:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 407
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->messageString:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 408
    iget-object v1, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->type:Lcom/netflix/model/leafs/social/IrisNotificationSummary$NotificationTypes;

    if-eqz v1, :cond_1

    .line 409
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->type:Lcom/netflix/model/leafs/social/IrisNotificationSummary$NotificationTypes;

    invoke-virtual {v2}, Lcom/netflix/model/leafs/social/IrisNotificationSummary$NotificationTypes;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 411
    :cond_1
    const/16 v1, 0xa

    iget-wide v2, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->timestamp:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 412
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->imageAltText:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 413
    const/16 v1, 0xc

    iget-boolean v2, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->showTimestamp:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 414
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->headerText:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 415
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->imageUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 416
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->videoId:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 417
    const/16 v1, 0x10

    iget-object v2, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getValue()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 418
    const/16 v1, 0x11

    iget-object v2, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->videoTitle:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 419
    const/16 v1, 0x12

    iget-object v2, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->tvCardUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 420
    const/16 v1, 0x13

    iget-boolean v2, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->inQueue:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 421
    iget-object v1, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->showType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-eqz v1, :cond_2

    .line 422
    const/16 v1, 0x14

    iget-object v2, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->showType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 424
    :cond_2
    const/16 v1, 0x15

    iget-object v2, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->bodyText:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 425
    const/16 v1, 0x16

    iget-object v2, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->imageTarget:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 426
    const/16 v1, 0x17

    iget-object v2, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->textTarget:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 427
    const/16 v1, 0x18

    iget-object v2, p0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->urlTarget:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 428
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 429
    return-void
.end method
