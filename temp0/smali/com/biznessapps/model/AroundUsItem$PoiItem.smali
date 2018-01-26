.class public Lcom/biznessapps/model/AroundUsItem$PoiItem;
.super Ljava/lang/Object;
.source "AroundUsItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/model/AroundUsItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PoiItem"
.end annotation


# instance fields
.field private color:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private latitude:Ljava/lang/String;

.field private location:Lcom/biznessapps/model/LocationItem;

.field private longitude:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/biznessapps/model/AroundUsItem$PoiItem;->color:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/biznessapps/model/AroundUsItem$PoiItem;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/biznessapps/model/AroundUsItem$PoiItem;->latitude:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Lcom/biznessapps/model/LocationItem;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/biznessapps/model/AroundUsItem$PoiItem;->location:Lcom/biznessapps/model/LocationItem;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/biznessapps/model/AroundUsItem$PoiItem;->longitude:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/biznessapps/model/AroundUsItem$PoiItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "color"    # Ljava/lang/String;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/biznessapps/model/AroundUsItem$PoiItem;->color:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/biznessapps/model/AroundUsItem$PoiItem;->description:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setLatitude(Ljava/lang/String;)V
    .locals 0
    .param p1, "latitude"    # Ljava/lang/String;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/biznessapps/model/AroundUsItem$PoiItem;->latitude:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public setLocation(Lcom/biznessapps/model/LocationItem;)V
    .locals 0
    .param p1, "location"    # Lcom/biznessapps/model/LocationItem;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/biznessapps/model/AroundUsItem$PoiItem;->location:Lcom/biznessapps/model/LocationItem;

    .line 155
    return-void
.end method

.method public setLongitude(Ljava/lang/String;)V
    .locals 0
    .param p1, "longitude"    # Ljava/lang/String;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/biznessapps/model/AroundUsItem$PoiItem;->longitude:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/biznessapps/model/AroundUsItem$PoiItem;->name:Ljava/lang/String;

    .line 171
    return-void
.end method
