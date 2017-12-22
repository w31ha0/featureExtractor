.class public Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongOpponent;
.super Ljava/lang/Object;
.source "KongInteractivePostPlayModel.java"


# instance fields
.field images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarImage;

.field name:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNameString;

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;)V
    .locals 0

    .prologue
    .line 524
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongOpponent;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImages()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarImage;
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongOpponent;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarImage;

    return-object v0
.end method

.method public getName()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNameString;
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongOpponent;->name:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNameString;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "KongOpponent{name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongOpponent;->name:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNameString;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", images="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongOpponent;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarImage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
