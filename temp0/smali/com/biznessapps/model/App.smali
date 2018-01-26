.class public Lcom/biznessapps/model/App;
.super Ljava/lang/Object;
.source "App.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private appStoreUrl:Ljava/lang/String;

.field private buttonImage:Ljava/lang/String;

.field private customButtonUrl:Ljava/lang/String;

.field private facebookKey:Ljava/lang/String;

.field private facebookSecret:Ljava/lang/String;

.field private hasManyImages:Z

.field private homeBackgroundImage:Ljava/lang/String;

.field private imageUrl:Ljava/lang/String;

.field private imagesInOrder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private latitude:Ljava/lang/String;

.field private locations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/model/LocationItem;",
            ">;"
        }
    .end annotation
.end field

.field private longitude:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private subTabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/model/Tab;",
            ">;"
        }
    .end annotation
.end field

.field private telephone:Ljava/lang/String;

.field private twitterKey:Ljava/lang/String;

.field private twitterSecret:Ljava/lang/String;

.field private useInMemoryImage:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/model/App;->locations:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAppStoreUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/biznessapps/model/App;->appStoreUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getButtonImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/biznessapps/model/App;->buttonImage:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomButtonUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/biznessapps/model/App;->customButtonUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFacebookKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/biznessapps/model/App;->facebookKey:Ljava/lang/String;

    return-object v0
.end method

.method public getFacebookSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/biznessapps/model/App;->facebookSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getHomeBackgroundImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/biznessapps/model/App;->homeBackgroundImage:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/biznessapps/model/App;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getImagesInOrder()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/biznessapps/model/App;->imagesInOrder:Ljava/util/List;

    return-object v0
.end method

.method public getLatitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/biznessapps/model/App;->latitude:Ljava/lang/String;

    return-object v0
.end method

.method public getLocations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/model/LocationItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/biznessapps/model/App;->locations:Ljava/util/List;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/biznessapps/model/App;->longitude:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/biznessapps/model/App;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSubTabs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/model/Tab;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/biznessapps/model/App;->subTabs:Ljava/util/List;

    return-object v0
.end method

.method public getTelephone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/biznessapps/model/App;->telephone:Ljava/lang/String;

    return-object v0
.end method

.method public getTwitterKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/biznessapps/model/App;->twitterKey:Ljava/lang/String;

    return-object v0
.end method

.method public getTwitterSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/biznessapps/model/App;->twitterSecret:Ljava/lang/String;

    return-object v0
.end method

.method public hasManyImages()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/biznessapps/model/App;->hasManyImages:Z

    return v0
.end method

.method public isUseInMemoryImage()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/biznessapps/model/App;->useInMemoryImage:Z

    return v0
.end method

.method public setAppStoreUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "appStoreUrl"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/biznessapps/model/App;->appStoreUrl:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setButtonImage(Ljava/lang/String;)V
    .locals 0
    .param p1, "buttonImage"    # Ljava/lang/String;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/biznessapps/model/App;->buttonImage:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setCustomButtonUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "customButtonUrl"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/biznessapps/model/App;->customButtonUrl:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setFacebookKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "facebookKey"    # Ljava/lang/String;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/biznessapps/model/App;->facebookKey:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setFacebookSecret(Ljava/lang/String;)V
    .locals 0
    .param p1, "facebookSecret"    # Ljava/lang/String;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/biznessapps/model/App;->facebookSecret:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setHasManyImages(Z)V
    .locals 0
    .param p1, "hasManyImages"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/biznessapps/model/App;->hasManyImages:Z

    .line 41
    return-void
.end method

.method public setHomeBackgroundImage(Ljava/lang/String;)V
    .locals 0
    .param p1, "homeBackgroundImage"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/biznessapps/model/App;->homeBackgroundImage:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/biznessapps/model/App;->imageUrl:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setImagesInOrder(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "imagesInOrder":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/biznessapps/model/App;->imagesInOrder:Ljava/util/List;

    .line 49
    return-void
.end method

.method public setLatitude(Ljava/lang/String;)V
    .locals 0
    .param p1, "latitude"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/biznessapps/model/App;->latitude:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setLocations(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/model/LocationItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, "locations":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/LocationItem;>;"
    iput-object p1, p0, Lcom/biznessapps/model/App;->locations:Ljava/util/List;

    .line 137
    return-void
.end method

.method public setLongitude(Ljava/lang/String;)V
    .locals 0
    .param p1, "longitude"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/biznessapps/model/App;->longitude:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/biznessapps/model/App;->name:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setSubTabs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/model/Tab;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, "subTabs":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/Tab;>;"
    iput-object p1, p0, Lcom/biznessapps/model/App;->subTabs:Ljava/util/List;

    .line 89
    return-void
.end method

.method public setTelephone(Ljava/lang/String;)V
    .locals 0
    .param p1, "telephone"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/biznessapps/model/App;->telephone:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setTwitterKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "twitterKey"    # Ljava/lang/String;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/biznessapps/model/App;->twitterKey:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public setTwitterSecret(Ljava/lang/String;)V
    .locals 0
    .param p1, "twitterSecret"    # Ljava/lang/String;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/biznessapps/model/App;->twitterSecret:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setUseInMemoryImage(Z)V
    .locals 0
    .param p1, "useInMemoryImage"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/biznessapps/model/App;->useInMemoryImage:Z

    .line 73
    return-void
.end method
