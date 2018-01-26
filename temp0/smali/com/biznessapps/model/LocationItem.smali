.class public Lcom/biznessapps/model/LocationItem;
.super Lcom/biznessapps/model/CommonListEntity;
.source "LocationItem.java"


# instance fields
.field private address1:Ljava/lang/String;

.field private address2:Ljava/lang/String;

.field private city:Ljava/lang/String;

.field private comment:Ljava/lang/String;

.field private customButton:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private image:Ljava/lang/String;

.field private latitude:Ljava/lang/String;

.field private longitude:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private openingTimes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/model/LocationOpeningTime;",
            ">;"
        }
    .end annotation
.end field

.field private state:Ljava/lang/String;

.field private telephone:Ljava/lang/String;

.field private telephoneDisplay:Ljava/lang/String;

.field private website:Ljava/lang/String;

.field private zip:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/biznessapps/model/CommonListEntity;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/model/LocationItem;->openingTimes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAddress1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/biznessapps/model/LocationItem;->address1:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/biznessapps/model/LocationItem;->address2:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/biznessapps/model/LocationItem;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/biznessapps/model/LocationItem;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomButton()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/biznessapps/model/LocationItem;->customButton:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/biznessapps/model/LocationItem;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/biznessapps/model/LocationItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/biznessapps/model/LocationItem;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/biznessapps/model/LocationItem;->latitude:Ljava/lang/String;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/biznessapps/model/LocationItem;->longitude:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/biznessapps/model/LocationItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOpeningTimes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/model/LocationOpeningTime;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lcom/biznessapps/model/LocationItem;->openingTimes:Ljava/util/List;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/biznessapps/model/LocationItem;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getTelephone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/biznessapps/model/LocationItem;->telephone:Ljava/lang/String;

    return-object v0
.end method

.method public getTelephoneDisplay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/biznessapps/model/LocationItem;->telephoneDisplay:Ljava/lang/String;

    return-object v0
.end method

.method public getWebsite()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/biznessapps/model/LocationItem;->website:Ljava/lang/String;

    return-object v0
.end method

.method public getZip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/biznessapps/model/LocationItem;->zip:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress1(Ljava/lang/String;)V
    .locals 0
    .param p1, "address1"    # Ljava/lang/String;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/biznessapps/model/LocationItem;->address1:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setAddress2(Ljava/lang/String;)V
    .locals 0
    .param p1, "address2"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/biznessapps/model/LocationItem;->address2:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0
    .param p1, "city"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/biznessapps/model/LocationItem;->city:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0
    .param p1, "comment"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/biznessapps/model/LocationItem;->comment:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setCustomButton(Ljava/lang/String;)V
    .locals 0
    .param p1, "customButton"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/biznessapps/model/LocationItem;->customButton:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/biznessapps/model/LocationItem;->email:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/biznessapps/model/LocationItem;->id:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0
    .param p1, "image"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/biznessapps/model/LocationItem;->image:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setLatitude(Ljava/lang/String;)V
    .locals 0
    .param p1, "latitude"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/biznessapps/model/LocationItem;->latitude:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setLongitude(Ljava/lang/String;)V
    .locals 0
    .param p1, "longitude"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/biznessapps/model/LocationItem;->longitude:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/biznessapps/model/LocationItem;->name:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setOpeningTimes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/model/LocationOpeningTime;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p1, "openingTimes":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/LocationOpeningTime;>;"
    iput-object p1, p0, Lcom/biznessapps/model/LocationItem;->openingTimes:Ljava/util/List;

    .line 164
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/biznessapps/model/LocationItem;->state:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setTelephone(Ljava/lang/String;)V
    .locals 0
    .param p1, "telephone"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/biznessapps/model/LocationItem;->telephone:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setTelephoneDisplay(Ljava/lang/String;)V
    .locals 0
    .param p1, "telephoneDisplay"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/biznessapps/model/LocationItem;->telephoneDisplay:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setWebsite(Ljava/lang/String;)V
    .locals 0
    .param p1, "website"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/biznessapps/model/LocationItem;->website:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setZip(Ljava/lang/String;)V
    .locals 0
    .param p1, "zip"    # Ljava/lang/String;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/biznessapps/model/LocationItem;->zip:Ljava/lang/String;

    .line 148
    return-void
.end method
