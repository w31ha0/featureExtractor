.class Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$7;
.super Ljava/lang/Object;
.source "CastPlayerControlsFrag.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/mdx/MdxKeyEventHandler$MdxKeyEventCallbacks;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;)V
    .locals 0

    .prologue
    .line 1327
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$7;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getVolumeAsPercent()I
    .locals 1

    .prologue
    .line 1330
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$7;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->getVolume()I

    move-result v0

    return v0
.end method

.method public onVolumeSet(I)V
    .locals 1

    .prologue
    .line 1335
    invoke-static {}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->access$2000()Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$SharedState;

    move-result-object v0

    iput p1, v0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$SharedState;->mostRecentVolume:I

    .line 1336
    return-void
.end method
