.class public Lcom/biznessapps/model/AroundUsItem;
.super Ljava/lang/Object;
.source "AroundUsItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/model/AroundUsItem$PoiItem;
    }
.end annotation


# instance fields
.field private customButtom:Ljava/lang/String;

.field private greenColor:Ljava/lang/String;

.field private greenTextColor:Ljava/lang/String;

.field private greenTitle:Ljava/lang/String;

.field private image:Ljava/lang/String;

.field private poi:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/model/AroundUsItem$PoiItem;",
            ">;"
        }
    .end annotation
.end field

.field private purpleColor:Ljava/lang/String;

.field private purpleTextColor:Ljava/lang/String;

.field private purpleTitle:Ljava/lang/String;

.field private redColor:Ljava/lang/String;

.field private redTextColor:Ljava/lang/String;

.field private redTitle:Ljava/lang/String;

.field private useInMemoryImage:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/model/AroundUsItem;->poi:Ljava/util/List;

    .line 21
    const-string v0, "00FF00"

    iput-object v0, p0, Lcom/biznessapps/model/AroundUsItem;->greenColor:Ljava/lang/String;

    .line 22
    const-string v0, "000000"

    iput-object v0, p0, Lcom/biznessapps/model/AroundUsItem;->greenTextColor:Ljava/lang/String;

    .line 23
    const-string v0, "800080"

    iput-object v0, p0, Lcom/biznessapps/model/AroundUsItem;->purpleColor:Ljava/lang/String;

    .line 24
    const-string v0, "FFFFFF"

    iput-object v0, p0, Lcom/biznessapps/model/AroundUsItem;->purpleTextColor:Ljava/lang/String;

    .line 25
    const-string v0, "FF0000"

    iput-object v0, p0, Lcom/biznessapps/model/AroundUsItem;->redColor:Ljava/lang/String;

    .line 26
    const-string v0, "FFFFFF"

    iput-object v0, p0, Lcom/biznessapps/model/AroundUsItem;->redTextColor:Ljava/lang/String;

    .line 133
    return-void
.end method


# virtual methods
.method public getCustomButtom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/biznessapps/model/AroundUsItem;->customButtom:Ljava/lang/String;

    return-object v0
.end method

.method public getGreenColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/biznessapps/model/AroundUsItem;->greenColor:Ljava/lang/String;

    return-object v0
.end method

.method public getGreenTextColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/biznessapps/model/AroundUsItem;->greenTextColor:Ljava/lang/String;

    return-object v0
.end method

.method public getGreenTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/biznessapps/model/AroundUsItem;->greenTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/biznessapps/model/AroundUsItem;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getPoi()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/model/AroundUsItem$PoiItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/biznessapps/model/AroundUsItem;->poi:Ljava/util/List;

    return-object v0
.end method

.method public getPurpleColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/biznessapps/model/AroundUsItem;->purpleColor:Ljava/lang/String;

    return-object v0
.end method

.method public getPurpleTextColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/biznessapps/model/AroundUsItem;->purpleTextColor:Ljava/lang/String;

    return-object v0
.end method

.method public getPurpleTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/biznessapps/model/AroundUsItem;->purpleTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getRedColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/biznessapps/model/AroundUsItem;->redColor:Ljava/lang/String;

    return-object v0
.end method

.method public getRedTextColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/biznessapps/model/AroundUsItem;->redTextColor:Ljava/lang/String;

    return-object v0
.end method

.method public getRedTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/biznessapps/model/AroundUsItem;->redTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isUseInMemoryImage()Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/biznessapps/model/AroundUsItem;->useInMemoryImage:Z

    return v0
.end method

.method public setCustomButtom(Ljava/lang/String;)V
    .locals 0
    .param p1, "customButtom"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/biznessapps/model/AroundUsItem;->customButtom:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setGreenColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "greenColor"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/biznessapps/model/AroundUsItem;->greenColor:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setGreenTextColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "greenTextColor"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/biznessapps/model/AroundUsItem;->greenTextColor:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setGreenTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "greenTitle"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/biznessapps/model/AroundUsItem;->greenTitle:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0
    .param p1, "image"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/biznessapps/model/AroundUsItem;->image:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setPoi(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/model/AroundUsItem$PoiItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, "poi":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/AroundUsItem$PoiItem;>;"
    iput-object p1, p0, Lcom/biznessapps/model/AroundUsItem;->poi:Ljava/util/List;

    .line 131
    return-void
.end method

.method public setPurpleColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "purpleColor"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/biznessapps/model/AroundUsItem;->purpleColor:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setPurpleTextColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "purpleTextColor"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/biznessapps/model/AroundUsItem;->purpleTextColor:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setPurpleTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "purpleTitle"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/biznessapps/model/AroundUsItem;->purpleTitle:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setRedColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "redColor"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/biznessapps/model/AroundUsItem;->redColor:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setRedTextColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "redTextColor"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/biznessapps/model/AroundUsItem;->redTextColor:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setRedTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "redTitle"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/biznessapps/model/AroundUsItem;->redTitle:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setUseInMemoryImage(Z)V
    .locals 0
    .param p1, "useInMemoryImage"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/biznessapps/model/AroundUsItem;->useInMemoryImage:Z

    .line 35
    return-void
.end method
