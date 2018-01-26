.class public Lcom/biznessapps/model/Tip;
.super Ljava/lang/Object;
.source "Tip.java"


# instance fields
.field private customButton:Ljava/lang/String;

.field private image:Ljava/lang/String;

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
    .line 30
    iget-object v0, p0, Lcom/biznessapps/model/Tip;->customButton:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/biznessapps/model/Tip;->image:Ljava/lang/String;

    return-object v0
.end method

.method public isUseInMemoryImage()Z
    .locals 1

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/biznessapps/model/Tip;->useInMemoryImage:Z

    return v0
.end method

.method public setCustomButton(Ljava/lang/String;)V
    .locals 0
    .param p1, "customButton"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/biznessapps/model/Tip;->customButton:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0
    .param p1, "image"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/biznessapps/model/Tip;->image:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setUseInMemoryImage(Z)V
    .locals 0
    .param p1, "useInMemoryImage"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/biznessapps/model/Tip;->useInMemoryImage:Z

    .line 19
    return-void
.end method
