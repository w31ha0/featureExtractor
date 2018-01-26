.class public Lcom/biznessapps/model/Tab;
.super Ljava/lang/Object;
.source "Tab.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private customIcon:Ljava/lang/String;

.field private evenRowColor:Ljava/lang/String;

.field private hasCallButton:Z

.field private hasCustomDesign:Z

.field private hasDirectionButton:Z

.field private hasTellFriendButton:Z

.field private id:J

.field private image:Ljava/lang/String;

.field private imageId:I

.field private isActive:Z

.field private itemId:Ljava/lang/String;

.field private label:Ljava/lang/String;

.field private lastUpdated:Ljava/lang/String;

.field private navigationController:Ljava/lang/String;

.field private oddRowColor:Ljava/lang/String;

.field private sectionId:Ljava/lang/String;

.field private seq:I

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

.field private tabId:Ljava/lang/String;

.field private tabImageUrl:Ljava/lang/String;

.field private tabLabelFont:Ljava/lang/String;

.field private tabLabelText:Ljava/lang/String;

.field private tabLabelTextBgColor:Ljava/lang/String;

.field private tabLabelTextColor:Ljava/lang/String;

.field private tabSrc:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private viewController:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/biznessapps/model/Tab;->isActive:Z

    .line 260
    const-string v0, ""

    iput-object v0, p0, Lcom/biznessapps/model/Tab;->label:Ljava/lang/String;

    .line 261
    const-string v0, ""

    iput-object v0, p0, Lcom/biznessapps/model/Tab;->image:Ljava/lang/String;

    .line 262
    const-string v0, ""

    iput-object v0, p0, Lcom/biznessapps/model/Tab;->viewController:Ljava/lang/String;

    .line 263
    const-string v0, ""

    iput-object v0, p0, Lcom/biznessapps/model/Tab;->navigationController:Ljava/lang/String;

    .line 264
    const-string v0, ""

    iput-object v0, p0, Lcom/biznessapps/model/Tab;->lastUpdated:Ljava/lang/String;

    .line 265
    const-string v0, ""

    iput-object v0, p0, Lcom/biznessapps/model/Tab;->oddRowColor:Ljava/lang/String;

    .line 266
    const-string v0, ""

    iput-object v0, p0, Lcom/biznessapps/model/Tab;->evenRowColor:Ljava/lang/String;

    .line 267
    const-string v0, ""

    iput-object v0, p0, Lcom/biznessapps/model/Tab;->url:Ljava/lang/String;

    .line 268
    const-string v0, ""

    iput-object v0, p0, Lcom/biznessapps/model/Tab;->itemId:Ljava/lang/String;

    .line 269
    const-string v0, ""

    iput-object v0, p0, Lcom/biznessapps/model/Tab;->sectionId:Ljava/lang/String;

    .line 270
    return-void
.end method


# virtual methods
.method public getCustomIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/biznessapps/model/Tab;->customIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getEvenRowColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/biznessapps/model/Tab;->evenRowColor:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 212
    iget-wide v0, p0, Lcom/biznessapps/model/Tab;->id:J

    return-wide v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/biznessapps/model/Tab;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getImageId()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/biznessapps/model/Tab;->imageId:I

    return v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/biznessapps/model/Tab;->itemId:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/biznessapps/model/Tab;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getLastUpdated()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/biznessapps/model/Tab;->lastUpdated:Ljava/lang/String;

    return-object v0
.end method

.method public getNavigationController()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/biznessapps/model/Tab;->navigationController:Ljava/lang/String;

    return-object v0
.end method

.method public getOddRowColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/biznessapps/model/Tab;->oddRowColor:Ljava/lang/String;

    return-object v0
.end method

.method public getSectionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/biznessapps/model/Tab;->sectionId:Ljava/lang/String;

    return-object v0
.end method

.method public getSeq()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/biznessapps/model/Tab;->seq:I

    return v0
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
    .line 252
    iget-object v0, p0, Lcom/biznessapps/model/Tab;->subTabs:Ljava/util/List;

    return-object v0
.end method

.method public getTabId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/biznessapps/model/Tab;->tabId:Ljava/lang/String;

    return-object v0
.end method

.method public getTabImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/biznessapps/model/Tab;->tabImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTabLabelFont()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/biznessapps/model/Tab;->tabLabelFont:Ljava/lang/String;

    return-object v0
.end method

.method public getTabLabelText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/biznessapps/model/Tab;->tabLabelText:Ljava/lang/String;

    return-object v0
.end method

.method public getTabLabelTextBgColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/biznessapps/model/Tab;->tabLabelTextBgColor:Ljava/lang/String;

    return-object v0
.end method

.method public getTabLabelTextColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/biznessapps/model/Tab;->tabLabelTextColor:Ljava/lang/String;

    return-object v0
.end method

.method public getTabSrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/biznessapps/model/Tab;->tabSrc:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/biznessapps/model/Tab;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getViewController()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/biznessapps/model/Tab;->viewController:Ljava/lang/String;

    return-object v0
.end method

.method public hasCallButton()Z
    .locals 1

    .prologue
    .line 228
    iget-boolean v0, p0, Lcom/biznessapps/model/Tab;->hasCallButton:Z

    return v0
