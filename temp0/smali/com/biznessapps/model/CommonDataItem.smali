.class public Lcom/biznessapps/model/CommonDataItem;
.super Ljava/lang/Object;
.source "CommonDataItem.java"


# instance fields
.field protected customButton:Ljava/lang/String;

.field protected image:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCustomButton()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/biznessapps/model/CommonDataItem;->customButton:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/biznessapps/model/CommonDataItem;->image:Ljava/lang/String;

    return-object v0
.end method

.method public setCustomButton(Ljava/lang/String;)V
    .locals 0
    .param p1, "customButton"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/biznessapps/model/CommonDataItem;->customButton:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0
    .param p1, "image"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/biznessapps/model/CommonDataItem;->image:Ljava/lang/String;

    .line 27
    return-void
.end method
