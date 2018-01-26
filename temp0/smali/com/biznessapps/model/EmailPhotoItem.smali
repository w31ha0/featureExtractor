.class public Lcom/biznessapps/model/EmailPhotoItem;
.super Ljava/lang/Object;
.source "EmailPhotoItem.java"


# instance fields
.field private customButton:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private image:Ljava/lang/String;

.field private subject:Ljava/lang/String;

.field private useInMemoryImage:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCustomButton()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/biznessapps/model/EmailPhotoItem;->customButton:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/biznessapps/model/EmailPhotoItem;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/biznessapps/model/EmailPhotoItem;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/biznessapps/model/EmailPhotoItem;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/biznessapps/model/EmailPhotoItem;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public isUseInMemoryImage()Z
    .locals 1

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/biznessapps/model/EmailPhotoItem;->useInMemoryImage:Z

    return v0
.end method

.method public setCustomButton(Ljava/lang/String;)V
    .locals 0
    .param p1, "customButton"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/biznessapps/model/EmailPhotoItem;->customButton:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/biznessapps/model/EmailPhotoItem;->description:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/biznessapps/model/EmailPhotoItem;->email:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0
    .param p1, "image"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/biznessapps/model/EmailPhotoItem;->image:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0
    .param p1, "subject"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/biznessapps/model/EmailPhotoItem;->subject:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setUseInMemoryImage(Z)V
    .locals 0
    .param p1, "useInMemoryImage"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/biznessapps/model/EmailPhotoItem;->useInMemoryImage:Z

    .line 19
    return-void
.end method
