.class public Lcom/biznessapps/model/CouponItem;
.super Lcom/biznessapps/model/CommonListEntity;
.source "CouponItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/model/CouponItem$CouponsLocation;
    }
.end annotation


# instance fields
.field private checkinInterval:I

.field private checkinTarget:I

.field private checkinTargetMax:I

.field private code:Ljava/lang/String;

.field private distance:Ljava/lang/String;

.field private enabled:Z

.field private endDate:Ljava/util/Date;

.field private id:Ljava/lang/String;

.field private lastCheckinTime:J

.field private lastRedeemedTime:J

.field private latitude:Ljava/lang/String;

.field private locations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/model/CouponItem$CouponsLocation;",
            ">;"
        }
    .end annotation
.end field

.field private longitude:Ljava/lang/String;

.field private reusable:Z

.field private startDate:Ljava/util/Date;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/biznessapps/model/CommonListEntity;-><init>()V

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/biznessapps/model/CouponItem;->enabled:Z

    .line 170
    return-void
.end method


# virtual methods
.method public copyTo(Lcom/biznessapps/model/CouponItem;)V
    .locals 4
    .param p1, "item"    # Lcom/biznessapps/model/CouponItem;

    .prologue
    const-wide/16 v2, 0x0

    .line 30
    iget-wide v0, p0, Lcom/biznessapps/model/CouponItem;->lastCheckinTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 31
    iget-wide v0, p0, Lcom/biznessapps/model/CouponItem;->lastCheckinTime:J

    invoke-virtual {p1, v0, v1}, Lcom/biznessapps/model/CouponItem;->setLastCheckinTime(J)V

    .line 33
    :cond_0
    iget-wide v0, p0, Lcom/biznessapps/model/CouponItem;->lastRedeemedTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 34
    iget-wide v0, p0, Lcom/biznessapps/model/CouponItem;->lastRedeemedTime:J

    invoke-virtual {p1, v0, v1}, Lcom/biznessapps/model/CouponItem;->setLastRedeemedTime(J)V

    .line 36
    :cond_1
    iget v0, p0, Lcom/biznessapps/model/CouponItem;->checkinTarget:I

    invoke-virtual {p1, v0}, Lcom/biznessapps/model/CouponItem;->setCheckinTarget(I)V

    .line 37
    return-void
.end method

.method public getCheckinInterval()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/biznessapps/model/CouponItem;->checkinInterval:I

    return v0
.end method

.method public getCheckinTarget()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/biznessapps/model/CouponItem;->checkinTarget:I

    return v0
.end method

.method public getCheckinTargetMax()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/biznessapps/model/CouponItem;->checkinTargetMax:I

    return v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/biznessapps/model/CouponItem;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getDistance()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/biznessapps/model/CouponItem;->distance:Ljava/lang/String;

    return-object v0
.end method

.method public getEndDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/biznessapps/model/CouponItem;->endDate:Ljava/util/Date;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/biznessapps/model/CouponItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLastCheckinTime()J
    .locals 2

    .prologue
    .line 136
    iget-wide v0, p0, Lcom/biznessapps/model/CouponItem;->lastCheckinTime:J

    return-wide v0
.end method

.method public getLastRedeemedTime()J
    .locals 2

    .prologue
    .line 128
    iget-wide v0, p0, Lcom/biznessapps/model/CouponItem;->lastRedeemedTime:J

    return-wide v0
.end method

.method public getLatitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/biznessapps/model/CouponItem;->latitude:Ljava/lang/String;

    return-object v0
.end method

.method public getLocations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/model/CouponItem$CouponsLocation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lcom/biznessapps/model/CouponItem;->locations:Ljava/util/List;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/biznessapps/model/CouponItem;->longitude:Ljava/lang/String;

    return-object v0
.end method

.method public getStartDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/biznessapps/model/CouponItem;->startDate:Ljava/util/Date;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/biznessapps/model/CouponItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/biznessapps/model/CouponItem;->enabled:Z

    return v0
.end method

.method public isReusable()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/biznessapps/model/CouponItem;->reusable:Z

    return v0
.end method

.method public setCheckinInterval(I)V
    .locals 0
    .param p1, "checkinInterval"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/biznessapps/model/CouponItem;->checkinInterval:I

    .line 93
    return-void
.end method

.method public setCheckinTarget(I)V
    .locals 0
    .param p1, "checkinTarget"    # I

    .prologue
    .line 76
    iput p1, p0, Lcom/biznessapps/model/CouponItem;->checkinTarget:I

    .line 77
    return-void
.end method

.method public setCheckinTargetMax(I)V
    .locals 0
    .param p1, "checkinTargetMax"    # I

    .prologue
    .line 84
    iput p1, p0, Lcom/biznessapps/model/CouponItem;->checkinTargetMax:I

    .line 85
    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/biznessapps/model/CouponItem;->code:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setDistance(Ljava/lang/String;)V
    .locals 0
    .param p1, "distance"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/biznessapps/model/CouponItem;->distance:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 164
    iput-boolean p1, p0, Lcom/biznessapps/model/CouponItem;->enabled:Z

    .line 165
    return-void
.end method

.method public setEndDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "endDate"    # Ljava/util/Date;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/biznessapps/model/CouponItem;->endDate:Ljava/util/Date;

    .line 69
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/biznessapps/model/CouponItem;->id:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setLastCheckinTime(J)V
    .locals 0
    .param p1, "lastCheckinTime"    # J

    .prologue
    .line 140
    iput-wide p1, p0, Lcom/biznessapps/model/CouponItem;->lastCheckinTime:J

    .line 141
    return-void
.end method

.method public setLastRedeemedTime(J)V
    .locals 0
    .param p1, "lastRedeemedTime"    # J

    .prologue
    .line 132
    iput-wide p1, p0, Lcom/biznessapps/model/CouponItem;->lastRedeemedTime:J

    .line 133
    return-void
.end method

.method public setLatitude(Ljava/lang/String;)V
    .locals 0
    .param p1, "latitude"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/biznessapps/model/CouponItem;->latitude:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setLocations(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/model/CouponItem$CouponsLocation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p1, "locations":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/CouponItem$CouponsLocation;>;"
    iput-object p1, p0, Lcom/biznessapps/model/CouponItem;->locations:Ljava/util/List;

    .line 149
    return-void
.end method

.method public setLongitude(Ljava/lang/String;)V
    .locals 0
    .param p1, "longitude"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/biznessapps/model/CouponItem;->longitude:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setReusable(Z)V
    .locals 0
    .param p1, "reusable"    # Z

    .prologue
    .line 156
    iput-boolean p1, p0, Lcom/biznessapps/model/CouponItem;->reusable:Z

    .line 157
    return-void
.end method

.method public setStartDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "startDate"    # Ljava/util/Date;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/biznessapps/model/CouponItem;->startDate:Ljava/util/Date;

    .line 61
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/biznessapps/model/CouponItem;->title:Ljava/lang/String;

    .line 53
    return-void
.end method
