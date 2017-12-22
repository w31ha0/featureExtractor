.class Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$12;
.super Ljava/lang/Object;
.source "WPMomentScreen.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager$PlaybackCompleteListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;

.field final synthetic val$audioList:Ljava/util/List;

.field final synthetic val$counter:I

.field final synthetic val$nextState:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;

.field final synthetic val$size:I


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;IILjava/util/List;)V
    .locals 0

    .prologue
    .line 1347
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$12;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$12;->val$nextState:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;

    iput p3, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$12;->val$counter:I

    iput p4, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$12;->val$size:I

    iput-object p5, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$12;->val$audioList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1355
    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$12;->val$counter:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$12;->val$size:I

    if-ge v0, v1, :cond_0

    .line 1356
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$12;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$12;->val$audioList:Ljava/util/List;

    iget v2, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$12;->val$counter:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$12;->val$nextState:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;

    invoke-static {v0, v1, v2, v3}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->access$1500(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;Ljava/util/List;ILcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;)V

    .line 1360
    :goto_0
    return-void

    .line 1358
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$12;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$12;->val$nextState:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->access$1600(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$WordPartyMomentState;)V

    goto :goto_0
.end method
