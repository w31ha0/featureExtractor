.class public Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongNotification;
.super Ljava/lang/Object;
.source "KongInteractiveMomentsModel.java"


# instance fields
.field audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongUnlockedAudio;

.field endTimeMS:I

.field startTimeMS:I

.field states:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongUnlockState;

.field strings:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongUnlockedString;

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel;

.field type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongNotification;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "KongNotification{type=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongNotification;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", startTimeMS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongNotification;->startTimeMS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", endTimeMS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongNotification;->endTimeMS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", strings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongNotification;->strings:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongUnlockedString;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", audio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongNotification;->audio:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongUnlockedAudio;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", states="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongNotification;->states:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractiveMomentsModel$KongUnlockState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
