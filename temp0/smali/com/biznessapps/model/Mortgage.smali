.class public Lcom/biznessapps/model/Mortgage;
.super Ljava/lang/Object;
.source "Mortgage.java"


# instance fields
.field private customButton:Ljava/lang/String;

.field private image:Ljava/lang/String;

.field private interest:Ljava/lang/String;

.field private readOnly:Ljava/lang/String;

.field private useInMemoryImage:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCustomButton()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/biznessapps/model/Mortgage;->customButton:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/biznessapps/model/Mortgage;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getInterest()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/biznessapps/model/Mortgage;->interest:Ljava/lang/String;

    return-object v0
.end method

.method public getReadOnly()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/biznessapps/model/Mortgage;->readOnly:Ljava/lang/String;

    return-object v0
.end method

.method public isUseInMemoryImage()Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/biznessapps/model/Mortgage;->useInMemoryImage:Z

    return v0
.end method

.method public setCustomButton(Ljava/lang/String;)V
    .locals 0
    .param p1, "customButton"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/biznessapps/model/Mortgage;->customButton:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0
    .param p1, "image"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/biznessapps/model/Mortgage;->image:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setInterest(Ljava/lang/String;)V
    .locals 0
    .param p1, "interest"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/biznessapps/model/Mortgage;->interest:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setReadOnly(Ljava/lang/String;)V
    .locals 0
    .param p1, "readOnly"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/biznessapps/model/Mortgage;->readOnly:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setUseInMemoryImage(Z)V
    .locals 0
    .param p1, "useInMemoryImage"    # Z

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/biznessapps/model/Mortgage;->useInMemoryImage:Z

    .line 21
    return-void
.end method
