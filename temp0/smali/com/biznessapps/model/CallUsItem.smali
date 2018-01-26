.class public Lcom/biznessapps/model/CallUsItem;
.super Lcom/biznessapps/model/CommonListEntity;
.source "CallUsItem.java"


# instance fields
.field private id:Ljava/lang/String;

.field private phone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/biznessapps/model/CommonListEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/biznessapps/model/CallUsItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/biznessapps/model/CallUsItem;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/biznessapps/model/CallUsItem;->id:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0
    .param p1, "phone"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/biznessapps/model/CallUsItem;->phone:Ljava/lang/String;

    .line 23
    return-void
.end method
