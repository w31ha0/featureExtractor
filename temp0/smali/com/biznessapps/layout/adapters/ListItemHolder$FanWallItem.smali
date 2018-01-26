.class public Lcom/biznessapps/layout/adapters/ListItemHolder$FanWallItem;
.super Ljava/lang/Object;
.source "ListItemHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/layout/adapters/ListItemHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FanWallItem"
.end annotation


# instance fields
.field private commentTextView:Landroid/widget/TextView;

.field private fanWallImageView:Landroid/widget/ImageView;

.field private nameTextView:Landroid/widget/TextView;

.field private replyTextView:Landroid/widget/TextView;

.field private timeAgoTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCommentTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$FanWallItem;->commentTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getFanWallImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$FanWallItem;->fanWallImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getNameTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$FanWallItem;->nameTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getReplyTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$FanWallItem;->replyTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTimeAgoTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$FanWallItem;->timeAgoTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public setCommentTextView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "commentTextView"    # Landroid/widget/TextView;

    .prologue
    .line 304
    iput-object p1, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$FanWallItem;->commentTextView:Landroid/widget/TextView;

    .line 305
    return-void
.end method

.method public setFanWallImageView(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "fanWallImageView"    # Landroid/widget/ImageView;

    .prologue
    .line 320
    iput-object p1, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$FanWallItem;->fanWallImageView:Landroid/widget/ImageView;

    .line 321
    return-void
.end method

.method public setNameTextView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "nameTextView"    # Landroid/widget/TextView;

    .prologue
    .line 296
    iput-object p1, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$FanWallItem;->nameTextView:Landroid/widget/TextView;

    .line 297
    return-void
.end method

.method public setReplyTextView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "replyTextView"    # Landroid/widget/TextView;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$FanWallItem;->replyTextView:Landroid/widget/TextView;

    .line 289
    return-void
.end method

.method public setTimeAgoTextView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "timeAgoTextView"    # Landroid/widget/TextView;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/biznessapps/layout/adapters/ListItemHolder$FanWallItem;->timeAgoTextView:Landroid/widget/TextView;

    .line 313
    return-void
.end method
