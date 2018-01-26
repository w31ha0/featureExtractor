.class public Lcom/biznessapps/model/MessageItem;
.super Lcom/biznessapps/model/CommonListEntity;
.source "MessageItem.java"


# instance fields
.field private date:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/biznessapps/model/CommonListEntity;-><init>()V

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/biznessapps/model/MessageItem;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/biznessapps/model/MessageItem;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/biznessapps/model/MessageItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/biznessapps/model/MessageItem;->date:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/biznessapps/model/MessageItem;->title:Ljava/lang/String;

    .line 17
    return-void
.end method
