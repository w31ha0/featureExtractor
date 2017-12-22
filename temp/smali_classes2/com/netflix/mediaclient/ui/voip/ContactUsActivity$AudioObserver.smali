.class Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$AudioObserver;
.super Landroid/database/ContentObserver;
.source "ContactUsActivity.java"


# instance fields
.field context:Landroid/content/Context;

.field previousVolume:I

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 850
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$AudioObserver;->this$0:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    .line 851
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->access$700(Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 852
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$AudioObserver;->context:Landroid/content/Context;

    .line 854
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$AudioObserver;->context:Landroid/content/Context;

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 855
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$AudioObserver;->previousVolume:I

    .line 856
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 860
    invoke-super {p0}, Landroid/database/ContentObserver;->deliverSelfNotifications()Z

    move-result v0

    return v0
.end method

.method public onChange(Z)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 865
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 867
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$AudioObserver;->context:Landroid/content/Context;

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 868
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 869
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    .line 870
    int-to-float v2, v1

    int-to-float v0, v0

    div-float v0, v2, v0

    .line 871
    iget v2, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$AudioObserver;->previousVolume:I

    sub-int/2addr v2, v1

    .line 873
    if-lez v2, :cond_2

    .line 874
    const-string/jumbo v2, "VoipActivity"

    const-string/jumbo v3, "Decreased"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    iput v1, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$AudioObserver;->previousVolume:I

    .line 886
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$AudioObserver;->this$0:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->access$800(Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;)Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 887
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$AudioObserver;->this$0:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->access$800(Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;)Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/servicemgr/IVoip;->setOutputVolume(F)V

    .line 889
    :cond_1
    return-void

    .line 876
    :cond_2
    if-gez v2, :cond_0

    .line 877
    const-string/jumbo v2, "VoipActivity"

    const-string/jumbo v3, "Increased"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    iput v1, p0, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity$AudioObserver;->previousVolume:I

    goto :goto_0
.end method
