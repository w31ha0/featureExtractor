.class public Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;
.super Lcom/netflix/mediaclient/ui/iko/model/InteractivePostplayModel;
.source "KongInteractivePostPlayModel.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "KONG_POST_PLAY"


# instance fields
.field audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;

.field autoPlayInterval:I

.field avatar:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatar;

.field battle:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBattle;

.field collectionItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;",
            ">;"
        }
    .end annotation
.end field

.field gatePostPlayOnAssetLoadFailure:Z

.field hideAnimation:Z

.field images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

.field initialState:Ljava/lang/String;

.field interactiveOriginalsPrimerVersion:Ljava/lang/String;

.field nextEpisode:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;

.field opponent:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongOpponent;

.field resourceUrlToLocalCachedFileMetadataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/service/resfetcher/volley/LocalCachedFileMetadata;",
            ">;"
        }
    .end annotation
.end field

.field resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

.field strings:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayStrings;

.field trackId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iko/model/InteractivePostplayModel;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resourceUrlToLocalCachedFileMetadataMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getAutoPlayInterval()I
    .locals 1

    .prologue
    .line 1271
    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->autoPlayInterval:I

    return v0
.end method

.method public getAutoPlayString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 898
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->strings:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayStrings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->strings:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayStrings;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayStrings;->autoPlayString:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 899
    :cond_0
    const-string/jumbo v0, ""

    .line 906
    :goto_0
    return-object v0

    .line 901
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->strings:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayStrings;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayStrings;->autoPlayString:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 902
    const-string/jumbo v1, "${remainingTime}"

    .line 903
    const-string/jumbo v2, "%s"

    .line 904
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 905
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {v0, v3, v1, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 906
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAvatarImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;
    .locals 1

    .prologue
    .line 1286
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->avatar:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->avatar:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatar;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatar;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarImage;

    if-nez v0, :cond_1

    .line 1287
    :cond_0
    const/4 v0, 0x0

    .line 1289
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->avatar:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatar;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatar;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarImage;->_default:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    goto :goto_0
.end method

.method public getAvatarImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1293
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getAvatarImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1294
    const/4 v0, 0x0

    .line 1296
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->avatar:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatar;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatar;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarImage;->_default:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public getAvatarSound()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;
    .locals 1

    .prologue
    .line 1279
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->avatar:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->avatar:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatar;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatar;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarSound;

    if-nez v0, :cond_1

    .line 1280
    :cond_0
    const/4 v0, 0x0

    .line 1282
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->avatar:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatar;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatar;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarSound;->soundEffect:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    goto :goto_0
.end method

.method public getBackBTNImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;
    .locals 1

    .prologue
    .line 1132
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    if-nez v0, :cond_0

    .line 1133
    const/4 v0, 0x0

    .line 1135
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->backBTN:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    goto :goto_0
.end method

.method public getBackBTNImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1480
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getBackBTNImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1481
    const/4 v0, 0x0

    .line 1483
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->backBTN:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public getBackBTNTappedImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;
    .locals 1

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    if-nez v0, :cond_0

    .line 1140
    const/4 v0, 0x0

    .line 1142
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->backBTNTapped:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    goto :goto_0
.end method

.method public getBackBTNTappedImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1487
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getBackBTNTappedImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1488
    const/4 v0, 0x0

    .line 1490
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->backBTNTapped:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public getBackLabelString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 910
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->strings:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayStrings;

    if-nez v0, :cond_0

    .line 911
    const/4 v0, 0x0

    .line 913
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->strings:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayStrings;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayStrings;->backLabel:Ljava/lang/String;

    goto :goto_0
.end method

.method public getBackVOSound()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;
    .locals 1

    .prologue
    .line 977
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;

    if-nez v0, :cond_0

    .line 978
    const/4 v0, 0x0

    .line 980
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;->backVO:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    goto :goto_0
.end method

.method public getBackVOSoundUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1026
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getBackVOSound()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1027
    const/4 v0, 0x0

    .line 1029
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;->backVO:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public getBackgroundImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1082
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getBattleBackgroundImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    move-result-object v0

    .line 1083
    if-nez v0, :cond_0

    .line 1084
    const/4 v0, 0x0

    .line 1086
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public getBackgroundSound()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;
    .locals 1

    .prologue
    .line 984
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;

    if-nez v0, :cond_0

    .line 985
    const/4 v0, 0x0

    .line 987
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;->background:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    goto :goto_0
.end method

.method public getBackgroundSoundUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1033
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getBackgroundSound()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1034
    const/4 v0, 0x0

    .line 1036
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;->background:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public getBadgeTappedImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;
    .locals 1

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    if-nez v0, :cond_0

    .line 1147
    const/4 v0, 0x0

    .line 1149
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->badgeTapped:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    goto :goto_0
.end method

.method public getBadgeTappedImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1494
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getBadgeTappedImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1495
    const/4 v0, 0x0

    .line 1497
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->badgeTapped:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public getBattleAgainString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1251
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;->strings:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultString;

    if-eqz v0, :cond_0

    .line 1252
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;->strings:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultString;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultString;->battleAgain:Ljava/lang/String;

    .line 1255
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBattleBackgroundImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;
    .locals 1

    .prologue
    .line 1090
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->battle:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBattle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->battle:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBattle;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBattle;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBackgroundImage;

    if-nez v0, :cond_1

    .line 1091
    :cond_0
    const/4 v0, 0x0

    .line 1093
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->battle:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBattle;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBattle;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBackgroundImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBackgroundImage;->background:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    goto :goto_0
.end method

.method public getBattleButtonSound()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;
    .locals 1

    .prologue
    .line 998
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;

    if-nez v0, :cond_0

    .line 999
    const/4 v0, 0x0

    .line 1001
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;->battleButton:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    goto :goto_0
.end method

.method public getBattleButtonSoundUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1047
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getBattleButtonSound()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1048
    const/4 v0, 0x0

    .line 1050
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;->battleButton:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public getBattleButtonString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 917
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->strings:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayStrings;

    if-nez v0, :cond_0

    .line 918
    const/4 v0, 0x0

    .line 920
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->strings:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayStrings;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayStrings;->battleButton:Ljava/lang/String;

    goto :goto_0
.end method

.method public getBattleOptInHeaderString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 924
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;->strings:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultString;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getNextEpisodeVideoId()I

    move-result v0

    if-lez v0, :cond_0

    .line 925
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;->strings:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultString;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultString;->battleOptInHeader:Ljava/lang/String;

    .line 931
    :goto_0
    return-object v0

    .line 928
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->strings:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayStrings;

    if-nez v0, :cond_1

    .line 929
    const/4 v0, 0x0

    goto :goto_0

    .line 931
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->strings:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayStrings;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayStrings;->battleOptInHeader:Ljava/lang/String;

    goto :goto_0
.end method

.method public getBattleOptInVOSound()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;
    .locals 1

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;

    if-nez v0, :cond_0

    .line 1006
    const/4 v0, 0x0

    .line 1008
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;->battleOptInVO:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    goto :goto_0
.end method

.method public getBattleOptInVOSoundUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1054
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getBattleOptInVOSound()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1055
    const/4 v0, 0x0

    .line 1057
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;->battleOptInVO:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public getBattleTitleSound()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;
    .locals 1

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->battle:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBattle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->battle:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBattle;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBattle;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;

    if-nez v0, :cond_1

    .line 1098
    :cond_0
    const/4 v0, 0x0

    .line 1100
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->battle:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBattle;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBattle;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;->vo:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    goto :goto_0
.end method

.method public getBattleTitleString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->battle:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBattle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->battle:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBattle;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBattle;->strings:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNameString;

    if-nez v0, :cond_1

    .line 1076
    :cond_0
    const/4 v0, 0x0

    .line 1078
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->battle:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBattle;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBattle;->strings:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNameString;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNameString;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCardDropshadowImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;
    .locals 1

    .prologue
    .line 1216
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    if-nez v0, :cond_0

    .line 1217
    const/4 v0, 0x0

    .line 1219
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->cardDropshadow:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    goto :goto_0
.end method

.method public getCardDropshadowImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1564
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getCardDropshadowImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1565
    const/4 v0, 0x0

    .line 1567
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->cardDropshadow:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCardTappedImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;
    .locals 1

    .prologue
    .line 1153
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    if-nez v0, :cond_0

    .line 1154
    const/4 v0, 0x0

    .line 1156
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->cardTapped:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    goto :goto_0
.end method

.method public getCardTappedImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1501
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getCardTappedImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1502
    const/4 v0, 0x0

    .line 1504
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->cardTapped:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCloseBTNImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;
    .locals 1

    .prologue
    .line 1118
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    if-nez v0, :cond_0

    .line 1119
    const/4 v0, 0x0

    .line 1121
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->closeBTN:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    goto :goto_0
.end method

.method public getCloseBTNImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1466
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getCloseBTNImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1467
    const/4 v0, 0x0

    .line 1469
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->closeBTN:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCloseBTNTappedImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;
    .locals 1

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    if-nez v0, :cond_0

    .line 1126
    const/4 v0, 0x0

    .line 1128
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->closeBTNTapped:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    goto :goto_0
.end method

.method public getCloseBTNTappedImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1473
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getCloseBTNTappedImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1474
    const/4 v0, 0x0

    .line 1476
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->closeBTNTapped:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCollectionItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1440
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->collectionItems:Ljava/util/List;

    return-object v0
.end method

.method public getCreditString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 935
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->strings:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayStrings;

    if-nez v0, :cond_0

    .line 936
    const/4 v0, 0x0

    .line 938
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->strings:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayStrings;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayStrings;->credit:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDotBlurParallaxImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;
    .locals 1

    .prologue
    .line 1167
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    if-nez v0, :cond_0

    .line 1168
    const/4 v0, 0x0

    .line 1170
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->dotBlurParallax:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    goto :goto_0
.end method

.method public getDotBlurParallaxImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1515
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getDotBlurParallaxImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1516
    const/4 v0, 0x0

    .line 1518
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->dotBlurParallax:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public getExitString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 942
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->strings:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayStrings;

    if-nez v0, :cond_0

    .line 943
    const/4 v0, 0x0

    .line 945
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->strings:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayStrings;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayStrings;->exit:Ljava/lang/String;

    goto :goto_0
.end method

.method public getHexParallaxImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;
    .locals 1

    .prologue
    .line 1174
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    if-nez v0, :cond_0

    .line 1175
    const/4 v0, 0x0

    .line 1177
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->hexParallax:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    goto :goto_0
.end method

.method public getHexParallaxImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1522
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getHexParallaxImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1523
    const/4 v0, 0x0

    .line 1525
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->hexParallax:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public getInitialState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1263
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->initialState:Ljava/lang/String;

    return-object v0
.end method

.method public getInteractiveOriginalsPrimerVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1267
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->interactiveOriginalsPrimerVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getInterrupterCount()I
    .locals 1

    .prologue
    .line 1600
    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->interrupterCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->interrupterCount:I

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public getItemSelectionHeaderString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 949
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->strings:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayStrings;

    if-nez v0, :cond_0

    .line 950
    const/4 v0, 0x0

    .line 952
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->strings:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayStrings;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayStrings;->itemSelectionHeader:Ljava/lang/String;

    goto :goto_0
.end method

.method public getItemSelectionSound()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;
    .locals 1

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;

    if-nez v0, :cond_0

    .line 1020
    const/4 v0, 0x0

    .line 1022
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;->itemSelection:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    goto :goto_0
.end method

.method public getItemSelectionSoundUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1068
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getItemSelectionSound()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1069
    const/4 v0, 0x0

    .line 1071
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;->itemSelection:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public getItemUnlockSfxSound()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;
    .locals 1

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;

    if-nez v0, :cond_0

    .line 1013
    const/4 v0, 0x0

    .line 1015
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;->itemUnlockSfx:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    goto :goto_0
.end method

.method public getItemUnlockSfxSoundUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1061
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getItemUnlockSfxSound()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1062
    const/4 v0, 0x0

    .line 1064
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;->itemUnlockSfx:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public getLeftGateImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;
    .locals 1

    .prologue
    .line 1104
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    if-nez v0, :cond_0

    .line 1105
    const/4 v0, 0x0

    .line 1107
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->leftGate:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    goto :goto_0
.end method

.method public getLeftGateImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1452
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getLeftGateImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1453
    const/4 v0, 0x0

    .line 1455
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->leftGate:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public getLoadingHeaderString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 956
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->strings:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayStrings;

    if-nez v0, :cond_0

    .line 957
    const/4 v0, 0x0

    .line 959
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->strings:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayStrings;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayStrings;->loadingHeader:Ljava/lang/String;

    goto :goto_0
.end method

.method public getNextEpisodeImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;
    .locals 1

    .prologue
    .line 1349
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->nextEpisode:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->nextEpisode:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisodeImage;

    if-nez v0, :cond_1

    .line 1350
    :cond_0
    const/4 v0, 0x0

    .line 1352
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->nextEpisode:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisodeImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisodeImage;->interestingMomentStill:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    goto :goto_0
.end method

.method public getNextEpisodeImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1356
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getNextEpisodeImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1357
    const/4 v0, 0x0

    .line 1359
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->nextEpisode:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisodeImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisodeImage;->interestingMomentStill:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public getNextEpisodeSound()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;
    .locals 1

    .prologue
    .line 1363
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->nextEpisode:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->nextEpisode:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;

    if-nez v0, :cond_1

    .line 1364
    :cond_0
    const/4 v0, 0x0

    .line 1366
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->nextEpisode:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;->vo:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    goto :goto_0
.end method

.method public getNextEpisodeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 963
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->strings:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayStrings;

    if-nez v0, :cond_0

    .line 964
    const/4 v0, 0x0

    .line 966
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->strings:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayStrings;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayStrings;->nextEpisode:Ljava/lang/String;

    goto :goto_0
.end method

.method public getNextEpisodeTitleString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1335
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->nextEpisode:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;

    if-nez v0, :cond_0

    .line 1336
    const/4 v0, 0x0

    .line 1338
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->nextEpisode:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;->title:Ljava/lang/String;

    goto :goto_0
.end method

.method public getNextEpisodeTrackId()I
    .locals 1

    .prologue
    .line 1328
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->nextEpisode:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;

    if-nez v0, :cond_0

    .line 1329
    const/4 v0, -0x1

    .line 1331
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->nextEpisode:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;

    iget v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;->trackId:I

    goto :goto_0
.end method

.method public getNextEpisodeVideoId()I
    .locals 1

    .prologue
    .line 1321
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->nextEpisode:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;

    if-nez v0, :cond_0

    .line 1322
    const/4 v0, -0x1

    .line 1324
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->nextEpisode:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;

    iget v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;->videoId:I

    goto :goto_0
.end method

.method public getOpponentImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;
    .locals 1

    .prologue
    .line 1307
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->opponent:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongOpponent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->opponent:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongOpponent;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongOpponent;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarImage;

    if-nez v0, :cond_1

    .line 1308
    :cond_0
    const/4 v0, 0x0

    .line 1310
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->opponent:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongOpponent;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongOpponent;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarImage;->_default:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    goto :goto_0
.end method

.method public getOpponentImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1314
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getOpponentImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1315
    const/4 v0, 0x0

    .line 1317
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->opponent:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongOpponent;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongOpponent;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarImage;->_default:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public getOpponentNameString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1300
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->opponent:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongOpponent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->opponent:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongOpponent;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongOpponent;->name:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNameString;

    if-nez v0, :cond_1

    .line 1301
    :cond_0
    const/4 v0, 0x0

    .line 1303
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->opponent:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongOpponent;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongOpponent;->name:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNameString;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNameString;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPlusParallaxImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;
    .locals 1

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    if-nez v0, :cond_0

    .line 1182
    const/4 v0, 0x0

    .line 1184
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->plusParallax:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    goto :goto_0
.end method

.method public getPlusParallaxImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1529
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getPlusParallaxImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1530
    const/4 v0, 0x0

    .line 1532
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->plusParallax:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPostPlayType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1259
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getPreCacheableResourcesList()Ljava/util/List;
    .locals 4
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
    .line 42
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 44
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->battle:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBattle;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->battle:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBattle;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBattle;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBackgroundImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->battle:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBattle;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBattle;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBackgroundImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBackgroundImage;->background:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->battle:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBattle;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBattle;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBackgroundImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBackgroundImage;->background:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;

    if-eqz v0, :cond_5

    .line 51
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;->background:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;->background:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;->url:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;->battleOptInVO:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    if-eqz v0, :cond_2

    .line 55
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;->battleOptInVO:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;->url:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;->itemSelection:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    if-eqz v0, :cond_3

    .line 58
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;->itemSelection:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;->url:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;->itemUnlockSfx:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    if-eqz v0, :cond_4

    .line 61
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;->itemUnlockSfx:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;->url:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;->unlockVO:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    if-eqz v0, :cond_5

    .line 64
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;->unlockVO:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;->url:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->battle:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBattle;

    if-eqz v0, :cond_6

    .line 69
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->battle:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBattle;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBattle;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->battle:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBattle;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBattle;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;->vo:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    if-eqz v0, :cond_6

    .line 70
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->battle:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBattle;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBattle;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;->vo:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;->url:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_6
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->avatar:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatar;

    if-eqz v0, :cond_8

    .line 75
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->avatar:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatar;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatar;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarSound;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->avatar:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatar;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatar;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarSound;->soundEffect:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    if-eqz v0, :cond_7

    .line 76
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->avatar:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatar;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatar;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarSound;->soundEffect:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;->url:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_7
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->avatar:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatar;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatar;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarImage;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->avatar:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatar;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatar;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarImage;->_default:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    if-eqz v0, :cond_8

    .line 79
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->avatar:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatar;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatar;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarImage;->_default:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_8
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->opponent:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongOpponent;

    if-eqz v0, :cond_9

    .line 84
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->opponent:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongOpponent;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongOpponent;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarImage;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->opponent:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongOpponent;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongOpponent;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarImage;->_default:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    if-eqz v0, :cond_9

    .line 85
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->opponent:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongOpponent;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongOpponent;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarImage;->_default:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_9
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->nextEpisode:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;

    if-eqz v0, :cond_b

    .line 90
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->nextEpisode:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->nextEpisode:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;->vo:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    if-eqz v0, :cond_a

    .line 91
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->nextEpisode:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;->vo:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;->url:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_a
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->nextEpisode:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisodeImage;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->nextEpisode:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisodeImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisodeImage;->interestingMomentStill:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    if-eqz v0, :cond_b

    .line 94
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->nextEpisode:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisodeImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisodeImage;->interestingMomentStill:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_b
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    if-eqz v0, :cond_10

    .line 99
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;->vo:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    if-eqz v0, :cond_c

    .line 100
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;->vo:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;->url:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_c
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;->soundEffect:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    if-eqz v0, :cond_d

    .line 103
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;->soundEffect:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;->url:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_d
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;->avatar:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarResult;

    if-eqz v0, :cond_e

    .line 106
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;->avatar:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarResult;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarResult;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarResultImage;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;->avatar:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarResult;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarResult;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarResultImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarResultImage;->result:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    if-eqz v0, :cond_e

    .line 107
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;->avatar:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarResult;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarResult;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarResultImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarResultImage;->result:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_e
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;->battle:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultBattleSound;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;->battle:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultBattleSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultBattleSound;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;->battle:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultBattleSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultBattleSound;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;->vo:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    if-eqz v0, :cond_f

    .line 111
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;->battle:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultBattleSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultBattleSound;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;->vo:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;->url:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_f
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->isResultBattleCardAvailable()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 114
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;->battleCard:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_10
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    if-eqz v0, :cond_20

    .line 119
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->leftGate:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    if-eqz v0, :cond_11

    .line 120
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->leftGate:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_11
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->rightGate:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    if-eqz v0, :cond_12

    .line 123
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->rightGate:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    :cond_12
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->closeBTN:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    if-eqz v0, :cond_13

    .line 126
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->closeBTN:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_13
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->backBTN:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    if-eqz v0, :cond_14

    .line 129
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->backBTN:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_14
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->redFlare:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    if-eqz v0, :cond_15

    .line 132
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->redFlare:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_15
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->dotBlurParallax:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    if-eqz v0, :cond_16

    .line 135
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->dotBlurParallax:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_16
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->hexParallax:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    if-eqz v0, :cond_17

    .line 138
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->hexParallax:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_17
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->plusParallax:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    if-eqz v0, :cond_18

    .line 141
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->plusParallax:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_18
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->sunburst:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    if-eqz v0, :cond_19

    .line 144
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->sunburst:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    :cond_19
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->versusHex:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    if-eqz v0, :cond_1a

    .line 147
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->versusHex:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_1a
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->versusSwords:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    if-eqz v0, :cond_1b

    .line 150
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->versusSwords:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_1b
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->versusLock:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    if-eqz v0, :cond_1c

    .line 153
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->versusLock:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    :cond_1c
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->cardDropshadow:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    if-eqz v0, :cond_1d

    .line 156
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->cardDropshadow:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_1d
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->smAvatar:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    if-eqz v0, :cond_1e

    .line 159
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->smAvatar:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_1e
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->unlockEmptyBadge:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    if-eqz v0, :cond_1f

    .line 162
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->unlockEmptyBadge:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_1f
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->whiteFlare:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    if-eqz v0, :cond_20

    .line 165
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->whiteFlare:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    :cond_20
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->collectionItems:Ljava/util/List;

    if-eqz v0, :cond_26

    .line 170
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->collectionItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_21
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;

    .line 171
    if-eqz v0, :cond_21

    .line 172
    iget-object v3, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItemImage;

    if-eqz v3, :cond_24

    .line 173
    iget-object v3, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItemImage;

    iget-object v3, v3, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItemImage;->badge:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    if-eqz v3, :cond_22

    .line 174
    iget-object v3, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItemImage;

    iget-object v3, v3, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItemImage;->badge:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v3, v3, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    :cond_22
    iget-object v3, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItemImage;

    iget-object v3, v3, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItemImage;->battleBadge:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    if-eqz v3, :cond_23

    .line 177
    iget-object v3, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItemImage;

    iget-object v3, v3, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItemImage;->battleBadge:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v3, v3, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_23
    iget-object v3, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItemImage;

    iget-object v3, v3, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItemImage;->itemOnAvatar:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    if-eqz v3, :cond_24

    .line 180
    iget-object v3, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItemImage;

    iget-object v3, v3, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItemImage;->itemOnAvatar:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v3, v3, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_24
    iget-object v3, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItemSound;

    if-eqz v3, :cond_21

    .line 185
    iget-object v3, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItemSound;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItemSound;->getVo()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    move-result-object v3

    if-eqz v3, :cond_25

    .line 186
    iget-object v3, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItemSound;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItemSound;->getVo()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    move-result-object v3

    iget-object v3, v3, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;->url:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    :cond_25
    iget-object v3, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItemSound;

    iget-object v3, v3, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItemSound;->battleAgainVO:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    if-eqz v3, :cond_21

    .line 189
    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItems;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItemSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongCollectionItemSound;->battleAgainVO:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;->url:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 196
    :cond_26
    return-object v1
.end method

.method public getRedFlareImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;
    .locals 1

    .prologue
    .line 1160
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    if-nez v0, :cond_0

    .line 1161
    const/4 v0, 0x0

    .line 1163
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->redFlare:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    goto :goto_0
.end method

.method public getRedFlareImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1508
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getRedFlareImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1509
    const/4 v0, 0x0

    .line 1511
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->redFlare:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public getResourceUrlToLocalCachedFileMetadataMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/service/resfetcher/volley/LocalCachedFileMetadata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resourceUrlToLocalCachedFileMetadataMap:Ljava/util/Map;

    return-object v0
.end method

.method public getResultAvatarImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;
    .locals 1

    .prologue
    .line 1391
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;->avatar:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;->avatar:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarResult;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarResult;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarResultImage;

    if-nez v0, :cond_1

    .line 1392
    :cond_0
    const/4 v0, 0x0

    .line 1394
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;->avatar:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarResult;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarResult;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarResultImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarResultImage;->result:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    goto :goto_0
.end method

.method public getResultAvatarImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1398
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getResultAvatarImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1399
    const/4 v0, 0x0

    .line 1401
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;->avatar:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarResult;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarResult;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarResultImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatarResultImage;->result:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public getResultAvatarSound()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;
    .locals 1

    .prologue
    .line 1419
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;

    if-nez v0, :cond_1

    .line 1420
    :cond_0
    const/4 v0, 0x0

    .line 1422
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;->soundEffect:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    goto :goto_0
.end method

.method public getResultBattleCardImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1405
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->isResultBattleCardAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1406
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;->battleCard:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    .line 1408
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getResultBattleSound()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;
    .locals 1

    .prologue
    .line 1426
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;->battle:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultBattleSound;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;->battle:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultBattleSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultBattleSound;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;

    if-nez v0, :cond_1

    .line 1427
    :cond_0
    const/4 v0, 0x0

    .line 1429
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;->battle:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultBattleSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultBattleSound;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;->vo:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    goto :goto_0
.end method

.method public getResultData()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;
    .locals 1

    .prologue
    .line 1448
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    return-object v0
.end method

.method public getResultDataSound()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;
    .locals 1

    .prologue
    .line 1433
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;

    if-nez v0, :cond_1

    .line 1434
    :cond_0
    const/4 v0, 0x0

    .line 1436
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongVOSound;->vo:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    goto :goto_0
.end method

.method public getResultDataWatchNextBattleOptInHeaderString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1244
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;->strings:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultString;

    if-eqz v0, :cond_0

    .line 1245
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;->strings:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultString;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultString;->battleOptInHeader:Ljava/lang/String;

    .line 1247
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getResultTitleString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1384
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;->strings:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultString;

    if-nez v0, :cond_1

    .line 1385
    :cond_0
    const/4 v0, 0x0

    .line 1387
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;->strings:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultString;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultString;->resultHeader:Ljava/lang/String;

    goto :goto_0
.end method

.method public getResultType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1370
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    if-nez v0, :cond_0

    .line 1371
    const/4 v0, 0x0

    .line 1373
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;->type:Ljava/lang/String;

    goto :goto_0
.end method

.method public getRightGateImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;
    .locals 1

    .prologue
    .line 1111
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    if-nez v0, :cond_0

    .line 1112
    const/4 v0, 0x0

    .line 1114
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->rightGate:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    goto :goto_0
.end method

.method public getRightGateImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1459
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getRightGateImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1460
    const/4 v0, 0x0

    .line 1462
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->rightGate:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSmAvatarImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;
    .locals 1

    .prologue
    .line 1223
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    if-nez v0, :cond_0

    .line 1224
    const/4 v0, 0x0

    .line 1226
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->smAvatar:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    goto :goto_0
.end method

.method public getSmAvatarImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1571
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getSmAvatarImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1572
    const/4 v0, 0x0

    .line 1574
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->smAvatar:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSunburstImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;
    .locals 1

    .prologue
    .line 1188
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    if-nez v0, :cond_0

    .line 1189
    const/4 v0, 0x0

    .line 1191
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->sunburst:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    goto :goto_0
.end method

.method public getSunburstImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1536
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getSunburstImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1537
    const/4 v0, 0x0

    .line 1539
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->sunburst:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTrackId()I
    .locals 1

    .prologue
    .line 1444
    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->trackId:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1592
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUnlockEmptyBadgeImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;
    .locals 1

    .prologue
    .line 1230
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    if-nez v0, :cond_0

    .line 1231
    const/4 v0, 0x0

    .line 1233
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->unlockEmptyBadge:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    goto :goto_0
.end method

.method public getUnlockEmptyBadgeImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1578
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getUnlockEmptyBadgeImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1579
    const/4 v0, 0x0

    .line 1581
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->unlockEmptyBadge:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public getUnlockVOSound()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;
    .locals 1

    .prologue
    .line 991
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;

    if-nez v0, :cond_0

    .line 992
    const/4 v0, 0x0

    .line 994
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;->unlockVO:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    goto :goto_0
.end method

.method public getUnlockVOSoundUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1040
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getUnlockVOSound()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1041
    const/4 v0, 0x0

    .line 1043
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;->unlockVO:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongSound;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public getUnlockedHeaderString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 970
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->strings:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayStrings;

    if-nez v0, :cond_0

    .line 971
    const/4 v0, 0x0

    .line 973
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->strings:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayStrings;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayStrings;->unlockedHeader:Ljava/lang/String;

    goto :goto_0
.end method

.method public getVersusHexImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;
    .locals 1

    .prologue
    .line 1195
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    if-nez v0, :cond_0

    .line 1196
    const/4 v0, 0x0

    .line 1198
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->versusHex:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    goto :goto_0
.end method

.method public getVersusHexImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1543
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getVersusHexImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1544
    const/4 v0, 0x0

    .line 1546
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->versusHex:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public getVersusLockImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;
    .locals 1

    .prologue
    .line 1209
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    if-nez v0, :cond_0

    .line 1210
    const/4 v0, 0x0

    .line 1212
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->versusLock:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    goto :goto_0
.end method

.method public getVersusLockImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1557
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getVersusLockImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1558
    const/4 v0, 0x0

    .line 1560
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->versusLock:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public getVersusSwordsImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;
    .locals 1

    .prologue
    .line 1202
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    if-nez v0, :cond_0

    .line 1203
    const/4 v0, 0x0

    .line 1205
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->versusSwords:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    goto :goto_0
.end method

.method public getVersusSwordsImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1550
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getVersusSwordsImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1551
    const/4 v0, 0x0

    .line 1553
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->versusSwords:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public getWhiteFlareImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;
    .locals 1

    .prologue
    .line 1237
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    if-nez v0, :cond_0

    .line 1238
    const/4 v0, 0x0

    .line 1240
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->whiteFlare:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    goto :goto_0
.end method

.method public getWhiteFlareImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1585
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->getWhiteFlareImage()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1586
    const/4 v0, 0x0

    .line 1588
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;->whiteFlare:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public hasGatePostPlayOnAssetLoadFailure()Z
    .locals 1

    .prologue
    .line 1596
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->gatePostPlayOnAssetLoadFailure:Z

    return v0
.end method

.method public hasWatchedAllBattleVideosForEpisode()Z
    .locals 1

    .prologue
    .line 1377
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    if-nez v0, :cond_0

    .line 1378
    const/4 v0, 0x0

    .line 1380
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;->hasWatchedAllBattleVideosForEpisode:Z

    goto :goto_0
.end method

.method public isNextEpisodeFocused()Z
    .locals 1

    .prologue
    .line 1342
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->nextEpisode:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;

    if-nez v0, :cond_0

    .line 1343
    const/4 v0, 0x0

    .line 1345
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->nextEpisode:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;->focused:Z

    goto :goto_0
.end method

.method public isResultBattleCardAvailable()Z
    .locals 1

    .prologue
    .line 1412
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;->battleCard:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    if-nez v0, :cond_1

    .line 1413
    :cond_0
    const/4 v0, 0x0

    .line 1415
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public shouldHideAnimation()Z
    .locals 1

    .prologue
    .line 1275
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->hideAnimation:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 879
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "KongInteractivePostPlayModel{type=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", initialState=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->initialState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", interactiveOriginalsPrimerVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->interactiveOriginalsPrimerVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", autoPlayInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->autoPlayInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", trackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->trackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", strings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->strings:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayStrings;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", audio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlaySounds;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", battle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->battle:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongBattle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", images="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->images:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongPostPlayImages;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", avatar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->avatar:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongAvatar;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", opponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->opponent:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongOpponent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", nextEpisode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->nextEpisode:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", collectionItems="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->collectionItems:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", resultData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;->resultData:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongResultData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
