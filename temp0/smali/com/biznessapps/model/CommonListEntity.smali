.class public Lcom/biznessapps/model/CommonListEntity;
.super Ljava/lang/Object;
.source "CommonListEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x4bd03044df2dfeacL


# instance fields
.field private hasColor:Z

.field private isSelected:Z

.field private itemColor:I

.field private itemTextColor:I

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-boolean v0, p0, Lcom/biznessapps/model/CommonListEntity;->hasColor:Z

    .line 15
    iput-boolean v0, p0, Lcom/biznessapps/model/CommonListEntity;->isSelected:Z

    .line 25
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 1
    .param p1, "itemColor"    # I
    .param p2, "itemTextColor"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-boolean v0, p0, Lcom/biznessapps/model/CommonListEntity;->hasColor:Z

    .line 15
    iput-boolean v0, p0, Lcom/biznessapps/model/CommonListEntity;->isSelected:Z

    .line 19
    iput-object p3, p0, Lcom/biznessapps/model/CommonListEntity;->name:Ljava/lang/String;

    .line 20
    iput p1, p0, Lcom/biznessapps/model/CommonListEntity;->itemColor:I

    .line 21
    iput p2, p0, Lcom/biznessapps/model/CommonListEntity;->itemTextColor:I

    .line 22
    return-void
.end method


# virtual methods
.method public getItemColor()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/biznessapps/model/CommonListEntity;->itemColor:I

    return v0
.end method

.method public getItemTextColor()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/biznessapps/model/CommonListEntity;->itemTextColor:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/biznessapps/model/CommonListEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hasColor()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/biznessapps/model/CommonListEntity;->hasColor:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/biznessapps/model/CommonListEntity;->isSelected:Z

    return v0
.end method

.method public setHasColor(Z)V
    .locals 0
    .param p1, "hasColor"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/biznessapps/model/CommonListEntity;->hasColor:Z

    .line 41
    return-void
.end method

.method public setItemColor(I)V
    .locals 1
    .param p1, "itemColor"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/biznessapps/model/CommonListEntity;->itemColor:I

    .line 57
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/biznessapps/model/CommonListEntity;->setHasColor(Z)V

    .line 58
    return-void
.end method

.method public setItemTextColor(I)V
    .locals 0
    .param p1, "itemTextColor"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/biznessapps/model/CommonListEntity;->itemTextColor:I

    .line 66
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/biznessapps/model/CommonListEntity;->name:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "isSelected"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/biznessapps/model/CommonListEntity;->isSelected:Z

    .line 49
    return-void
.end method
