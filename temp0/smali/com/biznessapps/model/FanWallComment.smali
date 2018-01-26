.class public Lcom/biznessapps/model/FanWallComment;
.super Ljava/lang/Object;
.source "FanWallComment.java"


# instance fields
.field private comment:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private image:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private replies:Ljava/lang/String;

.field private timeAgo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/biznessapps/model/FanWallComment;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/biznessapps/model/FanWallComment;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/biznessapps/model/FanWallComment;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/biznessapps/model/FanWallComment;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getReplies()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/biznessapps/model/FanWallComment;->replies:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeAgo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/biznessapps/model/FanWallComment;->timeAgo:Ljava/lang/String;

    return-object v0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0
    .param p1, "comment"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/biznessapps/model/FanWallComment;->comment:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/biznessapps/model/FanWallComment;->id:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0
    .param p1, "image"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/biznessapps/model/FanWallComment;->image:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/biznessapps/model/FanWallComment;->name:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setReplies(Ljava/lang/String;)V
    .locals 0
    .param p1, "replies"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/biznessapps/model/FanWallComment;->replies:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setTimeAgo(Ljava/lang/String;)V
    .locals 0
    .param p1, "timeAgo"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/biznessapps/model/FanWallComment;->timeAgo:Ljava/lang/String;

    .line 29
    return-void
.end method
