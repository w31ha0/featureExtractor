.class public Lcom/biznessapps/model/StatFieldsItem;
.super Ljava/lang/Object;
.source "StatFieldsItem.java"


# instance fields
.field private customButton:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private image:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private useInMemoryImage:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCustomButton()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/biznessapps/model/StatFieldsItem;->customButton:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/biznessapps/model/StatFieldsItem;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getFields()Ljava/util/List;
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
    .line 24
    iget-object v0, p0, Lcom/biznessapps/model/StatFieldsItem;->fields:Ljava/util/List;

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/biznessapps/model/StatFieldsItem;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/biznessapps/model/StatFieldsItem;->message:Ljava/lang/String;

    return-object v0
.end method

.method public isUseInMemoryImage()Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/biznessapps/model/StatFieldsItem;->useInMemoryImage:Z

    return v0
.end method

.method public setCustomButton(Ljava/lang/String;)V
    .locals 0
    .param p1, "customButton"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/biznessapps/model/StatFieldsItem;->customButton:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/biznessapps/model/StatFieldsItem;->email:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setFields(Ljava/util/List;)V
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
    .line 28
    .local p1, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/biznessapps/model/StatFieldsItem;->fields:Ljava/util/List;

    .line 29
    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0
    .param p1, "image"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/biznessapps/model/StatFieldsItem;->image:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/biznessapps/model/StatFieldsItem;->message:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setUseInMemoryImage(Z)V
    .locals 0
    .param p1, "useInMemoryImage"    # Z

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/biznessapps/model/StatFieldsItem;->useInMemoryImage:Z

    .line 21
    return-void
.end method
