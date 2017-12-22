.class public Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;
.super Ljava/lang/Object;
.source "KongInteractivePostPlayModel.java"


# instance fields
.field backBTN:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

.field backBTNTapped:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

.field badgeTapped:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

.field cardDropshadow:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

.field cardTapped:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

.field closeBTN:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

.field closeBTNTapped:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

.field dotBlurParallax:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

.field hexParallax:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

.field leftGate:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

.field plusParallax:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

.field redFlare:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

.field rightGate:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

.field smAvatar:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

.field sunburst:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;

.field unlockEmptyBadge:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

.field versusHex:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

.field versusLock:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

.field versusSwords:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

.field whiteFlare:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;)V
    .locals 0

    .prologue
    .line 627
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "KongPostPlayImages{leftGate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->leftGate:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", rightGate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->rightGate:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", closeBTN="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->closeBTN:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", closeBTNTapped="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->closeBTNTapped:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", backBTN="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->backBTN:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", backBTNTapped="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->backBTNTapped:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", badgeTapped="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->badgeTapped:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", cardTapped="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->cardTapped:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", redFlare="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->redFlare:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", dotBlurParallax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->dotBlurParallax:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", hexParallax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->hexParallax:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", plusParallax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->plusParallax:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", sunburst="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->sunburst:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", versusHex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->versusHex:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", versusSwords="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->versusSwords:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", versusLock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->versusLock:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", cardDropshadow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->cardDropshadow:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", smAvatar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->smAvatar:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", unlockEmptyBadge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->unlockEmptyBadge:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", whiteFlare="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->whiteFlare:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
