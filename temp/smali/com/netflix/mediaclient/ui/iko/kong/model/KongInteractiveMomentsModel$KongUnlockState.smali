.class public Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongUnlockState;
.super Ljava/lang/Object;
.source "KongInteractiveMomentsModel.java"


# instance fields
.field _default:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongDefaultImages;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DEFAULT"
    .end annotation
.end field

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongUnlockState;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "KongUnlockState{_default="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongUnlockState;->_default:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongDefaultImages;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