.end method

.method public hasCustomDesign()Z
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/biznessapps/model/Tab;->hasCustomDesign:Z

    return v0
.end method

.method public hasDirectionButton()Z
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/biznessapps/model/Tab;->hasDirectionButton:Z

    return v0
.end method

.method public hasTellFriendButton()Z
    .locals 1

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/biznessapps/model/Tab;->hasTellFriendButton:Z

    return v0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/biznessapps/model/Tab;->isActive:Z

    return v0
.end method

.method public setActive(Z)V
    .locals 0
    .param p1, "isActive"    # Z

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/biznessapps/model/Tab;->isActive:Z

    .line 137
    return-void
.end method

.method public setCustomIcon(Ljava/lang/String;)V
    .locals 0
    .param p1, "customIcon"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/biznessapps/model/Tab;->customIcon:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setEvenRowColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "evenRowColor"    # Ljava/lang/String;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/biznessapps/model/Tab;->evenRowColor:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public setHasCallButton(Z)V
    .locals 0
    .param p1, "hasCallButton"    # Z

    .prologue
    .line 232
    iput-boolean p1, p0, Lcom/biznessapps/model/Tab;->hasCallButton:Z

    .line 233
    return-void
.end method

.method public setHasCustomDesign(Z)V
    .locals 0
    .param p1, "hasCustomDesign"    # Z

    .prologue
    .line 168
    iput-boolean p1, p0, Lcom/biznessapps/model/Tab;->hasCustomDesign:Z

    .line 169
    return-void
.end method

.method public setHasDirectionButton(Z)V
    .locals 0
    .param p1, "hasDirectionButton"    # Z

    .prologue
    .line 240
    iput-boolean p1, p0, Lcom/biznessapps/model/Tab;->hasDirectionButton:Z

    .line 241
    return-void
.end method

.method public setHasTellFriendButton(Z)V
    .locals 0
    .param p1, "hasTellFriendButton"    # Z

    .prologue
    .line 248
    iput-boolean p1, p0, Lcom/biznessapps/model/Tab;->hasTellFriendButton:Z

    .line 249
    return-void
.end method

.method public setId(J)V
    .locals 0
    .param p1, "id"    # J

    .prologue
    .line 216
    iput-wide p1, p0, Lcom/biznessapps/model/Tab;->id:J

    .line 217
    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0
    .param p1, "image"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/biznessapps/model/Tab;->image:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setImageId(I)V
    .locals 0
    .param p1, "imageId"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/biznessapps/model/Tab;->imageId:I

    .line 49
    return-void
.end method

.method public setItemId(Ljava/lang/String;)V
    .locals 0
    .param p1, "itemId"    # Ljava/lang/String;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/biznessapps/model/Tab;->itemId:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/biznessapps/model/Tab;->label:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setLastUpdated(Ljava/lang/String;)V
    .locals 0
    .param p1, "lastUpdated"    # Ljava/lang/String;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/biznessapps/model/Tab;->lastUpdated:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setNavigationController(Ljava/lang/String;)V
    .locals 0
    .param p1, "navigationController"    # Ljava/lang/String;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/biznessapps/model/Tab;->navigationController:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setOddRowColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "oddRowColor"    # Ljava/lang/String;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/biznessapps/model/Tab;->oddRowColor:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setSectionId(Ljava/lang/String;)V
    .locals 0
    .param p1, "sectionId"    # Ljava/lang/String;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/biznessapps/model/Tab;->sectionId:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public setSeq(I)V
    .locals 0
    .param p1, "seq"    # I

    .prologue
    .line 120
    iput p1, p0, Lcom/biznessapps/model/Tab;->seq:I

    .line 121
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
    .line 256
    .local p1, "subTabs":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/Tab;>;"
    iput-object p1, p0, Lcom/biznessapps/model/Tab;->subTabs:Ljava/util/List;

    .line 257
    return-void
.end method

.method public setTabId(Ljava/lang/String;)V
    .locals 0
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/biznessapps/model/Tab;->tabId:Ljava/lang/String;

    .line 225
    return-void
.end method

.method public setTabImageUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "tabImageUrl"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/biznessapps/model/Tab;->tabImageUrl:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setTabLabelFont(Ljava/lang/String;)V
    .locals 0
    .param p1, "tabLabelFont"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/biznessapps/model/Tab;->tabLabelFont:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setTabLabelText(Ljava/lang/String;)V
    .locals 0
    .param p1, "tabLabelText"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/biznessapps/model/Tab;->tabLabelText:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setTabLabelTextBgColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "tabLabelTextBgColor"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/biznessapps/model/Tab;->tabLabelTextBgColor:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setTabLabelTextColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "tabLabelTextColor"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/biznessapps/model/Tab;->tabLabelTextColor:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setTabSrc(Ljava/lang/String;)V
    .locals 0
    .param p1, "tabSrc"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/biznessapps/model/Tab;->tabSrc:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/biznessapps/model/Tab;->url:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public setViewController(Ljava/lang/String;)V
    .locals 0
    .param p1, "viewController"    # Ljava/lang/String;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/biznessapps/model/Tab;->viewController:Ljava/lang/String;

    .line 145
    return-void
.end method
