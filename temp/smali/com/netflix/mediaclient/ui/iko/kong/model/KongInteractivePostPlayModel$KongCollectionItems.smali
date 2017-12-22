.class public Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;
.super Ljava/lang/Object;
.source "KongInteractivePostPlayModel.java"


# instance fields
.field audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItemSound;

.field badgeBitmap:Landroid/graphics/Bitmap;

.field images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItemImage;

.field result:Ljava/lang/String;

.field strings:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNameString;

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;

.field trackId:I

.field videoId:I


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBadge()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItemImage;

    if-nez v0, :cond_0

    .line 362
    const/4 v0, 0x0

    .line 364
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItemImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItemImage;->badge:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    goto :goto_0
.end method

.method public getBadgeBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;->badgeBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getBadgeUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 407
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;->getBadge()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    move-result-object v0

    .line 408
    if-eqz v0, :cond_0

    .line 409
    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    .line 411
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBattleBadge()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItemImage;

    if-nez v0, :cond_0

    .line 376
    const/4 v0, 0x0

    .line 378
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItemImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItemImage;->battleBadge:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    goto :goto_0
.end method

.method public getItemBattleAgainSound()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItemSound;

    if-nez v0, :cond_0

    .line 390
    const/4 v0, 0x0

    .line 392
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItemSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItemSound;->battleAgainVO:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    goto :goto_0
.end method

.method public getItemNameString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;->strings:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNameString;

    if-nez v0, :cond_0

    .line 355
    const/4 v0, 0x0

    .line 357
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;->strings:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNameString;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNameString;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public getItemOnAvatar()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItemImage;

    if-nez v0, :cond_0

    .line 369
    const/4 v0, 0x0

    .line 371
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItemImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItemImage;->itemOnAvatar:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    goto :goto_0
.end method

.method public getItemResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;->result:Ljava/lang/String;

    return-object v0
.end method

.method public getItemSound()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItemSound;

    if-nez v0, :cond_0

    .line 383
    const/4 v0, 0x0

    .line 385
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItemSound;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItemSound;->getVo()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    move-result-object v0

    goto :goto_0
.end method

.method public getTrackId()I
    .locals 1

    .prologue
    .line 342
    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;->trackId:I

    return v0
.end method

.method public getVideoId()I
    .locals 1

    .prologue
    .line 350
    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;->videoId:I

    return v0
.end method

.method public setBadgeBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 419
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;->badgeBitmap:Landroid/graphics/Bitmap;

    .line 420
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "KongCollectionItems{result=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;->result:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", videoId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;->videoId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", strings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;->strings:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNameString;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", images="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItemImage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", audio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItemSound;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
